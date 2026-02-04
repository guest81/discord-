// index4.js
const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");
const express = require("express");
require("dotenv").config(); // للتوكن من ملف .env

const TOKEN = process.env.TOKEN; // تأكد أن التوكن موجود في ملف .env
const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064"; // حط هنا ID الروم
const INTERVAL = 3000; // كل 3 ثواني

// إعداد البوت
const client = new Client({
  intents: [GatewayIntentBits.Guilds]
});

// إعداد سيرفر صغير للـ ping
const app = express();
app.get("/ping", (req, res) => {
  res.send("pong");
});
const PORT = process.env.PORT || 8080; // بورت افتراضي 8080
app.listen(PORT, () => console.log("Ping server running on port", PORT));

// متغيرات الرسائل
let messageNow = null;
let messageBest = null;
let bestCount = 0;

// حدث جاهزية البوت
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
