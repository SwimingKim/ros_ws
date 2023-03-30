# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "custom_message: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icustom_message:/home/skim/ros_ws/src/custom_message/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(custom_message_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_custom_target(_custom_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "custom_message" "/home/skim/ros_ws/src/custom_message/msg/person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(custom_message
  "/home/skim/ros_ws/src/custom_message/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_message
)

### Generating Services

### Generating Module File
_generate_module_cpp(custom_message
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_message
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(custom_message_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(custom_message_generate_messages custom_message_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_dependencies(custom_message_generate_messages_cpp _custom_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_message_gencpp)
add_dependencies(custom_message_gencpp custom_message_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_message_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(custom_message
  "/home/skim/ros_ws/src/custom_message/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_message
)

### Generating Services

### Generating Module File
_generate_module_eus(custom_message
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_message
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(custom_message_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(custom_message_generate_messages custom_message_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_dependencies(custom_message_generate_messages_eus _custom_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_message_geneus)
add_dependencies(custom_message_geneus custom_message_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_message_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(custom_message
  "/home/skim/ros_ws/src/custom_message/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_message
)

### Generating Services

### Generating Module File
_generate_module_lisp(custom_message
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_message
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(custom_message_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(custom_message_generate_messages custom_message_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_dependencies(custom_message_generate_messages_lisp _custom_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_message_genlisp)
add_dependencies(custom_message_genlisp custom_message_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_message_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(custom_message
  "/home/skim/ros_ws/src/custom_message/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_message
)

### Generating Services

### Generating Module File
_generate_module_nodejs(custom_message
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_message
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(custom_message_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(custom_message_generate_messages custom_message_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_dependencies(custom_message_generate_messages_nodejs _custom_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_message_gennodejs)
add_dependencies(custom_message_gennodejs custom_message_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_message_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(custom_message
  "/home/skim/ros_ws/src/custom_message/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_message
)

### Generating Services

### Generating Module File
_generate_module_py(custom_message
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_message
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(custom_message_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(custom_message_generate_messages custom_message_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/skim/ros_ws/src/custom_message/msg/person.msg" NAME_WE)
add_dependencies(custom_message_generate_messages_py _custom_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_message_genpy)
add_dependencies(custom_message_genpy custom_message_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_message_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_message
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(custom_message_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/custom_message
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(custom_message_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_message
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(custom_message_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/custom_message
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(custom_message_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_message)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_message\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_message
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(custom_message_generate_messages_py std_msgs_generate_messages_py)
endif()
