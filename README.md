To build docker:
```sh
powershell -executionpolicy bypass -File .\build_docker.ps1
```

To train model:
```sh
powershell -executionpolicy bypass -File .\exec-docker.ps1
```

In docker:
You may have to run `nerfstudio` install once:
```sh
cd /home/user/nerfstudio
python3.10 -m pip install -e .
```

1. Proces data
``` sh
ns-process-data video --data labv2.mp4 --output-dir labv2out/ --num-frames-target 1000
```

2. Train model
```sh
ns-train nerfacto --experiment-name exp1 --data labv2out/ --pipeline.model.predict-normals True
```

3. Export model, follow instruction on the UI link on the web UI. Should look something like:
```sh
ns-export pointcloud --load-config outputs/labv1out/nerfacto/2023-09-19_200152/config.yml --output-dir labv1out --normal-method open3d
```
