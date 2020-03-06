# frozen_string_literal: true

require 'sequel'

require_relative './index.rb'
class MainModule
  def join(server, _already)
    send_message "\u001b[96mSet up main module for #{server.id}..."
    id = server.id
    language = 'en'
    prefix = '+cdb'
    if @module_manager.client[:main].first(server_id: id).nil?
      @module_manager.client[:main] << { server_id: id, language: language, prefix: prefix }
    end
    update_prefix
    send_message "\u001b[32mSuccessfully set up main module for #{server.id}!"
  end

  def setup; end
end
