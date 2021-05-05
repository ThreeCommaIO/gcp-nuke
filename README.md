# Gcp-Nuke

This is a fork of arehmandev/gcp-nuke with a dockerfile included for container build.

Docker image can be built as configured.

## gcp-nuke Reference

This reference is included for proper usage of the container once built.

```
NAME:
   gcp-nuke - The GCP project cleanup tool with added radiation

USAGE:
   e.g. gcp-nuke --project test-nuke-123456 --dryrun

VERSION:
   v0.1.0

COMMANDS:
   help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --project value   GCP project id to nuke (required)
   --dryrun          Perform a dryrun instead (default: false)
   --timeout value   Timeout for removal of a single resource in seconds (default: 400)
   --polltime value  Time for polling resource deletion status in seconds (default: 10)
   --help, -h        show help (default: false)
   --version, -v     print the version (default: false)
```
