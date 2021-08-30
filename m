Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web09.12948.1630298798222987750
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Aug 2021 21:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DV1Kv45i;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id n18so12226826pgm.12
        for <yocto@lists.yoctoproject.org>; Sun, 29 Aug 2021 21:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NOmvLoArv34pBxEoADiv8IQnWDL8ymolhVM4VCqc0NU=;
        b=DV1Kv45izvHmEMNKU8pY4f9IEn2aRjDq4gemx5qXmNdZ7S6fKltDLNueY6CBmFugSg
         2auqskFMFsfhunS0vSNiAgr0uvHEvMFuYFa7O7GGR3F5U+rqrNy+4WHGd7PJ6Lv9EAjr
         a2/IGDVpSkkXhKdYwQA9kxRqNv0/TNM6ybiH7piScVBsZKOmmUvw9A/GvSwVswk2aOO9
         58ML3QVSHy3JmgEWZjGLrEFVwzLbHTon1WiSZ4IpeW6IxMC6ougrV0ujpNkb+tPVygI/
         yvH2U4Ghoqsqf217ZF6RXwrbJZqoq9a40DdqQTTc4CU7aqMI5kT6rzcD8myktX+PpvFg
         ivzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NOmvLoArv34pBxEoADiv8IQnWDL8ymolhVM4VCqc0NU=;
        b=P+Xv1DVHHEKi5Mqje+WyznfqrvOiLL1QAtIAaQeY8glGDhX88YtlKh5EBPBBi5kmRN
         L5C+fRpy1RNd4ubFphYkBHnbJI6Gm86CpKsR7yEZEfJimUubD2C/P5806OyKmIbXaiLm
         mKI8j0PJgL1W8Km4p4kdMLU5nCTPolwJzu4yuO99Zd1EgjcXZqBZ/AwupFm0ManuqGTG
         EnlwTpdWm/cI/eZEr6ffBLbyLRuJAbY/OSLKJAVBrNm9NlNe369y00Oc/OAhDwF4LGjj
         WYncfYdQGWxu+O7m9fBHnvJp1LoBWAZetaWNJggAVVYl+Y+JhC00Lf7FO+WfGizPGout
         R5Ug==
X-Gm-Message-State: AOAM533mhk+QMPUOQdgh6jF68cs5+q8HSo7SB19d6gTORbC6Cq1GU5mA
	aV1vhmcr/78X1nOd6g3nw042d1rPJBySBSsAWKw=
X-Google-Smtp-Source: ABdhPJw5TUfZmnABGBDwU9uh+qAbEDo4cZpu5QDFup8NboIPL1kkDee3DWz/GT6N3KF8T4Dn8/fvH9ebfrnhUjJ8q+U=
X-Received: by 2002:aa7:90d4:0:b029:3b3:2746:5449 with SMTP id
 k20-20020aa790d40000b02903b327465449mr21391618pfk.81.1630298797454; Sun, 29
 Aug 2021 21:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <SB2h.1630296607398460920.bP2t@lists.yoctoproject.org>
In-Reply-To: <SB2h.1630296607398460920.bP2t@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 30 Aug 2021 06:46:25 +0200
Message-ID: <CAGAf8LybDzNRi-bJkEdGapwX5UGcehWyMdAs+b+0k2vsH7RZFw@mail.gmail.com>
Subject: Re: [yocto] kcrash package compile issue
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> CMake Error in src/CMakeLists.txt:
>
> Imported target "KF5::WindowSystem" includes non-existent path

You somehow mixed Windows and Linux Cmake build systems. Not sure how...

Solution 1: fix on the fly current problem:
You should inspect the file: src/CMakeLists.txt and try to fix Windows
paths to match Linux paths.

Solution 2: delete the current Cmake setup and execute it from scratch:
Error should not happen, since you need to delete the Cmake setup and
do the whole thing from scratch.
    1) configure <<=3D=3D=3D=3D=3D This step causes you problems!
    2) make
    3) make install

Zee
_______


On Mon, Aug 30, 2021 at 6:10 AM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi Team,
>
>              I am trying to build kcrash package. I got below error.Can a=
nybody know how to fix this please guide me.
>
> ERROR: kcrash-5.85.0-r0 do_configure: Execution of '/home/yocto/sources/f=
u540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/run.do_con=
figure.12650' failed with exit code 1:
>
> -- The C compiler identification is GNU 10.2.0
>
> -- The CXX compiler identification is GNU 10.2.0
>
> -- Detecting C compiler ABI info
>
> -- Detecting C compiler ABI info - done
>
> -- Check for working C compiler: /home/yocto/sources/fu540-build/tmp-glib=
c/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/risc=
v64-oe-linux/riscv64-oe-linux-gcc - skipped
>
> -- Detecting C compile features
>
> -- Detecting C compile features - done
>
> -- Detecting CXX compiler ABI info
>
> -- Detecting CXX compiler ABI info - done
>
> -- Check for working CXX compiler: /home/yocto/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/ri=
scv64-oe-linux/riscv64-oe-linux-g++ - skipped
>
> -- Detecting CXX compile features
>
> -- Detecting CXX compile features - done
>
> --
>
>
>
> Installing in /usr. Run /home/yocto/sources/fu540-build/tmp-glibc/work/ri=
scv64-oe-linux/kcrash/5.85.0-r0/build/prefix.sh to set the environment for =
KCrash.
>
> -- Looking for __GLIBC__
>
> -- Looking for __GLIBC__ - found
>
> -- Performing Test _OFFT_IS_64BIT
>
> -- Performing Test _OFFT_IS_64BIT - Success
>
> -- Performing Test HAVE_DATE_TIME
>
> -- Performing Test HAVE_DATE_TIME - Success
>
> -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE
>
> -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE - Success
>
> fatal: not a git repository (or any of the parent directories): .git
>
> -- Found X11: /home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-l=
inux/kcrash/5.85.0-r0/recipe-sysroot/usr/include
>
> -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glibc/=
work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/ho=
me/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash=
/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so
>
> -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-glibc/=
work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so;/ho=
me/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash=
/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so - found
>
> -- Looking for gethostbyname
>
> -- Looking for gethostbyname - found
>
> -- Looking for connect
>
> -- Looking for connect - found
>
> -- Looking for remove
>
> -- Looking for remove - found
>
> -- Looking for shmat
>
> -- Looking for shmat - found
>
> -- Looking for IceConnectionNumber in ICE
>
> -- Looking for IceConnectionNumber in ICE - found
>
> -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY
>
> -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY - Success
>
> -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY
>
> -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY - Success
>
> -- Performing Test COMPILER_HAS_DEPRECATED_ATTR
>
> -- Performing Test COMPILER_HAS_DEPRECATED_ATTR - Success
>
> -- The following features have been enabled:
>
>
>
> * Core Pattern Raising, Raising signals to kernel core patterns (iff the =
pattern is a process). You may wish to not install drkonqi if this can caus=
e a UI conflict.
>
>
>
> -- The following OPTIONAL packages have been found:
>
>
>
> * X11
>
>
>
> -- The following REQUIRED packages have been found:
>
>
>
> * ECM (required version >=3D 5.85.0), Extra CMake Modules., <https://comm=
its.kde.org/extra-cmake-modules>
>
> * Qt5 (required version >=3D 5.15.0)
>
> * Qt5Core (required version >=3D 5.15.0)
>
> * KF5CoreAddons (required version >=3D 5.85.0)
>
> * Qt5Gui (required version >=3D 5.15.0)
>
> * KF5WindowSystem (required version >=3D 5.85.0)
>
> * Qt5X11Extras (required version >=3D 5.15.0)
>
>
>
> -- The following features have been disabled:
>
>
>
> * QCH, API documentation in QCH format (for e.g. Qt Assistant, Qt Creator=
 & KDevelop)
>
>
>
> -- Configuring done
>
> CMake Error in src/CMakeLists.txt:
>
> Imported target "KF5::WindowSystem" includes non-existent path
>
>
>
> "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindows=
ystem/5.85.0-r0/recipe-sysroot/usr/include"
>
>
>
> in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
>
>
>
> * The path was deleted, renamed, or moved to another location.
>
>
>
> * An install or uninstall procedure did not complete successfully.
>
>
>
> * The installation package was faulty and references files it does not
>
> provide.
>
>
>
>
>
>
>
> CMake Error in src/CMakeLists.txt:
>
> Imported target "KF5::WindowSystem" includes non-existent path
>
>
>
> "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindows=
ystem/5.85.0-r0/recipe-sysroot/usr/include"
>
>
>
> in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
>
>
>
> * The path was deleted, renamed, or moved to another location.
>
>
>
> * An install or uninstall procedure did not complete successfully.
>
>
>
> * The installation package was faulty and references files it does not
>
> provide.
>
>
>
>
>
>
>
> -- Generating done
>
> CMake Warning:
>
> Manually-specified variables were not used by the project:
>
>
>
> BUILD_DESIGNERPLUGIN
>
> LIB_SUFFIX
>
> OE_KF5_PATH_HOST_ROOT
>
> OE_QMAKE_PATH_ARCHDATA
>
> OE_QMAKE_PATH_BINS
>
> OE_QMAKE_PATH_DATA
>
> OE_QMAKE_PATH_DOCS
>
> OE_QMAKE_PATH_EXAMPLES
>
> OE_QMAKE_PATH_HEADERS
>
> OE_QMAKE_PATH_HOST_BINS
>
> OE_QMAKE_PATH_HOST_DATA
>
> OE_QMAKE_PATH_HOST_LIBS
>
> OE_QMAKE_PATH_HOST_PREFIX
>
> OE_QMAKE_PATH_LIBEXECS
>
> OE_QMAKE_PATH_LIBS
>
> OE_QMAKE_PATH_PLUGINS
>
> OE_QMAKE_PATH_PREFIX
>
> OE_QMAKE_PATH_QML
>
> OE_QMAKE_PATH_QT_ARCHDATA
>
> OE_QMAKE_PATH_QT_BINS
>
> OE_QMAKE_PATH_QT_DATA
>
> OE_QMAKE_PATH_QT_DOCS
>
> OE_QMAKE_PATH_QT_EXAMPLES
>
> OE_QMAKE_PATH_QT_HEADERS
>
> OE_QMAKE_PATH_QT_SETTINGS
>
> OE_QMAKE_PATH_QT_TESTS
>
> OE_QMAKE_PATH_QT_TRANSLATIONS
>
> OE_QMAKE_PATH_SETTINGS
>
> OE_QMAKE_PATH_TESTS
>
> OE_QMAKE_PATH_TRANSLATIONS
>
> PYTHON_EXECUTABLE
>
> Python3_EXECUTABLE
>
> Python_EXECUTABLE
>
>
>
>
>
> CMake Generate step failed. Build files cannot be regenerated correctly.
>
> WARNING: exit code 1 from a shell command.
>
>
>
> ERROR: Logfile of failure stored in: /home/yocto/sources/fu540-build/tmp-=
glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/log.do_configure.12650
>
> --
> Regards,
> Sateesh
>=20
>
