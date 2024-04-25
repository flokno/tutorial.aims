# tutorial.aims
Some basic FHI-aims tutorials

## Preparation

[Install FHI-aims.](./compilation/sigma/README.md)

Create virtual environment

```bash
python -m venv venv
source venv/bin/activate(.csh/.fish)
```

Install [`clims`](https://gitlab.com/FHI-aims-club/utilities/clims)

```bash
pip install clims
```

Install [`tdeptools`](https://github.com/flokno/tools.tdep)

```bash
pip install https://github.com/flokno/tools.tdep/archive/main.zip
```

## Basics steps

- get structure from materials project, e.g., https://next-gen.materialsproject.org/materials/mp-1007824

- Convert structure to FHI-aims input structure `geometry.in`:
    ```bash
    ase convert GaN.poscar geometry.in
    ```

- Check the geometry
    ```bash
    ase_geometry_info geometry.in
    ```

- Create a primitive cell according to [SPGlib](https://spglib.readthedocs.io/en/stable/) standard:
    ```bash
    ase_geometry_refine --primitive geometry.in
    ```

- Create relaxation input file
    ```bash
    clims-prepare-run --relax
    ```

Run aims.

## References

- https://fhi-aims.org/
- Online tutorials: https://fhi-aims-club.gitlab.io/tutorials/tutorials-overview/
- Manual: https://fhi-aims.org/uploads/documents/FHI-aims.231212.pdf

## Slides

[Monday Meeting slides from 22 April 2024](./slides/slides_monday-meeting-FHI-aims.pdf)
