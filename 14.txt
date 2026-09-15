const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");
require("dotenv").config();

const TOKEN = process.env.TOKEN;
const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064";
const INTERVAL = 5000;

const client = new Client({
  intents: [GatewayIntentBits.Guilds]
});

let lastOnlineMessage = null;
let lastBestMessage = null;
let bestCount = 0;

client.once("ready", async () => {
  console.log("Bot Ready!");

  const channel = await client.channels.fetch(CHANNEL_ID);

  // 🔥 حذف رسائل البوت القديمة عند التشغيل
  const messages = await channel.messages.fetch({ limit: 20 });
  const botMsgs = messages.filter(m => m.author.id === client.user.id);

  for (const msg of botMsgs.values()) {
    await msg.delete().catch(() => {});
  }

  // أول قراءة من API
  const first = await axios.get(API);
  bestCount = Number(first.data.online) || 0;

  lastOnlineMessage = await channel.send(`Online Now: **${bestCount}**`);
  lastBestMessage = await channel.send(`Best: **${bestCount}**`);

  setInterval(async () => {
    try {
      const res = await axios.get(API);
      const count = Number(res.data.online) || 0;

      // حذف القديمة
      if (lastOnlineMessage) {
        await lastOnlineMessage.delete().catch(()=>{});
      }

      lastOnlineMessage = await channel.send(`Online Now: **${count}**`);

      // تحديث Best
      if (count > bestCount) {
        bestCount = count;

        if (lastBestMessage) {
          await lastBestMessage.delete().catch(()=>{});
        }

        lastBestMessage = await channel.send(`Best: **${bestCount}**`);
      }

      client.user.setActivity(`Online: ${count}`);

    } catch (err) {
      console.log("Error:", err.message);
    }
  }, INTERVAL);
});

client.login(TOKEN);
