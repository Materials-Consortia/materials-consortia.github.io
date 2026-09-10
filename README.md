# OPTIMADE Web Site

This folder contains the source code for the [OPTIMADE website](https://www.optimade.org).

## Local testing

For local testing, make sure you have ruby installed and do

```console
gem install bundler
bundle install   # or: bundle install --path vendor/bundle
bundle exec jekyll serve
```

See [these instructions](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/) for more information.

## Updating the site

- **Next meeting date**: edit `_includes/next_meeting.html`, which holds nothing
  but the date and its [timeanddate.com](https://www.timeanddate.com) link.
- **Homepage counters**: edit `_includes/counter.html`. The figures are copied by
  hand from the [providers dashboard](https://www.optimade.org/providers-dashboard/);
  update the date in the caption at the same time.
