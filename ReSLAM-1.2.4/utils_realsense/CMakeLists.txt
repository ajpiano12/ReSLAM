INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR}/src )
LINK_LIBRARIES(${PROJECT_NAME})


find_path(RealSense2_INCLUDE_DIRS NAMES librealsense2/rs.hpp PATHS $ENV{RealSense2_ROOT_DIR}/include)

find_library(REALSENSE2_FOUND realsense2 HINTS ${LIBRARY_DIR} REQUIRED)
if(NOT REALSENSE2_FOUND)
    SET(REALSENSE2_FOUND "realsense2")
    message(WARN "Failed to find_library(realsense2)")
endif()


add_executable(realsense_record realsense_record.cpp)
add_executable(realsense_rgbd realsense_rgbd.cpp)
include_directories(realsense_record ${RealSense2_INCLUDE_DIRS})
include_directories(realsense_rgbd ${RealSense2_INCLUDE_DIRS})
target_link_libraries(realsense_record ${REALSENSE2_FOUND})
target_link_libraries(realsense_rgbd ${REALSENSE2_FOUND})

#target_link_libraries(realsense_rgbd ${REALSENSE2_FOUND} ${realsense})
