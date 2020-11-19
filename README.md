# raspotify-docker-compose

Connect your Raspberry Pi to your home internet and play music when you are connected to the same network!

After you run the docker-compose, you can go to Spotify and play songs through the Pi.
I find it great for parties and for reusing old speakers that don't have Wi-Fi / Bluetooth.

This is even better than bluetooth speakers because any number of people can connect at the same time, plus the range is as big as your Wi-Fi coverage.

all you need to do is to clone this repo into a directory and run the compose file:
`git clone https://github.com/qSharpy/raspotify-docker-compose'
docker-compose up -d`

Environment variables:
<p>
  <b>- DEVICE_NAME=Raspotify</b> #this is the default name you will see on the network
</p>

<p>
  <b>- BITRATE=320</b> #set the bittrate as you wish, 128, 256, 320`
</p>

Many thanks to
https://github.com/dtcooper/raspotify
and
https://hub.docker.com/r/piotrb/raspotify-docker

Piotr did a "run" version of this, but I find that the docker-compose is the way to go, especially when you considering setting different settings scaling and scaling.

Tested on Raspberry Pi 4B
