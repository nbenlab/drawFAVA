# We use the Jupyter stacks minimal notebook.
# In theory of we need some actual data tools we can upgrade this to the
# datascience-notebook, but it's likely overkill for this page.
#FROM quay.io/jupyter/datascience-notebook:python-3.12
FROM quay.io/jupyter/minimal-notebook:python-3.12

USER root

# Install some quality of life tools (emacs) plus npm and nodejs.
RUN apt-get update --yes \
 && apt-get dist-upgrade --yes \
 && apt-get install emacs-nox nodejs npm --yes

# Copy our book/build specific stuff over.
COPY /build-book.sh /usr/local/bin/build-book
RUN chmod 755 /usr/local/bin/build-book

# Also the requirements.txt file.
COPY /requirements.txt "${HOME}/requirements.txt"
RUN chmod 755 "${HOME}/requirements.txt"

USER ${NB_USER}

# The repository should get volume-mounted into /home/jovyan/repo (via the
# docker-compose.yml file), so we can make useful links here.
RUN ln -s "/home/${NB_USER}/repo/book" "/home/${NB_USER}/book"
RUN ln -s "/home/${NB_USER}/repo/site" "/home/${NB_USER}/site"

# We need to install jupyter-book.
RUN mamba install --yes 'jupyter-book>=1.0.4,<2' 'jupyterlab-spellchecker' \
 && mamba clean --all -f -y
# Also whatever is in the requirements.txt file.
RUN pip install -r "${HOME}/requirements.txt" \
 && rm "${HOME}/requirements.txt"

# If we have src code and a pyproject.toml that we want to install for the
# jupyter-book pages, we can put that here.
#RUN cd "/home/${NB_USER}/repo/" \
# && pip install -e . \
# && python -c 'import matplotlib, numpy, scipy'
