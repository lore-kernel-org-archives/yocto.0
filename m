Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD12C43334
	for <webhook@archiver.kernel.org>; Wed, 29 Jun 2022 13:46:24 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web08.11661.1656510378756045972
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 06:46:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o5dPhzTH;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id u7so2384479qvm.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jun 2022 06:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8yl5KOFIIgx3GPLM+hSatzI2TG2ZTIhseyYRZokCPD0=;
        b=o5dPhzTHHd7KRjnZOA2jA653ecFfYfIKFt+d656w+QRsywgakCbDEy6j7jYFg7x8Zk
         VcwEKfo9O7kz0Ihv2J5ooTDkmXUx1VaWlBGULRfUb+w7C1nFBhgEK+zy445xm5L9ZB84
         qlpdWYkNHIdeOAARxpmonpp4lVIL1McMqZCLFVj2GwZy+BABFdobmhld99vkx4VRVqNR
         kgd6+tzRw+Qcl+vQ/n+oybve/0f4tPcFG+vAIdJBhkKoxjE+PbObhV2elNpBF4pkfSUL
         lvQ7BM5u28Syq9zLc2oItqOK0tDlScLuZLN4cd3775WsN5yvuuG0l77HI2cZOCNLJcVh
         3SEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8yl5KOFIIgx3GPLM+hSatzI2TG2ZTIhseyYRZokCPD0=;
        b=gXC7+uuU1aIai1BsVSY6Bg7wN3Zm5aK6OYFt8Zwq+CwX1AkCTyttKWEGsgm58noJ5R
         9ct/NI7ZeH8pPyb1hYkTVJ28Vb7RUOVLUOOzxu5jkfSf8AOVf5h8p/DuICLDu6d1fUuE
         3DhEgh3f7SigWte31iLseSu7rd506XJx1ItVzRFzyJpPLWkjd+zeDoFrYayPK7Rh5bU/
         Qn2tqocoslWAUNXyiXw/XJ6BNiexWY+bh+H8kJmDHHL/e9GJMheQSlh1CB6kh4dyt4lX
         aM7HnXtNiAKMXKU3UUgPVK3k1YpMPcBEAIXBom+SPfHOQdkYI6jKPmR1CBSGj/KWSKrN
         1OeA==
X-Gm-Message-State: AJIora+znhTSsLnNvydbNFr7skAZXUoIiKSyXBfmtn1JxaBcnWHn7QbN
	KUgkFOVefBGKtRkWfdW/9cqcOfraJLILpgVTkFI=
X-Google-Smtp-Source: 
 AGRyM1ufRVfkwR6rDuy7htyGKopqbuOh0lLz+zT4ix6MkKZTqpE0nHc24R+U64J46AF42nzkFX3C54I2/iKRL/R5sbI=
X-Received: by 2002:ac8:7d4f:0:b0:304:e3af:9309 with SMTP id
 h15-20020ac87d4f000000b00304e3af9309mr2522747qtb.634.1656510377404; Wed, 29
 Jun 2022 06:46:17 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMKF1sqGwua2WeveC4DGnr6k9=Fov0UR0pG3nsDpVp+-kSdmnw@mail.gmail.com>
 <2459.1656451424544620515@lists.yoctoproject.org>
In-Reply-To: <2459.1656451424544620515@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 29 Jun 2022 19:16:06 +0530
Message-ID: 
 <CAMKF1srGpVe-0i=BX9_9Ff1NCe1PphGohA50QjOROr=B-RToZw@mail.gmail.com>
Subject: Re: [yocto] LInker Errors: Cannot find crti.o/crtbeginS.o. No such
 file or directory. #honister #make #yocto
To: douglas.cooper1@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009cb0a705e2966084"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Jun 2022 13:46:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57419

--0000000000009cb0a705e2966084
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Post log.do_complile perhaps that will have the needed link line

On Tue, Jun 28, 2022 at 5:23 PM <douglas.cooper1@gmail.com> wrote:

> #!/bin/sh
>
> __BITBAKE_LAST_LINE=3D0
>
> # Emit a useful diagnostic if something fails:
> bb_sh_exit_handler() {
>     ret=3D$?
>     if [ "$ret" !=3D 0 ]; then
>         echo "WARNING: exit code $ret from a shell command."
>     fi
>     exit $ret
> }
>
> bb_bash_exit_handler() {
>     ret=3D$?
>     { set +x; } > /dev/null
>     trap "" DEBUG
>     if [ "$ret" !=3D 0 ]; then
>         echo "WARNING: ${BASH_SOURCE[0]}:${__BITBAKE_LAST_LINE} exit $ret
> from '$1'"
>
>         echo "WARNING: Backtrace (BB generated script): "
>         for i in $(seq 1 $((${#FUNCNAME[@]} - 1))); do
>             if [ "$i" -eq 1 ]; then
>                 echo -e " #$((i)): ${FUNCNAME[$i]},
> ${BASH_SOURCE[$((i-1))]}, line ${__BITBAKE_LAST_LINE}"
>             else
>                 echo -e " #$((i)): ${FUNCNAME[$i]},
> ${BASH_SOURCE[$((i-1))]}, line ${BASH_LINENO[$((i-1))]}"
>             fi
>         done
>     fi
>     exit $ret
> }
>
> bb_bash_debug_handler() {
>     local line=3D${BASH_LINENO[0]}
>     # For some reason the DEBUG trap trips with lineno=3D1 when scripts
> exit; ignore it
>     if [ "$line" -eq 1 ]; then
>         return
>     fi
>
>     # Track the line number of commands as they execute. This is so we ca=
n
> have access to the failing line number
>     # in the EXIT trap. See
> http://gnu-bash.2382.n7.nabble.com/trap-echo-quot-trap-exit-on-LINENO-quo=
t-EXIT-gt-wrong-linenumber-td3666.html
>     if [ "${FUNCNAME[1]}" !=3D "bb_bash_exit_handler" ]; then
>         __BITBAKE_LAST_LINE=3D$line
>     fi
> }
>
> case $BASH_VERSION in
> "") trap 'bb_sh_exit_handler' 0
>     set -e
>     ;;
> *)  trap 'bb_bash_exit_handler "$BASH_COMMAND"' 0
>     trap '{ bb_bash_debug_handler; } 2>/dev/null' DEBUG
>     set -e
>     shopt -s extdebug
>     ;;
> esac
> export AR=3D"aarch64-linaro-linux-gcc-ar"
> export AS=3D"aarch64-linaro-linux-as "
> export BUILD_AR=3D"ar"
> export BUILD_AS=3D"as "
> export BUILD_CC=3D"gcc "
> export BUILD_CCLD=3D"gcc "
> export
> BUILD_CFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e/usr/include
> -O2 -pipe"
> export BUILD_CPP=3D"gcc  -E"
> export
> BUILD_CPPFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nat=
ive/usr/include"
> export BUILD_CXX=3D"g++ "
> export
> BUILD_CXXFLAGS=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nat=
ive/usr/include
> -O2 -pipe"
> export BUILD_FC=3D"gfortran "
> export BUILD_LD=3D"ld "
> export
> BUILD_LDFLAGS=3D"-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr=
/lib
>
>  -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>                        -Wl,--enable-new-dtags
>  -Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/l=
ib
>
>  -Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>
>  -Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib
>
>  -Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>                        -Wl,-O1"
> export BUILD_NM=3D"nm"
> export BUILD_RANLIB=3D"ranlib"
> export BUILD_STRIP=3D"strip"
> export CC=3D"aarch64-linaro-linux-gcc  -mcpu=3Dcortex-a53 -march=3Darmv8-=
a+crc
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
> export CCLD=3D"aarch64-linaro-linux-gcc  -mcpu=3Dcortex-a53 -march=3Darmv=
8-a+crc
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
> export CC_FOR_BUILD=3D"gcc "
> export CFLAGS=3D"-D__ARMEL__
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aar=
ch64-linaro-linux
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include
> -O2 -pipe -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3=
.18-beta9-r0
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3=
.18-beta9-r0
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=
=3D
> "
> export
> CFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/tmp=
-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-n=
ative/usr/include
> -O2 -pipe"
> export
> CONFIG_SITE=3D"/home/vagrant/oe_qcom_honister/build-cdil/conf/../../layer=
s/openembedded-core/meta/site/endian-little
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/site/arm-common
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/site/arm-64
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/site/common-linux
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/site/common-glibc
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/site/common"
> export CPP=3D"aarch64-linaro-linux-gcc -E
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot
> -mcpu=3Dcortex-a53 -march=3Darmv8-a+crc"
> export CPPFLAGS=3D"-D__ARMEL__
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aar=
ch64-linaro-linux
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include
> "
> export
> CPPFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=
-native/usr/include"
> export CPP_FOR_BUILD=3D"gcc  -E"
> export CXX=3D"aarch64-linaro-linux-g++  -mcpu=3Dcortex-a53 -march=3Darmv8=
-a+crc
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
> export CXXFLAGS=3D"-D__ARMEL__
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aar=
ch64-linaro-linux
>
>  -I/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include
> -O2 -pipe -g -feliminate-unused-debug-types
> -fmacro-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3=
.18-beta9-r0
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3=
.18-beta9-r0
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=3D
>
> -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=
=3D
> -fvisibility-inlines-hidden"
> export
> CXXFLAGS_FOR_BUILD=3D"-isystem/home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=
-native/usr/include
> -O2 -pipe"
> export CXX_FOR_BUILD=3D"g++ "
> unset DISTRO
> export FC=3D"aarch64-linaro-linux-gfortran  -mcpu=3Dcortex-a53
> -march=3Darmv8-a+crc
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
> export
> GIT_CEILING_DIRECTORIES=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0"
> export GIT_CONFIG_PARAMETERS=3D"'safe.directory=3D*'"
> export HOME=3D"/home/vagrant"
> export LC_ALL=3D"en_US.UTF-8"
> export LD=3D"aarch64-linaro-linux-ld
> --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot
> "
> export LDFLAGS=3D"
> -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/lib
>
>  -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib
>
>  -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-linaro-lin=
ux/10.3.1
> "
> export
> LDFLAGS_FOR_BUILD=3D"-L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native=
/usr/lib
>
>  -L/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa5=
3-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>                        -Wl,--enable-new-dtags
>  -Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/l=
ib
>
>  -Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>
>  -Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib
>
>  -Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/lib
>                        -Wl,-O1"
> export LD_FOR_BUILD=3D"ld "
> export LOGNAME=3D"vagrant"
> unset MACHINE
> export MAKE=3D"make"
> export NM=3D"aarch64-linaro-linux-gcc-nm"
> export OBJCOPY=3D"aarch64-linaro-linux-objcopy"
> export OBJDUMP=3D"aarch64-linaro-linux-objdump"
> export OMP_NUM_THREADS=3D"8"
> export
> OPALDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/git"
> export
> PATH=3D"/home/vagrant/oe_qcom_honister/layers/openembedded-core/scripts:/=
home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lina=
ro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aarch64-linaro-li=
nux:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53=
-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/bin/crossscripts:/home/=
vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-li=
nux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/sbin:/home/vagrant/oe_qcom=
_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-b=
eta9-r0/recipe-sysroot-native/usr/bin:/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot-native/sbin:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/bin:/=
home/vagrant/oe_qcom_honister/bitbake/bin:/home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/hosttools"
> export
> PKG_CONFIG_DIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glib=
c/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/pkg=
config"
> export PKG_CONFIG_DISABLE_UNINSTALLED=3D"yes"
> export
> PKG_CONFIG_LIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/=
pkgconfig"
> export
> PKG_CONFIG_PATH=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-gli=
bc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/pk=
gconfig:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/corte=
xa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/share/pkgconfig"
> export
> PKG_CONFIG_SYSROOT_DIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot"
> export PKG_CONFIG_SYSTEM_INCLUDE_PATH=3D"/usr/include"
> export PKG_CONFIG_SYSTEM_LIBRARY_PATH=3D"/lib:/usr/lib"
> export PSEUDO_DISABLED=3D"1"
> export PSEUDO_UNLOAD=3D"1"
> export
> PTLIBDIR=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/src/ptlib"
> export RANLIB=3D"aarch64-linaro-linux-gcc-ranlib"
> export READELF=3D"aarch64-linaro-linux-readelf"
> unset SHELL
> export STRINGS=3D"aarch64-linaro-linux-strings"
> export STRIP=3D"aarch64-linaro-linux-strip"
> unset TARGET_ARCH
> export TZ=3D"UTC"
> export USER=3D"vagrant"
> export base_bindir=3D"/bin"
> export base_libdir=3D"/lib"
> export base_prefix=3D""
> export base_sbindir=3D"/sbin"
> export bindir=3D"/usr/bin"
> export datadir=3D"/usr/share"
> export docdir=3D"/usr/share/doc"
> export exec_prefix=3D"/usr"
> export includedir=3D"/usr/include"
> export infodir=3D"/usr/share/info"
> export libdir=3D"/usr/lib"
> export libexecdir=3D"/usr/libexec"
> export localstatedir=3D"/var"
> export lt_cv_sys_lib_dlsearch_path_spec=3D"/usr/lib /lib"
> export mandir=3D"/usr/share/man"
> export nonarch_base_libdir=3D"/lib"
> export nonarch_libdir=3D"/usr/lib"
> export oldincludedir=3D"/usr/include"
> export prefix=3D"/usr"
> export sbindir=3D"/usr/sbin"
> export servicedir=3D"/srv"
> export sharedstatedir=3D"/com"
> export sysconfdir=3D"/etc"
> export systemd_system_unitdir=3D"/lib/systemd/system"
> export systemd_unitdir=3D"/lib/systemd"
> export systemd_user_unitdir=3D"/usr/lib/systemd/user"
>
> # line: 1, file: autogenerated
> do_compile() {
>     # make clean
>     # export
> LIBRARY_PATH=3D"/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/=
work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib:/home=
/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-l=
inux/opal/3.18-beta9-r0/recipe-sysroot/usr/lib/aarch64-linaro-linux/10.3.1"
>     autotools_do_compile
> }
>
> # line: 238, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/autotools.bbclass
> autotools_do_compile() {
> oe_runmake
> }
>
> # line: 64, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/base.bbclass
> oe_runmake() {
> oe_runmake_call "$@" || die "oe_runmake failed"
> }
>
> # line: 55, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/base.bbclass
> die() {
> bbfatal_log "$*"
> }
>
> # line: 59, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/base.bbclass
> oe_runmake_call() {
> bbnote make -j 8  "$@"
> make -j 8  "$@"
> }
>
> # line: 66, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/logging.bbclass
> bbfatal_log() {
> if [ -p
> /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267
> ] ; then
> printf "%b\0" "bbfatal_log $*" >
> /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267
> else
> echo "ERROR: $*"
> fi
> exit 1
> }
>
> # line: 21, file:
> /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedded-=
core/meta/classes/logging.bbclass
> bbnote() {
> if [ -p
> /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267
> ] ; then
> printf "%b\0" "bbnote $*" >
> /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-l=
inaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267
> else
> echo "NOTE: $*"
> fi
> }
>
> cd
> '/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-=
linaro-linux/opal/3.18-beta9-r0/git'
> do_compile
>
> # cleanup
> ret=3D$?
> trap '' 0
> exit $ret
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57412):
> https://lists.yoctoproject.org/g/yocto/message/57412
> Unfollow This Topic: https://lists.yoctoproject.org/unft/91929966/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #make:https://lists.yoctoproject.org/g/yocto/mutehashtag/make
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009cb0a705e2966084
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">Post log.do_complile perhaps that will hav=
e the needed link line=C2=A0</div><div dir=3D"auto"><br><div class=3D"gmail=
_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 28, =
2022 at 5:23 PM &lt;<a href=3D"mailto:douglas.cooper1@gmail.com">douglas.co=
oper1@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
>#!/bin/sh</div>
<div>=C2=A0</div>
<div>__BITBAKE_LAST_LINE=3D0</div>
<div>=C2=A0</div>
<div># Emit a useful diagnostic if something fails:</div>
<div>bb_sh_exit_handler() {</div>
<div>=C2=A0 =C2=A0 ret=3D$?</div>
<div>=C2=A0 =C2=A0 if [ &quot;$ret&quot; !=3D 0 ]; then</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;WARNING: exit code $ret from a =
shell command.&quot;</div>
<div>=C2=A0 =C2=A0 fi</div>
<div>=C2=A0 =C2=A0 exit $ret</div>
<div>}</div>
<div>=C2=A0</div>
<div>bb_bash_exit_handler() {</div>
<div>=C2=A0 =C2=A0 ret=3D$?</div>
<div>=C2=A0 =C2=A0 { set +x; } &gt; /dev/null</div>
<div>=C2=A0 =C2=A0 trap &quot;&quot; DEBUG</div>
<div>=C2=A0 =C2=A0 if [ &quot;$ret&quot; !=3D 0 ]; then</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;WARNING: ${BASH_SOURCE[0]}:${__=
BITBAKE_LAST_LINE} exit $ret from &#39;$1&#39;&quot;</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;WARNING: Backtrace (BB generate=
d script): &quot;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in $(seq 1 $((${#FUNCNAME[@]} - 1)))=
; do</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;$i&quot; -eq 1 ];=
 then</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;=
<span style=3D"white-space:pre-wrap"> </span>#$((i)): ${FUNCNAME[$i]}, ${BA=
SH_SOURCE[$((i-1))]}, line ${__BITBAKE_LAST_LINE}&quot;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo -e &quot;=
<span style=3D"white-space:pre-wrap"> </span>#$((i)): ${FUNCNAME[$i]}, ${BA=
SH_SOURCE[$((i-1))]}, line ${BASH_LINENO[$((i-1))]}&quot;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 done</div>
<div>=C2=A0 =C2=A0 fi</div>
<div>=C2=A0 =C2=A0 exit $ret</div>
<div>}</div>
<div>=C2=A0</div>
<div>bb_bash_debug_handler() {</div>
<div>=C2=A0 =C2=A0 local line=3D${BASH_LINENO[0]}</div>
<div>=C2=A0 =C2=A0 # For some reason the DEBUG trap trips with lineno=3D1 w=
hen scripts exit; ignore it</div>
<div>=C2=A0 =C2=A0 if [ &quot;$line&quot; -eq 1 ]; then</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return</div>
<div>=C2=A0 =C2=A0 fi</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 # Track the line number of commands as they execute. Thi=
s is so we can have access to the failing line number</div>
<div>=C2=A0 =C2=A0 # in the EXIT trap. See <a href=3D"http://gnu-bash.2382.=
n7.nabble.com/trap-echo-quot-trap-exit-on-LINENO-quot-EXIT-gt-wrong-linenum=
ber-td3666.html" target=3D"_blank">http://gnu-bash.2382.n7.nabble.com/trap-=
echo-quot-trap-exit-on-LINENO-quot-EXIT-gt-wrong-linenumber-td3666.html</a>=
</div>
<div>=C2=A0 =C2=A0 if [ &quot;${FUNCNAME[1]}&quot; !=3D &quot;bb_bash_exit_=
handler&quot; ]; then</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 __BITBAKE_LAST_LINE=3D$line</div>
<div>=C2=A0 =C2=A0 fi</div>
<div>}</div>
<div>=C2=A0</div>
<div>case $BASH_VERSION in</div>
<div>&quot;&quot;) trap &#39;bb_sh_exit_handler&#39; 0</div>
<div>=C2=A0 =C2=A0 set -e</div>
<div>=C2=A0 =C2=A0 ;;</div>
<div>*)=C2=A0 trap &#39;bb_bash_exit_handler &quot;$BASH_COMMAND&quot;&#39;=
 0</div>
<div>=C2=A0 =C2=A0 trap &#39;{ bb_bash_debug_handler; } 2&gt;/dev/null&#39;=
 DEBUG</div>
<div>=C2=A0 =C2=A0 set -e</div>
<div>=C2=A0 =C2=A0 shopt -s extdebug</div>
<div>=C2=A0 =C2=A0 ;;</div>
<div>esac</div>
<div>export AR=3D&quot;aarch64-linaro-linux-gcc-ar&quot;</div>
<div>export AS=3D&quot;aarch64-linaro-linux-as &quot;</div>
<div>export BUILD_AR=3D&quot;ar&quot;</div>
<div>export BUILD_AS=3D&quot;as &quot;</div>
<div>export BUILD_CC=3D&quot;gcc &quot;</div>
<div>export BUILD_CCLD=3D&quot;gcc &quot;</div>
<div>export BUILD_CFLAGS=3D&quot;-isystem/home/vagrant/oe_qcom_honister/bui=
ld-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recip=
e-sysroot-native/usr/include -O2 -pipe&quot;</div>
<div>export BUILD_CPP=3D&quot;gcc=C2=A0 -E&quot;</div>
<div>export BUILD_CPPFLAGS=3D&quot;-isystem/home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/rec=
ipe-sysroot-native/usr/include&quot;</div>
<div>export BUILD_CXX=3D&quot;g++ &quot;</div>
<div>export BUILD_CXXFLAGS=3D&quot;-isystem/home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/rec=
ipe-sysroot-native/usr/include -O2 -pipe&quot;</div>
<div>export BUILD_FC=3D&quot;gfortran &quot;</div>
<div>export BUILD_LD=3D&quot;ld &quot;</div>
<div>export BUILD_LDFLAGS=3D&quot;-L/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-r=
path-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cor=
texa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0-Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-nativ=
e/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-=
native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/bu=
ild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/reci=
pe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1&quot;</div>
<div>export BUILD_NM=3D&quot;nm&quot;</div>
<div>export BUILD_RANLIB=3D&quot;ranlib&quot;</div>
<div>export BUILD_STRIP=3D&quot;strip&quot;</div>
<div>export CC=3D&quot;aarch64-linaro-linux-gcc=C2=A0 -mcpu=3Dcortex-a53 -m=
arch=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot&=
quot;</div>
<div>export CCLD=3D&quot;aarch64-linaro-linux-gcc=C2=A0 -mcpu=3Dcortex-a53 =
-march=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/=
tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroo=
t&quot;</div>
<div>export CC_FOR_BUILD=3D&quot;gcc &quot;</div>
<div>export CFLAGS=3D&quot;-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/o=
e_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/=
3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I/h=
ome/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linar=
o-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-li=
naro-linux=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=
/usr/include=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-pref=
ix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal=
/3.18-beta9-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-=
sysroot=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native=3D &quot;</div>
<div>export CFLAGS_FOR_BUILD=3D&quot;-isystem/home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/r=
ecipe-sysroot-native/usr/include -O2 -pipe&quot;</div>
<div>export CONFIG_SITE=3D&quot;/home/vagrant/oe_qcom_honister/build-cdil/c=
onf/../../layers/openembedded-core/meta/site/endian-little /home/vagrant/oe=
_qcom_honister/build-cdil/conf/../../layers/openembedded-core/meta/site/arm=
-common /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openemb=
edded-core/meta/site/arm-64 /home/vagrant/oe_qcom_honister/build-cdil/conf/=
../../layers/openembedded-core/meta/site/common-linux /home/vagrant/oe_qcom=
_honister/build-cdil/conf/../../layers/openembedded-core/meta/site/common-g=
libc /home/vagrant/oe_qcom_honister/build-cdil/conf/../../layers/openembedd=
ed-core/meta/site/common&quot;</div>
<div>export CPP=3D&quot;aarch64-linaro-linux-gcc -E --sysroot=3D/home/vagra=
nt/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/o=
pal/3.18-beta9-r0/recipe-sysroot=C2=A0 -mcpu=3Dcortex-a53 -march=3Darmv8-a+=
crc&quot;</div>
<div>export CPPFLAGS=3D&quot;-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant=
/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opa=
l/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I=
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-=
linaro-linux=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysro=
ot/usr/include &quot;</div>
<div>export CPPFLAGS_FOR_BUILD=3D&quot;-isystem/home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/recipe-sysroot-native/usr/include&quot;</div>
<div>export CPP_FOR_BUILD=3D&quot;gcc=C2=A0 -E&quot;</div>
<div>export CXX=3D&quot;aarch64-linaro-linux-g++=C2=A0 -mcpu=3Dcortex-a53 -=
march=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cdil/t=
mp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot=
&quot;</div>
<div>export CXXFLAGS=3D&quot;-D__ARMEL__=C2=A0 =C2=A0 =C2=A0-I/home/vagrant=
/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opa=
l/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1=C2=A0 =C2=A0 =C2=A0-I=
/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-lin=
aro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/include/c++/10.3.1/aarch64-=
linaro-linux=C2=A0 =C2=A0 =C2=A0-I/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysro=
ot/usr/include=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fmacro-pr=
efix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/co=
rtexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal/3.18-beta9-r0=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil=
-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=3D/usr/src/debug/opal=
/3.18-beta9-r0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build=
-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-=
sysroot=3D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native=3D=C2=A0 -fvisibility-inlines-hidden&quot;</div>
<div>export CXXFLAGS_FOR_BUILD=3D&quot;-isystem/home/vagrant/oe_qcom_honist=
er/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0=
/recipe-sysroot-native/usr/include -O2 -pipe&quot;</div>
<div>export CXX_FOR_BUILD=3D&quot;g++ &quot;</div>
<div>unset DISTRO</div>
<div>export FC=3D&quot;aarch64-linaro-linux-gfortran=C2=A0 -mcpu=3Dcortex-a=
53 -march=3Darmv8-a+crc --sysroot=3D/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root&quot;</div>
<div>export GIT_CEILING_DIRECTORIES=3D&quot;/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0&qu=
ot;</div>
<div>export GIT_CONFIG_PARAMETERS=3D&quot;&#39;safe.directory=3D*&#39;&quot=
;</div>
<div>export HOME=3D&quot;/home/vagrant&quot;</div>
<div>export LC_ALL=3D&quot;en_US.UTF-8&quot;</div>
<div>export LD=3D&quot;aarch64-linaro-linux-ld --sysroot=3D/home/vagrant/oe=
_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3=
.18-beta9-r0/recipe-sysroot &quot;</div>
<div>export LDFLAGS=3D&quot;=C2=A0 =C2=A0 -L/home/vagrant/oe_qcom_honister/=
build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/re=
cipe-sysroot/lib=C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot/usr/lib=C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root/usr/lib/aarch64-linaro-linux/10.3.1 &quot;</div>
<div>export LDFLAGS_FOR_BUILD=3D&quot;-L/home/vagrant/oe_qcom_honister/buil=
d-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe=
-sysroot-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-L/home/vagrant/oe_qcom_honister/buil=
d-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe=
-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,--enable-new-dtags=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-W=
l,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/lib=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0-Wl,-rpath-link,/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-na=
tive/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot-native/usr/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-rpath,/home/vagrant/oe_qcom_honister=
/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/r=
ecipe-sysroot-native/lib=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Wl,-O1&quot;</div>
<div>export LD_FOR_BUILD=3D&quot;ld &quot;</div>
<div>export LOGNAME=3D&quot;vagrant&quot;</div>
<div>unset MACHINE</div>
<div>export MAKE=3D&quot;make&quot;</div>
<div>export NM=3D&quot;aarch64-linaro-linux-gcc-nm&quot;</div>
<div>export OBJCOPY=3D&quot;aarch64-linaro-linux-objcopy&quot;</div>
<div>export OBJDUMP=3D&quot;aarch64-linaro-linux-objdump&quot;</div>
<div>export OMP_NUM_THREADS=3D&quot;8&quot;</div>
<div>export OPALDIR=3D&quot;/home/vagrant/oe_qcom_honister/build-cdil/tmp-c=
dil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/git&quot;</div>
<div>export PATH=3D&quot;/home/vagrant/oe_qcom_honister/layers/openembedded=
-core/scripts:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work=
/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin/aa=
rch64-linaro-linux:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc=
/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/bin/cros=
sscripts:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cort=
exa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/sbin:/home/=
vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-li=
nux/opal/3.18-beta9-r0/recipe-sysroot-native/usr/bin:/home/vagrant/oe_qcom_=
honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-be=
ta9-r0/recipe-sysroot-native/sbin:/home/vagrant/oe_qcom_honister/build-cdil=
/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysro=
ot-native/bin:/home/vagrant/oe_qcom_honister/bitbake/bin:/home/vagrant/oe_q=
com_honister/build-cdil/tmp-cdil-glibc/hosttools&quot;</div>
<div>export PKG_CONFIG_DIR=3D&quot;/home/vagrant/oe_qcom_honister/build-cdi=
l/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysr=
oot/usr/lib/pkgconfig&quot;</div>
<div>export PKG_CONFIG_DISABLE_UNINSTALLED=3D&quot;yes&quot;</div>
<div>export PKG_CONFIG_LIBDIR=3D&quot;/home/vagrant/oe_qcom_honister/build-=
cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-s=
ysroot/usr/lib/pkgconfig&quot;</div>
<div>export PKG_CONFIG_PATH=3D&quot;/home/vagrant/oe_qcom_honister/build-cd=
il/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sys=
root/usr/lib/pkgconfig:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-g=
libc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/shar=
e/pkgconfig&quot;</div>
<div>export PKG_CONFIG_SYSROOT_DIR=3D&quot;/home/vagrant/oe_qcom_honister/b=
uild-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/rec=
ipe-sysroot&quot;</div>
<div>export PKG_CONFIG_SYSTEM_INCLUDE_PATH=3D&quot;/usr/include&quot;</div>
<div>export PKG_CONFIG_SYSTEM_LIBRARY_PATH=3D&quot;/lib:/usr/lib&quot;</div=
>
<div>export PSEUDO_DISABLED=3D&quot;1&quot;</div>
<div>export PSEUDO_UNLOAD=3D&quot;1&quot;</div>
<div>export PTLIBDIR=3D&quot;/home/vagrant/oe_qcom_honister/build-cdil/tmp-=
cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/us=
r/src/ptlib&quot;</div>
<div>export RANLIB=3D&quot;aarch64-linaro-linux-gcc-ranlib&quot;</div>
<div>export READELF=3D&quot;aarch64-linaro-linux-readelf&quot;</div>
<div>unset SHELL</div>
<div>export STRINGS=3D&quot;aarch64-linaro-linux-strings&quot;</div>
<div>export STRIP=3D&quot;aarch64-linaro-linux-strip&quot;</div>
<div>unset TARGET_ARCH</div>
<div>export TZ=3D&quot;UTC&quot;</div>
<div>export USER=3D&quot;vagrant&quot;</div>
<div>export base_bindir=3D&quot;/bin&quot;</div>
<div>export base_libdir=3D&quot;/lib&quot;</div>
<div>export base_prefix=3D&quot;&quot;</div>
<div>export base_sbindir=3D&quot;/sbin&quot;</div>
<div>export bindir=3D&quot;/usr/bin&quot;</div>
<div>export datadir=3D&quot;/usr/share&quot;</div>
<div>export docdir=3D&quot;/usr/share/doc&quot;</div>
<div>export exec_prefix=3D&quot;/usr&quot;</div>
<div>export includedir=3D&quot;/usr/include&quot;</div>
<div>export infodir=3D&quot;/usr/share/info&quot;</div>
<div>export libdir=3D&quot;/usr/lib&quot;</div>
<div>export libexecdir=3D&quot;/usr/libexec&quot;</div>
<div>export localstatedir=3D&quot;/var&quot;</div>
<div>export lt_cv_sys_lib_dlsearch_path_spec=3D&quot;/usr/lib /lib&quot;</d=
iv>
<div>export mandir=3D&quot;/usr/share/man&quot;</div>
<div>export nonarch_base_libdir=3D&quot;/lib&quot;</div>
<div>export nonarch_libdir=3D&quot;/usr/lib&quot;</div>
<div>export oldincludedir=3D&quot;/usr/include&quot;</div>
<div>export prefix=3D&quot;/usr&quot;</div>
<div>export sbindir=3D&quot;/usr/sbin&quot;</div>
<div>export servicedir=3D&quot;/srv&quot;</div>
<div>export sharedstatedir=3D&quot;/com&quot;</div>
<div>export sysconfdir=3D&quot;/etc&quot;</div>
<div>export systemd_system_unitdir=3D&quot;/lib/systemd/system&quot;</div>
<div>export systemd_unitdir=3D&quot;/lib/systemd&quot;</div>
<div>export systemd_user_unitdir=3D&quot;/usr/lib/systemd/user&quot;</div>
<div>=C2=A0</div>
<div># line: 1, file: autogenerated</div>
<div>do_compile() {</div>
<div>=C2=A0 =C2=A0 # make clean</div>
<div>=C2=A0 =C2=A0 # export LIBRARY_PATH=3D&quot;/home/vagrant/oe_qcom_honi=
ster/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-=
r0/recipe-sysroot/usr/lib:/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/recipe-sysroot/usr/l=
ib/aarch64-linaro-linux/10.3.1&quot;</div>
<div>=C2=A0 =C2=A0 autotools_do_compile</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 238, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../.=
./layers/openembedded-core/meta/classes/autotools.bbclass</div>
<div>autotools_do_compile() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>oe_runmake</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 64, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>oe_runmake() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>oe_runmake_call &quot;$@&=
quot; || die &quot;oe_runmake failed&quot;</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 55, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>die() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>bbfatal_log &quot;$*&quot=
;</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 59, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/base.bbclass</div>
<div>oe_runmake_call() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>bbnote make -j 8=C2=A0 &q=
uot;$@&quot;</div>
<div><span style=3D"white-space:pre-wrap"> </span>make -j 8=C2=A0 &quot;$@&=
quot;</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 66, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/logging.bbclass</div>
<div>bbfatal_log() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>if [ -p /home/vagrant/oe_=
qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.=
18-beta9-r0/temp/fifo.2668267 ] ; then</div>
<div><span style=3D"white-space:pre-wrap"> </span>printf &quot;%b\0&quot; &=
quot;bbfatal_log $*&quot; &gt; /home/vagrant/oe_qcom_honister/build-cdil/tm=
p-cdil-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.26682=
67</div>
<div><span style=3D"white-space:pre-wrap"> </span>else</div>
<div><span style=3D"white-space:pre-wrap"> </span>echo &quot;ERROR: $*&quot=
;</div>
<div><span style=3D"white-space:pre-wrap"> </span>fi</div>
<div><span style=3D"white-space:pre-wrap"> </span>exit 1</div>
<div>}</div>
<div>=C2=A0</div>
<div># line: 21, file: /home/vagrant/oe_qcom_honister/build-cdil/conf/../..=
/layers/openembedded-core/meta/classes/logging.bbclass</div>
<div>bbnote() {</div>
<div><span style=3D"white-space:pre-wrap"> </span>if [ -p /home/vagrant/oe_=
qcom_honister/build-cdil/tmp-cdil-glibc/work/cortexa53-linaro-linux/opal/3.=
18-beta9-r0/temp/fifo.2668267 ] ; then</div>
<div><span style=3D"white-space:pre-wrap"> </span>printf &quot;%b\0&quot; &=
quot;bbnote $*&quot; &gt; /home/vagrant/oe_qcom_honister/build-cdil/tmp-cdi=
l-glibc/work/cortexa53-linaro-linux/opal/3.18-beta9-r0/temp/fifo.2668267</d=
iv>
<div><span style=3D"white-space:pre-wrap"> </span>else</div>
<div><span style=3D"white-space:pre-wrap"> </span>echo &quot;NOTE: $*&quot;=
</div>
<div><span style=3D"white-space:pre-wrap"> </span>fi</div>
<div>}</div>
<div>=C2=A0</div>
<div>cd &#39;/home/vagrant/oe_qcom_honister/build-cdil/tmp-cdil-glibc/work/=
cortexa53-linaro-linux/opal/3.18-beta9-r0/git&#39;</div>
<div>do_compile</div>
<div>=C2=A0</div>
<div># cleanup</div>
<div>ret=3D$?</div>
<div>trap &#39;&#39; 0</div>
<div>exit $ret</div>
<div>=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57412): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57412" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57412</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/9192996=
6/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/91929966/1997914</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #make:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/ma=
ke" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/make</a><br>
Mute #honister:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/honister" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto/mutehashtag/honister</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009cb0a705e2966084--

