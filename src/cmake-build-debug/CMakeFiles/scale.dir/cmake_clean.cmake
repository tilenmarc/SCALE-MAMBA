file(REMOVE_RECURSE
  "libscale.a"
  "libscale.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/scale.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
