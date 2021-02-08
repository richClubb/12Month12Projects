
# General notes

## General gstreamer investigation
This is an example of non-encoded jpg streaming

### Source: 



### Sink:

gst-launch-1.0 udpsrc port=5000 ! application/x-rtp,encoding-name=JPG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink
