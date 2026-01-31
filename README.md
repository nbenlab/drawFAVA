# Drawing the Functional Atlas of Visual Areas (drawFAVA)

DrawFAVA is a research project to draw functional visual area boundaries on the
occipital cortices of hundreds of human subjects obtained from many public MRI
datasets.

This repository contains the website for the drawing portion of the project,
which includes information on the functional boundaries of the visual cortex
that are part of the FAVA dataset, and instructions for drawing them.


## How to Build the Website

The DrawFAVA website is built and deployed automatically when the files in the
`book/` directory are updated via a GitHub Actions workflow in the file
`.github/workflows/webpage.yml`. Additionally, it can be built locally (for
example, to see how some changes look). The entire website consists of static
HTML pages, so nothing fancy is required to view them, aside from a web
browser.

### How to Build the Website Locally

DrawFAVA can be built using [Jupyter Book](https://jupyterbook.org/stable/).
The `Dockerfile` and `docker-compose.yml` files in this repository contain
instructions for building a docker container that can be run to build the book.
The container has two options. The first is the simplest and just builds the
book and puts the rendered HTML files in the `site/_build/html` directory. This
can be done by running the following command from the root of the repository:

```bash
docker compose run build-book
```

This will build the docker image, start the container, and build the Jupyter
book website, placing it in the `site/` directory. After this has been built,
you should be able to see it by pointing your web browser at
`file://{REPO}/site/_build/html/index.html` where the `{REPO}` string should be
replaced with the full absolute path to your repository directory. (You can
find this by typing `pwd` after you have `cd`ed into the repository directory.)

Alternatively, you can start a JupyterLab server inside the docker container.
The container will include Jupyter Book and all necessary utilities, and the
repository directory will automatically be available inside the container. From
inside the JupyterLab session, one can build the Jupyter Book using the command
`build-book`. This can be run from a console started within the JupyerLab
interface.

To start the JupyterLab interface, use the command:

```bash
docker compose up
```

The JupyterLab server is available on port `8000` by default, but if you wish
to use a different port, you can place it in the `.env` file in the repository
root. For example, the following command will ensure that going forward, the
port `8080` will be used.

```bash
echo 'DRAWFAVA_PORT=8080' > .env
```


## Copyright

Copyright (c) 2025&ndash;2026 Noah C. Benson


## License

Unless otherwise stated, the text content of the [drawFAVA
website](https://nbenlab.github.io/drawFAVA) is made available under the
[Creative Commons Attribution 4.0 International License](
https://creativecommons.org/licenses/by/4.0/legalcode). For a human-readable
summary of the license, see
[here](https://creativecommons.org/licenses/by/4.0/).

Unless otherwise stated, images on this website are under copyright of the
original creator.

Unless otherwise stated, the software and documentation provided in the
[drawFAVA repository](https://github.com/nbenlab/drawFAVA) are made available
under the [MIT license](https://opensource.org/licenses/mit-license.html).

