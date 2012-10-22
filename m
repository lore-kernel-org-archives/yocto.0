Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E6CEE0027E
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 13:22:18 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so2471937pbc.35
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 13:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version:x-mailer;
	bh=uuuVxJZtAQfHkEkDa4XqvTtuXC4wvCkqp9hqFCnQIpc=;
	b=t1i4NadQMaCLs79mATZACBr4B6IehQFXEPF9XMCdOmypm/e8AOfY1u6Ynzd2zdeD1w
	riITiD0O4F9l2rdwPClwiifhdzzzLqrY3AveDKvs4AbuX/WQTDzGAfZEfogMBDnUv2BJ
	566h0yq14Iv3XpPBk7hhxqbYx5Q2Oy8Ag8raMyPZol5Hy7o4ONLdfYf13oDrm0fAEwtQ
	lsAt/VvXSRBsYJ1/q+5Igi//Zb5ybbHSbwzPdYs8ve7rqINQosM0Hs1IIln3cZU7YlV6
	dVbKg6Naf8uii1Xk5nYJ3sEuvnz/iRXiFRiiujKoiIoq67GTaoEEQ3rnMfaaultOPs0P
	do8A==
Received: by 10.66.77.168 with SMTP id t8mr28977820paw.28.1350937338161;
	Mon, 22 Oct 2012 13:22:18 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id qb2sm6426410pbb.15.2012.10.22.13.22.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 22 Oct 2012 13:22:17 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
Date: Tue, 23 Oct 2012 00:22:08 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Oct 2012 20:22:18 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EFEAC577-BEC1-4F76-BD48-880C973E6758"

--Apple-Mail=_EFEAC577-BEC1-4F76-BD48-880C973E6758
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I am getting a build error, with the latest updates to poky/master =
branch.=20

The build used to be okay with commit id =
caba9cbfce09f19eb27f4c6615c0c5c48e1a2952, which was around three days =
ago.

Here is the build output:

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121022"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:8ce23f569584f195391bc5c68a780e1bf54e4360"
toolchain-layer   =3D "master:2c1f670d731fb1c4a2167b110e9ae1c3288a8108"
meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 63 tasks of which 0 didn't need to be =
rerun and all succeeded.
Loading cache: 100% =
|#########################################################################=
##########################| ETA:  00:00:00
Loaded 1132 entries from dependency cache.

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "zynq-zc702"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121022"
TUNE_FEATURES     =3D "armv7a vfp neon cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta             =20
meta-yocto        =3D "master:8ce23f569584f195391bc5c68a780e1bf54e4360"
toolchain-layer   =3D "master:2c1f670d731fb1c4a2167b110e9ae1c3288a8108"
meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel configuration
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
cat: meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory
** NOTE: There were 0 required options requested that do not
         have a corresponding value present in the final ".config" file.
         This is a violation of the policy defined by the higher level =
config
The full list can be found in your kernel src dir at:
meta/cfg/standard/zynq-zc702/missing_required.cfg
ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138
Log data follows:
| DEBUG: Executing shell function do_rootfs
| + rm -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf
| + touch =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf
| + package_update_index_ipk
| + set -x
| + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e =
armv5e-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702 all =
any noarch x86_64-nativesdk'
| + '[' '!' -z '' ']'
| + packagedirs=3D/tool/yocto/poky/build/tmp/deploy/ipk
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch'
| + for arch in '$ipkgarchs'
| + packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk'
| + multilib_archs=3D
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/ ']'
| + touch /tool/yocto/poky/build/tmp/deploy/ipk/Packages
| + flock /tool/yocto/poky/build/tmp/deploy/ipk/Packages.flock -c =
'opkg-make-index -r /tool/yocto/poky/build/tmp/deploy/ipk/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/all/ ']'
| + touch /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages
| + flock /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.flock -c =
'opkg-make-index -r /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
-p /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/all/'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/any/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/arm/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv4/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/ ']'
| + touch /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages
| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.flock -c =
'opkg-make-index -r =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/ ']'
| + touch /tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages
| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.flock -c =
'opkg-make-index -r =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/all/ ']'
| + touch /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages
| + flock /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.flock -c =
'opkg-make-index -r /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
-p /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/all/'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/any/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/ ']'
| + for pkgdir in '$packagedirs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk/ ']'
| + package_generate_ipkg_conf
| + package_generate_archlist
| + ipkgarchs=3D'all any noarch x86_64-nativesdk'
| + priority=3D1
| + for arch in '$ipkgarchs'
| + echo 'arch all 1'
| ++ expr 1 + 5
| + priority=3D6
| + for arch in '$ipkgarchs'
| + echo 'arch any 6'
| ++ expr 6 + 5
| + priority=3D11
| + for arch in '$ipkgarchs'
| + echo 'arch noarch 11'
| ++ expr 11 + 5
| + priority=3D16
| + for arch in '$ipkgarchs'
| + echo 'arch x86_64-nativesdk 16'
| ++ expr 16 + 5
| + priority=3D21
| + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e =
armv5e-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702'
| + priority=3D1
| + for arch in '$ipkgarchs'
| + echo 'arch all 1'
| ++ expr 1 + 5
| + priority=3D6
| + for arch in '$ipkgarchs'
| + echo 'arch any 6'
| ++ expr 6 + 5
| + priority=3D11
| + for arch in '$ipkgarchs'
| + echo 'arch noarch 11'
| ++ expr 11 + 5
| + priority=3D16
| + for arch in '$ipkgarchs'
| + echo 'arch arm 16'
| ++ expr 16 + 5
| + priority=3D21
| + for arch in '$ipkgarchs'
| + echo 'arch armv4 21'
| ++ expr 21 + 5
| + priority=3D26
| + for arch in '$ipkgarchs'
| + echo 'arch armv5 26'
| ++ expr 26 + 5
| + priority=3D31
| + for arch in '$ipkgarchs'
| + echo 'arch armv5-vfp 31'
| ++ expr 31 + 5
| + priority=3D36
| + for arch in '$ipkgarchs'
| + echo 'arch armv5e 36'
| ++ expr 36 + 5
| + priority=3D41
| + for arch in '$ipkgarchs'
| + echo 'arch armv5e-vfp 41'
| ++ expr 41 + 5
| + priority=3D46
| + for arch in '$ipkgarchs'
| + echo 'arch armv6-vfp 46'
| ++ expr 46 + 5
| + priority=3D51
| + for arch in '$ipkgarchs'
| + echo 'arch armv7a 51'
| ++ expr 51 + 5
| + priority=3D56
| + for arch in '$ipkgarchs'
| + echo 'arch armv7a-vfp 56'
| ++ expr 56 + 5
| + priority=3D61
| + for arch in '$ipkgarchs'
| + echo 'arch armv7a-vfp-neon 61'
| ++ expr 61 + 5
| + priority=3D66
| + for arch in '$ipkgarchs'
| + echo 'arch zynq_zc702 66'
| ++ expr 66 + 5
| + priority=3D71
| + echo 'src oe file:/tool/yocto/poky/build/tmp/deploy/ipk'
| + ipkgarchs=3D'all any noarch x86_64-nativesdk'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages ']'
| + echo 'src oe-all file:/tool/yocto/poky/build/tmp/deploy/ipk/all'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/any/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e =
/tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk/Packages ']'
| + echo 'src oe file:/tool/yocto/poky/build/tmp/deploy/ipk'
| + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e =
armv5e-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages ']'
| + echo 'src oe-all file:/tool/yocto/poky/build/tmp/deploy/ipk/all'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/any/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/arm/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv4/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp/Packages ']'
| + for arch in '$ipkgarchs'
| + '[' -e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages ']'
| + echo 'src oe-armv7a-vfp-neon =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon'
| + for arch in '$ipkgarchs'
| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages ']'
| + echo 'src oe-zynq_zc702 =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702'
| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/
| + =
STATUS=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/cor=
e-image-minimal-1.0-r0/rootfs/var/lib/opkg/status
| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/var/lib/opkg
| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --prefer-arch-to-version update
| Downloading file:/tool/yocto/poky/build/tmp/deploy/ipk/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe.
| Downloading file:/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-all.
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-zynq_zc702.
| + export INSTALL_PACKAGES_ATTEMPTONLY_IPK=3D
| + INSTALL_PACKAGES_ATTEMPTONLY_IPK=3D
| + export INSTALL_PACKAGES_LINGUAS_IPK=3D
| + INSTALL_PACKAGES_LINGUAS_IPK=3D
| + export INSTALL_TASK_IPK=3Drootfs
| + INSTALL_TASK_IPK=3Drootfs
| + export =
INSTALL_ROOTFS_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux=
-gnueabi/core-image-minimal-1.0-r0/rootfs
| + =
INSTALL_ROOTFS_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux=
-gnueabi/core-image-minimal-1.0-r0/rootfs
| + export =
INSTALL_CONF_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-g=
nueabi/core-image-minimal-1.0-r0/opkg.conf
| + =
INSTALL_CONF_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-g=
nueabi/core-image-minimal-1.0-r0/opkg.conf
| + export 'INSTALL_PACKAGES_IPK=3Drun-postinsts packagegroup-core-boot'
| + INSTALL_PACKAGES_IPK=3D'run-postinsts packagegroup-core-boot'
| + export =
D=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-ima=
ge-minimal-1.0-r0/rootfs
| + =
D=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-ima=
ge-minimal-1.0-r0/rootfs
| + export =
OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnuea=
bi/core-image-minimal-1.0-r0/rootfs
| + =
OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnuea=
bi/core-image-minimal-1.0-r0/rootfs
| + export =
IPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs
| + =
IPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs
| + export =
OPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs
| + =
OPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs
| + package_install_internal_ipk
| + local =
target_rootfs=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnue=
abi/core-image-minimal-1.0-r0/rootfs
| + local =
conffile=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/c=
ore-image-minimal-1.0-r0/opkg.conf
| + local package_attemptonly=3D
| + local package_linguas=3D
| + local task=3Drootfs
| + split_multilib_packages
| + INSTALL_PACKAGES_NORMAL_IPK=3D
| + INSTALL_PACKAGES_MULTILIB_IPK=3D
| + for pkg in '${INSTALL_PACKAGES_IPK}'
| + is_multilib=3D0
| + '[' 0 =3D 0 ']'
| + INSTALL_PACKAGES_NORMAL_IPK=3D' run-postinsts'
| + for pkg in '${INSTALL_PACKAGES_IPK}'
| + is_multilib=3D0
| + '[' 0 =3D 0 ']'
| + INSTALL_PACKAGES_NORMAL_IPK=3D' run-postinsts =
packagegroup-core-boot'
| + local 'package_to_install=3D run-postinsts packagegroup-core-boot'
| + local package_multilib=3D
| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/var/lib/opkg/
| + local 'ipkg_args=3D-f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version'
| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version update
| Downloading file:/tool/yocto/poky/build/tmp/deploy/ipk/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe.
| Downloading file:/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-all.
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.
| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-zynq_zc702.
| + '[' xlinux-gnueabi =3D xlinux ']'
| + '[' xlinux-gnueabi =3D xlinux-gnueabi ']'
| + '[' '!' -z '' ']'
| + '[' '!' -z ' run-postinsts packagegroup-core-boot' ']'
| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version install run-postinsts packagegroup-core-boot
| Installing run-postinsts (1.0-r8) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/run-postinsts_1=
.0-r8_armv7a-vfp-neon.ipk.
| Installing update-rc.d (0.7-r4) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/update-rc.d_0.7-r4_all.ipk.=

| Installing packagegroup-core-boot (1.0-r10) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/packagegroup-core-bo=
ot_1.0-r10_zynq_zc702.ipk.
| Installing tinylogin (1.4-r9) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/tinylogin_1.4-r=
9_armv7a-vfp-neon.ipk.
| Installing libc6 (2.16-r17) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libc6_2.16-r17_=
armv7a-vfp-neon.ipk.
| Installing busybox (1.20.2-r2) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox_1.20.2-=
r2_armv7a-vfp-neon.ipk.
| Installing busybox-syslog (1.20.2-r2) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-syslog_=
1.20.2-r2_armv7a-vfp-neon.ipk.
| Installing busybox-udhcpc (1.20.2-r2) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-udhcpc_=
1.20.2-r2_armv7a-vfp-neon.ipk.
| Installing modutils-initscripts (1.0-r6) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/modutils-initsc=
ripts_1.0-r6_armv7a-vfp-neon.ipk.
| Installing busybox-hwclock (1.20.2-r2) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-hwclock=
_1.20.2-r2_armv7a-vfp-neon.ipk.
| Installing sysvinit (2.88dsf-r7) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit_2.88ds=
f-r7_armv7a-vfp-neon.ipk.
| Installing sysvinit-pidof (2.88dsf-r7) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit-pidof_=
2.88dsf-r7_armv7a-vfp-neon.ipk.
| Installing sysvinit-inittab (2.88dsf-r9) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/sysvinit-inittab_2.8=
8dsf-r9_zynq_zc702.ipk.
| Installing update-alternatives-cworth (1:0.1.8+svnr633-r10.7) to =
root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/update-alternatives-cworth_=
0.1.8+svnr633-r10.7_all.ipk.
| Installing udev (164-r17) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/udev_164-r17_ar=
mv7a-vfp-neon.ipk.
| Installing libusb-0.1-4 (1:0.1.3-r6) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libusb-0.1-4_0.=
1.3-r6_armv7a-vfp-neon.ipk.
| Installing libusb-1.0-0 (1.0.8-r4) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libusb-1.0-0_1.=
0.8-r4_armv7a-vfp-neon.ipk.
| Installing udev-utils (164-r17) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/udev-utils_164-=
r17_armv7a-vfp-neon.ipk.
| Installing pciutils-ids (3.1.10-r0) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/pciutils-ids_3.=
1.10-r0_armv7a-vfp-neon.ipk.
| Installing udev-extraconf (1.0-r6) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/udev-extraconf_1.0-r6_all.i=
pk.
| Installing usbutils-ids (006-r0) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/usbutils-ids_00=
6-r0_armv7a-vfp-neon.ipk.
| Installing initscripts (1.0-r137) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/initscripts_1.0=
-r137_armv7a-vfp-neon.ipk.
| Installing netbase (5.0-r0) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/netbase_5.0-r0_=
armv7a-vfp-neon.ipk.
| Installing base-files (3.0.14-r72) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/base-files_3.0.14-r7=
2_zynq_zc702.ipk.
| Installing base-passwd (3.5.26-r0) to root...
| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/base-passwd_3.5=
.26-r0_armv7a-vfp-neon.ipk.
| sh: /tmp/opkg-8G8d2f/base-passwd-b8TO4C/preinst: /bin/sh: bad =
interpreter: Permission denied
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/init.d/syslog to syslog.busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/syslog-startup.conf to =
syslog-startup.conf.busybox
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/syslog.
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/bunzip2 to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/bzcat to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/date to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/groups to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/id to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/touch to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/users to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/who to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/patch to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/vi to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/find to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/grep to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/egrep to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/fgrep to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/xargs to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/halt to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/poweroff to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/reboot to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/insmod to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/lsmod to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/modprobe to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/rmmod to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ping to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ping6 to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ash to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sh to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/[ to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/[[ to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/ar to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/awk to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/basename to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cat to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chattr to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chgrp to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chmod to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chown to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/chroot to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/chvt to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/clear to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/cmp to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cp to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cpio to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/cut to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dc to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dd to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/deallocvt to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/df to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/diff to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dirname to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dmesg to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dnsdomainname to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/du to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dumpkmap to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dumpleases to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/echo to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/env to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/expr to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/false to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/fbset to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fdisk to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/flock to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/free to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fsck to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fsck.minix to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/fuser to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/gunzip to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/gzip to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/head to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/hexdump to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/hostname to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/hwclock to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifconfig to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifdown to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifup to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ip to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/kill to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/killall to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/klogd to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/less to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ln to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/loadfont to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/loadkmap to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/logger to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/logname to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/logread to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/losetup to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ls to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/md5sum to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/microcom to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mkdir to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/mkfifo to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/mkfs.minix to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mknod to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/mkswap to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mktemp to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/more to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mount to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mv to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nc to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/netstat to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nohup to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nslookup to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/od to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/openvt to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pidof to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/pivot_root to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/printf to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ps to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pwd to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/rdate to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/readlink to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/realpath to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/renice to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/reset to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/rfkill to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/rm to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/rmdir to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/route to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/run-parts to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sed to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/seq to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/setconsole to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sleep to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/sort to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/start-stop-daemon to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/strings to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/stty to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/swapoff to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/swapon to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/switch_root to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sync to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/sysctl to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/syslogd to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tail to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/tar to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tee to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/telnet to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/test to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tftp to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/time to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/top to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tr to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/traceroute to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/true to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tty to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/udhcpc to ../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/udhcpd to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/umount to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/uname to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/uniq to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/unzip to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/uptime to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/usleep to busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/watch to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wc to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wget to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/which to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/whoami to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/yes to ../../bin/busybox
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/zcat to busybox
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/modutils.sh.
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/init.d/functions to functions.initscripts
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/hwclock.sh.
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/udev.
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pidof to pidof.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/getty to getty.tinylogin
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/networking.
|  Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/run-postinsts.
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/init to init.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mountpoint to mountpoint.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/halt to halt.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/reboot to reboot.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/runlevel to runlevel.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/shutdown to shutdown.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/poweroff to poweroff.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/last to last.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/mesg to mesg.sysvinit
| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wall to wall.sysvinit
| Configuring busybox-syslog.
| Configuring libc6.
| Configuring update-rc.d.
| Configuring busybox-udhcpc.
| Configuring busybox.
| Configuring libusb-1.0-0.
| Configuring libusb-0.1-4.
| Configuring modutils-initscripts.
| Configuring base-files.
| Configuring sysvinit-inittab.
| Configuring initscripts.
| Configuring update-alternatives-cworth.
| Configuring udev-utils.
| Configuring usbutils-ids.
| Configuring busybox-hwclock.
| Configuring pciutils-ids.
| Configuring udev-extraconf.
| Configuring udev.
| Configuring sysvinit-pidof.
| Configuring tinylogin.
| Configuring netbase.
| Configuring run-postinsts.
| Configuring sysvinit.
| Collected errors:
|  * preinst_configure: Aborting installation of base-passwd.
|  * opkg_install_cmd: Cannot install package packagegroup-core-boot.
| ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further information)
ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1395 tasks of which 227 didn't need to be =
rerun and 1 failed.
No currently running tasks (1395 of 1396)

Summary: 1 task failed:
  /tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.

real	22m0.040s
user	90m47.324s
sys	10m32.516s


Best regards,

Elvis Dowson=

--Apple-Mail=_EFEAC577-BEC1-4F76-BD48-880C973E6758
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I am getting a build error, with the =
latest updates to poky/master branch.&nbsp;</div><div><br></div><div>The =
build used to be okay with commit id =
caba9cbfce09f19eb27f4c6615c0c5c48e1a2952, which was around three days =
ago.</div><div><br></div><div>Here is the build =
output:</div><div><br></div><div><div><font face=3D"Monaco" =
size=3D"2">Build Configuration:</font></div><div><font face=3D"Monaco" =
size=3D"2">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.16.0"</font></div><div><font face=3D"Monaco" size=3D"2">TARGET_ARCH =
&nbsp; &nbsp; &nbsp; =3D "arm"</font></div><div><font face=3D"Monaco" =
size=3D"2">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"linux-gnueabi"</font></div><div><font face=3D"Monaco" size=3D"2">MACHINE =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"zynq-zc702"</font></div><div><font face=3D"Monaco" size=3D"2">DISTRO =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"poky"</font></div><div><font face=3D"Monaco" size=3D"2">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.3+snapshot-20121022"</font></div><div><font =
face=3D"Monaco" size=3D"2">TUNE_FEATURES &nbsp; &nbsp; =3D "armv7a vfp =
neon cortexa9"</font></div><div><font face=3D"Monaco" =
size=3D"2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"vfp-neon"</font></div><div><font face=3D"Monaco" size=3D"2">meta &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
face=3D"Monaco" size=3D"2">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"master:8ce23f569584f195391bc5c68a780e1bf54e4360"</font></div><div><font =
face=3D"Monaco" size=3D"2">toolchain-layer &nbsp; =3D =
"master:2c1f670d731fb1c4a2167b110e9ae1c3288a8108"</font></div><div><font =
face=3D"Monaco" size=3D"2">meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"</fo=
nt></div><div><font face=3D"Monaco" size=3D"2"><br></font></div><div><font=
 face=3D"Monaco" size=3D"2">NOTE: Resolving any missing task queue =
dependencies</font></div><div><font face=3D"Monaco" size=3D"2">NOTE: =
Preparing runqueue</font></div><div><font face=3D"Monaco" size=3D"2">NOTE:=
 Executing SetScene Tasks</font></div><div><font face=3D"Monaco" =
size=3D"2">NOTE: Executing RunQueue Tasks</font></div><div><font =
face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 63 tasks of =
which 0 didn't need to be rerun and all =
succeeded.</font></div><div><font face=3D"Monaco" size=3D"2">Loading =
cache: 100% =
|#########################################################################=
##########################| ETA: &nbsp;00:00:00</font></div><div><font =
face=3D"Monaco" size=3D"2">Loaded 1132 entries from dependency =
cache.</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2">Build =
Configuration:</font></div><div><font face=3D"Monaco" =
size=3D"2">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.16.0"</font></div><div><font face=3D"Monaco" size=3D"2">TARGET_ARCH =
&nbsp; &nbsp; &nbsp; =3D "arm"</font></div><div><font face=3D"Monaco" =
size=3D"2">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"linux-gnueabi"</font></div><div><font face=3D"Monaco" size=3D"2">MACHINE =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"zynq-zc702"</font></div><div><font face=3D"Monaco" size=3D"2">DISTRO =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"poky"</font></div><div><font face=3D"Monaco" size=3D"2">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.3+snapshot-20121022"</font></div><div><font =
face=3D"Monaco" size=3D"2">TUNE_FEATURES &nbsp; &nbsp; =3D "armv7a vfp =
neon cortexa9"</font></div><div><font face=3D"Monaco" =
size=3D"2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"vfp-neon"</font></div><div><font face=3D"Monaco" size=3D"2">meta &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
face=3D"Monaco" size=3D"2">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"master:8ce23f569584f195391bc5c68a780e1bf54e4360"</font></div><div><font =
face=3D"Monaco" size=3D"2">toolchain-layer &nbsp; =3D =
"master:2c1f670d731fb1c4a2167b110e9ae1c3288a8108"</font></div><div><font =
face=3D"Monaco" size=3D"2">meta-zynq-balister =3D =
"master-xilinx-zc702-gcc-4.7:d168cea411034d1f1530e4eacf6eb3ce4affd1c8"</fo=
nt></div><div><font face=3D"Monaco" size=3D"2"><br></font></div><div><font=
 face=3D"Monaco" size=3D"2">NOTE: Resolving any missing task queue =
dependencies</font></div><div><font face=3D"Monaco" size=3D"2">NOTE: =
Preparing runqueue</font></div><div><font face=3D"Monaco" size=3D"2">NOTE:=
 Executing SetScene Tasks</font></div><div><font face=3D"Monaco" =
size=3D"2">NOTE: Executing RunQueue Tasks</font></div><div><font =
face=3D"Monaco" size=3D"2">NOTE: validating kernel =
configuration</font></div><div><font face=3D"Monaco" size=3D"2">cat: =
meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory</font></div><div><font face=3D"Monaco" size=3D"2">cat: =
meta/cfg/standard/zynq-zc702/specified.cfg: No such file or =
directory</font></div><div><font face=3D"Monaco" size=3D"2">** NOTE: =
There were 0 required options requested that do =
not</font></div><div><font face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;have a corresponding value present in the final =
".config" file.</font></div><div><font face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;This is a violation of the policy defined by =
the higher level config</font></div><div><font face=3D"Monaco" =
size=3D"2">The full list can be found in your kernel src dir =
at:</font></div><div><font face=3D"Monaco" =
size=3D"2">meta/cfg/standard/zynq-zc702/missing_required.cfg</font></div><=
div><font face=3D"Monaco" size=3D"2">ERROR: Function failed: do_rootfs =
(see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further =
information)</font></div><div><font face=3D"Monaco" size=3D"2">ERROR: =
Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138</font></div><div><font =
face=3D"Monaco" size=3D"2">Log data follows:</font></div><div><font =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
do_rootfs</font></div><div><font face=3D"Monaco" size=3D"2">| + rm -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf</font></div><div><font face=3D"Monaco" =
size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf</font></div><div><font face=3D"Monaco" =
size=3D"2">| + package_update_index_ipk</font></div><div><font =
face=3D"Monaco" size=3D"2">| + set -x</font></div><div><font =
face=3D"Monaco" size=3D"2">| + ipkgarchs=3D'all any noarch arm armv4 =
armv5 armv5-vfp armv5e armv5e-vfp armv6-vfp armv7a armv7a-vfp =
armv7a-vfp-neon zynq_zc702 all any noarch =
x86_64-nativesdk'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
'[' '!' -z '' ']'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D/tool/yocto/poky/build/tmp/deploy/ipk</font></div><div><font=
 face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon'</font></div><div><f=
ont face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
packagedirs=3D'/tool/yocto/poky/build/tmp/deploy/ipk =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/arm =
/tool/yocto/poky/build/tmp/deploy/ipk/armv4 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5 =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e =
/tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702 =
/tool/yocto/poky/build/tmp/deploy/ipk/all =
/tool/yocto/poky/build/tmp/deploy/ipk/any =
/tool/yocto/poky/build/tmp/deploy/ipk/noarch =
/tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk'</font></div><div><=
font face=3D"Monaco" size=3D"2">| + =
multilib_archs=3D</font></div><div><font face=3D"Monaco" size=3D"2">| + =
for pkgdir in '$packagedirs'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/deploy/ipk/Packages</font></div><div><font =
face=3D"Monaco" size=3D"2">| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/Packages.flock -c 'opkg-make-index =
-r /tool/yocto/poky/build/tmp/deploy/ipk/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/all/ ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages</font></div><div><font =
face=3D"Monaco" size=3D"2">| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.flock -c =
'opkg-make-index -r /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
-p /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/all/'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/any/ ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/arm/ ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv4/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages</font></div=
><div><font face=3D"Monaco" size=3D"2">| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.flock -c =
'opkg-make-index -r =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/'</font></div><div><=
font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages</font></div><div=
><font face=3D"Monaco" size=3D"2">| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.flock -c =
'opkg-make-index -r =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages -p =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/all/ ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + touch =
/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages</font></div><div><font =
face=3D"Monaco" size=3D"2">| + flock =
/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.flock -c =
'opkg-make-index -r /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
-p /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages -m =
/tool/yocto/poky/build/tmp/deploy/ipk/all/'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/any/ ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for pkgdir in =
'$packagedirs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk/ =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
package_generate_ipkg_conf</font></div><div><font face=3D"Monaco" =
size=3D"2">| + package_generate_archlist</font></div><div><font =
face=3D"Monaco" size=3D"2">| + ipkgarchs=3D'all any noarch =
x86_64-nativesdk'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D1</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch all 1'</font></div><div><font face=3D"Monaco" size=3D"2">| =
++ expr 1 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D6</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch any 6'</font></div><div><font face=3D"Monaco" size=3D"2">| =
++ expr 6 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D11</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch noarch 11'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 11 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D16</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch x86_64-nativesdk =
16'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ expr 16 + =
5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D21</font></div><div><font face=3D"Monaco" size=3D"2">| + =
ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e armv5e-vfp =
armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon =
zynq_zc702'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D1</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch all 1'</font></div><div><font face=3D"Monaco" size=3D"2">| =
++ expr 1 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D6</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch any 6'</font></div><div><font face=3D"Monaco" size=3D"2">| =
++ expr 6 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D11</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch noarch 11'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 11 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D16</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch arm 16'</font></div><div><font =
face=3D"Monaco" size=3D"2">| ++ expr 16 + 5</font></div><div><font =
face=3D"Monaco" size=3D"2">| + priority=3D21</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo =
'arch armv4 21'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ =
expr 21 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D26</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch armv5 26'</font></div><div><font face=3D"Monaco" size=3D"2">|=
 ++ expr 26 + 5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D31</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch armv5-vfp 31'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 31 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D36</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch armv5e =
36'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ expr 36 + =
5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D41</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch armv5e-vfp 41'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 41 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D46</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch armv6-vfp =
46'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ expr 46 + =
5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D51</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch armv7a 51'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 51 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D56</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch armv7a-vfp =
56'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ expr 56 + =
5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D61</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ echo 'arch armv7a-vfp-neon 61'</font></div><div><font face=3D"Monaco" =
size=3D"2">| ++ expr 61 + 5</font></div><div><font face=3D"Monaco" =
size=3D"2">| + priority=3D66</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + echo 'arch zynq_zc702 =
66'</font></div><div><font face=3D"Monaco" size=3D"2">| ++ expr 66 + =
5</font></div><div><font face=3D"Monaco" size=3D"2">| + =
priority=3D71</font></div><div><font face=3D"Monaco" size=3D"2">| + echo =
'src oe =
file:/tool/yocto/poky/build/tmp/deploy/ipk'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + ipkgarchs=3D'all any noarch =
x86_64-nativesdk'</font></div><div><font face=3D"Monaco" size=3D"2">| + =
for arch in '$ipkgarchs'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + '[' -e /tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo 'src =
oe-all =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/any/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/x86_64-nativesdk/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo 'src oe =
file:/tool/yocto/poky/build/tmp/deploy/ipk'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + ipkgarchs=3D'all any noarch arm armv4 =
armv5 armv5-vfp armv5e armv5e-vfp armv6-vfp armv7a armv7a-vfp =
armv7a-vfp-neon zynq_zc702'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for arch in '$ipkgarchs'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + '[' -e =
/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo 'src =
oe-all =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/any/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/noarch/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/arm/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv4/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5-vfp/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv5e-vfp/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv6-vfp/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo 'src =
oe-armv7a-vfp-neon =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon'</font></div><d=
iv><font face=3D"Monaco" size=3D"2">| + for arch in =
'$ipkgarchs'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
-e /tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + echo 'src =
oe-zynq_zc702 =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702'</font></div><div><f=
ont face=3D"Monaco" size=3D"2">| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ =
STATUS=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/cor=
e-image-minimal-1.0-r0/rootfs/var/lib/opkg/status</font></div><div><font =
face=3D"Monaco" size=3D"2">| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/var/lib/opkg</font></div><div><font face=3D"Monaco" =
size=3D"2">| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --prefer-arch-to-version =
update</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/Packages.</font></div><div><fon=
t face=3D"Monaco" size=3D"2">| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.</font></div><div>=
<font face=3D"Monaco" size=3D"2">| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-all.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.</font=
></div><div><font face=3D"Monaco" size=3D"2">| Updated list of available =
packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.</font></div><=
div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.</font></di=
v><div><font face=3D"Monaco" size=3D"2">| Updated list of available =
packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-zynq_zc702.</font></div><div><=
font face=3D"Monaco" size=3D"2">| + export =
INSTALL_PACKAGES_ATTEMPTONLY_IPK=3D</font></div><div><font face=3D"Monaco"=
 size=3D"2">| + INSTALL_PACKAGES_ATTEMPTONLY_IPK=3D</font></div><div><font=
 face=3D"Monaco" size=3D"2">| + export =
INSTALL_PACKAGES_LINGUAS_IPK=3D</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_PACKAGES_LINGUAS_IPK=3D</font></div><div><font =
face=3D"Monaco" size=3D"2">| + export =
INSTALL_TASK_IPK=3Drootfs</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_TASK_IPK=3Drootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + export =
INSTALL_ROOTFS_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux=
-gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
INSTALL_ROOTFS_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux=
-gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + export =
INSTALL_CONF_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-g=
nueabi/core-image-minimal-1.0-r0/opkg.conf</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
INSTALL_CONF_IPK=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-g=
nueabi/core-image-minimal-1.0-r0/opkg.conf</font></div><div><font =
face=3D"Monaco" size=3D"2">| + export =
'INSTALL_PACKAGES_IPK=3Drun-postinsts =
packagegroup-core-boot'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_PACKAGES_IPK=3D'run-postinsts =
packagegroup-core-boot'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + export =
D=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-ima=
ge-minimal-1.0-r0/rootfs</font></div><div><font face=3D"Monaco" =
size=3D"2">| + =
D=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-ima=
ge-minimal-1.0-r0/rootfs</font></div><div><font face=3D"Monaco" =
size=3D"2">| + export =
OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnuea=
bi/core-image-minimal-1.0-r0/rootfs</font></div><div><font face=3D"Monaco"=
 size=3D"2">| + =
OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnuea=
bi/core-image-minimal-1.0-r0/rootfs</font></div><div><font face=3D"Monaco"=
 size=3D"2">| + export =
IPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
IPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + export =
OPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
OPKG_OFFLINE_ROOT=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-=
gnueabi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
package_install_internal_ipk</font></div><div><font face=3D"Monaco" =
size=3D"2">| + local =
target_rootfs=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnue=
abi/core-image-minimal-1.0-r0/rootfs</font></div><div><font =
face=3D"Monaco" size=3D"2">| + local =
conffile=3D/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/c=
ore-image-minimal-1.0-r0/opkg.conf</font></div><div><font face=3D"Monaco" =
size=3D"2">| + local package_attemptonly=3D</font></div><div><font =
face=3D"Monaco" size=3D"2">| + local =
package_linguas=3D</font></div><div><font face=3D"Monaco" size=3D"2">| + =
local task=3Drootfs</font></div><div><font face=3D"Monaco" size=3D"2">| =
+ split_multilib_packages</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_PACKAGES_NORMAL_IPK=3D</font></div><div><font =
face=3D"Monaco" size=3D"2">| + =
INSTALL_PACKAGES_MULTILIB_IPK=3D</font></div><div><font face=3D"Monaco" =
size=3D"2">| + for pkg in =
'${INSTALL_PACKAGES_IPK}'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + is_multilib=3D0</font></div><div><font face=3D"Monaco" =
size=3D"2">| + '[' 0 =3D 0 ']'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_PACKAGES_NORMAL_IPK=3D' =
run-postinsts'</font></div><div><font face=3D"Monaco" size=3D"2">| + for =
pkg in '${INSTALL_PACKAGES_IPK}'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + is_multilib=3D0</font></div><div><font face=3D"Monaco" =
size=3D"2">| + '[' 0 =3D 0 ']'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + INSTALL_PACKAGES_NORMAL_IPK=3D' run-postinsts =
packagegroup-core-boot'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + local 'package_to_install=3D run-postinsts =
packagegroup-core-boot'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + local package_multilib=3D</font></div><div><font =
face=3D"Monaco" size=3D"2">| + mkdir -p =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/var/lib/opkg/</font></div><div><font face=3D"Monaco" =
size=3D"2">| + local 'ipkg_args=3D-f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version update</font></div><div><font face=3D"Monaco" =
size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/Packages.</font></div><div><fon=
t face=3D"Monaco" size=3D"2">| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/Packages.</font></div><div>=
<font face=3D"Monaco" size=3D"2">| Updated list of available packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-all.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.</font=
></div><div><font face=3D"Monaco" size=3D"2">| Updated list of available =
packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.</font></div><=
div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/Packages.</font></di=
v><div><font face=3D"Monaco" size=3D"2">| Updated list of available =
packages in =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//var/lib/opkg/lists/oe-zynq_zc702.</font></div><div><=
font face=3D"Monaco" size=3D"2">| + '[' xlinux-gnueabi =3D xlinux =
']'</font></div><div><font face=3D"Monaco" size=3D"2">| + '[' =
xlinux-gnueabi =3D xlinux-gnueabi ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + '[' '!' -z '' ']'</font></div><div><font =
face=3D"Monaco" size=3D"2">| + '[' '!' -z ' run-postinsts =
packagegroup-core-boot' ']'</font></div><div><font face=3D"Monaco" =
size=3D"2">| + opkg-cl -f =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/opkg.conf -o =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs --force-overwrite --force_postinstall =
--prefer-arch-to-version install run-postinsts =
packagegroup-core-boot</font></div><div><font face=3D"Monaco" size=3D"2">|=
 Installing run-postinsts (1.0-r8) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/run-postinsts_1=
.0-r8_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing update-rc.d (0.7-r4) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/update-rc.d_0.7-r4_all.ipk.=
</font></div><div><font face=3D"Monaco" size=3D"2">| Installing =
packagegroup-core-boot (1.0-r10) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/packagegroup-core-bo=
ot_1.0-r10_zynq_zc702.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing tinylogin (1.4-r9) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/tinylogin_1.4-r=
9_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" size=3D"2">|=
 Installing libc6 (2.16-r17) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libc6_2.16-r17_=
armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Installing busybox (1.20.2-r2) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox_1.20.2-=
r2_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing busybox-syslog (1.20.2-r2) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-syslog_=
1.20.2-r2_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing busybox-udhcpc (1.20.2-r2) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-udhcpc_=
1.20.2-r2_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing modutils-initscripts (1.0-r6) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/modutils-initsc=
ripts_1.0-r6_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing busybox-hwclock (1.20.2-r2) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-hwclock=
_1.20.2-r2_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing sysvinit (2.88dsf-r7) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit_2.88ds=
f-r7_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing sysvinit-pidof (2.88dsf-r7) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit-pidof_=
2.88dsf-r7_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing sysvinit-inittab (2.88dsf-r9) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/sysvinit-inittab_2.8=
8dsf-r9_zynq_zc702.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing update-alternatives-cworth =
(1:0.1.8+svnr633-r10.7) to root...</font></div><div><font face=3D"Monaco" =
size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/update-alternatives-cworth_=
0.1.8+svnr633-r10.7_all.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing udev (164-r17) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/udev_164-r17_ar=
mv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Installing libusb-0.1-4 (1:0.1.3-r6) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libusb-0.1-4_0.=
1.3-r6_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing libusb-1.0-0 (1.0.8-r4) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/libusb-1.0-0_1.=
0.8-r4_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing udev-utils (164-r17) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/udev-utils_164-=
r17_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing pciutils-ids (3.1.10-r0) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/pciutils-ids_3.=
1.10-r0_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing udev-extraconf (1.0-r6) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/all/udev-extraconf_1.0-r6_all.i=
pk.</font></div><div><font face=3D"Monaco" size=3D"2">| Installing =
usbutils-ids (006-r0) to root...</font></div><div><font face=3D"Monaco" =
size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/usbutils-ids_00=
6-r0_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing initscripts (1.0-r137) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/initscripts_1.0=
-r137_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Installing netbase (5.0-r0) to =
root...</font></div><div><font face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/netbase_5.0-r0_=
armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Installing base-files (3.0.14-r72) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/zynq_zc702/base-files_3.0.14-r7=
2_zynq_zc702.ipk.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Installing base-passwd (3.5.26-r0) to root...</font></div><div><font =
face=3D"Monaco" size=3D"2">| Downloading =
file:/tool/yocto/poky/build/tmp/deploy/ipk/armv7a-vfp-neon/base-passwd_3.5=
.26-r0_armv7a-vfp-neon.ipk.</font></div><div><font face=3D"Monaco" =
size=3D"2">| sh: /tmp/opkg-8G8d2f/base-passwd-b8TO4C/preinst: /bin/sh: =
bad interpreter: Permission denied</font></div><div><font face=3D"Monaco" =
size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/init.d/syslog to =
syslog.busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/syslog-startup.conf to =
syslog-startup.conf.busybox</font></div><div><font face=3D"Monaco" =
size=3D"2">| &nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/syslog.</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/bunzip2 to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/bzcat to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/date to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/groups to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/id to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/touch to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/users to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/who to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/patch to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/vi to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/find to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/grep to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/egrep to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/fgrep to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/xargs to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/halt to ../bin/busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/poweroff to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/reboot to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/insmod to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/lsmod to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/modprobe to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/rmmod to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ping to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ping6 to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ash to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sh to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/[ to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/[[ to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/ar to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/awk to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/basename to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cat to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chattr to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chgrp to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chmod to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/chown to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/chroot to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/chvt to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/clear to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/cmp to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cp to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/cpio to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/cut to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dc to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dd to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/deallocvt to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/df to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/diff to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dirname to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dmesg to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dnsdomainname to =
busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/du to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/dumpkmap to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/dumpleases to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/echo to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/env to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/expr to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/false to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/fbset to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fdisk to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/flock to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/free to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fsck to ../bin/busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/fsck.minix to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/fuser to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/gunzip to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/gzip to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/head to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/hexdump to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/hostname to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/hwclock to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifconfig to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifdown to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/ifup to ../bin/busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ip to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/kill to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/killall to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/klogd to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/less to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ln to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/loadfont to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/loadkmap to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/logger to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/logname to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/logread to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/losetup to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ls to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/md5sum to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/microcom to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mkdir to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/mkfifo to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/mkfs.minix to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mknod to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/mkswap to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mktemp to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/more to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mount to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mv to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nc to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/netstat to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nohup to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/nslookup to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/od to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/openvt to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pidof to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/pivot_root to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/printf to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/ps to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pwd to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/rdate to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/readlink to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/realpath to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/renice to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/reset to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/rfkill to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/rm to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/rmdir to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/route to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/run-parts to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sed to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/seq to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/setconsole to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sleep to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/sort to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/start-stop-daemon to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/strings to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/stty to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/swapoff to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/swapon to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/switch_root to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/sync to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/sysctl to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/syslogd to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tail to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/tar to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tee to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/telnet to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/test to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tftp to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/time to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/top to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tr to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/traceroute to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/true to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/tty to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/udhcpc to =
../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/sbin/udhcpd to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/umount to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/uname to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/uniq to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/unzip to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/uptime to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/usleep to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/watch to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wc to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wget to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/which to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/whoami to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/yes to =
../../bin/busybox</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/zcat to busybox</font></div><div><font =
face=3D"Monaco" size=3D"2">| &nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/modutils.sh.</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//etc/init.d/functions to =
functions.initscripts</font></div><div><font face=3D"Monaco" size=3D"2">| =
&nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/hwclock.sh.</font></div><div><font =
face=3D"Monaco" size=3D"2">| &nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/udev.</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/pidof to pidof.sysvinit</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/getty to =
getty.tinylogin</font></div><div><font face=3D"Monaco" size=3D"2">| =
&nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/networking.</font></div><div><font =
face=3D"Monaco" size=3D"2">| &nbsp;Adding system startup for =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs/etc/init.d/run-postinsts.</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/init to init.sysvinit</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//bin/mountpoint to =
mountpoint.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/halt to halt.sysvinit</font></div><div><font =
face=3D"Monaco" size=3D"2">| update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/reboot to =
reboot.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/runlevel to =
runlevel.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/shutdown to =
shutdown.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//sbin/poweroff to =
poweroff.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/last to =
last.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/mesg to =
mesg.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
update-alternatives: Linking =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/rootfs//usr/bin/wall to =
wall.sysvinit</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring busybox-syslog.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring libc6.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring update-rc.d.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
busybox-udhcpc.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring busybox.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring libusb-1.0-0.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring libusb-0.1-4.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
modutils-initscripts.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring base-files.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring sysvinit-inittab.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
initscripts.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring update-alternatives-cworth.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
udev-utils.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring usbutils-ids.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring busybox-hwclock.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
pciutils-ids.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring udev-extraconf.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring udev.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring sysvinit-pidof.</font></div><div><font =
face=3D"Monaco" size=3D"2">| Configuring =
tinylogin.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring netbase.</font></div><div><font face=3D"Monaco" size=3D"2">| =
Configuring run-postinsts.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Configuring sysvinit.</font></div><div><font face=3D"Monaco" =
size=3D"2">| Collected errors:</font></div><div><font face=3D"Monaco" =
size=3D"2">| &nbsp;* preinst_configure: Aborting installation of =
base-passwd.</font></div><div><font face=3D"Monaco" size=3D"2">| &nbsp;* =
opkg_install_cmd: Cannot install package =
packagegroup-core-boot.</font></div><div><font face=3D"Monaco" =
size=3D"2">| ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further =
information)</font></div><div><font face=3D"Monaco" size=3D"2">ERROR: =
Task 7 (/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'</font></div><div><font =
face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 1395 tasks of =
which 227 didn't need to be rerun and 1 failed.</font></div><div><font =
face=3D"Monaco" size=3D"2">No currently running tasks (1395 of =
1396)</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" size=3D"2">Summary:=
 1 task failed:</font></div><div><font face=3D"Monaco" size=3D"2">&nbsp; =
/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs</font></div><div><font face=3D"Monaco" size=3D"2">Summary: =
There was 1 ERROR message shown, returning a non-zero exit =
code.</font></div><div><font face=3D"Monaco" =
size=3D"2"><br></font></div><div><font face=3D"Monaco" =
size=3D"2">real<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>22m0.040s</font></div><div><font face=3D"Monaco" =
size=3D"2">user<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>90m47.324s</font></div><div><font face=3D"Monaco" =
size=3D"2">sys<span class=3D"Apple-tab-span" style=3D"white-space: pre; =
">	=
</span>10m32.516s</font></div><div><br></div></div><div><br></div><div>Bes=
t regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_EFEAC577-BEC1-4F76-BD48-880C973E6758--
