# Clients

There are already a few ways to try out OPTIMADE implementations:

## Swagger

Through the [Swagger/OpenAPI UI](https://petstore.swagger.io){:target="_blank"}, one can try making queries to implementations hosting an OpenAPI specification.
Implementations based on the Python [`optimade`](https://pypi.org/project/optimade/){:target="_blank"} package from the [`optimade-python-tools`](https://github.com/Materials-Consortia/optimade-python-tools){:target="_blank"} repository automatically creates and hosts an OpenAPI specification at `/extensions/openapi.json`.
Note, this is the default location and may not be where the OpenAPI specification is found for individual implementations.

**Try this**:

- [Open Database of Crystals (ODBX)](https://petstore.swagger.io/?url=https://optimade.odbx.science/v1/extensions/openapi.json){:target="_blank"}

## Materials Cloud Tool

An [open-source](https://github.com/CasperWA/voila-optimade-client){:target="_blank"} web and local executable client developed by [Casper W. Andersen (THEOS, EPFL)](https://casper.welzel.nu){:target="_blank"} using [Voilà](https://voila.readthedocs.io){:target="_blank"} is available on [Materials Cloud](https://materialscloud.org){:target="_blank"}.
It allows for searching through OPTIMADE databases, filtering on the structure property fields defined in the [OPTIMADE API specification](optimade), and inspect and download found structures in various file formats (CIF, PDB, VASP POSCAR, XYZ, Quantum ESPRESSO input, and more) utilizing the adapters from the Python [`optimade`](https://pypi.org/project/optimade/){:target="_blank"} package in the [`optimade-python-tools`](https://github.com/Materials-Consortia/optimade-python-tools){:target="_blank"} repository.

The filtering can be done either using the OPTIMADE filter language (see the specification for more information) directly, or one can use the friendly filtering widgets (default).

**Try this**: [materialscloud.org/optimadeclient](https://materialscloud.org/optimadeclient){:target="_blank"}

## optimade.science

An [open-source](https://github.com/tilde-lab/optimade.science){:target="_blank"} web client developed by [Tilde MI](https://tilde.pro){:target="_blank"} utilizing the [Cross-Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS){:target="_blank"} is available as a single universal `index.html` file. Can be run from server, USB-stick, etc.
It allows for searching through *multiple* OPTIMADE databases using the OPTIMADE filter language (see the specification for more information).

**Try this**: [optimade.science](https://optimade.science){:target="_blank"}
