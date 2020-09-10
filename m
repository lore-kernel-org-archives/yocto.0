Subject: Re: #sdk #yocto Appears SDK searching host for files that are only present on target side
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Sep 2020 03:53:38 -0700
References: <e8366385-c7a3-5313-0072-d19e05e2fb17@gmail.com>
In-Reply-To: <e8366385-c7a3-5313-0072-d19e05e2fb17@gmail.com>
Message-ID: <14341.1599735218188160836@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xdeOQdbiJoF5R5VO2NIv"

--xdeOQdbiJoF5R5VO2NIv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

fyi...

I am using CMake with GNU, that is what is required for the=C2=A0build.

I do source the SDK environment script prior to attempting build.

Here is my current environment-setup-corei7-64-poky-linux script created b=
y SDK:

# Check for LD_LIBRARY_PATH being set, which can break SDK and generally i=
s a bad practice
# http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#AEN80
# http://xahlee.info/UnixResource_dir/_/ldpath.html
# Only disable this check if you are absolutely know what you are doing!
if [ ! -z "$LD_LIBRARY_PATH" ]; then
echo "Your environment is misconfigured, you probably need to 'unset LD_LI=
BRARY_PATH'"
echo "but please check why this was set in the first place and that it's s=
afe to unset."
echo "The SDK will not operate correctly in most cases when LD_LIBRARY_PAT=
H is set."
echo "For more references see:"
echo " http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#A=
EN80 "
echo " http://xahlee.info/UnixResource_dir/_/ldpath.html "
return 1
fi
export SYSROOTS=3D/ede/smonsees/yocto/testSDK/sysroots
export SDKTARGETSYSROOT=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/c=
orei7-64-poky-linux
export PATH=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysd=
k-linux/usr/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokys=
dk-linux/usr/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pok=
ysdk-linux/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysd=
k-linux/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-=
linux/usr/bin/../x86_64-pokysdk-linux/bin:/disk0/scratch/smonsees/yocto/tes=
tSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux:/disk0/scratch=
/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-l=
inux-musl:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-lin=
ux/usr/lib/../lib/:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64=
-poky-linux/usr/lib/../lib/x86_64-poky-linux/7.3.0/:$PATH
export PKG_CONFIG_SYSROOT_DIR=3D$SDKTARGETSYSROOT
export PKG_CONFIG_PATH=3D$SDKTARGETSYSROOT/usr/lib/pkgconfig:$SDKTARGETSYS=
ROOT/usr/share/pkgconfig
export CONFIG_SITE=3D/disk0/scratch/smonsees/yocto/testSDK/site-config-cor=
ei7-64-poky-linux
export OECORE_NATIVE_SYSROOT=3D"/disk0/scratch/smonsees/yocto/testSDK/sysr=
oots/x86_64-pokysdk-linux"
export OECORE_TARGET_SYSROOT=3D"$SDKTARGETSYSROOT"
export OECORE_ACLOCAL_OPTS=3D"-I /disk0/scratch/smonsees/yocto/testSDK/sys=
roots/x86_64-pokysdk-linux/usr/share/aclocal"
unset command_not_found_handle
export CC=3D"x86_64-poky-linux-gcc=C2=A0 -v -m64 -march=3Dcorei7 -mtune=3D=
corei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
export CXX=3D"x86_64-poky-linux-g++=C2=A0 -v -m64 -march=3Dcorei7 -mtune=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
export CPP=3D"x86_64-poky-linux-gcc -v -E=C2=A0 -m64 -march=3Dcorei7 -mtun=
e=3Dcorei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
export AS=3D"x86_64-poky-linux-as=C2=A0 "
export LD=3D"x86_64-poky-linux-ld=C2=A0 --sysroot=3D$SDKTARGETSYSROOT"
export GDB=3Dx86_64-poky-linux-gdb
export STRIP=3Dx86_64-poky-linux-strip
export RANLIB=3Dx86_64-poky-linux-ranlib
export OBJCOPY=3Dx86_64-poky-linux-objcopy
export OBJDUMP=3Dx86_64-poky-linux-objdump
export AR=3Dx86_64-poky-linux-ar
export NM=3Dx86_64-poky-linux-nm
export M4=3Dm4
export TARGET_PREFIX=3Dx86_64-poky-linux-
export CONFIGURE_FLAGS=3D"--target=3Dx86_64-poky-linux --host=3Dx86_64-pok=
y-linux --build=3Dx86_64-linux --with-libtool-sysroot=3D$SDKTARGETSYSROOT"
export CFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pipe -g -feliminate-u=
nused-debug-types"
export CXXFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pipe -g -feliminate=
-unused-debug-types"
export LDFLAGS=3D" -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
export CPPFLAGS=3D""
export KCFLAGS=3D"--sysroot=3D$SDKTARGETSYSROOT"
export OECORE_DISTRO_VERSION=3D"2.4.1"
export OECORE_SDK_VERSION=3D"2.4.1"
export ARCH=3Dx86
export CROSS_COMPILE=3Dx86_64-poky-linux-

# Append environment subscripts
if [ -d "$OECORE_TARGET_SYSROOT/environment-setup.d" ]; then
for envfile in $OECORE_TARGET_SYSROOT/environment-setup.d/*.sh; do
. $envfile
done
fi
if [ -d "$OECORE_NATIVE_SYSROOT/environment-setup.d" ]; then
for envfile in $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do
. $envfile
done
fi
export CLANGCC=3D"x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dco=
rei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSYSROOT"
export CLANGCXX=3D"x86_64-poky-linux-clang++ -m64 -march=3Dcorei7 -mtune=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSY=
SROOT"
export CLANGCPP=3D"x86_64-poky-linux-clang -E -m64 -march=3Dcorei7 -mtune=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSY=
SROOT"

and

--xdeOQdbiJoF5R5VO2NIv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><br />fyi...<br /><br />I am using CMake with GNU, that is what is requi=
red for the&nbsp;build. <br /><br />I do source the SDK environment script =
prior to attempting build.<br /><br />Here is my current environment-setup-=
corei7-64-poky-linux script created by SDK:<br /><br /># Check for LD_LIBRA=
RY_PATH being set, which can break SDK and generally is a bad practice<br /=
># <a href=3D"http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.=
html#AEN80">http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.ht=
ml#AEN80</a><br /># <a href=3D"http://xahlee.info/UnixResource_dir/_/ldpath=
.html">http://xahlee.info/UnixResource_dir/_/ldpath.html</a><br /># Only di=
sable this check if you are absolutely know what you are doing!<br />if [ !=
 -z "$LD_LIBRARY_PATH" ]; then<br />&nbsp;&nbsp;&nbsp; echo "Your environme=
nt is misconfigured, you probably need to 'unset LD_LIBRARY_PATH'"<br />&nb=
sp;&nbsp;&nbsp; echo "but please check why this was set in the first place =
and that it's safe to unset."<br />&nbsp;&nbsp;&nbsp; echo "The SDK will no=
t operate correctly in most cases when LD_LIBRARY_PATH is set."<br />&nbsp;=
&nbsp;&nbsp; echo "For more references see:"<br />&nbsp;&nbsp;&nbsp; echo "=
&nbsp; <a href=3D"http://tldp.org/HOWTO/Program-Library-HOWTO/shared-librar=
ies.html#AEN80">http://tldp.org/HOWTO/Program-Library-HOWTO/shared-librarie=
s.html#AEN80</a>"<br />&nbsp;&nbsp;&nbsp; echo "&nbsp; <a href=3D"http://xa=
hlee.info/UnixResource_dir/_/ldpath.html">http://xahlee.info/UnixResource_d=
ir/_/ldpath.html</a>"<br />&nbsp;&nbsp;&nbsp; return 1<br />fi<br />export =
SYSROOTS=3D/ede/smonsees/yocto/testSDK/sysroots<br />export SDKTARGETSYSROO=
T=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-linux<br =
/>export PATH=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokys=
dk-linux/usr/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-poky=
sdk-linux/usr/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-po=
kysdk-linux/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokys=
dk-linux/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk=
-linux/usr/bin/../x86_64-pokysdk-linux/bin:/disk0/scratch/smonsees/yocto/te=
stSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux:/disk0/scratc=
h/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-=
linux-musl:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-li=
nux/usr/lib/../lib/:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-6=
4-poky-linux/usr/lib/../lib/x86_64-poky-linux/7.3.0/:$PATH<br />export PKG_=
CONFIG_SYSROOT_DIR=3D$SDKTARGETSYSROOT<br />export PKG_CONFIG_PATH=3D$SDKTA=
RGETSYSROOT/usr/lib/pkgconfig:$SDKTARGETSYSROOT/usr/share/pkgconfig<br />ex=
port CONFIG_SITE=3D/disk0/scratch/smonsees/yocto/testSDK/site-config-corei7=
-64-poky-linux<br />export OECORE_NATIVE_SYSROOT=3D"/disk0/scratch/smonsees=
/yocto/testSDK/sysroots/x86_64-pokysdk-linux"<br />export OECORE_TARGET_SYS=
ROOT=3D"$SDKTARGETSYSROOT"<br />export OECORE_ACLOCAL_OPTS=3D"-I /disk0/scr=
atch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/share/aclocal=
"<br />unset command_not_found_handle<br />export CC=3D"x86_64-poky-linux-g=
cc&nbsp; -v -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 --=
sysroot=3D$SDKTARGETSYSROOT"<br />export CXX=3D"x86_64-poky-linux-g++&nbsp;=
 -v -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 --sysroot=
=3D$SDKTARGETSYSROOT"<br />export CPP=3D"x86_64-poky-linux-gcc -v -E&nbsp;=
 -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$=
SDKTARGETSYSROOT"<br />export AS=3D"x86_64-poky-linux-as&nbsp; "<br />expor=
t LD=3D"x86_64-poky-linux-ld&nbsp; --sysroot=3D$SDKTARGETSYSROOT"<br />expo=
rt GDB=3Dx86_64-poky-linux-gdb<br />export STRIP=3Dx86_64-poky-linux-strip<=
br />export RANLIB=3Dx86_64-poky-linux-ranlib<br />export OBJCOPY=3Dx86_64-=
poky-linux-objcopy<br />export OBJDUMP=3Dx86_64-poky-linux-objdump<br />exp=
ort AR=3Dx86_64-poky-linux-ar<br />export NM=3Dx86_64-poky-linux-nm<br />ex=
port M4=3Dm4<br />export TARGET_PREFIX=3Dx86_64-poky-linux-<br />export CON=
FIGURE_FLAGS=3D"--target=3Dx86_64-poky-linux --host=3Dx86_64-poky-linux --b=
uild=3Dx86_64-linux --with-libtool-sysroot=3D$SDKTARGETSYSROOT"<br />export=
 CFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pipe -g -feliminate-unused-d=
ebug-types"<br />export CXXFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pip=
e -g -feliminate-unused-debug-types"<br />export LDFLAGS=3D" -Wl,-O1 -Wl,--=
hash-style=3Dgnu -Wl,--as-needed"<br />export CPPFLAGS=3D""<br />export KCF=
LAGS=3D"--sysroot=3D$SDKTARGETSYSROOT"<br />export OECORE_DISTRO_VERSION=3D=
"2.4.1"<br />export OECORE_SDK_VERSION=3D"2.4.1"<br />export ARCH=3Dx86<br =
/>export CROSS_COMPILE=3Dx86_64-poky-linux-</p>
<p># Append environment subscripts<br />if [ -d "$OECORE_TARGET_SYSROOT/en=
vironment-setup.d" ]; then<br />&nbsp;&nbsp;&nbsp; for envfile in $OECORE_T=
ARGET_SYSROOT/environment-setup.d/*.sh; do<br />&nbsp;&nbsp;&nbsp;&nbsp; . =
$envfile<br />&nbsp;&nbsp;&nbsp; done<br />fi<br />if [ -d "$OECORE_NATIVE_=
SYSROOT/environment-setup.d" ]; then<br />&nbsp;&nbsp;&nbsp; for envfile in=
 $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do<br />&nbsp;&nbsp;&nbsp=
;&nbsp; . $envfile<br />&nbsp;&nbsp;&nbsp; done<br />fi<br />export CLANGCC=
=
=3D"x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=
=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSYSROOT"<br />export=
 CLANGCXX=3D"x86_64-poky-linux-clang++ -m64 -march=3Dcorei7 -mtune=3Dcorei7=
 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSYSROOT"<br =
/>export CLANGCPP=3D"x86_64-poky-linux-clang -E -m64 -march=3Dcorei7 -mtune=
=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSY=
SROOT"<br /><br /><br />&nbsp;and</p>

--xdeOQdbiJoF5R5VO2NIv--
