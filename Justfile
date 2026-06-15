# Top-level Justfile for irregular.ninja photo sites

# Generate both albums
all: generate-irregular generate-alt

# Generate the irregular.ninja album
generate-irregular:
	just irregular.ninja/generate

# Generate the alt.irregular.ninja album
generate-alt:
	just alt.irregular.ninja/generate

# Dry-run both albums
dry-run-all: dry-run-irregular dry-run-alt

# Dry-run the irregular.ninja album
dry-run-irregular:
	just irregular.ninja/dry-run

# Dry-run the alt.irregular.ninja album
dry-run-alt:
	just alt.irregular.ninja/dry-run
