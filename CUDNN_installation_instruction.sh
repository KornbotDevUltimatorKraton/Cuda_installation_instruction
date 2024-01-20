echo 'Install the NVIDIA driver for the GPU and tensorflow for deep learning'
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo apt install nvidia-driver-535 -y 
sudo apt install nvidia-cuda-toolkit -y 
nvcc -V
whereis cuda
#sudo cp /media/$USER/C8B063EAB063DD86/cudartinstaller.sh -t /home/$USER/
#./cudartinstaller.sh
#sudo cp /media/$USER/C8B063EAB063DD86/cudnn-10.1-linux-x64-v7.6.5.32.tgz -t /home/$USER
#tar -xvzf cudnn-10.1-linux-x64-v7.6.5.32.tgz
#sudo cp /media/$USER/C8B063EAB063DD86/fixerror.sh -t /home/$USER
#./fixerror.sh

sudo apt-get update 
sudo apt install mailutils -y 
sudo cp cuda/include/cudnn.h /usr/lib/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/lib/cuda/lib64/
sudo mv /usr/lib/cuda/lib64/libcudnn.so.8 /usr/lib/cuda/lib64/libcudnn.so.7
sudo chmod a+r /usr/lib/cuda/include/cudnn.h 
echo 'export LD_LIBRARY_PATH=/usr/lib/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/lib/cuda/include:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
