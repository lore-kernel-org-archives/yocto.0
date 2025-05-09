Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4208CC3ABC3
	for <webhook@archiver.kernel.org>; Fri,  9 May 2025 14:26:23 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.1.1746800774334024182
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 May 2025 07:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=h3qrCWpz;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54addb5a139so2580498e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 May 2025 07:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746800771; x=1747405571; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cc2LRTZ5F4x0UssIrcaF6xqGX2imdJsbiMde2nSWM3Q=;
        b=h3qrCWpzU7iJ4MNCkpuWXR/y9MFmldUf/7bj8HKCUiCITXUGYGl/nz9X496TofZdns
         gesBE8sGWGzPzR7IszEuZQU0vWUBl25eGtcU9YNIVxNRwZv9LTAKYuuC8A1zgfvplQbQ
         zqPwPinADjPR9/oUmHciVVK6RkR4erRnRQcxZJgMLzotwYP3/DPY7YUM9QObVnAn9Sm2
         7bYkNfGF9zAk3HLbotzaIbFkklJEZRJiS2jovYglv7vvM17UAIkEY1LjvBpeq+wPlRCN
         W2/QoacrTHV3Dp3s0lVEDgQDf4SZX3+7y5Nq5vQfPJMG7FN5k0M3bGGthmCnuu3HDEwU
         KQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746800771; x=1747405571;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cc2LRTZ5F4x0UssIrcaF6xqGX2imdJsbiMde2nSWM3Q=;
        b=NDLTOY6YEm2npOwmKOyufdR2LFEgPXN/25HU4VexOL7Iwz3mQh8+9JM5UjLNv9TrCY
         9SbeTW0Y/VymUfoweN3fygM/jqahk6YPwnohdhdf1y0F5YPzXlysOC9RxyHrb0160XTs
         8XdKj37FKcHDA2hAmIIWtu9YMXFmocM3Fa5bmLvpoWXmlkX3g3B0I6LHA4VEmYQ/Gfrl
         CVJuxR01AeaBZUV+U9HcC1casQ1QbDcu1l2oiXVBeFA8xO0130H/tOKnBTcvrtFgJSml
         kvrZu0MI/QFtcbOuQ3XQ6ff+IMTArc/WjtxY212aFnan3ghjpeVp9z6C2uU6jFwdwEAR
         DMew==
X-Gm-Message-State: AOJu0Yy6wiuMUOm2sfX+6eT6KtNsKBC2QcCRcyCPHFu0mpfs2XbJ1UEr
	SJYywEUvGrO6L2tG39mU6510YjF8a8qS9VXgKg8Ti8RGbYGdlaLG4hjiUkoG9PsEMsA3Lco4GCl
	P4g4sCWGk7AEnvHfFBkvVjNUusMk/GQ==
X-Gm-Gg: ASbGncvD4dUSVZ6N6dXj06T6+6deyZ8AWuTgi+Q2xr7MDV1wCUdH44m8Yykl+au/QzG
	BtoBPRKpj99sAwv0qBMCupwEknL548l/LBx/R++uKRJk9diAjN67q51tmTTjdz62RXHRt6KuADo
	pEQNh0ZxDOh/uVUp4vMbeNvuiixO6TtQ7/OueOYz1MbBNTM1Q=
X-Google-Smtp-Source: AGHT+IFY7cI1QkP7tYrSp2uly2qdQqbdURB2onYb/QMogMsE15RE6b41kdIsVIbGTJxE6K4QcXu0X45fGkkDwLrgc0c=
X-Received: by 2002:a05:6512:3c96:b0:54f:c1cd:c63d with SMTP id
 2adb3069b0e04-54fc67e4683mr1446278e87.54.1746800770477; Fri, 09 May 2025
 07:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org> <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
In-Reply-To: <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 9 May 2025 08:25:57 -0600
X-Gm-Features: AX0GCFsHfDdCBHmB6HWj1OloY_t2wQmmuFe1Gxz4nYYvggN36Tcdz8bVapqUOK0
Message-ID: <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 May 2025 14:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65302

There is no setup script on Windows to "install" the SDK like there is
on Linux, so there's not really anything missing. There shouldn't be
any relocation that needs to happen, but it's also possible cmake
isn't working in the MinGW SDK for some reason.

On Fri, May 9, 2025 at 6:13=E2=80=AFAM David Daniel via lists.yoctoproject.=
org
<david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
>
> What I realize is that on Linux I get a script to execute that then
> relocates the SDK, rewrites paths etc. The windows SDK is just an
> archive, there is no installer script. Nevertheless it contains post-
> relocate-setup.sh - but no Windows batch file.
>
> Do my problems stem from the fact that the SDK is not setup correctly?
> So I am missing an installation or post-decompress step?
>
> Still struggling, thanks for any hints!
>
> BR
> Dave
>
> Am Freitag, dem 09.05.2025 um 08:55 +0000 schrieb David Daniel via
> lists.yoctoproject.org:
> > Hi there
> >
> > I have trouble using the SDK on Windows generated by meta-mingw.
> > There
> > are a few minor changes that need to be made to the environment setup
> > file, namely the SDKROOT variable needs to be modified to only
> > contain
> > forward slashes - those paths get passed to gcc. So I modified this
> > according to some link I found:
> >
> > https://github.com/darko31/yocto_cross_compile_sdk/blob/main/readme_win=
.md
> >
> > By replacing the first line with
> >
> >     set SDKROOT=3D%~dp0%
> >     set "SDKROOT=3D%SDKROOT:\=3D/%"
> >
> > The second thing was that the cmake.bat file was missing in the
> > windows
> > sysroots environment.d folder, there was only a cmake.sh file. But
> > its
> > easy to create it with
> >
> >     set
> > CMAKE_TOOLCHAIN_FILE=3D%OECORE_NATIVE_SYSROOT%/usr/share/cmake/OEToolch
> > ainConfig.cmake
> >     set OE_CMAKE_FIND_LIBRARY_CUSTOM_LIB_SUFFIX=3D64
> >
> > The third thing was that within the Windows sysroots usr/share/cmake
> > folder there was no generated toolchain file that came from the
> > template. So there were only two files:
> >
> > - OEToolchainConfig.cmake
> > - SDKToolchainConfig.cmake.template
> >
> > Whereas in the linux SDK there is a third file that was generated by
> > the SDKToolchainConfig.cmake.template file.
> >
> > But even when I fix the above I cannot succeed to configure a build
> > with cmake and the toolchain. I always get the error "is not able to
> > compile a simple test program." with complaints that libs and objects
> > cannot be found (cannot find Scrt1.o, cannot find crti.o, cannot find
> > crtbebinS.o, cannot find -lgcc).
> >
> > I simply call:
> >
> >    cmake -G Ninja --toolchain %CMAKE_TOOLCHAIN_FILE% -B build -S .
> >
> > And I get
> >
> >     -- The CXX compiler identification is GNU 14.2.0
> >     -- Detecting CXX compiler ABI info
> >     -- Detecting CXX compiler ABI info - failed
> >     -- Check for working CXX compiler:
> > C:/dev/sdk/bf133/sysroots/x86_64-w64-mingw32/usr/bin/powerpc64-bf133-
> > linux/powerpc64-bf133-linux-g++.exe
> >     -- Check for working CXX compiler:
> > C:/dev/sdk/bf133/sysroots/x86_64-w64-mingw32/usr/bin/powerpc64-bf133-
> > linux/powerpc64-bf133-linux-g++.exe - broken
> >     CMake Error at C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/share/cmake-3.31/Modules/CMakeTestCXXCompiler.cmake:73
> > (message):
> >       The C++ compiler
> >
> >         "C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/bin/powerpc64-bf133-linux/powerpc64-bf133-linux-g++.exe"
> >
> >       is not able to compile a simple test program.
> >
> >       It fails with the following output:
> >
> >         Change Dir:
> > 'C:/dev/netcan/build/CMakeFiles/CMakeScratch/TryCompile-9amgcb'
> >
> >         Run Build Command(s): C:/PROGRA~1/ninja/ninja.exe -v
> > cmTC_01890
> >         [1/2] C:\dev\sdk\bf133\sysroots\x86_64-w64-
> > mingw32\usr\bin\powerpc64-bf133-linux\powerpc64-bf133-linux-g++.exe
> > -mbig-endian -mhard-float -m64 -mcpu=3De5500 -fstack-protector-strong
> > -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-
> > security --sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux -
> > -sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux   -O2 -g  -
> > pipe -o CMakeFiles/cmTC_01890.dir/testCXXCompiler.cxx.o -c
> > C:/dev/netcan/build/CMakeFiles/CMakeScratch/TryCompile-
> > 9amgcb/testCXXCompiler.cxx
> >         [2/2] C:\Windows\system32\cmd.exe /C "cd . &&
> > C:\dev\sdk\bf133\sysroots\x86_64-w64-mingw32\usr\bin\powerpc64-bf133-
> > linux\powerpc64-bf133-linux-g++.exe   -mbig-endian -mhard-float -m64
> > -mcpu=3De5500 -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -
> > Wformat -Wformat-security -Werror=3Dformat-security --
> > sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux --
> > sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux -O2 -g  -
> > pipe -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed  -Wl,-z,relro,-
> > z,now CMakeFiles/cmTC_01890.dir/testCXXCompiler.cxx.o -o cmTC_01890
> > && cd ."
> >         FAILED: cmTC_01890
> >         C:\Windows\system32\cmd.exe /C "cd . &&
> > C:\dev\sdk\bf133\sysroots\x86_64-w64-mingw32\usr\bin\powerpc64-bf133-
> > linux\powerpc64-bf133-linux-g++.exe   -mbig-endian -mhard-float -m64
> > -mcpu=3De5500 -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -
> > Wformat -Wformat-security -Werror=3Dformat-security --
> > sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux --
> > sysroot=3DC:/dev/sdk/bf133/sysroots/ppc64e5500-bf133-linux -O2 -g  -
> > pipe -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed  -Wl,-z,relro,-
> > z,now CMakeFiles/cmTC_01890.dir/testCXXCompiler.cxx.o -o cmTC_01890
> > && cd ."
> >         C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/bin/powerpc64-bf133-linux/../../libexec/powerpc64-bf133-
> > linux/gcc/powerpc64-bf133-linux/14.2.0/ld.exe: cannot find Scrt1.o:
> > No such file or directory
> >         C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/bin/powerpc64-bf133-linux/../../libexec/powerpc64-bf133-
> > linux/gcc/powerpc64-bf133-linux/14.2.0/ld.exe: cannot find crti.o: No
> > such file or directory
> >         C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/bin/powerpc64-bf133-linux/../../libexec/powerpc64-bf133-
> > linux/gcc/powerpc64-bf133-linux/14.2.0/ld.exe: cannot find
> > crtbeginS.o: No such file or directory
> >         C:/dev/sdk/bf133/sysroots/x86_64-w64-
> > mingw32/usr/bin/powerpc64-bf133-linux/../../libexec/powerpc64-bf133-
> > linux/gcc/powerpc64-bf133-linux/14.2.0/ld.exe: cannot find -lgcc: No
> > such file or directory
> >         collect2.exe: error: ld returned 1 exit status
> >         ninja: build stopped: subcommand failed.
> >
> >
> >       CMake will not be able to correctly generate this project.
> >     Call Stack (most recent call first):
> >       CMakeLists.txt:2 (project)
> >
> >     -- Configuring incomplete, errors occurred!
> >
> >
> > Am I doing something wrong? Are there additional requirements for the
> > Windows SDK except the configuration of SDKMACHINE?
> >
> > Thanks for any hints, we keep struggling with this. I'd rather have
> > my
> > colleagues use Linux but I cannot change that, unfortunately.
> >
> > BR
> > Dave
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65301): https://lists.yoctoproject.org/g/yocto/messag=
e/65301
> Mute This Topic: https://lists.yoctoproject.org/mt/112895370/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

