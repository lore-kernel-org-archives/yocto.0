Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web12.57035.1629302702113702158
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 09:05:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.197, mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2F25C1C0005;
	Wed, 18 Aug 2021 16:04:58 +0000 (UTC)
Date: Wed, 18 Aug 2021 18:04:57 +0200
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Ivan Riabtsov <ivriabtsov@gmail.com>
Subject: Re: [yocto] building additional kenrel module in yocto, ERROR: no makefile found
In-Reply-To: <CAKAnv4FVUOPKZ5=ABzLU5-SpjaX=w9xOQ+=TadKnhbLPAdRJBg@mail.gmail.com>
References: <CAKAnv4FZfREBAcFz0ivXm54uHJ_W0VDPqiHk4Udo6AqkXaDJXQ@mail.gmail.com> <F6C5768A-3C6B-49C4-BA56-F3A4D66E28F1@0leil.net> <CAKAnv4ETwx46E-f1fd9jP+D0=-HAgk5Xua95iJqrgKfH3=yFSg@mail.gmail.com> <067E25CE-30D5-4B30-9258-587ADC5944BC@0leil.net> <CAKAnv4FVUOPKZ5=ABzLU5-SpjaX=w9xOQ+=TadKnhbLPAdRJBg@mail.gmail.com>
Message-ID: <3D88E5CA-E0A2-4F3A-9318-EA900E52E234@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On August 18, 2021 5:45:28 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmail=
=2Ecom> wrote:
>Ok, thanks=2E "aptitude install openssl-dev" on host machine is solved th=
is
>

So you actually need DEPENDS +=3D "openssl-native" in your recipe=2E

Don't install package on your build machine to fix your Yocto recipes, add=
 the native recipes to your DEPENDS instead=2E Otherwise anyone building yo=
ur recipe will need to install openssl-dev and everyone will have a differe=
nt version because of different update status or distros and things will br=
eak at one point=2E

Quentin

>=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3=2E 2021 =D0=B3=2E =D0=B2 18:38, Quent=
in Schulz <foss@0leil=2Enet>:
>>
>>
>>
>> On August 18, 2021 5:16:36 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@gmai=
l=2Ecom> wrote:
>> >Thanks!
>> >Can I ask one more question? My module is need for openssl, I added
>> >DEPENDS =3D "openssl" in my recipe
>> >
>> >$ cat meta-gobinet/recipes-gobinet/gobinet/gobinet_1=2Ebb
>> >SUMMARY =3D "gobinet module"
>> >LICENSE =3D "CLOSED"
>> >inherit module
>> >DEPENDS =3D "openssl"     !!!!!!!!!!!!!!!!!!!!!!!!!!!
>> >SRC_URI =3D "file://gobinet=2Etar=2Exz;md5sum=3D5175806df4c088bd77a4e6=
b66d20f899"
>> >#SRC_URI +=3D " file://0001_gobinet_makefile=2Epatch;md5sum=3D1261df57=
3e1b91177954f6190a12c7b1"
>> >S =3D "${WORKDIR}/gobinet"
>> >
>> >but the error appears:
>> >
>> >/home/ivr/work/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-6/ker=
nel-source/scripts/extract-cert=2Ec:21:10:
>> >fatal error: openssl/bio=2Eh: No such file or directory
>> >|    21 | #include <openssl/bio=2Eh>
>> >|       |                  ^~~~~~~~~~~~~~~
>> >
>>
>> I suspect this script is to be run on the host, so maybe openssl-native=
 in DEPENDS?
>>
>> Let us know,
>> Quentin
>>
>> >$ find  -name bio=2Eh
>> >=2E/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/make-m=
od-scripts/1=2E0-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/depmod=
wrapper-cross/1=2E0-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/linux-=
mainline/5=2E4=2E91-phy1-r0=2E0/recipe-sysroot-native/usr/include/openssl/b=
io=2Eh
>> >=2E/build/tmp/work/phyboard_segin_imx6ul_6-phytec-linux-gnueabi/gobine=
t/1-r0/recipe-sysroot/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libxcr=
ypt/4=2E4=2E15-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/ncurse=
s/6=2E2-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/openssl-1=2E1=2E1i/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/openssl-1=2E1=2E1i/include/internal/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/packages-split/openssl-dev/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1=2E1=2E1i=
-r0/openssl-1=2E1=2E1i/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/packages-split/openssl-src/usr/src/debug/openssl/1=2E1=2E1i=
-r0/openssl-1=2E1=2E1i/include/internal/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/image/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/sysroot-destdir/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/package/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/package/usr/src/debug/openssl/1=2E1=2E1i-r0/openssl-1=2E1=
=2E1i/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/openss=
l/1=2E1=2E1i-r0/package/usr/src/debug/openssl/1=2E1=2E1i-r0/openssl-1=2E1=
=2E1i/include/internal/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/readli=
ne/8=2E0-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/gcc-ru=
ntime/9=2E3=2E0-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/glibc/=
2=2E31+gitAUTOINC+df31c7ca92-r0/recipe-sysroot-native/usr/include/openssl/b=
io=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/bash-c=
ompletion/2=2E10-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libtir=
pc/1=2E2=2E6-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/zlib/1=
=2E2=2E11-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libffi=
/3=2E2=2E1-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libgcc=
/9=2E3=2E0-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/libcap=
-ng/0=2E7=2E10-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-=
libc-headers/5=2E4-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/linux-=
libc-headers/5=2E4-r0/linux-5=2E4/include/linux/bio=2Eh
>> >=2E/build/tmp/work/cortexa7t2hf-neon-vfpv4-phytec-linux-gnueabi/opkg-u=
tils/0=2E4=2E2-r0/recipe-sysroot-native/usr/include/openssl/bio=2Eh
>> >=2E/build/tmp/sysroots-components/cortexa7t2hf-neon-vfpv4/openssl/usr/=
include/openssl/bio=2Eh
>> >=2E/build/tmp/sysroots-components/x86_64/openssl-native/usr/include/op=
enssl/bio=2Eh
>> >=2E/build/tmp/work-shared/phyboard-segin-imx6ul-6/kernel-source/includ=
e/linux/bio=2Eh
>> >
>> >the file is found in many places, please tell me how to fix it?
>> >
>> >=D1=81=D1=80, 18 =D0=B0=D0=B2=D0=B3=2E 2021 =D0=B3=2E =D0=B2 17:00, Qu=
entin Schulz <foss@0leil=2Enet>:
>> >>
>> >> Hi Ivan,
>> >>
>> >> On August 18, 2021 3:36:58 PM GMT+02:00, Ivan Riabtsov <ivriabtsov@g=
mail=2Ecom> wrote:
>> >> >help please, I meet with a problem with assembling the kernel modul=
e,
>> >> >created a new layer:
>> >> >
>> >> >$ ll ~/work/yocto/sources/meta-gobinet
>> >> >total 28K
>> >> >drwxr-xr-x  5 ivr ivr 4=2E0K Aug 18 11:27 =2E
>> >> >drwxr-xr-x 12 ivr ivr 4=2E0K Aug 18 11:26 =2E=2E
>> >> >drwxr-xr-x  2 ivr ivr 4=2E0K Aug 18 11:26 conf
>> >> >-rw-r--r--  1 ivr ivr 1=2E1K Aug 18 11:26 COPYING=2EMIT
>> >> >-rw-r--r--  1 ivr ivr  801 Aug 18 11:26 README
>> >> >drwxr-xr-x  3 ivr ivr 4=2E0K Aug 18 11:26 recipes-example
>> >> >drwxr-xr-x  3 ivr ivr 4=2E0K Aug 18 11:28 recipes-gobinet
>> >> >
>> >> >and i was create recipe:
>> >> >
>> >> >$ cat ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gob=
inet_1=2Ebb
>> >> >SUMMARY =3D "gobinet module"
>> >> >LICENSE =3D "CLOSED"
>> >> >inherit module
>> >> >SRC_URI =3D "file://gobinet=2Etar=2Exz;md5sum=3D13b5f20214a3925eb4b=
e3b831b62612f"
>> >> >#SRC_URI +=3D " file://0001_gobinet_makefile=2Epatch;md5sum=3D1261d=
f573e1b91177954f6190a12c7b1"
>> >> >
>> >> >and i put gobinet=2Etar=2Exz in:
>> >> >
>> >> >$ ll ~/work/yocto/sources/meta-gobinet/recipes-gobinet/gobinet/gobi=
net/
>> >> >total 44K
>> >> >drwxr-xr-x 2 ivr ivr 4=2E0K Aug 18 15:28 =2E
>> >> >drwxr-xr-x 3 ivr ivr 4=2E0K Aug 18 15:31 =2E=2E
>> >> >-rw-r--r-- 1 ivr ivr  30K Aug 18 15:31 gobinet=2Etar=2Exz
>> >> >
>> >> >content of gobinet=2Etar=2Exz is:
>> >> >
>> >> >tar -xf gobinet=2Etar=2Exz
>> >> >ivr@home-machine:~/work/yocto/sources/meta-gobinet/recipes-gobinet/=
gobinet/gobinet
>> >> >$ ll gobinet
>> >> >total 244K
>> >> >drwxr-xr-x 2 ivr ivr 4=2E0K Aug 17 21:32 =2E
>> >> >drwxr-xr-x 3 ivr ivr 4=2E0K Aug 18 15:39 =2E=2E
>> >> >-rw-r--r-- 1 ivr ivr 3=2E1K Aug 17 21:32 GobiNetworkManager=2Eh
>> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 GobiUSBNet=2Ec
>> >> >-rw-r--r-- 1 ivr ivr  131 Aug 17 21:32 Kconfig
>> >> >-rw-r--r-- 1 ivr ivr  324 Aug 17 21:32 kernel-deploy-guide
>> >> >-rw-r--r-- 1 ivr ivr  326 Aug 17 21:32 Makefile
>> >> >-rwxr-xr-x 1 ivr ivr  127 Aug 17 21:32 Makefile=2Ekernel
>> >> >-rw-r--r-- 1 ivr ivr  36K Aug 17 21:32 QMI=2Ec
>> >> >-rw-r--r-- 1 ivr ivr  97K Aug 17 21:32 QMIDevice=2Ec
>> >> >-rw-r--r-- 1 ivr ivr 9=2E8K Aug 17 21:32 QMIDevice=2Eh
>> >> >-rw-r--r-- 1 ivr ivr 8=2E7K Aug 17 21:32 QMI=2Eh
>> >> >-rw-r--r-- 1 ivr ivr 2=2E9K Aug 17 21:32 Readme=2Etxt
>> >> >-rw-r--r-- 1 ivr ivr  13K Aug 17 21:32 Structs=2Eh
>> >> >
>> >> >but i have error:
>> >> >
>> >> >ERROR: gobinet-1-r0 do_compile: oe_runmake failed
>> >> >ERROR: gobinet-1-r0 do_compile: Execution of
>> >> >'/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec=
-linux-gnueabi/gobinet/1-r0/temp/run=2Edo_compile=2E1734076'
>> >> >failed with exit code 1:
>> >> >make: *** No targets specified and no makefile found=2E  Stop=2E
>> >> >WARNING: exit code 1 from a shell command=2E
>> >> >
>> >> >ERROR: Logfile of failure stored in:
>> >> >/home/ivr/work/yocto/build/tmp/work/phyboard_segin_imx6ul_6-phytec-=
linux-gnueabi/gobinet/1-r0/temp/log=2Edo_compile=2E1734076
>> >> >
>> >> >that there is no Makefile but Makefile is present=2E tell me what i=
s the
>> >> >problem? Please
>> >>
>> >> Because do_compile runs from ${S} which by default is set to ${WORKD=
IR}/${PN}-${PV} (might be BPN instead of PN but does not matter)=2E Basical=
ly it expects to be run from ${WORKDIR}/gobinet-1/=2E
>> >>
>> >> However the content of the tar=2Exz is extracted directly within ${W=
ORKDIR}=2E So it's looking for a Makefile in ${WORKDIR}/gobinet-1/ but it's=
 in ${WORKDIR}=2E
>> >>
>> >> Two possible ways to do it:
>> >> 1=2E Set S to ${WORKDIR}
>> >> 2=2E Put all your files in a directory named gobinet-1  and make a t=
arball of that directory=2E
>> >>
>> >> Cheers,
>> >> Quentin
