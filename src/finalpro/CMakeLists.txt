cmake_minimum_required(VERSION 2.8.3)
project(finalpro)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs message_generation)
find_package(OpenCV REQUIRED)
## Declare ROS messages and services
add_message_files(FILES data.msg posmesin.msg messagetomotor.msg)
# add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(
  DEPENDENCIES
  std_msgs
)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(kamera src/kamera.cpp)
target_link_libraries(kamera ${catkin_LIBRARIES} ${OpenCV_LIBS})
add_dependencies(kamera finalpro_kamera_cpp)

add_executable(pc src/pc.cpp)
target_link_libraries(pc ${catkin_LIBRARIES})
add_dependencies(pc finalpro_pc_cpp)

add_executable(motor src/motor.cpp)
target_link_libraries(motor ${catkin_LIBRARIES})
add_dependencies(motor finalpro_motor_cpp)

# add_executable(listener src/listener.cpp)
# target_link_libraries(listener ${catkin_LIBRARIES})
# add_dependencies(listener beginner_tutorials_generate_messages_cpp)