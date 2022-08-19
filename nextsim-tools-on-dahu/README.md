# nextsim-tools on dahu

 - We use the singularity image retrieved from fram
 - We need https://github.com/nansencenter/nextsim-tools
 - We define all the paths in the [env file](https://github.com/auraoupa/plots_nextsim/blob/main/nextsim-tools-on-dahu/env_dahu_plots.src)
 - Then the steps are described in this [script](https://github.com/auraoupa/plots_nextsim/blob/main/nextsim-tools-on-dahu/launch_job_sing.ksh) :
   -  first we ask for dahu ressources
   -  then we launch the singularity image in interactive mode
   -  then we launch jupyter notebook inside the singularity
