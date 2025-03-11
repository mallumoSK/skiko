apt-get update -y
apt-get install binutils build-essential -y
apt-get install software-properties-common -y
apt-get install python git fontconfig libfontconfig1-dev libglu1-mesa-dev libxrandr-dev libdbus-1-dev curl wget -y
apt-get install openjdk-11-jdk -y
apt-get install clang-11 -y && \
   apt-get remove g++ -y && \
   update-alternatives --install /usr/bin/clang clang /usr/bin/clang-11 100 && \
   update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-11 100
apt-get install nodejs -y

# Install libs & tools
export DEPOT_TOOLS=/usr/depot_tools
export PATH=$DEPOT_TOOLS:$PATH
git clone 'https://chromium.googlesource.com/chromium/tools/depot_tools.git' $DEPOT_TOOLS

# Use UTF-8 by default
export LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF