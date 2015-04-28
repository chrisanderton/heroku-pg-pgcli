# heroku-pg-pgcli
pgcli plugin for the [Heroku Toolbelt](https://toolbelt.heroku.com).

Install with
```heroku plugins:install git@github.com:chrisanderton/heroku-pg-pgcli.git```

Run with ```heroku pg:pgcli``` (defaults to automatic login using the Heroku DATABASE_URL for the current app).

Optionally run specifying the database URL ```heroku pg:pgcli postgres://*```
