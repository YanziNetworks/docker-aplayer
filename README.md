# Docker ALSA Player

This image implements a Dockerised ALSA player. It requires that you pass along
the `/dev/snd` device to the container. Provided a file called `ping.wav` (or
any format supported by `aplay`), you can use it as follows:

```shell
docker run \
    --rm \
    --device /dev/snd \
    -v `pwd`:/data \
    efrecon/aplay \
    /data/ping.wav
```

The image uses a user called `aplayer` internally and arranges for the user to
be member of the `audio` group in order to be allowed to access the audio
device.