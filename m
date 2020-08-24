Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web11.361.1598302991390589373
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 14:03:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iF3rSgxV;
 spf=pass (domain: gmail.com, ip: 209.85.219.65, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f65.google.com with SMTP id w2so4500985qvh.12
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 14:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hdOUo0ZZvm+WhPl9Tm2hjepi+661JCyRek5rM9+cHvU=;
        b=iF3rSgxVvtilBD7qHUvFHHDfFuTwgxmN7h4ItcKOddYkmmdq47do1d8dAgEPDnK1SQ
         hvBjtDSh8coEkUhE59gum2lPz/FwAkNMon/hKZ45qaX30V/L8sB4Z+Q6cWOG8o/ypwdf
         6AsqQ468x+kgOwIgDE+H9qvM3GL8oEDhOquyBHJclqe+bcd8mz37Hq/epUrIRp4xJN8X
         fwyPZAFjzD/P4hvvosEi+1O1mpRmWkPLtWG8uCObvlrgs8H0aoilpk3RO0OO/tgFkGVG
         XmKlXsycMTZY0f52DNUbzdGNezNwD4W/zacxAIccGfw7g5j0ys8uE6t6hhEnUNA2XLWA
         meaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hdOUo0ZZvm+WhPl9Tm2hjepi+661JCyRek5rM9+cHvU=;
        b=r1JxMWNRwsbD5jEu2KfVY4+8sIoVlbEkXoTAbFDi0srK++WJG7sLIz/lW0dEhy+Mvs
         dL3fEu4dD8TZ3anXf8eVFhQlxyKsfiLU5UKtEQbqzNOOvjlfQ+TLiECurwUibGBkZE96
         fKmToR+mhbrJYL5I/F+iNSLGTEeI3AxxzRP2YXwGtKthl3tZ8Onuhg7muS6wi0GkfmWa
         DH9y7TyZHByMUc8YbNGeCj7v4BHKrjaaqsBYUsCyZMy4G+Djm+AnHldsHBRaaa+LzNHV
         adyMXrKomvRCucQL4JgKkoRzaE91PRxoHJvOLeKGjhKZJVDbs1+aulBaW3EheLJHid8Y
         c2dA==
X-Gm-Message-State: AOAM531LGHxoIs+UHwSxcP3IzTbBGcmFbntW+KR9g/LqLjUsxTrk5b9/
	ei+j3egt4TuCA/3wJiwFKVyATDokeNm9ufEIrYY=
X-Google-Smtp-Source: ABdhPJyuswCwC17EtnYoXCLbBeMnPYykg036XPt5/F28CBY0gOhIN7bD6Y3Fodg686OhCsO0deGEuydZiZ8EZQm0Iks=
X-Received: by 2002:a0c:a585:: with SMTP id z5mr6340708qvz.99.1598302990157;
 Mon, 24 Aug 2020 14:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.162E4C280A764751.17715@lists.yoctoproject.org>
In-Reply-To: <MADEUP.162E4C280A764751.17715@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 24 Aug 2020 14:02:43 -0700
Message-ID: <CAMKF1so3=f3tCEHNdCHS2iKU_NxdX4ciqKFEKtnqcO_33Vz-Bg@mail.gmail.com>
Subject: Re: [yocto] #sdk -Standard SDK build with cmake and meta-clang gives error when I attempt topull in compiler-rt
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 24, 2020 at 12:50 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I am having trouble configuring my SDK to use the meta-clang compiler-rt=
 component properly.
>
>
>
> How do I configure my build so meta-clang brings in compiler-rt and gene=
rates the libclang_rt.binutils-x86_64.a library I require?
>
>
>
> When I attempt to build in =E2=80=9Ccompiler-rt=E2=80=9D component I get=
 the CMAKE Error shown below.
>
>
>
> No matter how I try, for example:
>
>
>
> TOOLCHAIN_TARGET_TASK_append =3D "compiler-rt-static-dev compiler-rt-dev=
"
>

this should bring the compiler-rt .a files into target sysroot
>
>
> Or:
>
>
>
> SDK_EXTRA_TOOLS =3D "  \
>
>     nativesdk-cmake \
>
>     nativesdk-clang \
>
>     nativesdk-compiler-rt \

nativesdk compile-rt may not be needed.

>
>     "
>
> I get the "cmake" error described below.
>
>
>
> (1) What Is this the correct method to add this components to my SDK ?
>
> (2) I do not understand how to resolve this , all are yocto based compon=
ents, the only llvm components are pulled in by meta-clang, what am I expec=
ted to edit to resolve ?, and how ? Can someone explain to me what this err=
or is attempting to convey, and what I am doing wrong ?
>
> (3) Is it correct to expect the cmake and clang components to work toget=
her under yocto?
>
> (4) I do not want the tools built into my kernel just the SDK for develo=
pment, Is there better way to do what I want to do here ?
>
>
>
> Note: My target and host systems are both x86-64=E2=80=A6
>
>
>
> And, yes, the "-rtlib-libgcc" works for my basic test code and bypasses =
requiring compiler-rt, but I would like to understand what is going on belo=
w and be able to build correctly...
>
>
>
> Synopsis of issue:
>
> -----------------------
>
>
>
> When I build my SDK, I setup the following:
>
>
>
> SDKMACHINE =3D "x86_64"
>
> SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"
>
> TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"
>
> SDK_EXTRA_TOOLS =3D "  \
>
>     nativesdk-cmake \
>
>     nativesdk-clang \
>
>     "
>
> require conf/distro/include/yocto-uninative.inc
>
> INHERIT +=3D "uninative"
>
>
>
> My SDK builds and installs without issue=E2=80=A6
>
>
>
> Running  a very basic example produces the following issue:
>
>
>
> 09:22 smonsees@yix490016 ~/yocto/test>make hello x86_64-poky-linux-clang=
 -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -mlittle-endi=
an --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK/sysroots/corei7-64-pok=
y-linux  -O2 -pipe -g -feliminate-unused-debug-types  -ansi -c hello.c x86_=
64-poky-linux-clang -m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -ms=
se4.2 -mlittle-endian --sysroot=3D/disk0/scratch/smonsees/yocto/testSDK/sys=
roots/corei7-64-poky-linux  -O2 -pipe -g -feliminate-unused-debug-types  -a=
nsi hello.o -o hello
>
> clang-5.0: warning: argument unused during compilation: '-ansi' [-Wunuse=
d-command-line-argument]
>
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/=
bin/x86_64-poky-linux/x86_64-poky-linux-ld: cannot find /disk0/scratch/smon=
sees/yocto/testSDK/sysroots/corei7-64-poky-linux/usr/lib/clang/5.0.1/lib/li=
nux/libclang_rt.builtins-x86_64.a: No such file or directory
>
> clang-5.0: error: linker command failed with exit code 1 (use -v to see =
invocation)
>
> make: *** [hello] Error 1

this tells me that somehow compiler-rt-static-dev is not included or
is missing this libclang_rt.builtins-x86_64.a

>
> 09:22 smonsees@yix490016 ~/yocto/test>
>
>
>
> The file in question does not exist on my system.
>
>
>
> If I add "nativesdk-compiler-rt" like so:
>
>
>
> SDK_EXTRA_TOOLS =3D "  \
>
>     nativesdk-cmake \
>
>     nativesdk-clang \
>
>     nativesdk-compiler-rt \
>
>     "
>
>
>
> I get the following error:
>
>
>
> Log data follows:
>
> | DEBUG: Executing shell function do_configure
>
> | -- The C compiler identification is GNU 7.3.0
>
> | -- The CXX compiler identification is GNU 7.3.0
>
> | -- The ASM compiler identification is GNU
>
> | -- Found assembler:
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
>
> | 4-pokysdk-linux/x86_64-pokysdk-linux-gcc
>
> | -- Check for working C compiler:
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
>
> | 4-pokysdk-linux/x86_64-pokysdk-linux-gcc
>
> | -- Check for working C compiler:
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
>
> | 4-pokysdk-linux/x86_64-pokysdk-linux-gcc -- works
>
> | -- Detecting C compiler ABI info
>
> | -- Detecting C compiler ABI info - done
>
> | -- Detecting C compile features
>
> | -- Detecting C compile features - done
>
> | -- Check for working CXX compiler:
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
>
> | 4-pokysdk-linux/x86_64-pokysdk-linux-g++
>
> | -- Check for working CXX compiler:
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/usr/bin/x86_6
>
> | 4-pokysdk-linux/x86_64-pokysdk-linux-g++ -- works
>
> | -- Detecting CXX compiler ABI info
>
> | -- Detecting CXX compiler ABI info - done
>
> | -- Detecting CXX compile features
>
> | -- Detecting CXX compile features - done
>
> | -- Looking for unwind.h
>
> | -- Looking for unwind.h - found
>
> | CMake Error at CMakeLists.txt:38 (find_package):
>
> |   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project =
has
>
> |   asked CMake to find a package configuration file provided by "LLVM",=
 but
>
> |   CMake did not find one.
>
> |
>
> |   Could not find a package configuration file provided by "LLVM" with =
any of
>
> |   the following names:
>
> |
>
> |     LLVMConfig.cmake
>
> |     llvm-config.cmake
>
> |
>
> |   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
>
> |   "LLVM_DIR" to a directory containing one of the above files.  If "LL=
VM"
>
> |   provides a separate development package or SDK, be sure it has been
>
> |   installed.
>
> |
>
> |
>
> | -- Configuring incomplete, errors occurred!
>
> | See also "/disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limw=
s/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-com=
piler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/build/CMakeFiles/CMakeOutput.log".
>
> | WARNING: /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws=
/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-comp=
iler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/run.do_configure.25988:1 exit 1=
 from 'cmake $oecmake_sitefile /disk0/scratch/smonsees/yocto/workspace_2/me=
ta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-lin=
ux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/git -DCMAKE_INSTALL=
_PREFIX:PATH=3D/opt/limws/2.4.1/sysroots/x86_64-pokysdk-linux/usr -DCMAKE_I=
NSTALL_BINDIR:PATH=3Dbin -DCMAKE_INSTALL_SBINDIR:PATH=3Dbin -DCMAKE_INSTALL=
_LIBEXECDIR:PATH=3Dlibexec -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/opt/limws/2.4=
.1/sysroots/x86_64-pokysdk-linux/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D=
../com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/opt/limws/2.4.1/sysroots/x86_6=
4-pokysdk-linux/var -DCMAKE_INSTALL_LIBDIR:PATH=3Dlib -DCMAKE_INSTALL_INCLU=
DEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTA=
LL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/disk0/scratch/smonsees/yocto/wor=
kspace_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-=
pokysdk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/toolchai=
n.cmake -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -D=
COMPILER_RT_STANDALONE_BUILD=3DON -DCOMPILER_RT_DEFAULT_TARGET_TRIPLE=3Dx86=
_64-pokysdk-linux -DCOMPILER_RT_BUILD_XRAY=3DOFF -G Ninja ${PACKAGECONFIG_C=
ONFARGS} -DLLVM_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspace_2/meta-b=
ae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/n=
ativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysroot-native/u=
sr/bin/llvm-tblgen -DCLANG_TABLEGEN=3D/disk0/scratch/smonsees/yocto/workspa=
ce_2/meta-bae/meta-limws/builds/sbcb-default/tmp/work/x86_64-nativesdk-poky=
sdk-linux/nativesdk-compiler-rt/5.0.1+gitAUTOINC+4b38c4038a-r0/recipe-sysro=
ot-native/usr/bin/clang-tblgen -Wno-dev'
>
> | ERROR: Function failed: do_configure (log file is located at
>
> | /disk0/scratch/smonsees/yocto/workspace_2/meta-bae/meta-limws/builds/s
>
> | bcb-default/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-compiler
>
> | -rt/5.0.1+gitAUTOINC+4b38c4038a-r0/temp/log.do_configure.25988)
>
> ERROR: Task (virtual:nativesdk:/disk0/scratch/smonsees/yocto/workspace_2=
/poky/../meta-clang/recipes-devtools/clang/compiler-rt_git.bb:do_configure)=
 failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 5382 tasks of which 5341 didn't need to b=
e rerun and 1 failed.
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>
>=20
