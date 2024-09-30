add_library(usermod_apriltag INTERFACE)
target_sources(usermod_apriltag INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/module.c
    ${CMAKE_CURRENT_LIST_DIR}/apriltag.c
    ${CMAKE_CURRENT_LIST_DIR}/tag25h9.c
    ${CMAKE_CURRENT_LIST_DIR}/apriltag_quad_thresh.c
    ${CMAKE_CURRENT_LIST_DIR}/common/g2d.c
    ${CMAKE_CURRENT_LIST_DIR}/common/getopt.c
    ${CMAKE_CURRENT_LIST_DIR}/common/homography.c
    ${CMAKE_CURRENT_LIST_DIR}/common/image_u8.c
    ${CMAKE_CURRENT_LIST_DIR}/common/image_u8x3.c
#    ${CMAKE_CURRENT_LIST_DIR}/common/image_u8x4.c
    ${CMAKE_CURRENT_LIST_DIR}/common/matd.c
    ${CMAKE_CURRENT_LIST_DIR}/common/pam.c
#    ${CMAKE_CURRENT_LIST_DIR}/common/pjpeg-idct.c
#    ${CMAKE_CURRENT_LIST_DIR}/common/pjpeg.c
    ${CMAKE_CURRENT_LIST_DIR}/common/pnm.c
    ${CMAKE_CURRENT_LIST_DIR}/common/pthreads_cross.c
    ${CMAKE_CURRENT_LIST_DIR}/common/string_util.c
    ${CMAKE_CURRENT_LIST_DIR}/common/svd22.c
    ${CMAKE_CURRENT_LIST_DIR}/common/time_util.c
    ${CMAKE_CURRENT_LIST_DIR}/common/unionfind.c
    ${CMAKE_CURRENT_LIST_DIR}/common/workerpool.c
    ${CMAKE_CURRENT_LIST_DIR}/common/zarray.c
    ${CMAKE_CURRENT_LIST_DIR}/common/zhash.c
    ${CMAKE_CURRENT_LIST_DIR}/common/zmaxheap.c
)
target_compile_definitions(usermod_apriltag INTERFACE
    NOTHREADS
)
target_include_directories(usermod_apriltag INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}
)
target_link_libraries(usermod INTERFACE usermod_apriltag)
