# Add libconfig (required for ReFlex) to library path 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/libconfig/lib/.libs

# Run setup script for ReFlex
./setup_reflex.sh

# Run ReFlex
./dp/ix
