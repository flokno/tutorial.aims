Installation
===

- Obtain source code and store it e.g. in `~/local/`
- `cd` into the source directory, e.g., `cd ~/local/FHIaims`
- Check out the release version, `git checkout 231212`
- Create a build directory, `mkdir build`
- `cd build`
- Copy `cache.cmake` and `submit_make.sh` here
- Submit, `sbatch submit_make.sh`

If everything works, you should find a binary `./aims.231208.scalapack.mpi.x`

Use `realpath aims.231208.scalapack.mpi.x` to prepare the run script `run_aims` and move it on an executable path.