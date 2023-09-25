# Run with powershell -executionpolicy bypass -File .\exec-docker.ps1
docker run --gpus all -v C:/Users/amshamoh/Projects/roadmap_nerf/data:/workspace/ -v C:/Users/amshamoh/Projects/roadmap_nerf/cache:/home/user/.cache/ -p 7007:7007 --rm -it --shm-size=14gb nerfstudio
