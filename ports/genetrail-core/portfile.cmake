vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO CrimeLabs-EU/genetrail-core
  REF bdf2fec88bb53a2c38503e5fe99b3214efdf9723
  SHA512 1
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
