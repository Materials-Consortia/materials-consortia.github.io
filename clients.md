---
title: Clients
description: >-
  Web, command-line and Python clients for searching OPTIMADE databases,
  compared side by side, including the ones that query every known database at once.
---

# Clients

OPTIMADE APIs can be queried with generic tools such as `curl`, and from any
programming language. These clients do the work for you.

| Client | Type | Queries all databases at once? | Maintainer | Try it |
|---|---|---|---|---|
| Materials Cloud OPTIMADE client | Web app | No (one database, picked from a dropdown) | [Bud Macaulay (PSI)](https://www.psi.ch/en/lms/people/bud-macaulay){:target="_blank"} | [optimadeclient.materialscloud.io](https://optimadeclient.materialscloud.io/){:target="_blank"} |
| `optimade.science` | Web app, a single HTML file | Yes (all known databases simultaneously) | [Evgeny Blokhin (Tilde MI)](https://tilde.pro){:target="_blank"} | [optimade.science](https://optimade.science){:target="_blank"} |
| `optimade-python-tools` client | Python library and `optimade-get` command | Yes (queried concurrently) | Materials Consortia | [Installation](https://www.optimade.org/optimade-python-tools/latest/INSTALL/){:target="_blank"} |
| Swagger / OpenAPI UI | Generic browser UI | No (one implementation at a time) | Swagger (third party) | [ODBX example](https://petstore.swagger.io/?url=https://optimade.odbx.science/v1/extensions/openapi.json){:target="_blank"} |

If you want one answer drawn from everything the federation serves, use
`optimade.science` or the `optimade-python-tools` client.

## Materials Cloud OPTIMADE client

An [open-source](https://github.com/materialscloud-org/tools-optimadeclient-react){:target="_blank"} single-page app that runs entirely in the browser, written in React and hosted on [Materials Cloud](https://materialscloud.org){:target="_blank"}.
Choose a provider and one of its sub-databases from the dropdowns, or point the client at a base URL of your own, then filter on the structure property fields defined in the [OPTIMADE API specification]({{ '/api-specification' | relative_url }}), either with the periodic table and slider widgets or by writing an OPTIMADE filter directly.
Structures found can be inspected and downloaded as CIF, XYZ, XSF, VASP POSCAR or raw JSON.
The same querier is also published as a Jupyter widget, [`widget-optimade-client`](https://pypi.org/project/widget-optimade-client/){:target="_blank"}.

## optimade.science

An [open-source](https://github.com/tilde-lab/optimade.science){:target="_blank"} web client that searches *all* the databases in the [OPTIMADE providers list](https://providers.optimade.org){:target="_blank"} *simultaneously*, using the OPTIMADE filter language.
It relies on [Cross-Origin Resource Sharing](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS){:target="_blank"} and ships as a single `index.html`, so it can be served from a web server, a USB stick, or your own machine.

## optimade-python-tools

The [`optimade-python-tools`](https://www.optimade.org/optimade-python-tools){:target="_blank"} library contains an asynchronous client that queries all OPTIMADE databases concurrently, from Python or from the command line as `optimade-get`.
See the [client documentation](https://www.optimade.org/optimade-python-tools/latest/getting_started/client/){:target="_blank"} for details.

## Swagger / OpenAPI UI

Implementations that publish an OpenAPI schema can be explored in the [Swagger UI](https://petstore.swagger.io){:target="_blank"}, one implementation at a time.
Servers built on the Python [`optimade`](https://pypi.org/project/optimade/){:target="_blank"} package publish their schema at `/extensions/openapi.json` by default, though individual implementations may put it elsewhere.
