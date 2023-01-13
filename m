Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFE7C54EBD
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 07:23:33 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web10.80750.1673594613090271868
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 23:23:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QYesm750;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-15bb8ec196aso9686351fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 12 Jan 2023 23:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZgUqP64m6ZnkhZNM4NesrqFrL1EfYCg1vM8DK8qtbtw=;
        b=QYesm75029YEkLYoV2VLuobRSboiDUfI8xpZPhuthultYvYEh3UoPsty+vNFtyiVSG
         ON/sqGcfrrYdMq1cVKiNxWptlbdUbDvP9B4IBLfN4Bg1y3X5j8S2C5yt96fMKLDX1iXR
         lSMlM5fop7Qi0YRmsBkAKmOq7i2TZtYysLNJ1y3yCyeDbjGC144iZ+RY8Av79QTPmnE0
         FZAtpMz/PDJ1p0+IeYccU970YgrFJD4v4HNoo6KCVncoZCCtNew7eGNyUzXAsJciuvov
         Q3nCStGbCM8q++QSrNMgBqM+2ErUQBeZ7Px3jGSOFy3OwSOapJAX9fo5vVN/bxYrJfft
         z+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZgUqP64m6ZnkhZNM4NesrqFrL1EfYCg1vM8DK8qtbtw=;
        b=mnsWnwn4E2cSECDpTCirKzecFnnOK71P7ajVbq0zucNXYJoEahQ9Pp1z2xMricfbsB
         9CWTG6yd+MN3PZ5xIfyHUYuOxbW5sV4u6AUvK0/EkQdNPIF44dSQhE+jz4s5UVz7Z1IU
         EgB5Glqo8/2Zo25FqoaO4nwas2AJfQV+PWKiwFnGH0nx4QsZkVreduhII6ypleZpacyq
         XcXGWrpWcd9FvE7DKBUX9KVtV587Xhd3uOL70He0E3eIr6BK/uVHkI91VDWwc0BLKtTq
         ZOgEWooZ4cKguBO2LOPjkEFnSvnKgxb6m8dP3gzvcwReTFizSGF6ZCDZ2SnzavRgGkoH
         D00g==
X-Gm-Message-State: AFqh2konnH+wSlVsJdAck6+DCvaT9npw1NVCcx+7aGrVHVc1kp3eFsuv
	7LfA+SP/wBKwrVo3/PqXevQtPc8d/Lu4rlywD8DO51GbopY=
X-Google-Smtp-Source: AMrXdXsplZ9LaFW6cusaYsNg0UcMrwVRIX40oHc0HTfN5poAhr+od1ExmoVQyAzF8cS1d+dK8t+7mQWvRXUJ8xj+WPs=
X-Received: by 2002:a05:6870:b01d:b0:144:e1eb:419 with SMTP id
 y29-20020a056870b01d00b00144e1eb0419mr6096689oae.262.1673594612089; Thu, 12
 Jan 2023 23:23:32 -0800 (PST)
MIME-Version: 1.0
References: <rQ1C.1673594358351494306.HMB9@lists.yoctoproject.org>
In-Reply-To: <rQ1C.1673594358351494306.HMB9@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jan 2023 23:23:06 -0800
Message-ID: <CAMKF1spzfc8f1_T9BT6cpzhUUXLAqoqpVG38RO3-fwcx-NOLfQ@mail.gmail.com>
Subject: Re: [yocto] gn native do compile fails
To: jovanbosic95@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 07:23:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58972

you need to install C++ runtime or perhaps its there but clang is not
able to find it. If you add libcxx-native to dependencies it might fix
it.

On Thu, Jan 12, 2023 at 11:19 PM <jovanbosic95@gmail.com> wrote:
>
> Can someone help me to solve this issue? I am not sure what can be the pr=
oblem since me and my colleague did the exact same steps, and on his machin=
e everything is done without any error and I am receiving constantly this o=
ne:
>
>
> ERROR: gn-native-106.0.5249.119-r0 do_compile: Execution of '/home/jovanb=
osic/Yocto/build/tmp/work/x86_64-linux/gn-native/106.0.5249.119-r0/temp/run=
.do_compile.2197284' failed with exit code 1
> ERROR: Logfile of failure stored in: /home/jovanbosic/Yocto/build/tmp/wor=
k/x86_64-linux/gn-native/106.0.5249.119-r0/temp/log.do_compile.2197284
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
> | [2/195] CXX src/base/command_line.o
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
> | [3/195] CXX src/base/environment.o
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
> | [4/195] CXX src/base/files/file_path.o
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
> | [5/195] CXX src/base/files/file.o
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
/gn-native/106.0.5249.119-r0/temp/run.do_compile.2197284' failed with exit =
code 1
> ERROR: Task (/home/jovanbosic/Yocto/meta-browser/meta-chromium/recipes-br=
owser/chromium/gn-native_106.0.5249.119.bb:do_compile) failed with exit cod=
e '1'
>
>
>
> Maybe there is a problem with some libraries?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58971): https://lists.yoctoproject.org/g/yocto/messag=
e/58971
> Mute This Topic: https://lists.yoctoproject.org/mt/96241718/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

