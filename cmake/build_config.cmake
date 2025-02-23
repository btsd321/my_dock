# if(CMAKE_BUILD_TYPE STREQUAL "Debug")
#     # 检查是否存在${CMAKE_BINARY_DIR}/Debug/bin目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Debug/bin)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Debug/bin)
#     endif()
#     # 检查是否存在${CMAKE_BINARY_DIR}/Debug/lib目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Debug/lib)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Debug/lib)
#     endif()
#     # 检查是否存在${CMAKE_BINARY_DIR}/Debug/dll目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Debug/dll)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Debug/dll)
#     endif()
#     # 设置可执行文件的输出目录
#     set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Debug/bin)
#     # 设置静态库的输出目录
#     set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Debug/lib)
#     # 设置动态库的输出目录
#     set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Debug/dll)
# else()
#     # 检查是否存在${CMAKE_BINARY_DIR}/Release/bin目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Release/bin)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Release/bin)
#     endif()
#     # 检查是否存在${CMAKE_BINARY_DIR}/Release/lib目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Release/lib)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Release/lib)
#     endif()
#     # 检查是否存在${CMAKE_BINARY_DIR}/Release/dll目录，如果没有则创建
#     if(NOT EXISTS ${CMAKE_BINARY_DIR}/Release/dll)
#         file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/Release/dll)
#     endif()
#     # 设置可执行文件的输出目录
#     set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Release/bin)
#     # 设置静态库的输出目录
#     set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Release/lib)
#     # 设置动态库的输出目录
#     set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Release/dll)
# endif()
