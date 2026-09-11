---
title: OPTIMADE
description: >-
  OPTIMADE is a consortium of materials database providers that develops a
  common REST API, so that materials databases can be searched and their data
  retrieved in the same way, whichever provider they come from.
next_meeting: next_meeting.html
counters: counter.html
---

# About us

The **Open Databases Integration for Materials Design** (OPTIMADE) is a
**consortium of materials database providers** with the aim of making materials
databases interoperable.

The **OPTIMADE API** is a standard API that unifies searching and retrieving
information from materials databases.
→ [More about the motivations behind the OPTIMADE API](#motivation)

The latest release of the specification is **v1.3.0** (December 2025).

{% include {{ page.counters }} %}

## Why it is worth it

**If you consume data**, one filter query works everywhere. You write it once
and send it to every database that implements OPTIMADE, instead of learning a
different API, a different query syntax and a different data model for each one.
Tools already exist that query every known OPTIMADE database at once and hand
you back a single set of results.

**If you provide data**, implementing OPTIMADE makes your database visible to
everyone already using those tools, without you building or maintaining a client
of your own. You keep your own API, your own data model and your own terms of
use; OPTIMADE is an additional, standard way in. The
[reference implementation]({{ '/resources' | relative_url }}#software) does most
of the work, and once you are
[registered](https://github.com/Materials-Consortia/providers){:target="_blank"}
every OPTIMADE client can reach you.

## Try it now

This asks the Crystallography Open Database for binary silicon oxides, and is
copy-pasteable as it stands:

```console
$ curl -G 'https://www.crystallography.net/cod/optimade/v1/structures' \
    --data-urlencode 'filter=elements HAS ALL "Si","O" AND nelements=2' \
    --data-urlencode 'response_fields=chemical_formula_descriptive,nelements' \
    --data-urlencode 'page_limit=1'
```

```json
{
  "data": [
    {
      "id": "1010921",
      "type": "structures",
      "attributes": {
        "chemical_formula_descriptive": "O2Si",
        "nelements": 2
      }
    }
  ],
  "meta": {
    "data_returned": 394,
    "data_available": 535065
  }
}
```

Same query, any other provider: change the base URL. `data_returned` is how many
entries matched, `data_available` how many the database holds.

The structures themselves come back the same way. Ask for
`response_fields=lattice_vectors,cartesian_site_positions,species_at_sites,species`
and you get the unit cell, the Cartesian coordinates of every site, and what
sits on each one — `species_at_sites` names entries in `species`, which is where
the chemical symbols are. Those fields mean the same thing at every provider,
which is the whole point of the standard.

*Response retrieved on 11 September 2026 and shortened for clarity — the real
one also carries `links` and `relationships` for each entry, and the counts
change as the database grows.*

## Query everything at once

To search across the whole federation rather than one database at a time:

- the [**providers dashboard**](https://www.optimade.org/providers-dashboard/){:target="_blank"}
  lists every known provider, what each one serves and which version it speaks;
- [`optimade.science`](https://optimade.science){:target="_blank"} queries all
  known databases simultaneously from your browser;
- the [`optimade-python-tools` client]({{ '/clients' | relative_url }}) does the
  same from Python or the command line.

All of these are compared on the [clients]({{ '/clients' | relative_url }}) page.

## Where to go next

- **Query data** → [clients]({{ '/clients' | relative_url }})
- **Serve your data** → [resources]({{ '/resources' | relative_url }}#software)
- **Get involved** → [community]({{ '/community' | relative_url }})

If you use OPTIMADE in published work, please see
[how to cite]({{ '/how-to-cite' | relative_url }}).

## Motivation    {#motivation}

Designing new materials suitable for specific applications is a long, complex, and costly process.
Researchers think of new ideas based on intuition and experience.
Their synthesis and evaluation require a tremendous amount of trial and error.
In the last few years, there has been a major game change in materials design.
Thanks to the exponential growth of computer power and the development of robust first-principles electronic structure codes, it has become possible to perform large sets of calculations automatically.
This is the burgeoning area of high-throughput *ab initio* computation.
Such calculations have been used to create large databases containing the calculated properties of existing and hypothetical materials, many of which have appeared online.

Those databases grew up independently, each with its own API, query language and
data model, which makes using more than one of them at a time far harder than it
should be. OPTIMADE exists to remove that barrier.

## Get involved    {#get-involved}

Everyone is welcome. We meet online roughly once a month, and we would like to
help you create and register your own OPTIMADE API implementation.

> The next meeting will take place on {% include {{ page.next_meeting }} %} on [Jitsi](https://meet.jit.si/OPTIMADE){:target="_blank"}

The [community]({{ '/community' | relative_url }}) page says which channel to use
for what, and how to ask for access to our Slack workspace. The most recent
OPTIMADE CECAM workshop was held on the campus of the University Grenoble Alpes,
June 29 – July 3 2026; all of our workshops are listed on the
[events]({{ '/events' | relative_url }}) page.
