Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web12.5104.1593067960543858805
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 23:52:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBp6ZKpR;
 spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: vincent.prince.fr@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id o11so4605410wrv.9
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jun 2020 23:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tir+pdiIWpWqs3jhSHX89L9kq+eyFyyiidc1g51qIRI=;
        b=HBp6ZKpRZ5Zew6WmuSygsW/5auEgUQuoeC4pDAZaOy1CjHvo/FaT+bV7llV27NV43/
         yodCBWur4X5aFKW9CNUO1k51eJm3Uh5oDFR1r+tPs7wj7PIIfgrmdOb+60pOn+9tz+IA
         2z37ZfpNStqSkNVytGMB05Ed8r/Hfciy9Ws4rzMh7T9zXdGNkp0m7RhIKGEY4TTVgahv
         a7DMY7jFXA33lL705AhJI75cf3ct0lr4jIIuTyd6H3UX9XdydoOs5c0fWIg+2Px4Widg
         knHpgUuGn0sIdrMnm08VrFDIu1KK55J7aLreIw6Cxn/ehMrmlWKScGTUcybZ9/fqMaE6
         0uvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tir+pdiIWpWqs3jhSHX89L9kq+eyFyyiidc1g51qIRI=;
        b=FDrujxgcQPoaATw5sgiKq7EZgoX7n0ykxjbTgOYWPM27QCkgKiLcQTOpO2MAQBlYn0
         TUDWWmYYYyu0XFcgaNHPKlnIDEXCp2jCtdH01z80gbeLRHKUQ8evYBPeVC/Cd1iBr4DR
         v63U1W00b7eZto4nPqP54SWIKgA16hE/cR/CkohzrBfotwY2Qh0oM5YE4WKJEj3u597k
         5RjzO7J5Wajp5iqCaemXhBJ7Tib4TvY2mRpLVub9UETbbUL2Fphbe/6BTOSeBqHpi8og
         +M6CL6RvayybvAEiQ0G2egItuF6mXDgYUdYiEV1QUDk3h8jfQ40lfy2x2HAc//TUS8Nq
         kaSw==
X-Gm-Message-State: AOAM532vEiBoFCzxNEerjhUYUsm4Xp4PDQeuKDvOwTXvTeqIq576FDLe
	6F9BcI4dhRGw0AqyFaR0d+84Wt8B9ivhD1R8Y/o=
X-Google-Smtp-Source: ABdhPJwbLiOGU3AqH8RFUABD/Z3gnu4aswdsdVrnTgQmnSFsDp+PEzrIQDFq5U70fl2x9sFr2uIFGxinL3gV8paZs0M=
X-Received: by 2002:adf:fa89:: with SMTP id h9mr34644142wrr.120.1593067958770;
 Wed, 24 Jun 2020 23:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <6l8A.1593063929464657167.ptur@lists.yoctoproject.org>
In-Reply-To: <6l8A.1593063929464657167.ptur@lists.yoctoproject.org>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Thu, 25 Jun 2020 08:52:27 +0200
Message-ID: <CAB2nKc-LM+Gxv4AEZ+Ajavm6OqGH0sPeS6dn6FKawhCujLDZvg@mail.gmail.com>
Subject: Re: [yocto] ERRORS while building asterisk using meta-telephony layer. #yocto #raspberrypi #asterisk
To: paruchuribhavyasree@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Did you try this one?
https://github.com/ctrob67/meta-telephony/blob/master/recipes-asterisk/ast=
erisk/asterisk_13.17.2.bb

Best regards,
Vincent

Le jeu. 25 juin 2020 =C3=A0 07:45, <paruchuribhavyasree@gmail.com> a =C3=
=A9crit :
>
> Hi all,
> Greetings.
>
> I am trying to build asterisk , I am using  meta-telephony layer provide=
d from oe-layers.
> I have faced few issued while building the application "asterisk" for ra=
spberry pi 3 b.
>
> Initially I have build core-image-minimal  for Rpi and it worked success=
fully.
>
> Tried to build few applications like lighttpd, sqlite3 and they worked s=
uccessfully.
>
> Now i am trying to build an application called "asterisk" whose recipe i=
s in meta-telephony -> recipe-asterisk -> asterisk -> asterisk_13.5.0.bb (t=
his recipe is attached to this mail)  , but I have encountered few errors.(=
error log is attached to this mail).
>
> Need guidance for below Error i have faced :
>
>
> ________________________________________________________________________=
__
> WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in its =
conf/layer.conf file to list the core layer names it is compatible with.
> WARNING: Layer telephony should set LAYERSERIES_COMPAT_telephony in its =
conf/layer.conf file to list the core layer names it is compatible with.
> Loading cache: 100% |###################################################=
########################################################| Time: 0:00:00
> Loaded 1370 entries from dependency cache.
> ERROR: ParseError at /home/bhavya/dialtronics/yocto/poky-dunfell/meta-te=
lephony/classes/waf-samba.bbclass:4: Could not inherit file classes/pythonn=
ative.bbclass
> ________________________________________________________________________=
___
>
>
> >Then I included pythonnative.bb file along with its dependencies after =
that I am Facing the following error
>
> ________________________________________________________________________=
___
> bhavya@bhavya:~/dialtronics/yocto/workspace/yocto_rpi$ bitbake asterisk
> Loading cache: 100% |###################################################=
########################################################| Time: 0:00:00
> Loaded 1992 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "raspberrypi3"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.1"
> TUNE_FEATURES        =3D "arm vfp cortexa7 neon vfpv4 thumb callconventi=
on-hard"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp       =3D "dunfell:febbe2944c0c4a04b85fa98fdc261186115954=
d8"
> meta-rpi             =3D "master:39cf54c3cb429f2c6e0a000e79f6f06b39e2fa8=
b"
> meta-telephony       =3D "master:9e50dbdd1ee672494758d29482444cf40a36d1b=
a"
>
> Initialising tasks: 100% |##############################################=
########################################################| Time: 0:00:00
> Sstate summary: Wanted 51 Found 33 Missed 18 Current 611 (64% match, 97%=
 complete)
> NOTE: Executing Tasks
> ERROR: asterisk-13.5.0-r0 do_compile: oe_runmake failed
> ERROR: asterisk-13.5.0-r0 do_compile: Execution of '/home/bhavya/dialtro=
nics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-=
gnueabi/asterisk/13.5.0-r0/temp/run.do_compile.31691' failed with exit code=
 1:
> CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++  -mthumb -mfpu=3Dneon-vfpv4 =
-mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong  -D_FORTIFY_S=
OURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D=
/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-ne=
on-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=3D"" AR=
=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto/workspa=
ce/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/1=
3.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L/home/bh=
avya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib       =
                  -L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/=
work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-s=
ysroot-native/lib                         -Wl,--enable-new-dtags           =
              -Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yoct=
o_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r=
0/recipe-sysroot-native/usr/lib                         -Wl,-rpath-link,/ho=
me/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib      =
                   -Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yoct=
o_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r=
0/recipe-sysroot-native/usr/lib                         -Wl,-rpath,/home/bh=
avya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib           =
              -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/h=
ome/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sysroots-uninative/x86=
_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect CONFIGURE_SILENT=3D"=
--silent" menuselect
> make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/yo=
cto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0=
-r0/asterisk-13.5.0/menuselect'
> gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall    -c -o menuselect.o=
 menuselect.c
> gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o strcompat.o s=
trcompat.c
> gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroo=
t-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o menuselect_st=
ub.o menuselect_stub.c
> Generating input for menuselect ...
> Building Documentation For: channels menuselect.c:35:27: fatal error: li=
bxml/parser.h: No such file or directory
> compilation terminated.
> <builtin>: recipe for target 'menuselect.o' failed
> make[1]: *** [menuselect.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/work=
space/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asteris=
k/13.5.0-r0/asterisk-13.5.0/menuselect'
> Makefile:950: recipe for target 'menuselect/menuselect' failed
> make: *** [menuselect/menuselect] Error 2
> make: *** Waiting for unfinished jobs....
> codecs formats cdr cel bridges funcs tests main res addons
> WARNING: exit code 1 from a shell command.
>
> ERROR: Logfile of failure stored in: /home/bhavya/dialtronics/yocto/work=
space/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asteris=
k/13.5.0-r0/temp/log.do_compile.31691
> Log data follows:
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', =
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8
> | CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++  -mthumb -mfpu=3Dneon-vfpv=
4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong  -D_FORTIFY=
_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2h=
f-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=3D"" =
AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto/worksp=
ace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/=
13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L/home/b=
havya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib      =
                   -L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp=
/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-=
sysroot-native/lib                         -Wl,--enable-new-dtags          =
               -Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yoc=
to_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-=
r0/recipe-sysroot-native/usr/lib                         -Wl,-rpath-link,/h=
ome/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib     =
                    -Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yoc=
to_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-=
r0/recipe-sysroot-native/usr/lib                         -Wl,-rpath,/home/b=
havya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib          =
               -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sysroots-uninative/x8=
6_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect CONFIGURE_SILENT=3D=
"--silent" menuselect
> | make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/=
yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5=
.0-r0/asterisk-13.5.0/menuselect'
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall    -c -o menuselect=
.o menuselect.c
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o strcompat.o=
 strcompat.c
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o menuselect_=
stub.o menuselect_stub.c
> | Generating input for menuselect ...
> | Building Documentation For: channels menuselect.c:35:27: fatal error: =
libxml/parser.h: No such file or directory
> | compilation terminated.
> | <builtin>: recipe for target 'menuselect.o' failed
> | make[1]: *** [menuselect.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/wo=
rkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/aster=
isk/13.5.0-r0/asterisk-13.5.0/menuselect'
> | Makefile:950: recipe for target 'menuselect/menuselect' failed
> | make: *** [menuselect/menuselect] Error 2
> | make: *** Waiting for unfinished jobs....
> | codecs formats cdr cel bridges funcs tests main res addons
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/bhavya/dialtronics/yocto/workspace/yocto_rp=
i/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/te=
mp/run.do_compile.31691' failed with exit code 1:
> | CC=3D"cc" CXX=3D"arm-poky-linux-gnueabi-g++  -mthumb -mfpu=3Dneon-vfpv=
4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong  -D_FORTIFY=
_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=
=3D/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2h=
f-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot" LD=3D"" =
AR=3D"" RANLIB=3D"" CFLAGS=3D"-isystem/home/bhavya/dialtronics/yocto/worksp=
ace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/=
13.5.0-r0/recipe-sysroot-native/usr/include -O2 -pipe" LDFLAGS=3D"-L/home/b=
havya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/usr/lib      =
                   -L/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp=
/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-=
sysroot-native/lib                         -Wl,--enable-new-dtags          =
               -Wl,-rpath-link,/home/bhavya/dialtronics/yocto/workspace/yoc=
to_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-=
r0/recipe-sysroot-native/usr/lib                         -Wl,-rpath-link,/h=
ome/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib     =
                    -Wl,-rpath,/home/bhavya/dialtronics/yocto/workspace/yoc=
to_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-=
r0/recipe-sysroot-native/usr/lib                         -Wl,-rpath,/home/b=
havya/dialtronics/yocto/workspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysroot-native/lib          =
               -Wl,-O1 -Wl,--allow-shlib-undefined -Wl,--dynamic-linker=3D/=
home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/sysroots-uninative/x8=
6_64-linux/lib/ld-linux-x86-64.so.2" make -C menuselect CONFIGURE_SILENT=3D=
"--silent" menuselect
> | make[1]: Entering directory '/home/bhavya/dialtronics/yocto/workspace/=
yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5=
.0-r0/asterisk-13.5.0/menuselect'
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall    -c -o menuselect=
.o menuselect.c
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o strcompat.o=
 strcompat.c
> | gcc -isystem/home/bhavya/dialtronics/yocto/workspace/yocto_rpi/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/asterisk/13.5.0-r0/recipe-sysr=
oot-native/usr/include -O2 -pipe -g -D_GNU_SOURCE -Wall   -c -o menuselect_=
stub.o menuselect_stub.c
> | Generating input for menuselect ...
> | Building Documentation For: channels menuselect.c:35:27: fatal error: =
libxml/parser.h: No such file or directory
> | compilation terminated.
> | <builtin>: recipe for target 'menuselect.o' failed
> | make[1]: *** [menuselect.o] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | pbx apps make[1]: Leaving directory '/home/bhavya/dialtronics/yocto/wo=
rkspace/yocto_rpi/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/aster=
isk/13.5.0-r0/asterisk-13.5.0/menuselect'
> | Makefile:950: recipe for target 'menuselect/menuselect' failed
> | make: *** [menuselect/menuselect] Error 2
> | make: *** Waiting for unfinished jobs....
> | codecs formats cdr cel bridges funcs tests main res addons
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (/home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/=
recipes-asterisk/asterisk/asterisk_13.5.0.bb:do_compile) failed with exit c=
ode '1'
> NOTE: Tasks Summary: Attempted 2052 tasks of which 2028 didn't need to b=
e rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/bhavya/dialtronics/yocto/poky-dunfell/meta-telephony/recipes-ast=
erisk/asterisk/asterisk_13.5.0.bb:do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
> ________________________________________________________________________=
__________________________________________________________
>
>
> Please kindly help me to solve the issue.
>
> Thanks in advance. : )
> Contact : paruchuribhavyasree@gmail.com
> ~Bhavya
>
>
>=20
