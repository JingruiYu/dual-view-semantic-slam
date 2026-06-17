#!/usr/bin/env bash
set -euo pipefail

repository_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
build_jobs="${BUILD_JOBS:-$(nproc 2>/dev/null || echo 4)}"

build_cmake_project() {
  local project_dir="$1"
  local build_type="$2"

  echo "Configuring and building ${project_dir} ..."
  cmake -S "${repository_root}/${project_dir}" \
        -B "${repository_root}/${project_dir}/build" \
        -DCMAKE_BUILD_TYPE="${build_type}"
  cmake --build "${repository_root}/${project_dir}/build" --parallel "${build_jobs}"
}

build_cmake_project "Thirdparty/DBoW2" Release
build_cmake_project "Thirdparty/g2o" Release
build_cmake_project "." Release

cat <<'MSG'

Build finished.

Main executable:
  Examples/Monocular/mono_bird_sem

Example usage:
  ./Examples/Monocular/mono_bird_sem \
    path/to/ORBvoc.txt \
    Examples/Monocular/fisheye.yaml \
    path/to/sequence
MSG
