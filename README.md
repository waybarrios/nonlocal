# Nonlocal

## Build

```
nvidia-docker build -t nonlocal path/to/dockerfile
```

## Run interactive mode:

```
nvidia-docker run -it nonlocal -v path/to/code:/code/nonlocal -v path/to/data:/data -v path/to/model:/model bash

```
