# frozen_string_literal: true

require_relative './user-commands.rb'
require_relative './console-commands.rb'
require_relative './setup.rb'
class MainModule include CodeDoBo::BotModule
  def initialize(app_class, module_manager)
    send_message "\u001b[96mStarting main module..."
    @module_manager = module_manager
    @app_class = app_class
    @language = CodeDoBo::Language.new module_manager.client, __dir__ + '/language'
    setup
    send_message "\u001b[32mSuccessfully started main module!"
  end
  def on_enable
    register_console_commands
    register_user_commands
  end

  def update_prefix
    @module_manager.client[:main].each do |row|
      serverID = row[:server_id]
      @module_manager.bot.server_prefix[serverID] = row[:prefix]
    end
  end
end
