# CarthoCAD_23 -> CarthoCAD_Installer trigger

Copie o arquivo abaixo para o repositorio `CarthoCAD_23` em:
`.github/workflows/trigger-installer.yml`

```yaml
name: Trigger Installer Build

on:
  push:
    tags:
      - 'v*'

jobs:
  trigger:
    runs-on: ubuntu-latest
    steps:
      - name: Dispatch to CarthoCAD_Installer
        uses: actions/github-script@v7
        with:
          github-token: ${{ secrets.INSTALLER_REPO_PAT }}
          script: |
            await github.rest.repos.createDispatchEvent({
              owner: context.repo.owner,
              repo: 'CarthoCAD_Installer',
              event_type: 'carthocad-release',
              client_payload: {
                version: context.ref.replace('refs/tags/', '')
              }
            });
```

**Segredos necessarios no CarthoCAD_23:**
- `INSTALLER_REPO_PAT`: Personal Access Token (classic ou fine-grained) com permissao `contents: write` no repo `CarthoCAD_Installer`.

**Segredos necessarios no CarthoCAD_Installer:**
- `CARTHOCAD_23_PAT`: Personal Access Token com permissao `contents: read` no repo `CarthoCAD_23`.
