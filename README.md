# gha-env-variables

This GitHub Action is intended to be used during the setup phase as a way to standardize the naming scheme of environment variables that are utilized in the build and deployment process.

### Usage

```yaml
- name: Export Environment Variables
  uses: dmsi-io/gha-env-variables@v1
  with:
    TLD: ${{ secrets.TOP_LEVEL_DOMAIN }}
    GCP_PROJECT_ID: ${{ secrets.GCP_PROJECT_ID }}
```

It is possible to override some of the environment variable defaults by providing them as inputs:

```yaml
- name: Export Environment Variables
  uses: dmsi-io/gha-env-variables@v1
  with:
    TLD: ${{ secrets.TOP_LEVEL_DOMAIN }}
    GCP_PROJECT_ID: ${{ secrets.GCP_PROJECT_ID }}
    NAMESPACE: namespace/override
    SERVICE_NAME: service/override
```

### Outputs

```yaml
# id: variables

# SHORT_SHA
${{ steps.variables.outputs.short_sha }}

# ENV
${{ steps.variables.outputs.env }}

# NAMESPACE
${{ steps.variables.outputs.namespace }}

# SERVICE_NAME
${{ steps.variables.outputs.service_name }}

# BUILD_IMAGE
${{ steps.variables.outputs.build_image }}

# HOSTNAME
${{ steps.variables.outputs.hostname }}

# CERT_NAME
${{ steps.variables.outputs.cert_name }}
```
