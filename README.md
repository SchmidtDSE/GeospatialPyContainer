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

#### Running simulations

While building the Dokcer container, SyncroSim is installed an executed once, so if this is sucessful it should run in principle. Once the container is build you can execute in from the terminal using

` mono syncrosim_linux_3_0_9/SyncroSim.Console.exe [command][argument, argument, ...]` 

To execute the `SagebrushSteppeRestoration` library, run

` ./simulation/run_syncrosim_scenario.sh` 

The library is mounted from external, as it is quite large. You would need to download this and mount accordingly

- [ ] This currently does not run, because we have not installed the ST-SIM package!


## Folder structure of the Docker container


├── **.devcontainer** &#x1F4C1;

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `devcontainer.json`&#x1F4C4; *mounts external folders, ...*

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `Dockerfile`&#x1F4C4; *mounts external folders, ...*

│&nbsp; &nbsp; &nbsp; &nbsp; └──  `python_environment.yaml`&#x1F4C4; *handles 

│&nbsp; &nbsp; &nbsp; &nbsp;└── scripts &#x1F4C1;  *scripts to be run during built*

│&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;└──  `handle_startup_sh`&#x1F4C4; *?*

│&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;└──  `*install_git_and_ssh.sh`&#x1F4C4; *handles, git, ssh, and executables*

│&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;└──  `*install_syncrosim.sh`&#x1F4C4; 

installation of python and python packages*

├── **simulation** &#x1F4C1;  *files for simulations within container*

│&nbsp; &nbsp; &nbsp; &nbsp;└──  `*run_syncrosim_scenario.sh`&#x1F4C4; *Run a syncrosim scenario from the library *

├── **syncrosim_linux_3_0_9** &#x1F4C1;  *contains the* `.exe` *and all files to run it*

		


