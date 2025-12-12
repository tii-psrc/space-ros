<img src="./logos/spaceros_white_on_blue.png" alt="Space ROS Logo - White on Blue" width="700"/>

# Building the Space ROS image (TII version)

1. Install [Earthly](https://earthly.dev/get-earthly/) (v0.8.0 or later).

```
sudo /bin/sh -c 'wget https://github.com/earthly/earthly/releases/latest/download/earthly-linux-amd64 -O /usr/local/bin/earthly && chmod +x /usr/local/bin/earthly && /usr/local/bin/earthly bootstrap --with-autocomplete'
```

2. Build the Space ROS image using the following command:

```bash
# To build the base Space ROS image
earthly +main-image

# To build the dev Space ROS image
earthly +dev-image
```

3. Push to docker hub

```
docker tag tiipsrc/space-ros:latest tiipsrc/space-ros:scai-arm64-2025-12-12
docker push tiipsrc/space-ros:scai-arm64-2025-12-12

docker tag tiipsrc/space-ros:dev tiipsrc/space-ros:scai-arm64-2025-12-12-dev
docker push tiipsrc/space-ros:scai-arm64-2025-12-12-dev
```

