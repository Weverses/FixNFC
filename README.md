# FixNFC

<a href="https://github.com/Weverses/FixNFC/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/Weverses/FixNFC"></a> <a href="https://github.com/Weverses/FixNFC/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/Weverses/FixNFC"></a> <a href="https://github.com/Weverses/FixNFC/blob/main/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/Weverses/FixNFC"></a>

为部分机型提供一个修复‘MIUI Android13’NFC的方案

---


### License
[GNU General Public License v3.0](https://github.com/Weverses/FixNFC/blob/main/LICENSE)

**请在使用本方案后,标明原作者Weverse或该开源仓库的地址**

### 使用方法:
1.将`*sn100*.so`,`vendor.nxp.hardware.nfc@*.so`,`/system/vendor/app/NQNfcNci/*.apk`,`/system/system_ext/framework/*`和`/system/framework/com.nxp.nfc.nq.jar及oat里的odex和vdex`文件全部替换为原机型的

2.根据`framework_patch`自行修补`framework.jar`，并使用`dex2oat.sh`进行odex处理，并将获得的文件替换到对应目录

3.根据`nfc_patch`自行修补`NQNfcNci.apk`,并将获得的文件替换到对应目录

3.如果遇到反复重启进Recovery的问题请`su -c setprop persist.sys.disable_rescue ture`关闭Android救援模式，然后正常启动后自行使用`logcat`抓取NFC服务的crash log

### 已知问题(如果有修复方法,非常欢迎提交PR!)：
1.(已修复)~~NFC读卡功能不可用，原因由于`setTagUpToDate`的`cookie`在Android12的NFC服务里没有~~

2.可能会导致设置->连接与共享界面崩溃，原因未知，可以通过双清解决