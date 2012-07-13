Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D80E0027E
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 14:21:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jul 2012 14:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="192408905"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2012 14:21:06 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 13 Jul 2012 14:21:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.29]) with mapi id
	14.01.0355.002; Fri, 13 Jul 2012 14:21:03 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project 1.2.1 release readiness
Thread-Index: Ac1hPWgaeD66wR7KR2ep6z/ssu8XHw==
Date: Fri, 13 Jul 2012 21:21:03 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484AF8B0@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Yocto Project 1.2.1 release readiness
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
X-List-Received-Date: Fri, 13 Jul 2012 21:21:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

Thanks to Scott Garman and great support from everyone else, we are getting=
 ready for 1.2.1 release and we will discuss the release readiness in our t=
echnical team meeting next Tuesday. What we have in this release mainly inc=
ludes:

1. Security update and key bug fixes.=20
2. Validation of BSP compatibility with Yocto Project 1.2 release.
3. Validation of the following distros: Fedora 17, OpenSuse 12.1 and Ubuntu=
 12.04=A0=20

The full test report for this release is available here: https://wiki.yocto=
project.org/wiki/Yocto_1.2.1_Test_Report

Following is the bug fixes and known issues of this release:

  BUG# 	SUMMARY=09
 * 1465 	bitbake cannot fetch local files from SRC_URI when -b is used
 * 1858 	Rootfs creation broken when using package_deb as primary PACKAGE_C=
LASSES with non Debian-OS build system
 * 1892 	Beagleboard doesn't boot
 * 1906 	[QEMU]loses focus in qemux86-64 terminal When I press key [CTRL+L]
 * 1912 	[Beagleboard C4]Segmentation fault when reboot the system with 3.0=
 kernel
 * 1937 	oe-core build of python 2.7.2 is broken
 * 2142 	bitbake not be stoped when force exit hob in early parising recipe=
s after selected a new arch
 * 2173 	[Hob2] Hob needs documentation for the release.
 * 2219 	[yocto-kernel] fail to find bblayers if TOPDIR is not "build"
 * 2297 	fotowall parallel make race
 * 2298 	ncurses failure non-gplv3 build (race issue)
 * 2311 	SRC checksums are not being checked
 * 2329 	Forwarding only sometimes works from qemu connman-based images
 * 2330 	Yocto BSP Tools: add doc and error message for meta-intel BSPs
 * 2334 	[Hob2] BB_NUMBER_THREADS not getting set in Hob?
 * 2335 	[Hob2] The "working" animated gif appears to have mis-ordered imag=
es
 * 2336 	Proxy sanity check message is getting burried
 * 2340 	[Hob2] Top screen (i) doesn't work on Hob in the Build Appliance
 * 2341 	[Hob2] weird 18 second delay when parsing recipes
 * 2352 	Security vulnerability in libpng 1.2.46
 * 2355 	[multilib] lib64 core-sato-sdk build against qemux86 fails at qt4-=
x11-free
 * 2356 	[multilib] fonts corrupted with ipk build for 32bit connman agains=
t qemux86-64
 * 2360 	PACKAGE_ARCHS cause wrong packages installed into image
 * 2362 	pseudo-native failed to compile on opensuse12.1 64bit
 * 2363 	duplicated bash causes do_rootfs failed on Fedora 17
 * 2366 	meta-yocto/recipes-core/netbase/netbase_4.45.bbappend misses ${PV}
 * 2368 	Security vulnerability in openssl 1.0.0h
 * 2371 	[Hob]Handle out of memory exception in HOB
 * 2372 	[eclipse]Can't import or create Bitbake Commander Project if sanit=
y network check fail
 * 2374 	[eglibc] mtrace should be packaged on it's own
 * 2384 	Update distro version warning to not warn about new Ubuntu/Fedora/=
OpenSUSE releases
 * 2385 	live image install doesn't work with mmcblk devices
 * 2411 	Buildhistory multiple commits broken
 * 2437 	Yocto-bsp tool in Eclipse fail to create BSP
 * 2468 	Security vulnerabilities in freetype 2.4.8=20

--------------------
Known Issues
--------------------

The Yocto project uses an implementation of Bugzilla at http://bugzilla.yoc=
toproject.org
to handle bug tracking.  You should always consult that source first when e=
xperiencing
any issue with a Yocto Project release.

The following bugs are known issues in 1.2.1 and are currently scheduled to=
 be fixed in the next Denzil release, 1.2.2:

   BUG# 	SUMMARY
 * 2724 	Denzil fails to build on host distros that use eglibc 2.16

Please take a look and be prepared for the release readiness discussion nex=
t Tuesday. Feel free to respond to this email too if you have any comments.

Thanks,
Song


