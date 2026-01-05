# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/FSBL"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/FSBL/build"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/tmp"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/src/disco-new_FSBL-stamp"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/src"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/src/disco-new_FSBL-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/src/disco-new_FSBL-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/FSBL/src/disco-new_FSBL-stamp${cfgdir}") # cfgdir has leading slash
endif()
