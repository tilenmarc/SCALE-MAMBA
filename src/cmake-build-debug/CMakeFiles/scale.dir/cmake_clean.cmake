file(REMOVE_RECURSE
  "libscale.pdb"
  "libscale.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/scale.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
