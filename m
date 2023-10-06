Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49E3EE81E1C
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 16:53:03 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.18117.1696611177803253727
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 09:52:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YrYmuVAp;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-57b9193b1aeso1725317eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 09:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696611177; x=1697215977; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8lJlx22Lw2rILGilXjbz77Q1b7MiTRACZBaw0DBIu1s=;
        b=YrYmuVApDnSdXBJy5Osquh2PVM174dvYXQHIfV/W6SB79XCEH75IYxISZD1Jb+M+/E
         ZhzF5zPgYSemZmuI1kS7uLz8fDsZ4n2OLJ+9XuKA8x6ybrT5tJ+ZxJV2WIaN8QJcz6aS
         u9qbfzZ2ZgM9puond5s/mtM74CBHcjPQoqfG2rlfi5qtAkUwEwVFbmHqTm2NLClfiEYp
         xJo9qkqhkBE8uWocCp5VlLh+Lg9c4DqC4/OOOKvwe6LS0BLdmm9YJSEY6gPApt69COap
         Jsvcka8rglNXM4MOrK0aXVBVozJrYGUz+x6Wo5w3ZRQwJzdaFLS3Fld/gMyVPvraWaMH
         lqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696611177; x=1697215977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8lJlx22Lw2rILGilXjbz77Q1b7MiTRACZBaw0DBIu1s=;
        b=RSOm356ug0EQ613MUM8f6sayf6Y2kUunEDlsFOlO6SSHVwcG2aGX/q3xZYDf7d2Dqs
         HWgOZASHPBnaTsPI7qYd8g4GCmMwEuVJ1AdLOVccPuZSdeXoTFfpo+yqZOTiS5m1FUR/
         I+ZupKQApgp5upcpduvcCJayYK9kgRMzAkGH06cehXTiaqnm7fzggDf4kIvWg26aCvjq
         9vtx+OhBmape2sEPZ3ckhZfBtd8FSXnIWf35og4ZTjsL5sv+VyPAwkjgevBR6BHOyaZ8
         YWG87ctA8NOtIBvcLyCjZ6C4Gycxc1Wd+O1d/fpf8EeA3HFgbOjvsMW4d5+M3cSqp5Ou
         +WlQ==
X-Gm-Message-State: AOJu0YyoJrRK4mPyz10pRNtN53VmSCTLAfy7f7s4QOik6z2vmgoi7F1h
	9K9rKCG8syp0Yz7D6oX6VtWjSsWD1dK4vQ4XfEVbaQSBCz4=
X-Google-Smtp-Source: AGHT+IHnsGxrMPXrrYCTznO5wgVKPUx4oXspYXUdJVfvlRqLtDUSQ8R86o0Rt6oeL1+LdjYxTRjpSQ5SHAlf/Qit0C0=
X-Received: by 2002:a05:6870:8a24:b0:1b0:3f7f:673a with SMTP id
 p36-20020a0568708a2400b001b03f7f673amr3629079oaq.25.1696611176786; Fri, 06
 Oct 2023 09:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <Z40I.1696610660851534749.RoAt@lists.yoctoproject.org>
In-Reply-To: <Z40I.1696610660851534749.RoAt@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 6 Oct 2023 09:52:30 -0700
Message-ID: <CAMKF1srPmSa=Zi0axZvhkuX_TMN21y7DTu=sT1UpP=5u33pi0Q@mail.gmail.com>
Subject: Re: [yocto] Modify target 'march' for RISCV VisionFive 2
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 16:53:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61263

Can you post the full log.do_compile of qtbase 6.7 somewhere ?

On Fri, Oct 6, 2023 at 9:44=E2=80=AFAM Electronic Consult
<electronicconsult1@gmail.com> wrote:
>
> Hello all,
>
> I'd like to try building Qt6 for the RISCV VisionFive 2 board. My first a=
ttempt returns the error (full error at the bottom):
>
> Error: unrecognized opcode `pause', extension `zihintpause' required
>
> It seems I need to append _zihintpause to the target march. Currently 'ri=
scv64-poky-linux-g++ -dumpspecs' returns:
>
> march=3Drv64imafdc_zicsr_zifencei mabi=3Dlp64d
>
> I tried using BUILD_AS_ARCH & TUNE_FEATURES without success. Is there a w=
ay to modify 'march' on a recipe basis?
>
> Thanks,
>
> Owen
>
> [26/1146] /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-li=
nux/qtbase/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-p=
oky-linux-g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/r=
iscv64-poky-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\"execin=
fo.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUILD_=
CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000 =
-DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MOC_C=
OMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT -D=
QT_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_=
CONVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPES=
AFE_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 -D_=
LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-riscv/b=
uild/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_autoge=
n/include -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-li=
nux/qtbase/6.7.0/build/include -I/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/c=
orelib -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux=
/qtbase/6.7.0/build/src/corelib -I/home/projects/yocto/build-riscv/build/tm=
p/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/pro=
jects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/buil=
d/src/corelib/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/hom=
e/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0=
/build/include/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp/wo=
rk/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/hom=
e/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0=
/git/src/corelib/../3rdparty/double-conversion/double-conversion -I/home/pr=
ojects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=
/src/corelib/../3rdparty/double-conversion -I/home/projects/yocto/build-ris=
cv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdpar=
ty/forkfd -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-li=
nux/qtbase/6.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-riscv/=
build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/hom=
e/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0=
/recipe-sysroot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/bui=
ld/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-2.0=
/include -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wfor=
mat-security -Werror=3Dformat-security  --sysroot=3D/home/projects/yocto/bu=
ild-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot  -O=
2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map  -fmacro-prefi=
x-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/=
qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0  -fdebug-prefix-map=3D/ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/git=3D/usr/src/debug/qtbase/6.7.0-r0  -fmacro-prefix-map=3D/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/=
usr/src/debug/qtbase/6.7.0-r0  -fdebug-prefix-map=3D/home/projects/yocto/bu=
ild-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/d=
ebug/qtbase/6.7.0-r0  -fdebug-prefix-map=3D/home/projects/yocto/build-riscv=
/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D  -fmacro-=
prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/recipe-sysroot=3D  -fdebug-prefix-map=3D/home/projects/yo=
cto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysro=
ot-native=3D   -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/image=3D  -fvisibility-inlines-hid=
den -DNDEBUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inli=
nes-hidden -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /home/pr=
ojects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/bui=
ld/src/corelib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeF=
iles/Core.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/glo=
bal/qlogging.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp=
.o -c /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qt=
base/6.7.0/git/src/corelib/global/qlogging.cpp
> FAILED: src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-poky-linux-=
g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-pok=
y-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\"execinfo.h\" -DC=
ore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUILD_CORE_LIB -=
DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000 -DQT_EXPLI=
CIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MOC_COMPAT -DQT=
_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT -DQT_NO_DEBU=
G -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_CONVERSION=
S_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPESAFE_FLAGS =
-DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 -D_LARGEFILE6=
4_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-riscv/build/tmp/w=
ork/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_autogen/include =
-I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/build/include -I/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/projects/yocto/bui=
ld-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib -I/=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/build/src/corelib -I/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/projects/yoct=
o/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/core=
lib/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/inc=
lude/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64=
-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/c=
orelib/../3rdparty/double-conversion/double-conversion -I/home/projects/yoc=
to/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corel=
ib/../3rdparty/double-conversion -I/home/projects/yocto/build-riscv/build/t=
mp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/forkfd =
-I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-riscv/build/tmp/=
work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sy=
sroot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/build/tmp/wor=
k/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-2.0/include -=
fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-securi=
ty -Werror=3Dformat-security  --sysroot=3D/home/projects/yocto/build-riscv/=
build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot  -O2 -pipe -g=
 -feliminate-unused-debug-types -fcanon-prefix-map  -fmacro-prefix-map=3D/h=
ome/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7=
.0/git=3D/usr/src/debug/qtbase/6.7.0-r0  -fdebug-prefix-map=3D/home/project=
s/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=3D/u=
sr/src/debug/qtbase/6.7.0-r0  -fmacro-prefix-map=3D/home/projects/yocto/bui=
ld-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/de=
bug/qtbase/6.7.0-r0  -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/=
build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbas=
e/6.7.0-r0  -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D  -fmacro-prefix-map=
=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbas=
e/6.7.0/recipe-sysroot=3D  -fdebug-prefix-map=3D/home/projects/yocto/build-=
riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=
=3D   -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/=
riscv64-poky-linux/qtbase/6.7.0/image=3D  -fvisibility-inlines-hidden -DNDE=
BUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inlines-hidde=
n -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /home/projects/yo=
cto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/co=
relib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeFiles/Core=
.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/global/qlogg=
ing.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c /ho=
me/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.=
0/git/src/corelib/global/qlogging.cpp
> {standard input}: Assembler messages:
> {standard input}:6292: Error: unrecognized opcode `pause', extension `zih=
intpause' required
> {standard input}:6606: Error: unrecognized opcode `pause', extension `zih=
intpause' required
> {standard input}:7425: Error: unrecognized opcode `pause', extension `zih=
intpause' required
> {standard input}:7747: Error: unrecognized opcode `pause', extension `zih=
intpause' required
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61262): https://lists.yoctoproject.org/g/yocto/messag=
e/61262
> Mute This Topic: https://lists.yoctoproject.org/mt/101801678/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

