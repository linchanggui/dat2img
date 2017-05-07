echo ">>> lcg一键Android DAT提取脚本 ...    "
echo ">>>    请在确定当前目录所需文件   ...    "
echo ">>>       所需文件如下：  ...    "
echo ">>>    system.new.dat ...    "
echo ">>>  system.transfer.list ...    "
echo ">>>     建立工作所需文件中 ...    "
rm -rf ./cache
rm -rf ./system
mkdir ./cache
mkdir ./system
python sdat2img.py system.transfer.list system.new.dat system.img
#挂载镜像
echo ">>> 准备提取STSTEM文件 ..."
mount system.img ./cache
#复制文件到rom文件夹
cp -r cache/* system/
#取消挂载镜像system.img
umount system.img ./cache
#删掉临时挂载文件夹cache
rm -rf ./cache
echo ">>> SYSTEM 提取完毕 ...    "
