Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web09.57049.1629304606080639505
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 09:36:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZHbDEkV3;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id o10so5846614lfr.11
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 09:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bkVe9suVebTX1v8UrhT0STrykumxtL4xzDRGXOZKzDM=;
        b=ZHbDEkV3olvFNvIBcMxurU4Yzng+uS9EWmiln/iNTnOoPvBUNaIrIChAv25OcbcTiZ
         oN9UTvEeJTUY2Rp7ku6FIiUCfoVdmdumBwCeAgHzjMi6yROzmG8do4VBjuQR298qNUS9
         y7lfn8qPnoCpzMPBg7A903wYCKFjEv+fConfwLGFr5kEXqG929IibtD1gosNzaTWRF7b
         ImxvnGzmgR39/iLx4CgiSmmatsordz8Q3+peY657FVS6mkrZX4Ulj3C8YdNEzVLgPLg1
         6jfw62uJerMFK0tpn5nRXTz1GaGQ46cgd+ubuj/SXa0rPqL6rKsCAXi3JQeFTj4JRWoR
         HE7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bkVe9suVebTX1v8UrhT0STrykumxtL4xzDRGXOZKzDM=;
        b=ce6ed3EsrEACflvFiEz57KV+gmvxouL3YOoEvn6zvAW7PlUwt1Of6H9sbYnAgekuqY
         EhV9mSskzcdzhqxEaY4RnCH6QEVieowjEpDx6EbUbz//oPtJfrTny8Ojim5RPQYnHHyY
         ttcG2zwG1wdREvXYNx4Q748RCZdKOHXLzA5F3UMvL3O5NMWOr+QzxLyNcANkyaASl4uc
         ktAFgUxLzMEjToHI2q+hMdfhy9ziBssQvc6r9h1/gnO5qmJEbmvzDpVCXfE/xuFDO79K
         QNXE3Q7Hw8eWEq+BhZUTszSBqt8P83LmI4GK+/viRg6lvnndsYzyArlB7Qp8NL4vw6ug
         3jag==
X-Gm-Message-State: AOAM533dc5XcuDNJb8cKq+YwrETMZSo1LaJ3+n2kgXdfRXNAtPZmcbRm
	Oy5g60si8dYhiUzfXBPu6hj5cXKL56c+tU86F0g=
X-Google-Smtp-Source: ABdhPJzBsQnQnsjBsuc+zgpOJxFj3orQ0G7Iu4STBgj6bcqiuiZz6RFd8hs0vCcX8KnWG3InZnuc+yqf5oH88pR1r4I=
X-Received: by 2002:a19:ca4e:: with SMTP id h14mr6850097lfj.146.1629304604199;
 Wed, 18 Aug 2021 09:36:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
 <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net> <CAKAnv4ETwx46E-f1fd9jP+D0=-HAgk5Xua95iJqrgKfH3=yFSg@mail.gmail.com>
 <067E25CE-30D5-4B30-9258-587ADC5944BC@0leil.net> <CAKAnv4FVUOPKZ5=ABzLU5-SpjaX=w9xOQ+=TadKnhbLPAdRJBg@mail.gmail.com>
 <3D88E5CA-E0A2-4F3A-9318-EA900E52E234@0leil.net>
In-Reply-To: <3D88E5CA-E0A2-4F3A-9318-EA900E52E234@0leil.net>
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Wed, 18 Aug 2021 19:36:33 +0300
Message-ID: <CAKAnv4EKQU1VdTi2FVvONEPomN=9uYOujO9LykddKq4cdg+V6A@mail.gmail.com>
Subject: Re: [yocto] building additional kenrel module in yocto, ERROR: no makefile found
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, thanks. one more question if you allow:

module is build correctly, but i have error during install:

ERROR: gobinet-1-r0 do_package: QA Issue: gobinet: Files/directories
were installed but not shipped in any package:
  /lib/modules/5.4.91-bsp-yocto-i.mx6ul-pd21.1.0/modules.order
  /lib/modules/5.4.91-bsp-yocto-i.mx6ul-pd21.1.0/modules.builtin.modinfo
  /lib/modules/5.4.91-bsp-yocto-i.mx6ul-pd21.1.0/modules.builtin
  /lib/modules/5.4.91-bsp-yocto-i.mx6ul-pd21.1.0/source
  /lib/modules/5.4.91-bsp-yocto-i.mx6ul-pd21.1.0/build
Please set FILES such that these items are packaged. Alternatively if
they are unneeded, avoid installing them or delete them within
do_install.
gobinet: 5 installed and not shipped files. [installed-vs-shipped]

recipe:

SUMMARY =3D "gobinet module"
LICENSE =3D "CLOSED"
inherit module
DEPENDS =3D "openssl-native bc-native"
SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D5175806df4c088bd77a4e6b66d20f89=
9"
#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573e1b911=
77954f6190a12c7b1"
S =3D "${WORKDIR}/gobinet"
RPROVIDES_${PN} +=3D "kernel-module-GobiNet"
MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-module-GobiNet"

=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 19:04, Quentin Sch=
ulz <foss@0leil.net>:
>
>
>
> On August 18, 2021 5:45:28 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmail.=
com> wrote:
> >Ok, thanks. "aptitude install openssl-dev" on host machine is solved thi=
s
> >
>
> So you actually need DEPENDS +=3D "openssl-native" in your recipe.
>
> Don't install package on your build machine to fix your Yocto recipes, ad=
d the native recipes to your DEPENDS instead. Otherwise anyone building you=
r recipe will need to install openssl-dev and everyone will have a differen=
t version because of different update status or distros and things will bre=
ak at one point.
>
> Quentin
>
> >=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 18:38, Quentin =
Schulz <foss@0leil.net>:
> >>
> >>
> >>
> >> On August 18, 2021 5:16:36 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gma=
il.com> wrote:
> >> >Thanks!
> >> >Can I ask one more question? My module is need for openssl, I added
> >> >DEPENDS =3D "openssl" in my recipe
> >> >
> >> >$ cat meta-gobinet/recipes-gobinet/gobinet/gobinet_1.bb
> >> >SUMMARY =3D "gobinet module"
> >> >LICENSE =3D "CLOSED"
> >> >inherit module
> >> >DEPENDS =3D "openssl"     !!!!!!!!!!!!!!!!!!!!!!!!!!!
> >> >SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D5175806df4c088bd77a4e6b66=
d20f899"
> >> >#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573=
e1b91177954f6190a12c7b1"
> >> >S =3D "${WORKDIR}/gobinet"
> >> >
> >> >but the error appears:
> >> >
> >> >/home/ivr/work/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-6/ke=
rnel-source/scripts/extract-cert.c:21:10:
> >> >fatal error: openssl/bio.h: No such file or directory
> >> >|    21 | #include <openssl/bio.h>
> >> >|       |                  ^~~~~~~~~~~~~~~
> >> >
> >>
> >> I suspect this script is to be run on the host, so maybe openssl-nativ=
e in DEPENDS?
> >>
> >> Let us know,
> >> Quentin
> >>
> >> >$ find  -name bio.h
> >> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/make-mo=
d-scripts/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/depmodw=
rapper-cross/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/linux-m=
ainline/5.4.91-phy1-r0.0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobinet=
/1-r0/recipe-sysroot/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libxcry=
pt/4.4.15-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/ncurses=
/6.2-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/openssl-1.1.1i/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/openssl-1.1.1i/include/internal/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/packages-split/openssl-dev/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/opens=
sl-1.1.1i/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/opens=
sl-1.1.1i/include/internal/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/image/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/sysroot-destdir/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/package/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/o=
penssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl=
/1.1.1i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/i=
nternal/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/readlin=
e/8.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/gcc-run=
time/9.3.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/glibc/2=
.31+gitAUTOINC+df31c7ca92-r0/recipe-sysroot-native/usr/include/openssl/bio.=
h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/bash-co=
mpletion/2.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libtirp=
c/1.2.6-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/zlib/1.=
2.11-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libffi/=
3.2.1-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libgcc/=
9.3.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libcap-=
ng/0.7.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-l=
ibc-headers/5.4-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-l=
ibc-headers/5.4-r0/linux-5.4/include/linux/bio.h
> >> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/opkg-ut=
ils/0.4.2-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >> >./build/tmp/sysroots-components/cortexa7t2hf-neon-vfpv4/openssl/usr/i=
nclude/openssl/bio.h
> >> >./build/tmp/sysroots-components/x86_64/openssl-native/usr/include/ope=
nssl/bio.h
> >> >./build/tmp/work-shared/phyboard-segin-imx6ul-6/kernel-source/include=
/linux/bio.h
> >> >
> >> >the file is found in many places, please tell me how to fix it?
> >> >
> >> >=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 17:00, Quent=
in Schulz <foss@0leil.net>:
> >> >>
> >> >> Hi Ivan,
> >> >>
> >> >> On August 18, 2021 3:36:58 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@=
gmail.com> wrote:
> >> >> >help please, I meet with a problem with assembling the kernel modu=
le,
> >> >> >created a new layer:
> >> >> >
> >> >> >$ ll ~/work/yocto/sources/meta-gobinet
> >> >> >total 28K
> >> >> >drwxr-xr-x  5 ivr ivr 4.0K Aug 18 11:27 .
> >> >> >drwxr-xr-x 12 ivr ivr 4.0K Aug 18 11:26 ..
> >> >> >drwxr-xr-x  2 ivr ivr 4.0K Aug 18 11:26 conf
> >> >> >-rw-r--r--  1 ivr ivr 1.1K Aug 18 11:26 COPYING.MIT
> >> >> >-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
> >> >> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:26 recipes-example
> >> >> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:28 recipes-gobinet
> >> >> >
> >> >> >and i was create recipe:
> >> >> >
> >> >> >$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/go=
binet_1.bb
> >> >> >SUMMARY =3D "gobinet module"
> >> >> >LICENSE =3D "CLOSED"
> >> >> >inherit module
> >> >> >SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D13b5f20214a3925eb4be3b=
831b62612f"
> >> >> >#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df=
573e1b91177954f6190a12c7b1"
> >> >> >
> >> >> >and i put gobinet.tar.xz in:
> >> >> >
> >> >> >$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gob=
inet/
> >> >> >total 44K
> >> >> >drwxr-xr-x 2 ivr ivr 4.0K Aug 18 15:28 .
> >> >> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:31 ..
> >> >> >-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet.tar.xz
> >> >> >
> >> >> >content of gobinet.tar.xz is:
> >> >> >
> >> >> >tar -xf gobinet.tar.xz
> >> >> >ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet=
/gobinet/gobinet
> >> >> >$ ll gobinet
> >> >> >total 244K
> >> >> >drwxr-xr-x 2 ivr ivr 4.0K Aug 17 21:32 .
> >> >> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:39 ..
> >> >> >-rw-r--r-- 1 ivr ivr 3.1K Aug 17 21:32 GobiNetworkManager.h
> >> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet.c
> >> >> >-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
> >> >> >-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
> >> >> >-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
> >> >> >-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile.kernel
> >> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI.c
> >> >> >-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice.c
> >> >> >-rw-r--r-- 1 ivr ivr 9.8K Aug 17 21:32 QMIDevice.h
> >> >> >-rw-r--r-- 1 ivr ivr 8.7K Aug 17 21:32 QMI.h
> >> >> >-rw-r--r-- 1 ivr ivr 2.9K Aug 17 21:32 Readme.txt
> >> >> >-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs.h
> >> >> >
> >> >> >but i have error:
> >> >> >
> >> >> >ERROR: gobinet-1-r0 do_compile: oe_runmake failed
> >> >> >ERROR: gobinet-1-r0 do_compile: Execution of
> >> >> >'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phyte=
c-linux-gnueabi/gobinet/1-r0/temp/run.do_compile.1734076'
> >> >> >failed with exit code 1:
> >> >> >make: *** No targets specified and no makefile found.  Stop.
> >> >> >WARNING: exit code 1 from a shell command.
> >> >> >
> >> >> >ERROR: Logfile of failure stored in:
> >> >> >/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec=
-linux-gnueabi/gobinet/1-r0/temp/log.do_compile.1734076
> >> >> >
> >> >> >that there is no Makefile but Makefile is present. tell me what is=
 the
> >> >> >problem? Please
> >> >>
> >> >> Because do_compile runs from ${S} which by default is set to ${WORK=
DIR}/${PN}-${PV} (might be BPN instead of PN but does not matter). Basicall=
y it expects to be run from ${WORKDIR}/gobinet-1/.
> >> >>
> >> >> However the content of the tar.xz is extracted directly within ${WO=
RKDIR}. So it's looking for a Makefile in ${WORKDIR}/gobinet-1/ but it's in=
 ${WORKDIR}.
> >> >>
> >> >> Two possible ways to do it:
> >> >> 1. Set S to ${WORKDIR}
> >> >> 2. Put all your files in a directory named gobinet-1  and make a ta=
rball of that directory.
> >> >>
> >> >> Cheers,
> >> >> Quentin
