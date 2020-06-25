Subject: ERRORS while building asterisk using meta-telephony layer. #yocto #raspberrypi #asterisk
To: yocto@lists.yoctoproject.org
From: paruchuribhavyasree@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jun 2020 22:45:29 -0700
Message-ID: <6l8A.1593063929464657167.ptur@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="d1RiZU1v6hYJseS331K7"

--d1RiZU1v6hYJseS331K7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
Greetings.

I am trying to build asterisk , I am using=C2=A0 meta-telephony layer prov=
ided from oe-layers.
I have faced few issued while building the application "asterisk" for rasp=
berry pi 3 b.

Initially I have build core-image-minimal=C2=A0 for Rpi and it worked succ=
essfully.

Tried to build few applications like lighttpd, sqlite3 and they worked suc=
cessfully.

Now i am trying to build an application called "asterisk" whose recipe is =
in meta-telephony -> recipe-asterisk -> asterisk -> asterisk_13.5.0.bb (thi=
s recipe is attached to this mail)=C2=A0 , but I have encountered few error=
s.(error log is attached to this mail).

Need guidance for below Error i have faced :

__________________________________________________________________________
WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in its co=
nf/layer.conf file to list the core layer names it is compatible with.
WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in its co=
nf/layer.conf file to list the core layer names it is compatible with.
Loading cache: 100% |#####################################################=
######################################################| Time: 0:00:00
Loaded 1370 entries from dependency cache.
ERROR: ParseError at /home/bhavya/dialtronics/yocto/poky-dunfell/meta-tele=
phony/classes/waf-samba.bbclass:4: Could not inherit file classes/pythonnat=
ive.bbclass
__________________________________________________________________________=
_

>Then I included pythonnative.bb file along with its dependencies after th=
at I am Facing the following error

__________________________________________________________________________=
_
bhavya@bhavya:~/dialtronics/yocto/workspace/yocto_rpi$ bitbake asterisk
Loading cache: 100% |#####################################################=
######################################################| Time: 0:00:00
Loaded 1992 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.46.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnu=
eabi"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "raspberrypi3"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.1.1"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "arm vfp cortexa7 neon vfpv4 =
thumb callconvention-hard"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"
meta
meta-poky
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "dunfell:febbe2944c0c4a04b85f=
a98fdc261186115954d8"
meta-rpi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:39cf54=
c3cb429f2c6e0a000e79f6f06b39e2fa8b"
meta-telephony=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "master:9e50dbdd1ee672494758d=
29482444cf40a36d1ba"

Initialising tasks: 100% |################################################=
######################################################| Time: 0:00:00
Sstate summary: Wanted 51 Found 33 Missed 18 Current 611 (64% match, 97% c=
omplete)
NOTE: Executing Tasks
ERROR: asterisk-13.5.0-r0 do_compile: oe_runmake failed
ERROR: asterisk-13.5.0-r0 do_compile: Execution of '/home/bhavya/dialtroni=
cs/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gn=
ueabi/asterisk/13.5.0-r0/temp/run.do_compile.31691' failed with exit code 1=
:
CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++=C2=A0 -mthumb -mfpu=3Dneon-vfp=
v4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong=C2=A0 -D_F=
ORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sy=
sroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa=
7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=
=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/as=
terisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L=
/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/li=
b=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-link,/home/bhavya/dialtronics/yo=
cto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi=
/asterisk/13.5.0-r0/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib=
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto=
_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0=
/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1 -Wl,--allow-shlib-undefin=
ed -Wl,--dynamic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rp=
i/tmp/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C men=
uselect CONFIGURE_SILENT=3D"--silent" menuselect
make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/yoct=
o_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r=
0/asterisk-13.5.0/menuselect'
gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-=
native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0 -c -o menu=
select.o menuselect.c
gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-=
native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o strco=
mpat.o strcompat.c
gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-=
native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o menus=
elect_stub.o menuselect_stub.c
Generating input for menuselect ...
Building Documentation For: channels menuselect.c:35:27: fatal error: libx=
ml/parser.h: No such file or directory
compilation terminated.
<builtin>: recipe for target 'menuselect.o' failed
make[1]: *** [menuselect.o] Error 1
make[1]: *** Waiting for unfinished jobs....
pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/worksp=
ace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/=
13.5.0-r0/asterisk-13.5.0/menuselect'
Makefile:950: recipe for target 'menuselect/menuselect' failed
make: *** [menuselect/menuselect] Error 2
make: *** Waiting for unfinished jobs....
codecs formats cdr cel bridges funcs tests main res addons
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/bhavya/dialtronics/yocto/worksp=
ace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/=
13.5.0-r0/temp/log.do_compile.31691
Log data follows:
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'c=
ommon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++=C2=A0 -mthumb -mfpu=3Dneon-v=
fpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong=C2=A0 -D=
_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --=
sysroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/corte=
xa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=
=
=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/as=
terisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L=
/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/li=
b=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-link,/home/bhavya/dialtronics/yo=
cto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi=
/asterisk/13.5.0-r0/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib=
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto=
_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0=
/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1 -Wl,--allow-shlib-undefin=
ed -Wl,--dynamic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rp=
i/tmp/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C men=
uselect CONFIGURE_SILENT=3D"--silent" menuselect
| make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/yo=
cto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0=
-r0/asterisk-13.5.0/menuselect'
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0 -c -o me=
nuselect.o menuselect.c
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o str=
compat.o strcompat.c
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o men=
uselect_stub.o menuselect_stub.c
| Generating input for menuselect ...
| Building Documentation For: channels menuselect.c:35:27: fatal error: li=
bxml/parser.h: No such file or directory
| compilation terminated.
| <builtin>: recipe for target 'menuselect.o' failed
| make[1]: *** [menuselect.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/work=
space/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asteris=
k/13.5.0-r0/asterisk-13.5.0/menuselect'
| Makefile:950: recipe for target 'menuselect/menuselect' failed
| make: *** [menuselect/menuselect] Error 2
| make: *** Waiting for unfinished jobs....
| codecs formats cdr cel bridges funcs tests main res addons
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/temp=
/run.do_compile.31691' failed with exit code 1:
| CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++=C2=A0 -mthumb -mfpu=3Dneon-v=
fpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong=C2=A0 -D=
_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --=
sysroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/corte=
xa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=
=
=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/as=
terisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L=
/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/li=
b=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=
Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-link,/home/bhavya/dialtronics/yo=
cto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi=
/asterisk/13.5.0-r0/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib=
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto=
_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0=
/recipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1 -Wl,--allow-shlib-undefin=
ed -Wl,--dynamic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rp=
i/tmp/sysroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C men=
uselect CONFIGURE_SILENT=3D"--silent" menuselect
| make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/yo=
cto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0=
-r0/asterisk-13.5.0/menuselect'
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0 -c -o me=
nuselect.o menuselect.c
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o str=
compat.o strcompat.c
| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall=C2=A0 =C2=A0-c -o men=
uselect_stub.o menuselect_stub.c
| Generating input for menuselect ...
| Building Documentation For: channels menuselect.c:35:27: fatal error: li=
bxml/parser.h: No such file or directory
| compilation terminated.
| <builtin>: recipe for target 'menuselect.o' failed
| make[1]: *** [menuselect.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/work=
space/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asteris=
k/13.5.0-r0/asterisk-13.5.0/menuselect'
| Makefile:950: recipe for target 'menuselect/menuselect' failed
| make: *** [menuselect/menuselect] Error 2
| make: *** Waiting for unfinished jobs....
| codecs formats cdr cel bridges funcs tests main res addons
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/re=
cipes-asterisk/asterisk/asterisk_13.5.0.bb:do_compile) failed with exit cod=
e '1'
NOTE: Tasks Summary: Attempted 2052 tasks of which 2028 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/recipes-asteris=
k/asterisk/asterisk_13.5.0.bb:do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.
__________________________________________________________________________=
________________________________________________________

Please kindly help me to solve the issue.

Thanks in advance. : )
Contact : paruchuribhavyasree@gmail.com
~Bhavya

--d1RiZU1v6hYJseS331K7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>Greetings.</div>
<div>&nbsp;</div>
<div>I am trying to build asterisk , I am using&nbsp; meta-telephony layer=
 provided from oe-layers.</div>
<div>I have faced few issued while building the application "asterisk" for=
 raspberry pi 3 b.</div>
<div>&nbsp;</div>
<div>Initially I have build core-image-minimal&nbsp; for Rpi and it worked=
 successfully.</div>
<div>&nbsp;</div>
<div>Tried to build few applications like lighttpd, sqlite3 and they worke=
d successfully.</div>
<div>&nbsp;</div>
<div>Now i am trying to build an application called "asterisk" whose recip=
e is in meta-telephony -&gt; recipe-asterisk -&gt; asterisk -&gt; asterisk_=
13.5.0.bb (this recipe is attached to this mail)&nbsp; , but I have encount=
ered few errors.(error log is attached to this mail).</div>
<div>&nbsp;</div>
<div>Need guidance for below Error i have faced :</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>_____________________________________________________________________=
_____</div>
<div>WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in i=
ts conf/layer.conf file to list the core layer names it is compatible with.=
</div>
<div>WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in i=
ts conf/layer.conf file to list the core layer names it is compatible with.=
</div>
<div>Loading cache: 100% |################################################=
###########################################################| Time: 0:00:00<=
/div>
<div>Loaded 1370 entries from dependency cache.</div>
<div>ERROR: ParseError at /home/bhavya/dialtronics/yocto/poky-dunfell/meta=
-telephony/classes/waf-samba.bbclass:4: Could not inherit file classes/pyth=
onnative.bbclass</div>
<div>_____________________________________________________________________=
______</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&gt;Then I included pythonnative.bb file along with its dependencies =
after that I am Facing the following error</div>
<div>&nbsp;</div>
<div>_____________________________________________________________________=
______</div>
<div>bhavya@bhavya:~/dialtronics/yocto/workspace/yocto_rpi$ bitbake asteri=
sk</div>
<div>Loading cache: 100% |################################################=
###########################################################| Time: 0:00:00<=
/div>
<div>Loaded 1992 entries from dependency cache.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.46.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"=
</div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linu=
x-gnueabi"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "raspberr=
ypi3"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "pok=
y"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "3.1.1"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "arm vfp cortexa7 neon v=
fpv4 thumb callconvention-hard"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "hard"</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</di=
v>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "dunfell:febbe2944c0c4a0=
4b85fa98fdc261186115954d8"</div>
<div>meta-rpi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "master:3=
9cf54c3cb429f2c6e0a000e79f6f06b39e2fa8b"</div>
<div>meta-telephony&nbsp; &nbsp; &nbsp; &nbsp;=3D "master:9e50dbdd1ee67249=
4758d29482444cf40a36d1ba"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |###########################################=
###########################################################| Time: 0:00:00<=
/div>
<div>Sstate summary: Wanted 51 Found 33 Missed 18 Current 611 (64% match, =
97% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>ERROR: asterisk-13.5.0-r0 do_compile: oe_runmake failed</div>
<div>ERROR: asterisk-13.5.0-r0 do_compile: Execution of '/home/bhavya/dial=
tronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/asterisk/13.5.0-r0/temp/run.do_compile.31691' failed with exit c=
ode 1:</div>
<div>CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++&nbsp; -mthumb -mfpu=3Dneo=
n-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong&nbsp;=
 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security=
 --sysroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot"=
 LD=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yoc=
to/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
asterisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"=
-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-=
neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/=
lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,--enable-new-dtags&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-r=
path-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/corte=
xa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-nat=
ive/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath-link,/home/bhavya/dialtronics/yocto/wo=
rkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/aster=
isk/13.5.0-r0/recipe-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath,/home/bhav=
ya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dyna=
mic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sysroot=
s-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect CONFI=
GURE_SILENT=3D"--silent" menuselect</div>
<div>make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace=
/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.=
5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wo=
rk/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sys=
root-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp; -c -o=
 menuselect.o menuselect.c</div>
<div>gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wo=
rk/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sys=
root-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -o =
strcompat.o strcompat.c</div>
<div>gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wo=
rk/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sys=
root-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -o =
menuselect_stub.o menuselect_stub.c</div>
<div>Generating input for menuselect ...</div>
<div>Building Documentation For: channels menuselect.c:35:27: fatal error:=
 libxml/parser.h: No such file or directory</div>
<div>compilation terminated.</div>
<div>&lt;builtin&gt;: recipe for target 'menuselect.o' failed</div>
<div>make[1]: *** [menuselect.o] Error 1</div>
<div>make[1]: *** Waiting for unfinished jobs....</div>
<div>pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/w=
orkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/aste=
risk/13.5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>Makefile:950: recipe for target 'menuselect/menuselect' failed</div>
<div>make: *** [menuselect/menuselect] Error 2</div>
<div>make: *** Waiting for unfinished jobs....</div>
<div>codecs formats cdr cel bridges funcs tests main res addons</div>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/bhavya/dialtronics/yocto/w=
orkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/aste=
risk/13.5.0-r0/temp/log.do_compile.31691</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing python function autotools_aclocals</div>
<div>| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32=
', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'commo=
n']</div>
<div>| DEBUG: Python function autotools_aclocals finished</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| NOTE: make -j 8</div>
<div>| CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++&nbsp; -mthumb -mfpu=3Dn=
eon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong&nbs=
p; -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securi=
ty --sysroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t" LD=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/y=
octo/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/asterisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=
=3D"-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native=
/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi=
/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/rec=
ipe-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,--enable-new-dtags&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-=
Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath-link,/home/bhavya/dialtronics/yoc=
to/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
asterisk/13.5.0-r0/recipe-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath,/home=
/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vf=
pv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tm=
p/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe=
-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-O1 -Wl,--allow-shlib-undefined -Wl,-=
-dynamic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sy=
sroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect =
CONFIGURE_SILENT=3D"--silent" menuselect</div>
<div>| make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspa=
ce/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/1=
3.5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp; -c =
-o menuselect.o menuselect.c</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -=
o strcompat.o strcompat.c</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -=
o menuselect_stub.o menuselect_stub.c</div>
<div>| Generating input for menuselect ...</div>
<div>| Building Documentation For: channels menuselect.c:35:27: fatal erro=
r: libxml/parser.h: No such file or directory</div>
<div>| compilation terminated.</div>
<div>| &lt;builtin&gt;: recipe for target 'menuselect.o' failed</div>
<div>| make[1]: *** [menuselect.o] Error 1</div>
<div>| make[1]: *** Waiting for unfinished jobs....</div>
<div>| pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/as=
terisk/13.5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>| Makefile:950: recipe for target 'menuselect/menuselect' failed</div=
>
<div>| make: *** [menuselect/menuselect] Error 2</div>
<div>| make: *** Waiting for unfinished jobs....</div>
<div>| codecs formats cdr cel bridges funcs tests main res addons</div>
<div>| ERROR: oe_runmake failed</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Execution of '/home/bhavya/dialtronics/yocto/workspace/yocto=
_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0=
/temp/run.do_compile.31691' failed with exit code 1:</div>
<div>| CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++&nbsp; -mthumb -mfpu=3Dn=
eon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong&nbs=
p; -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-securi=
ty --sysroot=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t" LD=3D"" AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/y=
octo/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/asterisk/13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=
=3D"-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7=
t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native=
/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;-L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi=
/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/rec=
ipe-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,--enable-new-dtags&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-=
Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath-link,/home/bhavya/dialtronics/yoc=
to/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/=
asterisk/13.5.0-r0/recipe-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath,/home=
/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vf=
pv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;-Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tm=
p/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe=
-sysroot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-O1 -Wl,--allow-shlib-undefined -Wl,-=
-dynamic-linker=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sy=
sroots-uninative/x86_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect =
CONFIGURE_SILENT=3D"--silent" menuselect</div>
<div>| make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspa=
ce/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/1=
3.5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp; -c =
-o menuselect.o menuselect.c</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -=
o strcompat.o strcompat.c</div>
<div>| gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall&nbsp; &nbsp;-c -=
o menuselect_stub.o menuselect_stub.c</div>
<div>| Generating input for menuselect ...</div>
<div>| Building Documentation For: channels menuselect.c:35:27: fatal erro=
r: libxml/parser.h: No such file or directory</div>
<div>| compilation terminated.</div>
<div>| &lt;builtin&gt;: recipe for target 'menuselect.o' failed</div>
<div>| make[1]: *** [menuselect.o] Error 1</div>
<div>| make[1]: *** Waiting for unfinished jobs....</div>
<div>| pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto=
/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/as=
terisk/13.5.0-r0/asterisk-13.5.0/menuselect'</div>
<div>| Makefile:950: recipe for target 'menuselect/menuselect' failed</div=
>
<div>| make: *** [menuselect/menuselect] Error 2</div>
<div>| make: *** Waiting for unfinished jobs....</div>
<div>| codecs formats cdr cel bridges funcs tests main res addons</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>|</div>
<div>ERROR: Task (/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telepho=
ny/recipes-asterisk/asterisk/asterisk_13.5.0.bb:do_compile) failed with exi=
t code '1'</div>
<div>NOTE: Tasks Summary: Attempted 2052 tasks of which 2028 didn't need t=
o be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/rec=
ipes-asterisk/asterisk/asterisk_13.5.0.bb:do_compile</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.</div>
<div>_____________________________________________________________________=
_____________________________________________________________</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Please kindly help me to solve the issue.</div>
<div>&nbsp;</div>
<div>Thanks in advance. : )</div>
<div>Contact : paruchuribhavyasree@gmail.com</div>
<div>~Bhavya</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--d1RiZU1v6hYJseS331K7--
