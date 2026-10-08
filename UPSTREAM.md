# Upstream

| | |
| --- | --- |
| Project | DVNA (Damn Vulnerable NodeJS Application) |
| Repository | https://github.com/appsecco/dvna |
| Version | master (no release tags) |
| Commit | 9ba473add536f66ac9007966acb2a775dd31277a |
| Licence | MIT |

`build/app/app/` is that commit, unchanged, without its Git history. `build/app/Dockerfile` is
upstream's production Dockerfile with these changes: `node:carbon` is pinned to `node:8.17.0`,
npm resolves dependencies as of the last change to package.json (`npm_config_before`,
2018-08-20), because DVNA ships no lockfile, and the database settings of the README's `vars.env`
are baked in as `ENV`. `build/mysql-db/Dockerfile` is upstream's `mysql-db` service (`mysql:5.7`,
pinned to 5.7.44) with the same settings. To update, replace `build/app/app/` with a newer commit,
then change this table and that date.
