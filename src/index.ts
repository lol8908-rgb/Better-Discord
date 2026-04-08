import dotenv from 'dotenv';
import { Client, Intents, ActivityType } from 'discord.js';
import { BetterDiscordPlugin } from './plugin/BetterDiscordPlugin';

dotenv.config();

const client = new Client({
  intents: [
    Intents.FLAGS.GUILDS,
    Intents.FLAGS.GUILD_MESSAGES,
    Intents.FLAGS.DIRECT_MESSAGES,
    Intents.FLAGS.MESSAGE_CONTENT,
  ],
});

const plugin = new BetterDiscordPlugin(client);

client.once('ready', () => {
  console.log(`✅ Bot eingeloggt als ${client.user?.tag}`);
  client.user?.setActivity('Discord verbessern', { type: ActivityType.Playing });
  plugin.initialize();
});

client.on('messageCreate', async (message) => {
  if (message.author.bot || !message.content.startsWith('!')) return;

  const args = message.content.slice(1).trim().split(/ +/);
  const command = args.shift()?.toLowerCase();

  if (command === 'help') {
    await plugin.handleHelpCommand(message);
  } else if (command === 'stats') {
    await plugin.handleStatsCommand(message);
  }
});

client.login(process.env.DISCORD_TOKEN);

process.on('unhandledRejection', (error) => {
  console.error('Unhandled Rejection:', error);
});
