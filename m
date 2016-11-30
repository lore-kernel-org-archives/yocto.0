Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58F05E004E5; Wed, 30 Nov 2016 10:39:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7193 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Nov 2016 10:39:16 PST
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0115.outbound.protection.outlook.com [104.47.0.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A760E00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 10:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=kxiWUNgJfw9NkZ87n5MV+X/ipHKuZVRWXxQr1AYv4FM=;
	b=P4Y56g41VP0qOPtz+51fHolg5VMxFf9He0JFiqVFIp0tZp8gPHAotHyFr36xD46wZ1ItGCmv8ULo9pUNnFR96s4AUQ8EF/teiz5OYpZjGKTPcFrrez2TReD+mXOg4lFnysuBBIERxsRn3Ixe8itxKwwRWaoum/XjXwj24ZI/Af8=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB1877.eurprd07.prod.outlook.com (10.168.10.149) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.5; Wed, 30 Nov 2016 10:04:08 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com ([10.168.10.151]) with
	mapi id 15.01.0761.009; Wed, 30 Nov 2016 10:04:08 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Paul Barker <paul@paulbarker.me.uk>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi] Seeing "dd: failed to open
	'/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg':
	Permission denied" Errors After Update
Thread-Index: AdJKRwyk/aCERKV/TYe2zMb5bFSjTAAGzHxwAAlFPoAAGQ624A==
Date: Wed, 30 Nov 2016 10:04:08 +0000
Message-ID: <DB6PR0701MB187997C23A222A8D559CF146D38C0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <DB6PR0701MB18797532F7B8802879D25D7AD38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<DB6PR0701MB18797C1C59DBAB52F366D5C3D38D0@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<20161129212703.255a4b98@nuc.betafive.co.uk>
In-Reply-To: <20161129212703.255a4b98@nuc.betafive.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-office365-filtering-correlation-id: 0ccd1103-9b34-4f1a-044a-08d4190839cd
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB6PR0701MB1877; 
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB1877;
	7:LIoUBelZlrfSvmAeGlNn3yjxgeja/gUqLG6H5Bcn4JP07lesDiHuvL2atxarfVB/5VFODflMFtE7NPazec5vO5+/tTQAUYMm4prxH+dh5AfZ7MKO12ahdpf+ZE24D0zsU4YP77pRWW0G07RraXH4sP/rdV2MXVkFHQDqbkCLcU4lFaWjHtXrkMBDYcfrBVP0XLNj9ITo67wOyXyJ0pFVIqQiyRocDn071Bmp2NJYl8kWo+iSWs6xVgJB+gzr2xiEArI/Jw9mNxkd8tzFu7kdsBXUkMKe0qdibXTWpaQPqYNwhstZOxpTy5K6z0f8yXuoDZeYE9A+S71v+2SSZsRJyKgZN1hglKqZjK4F/NLcMp5T3IcLY+U/Rz5FfRMMmnFVP6RqN8VIDUcoLAZnJMzXltizFGYTMxU844G3B1wL47cNOVawAl+ByvY/IvB1OvyKf+RkAjgh6hj0CmkuYtiFzA==
x-microsoft-antispam-prvs: <DB6PR0701MB1877605C0466188061E6D7FCD38C0@DB6PR0701MB1877.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(2016111802025)(6043046)(6072148);
	SRVR:DB6PR0701MB1877; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1877; 
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(40764003)(76576001)(8936002)(7696004)(7736002)(7846002)(305945005)(74316002)(2906002)(5001770100001)(5660300001)(2900100001)(33656002)(4326007)(97736004)(81156014)(81166006)(86362001)(8676002)(575784001)(189998001)(9686002)(39450400002)(3660700001)(102836003)(3846002)(6116002)(15650500001)(106356001)(77096006)(345774005)(230783001)(3280700002)(66066001)(229853002)(76176999)(68736007)(54356999)(50986999)(39060400001)(101416001)(38730400001)(2950100002)(105586002)(39410400001)(122556002)(92566002)(6506003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1877;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2016 10:04:08.3360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1877
Cc: 'Yocto Project Discussion' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Seeing "dd: failed to open '/core-image-minimal-raspberrypi3-20161129134515.rootfs.rpi-sdimg': Permission denied" Errors After Update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Nov 2016 18:39:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Obviously I was having some trouble when I created this work area:=20

~/work/yocto-rpi/meta-raspberrypi$ git branch -l
  krogoth
* master
  origin/krogoth
  origon/krogoth
  origonkrogoth

So I delete all those and try:

$ git checkout origin/krogoth=20
warning: refname 'origin/krogoth' is ambiguous.
Switched to branch 'origin/krogoth'

It is not safe to ignore that warning.  What it means is everything went te=
rribly wrong.  Time to delete and try again. =20

~/work/yocto-rpi/meta-raspberrypi$ git checkout -b krogoth --track origin/k=
rogoth=20
Branch krogoth set up to track remote branch krogoth from origin.
Switched to a new branch 'krogoth'
thomasthorne@thorne-ul-dt:~/work/yocto-rpi/meta-raspberrypi$ git status=20
On branch krogoth
Your branch is up-to-date with 'origin/krogoth'.
nothing to commit, working directory clean

That looks more hopeful.=20

$ bitbake core-image-minimal
WARNING: Host distribution "Ubuntu-16.04" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Parsing recipes: 100% |####################################################=
##################| Time: 00:00:34
Parsing of 1940 .bb files complete (0 cached, 1940 parsed). 2493 targets, 3=
47 skipped, 0 masked, 0 errors.
NOTE: There are 1 recipes to be removed from sysroot raspberrypi3, removing=
...
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.1.2"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
meta             =20
meta-poky        =20
meta-yocto-bsp    =3D "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"
meta-oe          =20
meta-multimedia  =20
meta-networking  =20
meta-python       =3D "krogoth:851a064b53dca3b14dd33eaaaca9573b1a36bf0e"
meta-qt5          =3D "HEAD:2b1871f0d139dc3caaa779a32a1931409c245a36"
meta-raspberrypi  =3D "krogoth:a5f9b07a820d50ae5fb62e07306cd4e72d8638a9"
meta-quectel-community =3D "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0c=
f"
meta-rpi          =3D "krogoth:b10b0f1bf64ad7e8b1ab00e0a67f0c6e77ef0a97"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 1645 tasks of which 1595 didn't need to be r=
erun and all succeeded.


Success!  Thank you for your help.  Not sure why I did not spot the odd bra=
nch name. =20

Any ideas why the meta-raspberrypi repository will tab-complete branch name=
s without then correctly linking to the remote branch?  To me there is only=
 one mention of krogoth besides that one I created. =20

$ git branch --list --all --verbose
* krogoth                     a5f9b07 bcm2835: Compile examples correct LDF=
LAGS to avoid HASH errors
  master                      44d41bf raspberrypi3.conf: fix typo for BCM43=
430
  remotes/origin/HEAD         -> origin/master
  remotes/origin/ag-dev       139e7ff .gitignore: Ignore some stuff
  remotes/origin/daisy        946b692 gstreamer1.0-plugins-bad: Build eglgl=
essink for Raspberry Pi
  remotes/origin/danny        1ad98cf README: Modify dependencies for danny=
 branch
  remotes/origin/denzil       34eef2e linux-raspberrypi_3.1.9: Fix typo
  remotes/origin/dizzy        efd760d linux-raspberrypi: faulty branch and =
srcrev for 3.16
  remotes/origin/dora         1c696a9 omxplayer: Install fonts directory in=
 datadir
  remotes/origin/dylan        770b88b sdcard_image-rpi.bbclass: Fix error i=
n conditional test
  remotes/origin/fido         428602b rpi-default-providers: Let users over=
write the default providers
  remotes/origin/jethro       f2cff83 README: Fix documentation to disable =
overscan
  remotes/origin/khem_wayland cc4dc7b userland: Fix build with clang compil=
er
  remotes/origin/krogoth      a5f9b07 bcm2835: Compile examples correct LDF=
LAGS to avoid HASH errors
  remotes/origin/master       44d41bf raspberrypi3.conf: fix typo for BCM43=
430

The main things I that the builds are all working again.  I will try and pa=
y more attention when doing the checkout step in the future. =20

