
to deploy:

- transfer the appropriate image archive (probably tar.gz) to the target device
- on target device, run
  ```
  gunzip -c image.tar.gz | docker load
  ```
- setup motioneye:
  ```
  mkdir -p motioneye/etc_motioneye
  mkdir -p motioneye/var_lib_motioneye

  ```
- copy `extra/docker-compose-rpi.yml` to `motioneye/`
- populate `motioneye/etc_motioneye/` with camera confs
- create camera dirs in var volume, assume 10 cameras:
  ```
  N=15
  for i in $(seq $N); do
    mkdir -p motioneye/var_lib_motioneye/Camera$i
  done
  ```
- start / restart via docker-compose:
  ```
  cd motioneye
  docker-compose -f docker-compose-rpi.yml up -d
  ```
- **SET ADMIN AND USER PASSWORDS!**

