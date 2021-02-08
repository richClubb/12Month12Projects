
# General notes

## General gstreamer investigation
This is an example of non-encoded jpg streaming

### Source (run on raspberry pi): 

gst-launch-1.0 v4l2src device="/dev/video0" ! decodebin ! videoconvert ! jpegenc ! rtpjpegpa y ! udpsink host=192.168.1.88 port=5000

### Sink (run on PC):

gst-launch-1.0 udpsrc port=5000 ! application/x-rtp,encoding-name=JPG,payload=26 ! rtpjpegdepay ! jpegdec ! autovideosink

### Next

* Figure out minimum set of packages needed for this
* Get some kind of encoding working (h264)
* See if this is possible to stream to a mobile phone, because that might be enough of a backbone to get most of the stuff running.
* Write a test C app which does something similar to the gst-launch command
* Look at how this can integrate with something like OpenCV
* Look at how this can be streamed to a webpage
