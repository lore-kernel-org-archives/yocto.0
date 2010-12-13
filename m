Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB5244C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 03:21:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2010 01:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="360801206"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 01:21:36 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 17:20:29 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 17:20:28 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 13 Dec 2010 17:20:24 +0800
Thread-Topic: Bug Verify
Thread-Index: AcuapvjZPebRVTFiQUutTzH4OsA7NA==
Message-ID: <33AB447FBD802F4E932063B962385B35318F541B@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {78A5EB91-3186-4B74-882A-F7BAAA3D28BE}
x-cr-hashedpuzzle: Yz0= BZbe CzbK DwTd EOGU Gq5T HKCu H4Ua H7xu Ig6Z IimN
	I4Np I/qU JObI Kazf
	K1Oa; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {78A5EB91-3186-4B74-882A-F7BAAA3D28BE};
	awBlAC4AeQB1AEAAaQBuAHQAZQBsAC4AYwBvAG0A; Mon,
	13 Dec 2010 09:20:24 GMT;QgB1AGcAIABWAGUAcgBpAGYAeQA=
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Bug Verify
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
X-List-Received-Date: Mon, 13 Dec 2010 09:21:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I hate to raise this question, but there is still bunch of bugs that is fix=
ed but not verified. According to the process, it is reporter's responsibil=
ity to verify the bug, so could I ask the reporter's help on this? Process =
is sometime tedious but helpful to quality assurance. Thanks a lot for your=
 effort.

ID	Sev	Pri	Architecture	Reporter	Status	Resolution	Summary
530	nor	Med	All	anna.dushistova@gmail.com	RESO	NOTA	Preferences:clicking "r=
estore defaults", then "OK" leads to the error dialog
534	nor	Med	All	anna.dushistova@gmail.com	RESO	FIXE	Target dropdown is not =
updated automatically and contains empty string as default
537	nor	Med	All	anna.dushistova@gmail.com	RESO	NOTA	cannot build the "Hello=
 World" Yocto SDK project
527	nor	Med	x86_	barrett.heyneman@gmail.com	RESO	WONT	Partial application o=
f user contributed patch
373	nor	Med	All	bruce.ashfield@windriver.com	RESO	FIXE	kernel: allow BSP bo=
ostrapping
421	nor	Med	All	bruce.ashfield@windriver.com	RESO	FIXE	beagleboard: create =
a beagle board BSP
422	nor	Med	All	bruce.ashfield@windriver.com	RESO	FIXE	routerstation: creat=
e initial routerstation pro BSP
423	nor	Med	All	bruce.ashfield@windriver.com	RESO	FIXE	fsl-mpc8315e-rdb: cr=
eate initial BSP
372	nor	Und	All	bruce.ashfield@windriver.com	RESO	FIXE	kernel: out of sync =
trees can cause opaque error messages when forcing branches
399	nor	Und	All	bruce.ashfield@windriver.com	RESO	FIXE	defconfig is not aut=
omatically included
500	nor	Und	All	bruce.ashfield@windriver.com	RESO	FIXE	mpc8315e-rdb: PACKAG=
E_EXTRA_ARCHS is mismatched
501	nor	Und	All	bruce.ashfield@windriver.com	RESO	FIXE	gst-ffmpeg: powerpc =
build errors
538	nor	Med	mips	changhui.liu@windriver.com	RESO	FIXE	Could not display mou=
se cursor on qemumips
155	maj	Med	All	david.c.stewart@intel.com	RESO	FIXE	Need a 5-minute newbie =
user guide
96	maj	Hig	All	david.c.stewart@intel.com	RESO	FIXE	References to purple on =
support page and Poky Handbook
236	nor	Low	x86	dongxiao.xu@intel.com	RESO	WONT	linux-libc-headers do_insta=
ll task failed.
313	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	PDF orphans image captions
315	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	Additional package require=
ments
316	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	QuickStart claims 20 GB of=
 space (I needed 49)
318	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	QuickStart: /dev/fb0 write=
 permission required
532	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	INC_PR is not documented
317	nor	Med	All	dvhart@linux.intel.com	RESO	FIXE	Poky Tarball name doesn't =
match top level directory
582	nor	Und	All	dvhart@linux.intel.com	RESO	FIXE	Cleanup recipes using dead=
 variables
361	nor	Low	All	dvhart@linux.intel.com	RESO	DUPL	'bitbake -c listtasks' doe=
sn't output to stdout
455	nor	Med	All	edwin.zhai@intel.com	RESO	FIXE	Contacts doesn't work well o=
n RC1 image
458	nor	Med	x86_	edwin.zhai@intel.com	RESO	FIXE	No shutdown icon on the des=
ktop for qemux86-64 image
525	nor	Und	All	elizabeth.flanagan@intel.com	RESO	FIXE	quilt: configure fai=
ls when using patch @ 2.6.1.81-5b68
544	nor	Und	All	gary@mlbassoc.com	RESO	FIXE	package-index broken
85	nor	Med	All	gary@mlbassoc.com	RESO	OBSO	Kernel modules not built with ps=
tage packages
533	nor	Und	All	gary@mlbassoc.com	RESO	FIXE	SSTATE_MIRRORS causes meta tree=
 pollution
351	nor	Med	All	gary@mlbassoc.com	RESO	FIXE	Can't build e2fsprogs-native
548	nor	Med	All	gary@mlbassoc.com	RESO	FIXE	bitbake listtasks broken
88	nor	Hig	All	gary@mlbassoc.com	RESO	DUPL	Which host/cross GDB to use?
554	nor	Med	All	gary@mlbassoc.com	RESO	FIXE	Can't build meta-toolchain-sdk =
as libart-lgpl_2.3.21.bb fails on unpack
269	nor	Med	All	jeff.polk@windriver.com	RESO	FIXE	sstate manifests need to =
be ordered
162	maj	Hig	All	jessica.zhang@intel.com	RESO	FIXE	finalize poky build tree =
sysroot directory structure
382	nor	Med	All	jessica.zhang@intel.com	RESO	FIXE	oprofile-viewer connect t=
o oprofile-server takes forever for PPC
493	nor	Med	All	jessica.zhang@intel.com	RESO	FIXE	OProfileServer spawning o=
f oprofilectl failure will show through OProfile-viewer
505	nor	Med	All	jessica.zhang@intel.com	RESO	WONT	exit lttv-gui report erro=
r
190	enh	Med	All	jessica.zhang@intel.com	RESO	FIXE	Setup update capability f=
or Yocto Linux Eclipse Plug-in
518	nor	Und	All	jessica.zhang@intel.com	RESO	NOTA	poky tree mode meta-ide-s=
upport lacking gtk+-2.0 support
129	maj	Hig	All	jessica.zhang@intel.com	RESO	FIXE	Add TCF Remote agent to S=
DK images
137	nor	Med	x86	jiajun.xu@intel.com	RESO	DUPL	Icons broken with qemux86 pok=
y-image-sato image
559	nor	Und	All	josh@linux.intel.com	RESO	WONT	Additional comments field sh=
ould follow existing comments
82	nor	Med	All	josh@linux.intel.com	RESO	FIXE	Dismissing the dialog asking =
for sudo password breaks interaction
114	nor	Med	All	josh@linux.intel.com	RESO	WORK	Don't touch network interfac=
es while booting
116	nor	Med	All	josh@linux.intel.com	RESO	FIXE	NFS rootfs
454	nor	Und	All	josh@linux.intel.com	RESO	FIXE	Sanity test for 32bit librar=
ies is incorrect on Ubuntu/Debian 64bit systems
68	nor	Hig	All	josh@linux.intel.com	RESO	OBSO	Use of uppercase characters i=
n matchbox-keyboard doesn't work and results in matchbox-keyboard crashing =
in N800 image
108	nor	Med	All	josh@linux.intel.com	RESO	FIXE	Possible contention when mul=
tiple package outputs enable
254	nor	Med	All	josh@linux.intel.com	RESO	WONT	Should really use GIO
528	nor	Med	All	josh@linux.intel.com	RESO	FIXE	gcc-cross-canadian package n=
ames should include the target architecture
113	nor	Med	All	josh@linux.intel.com	RESO	FIXE	udev local rules references =
parent sysfs directory
121	nor	Med	All	josh@linux.intel.com	RESO	FIXE	undefined users during boot
83	nor	Hig	All	josh@linux.intel.com	RESO	FIXE	Remove experimental status fr=
om gdb integration
84	nor	Hig	All	josh@linux.intel.com	RESO	WORK	Deploy action cannot be cance=
lled
109	nor	Hig	All	josh@linux.intel.com	RESO	FIXE	Rootfs dependency failure do=
es not cause error
122	nor	Hig	All	josh@linux.intel.com	RESO	DUPL	oprofile not being included =
in SDK images
496	nor	Med	All	ke.yu@intel.com	RESO	INVA	[QT] I18N issue: qtdemo webbrowse=
r can not display Chinese page correctly
475	nor	Med	x86	kunwei.tian@intel.com	RESO	NOTA	[qemux86]fail to reboot
367	nor	Med	x86_	kunwei.tian@intel.com	RESO	NOTA	[qemu-x86-64-sato]connecti=
on refused when run ssh command
514	nor	Med	All	lei.mei@intel.com	RESO	FIXE	some packages were removed but =
also exist in distro_tracking_fields.inc
81	maj	Med	All	levant.tinaz@gmail.com	RESO	FIXE	SRC_URI with http or ftp pa=
th having "/download" at end fails to retrieve source
425	nor	Med	All	lianhao.lu@intel.com	RESO	FIXE	libust is missing in meta-to=
olchain & meta-toolchain-sdk
556	nor	Med	ppc	lianhao.lu@intel.com	RESO	DUPL	do_unpack failed for libart-=
lgpl_2.3.21.bb for MACHINE qemuppc
133	nor	Med	All	liping.ke@intel.com	RESO	FIXE	tools (oprofile viewer/client=
) does not match with tools (oprofile) server
344	maj	Hig	All	liping.ke@intel.com	RESO	FIXE	qemu command is often locked =
recently because tap0 still exists after successfully shutdown
230	nor	Med	All	liping.ke@intel.com	RESO	FIXE	runqemu scripts break when mo=
re than one tun/tap device is created
232	nor	Med	All	liping.ke@intel.com	RESO	FIXE	Give better error prompt when=
 user don't use root privilege to run poky-qemu-ifup
460	enh	Med	All	liping.ke@intel.com	RESO	OBSO	Include qemu images into sdk =
tar ball
546	nor	Med	All	liping.ke@intel.com	RESO	DUPL	libreadlines clash when insta=
lling gdb cross ipk
345	maj	Hig	All	liping.ke@intel.com	RESO	FIXE	rsync is missing in ppc qemu
419	maj	Hig	All	liping.ke@intel.com	RESO	FIXE	Meet internal error when buil=
ding c++ project sudoku in arm-qemu target
334	nor	Med	All	liping.ke@intel.com	RESO	FIXE	qemu-arm fails whilst buildin=
g locales (Ubuntu 10.04 )
341	nor	Med	All	liping.ke@intel.com	RESO	OBSO	Two gtk libs are not found (a=
rm)
343	maj	Hig	All	liping.ke@intel.com	RESO	FIXE	unfs-qemu ppc fails to boot
39	nor	Hig	All	manuel.teira@telefonica.net	RESO	FIXE	oh-puzzles owl menu do=
esn't show merged menus
70	nor	med	All	manuel.teira@telefonica.net	RESO	FIXE	epdfview recipe for Po=
ky
360	maj	Hig	All	mark.hatle@windriver.com	RESO	FIXE	When switching to the pa=
ckage_deb format, the system errors early
337	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	SUMMARY field is not aut=
omatically populated by the DESCRIPTION field
383	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	Log files are generated =
in the build.py exec_func
331	enh	Low	All	mark.hatle@windriver.com	RESO	FIXE	Ensure python output fro=
m tasks is always saved to log files
200	maj	Und	All	mark.hatle@windriver.com	RESO	FIXE	module-init-tools-cross =
version 3.12 segfaults in depmod.
240	maj	Und	All	mark.hatle@windriver.com	RESO	FIXE	libproxy fails to build =
on x86_64 host
482	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	syslog startup script is=
 broken
483	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	NFS server initscript do=
es not work
484	nor	Med	All	mark.hatle@windriver.com	RESO	NOTA	ps / dbus / hal uid prob=
lem
209	maj	Hig	All	mark.hatle@windriver.com	RESO	FIXE	prelink-native failures =
to build, due to missing libiberty from binutils
204	nor	Med	All	mark.hatle@windriver.com	RESO	WORK	gdb has apparently host-=
contamination
245	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	binutils missing the poi=
nt host directories patch
385	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	python has host system c=
ontamination
404	cri	Hig	x86	mark.hatle@windriver.com	RESO	FIXE	RPM segfaults on target
374	maj	Hig	All	mark.hatle@windriver.com	RESO	FIXE	binutils and gcc do not =
have the poison patch enabled
379	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	siteconfig can fail if t=
he directory already exists
381	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	augeas package fails to =
build if readline is not present
375	enh	Med	All	mark.hatle@windriver.com	RESO	FIXE	It can be difficult to f=
ind the log files
376	enh	Med	All	mark.hatle@windriver.com	RESO	FIXE	Update the insane bbclas=
s to search for bad include and library paths
356	nor	Low	All	mark.hatle@windriver.com	RESO	FIXE	upstream rpm location is=
 changing
281	enh	Low	All	mark.hatle@windriver.com	RESO	FIXE	Cleanup userspace packag=
es description/summary
403	nor	Und	All	mark.hatle@windriver.com	RESO	FIXE	the perform_packagecopy =
function is mangling file permissions
386	nor	Med	All	mark.hatle@windriver.com	RESO	FIXE	qemugl has host system c=
ontamination issues
219	nor	Low	All	mark.hatle@windriver.com	RESO	FIXE	dpkg does not build prop=
erly
34	nor	Low	x86	matt.hoosier@gmail.com	RESO	WORK	String collation failing
292	nor	Und	All	nitin.a.kamble@intel.com	RESO	DUPL	qemu-ppc is failing to e=
xecute properly
226	nor	Med	All	nitin.a.kamble@intel.com	RESO	FIXE	qemu binaries break afte=
r this commit : 940c2b470af70b40fc6506823cd9c43e9b621075
214	nor	Und	arm	nitin.a.kamble@intel.com	RESO	FIXE	oprofile recipe is faili=
ng to build on arm
218	nor	Hig	All	nitin.a.kamble@intel.com	RESO	FIXE	qemu-native does not gen=
erate qemu-i386 binary
305	nor	Med	All	nitin.a.kamble@intel.com	RESO	FIXE	qemu-native does not pro=
vide qemu-mipsel binary
53	nor	Hig	All	pmiscml@gmail.com	RESO	FIXE	psplash: Do correct math when ce=
ntering logo
275	nor	Low	All	pokybugbot@zenlinux.com	RESO	NOTA	Bug Process Test Bug One
487	maj	Hig	All	qing.he@intel.com	RESO	FIXE	fg/bg of bash not available
350	enh	Med	All	Richard.Purdie@intel.com	RESO	FIXE	Clean up poky-doc-tools
400	nor	Und	All	Richard.Purdie@intel.com	RESO	FIXE	qt4-tools-native compile=
 failure
285	enh	Low	All	Richard.Purdie@intel.com	RESO	FIXE	Improve overlay appendin=
g to FILESPATH syntax
217	nor	Und	ppc	Richard.Purdie@intel.com	RESO	FIXE	prelink is failing at do=
_rootfs time for the qemuppc machine
123	nor	Med	All	Richard.Purdie@intel.com	RESO	FIXE	Wrong qemu binary is use=
d if qemu-native isn't built
221	enh	Und	All	Richard.Purdie@intel.com	RESO	FIXE	opkg should use /var/lib=
/opkg, not /usr/lib/opkg
389	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	Use a more common lockfi=
le utility for poky's qemu scripts
391	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	Create a script to gener=
ate a "bank" of tap devices for Poky QEMU sessions to use
392	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	Add psuedo-native, qemu-=
helper-native, and unfs-server-native to qemu-native DEPENDS
393	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	Allow running of multipl=
e QEMU nfs instances
415	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	poky-qemu does not accep=
t a ROOTFS argument of poky-image-xyz
535	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	poky-qemu does not detec=
t MACHINE correctly from yocto 0.9 release images
536	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	SDK install of poky-qemu=
 will not run with yocto 0.9 release images unless filesystem type is expli=
citly given
568	nor	Med	All	scott.a.garman@intel.com	RESO	FIXE	poky-qemu fails under co=
mmon usage scenario
294	nor	Low	All	scott.a.garman@intel.com	RESO	FIXE	runqemu script can fail =
to shut down tap devices
104	cri	Hig	All	susie.li@intel.com	RESO	FIXE	Yocto Linux 0.9 feature list n=
eed be updated
396	nor	Hig	All	tom.zanussi@intel.com	RESO	FIXE	Make linux-wrs the default =
kernel for emenlow
311	nor	Med	x86	tom.zanussi@intel.com	RESO	FIXE	fixes for perf
450	nor	Med	All	tom.zanussi@intel.com	RESO	FIXE	[atom-pc] Undefined video m=
ode message on boot
451	nor	Med	All	tom.zanussi@intel.com	RESO	NOTA	poky-image-sdk-live-emenlow=
 'install' fails with nonsensical partition size
531	nor	Med	All	tom_rini@mentor.com	RESO	FIXE	'rm_work' is run much later t=
han expected, when INHERIT'ed
575	nor	Med	arm	wd@denx.de	RESO	DUPL	mtd-utils_1.4.1 fails to build
473	nor	Med	All	xianchao.zhang@windriver.com	RESO	DUPL	shared libraries lib=
tasn1.so loading error
359	nor	Low	x86	xianchao.zhang@windriver.com	RESO	INVA	Some icons broken in=
 qemux86 images
552	nor	Med	othe	xianchao.zhang@windriver.com	RESO	FIXE	autobuild missing t=
he non-x86 realboard images
215	nor	Low	All	yosoy@danieldiaz.org	RESO	FIXE	netbase 4.41 not available i=
n Debian mirrors

Regards
Ke

