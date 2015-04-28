# heroku-pg-pgcli
pgcli plugin for the [Heroku Toolbelt](https://toolbelt.heroku.com).

Install with ```heroku plugins:install git@github.com:chrisanderton/heroku-pg-pgcli.git```

Run from within the Heroku app directory with ```heroku pg:pgcli``` (defaults to automatic login using the Heroku DATABASE_URL for the current app).

Optionally run with a specific database URL ```heroku pg:pgcli postgres://*```

Needs pgcli to be available in the PATH.
