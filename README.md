# heroku-pg-pgcli
[pgcli](http://pgcli.com) plugin for the [Heroku Toolbelt](https://toolbelt.heroku.com).

If you don't have [pgcli](http://pgcli.com) installed, you can install it via `brew install pgcli` on OS X. If you're on a different platform, please consult the installation [instructions](http://pgcli.com/install). 

Install this plugin with ```heroku plugins:install git@github.com:chrisanderton/heroku-pg-pgcli.git```

Run from within the Heroku app directory with ```heroku pg:pgcli``` (defaults to automatic login using the Heroku DATABASE_URL for the current app).

Optionally run with a specific database URL ```heroku pg:pgcli postgres://*```

Needs pgcli to be available in the PATH.
