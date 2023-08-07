ReSLAM
====
ReSLAM is built as an extension of UcoSLAM to support reusing cameras of different types.

ReSLAM is a library for Simultaneous Localization and Mapping using keypoints that able to operate with monocular cameras, stereo cameras, rgbd cameras. Additionally, our library is fully integrated with the ArUco library
for detecting squared fiducial markers. They can be placed in the environment to improve tracking.

 
##
## Main feafures:
 
	* Ability to save/load maps generated.
	* Ability to use maps generated with a camera to be reused with another camera.
	* Ability to use markers to enhance, initialization, tracking, and long-term relocalization. Also, markers allow estimating the real map scale from monocular cameras.  It is integrated with the ArUco library.
	* Support for sequential mapping, ensuring no frames are dropped in the process. Also, the sequential mode guarantees a deterministic behaviour. In other words, processing the same video sequence twice produces the same results.
	* Parallelization of the KeyPoint detector makes the tracking much faster
	* Only one external dependency, OpenCV. The rest of the required packages are in the library. The compilation is straightforward.
	* Multiplatform, ready to be compiled in Windows, Linux and Android systems

##
## More info
Please visit http://www.uco.es/investiga/grupos/ava/node/62 for more info

