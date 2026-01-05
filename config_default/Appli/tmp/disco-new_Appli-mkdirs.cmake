# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/Appli"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/Appli/build"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/tmp"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/src/disco-new_Appli-stamp"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/src"
  "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/src/disco-new_Appli-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/src/disco-new_Appli-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/simon/STM32CubeIDE/workspace_2.0.0/disco-new/config_default/Appli/src/disco-new_Appli-stamp${cfgdir}") # cfgdir has leading slash
endif()
