# irregular.ninja

Photo site generation for **irregular.ninja** and **alt.irregular.ninja**.

This repository contains the working directories and build automation for generating static photo albums using [`shuriken.sh`](https://codeberg.org/snonux/shuriken.sh), a lightweight shell-based photo album generator.

## Structure

- `irregular.ninja/` — Main photo album
  - `shuriken.conf` — Album configuration (title, geometry, templates)
  - `incoming/` — Symlink to the source photo directory
  - `incoming-invalid/` — Placeholder for rejected/invalid photos
  - `Justfile` — Build recipes for this album

- `alt.irregular.ninja/` — Alternative photo album
  - `shuriken.conf` — Album configuration
  - `incoming/` — Symlink to the source photo directory
  - `Justfile` — Build recipes for this album

- `Justfile` — Top-level build file that delegates to both sub-albums

## Building

Generate a single album:

```bash
just irregular.ninja/generate
just alt.irregular.ninja/generate
```

Generate both albums:

```bash
just all
```

Dry-run to preview changes without writing:

```bash
just dry-run-all
```

## Tool

Album generation is powered by [`shuriken.sh`](https://codeberg.org/snonux/shuriken.sh).
