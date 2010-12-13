Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F85B4C80050
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 02:41:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 00:41:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="635738137"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 00:41:21 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 16:40:06 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 16:40:06 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 13 Dec 2010 16:40:05 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>, "He, Qing" <qing.he@intel.com>,
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>, "Yu,
	Ke" <ke.yu@intel.com>, "Zhai, Edwin" <edwin.zhai@intel.com>
Date: Mon, 13 Dec 2010 16:40:01 +0800
Thread-Topic: Bug Scrub Result
Thread-Index: AcuaoVSzd8GbEHZ+QyS6vTK5HB9FPQ==
Message-ID: <33AB447FBD802F4E932063B962385B35318F53C6@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {94437A2D-F3D2-4F6B-9C5D-35B188503210}
x-cr-hashedpuzzle: A4OC B55a CMRb D9HL EDHt EZon EaHM Ec0i E5QY FThj GgW7
	G1NQ HWga HzdR InL3
	Kyts; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {94437A2D-F3D2-4F6B-9C5D-35B188503210};
	awBlAC4AeQB1AEAAaQBuAHQAZQBsAC4AYwBvAG0A; Mon,
	13 Dec 2010 08:40:01 GMT;QgB1AGcAIABTAGMAcgB1AGIAIABSAGUAcwB1AGwAdAA=
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Bug Scrub Result
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
X-List-Received-Date: Mon, 13 Dec 2010 08:41:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi distro team,

Saul, Jessica and I have a triage bug meeting to scrub the bugs, and here i=
s the bug list ahead of us. Let's spent some time to reduce the bug number.=
 Thanks for the great effort.

412	nor	Med	All	dexuan.cui@intel.com	ACCE	---	lttv can't be loaded in GUI m=
ode
417	nor	Med	ppc	dexuan.cui@intel.com	ACCE	---	gcc compile in sdk image fail=
ed with qemuppc
555	nor	Med	All	dexuan.cui@intel.com	NEW	---	After untar sdk tarball to /op=
t/poky, My root folder's user info is changed!
239	enh	Med	All	dexuan.cui@intel.com	NEW	---	Toolchain bootstrapping proces=
s overwrites files in the sysroot
506	nor	Med	All	dongxiao.xu@intel.com	ACCE	---	connman-gnome installs a dup=
licate desktop file
110	nor	Med	All	edwin.zhai@intel.com	ACCE	---	Fix sato Gtk+ patches so we c=
an upgrade to a recent gtk+ for DISTRO=3Dpoky
456	nor	Med	x86	edwin.zhai@intel.com	NEW	---	matchbox desktop icons crash
509	nor	Med	All	edwin.zhai@intel.com	NEW	---	Xorg and matchbox-window will =
SegFault when there are too many windows
570	nor	Med	All	edwin.zhai@intel.com	NEW	---	LSB: Desktop Test
571	nor	Med	All	edwin.zhai@intel.com	NEW	---	LSB: Desktop-T2C Tests
488	enh	Med	All	edwin.zhai@intel.com	NEW	---	No audio on qemux86 machine
512	maj	Med	arm	ke.yu@intel.com	NEW	---	Very slow response after login the =
system on arm real hardware board
196	nor	Med	All	ke.yu@intel.com	ACCE	---	[All] No option to download file o=
r set proxy via web browser in poky
336	nor	Med	x86	ke.yu@intel.com	NEW	---	[QT] fotowall display abnormal on e=
Menlow
524	nor	Med	All	ke.yu@intel.com	NEW	---	Crazy Qt packaging
452	enh	Med	All	ke.yu@intel.com	ACCE	---	[Qt] qtdemo warning: missing Qt da=
tabase driver
567	nor	Med	All	ke.yu@intel.com	NEW	---	LSB: Desktop Test - desktop-cairo
569	nor	Med	All	ke.yu@intel.com	NEW	---	LSB: Desktop Test - desktop-qt4
573	nor	Med	All	ke.yu@intel.com	NEW	---	http fetcher cannot handle ';' in t=
he url
355	enh	Med	All	ke.yu@intel.com	NEW	---	Refactor fetch's go() method
529	nor	Med	All	ke.yu@intel.com	NEW	---	fetcher failback fails if trying to=
 access CVS archive and not able to connect
480	nor	Med	All	kevin.tian@intel.com	NEW	---	soft lockup warnings pop up af=
ter idle for a while
485	nor	Med	arm	kevin.tian@intel.com	NEW	---	Some ltp test cases cause bloc=
king
572	maj	Hig	ppc	nitin.a.kamble@intel.com	NEW	---	elfutils-native-0.148 buil=
d fails: ./ld: unrecognized option '--no-add-needed'
384	nor	Med	All	nitin.a.kamble@intel.com	NEW	---	perl has host system conta=
mination
402	nor	Med	All	nitin.a.kamble@intel.com	NEW	---	Parallel build failures fo=
r gcc-cross-intermediate-4.5.0-r10
550	nor	Med	arm	nitin.a.kamble@intel.com	NEW	---	two machines armv4t and ar=
mv5te, toolchain problem.
574	nor	Med	ppc	nitin.a.kamble@intel.com	NEW	---	PPC: poky-image-sdk: gcc m=
isses register save/restore routines
516	enh	Med	All	nitin.a.kamble@intel.com	NEW	---	Change Dynamic Shared Obje=
ct (DSO) linking to be explicit
443	maj	Hig	ppc	qing.he@intel.com	ACCE	---	zypper encounter segfault when s=
tartup with qemuppc
280	nor	Med	All	qing.he@intel.com	ACCE	---	[QT] fail to start fotowall on q=
emux86-64
348	nor	Med	All	qing.he@intel.com	ACCE	---	[QT] fotowall segfaults with "Pa=
inter not active"
489	nor	Med	arm	qing.he@intel.com	NEW	---	[zypper] uname -m and repo arch d=
ifference
490	nor	Med	arm	qing.he@intel.com	NEW	---	[zypper] installation failure on =
arm
491	nor	Med	All	qing.he@intel.com	ACCE	---	[zypper] package removal failure
541	nor	Med	arm	qing.he@intel.com	NEW	---	On poky laverne-4.0, poky-image-s=
ato for the igep0020 does not start X
547	nor	Med	All	qing.he@intel.com	ACCE	---	libmpfr4 clash when installing g=
db cross ipk
439	nor	Med	x86	saul.wold@intel.com	NEW	---	audio mixer on BlackSand is mut=
ed on boot
414	maj	Hig	ppc	scott.a.garman@intel.com	ACCE	---	[PPC] kernel panic when b=
ooting poky-image-sdk-qemuppc of nightly build 20101007-1 through UNFS
154	nor	Med	All	scott.a.garman@intel.com	NEED	---	libtool has incorrect pat=
hs embedded
378	nor	Med	All	scott.a.garman@intel.com	ACCE	---	Add openssh to task-poky-=
lsb
580	nor	Med	All	scott.a.garman@intel.com	ACCE	---	poky-qemu does not make p=
roper use of CROSSPATH (breaking distcc)
353	enh	Med	All	scott.a.garman@intel.com	ACCE	---	Add libtool 2.4 sysroot s=
upport and remove libtool hacks/workarounds

Regards
Ke

