# Local preview of the site, matching the Ruby version used in CI.
#
#   docker build -t optimade-site .
#   docker run --rm -it -u "$(id -u):$(id -g)" -p 4000:4000 -p 35729:35729 \
#     -v "$PWD":/srv/jekyll optimade-site
#
# then open http://localhost:4000. Edits to the source rebuild and reload the
# page automatically. `-u` keeps the generated _site/ owned by you, not root.
FROM ruby:3.3

WORKDIR /srv/jekyll

# Gems live outside the mounted source directory, so bind-mounting the repo
# over /srv/jekyll does not hide them.
ENV BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_GEMFILE=/srv/gems/Gemfile

COPY Gemfile /srv/gems/Gemfile
# Ruby 3 no longer bundles webrick, which `jekyll serve` needs.
RUN cd /srv/gems && bundle add webrick --skip-install && bundle install

EXPOSE 4000

# --force_polling: inotify events don't reliably cross bind mounts.
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
