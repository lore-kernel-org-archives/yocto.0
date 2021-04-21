Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.10632.1619003448398835012
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 04:10:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=CxqgN4QN;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1619003448; x=1776683448;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=tib4Wy6HAVdSz9srabjDF/y6erOux5AK37bAIctSfaY=;
  b=CxqgN4QN+hcAALmgNe/4SKS3sYv+rsK8wL9Le8nDs+9l3RVyM3NX6dAj
   SglIeE/x4H4p6muMy4ldZhP3wfXEnpePA26RdN1O2IFJx/qlBRkILR/gf
   pgqu6oyRn5UDDkfRCFRnuydgPw5W+GoAmuwwHpURN+nsXIfXc9lEwS4QM
   M=;
IronPort-SDR: ypdphl8GRdEbw+u4q9WF9ZJC99UdcRx4nlZtSG86M7Lu5KbuYdIvCdbYFHvCA9HH9ubNP4R89i
 PHmu27i2+8ug==
IronPort-PHdr: =?us-ascii?q?A9a23=3AUyP7PBe9HrtUwSWgNjT8X0wVlGM+zdnLVj590?=
 =?us-ascii?q?bIXzolWe6HmxazJeXLljd1ThVPEFb/W9+hDw7KP9fy5CCpaucnK4C9KWacPf?=
 =?us-ascii?q?idNsd8RkQ0kDZzNImzAB9muURYHGt9fXkRu5XCxPBsdMs//Y1rPvi/6tmZKS?=
 =?us-ascii?q?V3wOgVvO+v6BJPZgdip2OCu4Z3TZBhDiCagbb9oIxi6sAHcutMIjYd+KKs9x?=
 =?us-ascii?q?RjEr3lVcOlK2G1kIk6ekQzh7cmq5p5j9CpQu/Ml98FeVKjxYro1Q79FAjk4K?=
 =?us-ascii?q?m45/MLkuwXNQguJ/XscT34ZkgFUDAjf7RH1RYn+vy3nvedgwiaaPMn2TbcpW?=
 =?us-ascii?q?TS+6qpgVRHlhDsbOzM/7WrakdJ7gr5Frx29phx/24/Ub5+TNPpiZaPWYNcWS?=
 =?us-ascii?q?XNcUspNSyBNB4WxZJYNAeUcJ+ZVt4nzqUUToxuiCweiB+3vxT1JhnDq0qM13?=
 =?us-ascii?q?P8sER3f3AwiA94CrGjYoMvzOawPUe611q7IzTDbYv9Y3jn9747Icgs/rv6SR?=
 =?us-ascii?q?rJ8adfax1QzFwzbkFWft4rlNC6L2+8Qt2SU4fduWeehh2U6rAxxuSSvydkyi?=
 =?us-ascii?q?obXgIIZ0FXE9SJ/wIYuO9K3VlV7bMW/H5RKqS6aLIt3Qtg+Q252vSY60acKt?=
 =?us-ascii?q?oK8fCgP0ZkqwQPUZPObfYaS+B3jSPqRLilihHJjYL+zmxa//0evxOHgVse51?=
 =?us-ascii?q?FRHojRKnNTRtn4A2ALe5MiaRvZh/0qv1iuD2QDN5u1ZPE04ibbWJpA9zrIui?=
 =?us-ascii?q?5cev1rOEynrk0v4i6+Wc18r+umu6+n/bbXmoIKcO5VzigHkPaQjnNG0D+cgM?=
 =?us-ascii?q?gUWQmSX5f6w2bPh8EHjXblHivM7nrPYvZ3bPcgXu7K1DxVa34ss8RqyAC2q3?=
 =?us-ascii?q?MkYkHQBMVlLYgiIj5LzNFHLOP34CPC/jEmynzpz3PDGO6HhAo3KLnjejLftZ?=
 =?us-ascii?q?bZ95FBYyAo01d1f4ZJUCrcbL/L2QU/8t9zVAgMlPwCp2ernDs9y2pkFVm2VH?=
 =?us-ascii?q?KCZK6PTsUSU5u0xJumMf5UZtyr6K/gg//LujHk5lkEBfaSxwJcbdGq0E/pkL?=
 =?us-ascii?q?kmDfHbhhtkMHX0Lswc/VODqjUeNUT9XZ3a8RaI84TQ7BZq9DYffWI+tnqKO3?=
 =?us-ascii?q?CGhEp1TYWBGDEuMHmn2eIWfQPoDczidLdF6kj0ETrihV5Eu1RS1tAPg17VnK?=
 =?us-ascii?q?e/U9jUCtZ3/zNh1+/HTlRYq+D10CMSSz32NT2Zvk2MMRj82x7x/oVdnxlaD1?=
 =?us-ascii?q?qh3n+BYFdtL5/NTVQc6N4DTwPBmC9zoXQLBZNiJGx6aRYCFATw0Bug4wZdae?=
 =?us-ascii?q?U9/XdaigxXr0C+jArtTnLuOUs8a6KXZijLUIMBmxnvdkOEak1Q4T80HHiXmu?=
 =?us-ascii?q?5U+vUCHHJLEjUif0aOtc78R0TXl/m6O1nuVoExdS0h7VqCTDiNXXVffsdmsv?=
 =?us-ascii?q?hCKdLSpE7lyd1IZkaa/?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASVWfyKDb65gEFA3lHekV55DYdL4zR+YMi2?=
 =?us-ascii?q?QD/UZ3VBBTb4ikh9mj9c5rsyPcpRQwfDUbmd6GMLSdWn+0z/VIyKQYILvKZm?=
 =?us-ascii?q?XbkUavKIlj6qnv03nbGyP4/vNAzqsIScJDIfLqC1wSt7ee3CCdM/INhOaK67?=
 =?us-ascii?q?qpg+C29QYOcShQZ6tt7xh0B2+geyUaeCB9GZE7GJCAj/A3wAaIRHJ/VLXeOl?=
 =?us-ascii?q?AVG+LZq9XXmNbqaQMLGh4i5GC14g+A+fr4FRPw5HYjeiIK2rsp/WjbnxeR3M?=
 =?us-ascii?q?WemuD+0BPa2m/V4ZxZlNzq2rJ4da+xo9lQNjXg4zzHWLhc?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AtAAC4BoBg/0LBJQpaGwEBAQEBAQE?=
 =?us-ascii?q?BBQEBARIBAQEDAwEBAUAJgTgDAQEBCwGBe4EmgUELli8DgQyEXYRJhHqLV4F?=
 =?us-ascii?q?jBQsBAQEBAQEBAQEIAR0LDAQBAYEWAUSCdQKBdiY3Bg4CAwEBDAEBBgEBAQE?=
 =?us-ascii?q?BBgQBgQOFUA2COCkBg2IBAQEDAQEZAR8UKwUHBAIBCA0EBAEBARUJECEHCQE?=
 =?us-ascii?q?dCAIEDgUIFQSCTAWCVQMOMKcMGjV4gTQaAmWDPwGBGIJtDYInCQGBMAGBZIU?=
 =?us-ascii?q?PhmKCDUGBE4JsNj6CHkIDAoEWCAIIARIBTQYNhTkEgV4RFBAzAQEVFwQMHAE?=
 =?us-ascii?q?hCQgCAQcMFgIFGwIuIw0QAQcBAj4OFQEEAQJhD5A8Ewg7jkqaEyVbBwODDYl?=
 =?us-ascii?q?rjAWBZoUzHhCDUIE/iUKFfgOLHoUYoRKDGY8jDAYpDhWENgIEAgQFAhaBajF?=
 =?us-ascii?q?ccHCDOQkWMRcCjjkWgQIBCIdXhUlzAjYCBgoBAQMJi3+BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2AtAAC4BoBg/0LBJQpaGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAUAJgTgDAQEBCwGBe4EmgUELli8DgQyEXYRJhHqLV4FjBQsBAQEBAQEBA?=
 =?us-ascii?q?QEIAR0LDAQBAYEWAUSCdQKBdiY3Bg4CAwEBDAEBBgEBAQEBBgQBgQOFUA2CO?=
 =?us-ascii?q?CkBg2IBAQEDAQEZAR8UKwUHBAIBCA0EBAEBARUJECEHCQEdCAIEDgUIFQSCT?=
 =?us-ascii?q?AWCVQMOMKcMGjV4gTQaAmWDPwGBGIJtDYInCQGBMAGBZIUPhmKCDUGBE4JsN?=
 =?us-ascii?q?j6CHkIDAoEWCAIIARIBTQYNhTkEgV4RFBAzAQEVFwQMHAEhCQgCAQcMFgIFG?=
 =?us-ascii?q?wIuIw0QAQcBAj4OFQEEAQJhD5A8Ewg7jkqaEyVbBwODDYlrjAWBZoUzHhCDU?=
 =?us-ascii?q?IE/iUKFfgOLHoUYoRKDGY8jDAYpDhWENgIEAgQFAhaBajFccHCDOQkWMRcCj?=
 =?us-ascii?q?jkWgQIBCIdXhUlzAjYCBgoBAQMJi3+BEAEB?=
X-IronPort-AV: E=Sophos;i="5.82,238,1613433600"; 
   d="scan'208";a="367666464"
IronPort-SDR: 3+jFbngjezUapfl7vK7PlU5pCYwd8vjVUQgDUMFGnHrllTPuMkmT+ipTD6PurCoYPcVkPNnwoi
 P8GSmNJ2LFaRgUhsxxr6XfNB5kyBOg6g348wrFxjtQDO6hdvZYIawzZaVkCosOXBobw0FCwRhD
 JJr1xcyHz00IhK+5KlsTSwgacNgTg9ZeNtWhZ2JlO54sOkp3IEvnobnWhS36lzOoo6VoPi9tBa
 LUrFM5RRSP+aw/JW/9m3FKAqmZKhZ1thaRdheI3PdkbO3232Sx8TtJ64aCsox7V+PxJUBa7znE
 Gsw=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto llvm support and meta-clang
Thread-Topic: [yocto] #yocto llvm support and meta-clang
Thread-Index: AQHXNibeV0VzDdxXTI+S1EfmtA5Mpaq+zdLQ
Date: Wed, 21 Apr 2021 11:09:43 +0000
In-Reply-To: <CAMKF1sqYSpxVJ_yZnjhBBGviU+LPnShoj=oEjZp4UAnZ=KNZoQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.33
dlp-reaction: no-action
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1677DB0F964DD7A0.17523@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Khem:

There are at least 4 zeus released tags, can you vouch for one of them to =
work properly with meta-clang ?
Porting to dunfell might not be possible at this time...

Would it be possible to build the dunfell drop of meta-clang under zeus ?


Although we do not plan on using clang in the kernel, I did a quick build =
to see if I would get a similar error...
Seeing: error: unknown argument: '-maccumulate-outgoing-args' for kernel b=
uild

Any ideas what might be missing ?

Again Note: If I remove/comment out the line TOOLCHAIN ?=3D "clang" in con=
f/local.conf, the build is much faster,
and it builds without the error, also appears not to require/include "llvm=
" component in build.
I do not believe the full package was actually built/enabled, but no error=
s and image is functional.

Steps used to build a clean Kernel image with meta-clang...

(1) Added meta-clang to bblayers.conf

(2) Added Setting for meta-clang in conf/local.conf:

TOOLCHAIN ?=3D "clang"

The build is much slower due to "clang-native-9.0.1-r0 do_compile"...

EXT SDK build error seen:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

13:36 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default> bitbake -k sbcb-defaultfs-fullParsing recipes: 100% |#######=
##########################################################################|=
 Time: 0:01:27
Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3671 targets, =
91 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.9"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "sbcb-default"
DISTRO               =3D "limws"
DISTRO_VERSION       =3D "3.0.4"
TUNE_FEATURES        =3D "m64 corei7"
TARGET_FPU           =3D ""
meta                =20
meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab92=
0eed00e"
meta-perl            
meta-python          
meta-filesystems    =20
meta-networking      
meta-initramfs      =20
meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651503"
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b947091=
e"

Initialising tasks: 100% |################################################=
##############################| Time: 0:00:05
Checking sstate mirror object availability: 100% |########################=
##############################| Time: 0:00:01
Sstate summary: Wanted 2137 Found 709 Missed 1428 Current 0 (33% match, 0%=
 complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: gnu-efi-3.0.9-r0 do_compile: oe_runmake failed
ERROR: gnu-efi-3.0.9-r0 do_compile: Execution of '/disk0/scratch/smonsees/=
yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-ef=
i/3.0.9-r0/temp/run.do_compile.1840' failed with exit code 1:
mkdir -p /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tm=
p/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib
make -C /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp=
/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib -f /di=
sk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7=
-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/Makefile SRCDIR=3D/disk0=
/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64=
-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib ARCH=3Dx86_64
make[1]: Entering directory `/disk0/scratch/smonsees/yocto/workspace_3/bui=
lds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.=
0.9/x86_64/lib'
for sdir in ia32 x86_64 ia64 aarch64 arm mips64el runtime; do mkdir -p $sd=
ir; done
x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.2 =
  -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argume=
nts --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-defa=
ult/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk0/=
scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-=
poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/yo=
cto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/=
3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu=
-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-=
3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -fm=
acro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu-e=
fi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smonse=
es/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu=
-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fdebu=
g-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-defau=
lt/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D        =
              -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_=
3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recip=
e-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -g =
-O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestanding=
 -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpragm=
as -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wchar=
 -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-check =
-fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outgoi=
ng-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outgo=
ing-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//l=
ib/boxdraw.c -o boxdraw.o
x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.2 =
  -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argume=
nts --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-defa=
ult/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk0/=
scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-=
poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/yo=
cto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/=
3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu=
-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-=
3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -fm=
acro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu-e=
fi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smonse=
es/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu=
-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fdebu=
g-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-defau=
lt/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D        =
              -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_=
3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recip=
e-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -g =
-O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestanding=
 -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpragm=
as -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wchar=
 -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-check =
-fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outgoi=
ng-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outgo=
ing-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//l=
ib/smbios.c -o smbios.o
clang-9x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -m=
sse4.2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused=
-arguments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sb=
cb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I=
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/cor=
ei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smon=
sees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/g=
nu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/w=
orkspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9=
-r0/gnu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/g=
nu-efi-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-ty=
pes -fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debu=
g/gnu-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch=
/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-li=
nux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                     =
 -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbc=
b-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D =
                     -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/wor=
kspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r=
0/recipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fp=
ic  -g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffrees=
tanding -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=
=3Dpragmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fsh=
ort-wchar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-sta=
ck-check -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumula=
te-outgoing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumul=
ate-outgoing-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/=
builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi=
-3.0.9//lib/console.c -o console.o
: error: unknown argument: '-maccumulate-outgoing-args'
clang-9: error: unknown argument: '-maccumulate-outgoing-args'
clang-9: error: unknown argument: '-maccumulate-outgoing-args'
make[1]: *** [boxdraw.o] Error 1
make[1]: *** Waiting for unfinished jobs....
clang-9: error: unknown argument: '-maccumulate-outgoing-args'
make[1]: *** [smbios.o] Error 1
make[1]: *** wait: No child processes.  Stop.
make: *** [lib] Error 2
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tm=
p/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/temp/run.do_compile.1840:1 exi=
t 1 from 'exit 1'

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/te=
mp/log.do_compile.1840
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4 ARCH=3Dx86_64 CC=3Dx86_64-poky-linux-clang  -m64 -march=
=3Dnehalem -mtune=3Dgeneric  -msse4.2   -mlittle-endian -Wno-error=3Dunuse=
d-command-line-argument -Qunused-arguments --sysroot=3D/disk0/scratch/smons=
ees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gn=
u-efi/3.0.9-r0/recipe-sysroot AS=3Dx86_64-poky-linux-as   LD=3Dx86_64-poky-=
linux-ld --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb=
-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot   AR=
=
=3Dx86_64-poky-linux-llvm-ar RANLIB=3Dx86_64-poky-linux-llvm-ranlib OBJCOP=
Y=3Dx86_64-poky-linux-objcopy PREFIX=3D/usr LIBDIR=3D/usr/lib
| mkdir -p /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib
| make -C /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib -f /=
disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/core=
i7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/Makefile SRCDIR=3D/dis=
k0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-=
64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib ARCH=3Dx86_64
| make[1]: Entering directory `/disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-=
3.0.9/x86_64/lib'
| for sdir in ia32 x86_64 ia64 aarch64 arm mips64el runtime; do mkdir -p $=
sdir; done
| x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.=
2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argu=
ments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/=
yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-ef=
i/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/g=
nu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-ef=
i-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -=
fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-=
default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu=
-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smon=
sees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/g=
nu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fde=
bug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D      =
                -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/rec=
ipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -=
g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestandi=
ng -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpra=
gmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wch=
ar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-chec=
k -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outg=
oing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-out=
going-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/=
/lib/boxdraw.c -o boxdraw.o
| x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.=
2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argu=
ments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/=
yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-ef=
i/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/g=
nu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-ef=
i-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -=
fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-=
default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu=
-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smon=
sees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/g=
nu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fde=
bug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D      =
                -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/rec=
ipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -=
g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestandi=
ng -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpra=
gmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wch=
ar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-chec=
k -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outg=
oing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-out=
going-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/=
/lib/smbios.c -o smbios.o
| clang-9x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  =
-msse4.2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunus=
ed-arguments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot =
-I/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/c=
orei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/sm=
onsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux=
/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto=
/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0=
.9-r0/gnu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/work=
space_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=
/gnu-efi-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-=
types -fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds=
2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/de=
bug/gnu-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scrat=
ch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-=
linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                   =
   -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=
=3D                      -fdebug-prefix-map=3D/disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.=
0.9-r0/recipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-av=
x -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -f=
freestanding -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-e=
rror=3Dpragmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -=
fshort-wchar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-=
stack-check -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccum=
ulate-outgoing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccu=
mulate-outgoing-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace=
_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-=
efi-3.0.9//lib/console.c -o console.o
| : error: unknown argument: '-maccumulate-outgoing-args'
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| make[1]: *** [boxdraw.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| make[1]: *** [smbios.o] Error 1
| make[1]: *** wait: No child processes.  Stop.
| ERROR: oe_runmake failed
| make: *** [lib] Error 2
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/temp/run.do_compile.1840:1 e=
xit 1 from 'exit 1'
| ERROR: Execution of '/disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/temp/run.do_comp=
ile.1840' failed with exit code 1:
| mkdir -p /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib
| make -C /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/x86_64/lib -f /=
disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/core=
i7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/Makefile SRCDIR=3D/dis=
k0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-=
64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib ARCH=3Dx86_64
| make[1]: Entering directory `/disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-=
3.0.9/x86_64/lib'
| for sdir in ia32 x86_64 ia64 aarch64 arm mips64el runtime; do mkdir -p $=
sdir; done
| x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.=
2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argu=
ments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/=
yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-ef=
i/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/g=
nu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-ef=
i-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -=
fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-=
default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu=
-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smon=
sees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/g=
nu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fde=
bug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D      =
                -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/rec=
ipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -=
g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestandi=
ng -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpra=
gmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wch=
ar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-chec=
k -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outg=
oing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-out=
going-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/=
/lib/boxdraw.c -o boxdraw.o
| x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  -msse4.=
2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunused-argu=
ments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-de=
fault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot -I/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/smonsees/=
yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-ef=
i/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/g=
nu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-ef=
i-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-types -=
fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-=
default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu=
-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scratch/smon=
sees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/g=
nu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                      -fde=
bug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=3D      =
                -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/rec=
ipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-avx -fpic  -=
g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -ffreestandi=
ng -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-error=3Dpra=
gmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wch=
ar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-stack-chec=
k -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-outg=
oing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccumulate-out=
going-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9/=
/lib/smbios.c -o smbios.o
| clang-9x86_64-poky-linux-clang  -m64 -march=3Dnehalem -mtune=3Dgeneric  =
-msse4.2   -mlittle-endian -Wno-error=3Dunused-command-line-argument -Qunus=
ed-arguments --sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot =
-I/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/c=
orei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib -I/disk0/scratch/sm=
onsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux=
/gnu-efi/3.0.9-r0/gnu-efi-3.0.9//lib/../inc -I/disk0/scratch/smonsees/yocto=
/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0=
.9-r0/gnu-efi-3.0.9//lib/../inc/x86_64 -I/disk0/scratch/smonsees/yocto/work=
space_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=
/gnu-efi-3.0.9//lib/../inc/protocol  -O2 -pipe -g -feliminate-unused-debug-=
types -fmacro-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds=
2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0=3D/usr/src/de=
bug/gnu-efi/3.0.9-r0                      -fdebug-prefix-map=3D/disk0/scrat=
ch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-=
linux/gnu-efi/3.0.9-r0=3D/usr/src/debug/gnu-efi/3.0.9-r0                   =
   -fdebug-prefix-map=3D/disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/recipe-sysroot=
=3D                      -fdebug-prefix-map=3D/disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.=
0.9-r0/recipe-sysroot-native=3D  -Wno-error=3Dpragmas -mno-red-zone -mno-av=
x -fpic  -g -O2 -Wall -Wextra -Werror -fshort-wchar -fno-strict-aliasing -f=
freestanding -fno-stack-protector -fno-stack-check -fno-stack-check  -Wno-e=
rror=3Dpragmas -mno-red-zone -mno-avx -fpic  -g -O2 -Wall -Wextra -Werror -=
fshort-wchar -fno-strict-aliasing -ffreestanding -fno-stack-protector -fno-=
stack-check -fno-stack-check   -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccum=
ulate-outgoing-args --std=3Dc11 -DCONFIG_x86_64 -DGNU_EFI_USE_MS_ABI -maccu=
mulate-outgoing-args --std=3Dc11 -c /disk0/scratch/smonsees/yocto/workspace=
_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/gnu-=
efi-3.0.9//lib/console.c -o console.o
| : error: unknown argument: '-maccumulate-outgoing-args'
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| make[1]: *** [boxdraw.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| clang-9: error: unknown argument: '-maccumulate-outgoing-args'
| make[1]: *** [smbios.o] Error 1
| make[1]: *** wait: No child processes.  Stop.
| make: *** [lib] Error 2
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/gnu-efi/3.0.9-r0/temp/run.do_compile.1840:1 e=
xit 1 from 'exit 1'
|=20
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-b=
sp/gnu-efi/gnu-efi_3.0.9.bb:do_compile) failed with exit code '1'
ERROR: thermald-1.9-r0 do_prepare_recipe_sysroot: The file /usr/lib/libgom=
p.so is installed by both openmp and gcc-runtime, aborting
ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/thermald/1.9-r0/tem=
p/log.do_prepare_recipe_sysroot.27971
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-intel/=
recipes-bsp/thermald/thermald_1.9.bb:do_prepare_recipe_sysroot) failed with=
 exit code '1'
ERROR: nfs-utils-2.4.1-r0 do_configure: configure failed
ERROR: nfs-utils-2.4.1-r0 do_configure: Execution of '/disk0/scratch/smons=
ees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nf=
s-utils/2.4.1-r0/temp/run.do_configure.10368' failed with exit code 1:
automake (GNU automake) 1.16.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-2=
.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.16
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --system-acdir=3D/disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/=
2.4.1-r0/recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/disk0/scratc=
h/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-l=
inux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /di=
sk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7=
-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1/aclocal/ -I /disk0/scratc=
h/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-l=
inux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force -I=
 aclocal
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in '.'.
libtoolize: copying file './ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'aclocal'.
libtoolize: copying file 'aclocal/libtool.m4'
libtoolize: copying file 'aclocal/ltoptions.m4'
libtoolize: copying file 'aclocal/ltsugar.m4'
libtoolize: copying file 'aclocal/ltversion.m4'
libtoolize: copying file 'aclocal/lt~obsolete.m4'
autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbc=
b-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot-n=
ative/usr/bin/autoconf --include=3D/disk0/scratch/smonsees/yocto/workspace_=
3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs=
-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/reci=
pe-sysroot-native/usr/share/aclocal/ --force
autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbc=
b-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot-n=
ative/usr/bin/autoheader --include=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/n=
fs-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspace=
_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/re=
cipe-sysroot-native/usr/share/aclocal/ --force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:11: installing './compile'
configure.ac:7: installing './missing'
support/export/Makefile.am: installing './depcomp'
support/nsm/Makefile.am:13: warning: source file '../misc/misc.c' is in a =
subdirectory,
support/nsm/Makefile.am:13: but option 'subdir-objects' is disabled
automake: warning: possible forward-incompatibility.
automake: At least a source file is in a subdirectory, but the 'subdir-obj=
ects'
automake: automake option hasn't been enabled.  For now, the corresponding=
 output
automake: object file(s) will be placed in the top-level directory.  Howev=
er,
automake: this behaviour will change in future Automake versions: they wil=
l
automake: unconditionally cause object files to be placed in the same subd=
irectory
automake: of the corresponding sources.
automake: You are advised to start using 'subdir-objects' option throughou=
t your
automake: project, to avoid future incompatibilities.
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/meta/site/endian-little
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/meta/site/common-linux
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/meta/site/common-glibc
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/meta/site/x86_64-linux
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/meta/site/common
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/p=
oky/../meta-openembedded/meta-networking/site/endian-little
configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3/b=
uilds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe=
-sysroot/usr/share/x86_64-poky-linux_config_site.d/ncurses_config
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-poky-linux-gnu
checking for a BSD-compatible install... /disk0/scratch/smonsees/yocto/wor=
kspace_3/builds2/sbcb-default/tmp/hosttools/install -c
checking whether build environment is sane... yes
checking for x86_64-poky-linux-strip... x86_64-poky-linux-strip
checking for a thread-safe mkdir -p... /disk0/scratch/smonsees/yocto/works=
pace_3/builds2/sbcb-default/tmp/hosttools/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking whether make supports the include directive... yes (GNU style)
checking for x86_64-poky-linux-gcc... x86_64-poky-linux-clang  -m64 -march=
=
=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse -msse4.2 -Werror=3Dunknown-warn=
ing-option   -mlittle-endian   --sysroot=3D/disk0/scratch/smonsees/yocto/wo=
rkspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.=
1-r0/recipe-sysroot
checking whether the C compiler works... no
configure: error: in `/disk0/scratch/smonsees/yocto/workspace_3/builds2/sb=
cb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1=
':
configure: error: C compiler cannot create executables
See `config.log' for more details
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tm=
p/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/temp/run.do_configure.10368:=
1 exit 1 from 'exit 1'

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/=
temp/log.do_configure.10368
Log data follows:
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit=
-64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.16.1
| Copyright (C) 2018 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl=
-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|=20
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.16
| NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/disk0/scratch/smons=
ees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nf=
s-utils/2.4.1-r0/recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/disk=
0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-6=
4-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal-1.1=
6" autoreconf -Wcross --verbose --install --force --exclude=3Dautopoint -I =
/disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/cor=
ei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1/aclocal/ -I /disk0/scr=
atch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-pok=
y-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal --system-acdir=3D/disk0/scratch/smonsees/yo=
cto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-util=
s/2.4.1-r0/recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/disk0/scra=
tch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky=
-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /=
disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/core=
i7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1/aclocal/ -I /disk0/scra=
tch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky=
-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force =
-I aclocal
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'aclocal'.
| libtoolize: copying file 'aclocal/libtool.m4'
| libtoolize: copying file 'aclocal/ltoptions.m4'
| libtoolize: copying file 'aclocal/ltsugar.m4'
| libtoolize: copying file 'aclocal/ltversion.m4'
| libtoolize: copying file 'aclocal/lt~obsolete.m4'
| autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot=
-native/usr/bin/autoconf --include=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/n=
fs-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspace=
_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/re=
cipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot=
-native/usr/bin/autoheader --include=3D/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0=
/nfs-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/=
recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:11: installing './compile'
| configure.ac:7: installing './missing'
| support/export/Makefile.am: installing './depcomp'
| support/nsm/Makefile.am:13: warning: source file '../misc/misc.c' is in =
a subdirectory,
| support/nsm/Makefile.am:13: but option 'subdir-objects' is disabled
| automake: warning: possible forward-incompatibility.
| automake: At least a source file is in a subdirectory, but the 'subdir-o=
bjects'
| automake: automake option hasn't been enabled.  For now, the correspondi=
ng output
| automake: object file(s) will be placed in the top-level directory.  How=
ever,
| automake: this behaviour will change in future Automake versions: they w=
ill
| automake: unconditionally cause object files to be placed in the same su=
bdirectory
| automake: of the corresponding sources.
| automake: You are advised to start using 'subdir-objects' option through=
out your
| automake: project, to avoid future incompatibilities.
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| NOTE: Running ./configure  --build=3Dx86_64-linux =09	  --host=3Dx86_64-=
poky-linux =09	  --target=3Dx86_64-poky-linux =09	  --prefix=3D/usr =09	  -=
-exec_prefix=3D/usr =09	  --bindir=3D/usr/bin =09	  --sbindir=3D/usr/sbin =
=09	  --libexecdir=3D/usr/libexec =09	  --datadir=3D/usr/share =09	  --sys=
confdir=3D/etc =09	  --sharedstatedir=3D/com =09	  --localstatedir=3D/var =
=09	  --libdir=3D/usr/lib =09	  --includedir=3D/usr/include =09	  --oldinc=
ludedir=3D/usr/include =09	  --infodir=3D/usr/share/info =09	  --mandir=3D/=
usr/share/man =09	  --disable-silent-rules =09	  --disable-dependency-track=
ing =09  --with-libtool-sysroot=3D/disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/reci=
pe-sysroot --with-statduser=3Drpcuser                 --enable-mountconfig =
                --enable-libmount-mount                 --enable-uuid      =
           --disable-gss                 --disable-nfsdcltrack             =
    --with-statdpath=3D/var/lib/nfs/statd                 --disable-static =
 --enable-ipv6 --disable-nfsv4 --disable-nfsv41 --with-tcp-wrappers
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/endian-little
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common-linux
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common-glibc
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/x86_64-linux
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/../meta-openembedded/meta-networking/site/endian-little
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/reci=
pe-sysroot/usr/share/x86_64-poky-linux_config_site.d/ncurses_config
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-poky-linux-gnu
| checking for a BSD-compatible install... /disk0/scratch/smonsees/yocto/w=
orkspace_3/builds2/sbcb-default/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for x86_64-poky-linux-strip... x86_64-poky-linux-strip
| checking for a thread-safe mkdir -p... /disk0/scratch/smonsees/yocto/wor=
kspace_3/builds2/sbcb-default/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking whether to enable maintainer-specific portions of Makefiles... =
no
| checking whether make supports the include directive... yes (GNU style)
| checking for x86_64-poky-linux-gcc... x86_64-poky-linux-clang  -m64 -mar=
ch=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse -msse4.2 -Werror=3Dunknown-war=
ning-option   -mlittle-endian   --sysroot=3D/disk0/scratch/smonsees/yocto/w=
orkspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4=
.1-r0/recipe-sysroot
| checking whether the C compiler works... no
| configure: error: in `/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4=
.1':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| NOTE: The following config.log files may provide further information.
| NOTE: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp=
/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1/config.log
| ERROR: configure failed
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/temp/run.do_configure.1036=
8:1 exit 1 from 'exit 1'
| ERROR: Execution of '/disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/temp/run.do_co=
nfigure.10368' failed with exit code 1:
| automake (GNU automake) 1.16.1
| Copyright (C) 2018 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl=
-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|=20
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.16
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal --system-acdir=3D/disk0/scratch/smonsees/yo=
cto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-util=
s/2.4.1-r0/recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/disk0/scra=
tch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky=
-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal-1.16 -I /=
disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/core=
i7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4.1/aclocal/ -I /disk0/scra=
tch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky=
-linux/nfs-utils/2.4.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force =
-I aclocal
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'aclocal'.
| libtoolize: copying file 'aclocal/libtool.m4'
| libtoolize: copying file 'aclocal/ltoptions.m4'
| libtoolize: copying file 'aclocal/ltsugar.m4'
| libtoolize: copying file 'aclocal/ltversion.m4'
| libtoolize: copying file 'aclocal/lt~obsolete.m4'
| autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot=
-native/usr/bin/autoconf --include=3D/disk0/scratch/smonsees/yocto/workspac=
e_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/n=
fs-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspace=
_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/re=
cipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: /disk0/scratch/smonsees/yocto/workspace_3/builds2/s=
bcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/recipe-sysroot=
-native/usr/bin/autoheader --include=3D/disk0/scratch/smonsees/yocto/worksp=
ace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0=
/nfs-utils-2.4.1/aclocal/ --include=3D/disk0/scratch/smonsees/yocto/workspa=
ce_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/=
recipe-sysroot-native/usr/share/aclocal/ --force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:11: installing './compile'
| configure.ac:7: installing './missing'
| support/export/Makefile.am: installing './depcomp'
| support/nsm/Makefile.am:13: warning: source file '../misc/misc.c' is in =
a subdirectory,
| support/nsm/Makefile.am:13: but option 'subdir-objects' is disabled
| automake: warning: possible forward-incompatibility.
| automake: At least a source file is in a subdirectory, but the 'subdir-o=
bjects'
| automake: automake option hasn't been enabled.  For now, the correspondi=
ng output
| automake: object file(s) will be placed in the top-level directory.  How=
ever,
| automake: this behaviour will change in future Automake versions: they w=
ill
| automake: unconditionally cause object files to be placed in the same su=
bdirectory
| automake: of the corresponding sources.
| automake: You are advised to start using 'subdir-objects' option through=
out your
| automake: project, to avoid future incompatibilities.
| autoreconf: running: gnu-configize
| autoreconf: Leaving directory `.'
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/endian-little
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common-linux
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common-glibc
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/x86_64-linux
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/meta/site/common
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/poky/../meta-openembedded/meta-networking/site/endian-little
| configure: loading site script /disk0/scratch/smonsees/yocto/workspace_3=
/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/reci=
pe-sysroot/usr/share/x86_64-poky-linux_config_site.d/ncurses_config
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-poky-linux-gnu
| checking for a BSD-compatible install... /disk0/scratch/smonsees/yocto/w=
orkspace_3/builds2/sbcb-default/tmp/hosttools/install -c
| checking whether build environment is sane... yes
| checking for x86_64-poky-linux-strip... x86_64-poky-linux-strip
| checking for a thread-safe mkdir -p... /disk0/scratch/smonsees/yocto/wor=
kspace_3/builds2/sbcb-default/tmp/hosttools/mkdir -p
| checking for gawk... gawk
| checking whether make sets $(MAKE)... yes
| checking whether make supports nested variables... yes
| checking whether to enable maintainer-specific portions of Makefiles... =
no
| checking whether make supports the include directive... yes (GNU style)
| checking for x86_64-poky-linux-gcc... x86_64-poky-linux-clang  -m64 -mar=
ch=3Dnehalem -mtune=3Dgeneric -mfpmath=3Dsse -msse4.2 -Werror=3Dunknown-war=
ning-option   -mlittle-endian   --sysroot=3D/disk0/scratch/smonsees/yocto/w=
orkspace_3/builds2/sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4=
.1-r0/recipe-sysroot
| checking whether the C compiler works... no
| configure: error: in `/disk0/scratch/smonsees/yocto/workspace_3/builds2/=
sbcb-default/tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/nfs-utils-2.4=
.1':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/=
tmp/work/corei7-64-poky-linux/nfs-utils/2.4.1-r0/temp/run.do_configure.1036=
8:1 exit 1 from 'exit 1'
|=20
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-c=
onnectivity/nfs-utils/nfs-utils_2.4.1.bb:do_configure) failed with exit cod=
e '1'
NOTE: Tasks Summary: Attempted 5925 tasks of which 1948 didn't need to be =
rerun and 3 failed.

Summary: 3 tasks failed:
  /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-bsp/gnu-efi/=
gnu-efi_3.0.9.bb:do_compile
  /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-intel/recipes-bsp=
/thermald/thermald_1.9.bb:do_prepare_recipe_sysroot
  /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-connectivity=
/nfs-utils/nfs-utils_2.4.1.bb:do_configure
Summary: There were 5 ERROR messages shown, returning a non-zero exit code=
.
17:03 smonsees@yix490038 /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default>



-----Original Message-----
From: Khem Raj <raj.khem@gmail.com>=20
Sent: Tuesday, April 20, 2021 4:51 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto llvm support and meta-clang

External Email Alert

This email has been sent from an account outside of the BAE Systems networ=
k.

Please treat the email with caution, especially if you are requested to cl=
ick on a link, decrypt/open an attachment, or enable macros.  For further i=
nformation on how to spot phishing, access "Cybersecurity OneSpace Page" an=
d report phishing by clicking the button "Report Phishing" on the Outlook t=
oolbar.


On Tue, Apr 20, 2021 at 12:18 PM Monsees, Steven C (US) <steven.monsees@ba=
esystems.com> wrote:
>
>
> There appears to be an issue  with build zeus based meta-clang under zeu=
s platform...
>
> I followed steps off meta-clang page, and from the work I did with meta-=
clang under "Rocko" about a year ago, a lot has changed under the hood...
>
> Working under zeus 3.0.4... EXT SDK appears fully functional, I require =
CLANG/LLVM for future development...
>

I think for future development you should look into dunfell or newer since=
 those are supported releases.

> Never seen this error before, did I miss a patch or possibly a step ?

clang toolchain has evolved rapidly in past few years and so you might fin=
d major changes from release to release and also SDK builds are relatively =
new, I think dunfell and newer is where its properly working without much i=
ssues.

>
> Clean build area...
>
> (1) Add meta-clang to bblayers.conf
>
> (2) Added EXT SDK Settings for meta-clang :
>
> SDKIMAGE_FEATURES_append =3D " staticdev-pkgs"
>
> SDK_EXTRA_TOOLS =3D "  \
>     nativesdk-cmake \
>     nativesdk-clang \    <---Only appears to download/build llvm when pr=
esent
>     "
>
> TOOLCHAIN_HOST_TASK_append =3D "${SDK_EXTRA_TOOLS}"
>
> The build is much slower due to "native-clang-9.0.1-r0 do_compile"...
>
>
> EXT SDK build error seen:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D
>
> 10:12 smonsees@yix490038=20
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default>=20
> bitbake sbcb-defaultfs-full -c populate_sdk_ext Parsing recipes: 100% |#=
###########################################################################=
#####| Time: 0:01:25 Parsing of 2463 .bb files complete (0 cached, 2463 par=
sed). 3671 targets, 91 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.44.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "rhel-7.9"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "sbcb-default"
> DISTRO               =3D "limws"
> DISTRO_VERSION       =3D "3.0.4"
> TUNE_FEATURES        =3D "m64 corei7"
> TARGET_FPU           =3D ""
> meta
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
> meta-perl
> meta-python
> meta-filesystems
> meta-networking
> meta-initramfs
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
> meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
> meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
> NOTE: Fetching uninative binary shim from=20
> file:///ede/tms/yocto/zeus/downloads/intel/x86_64-nativesdk-libc.tar.x
> z;sha256sum=3Da09922172c3a439105e0ae6b943daad2d83505b17da0aba97961ff433b
> 8c21ab Initialising tasks: 100%=20
> |#####################################################################
> #########| Time: 0:00:12 Checking sstate mirror object availability:=20
> 100% |######################################################| Time:=20
> 0:00:00 Sstate summary: Wanted 2490 Found 2157 Missed 333 Current 0=20
> (86% match, 0% complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> ERROR: sbcb-defaultfs-full-1.0-r0 do_sdk_depends: Error executing a pyth=
on function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure =
was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:extend_recipe_sysroot(d)
>      0003:
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/stagi=
ng.bbclass', lineno: 551, function: extend_recipe_sysroot
>      0547:                    dest =3D newmanifest[l]
>      0548:                    if l.endswith("/"):
>      0549:                        staging_copydir(l, targetdir, dest, se=
endirs)
>      0550:                        continue
>  *** 0551:                    staging_copyfile(l, targetdir, dest, posti=
nsts, seendirs)
>      0552:
>      0553:    bb.note("Installed into sysroot: %s" % str(msg_adding))
>      0554:    bb.note("Skipping as already exists in sysroot: %s" % str(=
msg_exists))
>      0555:
> File: '/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/stagi=
ng.bbclass', lineno: 144, function: staging_copyfile
>      0140:    if os.path.islink(c):
>      0141:        linkto =3D os.readlink(c)
>      0142:        if os.path.lexists(dest):
>      0143:            if not os.path.islink(dest):
>  *** 0144:                raise OSError(errno.EEXIST, "Link %s already e=
xists as a file" % dest, dest)
>      0145:            if os.readlink(dest) =3D=3D linkto:
>      0146:                return dest
>      0147:            raise OSError(errno.EEXIST, "Link %s already exist=
s to a different location? (%s vs %s)" % (dest, os.readlink(dest), linkto),=
 dest)
>      0148:        os.symlink(linkto, dest)
> Exception: FileExistsError: [Errno 17] Link /disk0/scratch/smonsees/yoct=
o/workspace_3/builds2/sbcb-default/tmp/work/sbcb_default-poky-linux/sbcb-de=
faultfs-full/1.0-r0/recipe-sysroot/lib already exists as a file: '/disk0/sc=
ratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work/sbcb_default=
-poky-linux/sbcb-defaultfs-full/1.0-r0/recipe-sysroot/lib'
>
> ERROR: Logfile of failure stored in:=20
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/wor
> k/sbcb_default-poky-linux/sbcb-defaultfs-full/1.0-r0/temp/log.do_sdk_d
> epends.24732
> ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/=
meta-limws/meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_sdk_dep=
ends) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6892 tasks of which 5539 didn't need to b=
e rerun and 1 failed.
>
> Summary: 1 task failed:
>  =20
> /disk0/scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/
> meta-intel/recipes-core/images/sbcb-defaultfs-full.bb:do_sdk_depends
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
> 13:01 smonsees@yix490038=20
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default>
>
>
>
> Note: Modifying SDK_EXTRA_TOOLS by removing "nativesdk-clang", i.e.:
>
> SDK_EXTRA_TOOLS =3D "  \
>     nativesdk-cmake \
>     "
>
> If I remove, the build is much faster, and it builds without the=20
> error, also appears not to require/include "llvm" component in build.
> I do not believe the full package was actually built/enabled, but no err=
ors and image is functional.
>
>
> 13:09 smonsees@yix490038=20
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default>=20
> bitbake sbcb-defaultfs-full -c populate_sdk_ext Parsing recipes: 100% |#=
###########################################################################=
#####| Time: 0:01:26 Parsing of 2463 .bb files complete (0 cached, 2463 par=
sed). 3671 targets, 91 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.44.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "rhel-7.9"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "sbcb-default"
> DISTRO               =3D "limws"
> DISTRO_VERSION       =3D "3.0.4"
> TUNE_FEATURES        =3D "m64 corei7"
> TARGET_FPU           =3D ""
> meta
> meta-poky            =3D "my_yocto_3.0.4:f2eb22a8783f1eecf99bd4042695bab=
920eed00e"
> meta-perl
> meta-python
> meta-filesystems
> meta-networking
> meta-initramfs
> meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
> meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
> meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df3930465150=
3"
> meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
> meta-intel           =3D "v2019.02:f635a364c55f1fb12519aff54924a0a5b9470=
91e"
>
> NOTE: Fetching uninative binary shim from=20
> file:///ede/tms/yocto/zeus/downloads/intel/x86_64-nativesdk-libc.tar.x
> z;sha256sum=3Da09922172c3a439105e0ae6b943daad2d83505b17da0aba97961ff433b
> 8c21ab Initialising tasks: 100%=20
> |#####################################################################
> #########| Time: 0:00:12 Checking sstate mirror object availability:=20
> 100% |######################################################| Time:=20
> 0:00:00 Sstate summary: Wanted 2436 Found 2407 Missed 29 Current 0=20
> (98% match, 0% complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> NOTE: Tasks Summary: Attempted 6767 tasks of which 6223 didn't need to b=
e rerun and all succeeded.
> 13:31 smonsees@yix490038=20
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default>
>
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, April 20, 2021 12:02 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; Anton=20
> Antonov <anton.antonov@arm.com>; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto llvm support
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netw=
ork.
>
> Please treat the email with caution, especially if you are requested to =
click on a link, decrypt/open an attachment, or enable macros.  For further=
 information on how to spot phishing, access "Cybersecurity OneSpace Page" =
and report phishing by clicking the button "Report Phishing" on the Outlook=
 toolbar.
>
>
>
> On 4/20/21 7:00 AM, Monsees, Steven C (US) via lists.yoctoproject.org wr=
ote:
> > I noticed similar behavior.
> >
> > I am running zeus 3.0.4, "devtool sdk-install llvm" will get llvm=20
> > 8.0.1.
> >
> > When I build meta-clang, and I set TOOLCHAIN?=3D"clang" in local.conf=
=20
> > it appears to grab llvm-project-source-9.0.1-9.0.1.
> >
>
> this is intentional, when you use meta-clang, then llvm is preferred fro=
m LLVM since them we have consistent version of llvm for clang and others.
>
> > *From:*yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>=20
> > *On Behalf Of *Anton Antonov
> > *Sent:* Tuesday, April 20, 2021 9:51 AM
> > *To:* yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] #yocto llvm support
> >
> > *_External Email Alert_*
> >
> > *This email has been sent from an account outside of the BAE Systems
> > network.*
> >
> > Please treat the email with caution, especially if you are requested=
=20
> > to click on a link, decrypt/open an attachment, or enable macros.  
> > For further information on how to spot phishing, access=20
> > "Cybersecurity OneSpace Page" and report phishing by clicking the=20
> > button "Report Phishing" on the Outlook toolbar.
> >
> >
> > Hi Steven,
> >
> >    I used meta-clang in my recipes and I noticed that:
> > 1. The current release of poky uses LLVM v11.1.0 by default
> > (poky/meta/recipes-devtools/llvm/llvm_git.bb)
> > 2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf=20
> > defines LLVMVERSION =3D "12.0.0")
> >
> > As a result just including meta-clang into bblayers.conf will=20
> > require bitbake to build a new version of LLVM and rebuild=20
> > everything which uses it
> >
> > Anton
> >
> >
> >
> >=20
> >
>
