Return-Path: <douglas.cooper1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7D36C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 21:23:49 +0000 (UTC)
Subject: Re: LInker Errors: Cannot find crti.o/crtbeginS.o. No such file or
 directory. #honister #make #yocto
To: yocto@lists.yoctoproject.org
From: douglas.cooper1@gmail.com
X-Originating-Location: Melbourne Beach, Florida, US (97.104.72.220)
X-Originating-Platform: Windows Chrome 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Jun 2022 14:23:44 -0700
References: 
 <CAMKF1sqGwua2WeveC4DGnr6k9=Fov0UR0pG3nsDpVp+-kSdmnw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqGwua2WeveC4DGnr6k9=Fov0UR0pG3nsDpVp+-kSdmnw@mail.gmail.com>
Message-ID: <2459.1656451424544620515@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JF6g9aalO8EF54YVDaoN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 21:23:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57412

--JF6g9aalO8EF54YVDaoN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

#!/bin/sh

__BITBAKE_LAST_LINE=3D0

# Emit a useful diagnostic if something fails:
bb_sh_exit_handler() {
ret=3D$?
if [ "$ret" !=3D 0 ]; then
echo "WARNING: exit code $ret from a shell command."
fi
exit $ret
}

bb_bash_exit_handler() {
ret=3D$?
{ set +x; } > /dev/null
trap "" DEBUG
if [ "$ret" !=3D 0 ]; then
echo "WARNING: ${BASH_SOURCE[0]}:${__BITBAKE_LAST_LINE} exit $ret from '$1'=
"

echo "WARNING: Backtrace (BB generated script): "
for i in $(seq 1 $((${#FUNCNAME[@]} - 1))); do
if [ "$i" -eq 1 ]; then
echo -e " #$((i)): ${FUNCNAME[$i]}, ${BASH_SOURCE[$((i-1))]}, line ${__BITB=
AKE_LAST_LINE}"
else
echo -e " #$((i)): ${FUNCNAME[$i]}, ${BASH_SOURCE[$((i-1))]}, line ${BASH_L=
INENO[$((i-1))]}"
fi
done
fi
exit $ret
}

bb_bash_debug_handler() {
local line=3D${BASH_LINENO[0]}
# For some reason the DEBUG trap trips with lineno=3D1 when scripts exit; i=
gnore it
if [ "$line" -eq 1 ]; then
return
fi

# Track the line number of commands as they execute. This is so we can have=
 access to the failing line number
# in the EXIT trap. See http://gnu-bash.2382.n7.nabble.com/trap-echo-quot-t=
rap-exit-on-LINENO-quot-EXIT-gt-wrong-linenumber-td3666.html
if [ "${FUNCNAME[1]}" !=3D "bb_bash_exit_handler" ]; then
__BITBAKE_LAST_LINE=3D$line
fi
}

case $BASH_VERSION in
"") trap 'bb_sh_exit_handler' 0
set -e
;;
*)=C2=A0 trap 'bb_bash_exit_handler "$BASH_COMMAND"' 0
trap '{ bb_bash_debug_handler; } 2>/dev/null' DEBUG
set -e
shopt -s extdebug
;;
esac
export AR=3D"aarch64-linaro-linux-gcc-ar"
export AS=3D"aarch64-linaro-linux-as "
export BUILD_AR=3D"ar"
export BUILD_AS=3D"as "
export BUILD_CC=3D"gcc "
export BUILD_CCLD=3D"gcc "
export BUILD_CFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/usr/include -O2 -pipe"
export BUILD_CPP=3D"gcc=C2=A0 -E"
export BUILD_CPPFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t-native/usr/include"
export BUILD_CXX=3D"g++ "
export BUILD_CXXFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe"
export BUILD_FC=3D"gfortran "
export BUILD_LD=3D"ld "
export BUILD_LDFLAGS=3D"-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-link,=
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-W=
l,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr=
/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1"
export BUILD_NM=3D"nm"
export BUILD_RANLIB=3D"ranlib"
export BUILD_STRIP=3D"strip"
export CC=3D"aarch64-linaro-linux-gcc=C2=A0 -mcpu=3Dcortex-a53 -march=3Darm=
v8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
export CCLD=3D"aarch64-linaro-linux-gcc=C2=A0 -mcpu=3Dcortex-a53 -march=3Da=
rmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
export CC_FOR_BUILD=3D"gcc "
export CFLAGS=3D"-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_hon=
ister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9=
-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I/home/vagran=
t/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/op=
al/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linaro-linux=
=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/inclu=
de=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdebug-=
prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-=
r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=3D=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -=
fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=3D "
export CFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe"
export CONFIG_SITE=3D"/home/vagrant/oe_qcom_honister/build-cdil/conf/../../=
layers/openembedded-core/meta/site/endian-little /home/vagrant/oe_qcom_honi=
ster/build-cdil/conf/../../layers/openembedded-core/meta/site/arm-common /h=
ome/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-core=
/meta/site/arm-64 /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/site/common-linux /home/vagrant/oe_qcom_honister/=
build-cdil/conf/../../layers/openembedded-core/meta/site/common-glibc /home=
/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-core/me=
ta/site/common"
export CPP=3D"aarch64-linaro-linux-gcc -E --sysroot=3D/home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/recipe-sysroot=C2=A0 -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc"
export CPPFLAGS=3D"-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I/home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linaro-lin=
ux=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/inc=
lude "
export CPPFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sy=
sroot-native/usr/include"
export CPP_FOR_BUILD=3D"gcc=C2=A0 -E"
export CXX=3D"aarch64-linaro-linux-g++=C2=A0 -mcpu=3Dcortex-a53 -march=3Dar=
mv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
export CXXFLAGS=3D"-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-bet=
a9-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I/home/vagr=
ant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/=
opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linaro-lin=
ux=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/inc=
lude=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=
=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdeb=
ug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-bet=
a9-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=3D=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=
=3D=C2=A0 -fvisibility-inlines-hidden"
export CXXFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-c=
dil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sy=
sroot-native/usr/include -O2 -pipe"
export CXX_FOR_BUILD=3D"g++ "
unset DISTRO
export FC=3D"aarch64-linaro-linux-gfortran=C2=A0 -mcpu=3Dcortex-a53 -march=
=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
export GIT_CEILING_DIRECTORIES=3D"/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0"
export GIT_CONFIG_PARAMETERS=3D"'safe.directory=3D*'"
export HOME=3D"/home/vagrant"
export LC_ALL=3D"en_US.UTF-8"
export LD=3D"aarch64-linaro-linux-ld --sysroot=3D/home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/recipe-sysroot "
export LDFLAGS=3D"=C2=A0 =C2=A0 -L/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysro=
ot/lib=C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr=
/lib=C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/l=
ib/aarch64-linaro-linux/10.3.1 "
export LDFLAGS_FOR_BUILD=3D"-L/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-n=
ative/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-n=
ative/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath-li=
nk,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0-Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nat=
ive/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1"
export LD_FOR_BUILD=3D"ld "
export LOGNAME=3D"vagrant"
unset MACHINE
export MAKE=3D"make"
export NM=3D"aarch64-linaro-linux-gcc-nm"
export OBJCOPY=3D"aarch64-linaro-linux-objcopy"
export OBJDUMP=3D"aarch64-linaro-linux-objdump"
export OMP_NUM_THREADS=3D"8"
export OPALDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git"
export PATH=3D"/home/vagrant/oe_qcom_honister/layers/openembedded-core/scri=
pts:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-lina=
ro-linux:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/bin/crossscripts:/=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/sbin:/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/recipe-sysroot-native/usr/bin:/home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/rec=
ipe-sysroot-native/sbin:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/=
bin:/home/vagrant/oe_qcom_honister/bitbake/bin:/home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/hosttools"
export PKG_CONFIG_DIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/li=
b/pkgconfig"
export PKG_CONFIG_DISABLE_UNINSTALLED=3D"yes"
export PKG_CONFIG_LIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr=
/lib/pkgconfig"
export PKG_CONFIG_PATH=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/l=
ib/pkgconfig:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/pkgconfi=
g"
export PKG_CONFIG_SYSROOT_DIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t"
export PKG_CONFIG_SYSTEM_INCLUDE_PATH=3D"/usr/include"
export PKG_CONFIG_SYSTEM_LIBRARY_PATH=3D"/lib:/usr/lib"
export PSEUDO_DISABLED=3D"1"
export PSEUDO_UNLOAD=3D"1"
export PTLIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptli=
b"
export RANLIB=3D"aarch64-linaro-linux-gcc-ranlib"
export READELF=3D"aarch64-linaro-linux-readelf"
unset SHELL
export STRINGS=3D"aarch64-linaro-linux-strings"
export STRIP=3D"aarch64-linaro-linux-strip"
unset TARGET_ARCH
export TZ=3D"UTC"
export USER=3D"vagrant"
export base_bindir=3D"/bin"
export base_libdir=3D"/lib"
export base_prefix=3D""
export base_sbindir=3D"/sbin"
export bindir=3D"/usr/bin"
export datadir=3D"/usr/share"
export docdir=3D"/usr/share/doc"
export exec_prefix=3D"/usr"
export includedir=3D"/usr/include"
export infodir=3D"/usr/share/info"
export libdir=3D"/usr/lib"
export libexecdir=3D"/usr/libexec"
export localstatedir=3D"/var"
export lt_cv_sys_lib_dlsearch_path_spec=3D"/usr/lib /lib"
export mandir=3D"/usr/share/man"
export nonarch_base_libdir=3D"/lib"
export nonarch_libdir=3D"/usr/lib"
export oldincludedir=3D"/usr/include"
export prefix=3D"/usr"
export sbindir=3D"/usr/sbin"
export servicedir=3D"/srv"
export sharedstatedir=3D"/com"
export sysconfdir=3D"/etc"
export systemd_system_unitdir=3D"/lib/systemd/system"
export systemd_unitdir=3D"/lib/systemd"
export systemd_user_unitdir=3D"/usr/lib/systemd/user"

# line: 1, file: autogenerated
do_compile() {
# make clean
# export LIBRARY_PATH=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/li=
b:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-linaro-linux/=
10.3.1"
autotools_do_compile
}

# line: 238, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../lay=
ers/openembedded-core/meta/classes/autotools.bbclass
autotools_do_compile() {
oe_runmake
}

# line: 64, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/classes/base.bbclass
oe_runmake() {
oe_runmake_call "$@" || die "oe_runmake failed"
}

# line: 55, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/classes/base.bbclass
die() {
bbfatal_log "$*"
}

# line: 59, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/classes/base.bbclass
oe_runmake_call() {
bbnote make -j 8=C2=A0 "$@"
make -j 8=C2=A0 "$@"
}

# line: 66, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/classes/logging.bbclass
bbfatal_log() {
if [ -p /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267 ] ; then
printf "%b\0" "bbfatal_log $*" > /home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.266=
8267
else
echo "ERROR: $*"
fi
exit 1
}

# line: 21, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../../laye=
rs/openembedded-core/meta/classes/logging.bbclass
bbnote() {
if [ -p /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267 ] ; then
printf "%b\0" "bbnote $*" > /home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267
else
echo "NOTE: $*"
fi
}

cd '/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/git'
do_compile

# cleanup
ret=3D$?
trap '' 0
exit $ret

--JF6g9aalO8EF54YVDaoN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>#!/bin/sh</div>
<div>&nbsp;</div>
<div>__BITBAKE_LAST_LINE=3D0</div>
<div>&nbsp;</div>
<div># Emit a useful diagnostic if something fails:</div>
<div>bb_sh_exit_handler() {</div>
<div>&nbsp; &nbsp; ret=3D$?</div>
<div>&nbsp; &nbsp; if [ "$ret" !=3D 0 ]; then</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; echo "WARNING: exit code $ret from a shell=
 command."</div>
<div>&nbsp; &nbsp; fi</div>
<div>&nbsp; &nbsp; exit $ret</div>
<div>}</div>
<div>&nbsp;</div>
<div>bb_bash_exit_handler() {</div>
<div>&nbsp; &nbsp; ret=3D$?</div>
<div>&nbsp; &nbsp; { set +x; } &gt; /dev/null</div>
<div>&nbsp; &nbsp; trap "" DEBUG</div>
<div>&nbsp; &nbsp; if [ "$ret" !=3D 0 ]; then</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; echo "WARNING: ${BASH_SOURCE[0]}:${__BITBA=
KE_LAST_LINE} exit $ret from '$1'"</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; echo "WARNING: Backtrace (BB generated scr=
ipt): "</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; for i in $(seq 1 $((${#FUNCNAME[@]} - 1)))=
; do</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if [ "$i" -eq 1 ]; then</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo -e "<span=
 style=3D"white-space: pre;"> </span>#$((i)): ${FUNCNAME[$i]}, ${BASH_SOURC=
E[$((i-1))]}, line ${__BITBAKE_LAST_LINE}"</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; else</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; echo -e "<span=
 style=3D"white-space: pre;"> </span>#$((i)): ${FUNCNAME[$i]}, ${BASH_SOURC=
E[$((i-1))]}, line ${BASH_LINENO[$((i-1))]}"</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fi</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; done</div>
<div>&nbsp; &nbsp; fi</div>
<div>&nbsp; &nbsp; exit $ret</div>
<div>}</div>
<div>&nbsp;</div>
<div>bb_bash_debug_handler() {</div>
<div>&nbsp; &nbsp; local line=3D${BASH_LINENO[0]}</div>
<div>&nbsp; &nbsp; # For some reason the DEBUG trap trips with lineno=3D1 w=
hen scripts exit; ignore it</div>
<div>&nbsp; &nbsp; if [ "$line" -eq 1 ]; then</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; return</div>
<div>&nbsp; &nbsp; fi</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; # Track the line number of commands as they execute. Thi=
s is so we can have access to the failing line number</div>
<div>&nbsp; &nbsp; # in the EXIT trap. See http://gnu-bash.2382.n7.nabble.c=
om/trap-echo-quot-trap-exit-on-LINENO-quot-EXIT-gt-wrong-linenumber-td3666.=
html</div>
<div>&nbsp; &nbsp; if [ "${FUNCNAME[1]}" !=3D "bb_bash_exit_handler" ]; the=
n</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; __BITBAKE_LAST_LINE=3D$line</div>
<div>&nbsp; &nbsp; fi</div>
<div>}</div>
<div>&nbsp;</div>
<div>case $BASH_VERSION in</div>
<div>"") trap 'bb_sh_exit_handler' 0</div>
<div>&nbsp; &nbsp; set -e</div>
<div>&nbsp; &nbsp; ;;</div>
<div>*)&nbsp; trap 'bb_bash_exit_handler "$BASH_COMMAND"' 0</div>
<div>&nbsp; &nbsp; trap '{ bb_bash_debug_handler; } 2&gt;/dev/null' DEBUG</=
div>
<div>&nbsp; &nbsp; set -e</div>
<div>&nbsp; &nbsp; shopt -s extdebug</div>
<div>&nbsp; &nbsp; ;;</div>
<div>esac</div>
<div>export AR=3D"aarch64-linaro-linux-gcc-ar"</div>
<div>export AS=3D"aarch64-linaro-linux-as "</div>
<div>export BUILD_AR=3D"ar"</div>
<div>export BUILD_AS=3D"as "</div>
<div>export BUILD_CC=3D"gcc "</div>
<div>export BUILD_CCLD=3D"gcc "</div>
<div>export BUILD_CFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root-native/usr/include -O2 -pipe"</div>
<div>export BUILD_CPP=3D"gcc&nbsp; -E"</div>
<div>export BUILD_CPPFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot-native/usr/include"</div>
<div>export BUILD_CXX=3D"g++ "</div>
<div>export BUILD_CXXFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot-native/usr/include -O2 -pipe"</div>
<div>export BUILD_FC=3D"gfortran "</div>
<div>export BUILD_LD=3D"ld "</div>
<div>export BUILD_LDFLAGS=3D"-L/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;-L/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;-Wl,--enable-new-dtags&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpath-li=
nk,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;-Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/w=
ork/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/us=
r/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;-Wl,-O1"</div>
<div>export BUILD_NM=3D"nm"</div>
<div>export BUILD_RANLIB=3D"ranlib"</div>
<div>export BUILD_STRIP=3D"strip"</div>
<div>export CC=3D"aarch64-linaro-linux-gcc&nbsp; -mcpu=3Dcortex-a53 -march=
=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"</di=
v>
<div>export CCLD=3D"aarch64-linaro-linux-gcc&nbsp; -mcpu=3Dcortex-a53 -marc=
h=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"</d=
iv>
<div>export CC_FOR_BUILD=3D"gcc "</div>
<div>export CFLAGS=3D"-D__ARMEL__&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/recipe-sysroot/usr/include/c++/10.3.1&nbsp; &nbsp; &nbsp;-I/home/v=
agrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-lin=
ux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linaro-=
linux&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/=
include&nbsp; -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-ma=
p=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -fdeb=
ug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/wo=
rk/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-bet=
a9-r0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=3D&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gl=
ibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=3D=
 "</div>
<div>export CFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/buil=
d-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe=
-sysroot-native/usr/include -O2 -pipe"</div>
<div>export CONFIG_SITE=3D"/home/vagrant/oe_qcom_honister/build-cdil/conf/.=
./../layers/openembedded-core/meta/site/endian-little /home/vagrant/oe_qcom=
_honister/build-cdil/conf/../../layers/openembedded-core/meta/site/arm-comm=
on /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded=
-core/meta/site/arm-64 /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/site/common-linux /home/vagrant/oe_qcom_honi=
ster/build-cdil/conf/../../layers/openembedded-core/meta/site/common-glibc =
/home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-co=
re/meta/site/common"</div>
<div>export CPP=3D"aarch64-linaro-linux-gcc -E --sysroot=3D/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/recipe-sysroot&nbsp; -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc"<=
/div>
<div>export CPPFLAGS=3D"-D__ARMEL__&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1&nbsp; &nbsp; &nbsp;-I/home=
/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-l=
inux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linar=
o-linux&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/us=
r/include "</div>
<div>export CPPFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/reci=
pe-sysroot-native/usr/include"</div>
<div>export CPP_FOR_BUILD=3D"gcc&nbsp; -E"</div>
<div>export CXX=3D"aarch64-linaro-linux-g++&nbsp; -mcpu=3Dcortex-a53 -march=
=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cd=
il-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"</di=
v>
<div>export CXXFLAGS=3D"-D__ARMEL__&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.1=
8-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1&nbsp; &nbsp; &nbsp;-I/home=
/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-l=
inux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-linar=
o-linux&nbsp; &nbsp; &nbsp;-I/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/us=
r/include&nbsp; -O2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-=
map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa=
53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -fd=
ebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-b=
eta9-r0&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=
=3D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e=3D&nbsp; -fvisibility-inlines-hidden"</div>
<div>export CXXFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/reci=
pe-sysroot-native/usr/include -O2 -pipe"</div>
<div>export CXX_FOR_BUILD=3D"g++ "</div>
<div>unset DISTRO</div>
<div>export FC=3D"aarch64-linaro-linux-gfortran&nbsp; -mcpu=3Dcortex-a53 -m=
arch=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"=
</div>
<div>export GIT_CEILING_DIRECTORIES=3D"/home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0"</div>
<div>export GIT_CONFIG_PARAMETERS=3D"'safe.directory=3D*'"</div>
<div>export HOME=3D"/home/vagrant"</div>
<div>export LC_ALL=3D"en_US.UTF-8"</div>
<div>export LD=3D"aarch64-linaro-linux-ld --sysroot=3D/home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/recipe-sysroot "</div>
<div>export LDFLAGS=3D"&nbsp; &nbsp; -L/home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-=
sysroot/lib&nbsp; &nbsp; &nbsp;-L/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t/usr/lib&nbsp; &nbsp; &nbsp;-L/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/=
usr/lib/aarch64-linaro-linux/10.3.1 "</div>
<div>export LDFLAGS_FOR_BUILD=3D"-L/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-L/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,--enable-new-dtags&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-rpat=
h-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortex=
a53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;-Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e/usr/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native/lib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;-Wl,-O1"</div>
<div>export LD_FOR_BUILD=3D"ld "</div>
<div>export LOGNAME=3D"vagrant"</div>
<div>unset MACHINE</div>
<div>export MAKE=3D"make"</div>
<div>export NM=3D"aarch64-linaro-linux-gcc-nm"</div>
<div>export OBJCOPY=3D"aarch64-linaro-linux-objcopy"</div>
<div>export OBJDUMP=3D"aarch64-linaro-linux-objdump"</div>
<div>export OMP_NUM_THREADS=3D"8"</div>
<div>export OPALDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git"</div>
<div>export PATH=3D"/home/vagrant/oe_qcom_honister/layers/openembedded-core=
/scripts:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64=
-linaro-linux:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/bin/crossscri=
pts:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/sbin:/home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/recipe-sysroot-native/usr/bin:/home/vagrant/oe_qcom_honis=
ter/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r=
0/recipe-sysroot-native/sbin:/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-na=
tive/bin:/home/vagrant/oe_qcom_honister/bitbake/bin:/home/vagrant/oe_qcom_h=
onister/build-cdil/tmp-cdil-glibc/hosttools"</div>
<div>export PKG_CONFIG_DIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/u=
sr/lib/pkgconfig"</div>
<div>export PKG_CONFIG_DISABLE_UNINSTALLED=3D"yes"</div>
<div>export PKG_CONFIG_LIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t/usr/lib/pkgconfig"</div>
<div>export PKG_CONFIG_PATH=3D"/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/=
usr/lib/pkgconfig:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/pkg=
config"</div>
<div>export PKG_CONFIG_SYSROOT_DIR=3D"/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot"</div>
<div>export PKG_CONFIG_SYSTEM_INCLUDE_PATH=3D"/usr/include"</div>
<div>export PKG_CONFIG_SYSTEM_LIBRARY_PATH=3D"/lib:/usr/lib"</div>
<div>export PSEUDO_DISABLED=3D"1"</div>
<div>export PSEUDO_UNLOAD=3D"1"</div>
<div>export PTLIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-=
glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src=
/ptlib"</div>
<div>export RANLIB=3D"aarch64-linaro-linux-gcc-ranlib"</div>
<div>export READELF=3D"aarch64-linaro-linux-readelf"</div>
<div>unset SHELL</div>
<div>export STRINGS=3D"aarch64-linaro-linux-strings"</div>
<div>export STRIP=3D"aarch64-linaro-linux-strip"</div>
<div>unset TARGET_ARCH</div>
<div>export TZ=3D"UTC"</div>
<div>export USER=3D"vagrant"</div>
<div>export base_bindir=3D"/bin"</div>
<div>export base_libdir=3D"/lib"</div>
<div>export base_prefix=3D""</div>
<div>export base_sbindir=3D"/sbin"</div>
<div>export bindir=3D"/usr/bin"</div>
<div>export datadir=3D"/usr/share"</div>
<div>export docdir=3D"/usr/share/doc"</div>
<div>export exec_prefix=3D"/usr"</div>
<div>export includedir=3D"/usr/include"</div>
<div>export infodir=3D"/usr/share/info"</div>
<div>export libdir=3D"/usr/lib"</div>
<div>export libexecdir=3D"/usr/libexec"</div>
<div>export localstatedir=3D"/var"</div>
<div>export lt_cv_sys_lib_dlsearch_path_spec=3D"/usr/lib /lib"</div>
<div>export mandir=3D"/usr/share/man"</div>
<div>export nonarch_base_libdir=3D"/lib"</div>
<div>export nonarch_libdir=3D"/usr/lib"</div>
<div>export oldincludedir=3D"/usr/include"</div>
<div>export prefix=3D"/usr"</div>
<div>export sbindir=3D"/usr/sbin"</div>
<div>export servicedir=3D"/srv"</div>
<div>export sharedstatedir=3D"/com"</div>
<div>export sysconfdir=3D"/etc"</div>
<div>export systemd_system_unitdir=3D"/lib/systemd/system"</div>
<div>export systemd_unitdir=3D"/lib/systemd"</div>
<div>export systemd_user_unitdir=3D"/usr/lib/systemd/user"</div>
<div>&nbsp;</div>
<div># line: 1, file: autogenerated</div>
<div>do_compile() {</div>
<div>&nbsp; &nbsp; # make clean</div>
<div>&nbsp; &nbsp; # export LIBRARY_PATH=3D"/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/re=
cipe-sysroot/usr/lib:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aa=
rch64-linaro-linux/10.3.1"</div>
<div>&nbsp; &nbsp; autotools_do_compile</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 238, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../.=
./layers/openembedded-core/meta/classes/autotools.bbclass</div>
<div>autotools_do_compile() {</div>
<div><span style=3D"white-space: pre;"> </span>oe_runmake</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 64, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>oe_runmake() {</div>
<div><span style=3D"white-space: pre;"> </span>oe_runmake_call "$@" || die =
"oe_runmake failed"</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 55, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>die() {</div>
<div><span style=3D"white-space: pre;"> </span>bbfatal_log "$*"</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 59, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>oe_runmake_call() {</div>
<div><span style=3D"white-space: pre;"> </span>bbnote make -j 8&nbsp; "$@"<=
/div>
<div><span style=3D"white-space: pre;"> </span>make -j 8&nbsp; "$@"</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 66, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/logging.bbclass</div>
<div>bbfatal_log() {</div>
<div><span style=3D"white-space: pre;"> </span>if [ -p /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/temp/fifo.2668267 ] ; then</div>
<div><span style=3D"white-space: pre;"> </span>printf "%b\0" "bbfatal_log $=
*" &gt; /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267</div>
<div><span style=3D"white-space: pre;"> </span>else</div>
<div><span style=3D"white-space: pre;"> </span>echo "ERROR: $*"</div>
<div><span style=3D"white-space: pre;"> </span>fi</div>
<div><span style=3D"white-space: pre;"> </span>exit 1</div>
<div>}</div>
<div>&nbsp;</div>
<div># line: 21, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/logging.bbclass</div>
<div>bbnote() {</div>
<div><span style=3D"white-space: pre;"> </span>if [ -p /home/vagrant/oe_qco=
m_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-=
beta9-r0/temp/fifo.2668267 ] ; then</div>
<div><span style=3D"white-space: pre;"> </span>printf "%b\0" "bbnote $*" &g=
t; /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267</div>
<div><span style=3D"white-space: pre;"> </span>else</div>
<div><span style=3D"white-space: pre;"> </span>echo "NOTE: $*"</div>
<div><span style=3D"white-space: pre;"> </span>fi</div>
<div>}</div>
<div>&nbsp;</div>
<div>cd '/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/git'</div>
<div>do_compile</div>
<div>&nbsp;</div>
<div># cleanup</div>
<div>ret=3D$?</div>
<div>trap '' 0</div>
<div>exit $ret</div>
<div>&nbsp;</div>

--JF6g9aalO8EF54YVDaoN--

