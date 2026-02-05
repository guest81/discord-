// index4.js
const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");
const express = require("express");
require("dotenv").config(); // للتوكن من ملف .env

const TOKEN = process.env.TOKEN; // ضع التوكن في .env
const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064"; // ضع هنا ID الروم
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
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => console.log("Ping server running on port", PORT));

// متغيرات الرسائل
let lastOnlineMessage = null;
let lastBestMessage = null;
let bestCount = 0;

// دالة رئيسية لتحديث الرسائل
async function updateMessages(channel) {
  try {
    const res = await axios.get(API);
    const count = Number(res.data.online) || 0;

    // تحديث الـ Best Count
    if (count > bestCount) {
      bestCount = count;

      // حذف رسالة Best القديمة لو موجودة
      if (lastBestMessage) {
        try { await lastBestMessage.delete(); } catch {}
      }

      lastBestMessage = await channel.send(
        `Best Number Of PhantomX Users: **${bestCount}**`
      );
    }

    // تحديث رسالة Online Now
    if (lastOnlineMessage) {
      try { await lastOnlineMessage.delete(); } catch {}
    }

    lastOnlineMessage = await channel.send(
      `PhantomX Online Users Now: **${count}**`
    );

    // تحديث حالة البوت
    client.user.setActivity(`Online: ${count}`);

  } catch (e) {
    console.log("API or Discord error:", e.message);
  }
}

// حدث جاهزية البوت
client.once("ready", async () => {
  console.log("Bot ready!");
  const channel = await client.channels.fetch(CHANNEL_ID);

  // تحديث الرسائل كل INTERVAL
  setInterval(() => updateMessages(channel), INTERVAL);
});

// تسجيل دخول البوت
client.login(TOKEN);
