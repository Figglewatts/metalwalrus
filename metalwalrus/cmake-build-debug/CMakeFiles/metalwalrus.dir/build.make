# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/sam/programs/clion-2016.3.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/sam/programs/clion-2016.3.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sam/Documents/git-repos/metalwalrus/metalwalrus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/metalwalrus.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/metalwalrus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/metalwalrus.dir/flags.make

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o: ../lib/lodepng.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/lib/lodepng.cpp

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/lib/lodepng.cpp > CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.i

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/lib/lodepng.cpp -o CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.s

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.requires

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.provides: CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.provides

CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o: ../Src/Framework/Graphics/Texture2D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/Texture2D.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/Texture2D.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/Texture2D.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o: ../Src/Framework/Graphics/TextureRegion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/TextureRegion.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/TextureRegion.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/TextureRegion.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o: ../Src/Framework/Graphics/VertexData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/VertexData.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/VertexData.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Graphics/VertexData.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o: ../Src/Framework/Math/Matrix3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Matrix3.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Matrix3.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Matrix3.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o: ../Src/Framework/Math/Vector2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Vector2.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Vector2.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Math/Vector2.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o: ../Src/Framework/Util/Debug.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/Debug.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/Debug.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/Debug.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o: ../Src/Framework/Util/GLError.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/GLError.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/GLError.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/GLError.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o: ../Src/Framework/Util/IOUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/IOUtil.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/IOUtil.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/IOUtil.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o: ../Src/Framework/Util/MathUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/MathUtil.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/MathUtil.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Util/MathUtil.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o


CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o: ../Src/Framework/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Game.cpp

CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Game.cpp > CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.i

CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/Framework/Game.cpp -o CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.s

CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o


CMakeFiles/metalwalrus.dir/Src/main.cpp.o: CMakeFiles/metalwalrus.dir/flags.make
CMakeFiles/metalwalrus.dir/Src/main.cpp.o: ../Src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/metalwalrus.dir/Src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metalwalrus.dir/Src/main.cpp.o -c /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/main.cpp

CMakeFiles/metalwalrus.dir/Src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metalwalrus.dir/Src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/main.cpp > CMakeFiles/metalwalrus.dir/Src/main.cpp.i

CMakeFiles/metalwalrus.dir/Src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metalwalrus.dir/Src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Documents/git-repos/metalwalrus/metalwalrus/Src/main.cpp -o CMakeFiles/metalwalrus.dir/Src/main.cpp.s

CMakeFiles/metalwalrus.dir/Src/main.cpp.o.requires:

.PHONY : CMakeFiles/metalwalrus.dir/Src/main.cpp.o.requires

CMakeFiles/metalwalrus.dir/Src/main.cpp.o.provides: CMakeFiles/metalwalrus.dir/Src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/metalwalrus.dir/build.make CMakeFiles/metalwalrus.dir/Src/main.cpp.o.provides.build
.PHONY : CMakeFiles/metalwalrus.dir/Src/main.cpp.o.provides

CMakeFiles/metalwalrus.dir/Src/main.cpp.o.provides.build: CMakeFiles/metalwalrus.dir/Src/main.cpp.o


# Object files for target metalwalrus
metalwalrus_OBJECTS = \
"CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o" \
"CMakeFiles/metalwalrus.dir/Src/main.cpp.o"

# External object files for target metalwalrus
metalwalrus_EXTERNAL_OBJECTS =

metalwalrus: CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/Src/main.cpp.o
metalwalrus: CMakeFiles/metalwalrus.dir/build.make
metalwalrus: CMakeFiles/metalwalrus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable metalwalrus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/metalwalrus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/metalwalrus.dir/build: metalwalrus

.PHONY : CMakeFiles/metalwalrus.dir/build

CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/lib/lodepng.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/Texture2D.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/TextureRegion.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Graphics/VertexData.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Matrix3.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Math/Vector2.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Util/Debug.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Util/GLError.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Util/IOUtil.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Util/MathUtil.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/Framework/Game.cpp.o.requires
CMakeFiles/metalwalrus.dir/requires: CMakeFiles/metalwalrus.dir/Src/main.cpp.o.requires

.PHONY : CMakeFiles/metalwalrus.dir/requires

CMakeFiles/metalwalrus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metalwalrus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metalwalrus.dir/clean

CMakeFiles/metalwalrus.dir/depend:
	cd /home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Documents/git-repos/metalwalrus/metalwalrus /home/sam/Documents/git-repos/metalwalrus/metalwalrus /home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug /home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug /home/sam/Documents/git-repos/metalwalrus/metalwalrus/cmake-build-debug/CMakeFiles/metalwalrus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/metalwalrus.dir/depend
