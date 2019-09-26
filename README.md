# version-action

Versioning for GitHub Actions. Increments the npm package version, then pushes Git tags.

# Usage

```YAML
- name: Bump version
  if: contains(github.event.commits[0].message, '[skip ci]') == false
  uses: "smockle/version-action@master"
  env:
    GITHUB_USER_EMAIL: ${{ secrets.GITHUB_USER_EMAIL }}
    GITHUB_USER_NAME: ${{ secrets.GITHUB_USER_NAME }}
    GITHUB_ACCESS_TOKEN: ${{ secrets.GITHUB_ACCESS_TOKEN }}
```
