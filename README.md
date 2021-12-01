# gha-env-variables

This GitHub Action is intended to be used during the setup phase as a way to standardize the naming scheme of environment variables that are utilized in the build and deployment process.

### Usage

```yaml

- name: Export Environment Variables
  uses: dmsi-io/gha-env-variables@main
  with:
    TLD: ${{ secrets.TOP_LEVEL_DOMAIN }}
    GCP_PROJECT_ID: ${{ secrets.GCP_PROJECT_ID }}
```