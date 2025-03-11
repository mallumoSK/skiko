# Compose 1.7.3

###
```shell
git clone --branch compose/1.7.3 https://github.com/mallumoSK/skiko.git && cd skiko/skiko
```
### LINUX
#### OpenGL ES ARM64
```shell
./docker/linux-arm64/setup-embeded.sh

sed -i "s/.*deploy.version.*/deploy.version=0.8.18-compose-1.7.3/g" ./gradle.properties

./build-with-local-skia-runtime.sh \
  "m126-6bfb13368b" \
  "false" \
  "linux" \
  "https://github.com/mallumoSK/skia-pack.git" \
  "compose/1.7.3"
```