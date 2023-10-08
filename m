Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65182E95A82
	for <webhook@archiver.kernel.org>; Sun,  8 Oct 2023 13:16:00 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.37520.1696770952916614277
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Oct 2023 06:15:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HY84tmL6;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: electronicconsult1@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-53406799540so6613356a12.1
        for <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 06:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696770951; x=1697375751; darn=lists.yoctoproject.org;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zvEwrzTUx+bkYMuDR04s1r3s8AbAOmlVD6bXEjP+jPU=;
        b=HY84tmL6IZ6+cVUIlapFCyQ16WKmTrlWs4COvd1IYSz2BSw3WvRzq+rSZk6REk0zDr
         SiTKKE+USTXK52I13BMqGl//KY89kQOb4JqEj7ZgctK9KINq2K2W7n18ZryLjtQwr5WC
         14RwMmfMHPuGB0zWaxwATHN9KLV2lG8YJNKD5jpM2Yh/O7r5yZsZQEnyFVg4XbTm/fty
         c3f3gZ0aLRk17ba5LIhrU3DOzdJjl+g8qDMw1KQFhVfl03RqmSBAkB/6Qvv1+VOjw/AA
         1zsUIU7dkh9tsHDuw1p76zRb508DuMqFqpPO135HlMXMz/wjlKyrDvIbgBNaEs1DqiiE
         oivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696770951; x=1697375751;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zvEwrzTUx+bkYMuDR04s1r3s8AbAOmlVD6bXEjP+jPU=;
        b=oeJaQ4Ck7crpEWTD7eHAA9HP4Myi49pscKxQSu2OZpkJcwgZpgNabpkTQBflFl0cFy
         rgwe0XnLGgNTeCcd035VbLilIrvaKRHCJriyKBG9rwKzbeKEHcH5t8ZygtGzyy1YC25R
         mYRNdeMOh9vTQtW/SRRSXkPoFzeshz3M0uIH7g90eKnwSMbaVY8bKqM7RTgWpYpv+hYn
         TuI7lwKqRvbsaF2rQlbWq4FqEVNPn0vWadHHBXcMflmUjZ0+ADvAA5oGezOFbhjVHrrI
         xdzDEjIEsxu+ooAgPMyvqf2sudO7GyRmWjRt+n9P9It9mrM4kJJiQWtzVFV8AdDgK46e
         bHVQ==
X-Gm-Message-State: AOJu0YxoyLjAAGQ6QKTXfAxP5pk2CVJ3EfScZKLcGqggK3rPnfo1xHOb
	DGmSL+WLbvjOVEJ4COhzzlyEm5Zf7BnnXh3I2o91OQACKBA=
X-Google-Smtp-Source: AGHT+IE7cc20rkhpmDCA0dR91MmYDgs/BVoMOzJZkilszMv/RrNnHgf1UeS75S/w4DRT3a8iz00PFzbV0dxDtu8KmjA=
X-Received: by 2002:aa7:dd12:0:b0:51e:4439:f474 with SMTP id
 i18-20020aa7dd12000000b0051e4439f474mr10827671edv.35.1696770950553; Sun, 08
 Oct 2023 06:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <Z40I.1696610660851534749.RoAt@lists.yoctoproject.org> <CAMKF1srPmSa=Zi0axZvhkuX_TMN21y7DTu=sT1UpP=5u33pi0Q@mail.gmail.com>
In-Reply-To: <CAMKF1srPmSa=Zi0axZvhkuX_TMN21y7DTu=sT1UpP=5u33pi0Q@mail.gmail.com>
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Sun, 8 Oct 2023 14:15:38 +0100
Message-ID: <CAGUWaEETBbUr__2eC3_chYxCQHqbwQujKyJp5KBTZZt_X76zTw@mail.gmail.com>
Subject: Re: [yocto] Modify target 'march' for RISCV VisionFive 2
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="000000000000c630540607344573"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Oct 2023 13:16:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61278

--000000000000c630540607344573
Content-Type: multipart/alternative; boundary="000000000000c630530607344571"

--000000000000c630530607344571
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Apologies, I think I sent a previous response as a PM rather than a post.

Please find attached a zip of the compile log.

Thanks for looking.

Regards,

Owen

On Fri, 6 Oct 2023 at 17:52, Khem Raj <raj.khem@gmail.com> wrote:

> Can you post the full log.do_compile of qtbase 6.7 somewhere ?
>
> On Fri, Oct 6, 2023 at 9:44=E2=80=AFAM Electronic Consult
> <electronicconsult1@gmail.com> wrote:
> >
> > Hello all,
> >
> > I'd like to try building Qt6 for the RISCV VisionFive 2 board. My first
> attempt returns the error (full error at the bottom):
> >
> > Error: unrecognized opcode `pause', extension `zihintpause' required
> >
> > It seems I need to append _zihintpause to the target march. Currently
> 'riscv64-poky-linux-g++ -dumpspecs' returns:
> >
> > march=3Drv64imafdc_zicsr_zifencei mabi=3Dlp64d
> >
> > I tried using BUILD_AS_ARCH & TUNE_FEATURES without success. Is there a
> way to modify 'march' on a recipe basis?
> >
> > Thanks,
> >
> > Owen
> >
> > [26/1146]
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-poky-linux-=
g++
> --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-=
linux/qtbase/6.7.0/recipe-sysroot
> -DBACKTRACE_HEADER=3D\"execinfo.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNIN=
GS
> -DQT_BUILDING_QT -DQT_BUILD_CORE_LIB -DQT_DEPRECATED_WARNINGS
> -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000
> -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1
> -DQT_MOC_COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII
> -DQT_NO_CONTEXTLESS_CONNECT -DQT_NO_DEBUG -DQT_NO_FOREACH
> -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT
> -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPESAFE_FLAGS
> -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000
> -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/Core_autogen/include
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/global
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/kernel
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/tinycbor/src
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore/6.7.0
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore/6.7.0/QtCore
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/double-conversion/double-conversion
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/double-conversion
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/forkfd
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/.rcc
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/mkspecs/linux-g++
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/recipe-sysroot/usr/include/glib-2.0
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/recipe-sysroot/usr/lib/glib-2.0/include
> -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
> -Wformat-security -Werror=3Dformat-security
> --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-=
linux/qtbase/6.7.0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D
>  -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/image=3D
> -fvisibility-inlines-hidden -DNDEBUG -O3 -std=3Dc++17 -fPIC
> -fvisibility=3Dhidden -fvisibility-inlines-hidden -Wall -Wextra
> -Wsuggest-override -Winvalid-pch -include
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/build/src/corelib/CMakeFiles/Core.dir/cmake_pch.hxx
> -MD -MT src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -MF
> src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o.d -o
> src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/git/src/corelib/global/qlogging.cpp
> > FAILED: src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o
> >
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-poky-linux-=
g++
> --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-=
linux/qtbase/6.7.0/recipe-sysroot
> -DBACKTRACE_HEADER=3D\"execinfo.h\" -DCore_EXPORTS -DQT_ASCII_CAST_WARNIN=
GS
> -DQT_BUILDING_QT -DQT_BUILD_CORE_LIB -DQT_DEPRECATED_WARNINGS
> -DQT_DISABLE_DEPRECATED_UP_TO=3D0x050000
> -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1
> -DQT_MOC_COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII
> -DQT_NO_CONTEXTLESS_CONNECT -DQT_NO_DEBUG -DQT_NO_FOREACH
> -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWING_CONVERSIONS_IN_CONNECT
> -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TYPESAFE_FLAGS
> -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000
> -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/Core_autogen/include
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/global
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/kernel
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/tinycbor/src
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore/6.7.0
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/include/QtCore/6.7.0/QtCore
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/double-conversion/double-conversion
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/double-conversion
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/src/corelib/../3rdparty/forkfd
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/build/src/corelib/.rcc
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/git/mkspecs/linux-g++
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/recipe-sysroot/usr/include/glib-2.0
> -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtba=
se/6.7.0/recipe-sysroot/usr/lib/glib-2.0/include
> -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat
> -Wformat-security -Werror=3Dformat-security
> --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-=
linux/qtbase/6.7.0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-map
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D
> -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/risc=
v64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D
>  -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/image=3D
> -fvisibility-inlines-hidden -DNDEBUG -O3 -std=3Dc++17 -fPIC
> -fvisibility=3Dhidden -fvisibility-inlines-hidden -Wall -Wextra
> -Wsuggest-override -Winvalid-pch -include
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/build/src/corelib/CMakeFiles/Core.dir/cmake_pch.hxx
> -MD -MT src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -MF
> src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o.d -o
> src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c
> /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase=
/6.7.0/git/src/corelib/global/qlogging.cpp
> > {standard input}: Assembler messages:
> > {standard input}:6292: Error: unrecognized opcode `pause', extension
> `zihintpause' required
> > {standard input}:6606: Error: unrecognized opcode `pause', extension
> `zihintpause' required
> > {standard input}:7425: Error: unrecognized opcode `pause', extension
> `zihintpause' required
> > {standard input}:7747: Error: unrecognized opcode `pause', extension
> `zihintpause' required
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#61262):
> https://lists.yoctoproject.org/g/yocto/message/61262
> > Mute This Topic: https://lists.yoctoproject.org/mt/101801678/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000c630530607344571
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apologies, I think I sent a previous response as a PM=
 rather than a post.</div><div><br></div><div>Please find attached a zip of=
 the compile log.</div><div><br></div><div>Thanks for looking.<br></div><di=
v><br></div><div>Regards,</div><div><br></div><div>Owen<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 6 =
Oct 2023 at 17:52, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.k=
hem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Can you post the full log.do_compile of qtbase 6.7 somewhere ?=
<br>
<br>
On Fri, Oct 6, 2023 at 9:44=E2=80=AFAM Electronic Consult<br>
&lt;<a href=3D"mailto:electronicconsult1@gmail.com" target=3D"_blank">elect=
ronicconsult1@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt;<br>
&gt; I&#39;d like to try building Qt6 for the RISCV VisionFive 2 board. My =
first attempt returns the error (full error at the bottom):<br>
&gt;<br>
&gt; Error: unrecognized opcode `pause&#39;, extension `zihintpause&#39; re=
quired<br>
&gt;<br>
&gt; It seems I need to append _zihintpause to the target march. Currently =
&#39;riscv64-poky-linux-g++ -dumpspecs&#39; returns:<br>
&gt;<br>
&gt; march=3Drv64imafdc_zicsr_zifencei mabi=3Dlp64d<br>
&gt;<br>
&gt; I tried using BUILD_AS_ARCH &amp; TUNE_FEATURES without success. Is th=
ere a way to modify &#39;march&#39; on a recipe basis?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Owen<br>
&gt;<br>
&gt; [26/1146] /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky=
-linux/qtbase/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv6=
4-poky-linux-g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/wor=
k/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\&quo=
t;execinfo.h\&quot; -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_Q=
T -DQT_BUILD_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_T=
O=3D0x050000 -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=
=3D1 -DQT_MOC_COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXT=
LESS_CONNECT -DQT_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQ=
T_NO_NARROWING_CONVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMES=
PACE -DQT_TYPESAFE_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=
=3D0x070000 -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yoct=
o/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/core=
lib/Core_autogen/include -I/home/projects/yocto/build-riscv/build/tmp/work/=
riscv64-poky-linux/qtbase/6.7.0/build/include -I/home/projects/yocto/build-=
riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore -=
I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/=
6.7.0/git/src/corelib -I/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/build/src/corelib -I/home/projects/yocto/build=
-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/glo=
bal -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qt=
base/6.7.0/build/src/corelib/kernel -I/home/projects/yocto/build-riscv/buil=
d/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/tiny=
cbor/src -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/build/include/QtCore/6.7.0 -I/home/projects/yocto/build-ris=
cv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.=
0/QtCore -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/git/src/corelib/../3rdparty/double-conversion/double-conver=
sion -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/q=
tbase/6.7.0/git/src/corelib/../3rdparty/double-conversion -I/home/projects/=
yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/co=
relib/../3rdparty/forkfd -I/home/projects/yocto/build-riscv/build/tmp/work/=
riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/.rcc -I/home/projects/yoc=
to/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/l=
inux-g++ -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/recipe-sysroot/usr/include/glib-2.0 -I/home/projects/yocto/=
build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/u=
sr/lib/glib-2.0/include -fstack-protector-strong=C2=A0 -O2 -D_FORTIFY_SOURC=
E=3D2 -Wformat -Wformat-security -Werror=3Dformat-security=C2=A0 --sysroot=
=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbas=
e/6.7.0/recipe-sysroot=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -f=
canon-prefix-map=C2=A0 -fmacro-prefix-map=3D/home/projects/yocto/build-risc=
v/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbas=
e/6.7.0-r0=C2=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/buil=
d/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.=
0-r0=C2=A0 -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/=
work/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=
=C2=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work=
/riscv64-poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=
=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/ri=
scv64-poky-linux/qtbase/6.7.0/recipe-sysroot=3D=C2=A0 -fmacro-prefix-map=3D=
/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6=
.7.0/recipe-sysroot=3D=C2=A0 -fdebug-prefix-map=3D/home/projects/yocto/buil=
d-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-nativ=
e=3D=C2=A0 =C2=A0-fmacro-prefix-map=3D/home/projects/yocto/build-riscv/buil=
d/tmp/work/riscv64-poky-linux/qtbase/6.7.0/image=3D=C2=A0 -fvisibility-inli=
nes-hidden -DNDEBUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibili=
ty-inlines-hidden -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/build/src/corelib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib=
/CMakeFiles/Core.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.=
dir/global/qlogging.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogg=
ing.cpp.o -c /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-l=
inux/qtbase/6.7.0/git/src/corelib/global/qlogging.cpp<br>
&gt; FAILED: src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o<br>
&gt; /home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtb=
ase/6.7.0/recipe-sysroot-native/usr/bin/riscv64-poky-linux/riscv64-poky-lin=
ux-g++ --sysroot=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-=
poky-linux/qtbase/6.7.0/recipe-sysroot -DBACKTRACE_HEADER=3D\&quot;execinfo=
.h\&quot; -DCore_EXPORTS -DQT_ASCII_CAST_WARNINGS -DQT_BUILDING_QT -DQT_BUI=
LD_CORE_LIB -DQT_DEPRECATED_WARNINGS -DQT_DISABLE_DEPRECATED_UP_TO=3D0x0500=
00 -DQT_EXPLICIT_QFILE_CONSTRUCTION_FROM_PATH -DQT_LEAN_HEADERS=3D1 -DQT_MO=
C_COMPAT -DQT_NO_AS_CONST -DQT_NO_CAST_TO_ASCII -DQT_NO_CONTEXTLESS_CONNECT=
 -DQT_NO_DEBUG -DQT_NO_FOREACH -DQT_NO_JAVA_STYLE_ITERATORS -DQT_NO_NARROWI=
NG_CONVERSIONS_IN_CONNECT -DQT_NO_QEXCHANGE -DQT_NO_USING_NAMESPACE -DQT_TY=
PESAFE_FLAGS -DQT_USE_QSTRINGBUILDER -DQT_WARN_DEPRECATED_UP_TO=3D0x070000 =
-D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -I/home/projects/yocto/build-risc=
v/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/Core_aut=
ogen/include -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky=
-linux/qtbase/6.7.0/build/include -I/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore -I/home/proje=
cts/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/sr=
c/corelib -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-li=
nux/qtbase/6.7.0/build/src/corelib -I/home/projects/yocto/build-riscv/build=
/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/corelib/global -I/home/=
projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/b=
uild/src/corelib/kernel -I/home/projects/yocto/build-riscv/build/tmp/work/r=
iscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rdparty/tinycbor/src -I/=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/build/include/QtCore/6.7.0 -I/home/projects/yocto/build-riscv/build/tmp=
/work/riscv64-poky-linux/qtbase/6.7.0/build/include/QtCore/6.7.0/QtCore -I/=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/git/src/corelib/../3rdparty/double-conversion/double-conversion -I/home=
/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/=
git/src/corelib/../3rdparty/double-conversion -I/home/projects/yocto/build-=
riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/src/corelib/../3rd=
party/forkfd -I/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky=
-linux/qtbase/6.7.0/build/src/corelib/.rcc -I/home/projects/yocto/build-ris=
cv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/git/mkspecs/linux-g++ -I/=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/recipe-sysroot/usr/include/glib-2.0 -I/home/projects/yocto/build-riscv/=
build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot/usr/lib/glib-=
2.0/include -fstack-protector-strong=C2=A0 -O2 -D_FORTIFY_SOURCE=3D2 -Wform=
at -Wformat-security -Werror=3Dformat-security=C2=A0 --sysroot=3D/home/proj=
ects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recip=
e-sysroot=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fcanon-prefix-=
map=C2=A0 -fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/w=
ork/riscv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=
=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/ri=
scv64-poky-linux/qtbase/6.7.0/git=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -f=
macro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-=
poky-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebu=
g-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky=
-linux/qtbase/6.7.0/build=3D/usr/src/debug/qtbase/6.7.0-r0=C2=A0 -fdebug-pr=
efix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-lin=
ux/qtbase/6.7.0/recipe-sysroot=3D=C2=A0 -fmacro-prefix-map=3D/home/projects=
/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sy=
sroot=3D=C2=A0 -fdebug-prefix-map=3D/home/projects/yocto/build-riscv/build/=
tmp/work/riscv64-poky-linux/qtbase/6.7.0/recipe-sysroot-native=3D=C2=A0 =C2=
=A0-fmacro-prefix-map=3D/home/projects/yocto/build-riscv/build/tmp/work/ris=
cv64-poky-linux/qtbase/6.7.0/image=3D=C2=A0 -fvisibility-inlines-hidden -DN=
DEBUG -O3 -std=3Dc++17 -fPIC -fvisibility=3Dhidden -fvisibility-inlines-hid=
den -Wall -Wextra -Wsuggest-override -Winvalid-pch -include /home/projects/=
yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.7.0/build/src/=
corelib/CMakeFiles/Core.dir/cmake_pch.hxx -MD -MT src/corelib/CMakeFiles/Co=
re.dir/global/qlogging.cpp.o -MF src/corelib/CMakeFiles/Core.dir/global/qlo=
gging.cpp.o.d -o src/corelib/CMakeFiles/Core.dir/global/qlogging.cpp.o -c /=
home/projects/yocto/build-riscv/build/tmp/work/riscv64-poky-linux/qtbase/6.=
7.0/git/src/corelib/global/qlogging.cpp<br>
&gt; {standard input}: Assembler messages:<br>
&gt; {standard input}:6292: Error: unrecognized opcode `pause&#39;, extensi=
on `zihintpause&#39; required<br>
&gt; {standard input}:6606: Error: unrecognized opcode `pause&#39;, extensi=
on `zihintpause&#39; required<br>
&gt; {standard input}:7425: Error: unrecognized opcode `pause&#39;, extensi=
on `zihintpause&#39; required<br>
&gt; {standard input}:7747: Error: unrecognized opcode `pause&#39;, extensi=
on `zihintpause&#39; required<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#61262): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/61262" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/61262</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10180167=
8/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/101801678/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000c630530607344571--

--000000000000c630540607344573
Content-Type: application/zip; name="log.do_compile.13933.zip"
Content-Disposition: attachment; filename="log.do_compile.13933.zip"
Content-Transfer-Encoding: base64
Content-ID: <f_lnhhkwuw0>
X-Attachment-Id: f_lnhhkwuw0

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
2QFQSwUGAAAAAAEAAQBmAAAAH5QAAAAA
--000000000000c630540607344573--

