Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0867AC433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 18:01:20 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.14555.1648144876829653439
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 11:01:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=jfaXEfoC;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1648144876; x=1805824876;
  h=from:to:subject:date:mime-version;
  bh=Po2PJEDsFKhbvoKLJ5fyE4M6Y77+tJfrKQ4G3Pzj0rI=;
  b=jfaXEfoCBgXh5NB8eSB537bEvT7nrPr7AR/9k+V4gHpI7q2+CoY+JN+p
   vfqoNs8wOX3sFPzJQsLqcVNbiGI+eN/AYDIgDJYR5ErPWd8E5ans7n6op
   KpJr9aN9yiUppn90c8NE1S7PpVQo0Mm3rbWoeW+dEYA6khrJvdh5QAiHk
   0=;
IronPort-SDR: 
 CswOEeA0VFQ4p+pPA+pSEfAZI5BqSDom+lgJI6WWLi1jXiPyXxaZcneWxRLH7cGD8kcznnC1MX
 I+mCfX9sIGZQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AuNDElRwMW/bYAsPXCzJKylBlVkEcU1XcAAcZ5?=
 =?us-ascii?q?9Idhq5Udez7ptK+ZhaZvKk8xwaRBs3y0LFts6LuqafuWGgNs96qkUspV9hyb?=
 =?us-ascii?q?SIDktgchAc6AcSIWgXRJf/uaDEmTowZDAc2t360PlJIF8ngelbcvmO97SIIG?=
 =?us-ascii?q?hX4KAF5Ovn5FpTdgsipyey+4YDfbgpMiTayfL9+MBu7phjNu8cLhodvNrw/w?=
 =?us-ascii?q?QbTrHtSfORWy2JoJVaNkBv5+8y94p1t/TlOtvw478JPXrn0cKo+TbxDETQpK?=
 =?us-ascii?q?Hs169HxtRnCVgSA+H0RWXgLnxVSAgjF6Bb6Xortsib/q+Fw1jWWMdHwQLspX?=
 =?us-ascii?q?zmp8qVlRwLyiCofNzA37nzZitB+gqxYoRKuuxNwzpXOb42JNvpzZL/Rcc8ES?=
 =?us-ascii?q?WdHQ81fVzZBAoS5b4YXAeYPOuFYr4/mp1QQsxS+HhGgD/7yxD9UmHD2w7M10?=
 =?us-ascii?q?+I8GgzYwQcsG9wBvmnRoNn7KawfVvu1zLXWwjXdcfxW3y3x6I3PchAnuvGDQ?=
 =?us-ascii?q?6x/cdHKxEY0DQzKkE6QqIz+PzOJyOsNtnOb4/B8WuKojm4qsgd8qSWgyckwk?=
 =?us-ascii?q?IfGnJ4Vykza+iVjxoY4PdO2RUBnbNOlEpZdtj+WO5ZoT84hQ2xlvCk3x7Ibt?=
 =?us-ascii?q?ZC1fCUEx4kryhrdZvGHfIWF4w/vWfiVLDp7h39oZa+ziRm0/EO9yeP8TtG53?=
 =?us-ascii?q?EtWoiZfkNTBuGoB2h/c58SdV/dx5lqt1SqV2w3c5exIO085mbDGJ5MhxLM7i?=
 =?us-ascii?q?4Advl7ZHiDsnUX7lKqWdkI59ee28+nnebDmpoOEN49zlwH+LrwimsyhDuQ8N?=
 =?us-ascii?q?QgDR3Sb+Oum273l+E35W7FHguEqnqXFrZzWP9kbprWjDwBOyIks9Q2/Dje90?=
 =?us-ascii?q?NQEg3YHKUlFdAibgIjuPlHCOPH4DfGhjFSwiDpn2uzKMqfjD5jDNHTOk7jsc?=
 =?us-ascii?q?axg50JEzQo819Ff55ZaCrEbJ/LzX1f8tMfEDhAnLQy73eDnBM941oMZX2KPG?=
 =?us-ascii?q?bGWP73JsVKT/e0gOfeDZJQVuTbmN/gq+fvujWQjlVABeqmp2IMbaHajEft+O?=
 =?us-ascii?q?UWWfWLsgssdEWcNpgcyUfTmiEeeXj5Le3ayQ6U86yk7CYKhEYjDWoetjaeF3?=
 =?us-ascii?q?Ce6BZ1WentGBkqMEHfva4qER/AMaDqIIs9mkDwLS6SuS5M72RGprg/6xOkvE?=
 =?us-ascii?q?u2BsDwfvo7k/Nx0/PHI0wA1/iBzF96a0WyGUydzhGxCD2sn26tjpmR5y0yfy?=
 =?us-ascii?q?u5phPdEEsRJ4PFEWRt8MoTTmb9UEdf3D0jkedGSRVu9Bp2dHTwvQ9R56JdOX?=
 =?us-ascii?q?n08UZ32lQzOwSesRboSkaeGCYcc+KvRxGnqO8t40DDN06x33ApueddGKWDz3?=
 =?us-ascii?q?v03zAPUHYOcyy2k?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A9AwCesTxi/wFUSQpaHgEBCxIMQAm?=
 =?us-ascii?q?BRguBIYIFgVUXlVUDnGOBfAsBAQEBAQEBAQEIASwBFgQBAYlWJjQJDgECBAE?=
 =?us-ascii?q?BARIBAQYBAQEBAQcEAYEbhWkMgjUig2sBAQIDASxeAQgNBAQBASE2Ch0JAQQ?=
 =?us-ascii?q?TCIJ9gg6ua3iBMxoCZYRrhRAJAYEygWaFUIMBhiBDgRWDKj6KRASYNhUnUQE?=
 =?us-ascii?q?wbmegXqBrBwODSZgEh10wFZZmA5FXllsgoT2EfAIEAgQFAhaBYYIVcIM5URc?=
 =?us-ascii?q?CjjsWji51OAIGCwEBAwmPMIESAQE?=
X-IPAS-Result: =?us-ascii?q?A2A9AwCesTxi/wFUSQpaHgEBCxIMQAmBRguBIYIFgVUXl?=
 =?us-ascii?q?VUDnGOBfAsBAQEBAQEBAQEIASwBFgQBAYlWJjQJDgECBAEBARIBAQYBAQEBA?=
 =?us-ascii?q?QcEAYEbhWkMgjUig2sBAQIDASxeAQgNBAQBASE2Ch0JAQQTCIJ9gg6ua3iBM?=
 =?us-ascii?q?xoCZYRrhRAJAYEygWaFUIMBhiBDgRWDKj6KRASYNhUnUQEwbmegXqBrBwODS?=
 =?us-ascii?q?ZgEh10wFZZmA5FXllsgoT2EfAIEAgQFAhaBYYIVcIM5URcCjjsWji51OAIGC?=
 =?us-ascii?q?wEBAwmPMIESAQE?=
X-IronPort-AV: E=Sophos;i="5.90,208,1643673600";
   d="scan'208,217";a="462738610"
IronPort-SDR: 
 /DaHwQuKu9b0lQH2rPivhBs8nOqbxv6CbH/2HOiFub1Lnl7yuXr2OhXrqxxBmsJl4kx+2xYz3z
 5Rp9/shPgFf7u28BsIF6Y8FcLzd8CumXF3RF9qFOzJxLRC3MXvkXG1LnJxe0/A0RUuvz7bPHqx
 wQw5y6nyGIo5Jfrm4hbpKOcRv/7Ns/8hYgRBCK9VJ1E5SSZEsQFEI5bsH3HS34+kgxjiynbtOT
 Y0iK15zYRk3A0s9B9xMhofLm+E1OrQk4nTnKgRukyrryjEUbwVtLuZAL8mklJsmiZORKbjyxdD
 6tA=
IronPort-Data: =?us-ascii?q?A9a23=3AbAj5Sayfm3YZkEGK6Q96t+f9xCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkUHymBOXGqEaPncZzb9e9p3a9vn/R9S6JPdmIJmQQBrrHw8F?=
 =?us-ascii?q?HgiRejtXI/AdhiqV8+xwmwvdK/shiknQoGowPscEzmN/n9BDpC79SMmjfrSG?=
 =?us-ascii?q?uKnYAL5EnsZqTFMGX5JZS1Ly7ZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTq08uEdiEE?=
 =?us-ascii?q?m3lExcFUrtJk57UVmEvee6PZVXQzHVRX6SmhBsEvCs1zqI9N/Nab0pL49mLt?=
 =?us-ascii?q?4kpjo4S88XuEEFwZf2kdOc1CnG0FwllIaBY9bmBJH+5qsGe1GXMenb30u5yA?=
 =?us-ascii?q?UQte4Yf/46bBEkXrqRAdGFXNk/ra+WehejTpvNXrtUkJ9XsFIceoW17iyDeB?=
 =?us-ascii?q?uohWYrEQajB+ZlfxjhYuyzkNZ4yfOIWbTZqd0SdO0ARfFgQDJ46muTunH74b?=
 =?us-ascii?q?zleq1vTo6cri1U/BTdZiNDFWOc5sPTRLSmNonulmw=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASvE83K1K21DEhv9d2gs+KQqjBNEkLtp133?=
 =?us-ascii?q?Aq2lEZdPWaSKClfqeV/MjztCWUtN9/Yh4dcLy7UpVoIkm2yXcd2+B4AV7IZm?=
 =?us-ascii?q?fbUQWTQb1f0Q=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.90,208,1643673600";
   d="scan'208,217";a="130049207"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: CVE patch updates
Thread-Topic: CVE patch updates
Thread-Index: Adg/nxH4gJNzryebTbih43oNBtV1HAABn8jA
Date: Thu, 24 Mar 2022 18:00:13 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_95d148090e4d4801b8e6bf0d47e25e24baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 18:01:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56553
Message-Id: <20220324180120.0867AC433F5@smtp.lore.kernel.org>

--_000_95d148090e4d4801b8e6bf0d47e25e24baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


When building in cve-check to see what is reported, it generated all blank/=
empty report files...
Can someone explain this ?, my local.conf does have the proper modification=
 (INHERIT +=3D "cve-check").


10:55 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default> bitbake -k sbca-defaultfs-full
Parsing recipes: 100% |####################################################=
#########################################| Time: 0:01:07
Parsing of 2555 .bb files complete (0 cached, 2555 parsed). 3769 targets, 9=
6 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.44.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "rhel-7.9"
TARGET_SYS           =3D "x86_64-poky-linux"
MACHINE              =3D "sbca-default"
DISTRO               =3D "limws"
DISTRO_VERSION       =3D "3.0.4"
TUNE_FEATURES        =3D "m64 corei7"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "my_yocto_3.0.4:2f9bca440204f9e73158705a4ec04698b1=
f6ad42"
meta-perl
meta-python
meta-filesystems
meta-networking
meta-initramfs
meta-oe              =3D "zeus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b"
meta-virtualization  =3D "zeus:7e5219669ff6f8e9c8c33ffd230e95a6b2b025f4"
meta                 =3D "master:a32ddd2b2a51b26c011fa50e441df39304651503"
meta-clang           =3D "zeus:f5355ca9b86fb5de5930132ffd95a9b352d694f9"
meta-intel           =3D "zeus:d9942d4c3a710406b051852de7232db03c297f4e"
meta-intel           =3D "LIMWSSWARE-682-oews-meta-bae-clean-up:99f11605645=
2f1fefe83fe458f533b48f52fe4ba"

Initialising tasks: 100% |#################################################=
#########################################| Time: 0:00:04
Checking sstate mirror object availability: 100% |#########################=
#########################################| Time: 0:00:02
Sstate summary: Wanted 2258 Found 15 Missed 2243 Current 0 (0% match, 0% co=
mplete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
Image CVE report stored in: /disk0/scratch/smonsees/yocto/workspace_1/build=
s2/sbca-default/tmp/deploy/images/sbca-default/core-image-minimal-initramfs=
-sbca-default-20220324145629.rootfs.cve
Image CVE report stored in: /disk0/scratch/smonsees/yocto/workspace_1/build=
s2/sbca-default/tmp/deploy/images/sbca-default/aiox_orange-sbca-default-202=
20324145629.rootfs.cve
NOTE: Tasks Summary: Attempted 6753 tasks of which 77 didn't need to be rer=
un and all succeeded.


13:33 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default>ls -l /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-d=
efault/tmp/deploy/images/sbca-default/core-image-minimal-initramfs-sbca-def=
ault-20220324145629.rootfs.cve
-rw-r--r--. 1 smonsees none 0 Mar 24 13:16 /disk0/scratch/smonsees/yocto/wo=
rkspace_1/builds2/sbca-default/tmp/deploy/images/sbca-default/core-image-mi=
nimal-initramfs-sbca-default-20220324145629.rootfs.cve
13:33 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default>ls -l /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-d=
efault/tmp/deploy/images/sbca-default/aiox_orange-sbca-default-202203241456=
29.rootfs.cve
-rw-r--r--. 1 smonsees none 0 Mar 24 13:17 /disk0/scratch/smonsees/yocto/wo=
rkspace_1/builds2/sbca-default/tmp/deploy/images/sbca-default/aiox_orange-s=
bca-default-20220324145629.rootfs.cve
13:33 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default>


13:27 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default/tmp/deploy/cve>ls -l
total 0
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 binutils
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 binutils-cross-x86_64
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 binutils-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 bluez5
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 boost
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 cairo
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 cairo-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:16 cpio-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 curl
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 curl-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 dbus
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 dbus-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 e2fsprogs
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 e2fsprogs-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 file-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 flex
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 flex-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 gcc-source-9.2.0
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 gettext-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 glib-2.0
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 glib-2.0-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 glibc
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 gnutls
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 go-cross-corei7-64
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 go-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 go-runtime
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 icu
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 icu-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 libarchive-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 libgcrypt
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 libjpeg-turbo
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 libjpeg-turbo-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 libpcre
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:12 libpcre2
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 libpcre-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 libxml2
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 libxml2-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 libxslt-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 mailx
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 nasm-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 ncurses
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 ncurses-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:14 nfs-utils
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:14 openssh
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 patch-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 perl
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 perl-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 python3
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 python3-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 qemu-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:14 rsync
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 sqlite3
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:06 sqlite3-native
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 sudo
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:13 sysstat
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 unzip
-rw-rw-r--. 1 smonsees none 0 Mar 24 13:05 unzip-native
13:27 smonsees@yix465383 /disk0/scratch/smonsees/yocto/workspace_1/builds2/=
sbca-default/tmp/deploy/cve>


From: Monsees, Steven C (US)
Sent: Thursday, March 24, 2022 12:56 PM
To: yocto@lists.yoctoproject.org
Subject: CVE patch updates



I am currently building in cve-check to see what is reported, and I was cur=
ious if Yocto might provide any CVE based patch repositories ?

Is there a yocto page somewhere that goes over this side of things ?,
I did not see much in the mega-manual... I am running on zeus based platfor=
ms (for both armarch64 and x86_64).

Thanks,
Steve

--_000_95d148090e4d4801b8e6bf0d47e25e24baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">When building in cve-check to see what is reported, =
it generated all blank/empty report files&#8230;<span style=3D"color:#1F497=
D"><o:p></o:p></span></p>
<p class=3D"MsoNormal">Can someone explain this ?, my local.conf does have =
the proper modification (INHERIT &#43;=3D &#8220;cve-check&#8221;).<o:p></o=
:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">10:55 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default&gt; bitba=
ke -k sbca-defaultfs-full<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Parsing recipes: 100% =
|##########################################################################=
###################| Time: 0:01:07<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Parsing of 2555 .bb fi=
les complete (0 cached, 2555 parsed). 3769 targets, 96 skipped, 0 masked, 0=
 errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Resolving any mi=
ssing task queue dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Build Configuration:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">BB_VERSION&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.44.0&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">BUILD_SYS&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linu=
x&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NATIVELSBSTRING&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;rhel-7.9&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">TARGET_SYS&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-poky-linu=
x&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">MACHINE&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;s=
bca-default&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">DISTRO&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;limws&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">DISTRO_VERSION&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;3.0.4&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">TUNE_FEATURES&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 corei7&quot;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">TARGET_FPU&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-poky&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;my_yocto_3.=
0.4:2f9bca440204f9e73158705a4ec04698b1f6ad42&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-perl&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-python&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-filesystems&nbsp;=
&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-networking&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-initramfs&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-oe&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;z=
eus:2b5dd1eb81cd08bc065bc76125f2856e9383e98b&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-virtualization&nb=
sp; =3D &quot;zeus:7e5219669ff6f8e9c8c33ffd230e95a6b2b025f4&quot;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;master:a32ddd2b2a51b26c011fa50e441df39304651503&quot;<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-clang&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;zeus:f5355ca9b86=
fb5de5930132ffd95a9b352d694f9&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-intel&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;zeus:d9942d4c3a7=
10406b051852de7232db03c297f4e&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">meta-intel&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;LIMWSSWARE-682-o=
ews-meta-bae-clean-up:99f116056452f1fefe83fe458f533b48f52fe4ba&quot;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Initialising tasks: 10=
0% |#######################################################################=
###################| Time: 0:00:04<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Checking sstate mirror=
 object availability: 100% |###############################################=
###################| Time: 0:00:02<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sstate summary: Wanted=
 2258 Found 15 Missed 2243 Current 0 (0% match, 0% complete)<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Executing Tasks<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Setscene tasks c=
ompleted<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Image CVE report store=
d in: /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/de=
ploy/images/sbca-default/core-image-minimal-initramfs-sbca-default-20220324=
145629.rootfs.cve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Image CVE report store=
d in: /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/de=
ploy/images/sbca-default/aiox_orange-sbca-default-20220324145629.rootfs.cve=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">NOTE: Tasks Summary: A=
ttempted 6753 tasks of which 77 didn't need to be rerun and all succeeded.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">13:33 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default&gt;ls -l =
/disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/deploy/i=
mages/sbca-default/core-image-minimal-initramfs-sbca-default-20220324145629=
.rootfs.cve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-r--r--. 1 smonsees=
 none 0 Mar 24 13:16 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca=
-default/tmp/deploy/images/sbca-default/core-image-minimal-initramfs-sbca-d=
efault-20220324145629.rootfs.cve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">13:33 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default&gt;ls -l =
/disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/deploy/i=
mages/sbca-default/aiox_orange-sbca-default-20220324145629.rootfs.cve<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-r--r--. 1 smonsees=
 none 0 Mar 24 13:17 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca=
-default/tmp/deploy/images/sbca-default/aiox_orange-sbca-default-2022032414=
5629.rootfs.cve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">13:33 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default&gt;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">13:27 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/deplo=
y/cve&gt;ls -l<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">total 0<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 binutils<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 binutils-cross-x86_64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 binutils-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 bluez5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 boost<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 cairo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 cairo-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:16 cpio-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 curl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 curl-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 dbus<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 dbus-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 e2fsprogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 e2fsprogs-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 file-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 flex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 flex-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 gcc-source-9.2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 gettext-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 glib-2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 glib-2.0-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 glibc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 gnutls<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 go-cross-corei7-64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 go-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 go-runtime<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 icu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 icu-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 libarchive-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 libgcrypt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 libjpeg-turbo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 libjpeg-turbo-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 libpcre<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:12 libpcre2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 libpcre-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 libxml2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 libxml2-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 libxslt-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 mailx<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 nasm-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 ncurses<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 ncurses-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:14 nfs-utils<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:14 openssh<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 patch-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 perl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 perl-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 python3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 python3-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 qemu-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:14 rsync<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 sqlite3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:06 sqlite3-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 sudo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:13 sysstat<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 unzip<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-rw-rw-r--. 1 smonsees=
 none 0 Mar 24 13:05 unzip-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">13:27 smonsees@yix4653=
83 /disk0/scratch/smonsees/yocto/workspace_1/builds2/sbca-default/tmp/deplo=
y/cve&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Thursday, March 24, 2022 12:56 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> CVE patch updates<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently building in cve-check to see what is =
reported, and I was curious if Yocto might provide any CVE based patch repo=
sitories ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a yocto page somewhere that goes over this =
side of things ?,
<o:p></o:p></p>
<p class=3D"MsoNormal">I did not see much in the mega-manual&#8230; I am ru=
nning on zeus based platforms (for both armarch64 and x86_64).<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_95d148090e4d4801b8e6bf0d47e25e24baesystemscom_--

