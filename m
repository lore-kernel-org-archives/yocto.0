Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F416C433FE
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 17:15:17 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web09.14270.1644340515883242134
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 09:15:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XXo6G05M;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id o5so6951711qvm.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 09:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Vri6S1MjbvG7/5iST2Tq35GWA4p2vYUDJSQy3vSCd7w=;
        b=XXo6G05M2H/+AjtqkFF0BIoaL5UfV+Pc2mDi2ygL+tXCFZDuzio4pL5HuhvInKvyw6
         xyBDXb/h3eWp1ikU2y5vVs4dt9OWTSm3Xkho+7DFYwJTHaP5tHrvG70OZDmQeyDySC+p
         Pqaz39nkmIuFaepgf3owpJCOSeUn7IXmod4XJxfMOTfFeerHh524FAhG4jkTcy04NrLT
         kKiHdmYehTfk7fPBsOxl/1Tz5rnec8jCD5/QUg3QBW94My/2jER1fBswvm2eYpK4AL8y
         jwPj9h6gaeypffm01jYOEvKFvr0PbNLwghQPnEvZ1IaxaErTNL1NrJTzjYiXw18wJWy7
         Rimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Vri6S1MjbvG7/5iST2Tq35GWA4p2vYUDJSQy3vSCd7w=;
        b=Y13dUA9zXgIDDQslysAuUj2nbMCXyF8ZvqHgywnnauKTZh5OZcb5gazpcDBu2LJ47i
         IyGop0fX4FA6h6svCeD96NsD4smy7b1+LvIB2AflhOlbB9tjP70LkvcQYD+fduJJUis5
         5tRO4r2MMv80H+Z334lqIcWl9VsrAlqUVjeGtYjKbbftUmNDS4x/0FYpbIMaa87Gvfth
         yCQxUXSP6V1mwsUT5uNEB3uQC+4DfiM4WW9l8CwZD08VpcOSuytCcOiXSlSXdwv83EOf
         f9LiXv5/iSN+awZlrCUCZIBPi5pKDRrrQHUslT2F+A4bfgC462aZSWUVGlzbpqgXct0j
         DaJw==
X-Gm-Message-State: AOAM530J48GHS/Og+cC9slxTqdDCncLNggeCcJXX8M2c/RIjl8KxLlnr
	mmik30KAilS6iW/yeLTjynyG3KL62tAqWHUqjbU=
X-Google-Smtp-Source: 
 ABdhPJzsczRHSi2EIOtBTrEcntxjqOTjiy8Q1Z6z7tOT9GWxF4abkr5ltKpZiOO4rF/Hn0bx5QSTKeuQAqctz0X+0Bk=
X-Received: by 2002:a05:6214:27e8:: with SMTP id
 jt8mr3948472qvb.110.1644340514654;
 Tue, 08 Feb 2022 09:15:14 -0800 (PST)
MIME-Version: 1.0
References: <4fRZ.1644335005367342969.RUgu@lists.yoctoproject.org>
In-Reply-To: <4fRZ.1644335005367342969.RUgu@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Feb 2022 09:14:48 -0800
Message-ID: 
 <CAMKF1sorLM=2y07=SkxF0h0sc28CxFqibWwoqYEsQACU_X6yHg@mail.gmail.com>
Subject: Re: [yocto] run.do_compile error on poky-dunfell release
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 17:15:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56107

you perhaps need this kbd patch

https://git.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git/commit/?id=
=3D50eae66fc21ef8e01c69a9d3c1ff3fcb0b2644a0

On Tue, Feb 8, 2022 at 7:43 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote=
:
>
> Hello All,
>
> When I am bitbaking my custom image for STM32MP1 based Avenger96 board I =
am facing some errors related to "analyze.l:466:19: error: format not a str=
ing literal and no format arguments [-Werror=3Dformat-security]". I don't u=
nderstand why I am getting this error as this is the first I am facing it. =
Please find the below complete log:
>
> DEBUG: Executing python function autotools_aclocals
> DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', 'co=
mmon-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> DEBUG: Python function autotools_aclocals finished
> DEBUG: Executing shell function do_compile
> NOTE: make -j 8
> make  all-recursive
> make[1]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build'
> Making all in src
> make[2]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src'
> Making all in libcommon
> make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libcommon'
> make[3]: Nothing to be done for 'all'.
> make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libcommon'
> Making all in libkbdfile
> make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkbdfile'
> make[3]: Nothing to be done for 'all'.
> make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkbdfile'
> Making all in libkeymap
> make[3]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
> make  all-am
> make[4]: Entering directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
> ../../arm-poky-linux-gnueabi-libtool  --tag=3DCC   --mode=3Dcompile arm-p=
oky-linux-gnueabi-gcc  -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7 -fstack-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wfor=
mat-security -Werror=3Dformat-security --sysroot=3D/root/build-swu-v2/tmp/w=
ork/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot =
-DHAVE_CONFIG_H -I. -I../../../kbd-2.2.0/src/libkeymap -I../..   -I../../..=
/kbd-2.2.0/src/libkeymap -I. -I../../../kbd-2.2.0/src/libkeymap/.. -I./.. -=
I../../../kbd-2.2.0/src/libkeymap/../libcommon -I./../libcommon -I../../../=
kbd-2.2.0/src/libkeymap/../libkbdfile -I./../libkbdfile -DDATADIR=3D\"/usr/=
share\" -DLOCALEDIR=3D\"/usr/share/locale\" -U_GNU_SOURCE -funit-at-a-time =
  -g -O2 -D_FORTIFY_SOURCE=3D2  -O2 -pipe -g -feliminate-unused-debug-types=
 -fmacro-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/debug/kbd/2.2.0-r0               =
       -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/debug/kbd/2.2.0-r0         =
             -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-=
neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot=3D               =
       -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-v=
fpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot-native=3D  -Waggregate-=
return -Wall -Wcast-align -Wconversion -Wdisabled-optimization -Wextra -Wmi=
ssing-declarations -Wmissing-format-attribute -Wmissing-noreturn -Wmissing-=
prototypes -Wpointer-arith -Wredundant-decls -Wshadow -Wstrict-prototypes -=
Wwrite-strings -c -o analyze.lo ../../../kbd-2.2.0/src/libkeymap/analyze.c
> arm-poky-linux-gnueabi-libtool: compile:  arm-poky-linux-gnueabi-gcc -mth=
umb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protect=
or-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat=
-security --sysroot=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-p=
oky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot -DHAVE_CONFIG_H -I. -I../../.=
./kbd-2.2.0/src/libkeymap -I../.. -I../../../kbd-2.2.0/src/libkeymap -I. -I=
../../../kbd-2.2.0/src/libkeymap/.. -I./.. -I../../../kbd-2.2.0/src/libkeym=
ap/../libcommon -I./../libcommon -I../../../kbd-2.2.0/src/libkeymap/../libk=
bdfile -I./../libkbdfile -DDATADIR=3D\"/usr/share\" -DLOCALEDIR=3D\"/usr/sh=
are/locale\" -U_GNU_SOURCE -funit-at-a-time -g -O2 -D_FORTIFY_SOURCE=3D2 -O=
2 -pipe -g -feliminate-unused-debug-types -fmacro-prefix-map=3D/root/build-=
swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/=
usr/src/debug/kbd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work=
/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0=3D/usr/src/debug/k=
bd/2.2.0-r0 -fdebug-prefix-map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-n=
eon-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/recipe-sysroot=3D -fdebug-prefix-=
map=3D/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/kbd/2.2.0-r0/recipe-sysroot-native=3D -Waggregate-return -Wall -Wcast-ali=
gn -Wconversion -Wdisabled-optimization -Wextra -Wmissing-declarations -Wmi=
ssing-format-attribute -Wmissing-noreturn -Wmissing-prototypes -Wpointer-ar=
ith -Wredundant-decls -Wshadow -Wstrict-prototypes -Wwrite-strings -c ../..=
/../kbd-2.2.0/src/libkeymap/analyze.c  -fPIC -DPIC -o .libs/analyze.o
> analyze.l: In function 'find_incl_file_near_fn':
> analyze.l:141:24: warning: passing argument 2 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: exp=
ected 'char **' but argument is of type 'const char **'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                              ~~~~~~~^~~~~~~
> analyze.l:141:42: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                                              ~~~~~~~^~~~~~~~
> analyze.l: In function 'find_standard_incl_file':
> analyze.l:168:22: warning: passing argument 2 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                              ~~~~~~~^~~~~~~
> analyze.l:168:40: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                                              ~~~~~~~^~~~~~~~
> analyze.l:197:24: warning: passing argument 2 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                              ~~~~~~~^~~~~~~
> analyze.l:197:42: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                                              ~~~~~~~^~~~~~~~
> analyze.l: In function 'find_incl_file':
> analyze.l:210:27: warning: passing argument 2 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                              ~~~~~~~^~~~~~~
> analyze.l:210:45: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                                              ~~~~~~~^~~~~~~~
> analyze.l:225:26: warning: passing argument 2 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:37: note: exp=
ected 'char **' but argument is of type 'const char **'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                              ~~~~~~~^~~~~~~
> analyze.l:225:36: warning: passing argument 3 of 'kbdfile_find' from inco=
mpatible pointer type [-Wincompatible-pointer-types]
> In file included from ../../../kbd-2.2.0/src/libkeymap/keymap/kmap.h:36,
>                  from ../../../kbd-2.2.0/src/libkeymap/keymap.h:8,
>                  from ../../../kbd-2.2.0/src/libkeymap/analyze.c:1:
> ../../../kbd-2.2.0/src/libkeymap/../libkbdfile/kbdfile.h:40:53: note: exp=
ected 'char **' but argument is of type 'const char * const*'
>    40 | int kbdfile_find(char *fnam, char **dirpath, char **suffixes, str=
uct kbdfile *fp);
>       |                                              ~~~~~~~^~~~~~~~
> In file included from analyze.l:10:
> analyze.l: In function 'yylex':
> analyze.l:466:19: error: format not a string literal and no format argume=
nts [-Werror=3Dformat-security]
> ../../../kbd-2.2.0/src/libkeymap/contextP.h:79:55: note: in definition of=
 macro 'lk_log_cond'
>    79 |    lk_log(ctx, level, __FILE__, __LINE__, __func__, ##arg); \
>       |                                                       ^~~
> analyze.l:466:6: note: in expansion of macro 'ERR'
> cc1: some warnings being treated as errors
> make[4]: *** [Makefile:604: analyze.lo] Error 1
> make[4]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
> make[3]: *** [Makefile:476: all] Error 2
> make[3]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src/libkeymap'
> make[2]: *** [Makefile:1083: all-recursive] Error 1
> make[2]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build/src'
> make[1]: *** [Makefile:471: all-recursive] Error 1
> make[1]: Leaving directory '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon=
-vfpv4-poky-linux-gnueabi/kbd/2.2.0-r0/build'
> ERROR: oe_runmake failed
> make: *** [Makefile:402: all] Error 2
> WARNING: exit code 1 from a shell command.
> ERROR: Execution of '/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-=
poky-linux-gnueabi/kbd/2.2.0-r0/temp/run.do_compile.380' failed with exit c=
ode 1
>
> Can anyone please let me know how to fix this issue?
>
> Your help will be much appreciated.
>
> Thanks in advance.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56103): https://lists.yoctoproject.org/g/yocto/messag=
e/56103
> Mute This Topic: https://lists.yoctoproject.org/mt/88998953/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

