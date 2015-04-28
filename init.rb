class Heroku::Command::Pg < Heroku::Command::Base
  # pg:pgcli <DB>
  def pgcli
    requires_preauth
    attachment = generate_resolver.resolve(shift_argument, "DATABASE_URL")
    validate_arguments!

    uri = URI.parse( attachment.url )
    begin
      shorthand = "#{attachment.app}::#{attachment.name.sub(/^HEROKU_POSTGRESQL_/,'').gsub(/\W+/, '-')}"
      set_commands = Hooks.set_commands(shorthand)
      puts "---> Connecting to #{attachment.display_name}"
      exec "pgcli postgres://#{uri.user}:#{uri.password}@#{uri.host}:#{uri.port || 5432}/#{uri.path[1..-1]}"
    rescue Errno::ENOENT
      output_with_bang "The local pgcli command could not be located"
      output_with_bang "For help installing pgcli, see http://pgcli.com"
      abort
    end
  end


end
