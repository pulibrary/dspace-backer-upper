# DSpace Backer Upper

This is used to export resources from DSpace, right now for export into Figgy.

## How to run?

1. Get on a server, e.g `ssh deploy@figgy-web-staging2.princeton.edu`
1. `git clone https://github.com/pulibrary/dspace-backer-upper.git`
1. `cd dspace-backer-upper`
1. `bundle config set --local path 'vendor/bundle'`
1. `./downloader download_collection --dspace-token=<TOKENHERE> --download-path=/mnt/hydra_sources/ingest_scratch/trey/dspace_export <handle here>`
