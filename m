Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web12.3149.1599809521717989746
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 00:32:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=A2ywT7kT;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.169, mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f169.google.com with SMTP id e7so7112337qtj.11
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 00:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nvbXc1KEqPnrCTWtdxlM+3IF0lCWO8bP44G5JGjlNXI=;
        b=A2ywT7kTd/5YrPmWjLXSiQ2HeFOGtqxvHaH/msg3BYx2ic/jeA0+jwXsBRYY+y7GtK
         qyapbDuPHjuGIuGslwL9Rl/mK5XAf+6HZrT+r4FUMHxeBPXD5lPvb80J+SJwi8h935h0
         xGWm4FVJwoRaeKuLVyhfXm62zdmxVoB/ZJ436Uc4hCJxxXiMCwVbP7dpAMridVQhr29+
         DHFIMWsUVq5CqJy7rGrOaSI+joWqk4KfA9TRXQzwromEtMU5+qqOhdwOfzAdMxToRNxM
         +JZydnUOGm3iCs3q/zX+AqHrd1TAwJQDGMFr8uCLIVjJX051QS4LitYQFDCX27GNQUZa
         m5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nvbXc1KEqPnrCTWtdxlM+3IF0lCWO8bP44G5JGjlNXI=;
        b=PKo8Lwit5pAMOLEkBKqYSRfJSdjOrut2/K85DPGSo7GZGvPsoXrMuvAZLqZlsetKWu
         rXbwnnbWI59PzuaJVLJdtfR30pj41xCPxpVNBNV+ADOhqRipjF/98Pbkw/qHbqcFHOBA
         KC9XUsCWqi2QbmdBdyXtAJhwb9aXa0Dbciwb+2czkOUXNya1TQLEZT+3g2f/lQHtZqcW
         rw6yHI1FordMNeuOFNa7bmNsZeGnhw6JGvK+tkxVLJJLDRIZb4HAog8M6a0UbMYu9Kbo
         T2H8gLvx2ioQctu+6XbL72VSq4NT3ENLSB74KiIaclGjHKzWIOkRZlpd3FVrxA+HaZl8
         xNtA==
X-Gm-Message-State: AOAM5304G23koY3Rw4zJMwgLeA0mT6nr2yUh2Sf6vROBUZwXBC7Fa/ut
	uThZ19jIEhQbUh7JB0I8/Dcs7wKbtYQYDhrnHZ61/g==
X-Google-Smtp-Source: ABdhPJwtAGAKP+jc8bMvYo4EMityFALp+vbCRgk7JXPo830vks3WgozLr6Wrd+t/h16t5t35GXogjXisZ1/BX0hKWIw=
X-Received: by 2002:ac8:4e24:: with SMTP id d4mr662836qtw.28.1599809520764;
 Fri, 11 Sep 2020 00:32:00 -0700 (PDT)
MIME-Version: 1.0
References: <e8366385-c7a3-5313-0072-d19e05e2fb17@gmail.com> <14341.1599735218188160836@lists.yoctoproject.org>
In-Reply-To: <14341.1599735218188160836@lists.yoctoproject.org>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 11 Sep 2020 09:31:50 +0200
Message-ID: <CAMjhiJiehQOgjUYdgXsEPvXT7wrzTTcbPb0UsireZEh_tOr_fg@mail.gmail.com>
Subject: Re: [yocto] #sdk #yocto Appears SDK searching host for files that are only present on target side
To: steven.monsees@baesystems.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Steven,

you mention you use CMake with the Yocto (standard) SDK.

After you sourced the SDK environment script, what is the output of
"which cmake" ?

Do you use the cmake toolchain configuration file provided by the SDK?
(CMAKE_TOOLCHAIN_FILE)

In my conf/local.conf I make sure I have a native cmake included in the SD=
K:

# Does not work, will destroy TOOLCHAIN_HOST_TASK
#TOOLCHAIN_HOST_TASK +=3D "nativesdk-cmake"
# This is a work-around (we need to extra space here because _append
will not add it for us).
TOOLCHAIN_HOST_TASK_append =3D " nativesdk-cmake"

And this is how I compile an application using SDK and CMake:

        (source /tmp/oe-sdk-cmake/environment-setup-core2-64-oe-linux-musl=
 && \
        cd myapp-cmake && \
        mkdir -p build_sdk && \
        cd build_sdk && \
        cmake -DCMAKE_TOOLCHAIN_FILE=3D$$OECORE_NATIVE_SYSROOT/usr/share/c=
make/OEToolchainConfig.cmake
-DCMAKE_VERBOSE_MAKEFILE=3D1 . .. && \
        make)

(I am using gcc, I I will verify this setup if I switch to clang.)

Regards,
--=20
Leon Woestenberg
leon@sidebranch.com
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

On Thu, Sep 10, 2020 at 12:53 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
> fyi...
>
> I am using CMake with GNU, that is what is required for the build.
>
> I do source the SDK environment script prior to attempting build.
>
> Here is my current environment-setup-corei7-64-poky-linux script created=
 by SDK:
>
> # Check for LD_LIBRARY_PATH being set, which can break SDK and generally=
 is a bad practice
> # http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html#AEN8=
0
> # http://xahlee.info/UnixResource_dir/_/ldpath.html
> # Only disable this check if you are absolutely know what you are doing!
> if [ ! -z "$LD_LIBRARY_PATH" ]; then
>     echo "Your environment is misconfigured, you probably need to 'unset=
 LD_LIBRARY_PATH'"
>     echo "but please check why this was set in the first place and that =
it's safe to unset."
>     echo "The SDK will not operate correctly in most cases when LD_LIBRA=
RY_PATH is set."
>     echo "For more references see:"
>     echo "  http://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries=
.html#AEN80"
>     echo "  http://xahlee.info/UnixResource_dir/_/ldpath.html"
>     return 1
> fi
> export SYSROOTS=3D/ede/smonsees/yocto/testSDK/sysroots
> export SDKTARGETSYSROOT=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots=
/corei7-64-poky-linux
> export PATH=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-poky=
sdk-linux/usr/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pok=
ysdk-linux/usr/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-p=
okysdk-linux/bin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-poky=
sdk-linux/sbin:/disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysd=
k-linux/usr/bin/../x86_64-pokysdk-linux/bin:/disk0/scratch/smonsees/yocto/t=
estSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux:/disk0/scrat=
ch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky=
-linux-musl:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-poky-l=
inux/usr/lib/../lib/:/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-=
64-poky-linux/usr/lib/../lib/x86_64-poky-linux/7.3.0/:$PATH
> export PKG_CONFIG_SYSROOT_DIR=3D$SDKTARGETSYSROOT
> export PKG_CONFIG_PATH=3D$SDKTARGETSYSROOT/usr/lib/pkgconfig:$SDKTARGETS=
YSROOT/usr/share/pkgconfig
> export CONFIG_SITE=3D/disk0/scratch/smonsees/yocto/testSDK/site-config-c=
orei7-64-poky-linux
> export OECORE_NATIVE_SYSROOT=3D"/disk0/scratch/smonsees/yocto/testSDK/sy=
sroots/x86_64-pokysdk-linux"
> export OECORE_TARGET_SYSROOT=3D"$SDKTARGETSYSROOT"
> export OECORE_ACLOCAL_OPTS=3D"-I /disk0/scratch/smonsees/yocto/testSDK/s=
ysroots/x86_64-pokysdk-linux/usr/share/aclocal"
> unset command_not_found_handle
> export CC=3D"x86_64-poky-linux-gcc  -v -m64 -march=3Dcorei7 -mtune=3Dcor=
ei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
> export CXX=3D"x86_64-poky-linux-g++  -v -m64 -march=3Dcorei7 -mtune=3Dco=
rei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
> export CPP=3D"x86_64-poky-linux-gcc -v -E  -m64 -march=3Dcorei7 -mtune=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 --sysroot=3D$SDKTARGETSYSROOT"
> export AS=3D"x86_64-poky-linux-as  "
> export LD=3D"x86_64-poky-linux-ld  --sysroot=3D$SDKTARGETSYSROOT"
> export GDB=3Dx86_64-poky-linux-gdb
> export STRIP=3Dx86_64-poky-linux-strip
> export RANLIB=3Dx86_64-poky-linux-ranlib
> export OBJCOPY=3Dx86_64-poky-linux-objcopy
> export OBJDUMP=3Dx86_64-poky-linux-objdump
> export AR=3Dx86_64-poky-linux-ar
> export NM=3Dx86_64-poky-linux-nm
> export M4=3Dm4
> export TARGET_PREFIX=3Dx86_64-poky-linux-
> export CONFIGURE_FLAGS=3D"--target=3Dx86_64-poky-linux --host=3Dx86_64-p=
oky-linux --build=3Dx86_64-linux --with-libtool-sysroot=3D$SDKTARGETSYSROOT=
"
> export CFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pipe -g -feliminate=
-unused-debug-types"
> export CXXFLAGS=3D" --sysroot=3D$SDKTARGETSYSROOT -O2 -pipe -g -felimina=
te-unused-debug-types"
> export LDFLAGS=3D" -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
> export CPPFLAGS=3D""
> export KCFLAGS=3D"--sysroot=3D$SDKTARGETSYSROOT"
> export OECORE_DISTRO_VERSION=3D"2.4.1"
> export OECORE_SDK_VERSION=3D"2.4.1"
> export ARCH=3Dx86
> export CROSS_COMPILE=3Dx86_64-poky-linux-
>
> # Append environment subscripts
> if [ -d "$OECORE_TARGET_SYSROOT/environment-setup.d" ]; then
>     for envfile in $OECORE_TARGET_SYSROOT/environment-setup.d/*.sh; do
>      . $envfile
>     done
> fi
> if [ -d "$OECORE_NATIVE_SYSROOT/environment-setup.d" ]; then
>     for envfile in $OECORE_NATIVE_SYSROOT/environment-setup.d/*.sh; do
>      . $envfile
>     done
> fi
> export CLANGCC=3D"x86_64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3D=
corei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSYSROO=
T"
> export CLANGCXX=3D"x86_64-poky-linux-clang++ -m64 -march=3Dcorei7 -mtune=
=
=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSY=
SROOT"
> export CLANGCPP=3D"x86_64-poky-linux-clang -E -m64 -march=3Dcorei7 -mtun=
e=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endian --sysroot=3D$SDKTARGETSY=
SROOT"
>
>
>  and
>
>=20
