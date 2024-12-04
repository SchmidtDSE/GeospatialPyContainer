# GeospatialPyContainer

This repo is a basic Docker container with geospatial capapbilities for Python. More specifically it
- install Python 3.12
- installs key geospatial packages: `rasterio`, ` xarray`, ` rioxarray` 

### How to set up this container

If going the dev container route, you will need the following:

- Docker (cli, but optionally the desktop app)
- VSCode, and the `Dev Containers` extension

After cloning the repo, you will need to open it in VSCode (` code .` in the command line) and run the following command:

- `Cmd + Shift + P -> Dev Containers: Reopen in Container`

or

- `Cmd + Shift + P -> Dev Containers: Rebuilt Container`

## How to start a Jupter Notebook

- Activate the correct Python environment `conda activate GeospatialPyContainer`
- Start notebook with `jupyter notebook --allow-root --NotebookApp.token=''`

## Folder structure of the Docker container


├── **.devcontainer** &#x1F4C1;

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `devcontainer.json`&#x1F4C4; *mounts external folders, ...*

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `Dockerfile`&#x1F4C4; *mounts external folders, ...*

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `python_environment.yaml`&#x1F4C4; *handles 

│&nbsp; &nbsp; &nbsp; &nbsp;└── scripts &#x1F4C1;  *scripts to be run during built*

│&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;└──  `handle_startup_sh`&#x1F4C4; *?*

│&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;└──  `*install_git_and_ssh.sh`&#x1F4C4; *handles, git, ssh, and executables*


installation of python and python packages*

├── **simulation** &#x1F4C1;  *files for simulations within container*

│&nbsp; &nbsp; &nbsp; &nbsp;└──  `*.py`&#x1F4C4; *Runs python files. Conda environment of yaml file needs to be activated and script run in terminal with conda*



		


