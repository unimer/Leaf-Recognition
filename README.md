<h1>Description</h1>

<p>This project comes as part of Computer Vision
subject at Computer Science postgraduate studies. The main
goal of this project is to make software which input is leaf image
from which software recognizes the leaf type. This project put in
use vast majority of theoretical knowledge learned on Computer
Vision subject.</p>

<h2> Implementation </h2>
<p>It is based on mexopencv library which is development
kit of MATLAB MEX functions for OpenCV library. The
package provides MATLAB MEX functions that interface
with hundreds of OpenCV APIs. Also the package contains
a C++ class that converts between MATLAB’s native data
type and OpenCV data types. The version of mexopencv
used in development of this prototype is compatible with
OpenCV 3.4.1. This software is used to identify object as
leaves in image and to calculate properties of those objects
in an automated fashion. Automated analysis requires no user
intervention after setting the desired input image. Images in a
data-set are named by leaf type (wine-1.jpg, wine-2.jpg elm-
1.jpg, elm-2.jpg etc.). The software computes leaf contours,
and it compares contours of input leaf image to contours
of all leaf images from data-set. For each comparison of
contours software calculates Euclidean distance and at the
end it writes out the name of leaf image from data-set
with smallest Euclidean distance compared to the input leaf
image. Since this software is still in prototype phase it prints out euclidean distance on every iteration (for every image
from data-set) since this data are giving a lot of information
to developer and it will be used while further development. <a href="https://github.com/unimer/Leaf-Recognition/blob/master/report_ieeeconf.pdf">Read More</a></p>
