Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.16103.1630325989440298440
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 05:19:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mfnUKJnQ;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: schnitzeltony@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id n12so8407151plk.10
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 05:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ISoX3WU8oiKzSNOvjZyVu7CBv/qEtIu3ht5USmn9374=;
        b=mfnUKJnQ2wabaW/MIa4gFA7+XePHTymOzghim++YExp9Rsf8f+YmYUvhdbl7tg+URk
         yurwFSZSkI+zVWZ4iWBy1mSDc1CPnBks9ZzfJ3uyx11kdwuSZs23CRXdC18FgNd0RwMP
         vs6sGcHTYMX76zkYiHS96Bytqgd195uDVVH9aL1K70Zdqw9bL4aSqrzKZZ6aePrIVatW
         ZzAMIo7qb53Venq94k0gclfptsYyqcZXzJ4Ps6mr065b31Va5th7eAoS9RiuvDuUSfZH
         wO1kxiLIuj8dB2UmtyObisiERqsFqtn6AaIm6k4ZEj2JloengVjxmqRR0ayfheiSUwJm
         k3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ISoX3WU8oiKzSNOvjZyVu7CBv/qEtIu3ht5USmn9374=;
        b=YbWtHgq2/y2oSSTdSa+mtvxU2RoqiEYM2V7gIZzc5Z/6/HKK9UmIy+zGgGiayNuhOD
         /wKJ9wv/2F3QwFxtS13FdsEFuR8ccWg1WjYYH/uEarBEBz8ii2Hc3YYupz8HjV4u6xBq
         ww0BaYrxyKtnMRbfMmtmGq/cXCi7X58cWIUlvCR3bfVZaSal8APiuRjyGxtsgE/a9JH2
         +C4zzwXhvZv49ll5USesKwIY4v1Ap1Y25p2HOx3KUcfNZwu/29Sras6RbgQOj848yyE2
         PgqEyDwrOA965QemGebvR684rTawcY6+LdzgUpIaEGaBkgykoEArOKO4Wb8S3Y1V+AxS
         13rg==
X-Gm-Message-State: AOAM533QEStA6xGofjBJZrVuDXAJPcbXg+Ku/3VYrojBJrPFR68Mg3Qz
	sxizaM23/SA4MtrbCShpAhgvh8a6tvj/qASB/pM=
X-Google-Smtp-Source: ABdhPJzTYJS6fdKPLfymAhEk+0XVoMBdrwcGeljwguxHu2NIzDHzR9VcEMxgDx3eem0ZgvO0hCtGXhlcWoQyEylKC8Q=
X-Received: by 2002:a17:90a:5d95:: with SMTP id t21mr24211520pji.77.1630325988487;
 Mon, 30 Aug 2021 05:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <SB2h.1630296607398460920.bP2t@lists.yoctoproject.org> <CAGAf8LybDzNRi-bJkEdGapwX5UGcehWyMdAs+b+0k2vsH7RZFw@mail.gmail.com>
In-Reply-To: <CAGAf8LybDzNRi-bJkEdGapwX5UGcehWyMdAs+b+0k2vsH7RZFw@mail.gmail.com>
From: =?UTF-8?B?QW5kcmVhcyBNw7xsbGVy?= <schnitzeltony@gmail.com>
Date: Mon, 30 Aug 2021 14:19:37 +0200
Message-ID: <CALbNGRQDL7f9TZscOdHVWcjMr1ra2AqkjZYbn7B9JD4Wj9VC=Q@mail.gmail.com>
Subject: Re: [yocto] kcrash package compile issue
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: sateesh m <sateesh0457@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 30, 2021 at 6:46 AM Zoran <zoran.stojsavljevic@gmail.com> wrote=
:
>
> > CMake Error in src/CMakeLists.txt:
> >
> > Imported target "KF5::WindowSystem" includes non-existent path
>
> You somehow mixed Windows and Linux Cmake build systems. Not sure how...
>
> Solution 1: fix on the fly current problem:
> You should inspect the file: src/CMakeLists.txt and try to fix Windows
> paths to match Linux paths.
>
> Solution 2: delete the current Cmake setup and execute it from scratch:
> Error should not happen, since you need to delete the Cmake setup and
> do the whole thing from scratch.
>     1) configure <<=3D=3D=3D=3D=3D This step causes you problems!
>     2) make
>     3) make install
>
> Zee
> _______
>
>
> On Mon, Aug 30, 2021 at 6:10 AM sateesh m <sateesh0457@gmail.com> wrote:
> >
> > Hi Team,
> >
> >              I am trying to build kcrash package. I got below error.Can=
 anybody know how to fix this please guide me.
> >
> > ERROR: kcrash-5.85.0-r0 do_configure: Execution of '/home/yocto/sources=
/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/run.do_c=
onfigure.12650' failed with exit code 1:
> >
> > -- The C compiler identification is GNU 10.2.0
> >
> > -- The CXX compiler identification is GNU 10.2.0
> >
> > -- Detecting C compiler ABI info
> >
> > -- Detecting C compiler ABI info - done
> >
> > -- Check for working C compiler: /home/yocto/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/ri=
scv64-oe-linux/riscv64-oe-linux-gcc - skipped
> >
> > -- Detecting C compile features
> >
> > -- Detecting C compile features - done
> >
> > -- Detecting CXX compiler ABI info
> >
> > -- Detecting CXX compiler ABI info - done
> >
> > -- Check for working CXX compiler: /home/yocto/sources/fu540-build/tmp-=
glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/=
riscv64-oe-linux/riscv64-oe-linux-g++ - skipped
> >
> > -- Detecting CXX compile features
> >
> > -- Detecting CXX compile features - done
> >
> > --
> >
> >
> >
> > Installing in /usr. Run /home/yocto/sources/fu540-build/tmp-glibc/work/=
riscv64-oe-linux/kcrash/5.85.0-r0/build/prefix.sh to set the environment fo=
r KCrash.
> >
> > -- Looking for __GLIBC__
> >
> > -- Looking for __GLIBC__ - found
> >
> > -- Performing Test _OFFT_IS_64BIT
> >
> > -- Performing Test _OFFT_IS_64BIT - Success
> >
> > -- Performing Test HAVE_DATE_TIME
> >
> > -- Performing Test HAVE_DATE_TIME - Success
> >
> > -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE
> >
> > -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE - Success
> >
> > fatal: not a git repository (or any of the parent directories): .git
> >
> > -- Found X11: /home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe=
-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/include
> >
> > -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glib=
c/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/=
home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcra=
sh/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so
> >
> > -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glib=
c/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/=
home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcra=
sh/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so - found
> >
> > -- Looking for gethostbyname
> >
> > -- Looking for gethostbyname - found
> >
> > -- Looking for connect
> >
> > -- Looking for connect - found
> >
> > -- Looking for remove
> >
> > -- Looking for remove - found
> >
> > -- Looking for shmat
> >
> > -- Looking for shmat - found
> >
> > -- Looking for IceConnectionNumber in ICE
> >
> > -- Looking for IceConnectionNumber in ICE - found
> >
> > -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY
> >
> > -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY - Success
> >
> > -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY
> >
> > -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY - Success
> >
> > -- Performing Test COMPILER_HAS_DEPRECATED_ATTR
> >
> > -- Performing Test COMPILER_HAS_DEPRECATED_ATTR - Success
> >
> > -- The following features have been enabled:
> >
> >
> >
> > * Core Pattern Raising, Raising signals to kernel core patterns (iff th=
e pattern is a process). You may wish to not install drkonqi if this can ca=
use a UI conflict.
> >
> >
> >
> > -- The following OPTIONAL packages have been found:
> >
> >
> >
> > * X11
> >
> >
> >
> > -- The following REQUIRED packages have been found:
> >
> >
> >
> > * ECM (required version >=3D 5.85.0), Extra CMake Modules., <https://co=
mmits.kde.org/extra-cmake-modules>
> >
> > * Qt5 (required version >=3D 5.15.0)
> >
> > * Qt5Core (required version >=3D 5.15.0)
> >
> > * KF5CoreAddons (required version >=3D 5.85.0)
> >
> > * Qt5Gui (required version >=3D 5.15.0)
> >
> > * KF5WindowSystem (required version >=3D 5.85.0)
> >
> > * Qt5X11Extras (required version >=3D 5.15.0)
> >
> >
> >
> > -- The following features have been disabled:
> >
> >
> >
> > * QCH, API documentation in QCH format (for e.g. Qt Assistant, Qt Creat=
or & KDevelop)
> >
> >
> >
> > -- Configuring done
> >
> > CMake Error in src/CMakeLists.txt:
> >
> > Imported target "KF5::WindowSystem" includes non-existent path
> >
> >
> >
> > "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindo=
wsystem/5.85.0-r0/recipe-sysroot/usr/include"
> >
> >
> >
> > in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
> >
> >
> >
> > * The path was deleted, renamed, or moved to another location.
> >
> >
> >
> > * An install or uninstall procedure did not complete successfully.
> >
> >
> >
> > * The installation package was faulty and references files it does not
> >
> > provide.
> >
> >
> >
> >
> >
> >
> >
> > CMake Error in src/CMakeLists.txt:
> >
> > Imported target "KF5::WindowSystem" includes non-existent path
> >
> >
> >
> > "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindo=
wsystem/5.85.0-r0/recipe-sysroot/usr/include"
> >
> >
> >
> > in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
> >
> >
> >
> > * The path was deleted, renamed, or moved to another location.
> >
> >
> >
> > * An install or uninstall procedure did not complete successfully.
> >
> >
> >
> > * The installation package was faulty and references files it does not
> >
> > provide.
> >
> >
> >
> >
> >
> >
> >
> > -- Generating done
> >
> > CMake Warning:
> >
> > Manually-specified variables were not used by the project:
> >
> >
> >
> > BUILD_DESIGNERPLUGIN
> >
> > LIB_SUFFIX
> >
> > OE_KF5_PATH_HOST_ROOT
> >
> > OE_QMAKE_PATH_ARCHDATA
> >
> > OE_QMAKE_PATH_BINS
> >
> > OE_QMAKE_PATH_DATA
> >
> > OE_QMAKE_PATH_DOCS
> >
> > OE_QMAKE_PATH_EXAMPLES
> >
> > OE_QMAKE_PATH_HEADERS
> >
> > OE_QMAKE_PATH_HOST_BINS
> >
> > OE_QMAKE_PATH_HOST_DATA
> >
> > OE_QMAKE_PATH_HOST_LIBS
> >
> > OE_QMAKE_PATH_HOST_PREFIX
> >
> > OE_QMAKE_PATH_LIBEXECS
> >
> > OE_QMAKE_PATH_LIBS
> >
> > OE_QMAKE_PATH_PLUGINS
> >
> > OE_QMAKE_PATH_PREFIX
> >
> > OE_QMAKE_PATH_QML
> >
> > OE_QMAKE_PATH_QT_ARCHDATA
> >
> > OE_QMAKE_PATH_QT_BINS
> >
> > OE_QMAKE_PATH_QT_DATA
> >
> > OE_QMAKE_PATH_QT_DOCS
> >
> > OE_QMAKE_PATH_QT_EXAMPLES
> >
> > OE_QMAKE_PATH_QT_HEADERS
> >
> > OE_QMAKE_PATH_QT_SETTINGS
> >
> > OE_QMAKE_PATH_QT_TESTS
> >
> > OE_QMAKE_PATH_QT_TRANSLATIONS
> >
> > OE_QMAKE_PATH_SETTINGS
> >
> > OE_QMAKE_PATH_TESTS
> >
> > OE_QMAKE_PATH_TRANSLATIONS
> >
> > PYTHON_EXECUTABLE
> >
> > Python3_EXECUTABLE
> >
> > Python_EXECUTABLE
> >
> >
> >
> >
> >
> > CMake Generate step failed. Build files cannot be regenerated correctly=
.
> >
> > WARNING: exit code 1 from a shell command.
> >
> >
> >
> > ERROR: Logfile of failure stored in: /home/yocto/sources/fu540-build/tm=
p-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/log.do_configure.12650
> >
> > --
1. From version 5.85 I assume you use meta-qt5-extra (not meta-kf5) - right=
?
2. the important part of the log is:

| CMake Error in src/CMakeLists.txt:
| Imported target "KF5::WindowSystem" includes non-existent path
| "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindows=
ystem/5.85.0-r0/recipe-sysroot/usr/include"

That means that kwindowsystem did not install all necessary bits. Do
you have x11 in your DISTRO_FEATURES? If not you should add that.

Hope that helps

Andreas
