# frozen_string_literal: true

require_relative './index.rb'
class MainModule
  def setup
    send_message "\u001b[96mSet up main module..."
    @client.query("CREATE TABLE IF NOT EXISTS `main` (
      `SERVERID` int(50) unsigned NOT NULL,
      `LANGUAGE` varchar(255) NOT NULL,
      PRIMARY KEY  (`SERVERID`)
    );")
    send_message "\u001b[32mSuccessfully set up main module!"
  end
end
