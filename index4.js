const { Client, GatewayIntentBits } = require("discord.js");
const axios = require("axios");
const express = require("express");

const TOKEN = process.env.TOKEN;

const API = "https://roblox-api-production-08e4.up.railway.app/count";
const CHANNEL_ID = "1468033384176423064";

const INTERVAL = 3000;

const client = new Client({
  intents: [GatewayIntentBits.Guilds]
});

// ✅ سيرفر صغير للـ ping
const app = express();

app.get("/ping", (req, res) => {
  res.send("pong");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log("Ping server running"));

let messageNow = null;
let messageBest = null;
let bestCount = 0;

client.once("clientReady", async () => {
  console.log("Bot ready!");

  const channel = await client.channels.fetch(CHANNEL_ID);

  messageNow = await channel.send(
    "PhantomX Online Users Now: **None**"
  );

  messageBest = await channel.send(
    "Best Number Of PhantomX Users: **0**"
  );

  setInterval(async () => {
    try {
      const res = await axios.get(API);
      const count = Number(res.data.online) || 0;

      await messageNow.edit(
        `PhantomX Online Users Now: **${count}**`
      );

      client.user.setActivity(`Online: ${count}`);

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
