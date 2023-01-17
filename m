Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56524C63797
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 08:22:53 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.191574.1673943767688158521
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 00:22:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ox4FtVXP;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-15ed38a9b04so12585364fac.8
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 00:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ABGB6TlsW8MEauQb4jxeP2NNn3FHZltbk06Lx1Br8Lw=;
        b=Ox4FtVXPtJGvJQL33bvmzMYQl+dZAXBjL+vIlOBdvUOmgMie9qErLO+20qKufkGvz1
         jqEJughijrZScjBhiAAgKUTbkCTNP5B0fbyCZFlP2/iiozpaM73vcJzeWs5lG3msn/8h
         mfBeICI34B75Jhd0DlWr8ASuJCsD1iiuWpahm6epstH4y1FmitKjVypq1Dp54i8JDXBC
         bCsKwVcMd2icvvh0m9ScNN9WMPJnk4CK5WYwsgBlRHTOlnrK/BngSz3grj6Vdxj5nINm
         jf8fj/UXKu/RbLu/FI4pZtS2qnlLgVBwPkq/itprURt1HjIa0/iolBl3+TxiqxmvtWRe
         XwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABGB6TlsW8MEauQb4jxeP2NNn3FHZltbk06Lx1Br8Lw=;
        b=Qd3OHiMahv8Ydp+9/WQpESwBekCj0k2Jaa5LyHHK2qKrOt329jGitxtovlzi9LUULH
         3OTtJj1HUntPScH21OGDYPWuhGeKQuqpxW2tt8AVCw8zmauhSW7Dc8OLlg6mjdnXsXSt
         uPbf83l3X5rlY82q3ljDMyT6Bqt5OAqfeXkynqnygh//+LeSHeN7PA7BfPKxg7h0FwWF
         2TmlTiDOGNpCsKlmTXyi3HIWO0tobPZxfRueoXkue8oNsW62qh+TfBmJu7wrEzJKYdpU
         z5W0zVmNQBtwjOTUc9XnBv/s6X4DyXpSBFYrwoLsIN/iDuvO4j5AjoRXfRUWS/n9AUxi
         qTUw==
X-Gm-Message-State: AFqh2krHG2Agm7LXicWM3fQUV/cl2zDEieA/ruZeG6+tu0j/N7AQzmo9
	G9emCoeB0VTg6zfsZq64Vl7LcW+Pp23UJuWQptI=
X-Google-Smtp-Source: AMrXdXtCmhwS2B19jil7sSM6pd7o2mV5Z1nCm5Sp1XN2DR0Ak2+cCjSwZsnkDSRBBlgXFDS6TCOKUGo0Jz15NZqU1/M=
X-Received: by 2002:a05:6870:514a:b0:15e:d5b1:33df with SMTP id
 z10-20020a056870514a00b0015ed5b133dfmr175922oak.55.1673943766767; Tue, 17 Jan
 2023 00:22:46 -0800 (PST)
MIME-Version: 1.0
References: <q6fH.1673940011394321308.ehBq@lists.yoctoproject.org>
In-Reply-To: <q6fH.1673940011394321308.ehBq@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Jan 2023 00:22:20 -0800
Message-ID: <CAMKF1sq4i1BXjuH-YLdp7=tD+321GywBT5bvqrTFU7a-uEquRg@mail.gmail.com>
Subject: Re: [yocto] gn-native_106.0.5249.119.bb:do_compile failed with exit
 code '1'
To: jovanbosic95@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 08:22:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59005

Can you try installing

libstdc++-dev on your build machine ?

On Mon, Jan 16, 2023 at 11:20 PM <jovanbosic95@gmail.com> wrote:
>
> Can someone help me with this problem? I want to install chromium on dunf=
ell, and I am receiving this problem.
>
> jovanbosic@administrator-ThinkPad-L470:~/Yocto/build$ bitbake core-image-=
full-cmdline
> WARNING: Host distribution "ubuntu-22.04" has not been validated with thi=
s version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.
> Loading cache: 100% |############################################| Time: =
0:00:00
> Loaded 3726 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "qemux86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.22"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp
> meta-selftest
> meta-skeleton        =3D "dunfell:6b8a307b7843af23d189d7ffcecf32c05afac85=
0"
> meta-chromium        =3D "master:068b693ffcf0273ec23d0ab1eeb8f4b97eb143a1=
"
> meta-clang           =3D "dunfell-clang12:8a6558fe1cedb3eb817333369a3cc25=
12364f1a6"
> meta-filesystems
> meta-gnome
> meta-initramfs
> meta-multimedia
> meta-networking
> meta-oe
> meta-perl
> meta-python
> meta-webserver
> meta-xfce            =3D "dunfell:7952135f650b4a754e2255f5aa03973a3234412=
3"
>
> Initialising tasks: 100% |#######################################| Time: =
0:00:05
> Sstate summary: Wanted 21 Found 0 Missed 21 Current 2963 (0% match, 99% c=
omplete)
> NOTE: Executing Tasks
> ERROR: gn-native-106.0.5249.119-r0 do_compile: Execution of '/home/jovanb=
osic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/temp/run=
.do_compile.4042233' failed with exit code 1
> ERROR: Logfile of failure stored in: /home/jovanbosic/Yocto/build/tmp/wor=
k/x86_64-linux/gn-native/106.0.5249.119-r0/temp/log.do_compile.4042233
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | ninja: Entering directory `/home/jovanbosic/Yocto/build/tmp/work/x86_64=
-linux/gn-native/106.0.5249.119-r0/chromium-106.0.5249.119/out/Release/gn_b=
uild'
> | [1/195] CXX src/base/files/file_path_constants.o
> | FAILED: src/base/files/file_path_constants.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/files/file_path_constan=
ts.o.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp=
/work/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/in=
clude -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/=
gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_=
LIBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections =
-ffunction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACR=
OS -D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagno=
stics-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=
=3Dc++17 -c ../../../tools/gn/src/base/files/file_path_constants.cc -o src/=
base/files/file_path_constants.o
> | ../../../tools/gn/src/base/files/file_path_constants.cc:7:10: fatal err=
or: 'iterator' file not found
> | #include <iterator>
> |          ^~~~~~~~~~
> | 1 error generated.
> | [2/195] CXX src/base/files/file_path.o
> | FAILED: src/base/files/file_path.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/files/file_path.o.d -I.=
./../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_=
64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 =
-pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/=
106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS=
_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction=
-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STD=
C_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-colo=
r -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c =
../../../tools/gn/src/base/files/file_path.cc -o src/base/files/file_path.o
> | In file included from ../../../tools/gn/src/base/files/file_path.cc:5:
> | ../../../tools/gn/src/base/files/file_path.h:107:10: fatal error: 'iosf=
wd' file not found
> | #include <iosfwd>
> |          ^~~~~~~~
> | 1 error generated.
> | [3/195] CXX src/base/files/file.o
> | FAILED: src/base/files/file.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/files/file.o.d -I../../=
../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-li=
nux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe=
 -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0=
.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS_NO_V=
ENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction-sect=
ions -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STDC_FOR=
MAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-color -Wa=
ll -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c ../..=
/../tools/gn/src/base/files/file.cc -o src/base/files/file.o
> | In file included from ../../../tools/gn/src/base/files/file.cc:5:
> | ../../../tools/gn/src/base/files/file.h:10:10: fatal error: 'string' fi=
le not found
> | #include <string>
> |          ^~~~~~~~
> | 1 error generated.
> | [4/195] CXX src/base/command_line.o
> | FAILED: src/base/command_line.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/command_line.o.d -I../.=
./../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-=
linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pi=
pe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/106=
.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS_NO=
_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction-se=
ctions -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STDC_F=
ORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-color -=
Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c ../=
../../tools/gn/src/base/command_line.cc -o src/base/command_line.o
> | In file included from ../../../tools/gn/src/base/command_line.cc:5:
> | ../../../tools/gn/src/base/command_line.h:19:10: fatal error: 'map' fil=
e not found
> | #include <map>
> |          ^~~~~
> | 1 error generated.
> | [5/195] CXX src/base/environment.o
> | FAILED: src/base/environment.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/environment.o.d -I../..=
/../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-l=
inux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pip=
e -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.=
0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBCPP_HAS_NO_=
VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffunction-sec=
tions -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -D__STDC_FO=
RMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostics-color -W=
all -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++17 -c ../.=
./../tools/gn/src/base/environment.cc -o src/base/environment.o
> | In file included from ../../../tools/gn/src/base/environment.cc:5:
> | ../../../tools/gn/src/base/environment.h:8:10: fatal error: 'map' file =
not found
> | #include <map>
> |          ^~~~~
> | 1 error generated.
> | [6/195] CXX src/base/files/file_enumerator.o
> | FAILED: src/base/files/file_enumerator.o
> | clang++ -target x86_64-linux  -MMD -MF src/base/files/file_enumerator.o=
.d -I../../../tools/gn/src -I. -isystem/home/jovanbosic/Yocto/build/tmp/wor=
k/x86_64-linux/gn-native/106.0.5249.119-r0/recipe-sysroot-native/usr/includ=
e -O2 -pipe -isystem/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-n=
ative/106.0.5249.119-r0/recipe-sysroot-native/usr/include -O2 -pipe -D_LIBC=
PP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS -DNDEBUG -O3 -fdata-sections -ffu=
nction-sections -Werror -D_FILE_OFFSET_BITS=3D64 -D__STDC_CONSTANT_MACROS -=
D__STDC_FORMAT_MACROS -pthread -pipe -fno-exceptions -fno-rtti -fdiagnostic=
s-color -Wall -Wextra -Wno-unused-parameter -Wextra-semi -Wundef -std=3Dc++=
17 -c ../../../tools/gn/src/base/files/file_enumerator.cc -o src/base/files=
/file_enumerator.o
> | In file included from ../../../tools/gn/src/base/files/file_enumerator.=
cc:5:
> | ../../../tools/gn/src/base/files/file_enumerator.h:11:10: fatal error: =
'vector' file not found
> | #include <vector>
> |          ^~~~~~~~
> | 1 error generated.
> | ninja: build stopped: subcommand failed.
> | Traceback (most recent call last):
> |   File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/10=
6.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/bootstrap.py", l=
ine 141, in <module>
> |     sys.exit(main(sys.argv[1:]))
> |   File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/10=
6.0.5249.119-r0/chromium-106.0.5249.119/tools/gn/bootstrap/bootstrap.py", l=
ine 126, in main
> |     subprocess.check_call(
> |   File "/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux/gn-native/10=
6.0.5249.119-r0/recipe-sysroot-native/usr/lib/python3.8/subprocess.py", lin=
e 364, in check_call
> |     raise CalledProcessError(retcode, cmd)
> | subprocess.CalledProcessError: Command '['ninja', '-C', '/home/jovanbos=
ic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/chromium-1=
06.0.5249.119/out/Release/gn_build', '-w', 'dupbuild=3Derr', 'gn']' returne=
d non-zero exit status 1.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/jovanbosic/Yocto/build/tmp/work/x86_64-linux=
/gn-native/106.0.5249.119-r0/temp/run.do_compile.4042233' failed with exit =
code 1
> ERROR: Task (/home/jovanbosic/Yocto/meta-browser/meta-chromium/recipes-br=
owser/chromium/gn-native_106.0.5249.119.bb:do_compile) failed with exit cod=
e '1'
> NOTE: Tasks Summary: Attempted 4710 tasks of which 4706 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/jovanbosic/Yocto/meta-browser/meta-chromium/recipes-browser/chrom=
ium/gn-native_106.0.5249.119.bb:do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59003): https://lists.yoctoproject.org/g/yocto/messag=
e/59003
> Mute This Topic: https://lists.yoctoproject.org/mt/96325807/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

