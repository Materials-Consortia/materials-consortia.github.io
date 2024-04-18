---
title: OPTIMADE
next_meeting: next_meeting.html
counters: counter.html
---

# About us

The **Open Databases Integration for Materials Design** (OPTIMADE) consortium aims to make materials databases interoperable by developing a specification for a common REST API.


{% include {{ page.counters }} %}


## Motivation

Designing new materials suitable for specific applications is a long, complex, and costly process.
Researchers think of new ideas based on intuition and experience.
Their synthesis and evaluation require a tremendous amount of trial and error.
In the last few years, there has been a major game change in materials design.
Thanks to the exponential growth of computer power and the development of robust first-principles electronic structure codes, it has become possible to perform large sets of calculations automatically.
This is the burgeoning area of high-throughput ab initio computation.
Such calculations have been used to create large databases containing the calculated properties of existing and hypothetical materials, many of which have appeared online.

We have released version 1 of the OPTIMADE specification, with several databases already providing implementations.
A full list is available on the [OPTIMADE providers dashboard](https://www.optimade.org/providers-dashboard/){:target="_blank"}.

## How to cite OPTIMADE

Should you wish to cite the OPTIMADE specification, please use the following:

- Evans *et al*, Developments and applications of the OPTIMADE API for materials discovery, design, and data exchange, *Digital Discovery* (2024) [10.1039/D4DD00039K](https://doi.org/10.1039/D4DD00039K){:target="_blank"} (preprint: [10.48550/arXiv.2402.0057](https://doi.org/10.48550/arXiv.2402.00572){:target="_blank"})
- Andersen *et al*, OPTIMADE, an API for exchanging materials data, *Sci.  Data* **8**, 217 (2021) [10.1038/s41597-021-00974-z](https://doi.org/10.1038/s41597-021-00974-z){:target="_blank"}
- Andersen *et al*, The OPTIMADE Specification, *Zenodo*, [10.5281/zenodo.4195050](https://doi.org/10.5281/zenodo.4195050){:target="_blank"}

If you use the `optimade-python-tools` to access or serve OPTIMADE APIs, please consider citing the following:

- Evans *et al*, optimade-python-tools: A Python library for serving and consuming materials data via OPTIMADE APIs, *Journal of Open Source Software*, **6** (65), 3458 (2021), [10.21105/joss.03458](https://doi.org/10.21105/joss.03458)

## Get involved

All of our work is openly available under the [Materials-Consortia](https://github.com/Materials-Consortia/){:target="_blank"} organization on GitHub and we welcome all contributions.

We would love to help you create and register your own OPTIMADE API implementations and hear your feedback on the specification.
We meet monthly [Jitsi](https://meet.jit.si) (join with the room code `OPTIMADE`); everyone is welcome to join the discussion, please feel free to reach out on the mailing list
`dev[at]optimade.org` to register your interest.

The next meeting will take place on {% include {{ page.next_meeting }} %}

Besides GitHub, we use [Slack](https://optimade.slack.com) for developer communication.
If you wish to join the workspace, please feel free to use [this invite link](https://join.slack.com/t/optimade/shared_invite/zt-1m52h9p41-hKS4w4SQ1pFg~VnNLboLFg).

With the support of [CECAM](https://www.cecam.org){:target="_blank"}, we hold [annual workshops](https://www.cecam.org/search#stq=%22Open%20Databases%20Integration%20for%20Materials%20Design%22&stp=1){:target="_blank"} to discuss and develop the specification and related ideas.

**OMDI2021**: Related to the central OPTIMADE efforts, the *Workshop on Ontologies for Materials-Databases Interoperability 2021* was held at Linköping University, Sweden on **October 5-7, 2021**.
To read more about **OMDI2021** go to [the workshop site](omdi2021) or the [Linköping University event site](https://liu.se/en/research/omdi2021){:target="_blank"}.
