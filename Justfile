# Top-level Justfile for irregular.ninja photo sites

# all
all: generate sync

# Generate both albums
generate: generate-irregular generate-alt

# Generate the irregular.ninja album
generate-irregular:
	just irregular.ninja/generate

# Generate the alt.irregular.ninja album
generate-alt:
	just alt.irregular.ninja/generate

# Publish both albums to configured rsync destinations
sync: sync-irregular sync-alt

# Publish irregular.ninja
sync-irregular:
	just irregular.ninja/sync

# Publish alt.irregular.ninja
sync-alt:
	just alt.irregular.ninja/sync

# Dry-run publish for both albums
sync-dry-run: sync-dry-run-irregular sync-dry-run-alt

# Dry-run publish irregular.ninja
sync-dry-run-irregular:
	just irregular.ninja/sync-dry-run

# Dry-run publish alt.irregular.ninja
sync-dry-run-alt:
	just alt.irregular.ninja/sync-dry-run

# Dry-run both albums
dry-run: dry-run-irregular dry-run-alt

# Dry-run the irregular.ninja album
dry-run-irregular:
	just irregular.ninja/dry-run

# Dry-run the alt.irregular.ninja album
dry-run-alt:
	just alt.irregular.ninja/dry-run
