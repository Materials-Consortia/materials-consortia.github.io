---
title: Resources
description: >-
  The OPTIMADE specification, the software the consortium maintains for serving,
  querying and validating OPTIMADE APIs, and how to register your own database.
---

# Resources

Grouped by what you are trying to do. If you only want to search some data, start
with the [clients]({{ '/clients' | relative_url }}) instead.

## Read the specification

| What | Where |
|---|---|
| Specification, latest release | [`optimade.rst` on `master`](https://github.com/Materials-Consortia/OPTIMADE/blob/master/optimade.rst){:target="_blank"} |
| Specification, in development | [`optimade.rst` on `develop`](https://github.com/Materials-Consortia/OPTIMADE/blob/develop/optimade.rst){:target="_blank"} |
| Release history | [Changelog](https://github.com/Materials-Consortia/OPTIMADE/blob/develop/CHANGELOG.md){:target="_blank"} |
| Machine-readable schema | [OpenAPI schema in Swagger UI](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/Materials-Consortia/optimade-python-tools/main/openapi/openapi.json){:target="_blank"} |
| Permanent schema URLs | [`schemas`](https://github.com/Materials-Consortia/schemas){:target="_blank"} |
| Notes and design discussion | [Developer wiki](https://github.com/Materials-Consortia/OPTIMADE/wiki){:target="_blank"} |

Which version to implement, and how the `master` and `develop` branches are used,
is covered on the [API specification]({{ '/api-specification' | relative_url }}) page.

## Software    {#software}

Maintained by the consortium, unless noted otherwise.

**Serve an OPTIMADE API**

| Tool | What it does |
|---|---|
| [`optimade-python-tools`](https://www.optimade.org/optimade-python-tools){:target="_blank"} | The reference implementation: a server and a Python library |
| [`optimade-maker`](https://github.com/Materials-Consortia/optimade-maker){:target="_blank"} | Turns static data files into an OPTIMADE API |

**Query across databases**

| Tool | What it does |
|---|---|
| [`optimade-gateway`](https://github.com/Materials-Consortia/optimade-gateway){:target="_blank"} | One API that federates queries to many OPTIMADE databases |
| [Clients]({{ '/clients' | relative_url }}) | Web, command-line and Python clients, compared side by side |

**Validate an implementation**

| Tool | What it does |
|---|---|
| `optimade-validator` | Command-line validator, shipped with [`optimade-python-tools`](https://www.optimade.org/optimade-python-tools){:target="_blank"} |
| [`optimade-validator-action`](https://github.com/Materials-Consortia/optimade-validator-action){:target="_blank"} | Runs that validator against your API on every commit |

## Register your database

| Step | Where |
|---|---|
| Add yourself to `providers.json` | [`providers` repository](https://github.com/Materials-Consortia/providers){:target="_blank"} |
| The published providers list | [providers.optimade.org](https://providers.optimade.org){:target="_blank"} |

Once registered, your database is discoverable by every client above, and appears
on the providers dashboard.

## Check service status

| What | Where |
|---|---|
| Who serves what, and which version | [Providers dashboard](https://www.optimade.org/providers-dashboard/){:target="_blank"} |
| Uptime monitoring | [status.optimade.org](https://status.optimade.org){:target="_blank"} |

## Learn

| Resource | What it is |
|---|---|
| [`optimade-tutorial-exercises`](https://github.com/Materials-Consortia/optimade-tutorial-exercises){:target="_blank"} | An open-ended set of exercises, first prepared for the NOMAD Virtual Tutorial Series |
