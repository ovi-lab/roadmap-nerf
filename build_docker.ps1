# Run with powershell -executionpolicy bypass -File .\build_docker.ps1
cd nerfstudio
rm Dockerfile
cp ..\nerfstudio-Dockerfile-p1 Dockerfile
docker build --shm-size=10gb --memory="10g" --memory-swap="10g" --build-arg CUDA_VERSION=11.8.0 --build-arg CUDA_ARCHITECTURES=86 --tag nerfstudio-base --file Dockerfile .
rm Dockerfile
cp ..\nerfstudio-Dockerfile-p2 Dockerfile
docker build --shm-size=12gb --memory="12g" --memory-swap="20g" --build-arg CUDA_VERSION=11.8.0 --build-arg CUDA_ARCHITECTURES=86 --tag nerfstudio --file Dockerfile .
git reset --hard HEAD
git clean -f
