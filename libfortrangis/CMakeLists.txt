add_library(fortrangis STATIC

      ../libfortranc/fortranc.F90
      gdal.F90
      proj.F90
      shapelib.F90
      readosm.F90

      )

set_target_properties(fortrangis
      PROPERTIES COMPILE_DEFINITIONS "${PREPROCESSOR_DEFINES}; GRAPHICS_SUPPORT")

link_libraries(fortrangis ${EXTRA_LIBS})
