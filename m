Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.13.1606944038516178033
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 13:20:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=oJ3BY0qK;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: PL8NO9kZfrPwZoZ999Rd1jHGqvPaenB2mZCi/PGFkzfdWU5m3QzsHlvxATpiGWWNfqUXgWmzoN
 UovNrgRTHrdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="170523481"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; 
   d="scan'208";a="170523481"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Dec 2020 13:20:35 -0800
IronPort-SDR: CY5VBdzXQ3vQTKfd/xxKtRSjZkcKj7PJ5YYSWRJ/0zHtzrxbM1+ayvR6qurKcbhP4qYWcTVCC5
 4gCN9IvdxZEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; 
   d="scan'208";a="315483656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga008.fm.intel.com with ESMTP; 02 Dec 2020 13:20:35 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 13:20:35 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 13:20:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 2 Dec 2020 13:20:34 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 2 Dec 2020 13:20:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U+phtH7hRSBjSTbG77OFOOR8aXHwra61DCfkLiq1+TtFGujDpEpGyBJcA3dWrgy3kdqnkX6b3u7XODm5einERdMx3XOyRelbMVLTKyX+5hGdyx/QGsQnZVg7ZDrs05EerzTLafNtRlQP5FyJDHfHf7+UvCe4sZ5jrqUMcsFd+KjbM1WorsB1Q/H9GNgqToDdYc+Be8F2v04jwF+s0KjRTiQ0W92oaTUqOkHeOwT0XlbwhhO6lz3Gh7TsnbVHGB68WFML3UY9HXJGHUKw5aQTYnuNpw4TZ7UVkfTTG1UYdSlqRZrxoYQ1d0XKe2BDvT2kC6nFWpjF/DS17xTf9zoDTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cRczM5TvjzPXLXuJF5JzFVT5tBGIghMoRgYzkfHv2ao=;
 b=bO2ht5IQiMQlCy90MjPl6GEri6BbKaqxiZi2a/rwXWeCQoPPATO/CCiC+3vBqT5LrEtHw/HGcJBJn+4FGJKFBxV2Uto1lTBg8iWb/DWxtcQOwu8ItJIGvE7NofJqmCEMrSLvzA1lx0QdSqH97atA/arPfN4sgwxwHpZB3nVvcMvP5WTBeSKKgfVVN29gpybXBlBgNCIDLNnfgvMaj1vstYxIjsjNkAXMNfiBnEoGfvGgZphSXIaqBW1Vr3GGoaWux011LAqYXmOh1cGlpolpijT9uFfOoPaMYGuiOKv8wEjHWCuyt2rGIYmkUXs11GAH2s8DueS9CXj9H09iiSZuuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cRczM5TvjzPXLXuJF5JzFVT5tBGIghMoRgYzkfHv2ao=;
 b=oJ3BY0qK3ZqqZOrCWR3oEQzVspYc+VJDNmCAZBnnVUdVpTcszOiF5fxbxXjGBxQzuJBdJ7X9o2T/aI26g7Sd6DNO9S/G0+tk+ci9zDvhE6hm2J7Zix4kIFD1R0E89/RffrWFgmoWMS9D59Mwa+d9VNraGi+jvY20p97mkD9dvmw=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB2822.namprd11.prod.outlook.com (2603:10b6:a02:c8::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Wed, 2 Dec
 2020 21:20:31 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca%7]) with mapi id 15.20.3611.031; Wed, 2 Dec 2020
 21:20:31 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.4 (Dunfell 23.0.4) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.4 (Dunfell 23.0.4) is Released
Thread-Index: AdbI4RA2YPDjQKeYRwyFT/Pw4/dfYQ==
Date: Wed, 2 Dec 2020 21:20:31 +0000
Message-ID: <BYAPR11MB2790F271EA74CF135772D4BE88F30@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.101.253.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57f367bc-7281-4066-02fc-08d897081987
x-ms-traffictypediagnostic: BYAPR11MB2822:
x-microsoft-antispam-prvs: <BYAPR11MB28225A56A5A137F33FE1459E88F30@BYAPR11MB2822.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fUujMjtjHjyGJ41FlIrIZ0ARyN19ZkgxGSMvwX1oueXt7WljQEx+Euyy1lkTjDHfkBZ99/4fEUcVssWZGmEkc00axkkUXH9B/gxWH3NZed+uXUYfCbMxPt117EP/H3AQxfB2coIuWRNUayep7FyvAX3yrD6T6Lf92xj+k8pmAxcDGIffxhxX4zasMRh+wEGgGM1vEUUnf8KnkBRNmSAsIYyoqkQzu5eaHIKPEr3fvLifQxVGCdEq2joZTlJJf0M4Nuk9ugz+3UbRCgbkAU9k278KBhrUNd/eDfH/KnX/JRq8QF39v2B8IwfTlj20OGM/p0BfCNykv6WfrUxFQYqioDJVgAxD6FAb1fYS2opncNO0VGaQCn8Yikt1hwbmt+l0wsLmsinRyeGwidb3D/+IMyJwuNQgkOPMw5DSA7Os5Ruot8aVtcM+zwwgX6ba8U3P
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(64756008)(52536014)(186003)(966005)(8676002)(71200400001)(26005)(2906002)(478600001)(8936002)(5660300002)(86362001)(66574015)(33656002)(7696005)(30864003)(76116006)(66556008)(83380400001)(316002)(110136005)(55016002)(6506007)(66476007)(66446008)(66946007)(9686003)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?jGBwvLqDevSB1W5aUE01CAmq0kFcOGUhV7WU1TIk07F2rjR9cDzS44nHd0?=
 =?iso-8859-1?Q?c5ERxXQ23PrY/3OF3F2aZ5Y3PT99ygR24ZPrdGe7H1O2b1sb+jesBUuM86?=
 =?iso-8859-1?Q?m5YFadPqF66SxW0kRaeTDNiTasPLoPotL2O56u65931lVj/Lt2dgNmk+R5?=
 =?iso-8859-1?Q?nShr6dPXyCoVsB8hoMbBxlCprXkSHxSBzXmIw0auA+pSpxEk4kwk7/+z+Q?=
 =?iso-8859-1?Q?q4SBk0dzmiz+PeQOG3DZm/thHBMHgUrSWUgnSr24BG9wnrzu9lzQTLsuEq?=
 =?iso-8859-1?Q?b/2c5eLfVYGftXM+O+N+um4yoUCg3rnmYt/udeRTcNLPal60PpSWZMC9JS?=
 =?iso-8859-1?Q?LZKlgFjSpJKgXXb04zAVpV30f6qlOQjmG0NLGak/a7l/sETfbodN6oyiFD?=
 =?iso-8859-1?Q?SoUDRMNUmTaRs0o27RkViOJSiwABiu7XfoiLZH0xGOFpySKdh8lNfCpomA?=
 =?iso-8859-1?Q?QApFvh5Cx7i2mH+WuWVxOd9qKxLEdDEmYmwm68RqRabGNyCj0WMbSxKJRO?=
 =?iso-8859-1?Q?LnU/3nUMoNvFWgStSTEGbt9A2W/8E2pyDDg5kmlNSTV28vCqXET9kXyAL9?=
 =?iso-8859-1?Q?3BlW+QvpYTQzafxLbsJbDzC6am6minXkZeJzSr2wVzKE9Mv6bxcDpcrsS7?=
 =?iso-8859-1?Q?GWWLjk1l8rzMxwmYV/fFcfnxzG79yzEsbrNt+H0e9VzQejORQ/aSRG1pZQ?=
 =?iso-8859-1?Q?dNVLk5fnBB/KLwmhzIeVRuKTwjOliWyTQvDzoRO9oukvELSO4QBkyN653I?=
 =?iso-8859-1?Q?7G00ucVSKufcFccgp1HtOwFHHtOAoBxcQmkp+W6v8CGkzvMV2sTuDdImxY?=
 =?iso-8859-1?Q?+k/cL+NhmZh/D02hNFjZiL3U4AKjvwwP/j4tTaPVdeq9cvc2h+TUp6Xrg8?=
 =?iso-8859-1?Q?SNDDYC6bidi9r/glcllWHODHZgGbJztTL+Anr9spFaokvf81TatGS62p+J?=
 =?iso-8859-1?Q?D5ZnRX9gCCyo0mmlN2lg+GqBtyyQk9MBGMqDHAqmb2Y4GACRSToJDRa7pa?=
 =?iso-8859-1?Q?CFYaEa+61QXdFSMiM=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f367bc-7281-4066-02fc-08d897081987
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 21:20:31.5267
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +9Ovh7EQ8+IkqWkYDgyiAqhP5Hw70u2XS3Fk/C1LZO72Q37MFyo0xaAAegqDkHG1U7my5gHZ4ZsS421UYvjaI7Swi/9WnyZaNwiNBG9/JQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2822
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.4 (dunfell-23.0.4) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/poky-dunfell-2=
3.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/poky-dunfell-23.0.4.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com


------------------------------------
yocto-3.1.4 Release Notes
------------------------------------
-----------------------------------
 Repositories/Downloads
----------------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.4
Git Revision: 424296bf9bb4bae27febf91bce0118df09ce5fa1
Release Artefact: poky-dunfell-23.0.4
sha: 3ba8101219ed2dbc463d09e93adec3e66d0aef5e5748a344bd17dfe308bb87d5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/poky-dunfell-2=
3.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/poky-dunfell-23.0.4.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.4-dunfell
Git Revision: b885888df67eb5cdb3b82f4f0a07369a449e223b
Release Artefact: oecore-dunfell-23.0.4
sha: 9be34a08319edf3f4d1ab79205f59359fb512ba75b1b79af55baf3bf7b0c51a5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/oecore-dunfell=
-23.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/oecore-dunfell-23.0.4.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.4
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.4
sha: a608e48b80bc34393f6d156e89d555be3680e9621a6b7413c3580c797e80f712
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/meta-mingw-dun=
fell-23.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/meta-mingw-dunfell-23.0.4=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.4
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.4
sha: 64a75eef7ca5f6b7442eb85c36c3b78751e9d82b1e6c0a584cc6c8e0722d0ac5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/meta-gplv2-dun=
fell-23.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/meta-gplv2-dunfell-23.0.4=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: 2020-04.4-dunfell
Git Revision: 89fc9450abefd682266efcbfa031d1ef115ff1a7
Release Artefact: bitbake-dunfell-23.0.4
sha: 97954492344f8706c0fb03f850868e6c262794f92d940d9f326f730e9a4a7f6a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.4/bitbake-dunfel=
l-23.0.4.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.4/bitbake-dunfell-23.0.4.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.4
Git Revision: 8910ac1c7425bf6f3e1309571c620960d4456033

-------------
Contributors
-------------

Thanks to the following people who contributed to this release.

akash hadke
Alexander Kanavin
Andrey Zhizhikin
Anibal Limon
Armin Kuster
Bruce Ashfield
Changqing Li
Charlie Davies
Chee Yang Lee
Chris Laplante
Christian Eggers
De Huo
Denys Zagorui
Diego Santa Cruz
Gratian Crisan
Jacob Kroon
Jose Quaresma
Joshua Watt
Khem Raj
Konrad Weihmann
Lee Chee Yang
Marek Vasut
Mark Jonas
Martin Jansa
Maxime Roussin-B=E9langer
Max Krummenacher
Michael halstead
Michael Gloff
Mingli Yu
Naoki Hayama
Nathan Rossi
Neil Armstrong
Norman Stetter
Otavio Salvador
Randy MacLeod
Ricardo Salveti
Richard Leitner
Richard Purdie
Ross Burton
Sangeeta Jain
Stephen Jolley
Steve Sakoman
Tim Orling
Victor Kamensky
Vineela Tummalapalli
Yann E. MORIN
Yi Zhao
Yoann Congal
Yongxin Liu


---------------
 Known Issues
---------------
*oe-core "bitbake devshell" test failure: The issue has been debugged and i=
dentified that while using devtools,
autotools based projects should pass CONFIGUREOPTS to configure invocation.

*On Ubuntu 20.04 distro, there is oe-core failure in launching dependency e=
xplorer: Fix is available in master
 and is now backported to dunfell.


---------------
Security Fixes
---------------
qemu: fix CVE-2020-24352
python3: fix CVE-2020-27619
python3: whitelist CVE-2020-15523
bison: update to 3.5.4 for CVE-2020-14150
libproxy: fix CVE-2020-26154
freetype: fix CVE-2020-15999, backport from 2.10.4
openssh: whitelist CVE-2014-9278
grub: clean up CVE patches
grub: fix several CVEs in grub 2.04
ruby: fix CVE-2020-25613
sqlite3: fix CVE-2020-13632
sqlite3: fix CVE-2020-13631
sqlite3: fix CVE-2020-13630
sqlite3: fix CVE-2020-13435
sqlite3: fix CVE-2020-13434
bluez5: update to 5.55 to fix CVE-2020-27153
jquery: Upgrade 3.4.1 -> 3.5.0 to fix CVE-2020-11022 and CVE-2020-11023
nasm: update 2.14.02 -> 2.15.03 for CVE fixes
qemu: fix CVE-2019-20175
ffmpeg: fix CVE-2020-12284
grub2: fix CVE-2020-10713
python3: fix CVE-2020-26116
libproxy: fix CVE-2020-25219
bash: fix CVE-2019-18276
libx11: fix CVE-2020-14363
xserver-xorg: fix CVE-2020-14346/14361/14362
qemu : fix CVE-2020-16092


---------------
Fixes
---------------
build-appliance-image: Update to dunfell head revision
python3: add ldconfig rdepends for python3-ctypes
glib-2.0: correct build with latest meson
ptest-runner: Backport patch to fix inappropriate ioctl error
ptest-runner: fix upstream version check
ptest-runner: Bump to 2.4.0
lib/oe/reproducible.py: Fix git HEAD check
lib/oe/reproducible: Fix error when no git HEAD
classes/reproducible: Move to library code
libbsd: Remove BSD-4-Clause from main package
poky.conf: Bump version for 3.1.4 release
binutils: reproducibility: reuse debug-prefix-map for stabs
testimage: print results for interrupted runs
oeqa/core/context: initialize _run_end_time
oeqa/core/context: expose results as variable
systemd: udev SECLABEL{selinux} crash fix
gstreamer1.0: warn the user when something is wrong with GstBufferPool
clutter-gst-3.0: do not call out to host gstreamer plugin scanner
diffstat: add nativesdk to BBCLASSEXTEND
syslinux: add link to upstream discussion in patch
kernel-module-split.bbclass: identify kernel modconf files as configuration=
 files
alsa-utils: Fix license to GPLv2 only
libdnf: Fix license as it contains 'or later' clause
ptest-runner: Fix license as it contains 'or later' clause
dosfstools: add mkfs.vfat to ALTERNATIVE
Documenation: Prepared for the 3.1.4 release
netbase: bump PE to purge bogus hash equivalence from autobuilder
netbase: update SRC_URI to reflect new file name
linux-firmware: upgrade 20200817 -> 20201022
linux-firmware: package nvidia firmware
linux-firmware: package marvel sdio 8997 firmware
linux-firmware: add Amlogic VDEC firmware package
update_udev_hwdb: clean hwdb.bin
qemuboot.bbclass: Fix a typo
meta: fix some unresponsive homepages and bugtracker links
libsdl2: Fix directfb SDL_RenderFillRect
libsdl2: Fix directfb syntax error
Map license names PSF and PSFv2 to PSF-2.0
Add license text for PSF-2.0
insane: add GitLab /archive/ tests
recipes-core/busybox: fixup licensing information
common-licenses: add bzip2-1.0.4
timezone: upgrade to 2020d
sstatesig: Log timestamps for hashequiv in reprodubile builds for do_packag=
e
Revert "lib/oe/patch: fix handling of patches with no header"
lib/oe/patch: GitApplyTree: save 1 echo in commit-msg hook
lib/oe/patch: prevent applying patches without any subject
xcb-proto: backport fix for python gcd function
glib-2.0: fix parsing of slim encoded tzdata
gst-validate: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-python: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-omx: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-rtsp-server: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-vaapi: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-libav: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-ugly: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-bad: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-good: Update 1.16.2 -> Update 1.16.3
gstreamer1.0-plugins-base: Update 1.16.2 -> Update 1.16.3
gstreamer1.0: Update 1.16.2 -> Update 1.16.3
gstreamer1.0: Fix reproducibility issue around libcap
gcc: mitigate the Straight-line Speculation attack
oeqa: Add sync call to command execution
qemu: change TLBs number to 64 in 34Kf mips cpu model
packagegroup-core-tools-debug: Disable for rv32/glibc as well
selftest/virgl: drop the custom 30 sec timeout
siteinfo: Recognize bigendian sh3be and sh4be
siteinfo: Recognize 32bit PPC LE
toolchain-shar-extract.sh: don't print useless info
tune-riscv.inc: use nf suffix also for TUNE_PKGARCH
tune-ep9312.inc: add t suffix for thumb to PACKAGE_EXTRA_ARCHS_tune-ep9312
tune-mips64r6.inc: fix typo in mipsisa64r6-nf
arch-mips.inc: remove duplicated mips64el-o32 from PACKAGE_EXTRA_ARCHS_tune=
-mips64el-o32
arch-armv7a.inc: fix typo
bitbake: tests/fetch: Update upstream master->main branchname transition
uninative: Fix typo in error message
bitbake-bblayers/create: Make the example recipe print its message
oe-build-perf-report: Ensure correct data is shown for multiple branch opti=
ons
scripts/oe-build-perf-report: Allow operation with no buildstats
timezone: update to 2020b
linux-yocto/5.4: update to v5.4.69
linux-yocto/5.4: update to v5.4.68
linux-yocto/5.4: update to v5.4.67
linux-yocto/5.4: fix kprobes build warning
classes/sanity: Bump minimum python version to 3.5
libtools-cross/shadow-sysroot: Use nopackages inherit
glibc: do_stash_locale must not delete files from ${D}
stress-ng: Upgrade 0.11.01 -> 0.11.17
lttng-ust: update to 2.11.1
lttng-tools: update to 2.11.5
lttng-modules: update to 2.11.6
Revert "lttng-modules: backport writeback.h changes from 2.12.x to fix kern=
el 5.4.62+"
bitbake: bitbake: tests/fetch: add unit tests for SRC_URI with spaces in ur=
l
bitbake: bitbake: fetch/git: add support for SRC_URI containing spaces in u=
rl
bitbake: bitbake-user-manual: Add BBFILES_DYNAMIC
perl: fix ptest test count
oeqa/selftest/cases/devtool.py: avoid .pyc race
wic: Add 512 Byte alignment to --offset
wic: Fix error message when reporting invalid offset
wic: Fix --extra-space argument handling
wic: Add --offset argument for partitions
lttng-modules: backport writeback.h changes from 2.12.x to fix kernel 5.4.6=
2+
linux-yocto/5.4: update to v5.4.65
linux-yocto/5.4: update to v5.4.64
linux-yocto/config: netfilter: Enable nat for ipv4 and ipv6
kernel-yocto: add KBUILD_DEFCONFIG search location to failure message
sstate.bbclass: Check file ownership before doing 'touch -a'
openssh: Allow enable/disable of rng-tools recommendation on sshd
sysvinit rc: Use PSPLASH_FIFO_DIR for progress fifo
packagegroup: rrecommend perf also for musl on ARM
ssh-pregen-hostkeys: Add a recipe with pregenerated ssh host keys
oeqa/selftest/containerimage: Update to match assumptions in configuration
oeqa/selftest/incompatible_lib: Fix append usage
oeqa/qemurunner: Increase serial timeout
buildtools-tarball: Fix conflicts with oe-selftest and other tooling
buildtools: Handle generic environment setup injection
meta: add/fix invalid Upstream-Status tags
curl: Change SRC_URI from http to https
packagegroups: remove strace and lttng-tools for rv32/musl
testexport: rename create_tarball method
dropbear/openssh: Lower priority of key generation
xinput-calibrator: change SRC_URI to branch with libinput support
insane: check for missing update-alternatives inherit
insane: Check for feature check variables not being used
sato-screenshot: improve .la removal
alsa-plugins: improve .la removal
cve-update-db-native: remove unused variable
cve-update-db-native: move -journal checking into do_fetch
cve-update-db-native: be less magical about checking whether the cve-check =
class is enabled
bash : inlcude patch 17 & 18
site: Make sys_siglist default to no
buildtools-tarball: Add python3-jinja2
python3-jinja2: Import from meta-oe/meta-python
python3-markupsafe: Import from meta-oe/meta-python
