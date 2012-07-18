Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD55E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 14:20:42 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 14:20:42 -0700
Received: by qaeb19 with SMTP id b19so3104327qae.4
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 14:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=LESuDkvSp4GgCFp2cvc9kKeUdi3DVODnWV21fBzkQ5g=;
	b=VWltsQuXv41K0/9pT1c52PyL2soQqsASuQg/H+qw4SjO2NJVvWAhck0+cfGUpZ+4VJ
	dUXCSndkBeVSXHRXl41WSJO2eshyHc64zYA8oMlmg74m0SSmL6JCX84r9OGviru/mFef
	pPxMSrTAcUoB62P6ZnLt5sJtfpfXfQN1ju+ngOhG79FC4wXcmAAMQO/KnSdUo9OQajq4
	B5hw4j0VDH5ySg0fmZnIa00eCj5GMTajBnaGO61QzS2E9aPFRoJjdKLl/gjuE7+XYaHl
	V2RO556uwnTz5z6xWkvhwg9z0P0QLM87jiIG6F1GM+pXNsTXOPGvJ9fz2+pd5ZRSeWFm
	xZ+A==
MIME-Version: 1.0
Received: by 10.229.135.78 with SMTP id m14mr2330647qct.123.1342646441238;
	Wed, 18 Jul 2012 14:20:41 -0700 (PDT)
Received: by 10.229.135.85 with HTTP; Wed, 18 Jul 2012 14:20:41 -0700 (PDT)
Date: Wed, 18 Jul 2012 14:20:41 -0700
Message-ID: <CAPhnLPAkOCas6usfqDKeHO0P1Ue6SE_=eQ5A+jgZgNEO0pCkxw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQl2xmDbbK+ruFh49eJe+6401HABhxZMXyMWA9vvqm1EbgFZFaIi03uMkBAHW0Vx1S/oZLuJ
Subject: [ANNOUNCEMENT] Yocto 1.2.1 Released
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
X-List-Received-Date: Wed, 18 Jul 2012 21:20:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the point release of the Yocto Project "Denzil"
release.

The full test report for this release is available here:
https://wiki.yoctoproject.org/wiki/Yocto_1.2.1_Test_Report

You can download this release from either the main Yocto Project download
site:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/poky-denzil-7.0.1.tar.bz2

or the kernel.org mirror:

http://mirrors.kernel.org/yocto/yocto/yocto-1.2.1/poky-denzil-7.0.1.tar.bz2

Git tags gpg key information is available at:
http://pgp.mit.edu:11371/pks/lookup?op=vindex&search=0x4C8AF84FCC12440F

Thank you everyone, especially the 1.2.1 maintainer, Scott Garman, for all
their hard work!

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
denzil-7.0.1 Errata
- --------------------

Release Name: eclipse-poky-denzil-7.0.1
Branch:  denzil
Tag:  denzil-7.0.1
Hash:  1d05505e0653aa70f7e38239951b4e19ce0438e1
md5:  e9802851b85bcbe2783aef50eca42067  eclipse-poky-denzil-7.0.1.tar.bz2
Weight: 1.0241x10^3 yoctograms
Download Locations:
   http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/eclipse-poky-denzil-7.0.1.tar.bz2
   http://mirrors.kernel.org/yocto/yocto/yocto-1.2.1/eclipse-poky-denzil-7.0.1.tar.bz2

Release Name: meta-qt3-denzil-7.0.1
Branch:  denzil
Tag:  denzil-7.0.1
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  e50851b264d2fcac9276ba0fef2f1de8  meta-qt3-denzil-7.0.1.tar.bz2
Weight: 24.4988 yoctograms
Download Locations:
   http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/meta-qt3-denzil-7.0.1.tar.bz2
   http://mirrors.kernel.org/yocto/yocto/yocto-1.2.1/meta-qt3-denzil-7.0.1.tar.bz2

Release Name: poky-denzil-7.0.1
Branch:  denzil
Tag:  denzil-7.0.1
Hash:  73cdebf60df225ee10f2eb215935be3b61e1b831
md5:  ef0c859fac1a32b2271d395ed9046fe3  poky-denzil-7.0.1.tar.bz2
Weight: 1.9323.4843x10^4 yoctograms
Download Locations:
   http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/poky-denzil-7.0.1.tar.bz2
   http://mirrors.kernel.org/yocto/yocto/yocto-1.2.1/poky-denzil-7.0.1.tar.bz2




- --------------------
Features
- --------------------

This release consists of 35 bugfixes, including:

   BUG# 	SUMMARY	
 * 1465 	bitbake cannot fetch local files from SRC_URI when -b is used
 * 1858 	Rootfs creation broken when using package_deb as primary
PACKAGE_CLASSES with non
                Debian-OS build system
 * 1892 	Beagleboard doesn't boot
 * 1906 	[QEMU]loses focus in qemux86-64 terminal When I press key [CTRL+L]
 * 1912 	[Beagleboard C4]Segmentation fault when reboot the system
with 3.0 kernel
 * 1937 	oe-core build of python 2.7.2 is broken
 * 2142 	bitbake not be stoped when force exit hob in early parising
recipes after selected
                a new arch
 * 2173 	[Hob2] Hob needs documentation for the release.
 * 2219 	[yocto-kernel] fail to find bblayers if TOPDIR is not "build"
 * 2297 	fotowall parallel make race
 * 2298 	ncurses failure non-gplv3 build (race issue)
 * 2311 	SRC checksums are not being checked
 * 2329 	Forwarding only sometimes works from qemu connman-based images
 * 2330 	Yocto BSP Tools: add doc and error message for meta-intel BSPs
 * 2334 	[Hob2] BB_NUMBER_THREADS not getting set in Hob?
 * 2335 	[Hob2] The "working" animated gif appears to have mis-ordered images
 * 2336 	Proxy sanity check message is getting burried
 * 2340 	[Hob2] Top screen (i) doesn't work on Hob in the Build Appliance
 * 2341 	[Hob2] weird 18 second delay when parsing recipes
 * 2352 	Security vulnerability in libpng 1.2.46
 * 2355 	[multilib] lib64 core-sato-sdk build against qemux86 fails at
qt4-x11-free
 * 2356 	[multilib] fonts corrupted with ipk build for 32bit connman
against qemux86-64
 * 2360 	PACKAGE_ARCHS cause wrong packages installed into image
 * 2362 	pseudo-native failed to compile on opensuse12.1 64bit
 * 2363 	duplicated bash causes do_rootfs failed on Fedora 17
 * 2366 	meta-yocto/recipes-core/netbase/netbase_4.45.bbappend misses ${PV}
 * 2368 	Security vulnerability in openssl 1.0.0h
 * 2371 	[Hob]Handle out of memory exception in HOB
 * 2372 	[eclipse]Can't import or create Bitbake Commander Project if
sanity network check fail
 * 2374 	[eglibc] mtrace should be packaged on it's own
 * 2384 	Update distro version warning to not warn about new
Ubuntu/Fedora/OpenSUSE releases
 * 2385 	live image install doesn't work with mmcblk devices
 * 2411 	Buildhistory multiple commits broken
 * 2437 	Yocto-bsp tool in Eclipse fail to create BSP
 * 2468 	Security vulnerabilities in freetype 2.4.8

- --------------------
Known Issues
- --------------------

The Yocto project uses an implementation of Bugzilla at
http://bugzilla.yoctoproject.org to handle bug tracking.
You should always consult that source first when experiencing any
issue with a Yocto Project release.

The following bugs are known issues in 1.2.1 and are currently
scheduled to be fixed in the next Denzil release,
1.2.2:

   BUG# 	SUMMARY
 * 2724 	Denzil fails to build on host distros that use eglibc 2.16


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQBuKmAAoJEEyK+E/MEkQPl8gH/0ItKfHN4MBE9uDkg3L5u2of
idt8XhyHKUhPmV/I0tedBtWOiewLa3Pwk444qolDi6bt8Q3a9ZL7qMas+orVFUnn
aJWMe2KhPxE1oRnmq9dOpPrXrR7EpRyzG1NYr94rVi5aX6KlQkidVKRQ7ppFl5AL
gSoDCj3yFFAn89oTML53UrUWkhALVlxSpaaWzKGIK5D9oHvyzqW8xdd46rzyxUPF
t3FT75FQOkLxWcT5gpLQshWQqrYaOBFoMKqyZZpqT66kQnvuihPvzBzTNpThv6n6
bc5FiyUtnQm5eYBDrZRc2mr5uoomo/Ap294wRdGfn5eM+bQg/C4afzMvSuLwET4=
=c81H
-----END PGP SIGNATURE-----

