foreach (dir bin include share)
  file(GLOB files "${dir}/*")
  file(INSTALL ${files}
       DESTINATION "${install_dir}/${dir}")
endforeach()

file(GLOB libfiles "lib/*")
file(INSTALL ${libfiles}
  DESTINATION "${install_dir}/lib"
  FILES_MATCHING REGEX "python2.7" EXCLUDE)

file(GLOB pyfiles "lib/itk/python2.7/*")
file(INSTALL ${pyfiles}
  DESTINATION "${install_dir}/lib/python2.7")
