Return-Path: <k-nagase@sec.co.jp>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9030AE00DD5; Tue, 30 Jan 2018 01:46:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,FORGED_MUA_MOZILLA,
	TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
	*  2.5 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
X-Greylist: delayed 1852 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Jan 2018 01:46:11 PST
Received: from ns.sec.co.jp (ns.sec.co.jp [118.103.77.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E023E00DA4
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 01:46:11 -0800 (PST)
Received: from [172.20.32.99] (unknown [172.20.32.99])
	by ns.sec.co.jp (Postfix) with ESMTP id 2C12711804EE;
	Tue, 30 Jan 2018 18:07:52 +0900 (JST)
To: yocto@yoctoproject.org
From: =?UTF-8?B?5rC454Co5qGC?= <k-nagase@sec.co.jp>
Date: Tue, 30 Jan 2018 18:15:17 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Message-Id: <20180130090752.2C12711804EE@ns.sec.co.jp>
Subject: Installing Wind River Linux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Jan 2018 09:46:14 -0000
Content-Type: text/plain; charset=iso-2022-jp; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi,
I'm trying to build the installer for using the WindRiverLinux9 with a  
development board.

I want to build the installer's image using the Intel-corei7-64 BSP, but  
I can't build wrlinux-image-glibc-small like in the guide below.
https://knowledge.windriver.com/en-us/000_Products/000/010/050/040/000_Wind_River_Linux_Platform_Developer's_Guide%2C_9/0A0/020/020

This is what I ran.

$ mkdir my_project
$ cd my_project
$ git clone --branch WRLINUX_9_BASE  
https://github.com/WindRiver-Labs/wrlinux-9.git
$ ./wrlinux-9/setup.sh --machines qemux86-64
$ . ./environment-setup-x86_64-wrlinuxsdk-linux
$ . ./oe-init-build-env build
$ cd ../layers
$ git clone https://git.yoctoproject.org/git/meta-intel -b rocko
$ cd meta-intel
$ git checkout tags/6.0-morty-2.2 -b meta-intel-morty-2.2
$ cd ../../build/
$ bitbake-layers add-layer "/home/user/my_project/layers/meta-intel"
$ ./wrlinux-9/setup.sh --distros=wrlinux --dl-layers  
--layers=wr-installer --templates=feature/installer-support
$ . ./oe-init-build-env build
$ echo 'MACHINE = "intel-corei7-64"' >> conf/local.conf
$ bitbake wrlinux-image-glibc-small


When I do the above, this is what the log looks like:

----------------------------------------
Loading cache: 100%  
|##########################################################################|  
Time: 0:00:00
Loaded 2981 entries from dependency cache.
Parsing recipes: 100%  
|########################################################################|  
Time: 0:00:00
Parsing of 2227 .bb files complete (2224 cached, 3 parsed). 2983  
targets, 1357 skipped, 25 masked, 0 errors.
WARNING: No bb files matched BBFILE_PATTERN_wrlinux  
'^/home/user/my_project/layers/wrlinux/'
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
DISTRO            = "wrlinux"
DISTRO_VERSION    = "9.0.0.13"
MACHINE           = "intel-corei7-64"
DEFAULTTUNE       = "corei7-64"
TARGET_SYS        = "x86_64-wrs-linux"
TUNE_FEATURES     = "m64 corei7"
TARGET_FPU        = ""
wr-base           = "HEAD:0af3d9e76a6f150012c3d718518f0ee7ed811903"
wr-fixes          = "HEAD:b07a1d75c651fa4c267d18694fcd9d54973b320e"
wrlinux           = "HEAD:1b3af002547039412714413b51f145e7d8232f4b"
meta              = "HEAD:d766e23ebcdcead22c6ab1e8783d8513d40369c9"
wr-kernel         = "HEAD:4dfc803b77a912635dbc04fea3808d8ab8c377b3"
meta-initramfs
meta-python
meta-networking
meta-oe
meta-perl
meta-webserver    = "HEAD:c92909c68562927b0ad4caf3ba45000439d83d1a"
wr-template       = "HEAD:4ca39f39de1a649e0fc9cffa1f048803f609fdb4"
meta-xfce
meta-filesystems  = "HEAD:c92909c68562927b0ad4caf3ba45000439d83d1a"
meta-realtime     = "HEAD:86f6124dda786d525fc891219a997f393e61d4f2"
meta-virtualization = "HEAD:1b54fd99ec2f777beeda104ff93e6d9d2becbcd1"
meta-gnome        = "HEAD:c92909c68562927b0ad4caf3ba45000439d83d1a"
local             = "master:14b87f871dcd57dcf3a79f8bc01adb9a31010e1e"
meta-intel        =  
"meta-intel-morty-2.2:0c42b70b33d0c7524dd71f9c40c47316fb548bbc"

Initialising tasks: 100%  
|#####################################################################|  
Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: systemd-boot-230+gitAUTOINC+3a74d4fc90-r0 do_compile: oe_runmake  
failed
ERROR: systemd-boot-230+gitAUTOINC+3a74d4fc90-r0 do_compile: Function  
failed: do_compile (log file is located at  
/home/user/my_project/build/tmp/work/corei7-64-intel-common-wrs-linux/systemd-boot/230+gitAUTOINC+3a74d4fc90-r0/temp/log.do_compile.31938)
ERROR: Logfile of failure stored in:  
/home/user/my_project/build/tmp/work/corei7-64-intel-common-wrs-linux/systemd-boot/230+gitAUTOINC+3a74d4fc90-r0/temp/log.do_compile.31938
Log data follows:
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',  
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8  
EFI_LDFLAGS=-L/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib  
EFI_CFLAGS=-I/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/include/rmc/efi  
-DRMC_EFI systemd-bootx64.efi
| ERROR: oe_runmake failed
| x86_64-wrs-linux-ld  
--sysroot=/home/user/my_project/build/tmp/sysroots/intel-corei7-64   -m  
elf_x86_64  
-L/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib -T  
/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib64/elf_x86_64_efi.lds  
-shared -Bsymbolic -nostdlib -znocombreloc -L  
/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib64  
/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib64/crt0-efi-x86_64.o  
  ./src/boot/efi/util.o ./src/boot/efi/console.o  
./src/boot/efi/graphics.o ./src/boot/efi/pefile.o ./src/boot/efi/disk.o  
./src/boot/efi/measure.o ./src/boot/efi/boot.o \
| 	-o src/boot/efi/systemd_boot.so -lefi -lgnuefi -lrmclefi -lrsmpefi  
/home/user/my_project/build/tmp/sysroots/intel-corei7-64/usr/lib64/../lib64/x86_64-wrs-linux/6.2.0/libgcc.a;  
\
| nm -D -u src/boot/efi/systemd_boot.so | grep ' U ' && exit 1 || :
| x86_64-wrs-linux-ld: cannot find -lrmclefi
| x86_64-wrs-linux-ld: cannot find -lrsmpefi
| nm: 'src/boot/efi/systemd_boot.so': No such file
| x86_64-wrs-linux-objcopy -j .text -j .sdata -j .data -j .dynamic \
|   -j .dynsym -j .rel -j .rela -j .reloc --target=efi-app-x86_64  
src/boot/efi/systemd_boot.so systemd-bootx64.efi
| x86_64-wrs-linux-objcopy: 'src/boot/efi/systemd_boot.so': No such file
| Makefile:22467: recipe for target 'systemd-bootx64.efi' failed
| make: *** [systemd-bootx64.efi] Error 1
| ERROR: Function failed: do_compile (log file is located at  
/home/user/my_project/build/tmp/work/corei7-64-intel-common-wrs-linux/systemd-boot/230+gitAUTOINC+3a74d4fc90-r0/temp/log.do_compile.31938)
ERROR: Task  
(/home/user/my_project/layers/oe-core/meta/recipes-bsp/systemd-boot/systemd-boot.bb:do_compile)  
failed with exit code '1'
WARNING: rmc-1.0-r0 do_package: QA Issue: rmc: Files/directories were  
installed but not shipped in any package:
   /usr/lib
   /usr/lib/librsmpefi.a
   /usr/lib/librmclefi.a
Please set FILES such that these items are packaged. Alternatively if  
they are unneeded, avoid installing them or delete them within do_install.
rmc: 3 installed and not shipped files. [installed-vs-shipped]
NOTE: Tasks Summary: Attempted 2505 tasks of which 2497 didn't need to  
be rerun and 1 failed.

Summary: 1 task failed:
  
/home/user/my_project/layers/oe-core/meta/recipes-bsp/systemd-boot/systemd-boot.bb:do_compile
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
----------------------------------------

I moved librmclefi.a,librsmpefi.a to the sysroot with  
x86_64-wrs-linux-ld but I'm still not having any luck.
How do you think I can solve this problem?

Also, if there's any errors in the instructions I'd be very happy if you  
could let me know.

Thanks.

