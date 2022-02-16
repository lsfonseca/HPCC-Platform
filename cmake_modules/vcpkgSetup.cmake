set (USE_OPENLDAP OFF)

set (USE_CBLAS OFF)

set (USE_LIBARCHIVE OFF)
set (USE_BOOST_REGEX OFF)

set (USE_AZURE OFF)
set (USE_AWS OFF)
set (WSSQL_SERVICE OFF)
set (USE_PYTHON3 OFF)
set (USE_CASSANDRA OFF)
set (USE_JAVA OFF)
set (USE_NATIVE_LIBRARIES ON)
set (CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

# Additional
option(BUILD_TESTS "Enable libgit2 tests (override libgit2 option)" ON)
set (BUILD_TESTS OFF)
set (SKIP_ECLWATCH ON)
set (USE_OPTIONAL OFF)