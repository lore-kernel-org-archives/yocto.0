Return-Path: <senturkmurat1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87928C41513
	for <webhook@archiver.kernel.org>; Mon, 14 Aug 2023 12:53:13 +0000 (UTC)
Subject: Re: How to migrate an older version of Yocto?
To: yocto@lists.yoctoproject.org
From: "msenturk" <senturkmurat1999@gmail.com>
X-Originating-Location: Ankara, TR (5.46.113.90)
X-Originating-Platform: Linux Firefox 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 14 Aug 2023 05:53:05 -0700
References: <CANNYZj_0NnuZ604gV+ZXBdXtSxQYbnnkGoukvaAUA+D3=Zo=dw@mail.gmail.com>
In-Reply-To: <CANNYZj_0NnuZ604gV+ZXBdXtSxQYbnnkGoukvaAUA+D3=Zo=dw@mail.gmail.com>
Message-ID: <19617.1692017585524870640@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ooEtA3BBNUbyfmqx8ep9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 12:53:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60790

--ooEtA3BBNUbyfmqx8ep9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answers. I switched to mickledore and tried to build but unf=
ortunately received some errors and warnings:

ERROR: Task (/home/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_compil=
e) failed with exit code '1'
WARNING: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetch:=
 Failed to fetch URL git://github.com/Xilinx/linux-xlnx.git;protocol=3Dhttp=
s;name=3Dmachine;branch=3Dxlnx_rebase_v6.1_LTS, attempting MIRRORS if avail=
able
WARNING: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: Failed to fetch URL gitsm://gitlab.com/qemu-project/u-boot.git;pr=
otocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;barecl=
one=3D1;nobranch=3D1, attempting MIRRORS if available
ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetch: F=
etcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSI=
ON_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export SSH_AGENT_PID=3D"=
3557"; export SSH_AUTH_SOCK=3D"/run/user/1002/keyring/ssh"; export PATH=3D"=
/home/stj/poky/build_mickledore/tmp/sysroots-uninative/x86_64-linux/usr/bin=
:/home/stj/poky/scripts:/home/stj/poky/build_mickledore/tmp/work/zedboard_z=
ynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6=
d7-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/home/stj/poky/b=
uild_mickledore/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5=
-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe-sysroot/usr/bin/crossscript=
s:/home/stj/poky/build_mickledore/tmp/work/zedboard_zynq7-poky-linux-gnueab=
i/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe-sysroot-n=
ative/usr/sbin:/home/stj/poky/build_mickledore/tmp/work/zedboard_zynq7-poky=
-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/rec=
ipe-sysroot-native/usr/bin:/home/stj/poky/build_mickledore/tmp/work/zedboar=
d_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+71692=
1b6d7-r0/recipe-sysroot-native/sbin:/home/stj/poky/build_mickledore/tmp/wor=
k/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTO=
INC+716921b6d7-r0/recipe-sysroot-native/bin:/home/stj/poky/bitbake/bin:/hom=
e/stj/poky/build_mickledore/tmp/hosttools"; export HOME=3D"/home/stj"; LANG=
=3DC git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat clone --bare --mirror=
 https://github.com/Xilinx/linux-xlnx.git /home/stj/poky/build_mickledore/d=
ownloads/git2/github.com.Xilinx.linux-xlnx.git --progress failed with exit =
code 128, no output
ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetch: B=
itbake Fetcher Error: FetchError('Unable to fetch URL from any source.', 'g=
it://github.com/Xilinx/linux-xlnx.git;protocol=3Dhttps;name=3Dmachine;branc=
h=3Dxlnx_rebase_v6.1_LTS')
ERROR: Logfile of failure stored in: /home/stj/poky/build_mickledore/tmp/wo=
rk/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUT=
OINC+716921b6d7-r0/temp/log.do_fetch.6793
ERROR: Task (/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-kernel/lin=
ux/linux-xlnx_2023.1.bb:do_fetch) failed with exit code '1'
ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do=
_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export D=
BUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export SSH_AGEN=
T_PID=3D"3557"; export SSH_AUTH_SOCK=3D"/run/user/1002/keyring/ssh"; export=
 PATH=3D"/home/stj/poky/scripts/native-intercept:/home/stj/poky/build_mickl=
edore/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/stj/poky/scripts:/h=
ome/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilinx-native/v7.1=
.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-native/usr/bin/x8=
6_64-linux:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilin=
x-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-nati=
ve/usr/bin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilin=
x-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-nati=
ve/usr/sbin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xili=
nx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-nat=
ive/usr/bin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xili=
nx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-nat=
ive/sbin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilinx-=
native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-native=
/bin:/home/stj/poky/bitbake/bin:/home/stj/poky/build_mickledore/tmp/hosttoo=
ls"; export HOME=3D"/home/stj"; LANG=3DC git -c gc.autoDetach=3Dfalse -c co=
re.pager=3Dcat clone --bare --mirror https://gitlab.com/qemu-project/u-boot=
.git /home/stj/poky/build_mickledore/downloads/git2/gitlab.com.qemu-project=
.u-boot.git --progress failed with exit code 128, no output
ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do=
_fetch: gitsm: submodule download failed: FetchError Fetcher failure for UR=
L: 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms=
/u-boot;subpath=3Droms/u-boot;nobranch=3D1;bareclone=3D1;nobranch=3D1'. Una=
ble to fetch URL from any source.
WARNING: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: Failed to fetch URL gitsm://github.com/Xilinx/qemu.git;protocol=
=3Dhttps;branch=3Dxlnx_rel_v2023.1, attempting MIRRORS if available
ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do=
_fetch: Fetcher failure for URL: 'gitsm://gitlab.com/qemu-project/u-boot.gi=
t;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;ba=
reclone=3D1;nobranch=3D1'. Unable to fetch URL from any source.
ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do=
_fetch: Bitbake Fetcher Error: FetchError('Unable to fetch URL from any sou=
rce.', 'gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_r=
el_v2023.1')
ERROR: Logfile of failure stored in: /home/stj/poky/build_mickledore/tmp/wo=
rk/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f=
99e-r0/temp/log.do_fetch.6798
ERROR: Task (/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-devtools/q=
emu/qemu-xilinx-native_2023.1.bb:do_fetch) failed with exit code '1'
WARNING: qemu-xilinx-system-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f=
99e-r0 do_fetch: Failed to fetch URL gitsm://github.com/openssl/openssl;pro=
tocol=3Dhttps;name=3DCryptoPkg/Library/OpensslLib/openssl;subpath=3DCryptoP=
kg/Library/OpensslLib/openssl;nobranch=3D1;bareclone=3D1;nobranch=3D1, atte=
mpting MIRRORS if available
NOTE: Tasks Summary: Attempted 2055 tasks of which 2010 didn't need to be r=
erun and 5 failed.

Summary: 5 tasks failed:
/home/stj/poky/meta/recipes-devtools/binutils/binutils_2.40.bb:do_compile
/home/stj/poky/meta/recipes-devtools/cmake/cmake-native_3.25.2.bb:do_compil=
e
/home/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_compile
/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-kernel/linux/linux-xlnx=
_2023.1.bb:do_fetch
/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-devtools/qemu/qemu-xili=
nx-native_2023.1.bb:do_fetch
Summary: There were 7 WARNING messages.
Summary: There were 12 ERROR messages, returning a non-zero exit code.

--ooEtA3BBNUbyfmqx8ep9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answers. I switched to mickledore and tried to build but unf=
ortunately received some errors and warnings:<br /><br />ERROR: Task (/home=
/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_compile) failed with exi=
t code '1'<br />WARNING: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b=
6d7-r0 do_fetch: Failed to fetch URL git://github.com/Xilinx/linux-xlnx.git=
;protocol=3Dhttps;name=3Dmachine;branch=3Dxlnx_rebase_v6.1_LTS, attempting =
MIRRORS if available<br />WARNING: qemu-xilinx-native-v7.1.0-xilinx-v2023.1=
+gitAUTOINC+21adc9f99e-r0 do_fetch: Failed to fetch URL gitsm://gitlab.com/=
qemu-project/u-boot.git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/=
u-boot;nobranch=3D1;bareclone=3D1;nobranch=3D1, attempting MIRRORS if avail=
able<br />ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 d=
o_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export =
DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export SSH_AGE=
NT_PID=3D"3557"; export SSH_AUTH_SOCK=3D"/run/user/1002/keyring/ssh"; expor=
t PATH=3D"/home/stj/poky/build_mickledore/tmp/sysroots-uninative/x86_64-lin=
ux/usr/bin:/home/stj/poky/scripts:/home/stj/poky/build_mickledore/tmp/work/=
zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOIN=
C+716921b6d7-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/home/=
stj/poky/build_mickledore/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-=
xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe-sysroot/usr/bin/c=
rossscripts:/home/stj/poky/build_mickledore/tmp/work/zedboard_zynq7-poky-li=
nux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe=
-sysroot-native/usr/sbin:/home/stj/poky/build_mickledore/tmp/work/zedboard_=
zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b=
6d7-r0/recipe-sysroot-native/usr/bin:/home/stj/poky/build_mickledore/tmp/wo=
rk/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUT=
OINC+716921b6d7-r0/recipe-sysroot-native/sbin:/home/stj/poky/build_mickledo=
re/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023=
.1+gitAUTOINC+716921b6d7-r0/recipe-sysroot-native/bin:/home/stj/poky/bitbak=
e/bin:/home/stj/poky/build_mickledore/tmp/hosttools"; export HOME=3D"/home/=
stj"; LANG=3DC git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat clone --bar=
e --mirror https://github.com/Xilinx/linux-xlnx.git /home/stj/poky/build_mi=
ckledore/downloads/git2/github.com.Xilinx.linux-xlnx.git --progress failed =
with exit code 128, no output<br />ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+g=
itAUTOINC+716921b6d7-r0 do_fetch: Bitbake Fetcher Error: FetchError('Unable=
 to fetch URL from any source.', 'git://github.com/Xilinx/linux-xlnx.git;pr=
otocol=3Dhttps;name=3Dmachine;branch=3Dxlnx_rebase_v6.1_LTS')<br />ERROR: L=
ogfile of failure stored in: /home/stj/poky/build_mickledore/tmp/work/zedbo=
ard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716=
921b6d7-r0/temp/log.do_fetch.6793<br />ERROR: Task (/home/stj/poky/meta-xil=
inx/meta-xilinx-core/recipes-kernel/linux/linux-xlnx_2023.1.bb:do_fetch) fa=
iled with exit code '1'<br />ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.=
1+gitAUTOINC+21adc9f99e-r0 do_fetch: Fetcher failure: Fetch command export =
PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/us=
er/1002/bus"; export SSH_AGENT_PID=3D"3557"; export SSH_AUTH_SOCK=3D"/run/u=
ser/1002/keyring/ssh"; export PATH=3D"/home/stj/poky/scripts/native-interce=
pt:/home/stj/poky/build_mickledore/tmp/sysroots-uninative/x86_64-linux/usr/=
bin:/home/stj/poky/scripts:/home/stj/poky/build_mickledore/tmp/work/x86_64-=
linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/rec=
ipe-sysroot-native/usr/bin/x86_64-linux:/home/stj/poky/build_mickledore/tmp=
/work/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21ad=
c9f99e-r0/recipe-sysroot-native/usr/bin:/home/stj/poky/build_mickledore/tmp=
/work/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21ad=
c9f99e-r0/recipe-sysroot-native/usr/sbin:/home/stj/poky/build_mickledore/tm=
p/work/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21a=
dc9f99e-r0/recipe-sysroot-native/usr/bin:/home/stj/poky/build_mickledore/tm=
p/work/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21a=
dc9f99e-r0/recipe-sysroot-native/sbin:/home/stj/poky/build_mickledore/tmp/w=
ork/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9=
f99e-r0/recipe-sysroot-native/bin:/home/stj/poky/bitbake/bin:/home/stj/poky=
/build_mickledore/tmp/hosttools"; export HOME=3D"/home/stj"; LANG=3DC git -=
c gc.autoDetach=3Dfalse -c core.pager=3Dcat clone --bare --mirror https://g=
itlab.com/qemu-project/u-boot.git /home/stj/poky/build_mickledore/downloads=
/git2/gitlab.com.qemu-project.u-boot.git --progress failed with exit code 1=
28, no output<br />ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOI=
NC+21adc9f99e-r0 do_fetch: gitsm: submodule download failed: FetchError Fet=
cher failure for URL: 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=
=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;bareclone=3D=
1;nobranch=3D1'. Unable to fetch URL from any source.<br />WARNING: qemu-xi=
linx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do_fetch: Failed=
 to fetch URL gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3D=
xlnx_rel_v2023.1, attempting MIRRORS if available<br />ERROR: qemu-xilinx-n=
ative-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do_fetch: Fetcher fail=
ure for URL: 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;n=
ame=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;bareclone=3D1;nobranch=
=3D1'. Unable to fetch URL from any source.<br />ERROR: qemu-xilinx-native-=
v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 do_fetch: Bitbake Fetcher Er=
ror: FetchError('Unable to fetch URL from any source.', 'gitsm://github.com=
/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx_rel_v2023.1')<br />ERROR: L=
ogfile of failure stored in: /home/stj/poky/build_mickledore/tmp/work/x86_6=
4-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/t=
emp/log.do_fetch.6798<br />ERROR: Task (/home/stj/poky/meta-xilinx/meta-xil=
inx-core/recipes-devtools/qemu/qemu-xilinx-native_2023.1.bb:do_fetch) faile=
d with exit code '1'<br />WARNING: qemu-xilinx-system-native-v7.1.0-xilinx-=
v2023.1+gitAUTOINC+21adc9f99e-r0 do_fetch: Failed to fetch URL gitsm://gith=
ub.com/openssl/openssl;protocol=3Dhttps;name=3DCryptoPkg/Library/OpensslLib=
/openssl;subpath=3DCryptoPkg/Library/OpensslLib/openssl;nobranch=3D1;barecl=
one=3D1;nobranch=3D1, attempting MIRRORS if available<br />NOTE: Tasks Summ=
ary: Attempted 2055 tasks of which 2010 didn't need to be rerun and 5 faile=
d.<br /><br />Summary: 5 tasks failed:<br />&nbsp; /home/stj/poky/meta/reci=
pes-devtools/binutils/binutils_2.40.bb:do_compile<br />&nbsp; /home/stj/pok=
y/meta/recipes-devtools/cmake/cmake-native_3.25.2.bb:do_compile<br />&nbsp;=
 /home/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_compile<br />&nbsp=
; /home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-kernel/linux/linux-xl=
nx_2023.1.bb:do_fetch<br />&nbsp; /home/stj/poky/meta-xilinx/meta-xilinx-co=
re/recipes-devtools/qemu/qemu-xilinx-native_2023.1.bb:do_fetch<br />Summary=
: There were 7 WARNING messages.<br />Summary: There were 12 ERROR messages=
, returning a non-zero exit code.

--ooEtA3BBNUbyfmqx8ep9--

