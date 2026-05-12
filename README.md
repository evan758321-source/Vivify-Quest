# Vivify

Quest port of Vivify for Beat Saber.

Target game version: `1.40.8_7379`

Build commands:

```powershell
qpm restore
qpm s build
qpm s qmod
```
this is still very buggy, just less buggy than the 0.1 vivify. expect bugs, expect crashes


in 0.3.0 there is a bug with restarting in pause menu it crashes the game so just dont do that until fixed :)

## GitHub Actions deployment

This repo builds and publishes `Vivify.qmod` through `.github/workflows/release.yml`.

- Every pull request and push to `main`/`master` builds the qmod and uploads it as a workflow artifact.
- Pushing a version tag like `v0.3.1` builds the qmod and attaches `Vivify.qmod` to a GitHub Release.
- You can also run the workflow manually from the **Actions** tab with **Build QMOD → Run workflow**.

To publish a release from your machine:

```bash
git tag v0.3.1
git push origin v0.3.1
```

The workflow installs QPM, restores Quest dependencies, runs `qpm s qmod`, uploads the artifact, and publishes tagged builds with the repository `GITHUB_TOKEN`.

