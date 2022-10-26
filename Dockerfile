FROM node:19-slim

LABEL name="action-version"
LABEL maintainer="Clay Miller <clay@smockle.com>"
LABEL version="1.0.0"
LABEL repository="https://github/smockle/action-version"
LABEL homepage="https://github/smockle/action-version"

LABEL com.github.actions.name="Versioning for GitHub Actions"
LABEL com.github.actions.description="Increments the npm package version, then pushes Git tags"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  ca-certificates \
  git && \
  apt-get clean -y && \
  rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
