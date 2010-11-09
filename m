Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C4CD4C80815
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 16:10:47 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA9MAkog005603
	for <yocto@yoctoproject.org>; Tue, 9 Nov 2010 14:10:46 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 14:10:46 -0800
Received: from dhcp-144-194.ottawa.windriver.com ([128.224.144.194]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 14:10:46 -0800
From: Alex deVries <alex.devries@windriver.com>
Date: Tue, 9 Nov 2010 17:10:45 -0500
Message-Id: <ED29F0AE-CCDF-48FC-AB38-E84BCF789086@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1081)
X-Mailer: Apple Mail (2.1081)
X-OriginalArrivalTime: 09 Nov 2010 22:10:46.0893 (UTC)
	FILETIME=[F5C4F9D0:01CB805A]
Subject: Running builds under strace
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
X-List-Received-Date: Tue, 09 Nov 2010 22:10:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


I'm working on swabber support, and as part of that need to enable =
running builds in strace.  The code for this is in josh's poky-contrib.

For anyone else who is looking at this, various packages failed to build =
with -jN (with N>1).  My theory is that running these builds under =
strace changes the build timing and exposes existing parallel build =
problems that don't normally show themselves.

To address this, I had to modify various recipes to set PARALLEL_MAKE =3D =
"" for various packages.

The following packages had to be modified:
#	modified:   meta/recipes-connectivity/openssl/openssl.inc
#	modified:   meta/recipes-core/eglibc/eglibc_2.12.bb
#	modified:   meta/recipes-core/glib-2.0/glib-2.0_2.24.1.bb
#	modified:   meta/recipes-core/libxml/libxml2.inc
#	modified:   meta/recipes-core/readline/readline.inc
#	modified:   meta/recipes-core/util-linux/util-linux.inc
#	modified:   meta/recipes-devtools/binutils/binutils.inc
#	modified:   meta/recipes-devtools/bison/bison_2.4.2.bb
#	modified:   meta/recipes-devtools/cmake/cmake.inc
#	modified:   meta/recipes-devtools/elfutils/elfutils_0.148.bb
#	modified:   meta/recipes-devtools/gcc/gcc-common.inc
#	modified:   meta/recipes-devtools/m4/m4_1.4.13.bb
#	modified:   meta/recipes-devtools/opkg/opkg.inc
#	modified:   meta/recipes-devtools/pkgconfig/pkgconfig.inc
#	modified:   meta/recipes-devtools/prelink/prelink_git.bb
#	modified:   meta/recipes-devtools/qemu/qemu.inc
#	modified:   meta/recipes-devtools/qemu/qemu_0.12.4.bb
#	modified:   meta/recipes-devtools/quilt/quilt.inc
#	modified:   meta/recipes-devtools/rpm/rpm_5.1.10.bb
#	modified:   meta/recipes-devtools/tcltk/tcl_8.5.8.bb
#	modified:   meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
#	modified:   meta/recipes-support/curl/curl_7.21.0.bb
#	modified:   meta/recipes-support/gmp/gmp.inc
#	modified:   meta/recipes-support/libmpc/libmpc_0.8.2.bb
#	modified:   meta/recipes-support/libxslt/libxslt_1.1.26.bb
#	modified:   meta/recipes-support/lzo/lzo_2.03.bb
#	modified:   meta/recipes-support/popt/popt_1.16.bb
#

The only really concerning ones were eglibc and gcc.  We can't set =
PARALLEL_MAKE=3D"" for these as these are very large, and builds would =
be very slow.  Packages like popt don't matter as much, you don't save =
that much time by building them with -j16.

Josh and I are trying to figure out how to address these.

Swabber support is coming soon!

- A=

