Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.16499.1630327953537808141
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Aug 2021 05:52:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o3/bBAde;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id ot2-20020a17090b3b4200b0019127f8ed87so12000675pjb.1
        for <yocto@lists.yoctoproject.org>; Mon, 30 Aug 2021 05:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pN4pTaly2xyVP4AlftpUxTNcF0LOk3aOACpbUUuFshI=;
        b=o3/bBAdekjr2anbB8bjlpsvVMA42k3YcehR0XzWZTauXQkSE8Yg3F+9+lFq1xLIqX9
         sEgP0Gwa6C3y/jmx4gQP/dV2T/QKEVtajq9dAguwoCB2nR0rB4vxOVU81Fq5fblC26c9
         iWgZWg/usny1turr/Zsbqjkphz5yht+pBgLVk4SOA9umO0DxWjIhq8MWeM4QhiMfNHPr
         OszR3GY8B3CyimJv8IqqjpUv1GQmueZuPdOgMwSbT7BtgbWkYcYsTXbYz3OLNmdi5XDS
         VAWFS4FwrZowsfb6a4Cj4192NBVlDjpAlSFH24UgZYblyk7cLa3xCnGK4W9badCGzcMe
         N4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pN4pTaly2xyVP4AlftpUxTNcF0LOk3aOACpbUUuFshI=;
        b=WGRELTojbSvON6hCMTDlvf2ePB/dKRd81/SBiQ6E7TzwselJ50EzEL+XLPHT6M9eMX
         zfeVTrvg3HXSaXcq5dQMLYfhBJc/efFfKdKcZXihSRiTpYRiKHN9NcD9QwnKztph2SC1
         O20UZvlmo2SWn4T0xTTH2+QF4Ey8QuJ+wJp/8iMalHcSN3fVdz8ooPXmLie9m6O2FxCy
         BllaiZW6TeW2hgquxTULyJHXh6y5+8qwZnfqDAFGhHlZN99slKpA4da9h85LBgpu9KHp
         33uoxXPaXRq1rB/xyNbq9bJk6f7ihdhfJO5SHg7xcMfsdLg8sfrWrp7EBMijXfU/hkfj
         x6ew==
X-Gm-Message-State: AOAM532V/MSNymKwIjC/wseLiFAzbbc/mea3qceXM7sBBTXp2SikSc43
	v1rFIGn9bJJH98RokCtSgKZ+E/d+FzW+fCvL+fQ=
X-Google-Smtp-Source: ABdhPJzmRwJjAexFvgttvCID9NwDrAmxszHzIAgswwim/Vv+heRuBXhHG1jv7Vd7KA4N6X3QZWb2q8XKShvmZgyspZg=
X-Received: by 2002:a17:90a:5b0d:: with SMTP id o13mr33241685pji.117.1630327952762;
 Mon, 30 Aug 2021 05:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <SB2h.1630296607398460920.bP2t@lists.yoctoproject.org>
 <CAGAf8LybDzNRi-bJkEdGapwX5UGcehWyMdAs+b+0k2vsH7RZFw@mail.gmail.com> <CALbNGRQDL7f9TZscOdHVWcjMr1ra2AqkjZYbn7B9JD4Wj9VC=Q@mail.gmail.com>
In-Reply-To: <CALbNGRQDL7f9TZscOdHVWcjMr1ra2AqkjZYbn7B9JD4Wj9VC=Q@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 30 Aug 2021 14:52:21 +0200
Message-ID: <CAGAf8LxY2xTg7sAuyd5Z6mbKYxqobSqgnomxgcAfNnnA+BzrBg@mail.gmail.com>
Subject: Re: [yocto] kcrash package compile issue
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: sateesh m <sateesh0457@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> That means that kwindowsystem did not install all necessary bits.

Oh, I see... It has everything to do with Xwindows systems in X11
Client/Server domain.

kwindoes =3D> KDE desktop.

Apology for the confusion!

Zee
_______



On Mon, Aug 30, 2021 at 2:19 PM Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
>
> On Mon, Aug 30, 2021 at 6:46 AM Zoran <zoran.stojsavljevic@gmail.com> wro=
te:
> >
> > > CMake Error in src/CMakeLists.txt:
> > >
> > > Imported target "KF5::WindowSystem" includes non-existent path
> >
> > You somehow mixed Windows and Linux Cmake build systems. Not sure how..=
.
> >
> > Solution 1: fix on the fly current problem:
> > You should inspect the file: src/CMakeLists.txt and try to fix Windows
> > paths to match Linux paths.
> >
> > Solution 2: delete the current Cmake setup and execute it from scratch:
> > Error should not happen, since you need to delete the Cmake setup and
> > do the whole thing from scratch.
> >     1) configure <<=3D=3D=3D=3D=3D This step causes you problems!
> >     2) make
> >     3) make install
> >
> > Zee
> > _______
> >
> >
> > On Mon, Aug 30, 2021 at 6:10 AM sateesh m <sateesh0457@gmail.com> wrote=
:
> > >
> > > Hi Team,
> > >
> > >              I am trying to build kcrash package. I got below error.C=
an anybody know how to fix this please guide me.
> > >
> > > ERROR: kcrash-5.85.0-r0 do_configure: Execution of '/home/yocto/sourc=
es/fu540-build/tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/run.do=
_configure.12650' failed with exit code 1:
> > >
> > > -- The C compiler identification is GNU 10.2.0
> > >
> > > -- The CXX compiler identification is GNU 10.2.0
> > >
> > > -- Detecting C compiler ABI info
> > >
> > > -- Detecting C compiler ABI info - done
> > >
> > > -- Check for working C compiler: /home/yocto/sources/fu540-build/tmp-=
glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bin/=
riscv64-oe-linux/riscv64-oe-linux-gcc - skipped
> > >
> > > -- Detecting C compile features
> > >
> > > -- Detecting C compile features - done
> > >
> > > -- Detecting CXX compiler ABI info
> > >
> > > -- Detecting CXX compiler ABI info - done
> > >
> > > -- Check for working CXX compiler: /home/yocto/sources/fu540-build/tm=
p-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot-native/usr/bi=
n/riscv64-oe-linux/riscv64-oe-linux-g++ - skipped
> > >
> > > -- Detecting CXX compile features
> > >
> > > -- Detecting CXX compile features - done
> > >
> > > --
> > >
> > >
> > >
> > > Installing in /usr. Run /home/yocto/sources/fu540-build/tmp-glibc/wor=
k/riscv64-oe-linux/kcrash/5.85.0-r0/build/prefix.sh to set the environment =
for KCrash.
> > >
> > > -- Looking for __GLIBC__
> > >
> > > -- Looking for __GLIBC__ - found
> > >
> > > -- Performing Test _OFFT_IS_64BIT
> > >
> > > -- Performing Test _OFFT_IS_64BIT - Success
> > >
> > > -- Performing Test HAVE_DATE_TIME
> > >
> > > -- Performing Test HAVE_DATE_TIME - Success
> > >
> > > -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE
> > >
> > > -- Performing Test BSYMBOLICFUNCTIONS_AVAILABLE - Success
> > >
> > > fatal: not a git repository (or any of the parent directories): .git
> > >
> > > -- Found X11: /home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-=
oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/include
> > >
> > > -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so=
;/home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kc=
rash/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so
> > >
> > > -- Looking for XOpenDisplay in /home/yocto/sources/fu540-build/tmp-gl=
ibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/recipe-sysroot/usr/lib/libX11.so=
;/home/sateesh/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kc=
rash/5.85.0-r0/recipe-sysroot/usr/lib/libXext.so - found
> > >
> > > -- Looking for gethostbyname
> > >
> > > -- Looking for gethostbyname - found
> > >
> > > -- Looking for connect
> > >
> > > -- Looking for connect - found
> > >
> > > -- Looking for remove
> > >
> > > -- Looking for remove - found
> > >
> > > -- Looking for shmat
> > >
> > > -- Looking for shmat - found
> > >
> > > -- Looking for IceConnectionNumber in ICE
> > >
> > > -- Looking for IceConnectionNumber in ICE - found
> > >
> > > -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY
> > >
> > > -- Performing Test COMPILER_HAS_HIDDEN_VISIBILITY - Success
> > >
> > > -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY
> > >
> > > -- Performing Test COMPILER_HAS_HIDDEN_INLINE_VISIBILITY - Success
> > >
> > > -- Performing Test COMPILER_HAS_DEPRECATED_ATTR
> > >
> > > -- Performing Test COMPILER_HAS_DEPRECATED_ATTR - Success
> > >
> > > -- The following features have been enabled:
> > >
> > >
> > >
> > > * Core Pattern Raising, Raising signals to kernel core patterns (iff =
the pattern is a process). You may wish to not install drkonqi if this can =
cause a UI conflict.
> > >
> > >
> > >
> > > -- The following OPTIONAL packages have been found:
> > >
> > >
> > >
> > > * X11
> > >
> > >
> > >
> > > -- The following REQUIRED packages have been found:
> > >
> > >
> > >
> > > * ECM (required version >=3D 5.85.0), Extra CMake Modules., <https://=
commits.kde.org/extra-cmake-modules>
> > >
> > > * Qt5 (required version >=3D 5.15.0)
> > >
> > > * Qt5Core (required version >=3D 5.15.0)
> > >
> > > * KF5CoreAddons (required version >=3D 5.85.0)
> > >
> > > * Qt5Gui (required version >=3D 5.15.0)
> > >
> > > * KF5WindowSystem (required version >=3D 5.85.0)
> > >
> > > * Qt5X11Extras (required version >=3D 5.15.0)
> > >
> > >
> > >
> > > -- The following features have been disabled:
> > >
> > >
> > >
> > > * QCH, API documentation in QCH format (for e.g. Qt Assistant, Qt Cre=
ator & KDevelop)
> > >
> > >
> > >
> > > -- Configuring done
> > >
> > > CMake Error in src/CMakeLists.txt:
> > >
> > > Imported target "KF5::WindowSystem" includes non-existent path
> > >
> > >
> > >
> > > "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwin=
dowsystem/5.85.0-r0/recipe-sysroot/usr/include"
> > >
> > >
> > >
> > > in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
> > >
> > >
> > >
> > > * The path was deleted, renamed, or moved to another location.
> > >
> > >
> > >
> > > * An install or uninstall procedure did not complete successfully.
> > >
> > >
> > >
> > > * The installation package was faulty and references files it does no=
t
> > >
> > > provide.
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > CMake Error in src/CMakeLists.txt:
> > >
> > > Imported target "KF5::WindowSystem" includes non-existent path
> > >
> > >
> > >
> > > "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwin=
dowsystem/5.85.0-r0/recipe-sysroot/usr/include"
> > >
> > >
> > >
> > > in its INTERFACE_INCLUDE_DIRECTORIES. Possible reasons include:
> > >
> > >
> > >
> > > * The path was deleted, renamed, or moved to another location.
> > >
> > >
> > >
> > > * An install or uninstall procedure did not complete successfully.
> > >
> > >
> > >
> > > * The installation package was faulty and references files it does no=
t
> > >
> > > provide.
> > >
> > >
> > >
> > >
> > >
> > >
> > >
> > > -- Generating done
> > >
> > > CMake Warning:
> > >
> > > Manually-specified variables were not used by the project:
> > >
> > >
> > >
> > > BUILD_DESIGNERPLUGIN
> > >
> > > LIB_SUFFIX
> > >
> > > OE_KF5_PATH_HOST_ROOT
> > >
> > > OE_QMAKE_PATH_ARCHDATA
> > >
> > > OE_QMAKE_PATH_BINS
> > >
> > > OE_QMAKE_PATH_DATA
> > >
> > > OE_QMAKE_PATH_DOCS
> > >
> > > OE_QMAKE_PATH_EXAMPLES
> > >
> > > OE_QMAKE_PATH_HEADERS
> > >
> > > OE_QMAKE_PATH_HOST_BINS
> > >
> > > OE_QMAKE_PATH_HOST_DATA
> > >
> > > OE_QMAKE_PATH_HOST_LIBS
> > >
> > > OE_QMAKE_PATH_HOST_PREFIX
> > >
> > > OE_QMAKE_PATH_LIBEXECS
> > >
> > > OE_QMAKE_PATH_LIBS
> > >
> > > OE_QMAKE_PATH_PLUGINS
> > >
> > > OE_QMAKE_PATH_PREFIX
> > >
> > > OE_QMAKE_PATH_QML
> > >
> > > OE_QMAKE_PATH_QT_ARCHDATA
> > >
> > > OE_QMAKE_PATH_QT_BINS
> > >
> > > OE_QMAKE_PATH_QT_DATA
> > >
> > > OE_QMAKE_PATH_QT_DOCS
> > >
> > > OE_QMAKE_PATH_QT_EXAMPLES
> > >
> > > OE_QMAKE_PATH_QT_HEADERS
> > >
> > > OE_QMAKE_PATH_QT_SETTINGS
> > >
> > > OE_QMAKE_PATH_QT_TESTS
> > >
> > > OE_QMAKE_PATH_QT_TRANSLATIONS
> > >
> > > OE_QMAKE_PATH_SETTINGS
> > >
> > > OE_QMAKE_PATH_TESTS
> > >
> > > OE_QMAKE_PATH_TRANSLATIONS
> > >
> > > PYTHON_EXECUTABLE
> > >
> > > Python3_EXECUTABLE
> > >
> > > Python_EXECUTABLE
> > >
> > >
> > >
> > >
> > >
> > > CMake Generate step failed. Build files cannot be regenerated correct=
ly.
> > >
> > > WARNING: exit code 1 from a shell command.
> > >
> > >
> > >
> > > ERROR: Logfile of failure stored in: /home/yocto/sources/fu540-build/=
tmp-glibc/work/riscv64-oe-linux/kcrash/5.85.0-r0/temp/log.do_configure.1265=
0
> > >
> > > --
> 1. From version 5.85 I assume you use meta-qt5-extra (not meta-kf5) - rig=
ht?
> 2. the important part of the log is:
>
> | CMake Error in src/CMakeLists.txt:
> | Imported target "KF5::WindowSystem" includes non-existent path
> | "/home/yocto/sources/fu540-build/tmp-glibc/work/riscv64-oe-linux/kwindo=
wsystem/5.85.0-r0/recipe-sysroot/usr/include"
>
> That means that kwindowsystem did not install all necessary bits. Do
> you have x11 in your DISTRO_FEATURES? If not you should add that.
>
> Hope that helps
>
> Andreas
