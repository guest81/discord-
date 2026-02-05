// index4.js
const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");
const express = require("express");
require("dotenv").config();

const TOKEN = process.env.TOKEN;
const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064";
const INTERVAL = 3000;

const client = new Client({
  intents: [GatewayIntentBits.Guilds]
});

// سيرفر ping لمنع النوم
const app = express();
app.get("/ping", (req, res) => res.send("pong"));
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => console.log("Ping server running on port", PORT));

let lastOnlineMessage = null;
let lastBestMessage = null;
let bestCount = 0;

client.once("ready", async () => {
  console.log("Bot ready!");
  const channel = await client.channels.fetch(CHANNEL_ID);

  // تشغيل التحديث كل INTERVAL
  setInterval(async () => {
    try {
      const res = await axios.get(API);
      const count = Number(res.data.online) || 0;

      // تحديث رسالة Online Now
      if (lastOnlineMessage) {
        try { await lastOnlineMessage.delete(); } catch {}
      }
      lastOnlineMessage = await channel.send(`PhantomX Online Users Now: **${count}**`);

      // تحديث Activity البوت
      client.user.setActivity(`Online: ${count}`);

      // تحديث رسالة Best Number إذا زاد الرقم
      if (count > bestCount) {
        bestCount = count;

        if (lastBestMessage) {
          try { await lastBestMessage.delete(); } catch {}
        }

        lastBestMessage = await channel.send(`Best Number Of PhantomX Users: **${bestCount}**`);
      }

    } catch (e) {
      console.log("API or Discord error:", e.message);
    }
  }, INTERVAL);
});

client.login(TOKEN);  messageNow = await channel.send(
    "PhantomX Online Users Now: **None**"
  );

  // رسالة أعلى عدد
  messageBest = await channel.send(
    "Best Number Of PhantomX Users: **0**"
  );

  // تحديث الرسائل كل INTERVAL
  setInterval(async () => {
    try {
      const res = await axios.get(API);
      const count = Number(res.data.online) || 0;

      // تحديث رسالة العدد الحالي
      await messageNow.edit(
        `PhantomX Online Users Now: **${count}**`
      );

      // تحديث ستاتوس البوت
      client.user.setActivity(`Online: ${count}`);

      // تحديث أعلى عدد إذا تجاوز العدد السابق
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

// تسجيل دخول البوت
client.login(TOKEN);
