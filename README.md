若为MTK平台，已提供 1.pl、2.pl、mkbootimg 三个MTK打包recovery所需的工具文件，编译前请将此三个文件复制或者移动到cm源码根目录。若不是MTK平台，请将BoardConfigVendor.mk的BOARD_CUSTOM_BOOTIMG_MK这一行注释掉。

1、如果你想更改twrp中文字体大小，可以打开device机型目录下的BoardConfig.mk，
修改此处BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_cn_28x28.h\"，cm源码下的bootable/recovery/minuitwrp文件夹下的font_cn_aaxaa.h就是不同大小的字体。

 
2、在device配置文件中选择分辨率配置文件：打开device机型目录下的BoardConfig.mk，修改此处DEVICE_RESOLUTION := 720x1280

 
3、如果翻译有误，可以修改cm源码下的bootable/recovery/gui/devices/720x1280/ui.xml 或者 1080x1920/ui.xml，我仅汉化了屏幕分辨率为720x1280和1080x1920的ui.xml，其它分辨率没有汉化，请参照720x1280或者1080x1920的ui.xml自行汉化


4、关于格式化内置存储，BoardConfig.mk中RECOVERY_SDCARD_ON_DATA:= true此项能让twrp识别/data/media内的数据，避免内置存储在清除data时被删除。


5、关于对sd卡分区功能，twrp有对sd卡进行分区的功能，但是为了避免小白对内置存储进行误分区导致黑砖，在BoardConfig.mk中BOARD_HAS_NO_REAL_SDCARD:= true此项打开后可关闭分区功能。


6、卡刷方式配置，在BoardConfig.mk中TW_FLASH_FROM_STORAGE:= true此项打开可以允许从当前位置读取zip卡刷包来刷入，如果不配置则会把卡刷包读取到/tmp后再刷入，因为/tmp是虚拟内存，这样的话，大的卡刷包可能造会造成内存不足而无法刷入。


7、配置内外存储挂载点和挂载名称，在BoardConfig.mk中
这个没什么好说的，和正常系统一样就行了。

TW_INTERNAL_STORAGE_PATH:= "/data/media"		定义内置存储路径

TW_INTERNAL_STORAGE_MOUNT_POINT:= "data"		定义内置存储路径所在的挂载点

TW_EXTERNAL_STORAGE_PATH:= "/external_sd"		定义外置存储路径

TW_EXTERNAL_STORAGE_MOUNT_POINT:= "external_sd"		定义外置存储路径所在的挂载点


8、格式化方法配置，在BoardConfig.mk中TW_ALWAYS_RMRF := true此项打开将会全局使用 rm -rf 命令删除文件的方法来代替格式化


9、在BoardConfig.mk中BOARD_INCLUDE_FB2PNG := true此项打开可以使得在编译TWRP时编译出/sbin/fb2png，fb2png为从帧缓冲得到png图片的工具


10、其他配置请自行谷歌或者摸索。。。
