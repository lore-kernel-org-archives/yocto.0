Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web09.56235.1629301542607015878
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 08:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CK2o7/xI;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: ivriabtsov@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id d16so5918798ljq.4
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 08:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1Nm6+84PWYnnR9kmBA23H8NHnxdY22phKYDvQfkAegc=;
        b=CK2o7/xIzzsCti38jehnFuhBx09TVI1NE5S1EVR4wrJw5ipQrQ1AyiGYTlz28ZYH4p
         X7vTvDN/d4UBmCutYi07aVj8NtBlfnC9cHNKKigKjDWEuMmf2v6SgF64Pa60+tuBprpL
         68M/Zy+K/l7sqwNqjZeNpGHcAhKesxqv/v/cab6OVH+SPnCMgLd2a9v6Dq3b2tCr34+P
         HH3N1sIS0tqdcgIIxTFtAYcyrbF3yG9CBkWX8I32Pm1jT0ihpII6cZZEIuE3Yxa6M3hw
         m+2GtHY/ToMcg3oSLtBs3abXzmtXyblE89BvOFWHUwRlOSHFe30guYuUXCXNphTznr6h
         s1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1Nm6+84PWYnnR9kmBA23H8NHnxdY22phKYDvQfkAegc=;
        b=MHtylgKyaZHrKiiclmwS1ej9NRrOhR+2yTC4VEQvqAIjQU8PJ6ipCRejvk/imWLwxI
         5MQWKYdWZh5JX1J+7jLYD1HeTmjX/8xIGhwAEeca0VKaKUIOX+OCA/o/id1kB7u8xLwU
         omBkyCpWgC9JDo2OpxrOBx0NxnIYOvNrwzYHhXtgeby4nZ3F90dQ5sULtTsQaQ3a+CxJ
         oOC7TJfU5qzb6Bb9DLm4jO3wvWKe8RWM2RfHcQf34Nc0PmT06v5bUjgHeoZQvgukuXT4
         3KF5JCamzx2t3vVIX33m8W2kM87pZFQ2bBYDLBr7HzM6GiXcZweQm91+bhW20phMLNFj
         liKg==
X-Gm-Message-State: AOAM532zmgSrV2iCX7COdRT5A5rLI5c2gaP37aICHZJjDFW0JKG0GgDY
	Rnsf0F3g40ixAEbkou7u7IXOYpMewKCxWw+p4EM=
X-Google-Smtp-Source: ABdhPJyblsIRtGDwSJHNC5ZkYrgrNc/aGD6cLxpw4FhgYpbtDwh61LSk9cLUr9XI3H+LjF6QRspsYDmkeOlxxKERZ9Q=
X-Received: by 2002:a05:651c:1683:: with SMTP id bd3mr5908719ljb.323.1629301540333;
 Wed, 18 Aug 2021 08:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com>
 <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net> <CAKAnv4ETwx46E-f1fd9jP+D0=-HAgk5Xua95iJqrgKfH3=yFSg@mail.gmail.com>
 <067E25CE-30D5-4B30-9258-587ADC5944BC@0leil.net>
In-Reply-To: <067E25CE-30D5-4B30-9258-587ADC5944BC@0leil.net>
From: "Ivan Riabtsov" <ivriabtsov@gmail.com>
Date: Wed, 18 Aug 2021 18:45:28 +0300
Message-ID: <CAKAnv4FVUOPKZ5=ABzLU5-SpjaX=w9xOQ+=TadKnhbLPAdRJBg@mail.gmail.com>
Subject: Re: [yocto] building additional kenrel module in yocto, ERROR: no makefile found
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, thanks. "aptitude install openssl-dev" on host machine is solved this

=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 18:38, Quentin Sch=
ulz <foss@0leil.net>:
>
>
>
> On August 18, 2021 5:16:36 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmail.=
com> wrote:
> >Thanks!
> >Can I ask one more question? My module is need for openssl, I added
> >DEPENDS =3D "openssl" in my recipe
> >
> >$ cat meta-gobinet/recipes-gobinet/gobinet/gobinet_1.bb
> >SUMMARY =3D "gobinet module"
> >LICENSE =3D "CLOSED"
> >inherit module
> >DEPENDS =3D "openssl"     !!!!!!!!!!!!!!!!!!!!!!!!!!!
> >SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D5175806df4c088bd77a4e6b66d20=
f899"
> >#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573e1b=
91177954f6190a12c7b1"
> >S =3D "${WORKDIR}/gobinet"
> >
> >but the error appears:
> >
> >/home/ivr/work/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-6/kerne=
l-source/scripts/extract-cert.c:21:10:
> >fatal error: openssl/bio.h: No such file or directory
> >|    21 | #include <openssl/bio.h>
> >|       |                  ^~~~~~~~~~~~~~~
> >
>
> I suspect this script is to be run on the host, so maybe openssl-native i=
n DEPENDS?
>
> Let us know,
> Quentin
>
> >$ find  -name bio.h
> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/make-mod-s=
cripts/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/depmodwrap=
per-cross/1.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/linux-main=
line/5.4.91-phy1-r0.0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobinet/1-=
r0/recipe-sysroot/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libxcrypt/=
4.4.15-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/ncurses/6.=
2-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/openssl-1.1.1i/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/openssl-1.1.1i/include/internal/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/packages-split/openssl-dev/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/openssl-=
1.1.1i/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1.1.1i-r0/openssl-=
1.1.1i/include/internal/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/image/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/sysroot-destdir/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/package/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/open=
ssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openssl/1.=
1.1i-r0/package/usr/src/debug/openssl/1.1.1i-r0/openssl-1.1.1i/include/inte=
rnal/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/readline/8=
.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/gcc-runtim=
e/9.3.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/glibc/2.31=
+gitAUTOINC+df31c7ca92-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/bash-compl=
etion/2.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libtirpc/1=
.2.6-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/zlib/1.2.1=
1-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libffi/3.2=
.1-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libgcc/9.3=
.0-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libcap-ng/=
0.7.10-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-libc=
-headers/5.4-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-libc=
-headers/5.4-r0/linux-5.4/include/linux/bio.h
> >./build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/opkg-utils=
/0.4.2-r0/recipe-sysroot-native/usr/include/openssl/bio.h
> >./build/tmp/sysroots-components/cortexa7t2hf-neon-vfpv4/openssl/usr/incl=
ude/openssl/bio.h
> >./build/tmp/sysroots-components/x86_64/openssl-native/usr/include/openss=
l/bio.h
> >./build/tmp/work-shared/phyboard-segin-imx6ul-6/kernel-source/include/li=
nux/bio.h
> >
> >the file is found in many places, please tell me how to fix it?
> >
> >=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3. 2021 =D0=B3. =D0=B2 17:00, Quentin =
Schulz <foss@0leil.net>:
> >>
> >> Hi Ivan,
> >>
> >> On August 18, 2021 3:36:58 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gma=
il.com> wrote:
> >> >help please, I meet with a problem with assembling the kernel module,
> >> >created a new layer:
> >> >
> >> >$ ll ~/work/yocto/sources/meta-gobinet
> >> >total 28K
> >> >drwxr-xr-x  5 ivr ivr 4.0K Aug 18 11:27 .
> >> >drwxr-xr-x 12 ivr ivr 4.0K Aug 18 11:26 ..
> >> >drwxr-xr-x  2 ivr ivr 4.0K Aug 18 11:26 conf
> >> >-rw-r--r--  1 ivr ivr 1.1K Aug 18 11:26 COPYING.MIT
> >> >-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
> >> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:26 recipes-example
> >> >drwxr-xr-x  3 ivr ivr 4.0K Aug 18 11:28 recipes-gobinet
> >> >
> >> >and i was create recipe:
> >> >
> >> >$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobin=
et_1.bb
> >> >SUMMARY =3D "gobinet module"
> >> >LICENSE =3D "CLOSED"
> >> >inherit module
> >> >SRC_URI =3D "file://gobinet.tar.xz;md5sum=3D13b5f20214a3925eb4be3b831=
b62612f"
> >> >#SRC_URI +=3D " file://0001_gobinet_makefile.patch;md5sum=3D1261df573=
e1b91177954f6190a12c7b1"
> >> >
> >> >and i put gobinet.tar.xz in:
> >> >
> >> >$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobine=
t/
> >> >total 44K
> >> >drwxr-xr-x 2 ivr ivr 4.0K Aug 18 15:28 .
> >> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:31 ..
> >> >-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet.tar.xz
> >> >
> >> >content of gobinet.tar.xz is:
> >> >
> >> >tar -xf gobinet.tar.xz
> >> >ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet/go=
binet/gobinet
> >> >$ ll gobinet
> >> >total 244K
> >> >drwxr-xr-x 2 ivr ivr 4.0K Aug 17 21:32 .
> >> >drwxr-xr-x 3 ivr ivr 4.0K Aug 18 15:39 ..
> >> >-rw-r--r-- 1 ivr ivr 3.1K Aug 17 21:32 GobiNetworkManager.h
> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet.c
> >> >-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
> >> >-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
> >> >-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
> >> >-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile.kernel
> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI.c
> >> >-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice.c
> >> >-rw-r--r-- 1 ivr ivr 9.8K Aug 17 21:32 QMIDevice.h
> >> >-rw-r--r-- 1 ivr ivr 8.7K Aug 17 21:32 QMI.h
> >> >-rw-r--r-- 1 ivr ivr 2.9K Aug 17 21:32 Readme.txt
> >> >-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs.h
> >> >
> >> >but i have error:
> >> >
> >> >ERROR: gobinet-1-r0 do_compile: oe_runmake failed
> >> >ERROR: gobinet-1-r0 do_compile: Execution of
> >> >'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-l=
inux-gnueabi/gobinet/1-r0/temp/run.do_compile.1734076'
> >> >failed with exit code 1:
> >> >make: *** No targets specified and no makefile found.  Stop.
> >> >WARNING: exit code 1 from a shell command.
> >> >
> >> >ERROR: Logfile of failure stored in:
> >> >/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-li=
nux-gnueabi/gobinet/1-r0/temp/log.do_compile.1734076
> >> >
> >> >that there is no Makefile but Makefile is present. tell me what is th=
e
> >> >problem? Please
> >>
> >> Because do_compile runs from ${S} which by default is set to ${WORKDIR=
}/${PN}-${PV} (might be BPN instead of PN but does not matter). Basically i=
t expects to be run from ${WORKDIR}/gobinet-1/.
> >>
> >> However the content of the tar.xz is extracted directly within ${WORKD=
IR}. So it's looking for a Makefile in ${WORKDIR}/gobinet-1/ but it's in ${=
WORKDIR}.
> >>
> >> Two possible ways to do it:
> >> 1. Set S to ${WORKDIR}
> >> 2. Put all your files in a directory named gobinet-1  and make a tarba=
ll of that directory.
> >>
> >> Cheers,
> >> Quentin
