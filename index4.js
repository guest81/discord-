const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");

const TOKEN = process.env.TOKEN;

const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064";

const INTERVAL = 3000; // كل 3 ثواني

const client = new Client({
  intents: [GatewayIntentBits.Guilds]
});

let messageNow = null;
let messageBest = null;

let bestCount = 0;

client.once("ready", async () => {
  console.log("Bot ready!");

  const channel = await client.channels.fetch(CHANNEL_ID);

  // رسالة العدد الحالي
  messageNow = await channel.send(
    "PhantomX Online Users Now: **None**"
  );

  // رسالة أعلى عدد
  messageBest = await channel.send(
    "Best Number Of PhantomX Users: **0**"
  );

  setInterval(async () => {
    try {
      const res = await axios.get(API);
      const count = Number(res.data.online) || 0;

      // تحديث رسالة العدد الحالي دائمًا
      await messageNow.edit(
        `PhantomX Online Users Now: **${count}**`
      );

      client.user.setActivity(`Online: ${count}`);

      // تحديث أفضل رقم
      if (count > bestCount) {
        bestCount = count;

        await messageBest.edit(
          `Best Number Of PhantomX Users: **${bestCount}**`
        );
      }

    } catch (e) {
      console.log("API or Discord error:", e.message);
    }
  }, INTERVAL);
});

client.login(TOKEN);
