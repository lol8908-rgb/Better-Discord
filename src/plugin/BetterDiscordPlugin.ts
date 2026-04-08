import { Client, Message, EmbedBuilder, TextChannel } from 'discord.js';

export class BetterDiscordPlugin {
  private client: Client;
  private startTime: Date;

  constructor(client: Client) {
    this.client = client;
    this.startTime = new Date();
  }

  /**
   * Initialisiert das Plugin
   */
  public initialize(): void {
    console.log('🚀 BetterDiscord Plugin aktiviert');
    this.setupAutoModeration();
    this.setupWelcomeMessages();
  }

  /**
   * Auto-Moderation System
   */
  private setupAutoModeration(): void {
    this.client.on('messageCreate', async (message) => {
      if (message.author.bot) return;

      // Spam-Schutz
      if (this.isSpam(message.content)) {
        await message.delete();
        await message.author.send('⚠️ Eine Nachricht wurde wegen Spam gelöscht.');
      }
    });
  }

  /**
   * Willkommensnachrichten
   */
  private setupWelcomeMessages(): void {
    this.client.on('guildMemberAdd', async (member) => {
      const channel = member.guild.channels.cache.find(
        (ch) => ch.name === 'willkommen' || ch.name === 'welcome'
      ) as TextChannel;

      if (channel) {
        const embed = new EmbedBuilder()
          .setColor('#00ff00')
          .setTitle(`Willkommen ${member.user.username}! 👋`)
          .setDescription(`Schön, dass du ${member.guild.name} beigetreten bist!`)
          .setThumbnail(member.user.displayAvatarURL())
          .setFooter({ text: `Mitglied #${member.guild.memberCount}` });

        await channel.send({ embeds: [embed] });
      }
    });
  }

  /**
   * Help-Kommando
   */
  public async handleHelpCommand(message: Message): Promise<void> {
    const embed = new EmbedBuilder()
      .setColor('#0099ff')
      .setTitle('📚 BetterDiscord Hilfe')
      .addFields(
        { name: '!help', value: 'Zeigt diese Hilfe-Nachricht' },
        { name: '!stats', value: 'Zeigt Bot-Statistiken' },
        { name: '!ping', value: 'Zeigt die Latenz des Bots' }
      )
      .setFooter({ text: 'BetterDiscord Plugin v1.0.0' });

    await message.reply({ embeds: [embed] });
  }

  /**
   * Stats-Kommando
   */
  public async handleStatsCommand(message: Message): Promise<void> {
    const uptime = this.getFormattedUptime();
    const embed = new EmbedBuilder()
      .setColor('#ff9900')
      .setTitle('📊 Bot-Statistiken')
      .addFields(
        { name: 'Laufzeit', value: uptime, inline: true },
        { name: 'Server', value: this.client.guilds.cache.size.toString(), inline: true },
        { name: 'Nutzer', value: this.client.users.cache.size.toString(), inline: true },
        { name: 'Ping', value: `${this.client.ws.ping}ms`, inline: true }
      );

    await message.reply({ embeds: [embed] });
  }

  /**
   * Spam-Erkennung
   */
  private isSpam(content: string): boolean {
    const spamPatterns = [
      /(.)\1{9,}/, // Wiederholte Zeichen
      /\d{20,}/, // Lange Zahlenfolgen
      /(?:http|https):\/\/(?:.*?)\s/g, // Mehrere Links
    ];

    return spamPatterns.some((pattern) => pattern.test(content));
  }

  /**
   * Formatiert Uptime
   */
  private getFormattedUptime(): string {
    const uptime = Date.now() - this.startTime.getTime();
    const days = Math.floor(uptime / 86400000);
    const hours = Math.floor((uptime % 86400000) / 3600000);
    const minutes = Math.floor((uptime % 3600000) / 60000);

    return `${days}d ${hours}h ${minutes}m`;
  }
}
