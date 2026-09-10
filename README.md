# OPTIMADE Web Site

This folder contains the source code for the [OPTIMADE website](https://www.optimade.org).

## Local testing

For local testing, make sure you have ruby installed (as of 2026, use still a recent v3),
ideally `rbenv` and `ruby-build` (e.g. on macOS with the following)
```
brew install rbenv ruby-build
echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
exec bash
rbenv install 3.3.9
```

Then, install jekyll inside the folder of this repository:

```console
rbenv local 3.3.9 # So in this folder, we always use this version
ruby -v          # should say 3.3.9
rm -rf vendor/bundle Gemfile.lock
gem install bundler -v '~> 2.5'
bundle install
```

Finally serve the website with:
```
bundle exec jekyll serve
```

See [these instructions](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/) for more information.

Every pull request also builds the site and uploads `_site/` as an artifact.
Navigation links are absolute (`/resources` and so on), so opening the unzipped
files over `file://` will not resolve them; serve the folder instead, e.g. with
`python3 -m http.server` from inside the extracted `_site/`.

## Updating the site

- **Next meeting date**: edit `_includes/next_meeting.html`, which holds nothing
  but the date and its [timeanddate.com](https://www.timeanddate.com) link.
- **Homepage counters**: edit `_includes/counter.html`. The figures are copied by
  hand from the [providers dashboard](https://www.optimade.org/providers-dashboard/);
  update the date in the caption at the same time.
- **Link checker**: a weekly job tracks dead links in issue
  [#106](https://github.com/Materials-Consortia/materials-consortia.github.io/issues/106)
  rather than opening a new issue each week, so whether that issue is open
  says whether links are currently broken. While links are dead it reopens
  the issue and rewrites the body with the latest report, keeping only the
  newest one; once they all resolve it comments and closes. Known false
  positives belong in `.lycheeignore`; to use a different issue, change the
  number in `.github/workflows/ci.yml`.
