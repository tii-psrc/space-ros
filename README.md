<img src="./logos/spaceros_white_on_blue.png" alt="Space ROS Logo - White on Blue" width="700"/>

# Building the Space ROS image (TII version)

1. Install [Earthly](https://earthly.dev/get-earthly/) (v0.8.0 or later).

```
sudo /bin/sh -c 'wget https://github.com/earthly/earthly/releases/latest/download/earthly-linux-amd64 -O /usr/local/bin/earthly && chmod +x /usr/local/bin/earthly && /usr/local/bin/earthly bootstrap --with-autocomplete'
```

2. Build the Space ROS image using the following command:

```bash
./build.sh
```

NB: internally it will push image `tiipsrc/space-ros:scai-$ARCH-$SPACEROS_TAG` to Docker Hub. It will be used by `luna2` docker build later.

