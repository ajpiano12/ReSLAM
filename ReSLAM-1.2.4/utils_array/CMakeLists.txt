 # CMake file for sba's demo program
INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/src )
LINK_LIBRARIES(${PROJECT_NAME} ${reslam_REQUIRED_LIBRARIES})

ADD_EXECUTABLE(reslam_array reslam_array.cpp )
ADD_EXECUTABLE(reslam_array_calibrate reslam_array_calibrate.cpp stereo_calibration.cpp stereo_calibration.h levmarq.h aruco_calibration_grid_board_a4.h)
ADD_EXECUTABLE(reslam_array_record reslam_array_record.cpp )



