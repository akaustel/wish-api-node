#Version of rebuild.sh for x64-linux

ARCH=`node -e "console.log(process.arch+'-'+process.platform)"`

echo "Building for ${ARCH}" 
cd ..; CC=clang CXX=clang node-gyp rebuild ; 
#cd ..; CC=gcc CXX=g++ node-gyp rebuild ; 
cd tools;
cp ../build/Release/WishApi.node ../bin/WishApi-${ARCH}.node;
strip ../bin/WishApi-${ARCH}.node;

