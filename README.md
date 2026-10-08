# DVNA

[DVNA](https://github.com/appsecco/dvna) (Damn Vulnerable NodeJS Application) by Appsecco: a
simple Node.js application that demonstrates the OWASP Top 10 and how to fix each flaw. This
repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml)
describes the machines, and the upstream source in [`build/app/app/`](build/app/app) builds with
its own Dockerfile, pinned to the date of its dependencies.

| Machine | Service |
| --- | --- |
| app | DVNA on port 9090 |
| mysql-db | MySQL 5.7 on port 3306 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:9090/, register a user and open Learn. The same spec runs as Docker on
a local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the
[DVNA guidebook](build/app/app/docs) (exploitation and fixes for each vulnerability).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as DVNA ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it isolated.
