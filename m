Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.55556.1629299809185174260
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 08:16:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c1Yf4ERt;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id i9so5331812lfg.10
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 08:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pPp/M2X1MNVA1f4SKeiCj5fINkt6UQzz1nThtla8Frw=;
        b=c1Yf4ERtoWGJ8riDo4PFHV2gUZOUqQFKcZF9zvY4tGIwEB9c5N6OrgcWX6AqRBpv8/
         VvF1zCRRNkIKepBrFuNCrUbVcDRVMw7YrnGa8WbBhvJbmqPc4f+MVc9Qbj3TxoA6/ARm
         jCcl/jKlDG7KFph+MYYH+PCC2iA8Gha2QYzSHUxu0aA5RuJ0sAejR3L04bmXWskpgC/u
         BPCHrj98HMnZyizG2cPaQM9Y1khTWaSdDi9t8DgMFQkkhdcNTcm7qsHdu8hQctmZL2kk
         MMEDcUUST6BpuEsUvr3Q+PvxFU4h+1eO0QnUUu7Vl9GqrbjvK5U/fJOwjuNez+xQB5c6
         imSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pPp/M2X1MNVA1f4SKeiCj5fINkt6UQzz1nThtla8Frw=;
        b=CENL36jedubu5/uTIFXrYm1I8Y7ZnNBkDuD4qaVRt5s4xdUbjTe91ZKg537Zk6FvK3
         qnylLOermgTKD11TcV7trd0jAqOSvsPPCpR1hYpt1ELgYfdjD0kaNsm3XaaEfWU1IZKp
         Uq8O6J4qVrm5x6nrJaaGisgVqoDDanFJzXathLaFWWhDoON/6+LG24U5CfSk9ZvFCA1R
         odt2hHM8hsTDaYzxnfU6l9aVYCPZxQkc25K7cC8Y9S2CYrUhFICBz/Ezxj//IP+TG40B
         Fn0uDrIQW1jcG+ic3mldJGSRsVYehzFDLs7leMmphJHIDkUcX4u4yEee9vUqmGItVDS8
         Nk7Q==
X-Gm-Message-State: AOAM530NEixJ1dxQ/t8S+n0BayAXyeW2VE+53yilNl3PI9V5g6bwiCYh
	zKA27lB0VZu8WSwV85A028nkOycd2cvXPsW30xA=
X-Google-Smtp-Source: ABdhPJxBi/lx6EmfT+q4QeIjWlHuIUCbT7B/3N1O8ZA8t9GMq37He50REidHW4py9BhCMnrD8V0o0j+P0sjmURCw8Io=
X-Received: by 2002:a19:ca4e:: with SMTP id h14mr6615518lfj.146.1629299807404;
 Wed, 18 Aug 2021 08:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
 <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net>
In-Reply-To: <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net>
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Wed, 18 Aug 2021 18:16:36 +0300
Message-ID: <CAKAnv4ETwx46E-f1fd9jP+D0=-HAgk5Xua95iJqrgKfH3=yFSg@mail.gmail.com>
Subject: Re: [yocto] building additional kenrel module in yocto, ERROR: no makefile found
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks!
Can I ask one more question? My module is need for openssl, I added
DEPENDS =3D "openssl" in my recipe

$ cat meta-gobinet/recipes-gobinet/gobinet/gobinet_1.bb
SUMMARY =3D "gobinet module"
LICENSE =3D "CLOSED"
inherit module
DEPENDS =3D "openssl"     !!!!!!!!!!!!!!!!!!!!!!!!!!!
SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D5175806df4c088bd77a4e6b66d20f89=
9"
#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573e1b911=
77954f6190a12c7b1"
S =3D "${WORKDIR}/gobinet"

but the error appears:

/home/ivr/work/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-6/kernel-s=
ource/scripts/extract-cert.c:21:10:
fatal error: openssl/bio.h: No such file or directory
|    21 | #include <openssl/bio.h>
|       |                  ^~~~~~~~~~~~~~~

$ find  -name bio.h
./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/make-mod-scri=
pts/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/depmodwrapper=
-cross/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/linux-mainlin=
e/5.4.91-phy1-r0.0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobinet/1-r0/=
recipe-sysroot/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libxcrypt/4.4=
.15-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/ncurses/6.2-r=
0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/openssl-1.1.1i/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/openssl-1.1.1i/include/internal/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/packages-split/openssl-dev/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1=
.1i/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1=
.1i/include/internal/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/image/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/sysroot-destdir/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/package/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/openssl=
/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.1.1=
i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/interna=
l/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/readline/8.0-=
r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/gcc-runtime/9=
.3.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/glibc/2.31+gi=
tAUTOINC+df31c7ca92-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/bash-completi=
on/2.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libtirpc/1.2.=
6-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/zlib/1.2.11-r=
0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libffi/3.2.1-=
r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libgcc/9.3.0-=
r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libcap-ng/0.7=
.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-libc-he=
aders/5.4-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-libc-he=
aders/5.4-r0/linux-5.4/include/linux/bio.h
./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/opkg-utils/0.=
4.2-r0/recipe-sysroot-native/usr/include/openssl/bio.h
./build/tmp/sysroots-components/cortexa7t2hf-neon-vfpv4/openssl/usr/include=
/openssl/bio.h
./build/tmp/sysroots-components/x86_64/openssl-native/usr/include/openssl/b=
io.h
./build/tmp/work-shared/phyboard-segin-imx6ul-6/kernel-source/include/linux=
/bio.h

the file is found in many places, please tell me how to fix it?

=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 17:00, Quentin Sch=
ulz <foss@0leil.net>:
>
> Hi Ivan,
>
> On August 18, 2021 3:36:58 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmail.=
com> wrote:
> >help please, I meet with a problem with assembling the kernel module,
> >created a new layer:
> >
> >$ ll ~/work/yocto/sources/meta-gobinet
> >total 28K
> >drwxr-xr-x  5 ivr ivr 4.0K Aug 18 11:27 .
> >drwxr-xr-x 12 ivr ivr 4.0K Aug 18 11:26 ..
> >drwxr-xr-x  2 ivr ivr 4.0K Aug 18 11:26 conf
> >-rw-r--r--  1 ivr ivr 1.1K Aug 18 11:26 COPYING.MIT
> >-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:26 recipes-example
> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:28 recipes-gobinet
> >
> >and i was create recipe:
> >
> >$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet_=
1.bb
> >SUMMARY =3D "gobinet module"
> >LICENSE =3D "CLOSED"
> >inherit module
> >SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D13b5f20214a3925eb4be3b831b62=
612f"
> >#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573e1b=
91177954f6190a12c7b1"
> >
> >and i put gobinet.tar.xz in:
> >
> >$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobinet/
> >total 44K
> >drwxr-xr-x 2 ivr ivr 4.0K Aug 18 15:28 .
> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:31 ..
> >-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet.tar.xz
> >
> >content of gobinet.tar.xz is:
> >
> >tar -xf gobinet.tar.xz
> >ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobin=
et/gobinet
> >$ ll gobinet
> >total 244K
> >drwxr-xr-x 2 ivr ivr 4.0K Aug 17 21:32 .
> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:39 ..
> >-rw-r--r-- 1 ivr ivr 3.1K Aug 17 21:32 GobiNetworkManager.h
> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet.c
> >-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
> >-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
> >-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
> >-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile.kernel
> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI.c
> >-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice.c
> >-rw-r--r-- 1 ivr ivr 9.8K Aug 17 21:32 QMIDevice.h
> >-rw-r--r-- 1 ivr ivr 8.7K Aug 17 21:32 QMI.h
> >-rw-r--r-- 1 ivr ivr 2.9K Aug 17 21:32 Readme.txt
> >-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs.h
> >
> >but i have error:
> >
> >ERROR: gobinet-1-r0 do_compile: oe_runmake failed
> >ERROR: gobinet-1-r0 do_compile: Execution of
> >'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linu=
x-gnueabi/gobinet/1-r0/temp/run.do_compile.1734076'
> >failed with exit code 1:
> >make: *** No targets specified and no makefile found.  Stop.
> >WARNING: exit code 1 from a shell command.
> >
> >ERROR: Logfile of failure stored in:
> >/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux=
-gnueabi/gobinet/1-r0/temp/log.do_compile.1734076
> >
> >that there is no Makefile but Makefile is present. tell me what is the
> >problem? Please
>
> Because do_compile runs from ${S} which by default is set to ${WORKDIR}/$=
{PN}-${PV} (might be BPN instead of PN but does not matter). Basically it e=
xpects to be run from ${WORKDIR}/gobinet-1/.
>
> However the content of the tar.xz is extracted directly within ${WORKDIR}=
. So it's looking for a Makefile in ${WORKDIR}/gobinet-1/ but it's in ${WOR=
KDIR}.
>
> Two possible ways to do it:
> 1. Set S to ${WORKDIR}
> 2. Put all your files in a directory named gobinet-1  and make a tarball =
of that directory.
>
> Cheers,
> Quentin
