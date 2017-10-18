# jupyter-notebook
Slightly tweaked version of jupyter/scipy-notebook.
## Tweaks

1. Installs `google-api-python-client` via `pip`.
2. Mounts Google Cloud credentials (`~/.config/gcloud`) into the container when running.

These tweaks enable me to access BigQuery via Pandas directly from the notebook. 🔥
## Usage

1. Run `make`

## Working Directory

By default, the current working directory (typically root of this repo) will become the working directory for Jupyter. To override, set an environment variable named `NOTEBOOKS` that points at the path you want to use as your working directory.

For example:

```bash
$ NOTEBOOKS=/home/kai/notebooks make
```

...OR simply override the default value for `NOTEBOOKS` at the top of the `Makefile`.