# frozen_string_literal: true

require_relative './index.rb'
class MainModule

  def join(server, _already)
    send_message "\u001b[96mSet up main module for #{server.id}..."
    id = server.id
    language = 'en'
    prefix = '+cdb'
    @module_manager.client.query("INSERT IGNORE INTO `main` VALUES (#{id},'#{language}','#{prefix}');")
    update_prefix
    send_message "\u001b[32mSuccessfully set up main module for #{server.id}!"
  end
end
