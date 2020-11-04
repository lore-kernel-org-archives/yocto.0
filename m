Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web12.7072.1604452791880713664
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 17:19:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=qZye1XS6;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: 5GQE8+OGwI/s15MByLfj58tUgcnamBX2ZAtZaqISJrFNouUttBONwvqIcUbqXf04bdmJrHduV5
 mg0l/E0hO/hA==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="169258692"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
   d="scan'208";a="169258692"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2020 17:19:49 -0800
IronPort-SDR: GPsubGF6aSyQVqNrSScyGZaGpdMZd4i+FulVp+CHEXxABfOHPi78usjLsWdCGBQ6o4t4QJQhb+
 1REs7tHaTlNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
   d="scan'208";a="352508630"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by orsmga008.jf.intel.com with ESMTP; 03 Nov 2020 17:19:49 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 17:19:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Nov 2020 17:19:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 3 Nov 2020 17:19:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 3 Nov 2020 17:19:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gargAtrXIkkapa51vn/MpOiLy9nZ2D/7Z8MW6NhUvRuSOZKJNzDiIYuWspiYYYkb43U1Zcdd9d6C5GdhuKcwCP5pc4BKN8SmqRxISlonvt0w96YNaHPxzQ4q4Opy5GXg2LdfDaZ0UIpAcHWfQaDNDgFBB1t8IHRWxGg0/YLQVYcN6GUdZoumw5ALdx9TKXxDeJIuKjoM4SYnBmC1wcz03x4TDPpEfEr9Bl5Ec6rTL/DDWuKowjI+Z47PnVvmUqQkX7mwtAvHFPvRTpbZwGsXGMIZyjV/iKFLIDeSu1c1wpsni6Wpv6pSn6NnWdQfxOMCEym1pC2nqwr7iCJSUspZZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/BIsRaJtVq1zoJkL4bqinMH8OoflTLk43rMMEnYS+E=;
 b=HyBg6ewP7/24K3ucLlN6oHiNYXihEOwR1Cg8tNGMQFegEtL0wblESFdqvAJovwEUzZfYwJffFS5CyToAeSISPm/5Ki2Bz2sGaZNQBUFt8+dtIM4U13vahKvmitO2TgqnTvTClpJCukGh4kzT6e3yUMvD0T4Vld0sg7N1PtVyLNCl8LK6pvcwnEFU18t0VaxCpZ8L1hqdovD3slTclY5W7qFVHjKuZlBJgik4NxWfQhsxeEfIh1y2ACJAFu+DiOJdYgryLWZGlIGSt39yF/ZMLKydOMNNeJ31XhM2O8WXGplT8tBZJ9gT3HdbUlr5tqlM8Av1LmOcNbwq9/5j9Fie9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/BIsRaJtVq1zoJkL4bqinMH8OoflTLk43rMMEnYS+E=;
 b=qZye1XS6b7P/sGRmmpmVEkmD1qtdyPuvipb7VoXmd2x8IjIaJPe4iHI85NE9qkHlsOWEXBfYq6H/R+1xZNIu5WGSiTrileyNWDtJUNKDhX/y03Lj6BDHF2gNSXmk3puTVDdHCQoIePZMFPxhBZZbvXWZ1+kG692T+TxZr4oHchQ=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB2758.namprd11.prod.outlook.com (2603:10b6:a02:c9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29; Wed, 4 Nov
 2020 01:19:47 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::5924:cbcf:3653:a9ca%7]) with mapi id 15.20.3499.029; Wed, 4 Nov 2020
 01:19:47 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.2 (Gatesgarth 24.0.0) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2 (Gatesgarth 24.0.0) is Released
Thread-Index: AdayO42DTzl2KxkXTwifVJQ1tJDV/Q==
Date: Wed, 4 Nov 2020 01:19:47 +0000
Message-ID: <BYAPR11MB27901E30D7202ECF5834B29088EF0@BYAPR11MB2790.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 67c54d9e-ff0a-45b7-cda5-08d8805fb80c
x-ms-traffictypediagnostic: BYAPR11MB2758:
x-microsoft-antispam-prvs: <BYAPR11MB2758059F5D4FF7EDC0C0349D88EF0@BYAPR11MB2758.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: drZ5O2Aoj72P76TyOOg73MMYA8qqbVgt4pz9AWre4EZzp+T/PuUL4xfdRvakxMUI8e5qtRmXesqF+HEJw377RhPmv/S5yUtkViCcGRdfp6TLLhu6hvUrJGBZ/FAA/VTAOmpRYhxN3Cjo7sZ0MGa/QSol27i/oBj8qYEQRbehJjOJOaFqeh7cKQU/Q04p5yYNXTdEqzSqNzojQP84MrkpXqU9pRajwtbIUVTPwdQHqU1+VvO9ZZVU1aoJwoAAWIwfvJViOVsEYLgr7XPvKjkG+ME1G8EG1GVyMp0dnBkmYmPyK0WsDSMu4+ez6ulqok8yi75eUUif0hkTa39NhvLEcoutAQ2wVQilLHs8cpDiv4vVr+SfGcs02Hg0i4+8M48o8PakhHADKJBrvMDohm8LnSWF2o4labywxLh34EjZRAqofRXXhdC85/x39c6Sk7D7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(6506007)(5660300002)(26005)(64756008)(66446008)(76116006)(186003)(33656002)(30864003)(8676002)(66476007)(66556008)(52536014)(8936002)(66946007)(71200400001)(86362001)(83380400001)(966005)(478600001)(2906002)(9686003)(110136005)(55016002)(316002)(66574015)(7696005)(491001)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 0GfN0BoTKV5vQEo9uiZ/r4+1nYPqYHvHHZ9rGy9u4yXKWus6CdoA3pQnoe/wEGkdLxGGWq/UmrIzhatIv5/5ythKIcDw/lxoMdmCuTQaoFzGbN7vLxOGS8r/eRJn65GrZ9+Z55YEnmwW+4OrNH9oTxb4UQFRsrudZm5pQX2QLYM50Xz6FlfbjdxEKUFYwEQawJXDOq2kwDLenSYwWIYDpsflNH1EWEIV5xxk4jrqpBK+VYBIwRuik7FJ4Gl1PmzKDX47JOKib/wAVSUfoWXY6JC0HCdeNu0aXAwf7aIB6MRl/Q8OdTFkBV3M40roY84EZmfW/3BlXFAbi+apOiyP0jzz0qRty73VRoQEXpkNarQ5xtlx5zeMNSNhShr1KX/9OOUVHO+WsLiHnUO1gkdd5beb9L2lxhL9dkhgWBy/F89QVJJaL+RvzMgRRrVQsxKMOYHdeCxgHUL8X6xTohjtk6YIYpTnoIt0wPqNXLwn3yncO2Q2WdsnlH+cp2xCP/BdjWRT6xzfa0dS5XntdOx40aW8lYQctvKDsjmomqt0QZD4/owLJxkP5TVREbltNXIArGycWiTzxwMeNIoOuuj8nDGZ3v7MiVAM0iClItZ0Pgcjne0gVhFAgca/+8WecD7Lu6Je9TueHri7c+J28SgfAA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c54d9e-ff0a-45b7-cda5-08d8805fb80c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2020 01:19:47.0260
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CZ0dVnbZ5k/B1Dw7YCiXd6U8R5A3h+Vk39YS/TA5RsglMkkhSwvVZ6z/U2Oybq5Ietmy6BapShZVoyn3K1RYu6x1CbdmZdCa1v9+v96kJL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2758
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.2 (gatesgarth-24.0.0) Releas=
e is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/poky-gatesgarth-=
24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/poky-gatesgarth-24.0.0.tar.=
bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

--------------------------
yocto-3.2 Release Notes
--------------------------

--------------------------
 Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: gatesgarth
Tag: yocto-3.2
Git Revision: 5d75168a13d00253460020e536b2a87833ec67d2
Release Artefact: poky-gatesgarth-24.0.0
sha: fcc8598b398b454782db8c98e225e5a9ec3ff630f30b75c1a695fd0279700780
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/poky-gatesgarth-=
24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/poky-gatesgarth-24.0.0.tar.=
bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: gatesgarth
Tag: 2020-10-gatesgarth
Git Revision: d3114ca369792201a5316c1ede29eb72f0868d35
Release Artefact: oecore-gatesgarth-24.0.0
sha: 33f202d1414662f55f33fd675b01d727c9d94f9352aa851582dd633d9a583874
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/oecore-gatesgart=
h-24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/oecore-gatesgarth-24.0.0.ta=
r.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: gatesgarth
Tag: yocto-3.2
Git Revision: d2809d7c93bdb46014e1f8b3b0a4f42030078905
Release Artefact: meta-mingw-gatesgarth-24.0.0
sha: 2b13ae27fd8faaf8826122d50bdbe8c729535193eeffebc25f95f0550ff6093b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/meta-mingw-gates=
garth-24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/meta-mingw-gatesgarth-24.0.=
0.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: gatesgarth
Tag: yocto-3.2
Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
Release Artefact: meta-gplv2-gatesgarth-24.0.0
sha: 3910b54110319557ea98d95c09d5466ec827a7406213cef3bf3a3d588dca3def
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/meta-gplv2-gates=
garth-24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/meta-gplv2-gatesgarth-24.0.=
0.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: gatesgarth
Tag: 2020-10-gatesgarth
Git Revision: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
Release Artefact: bitbake-gatesgarth-24.0.0
sha: b01aa8f31e7b6fd267424f085d80fba46c9a8ead30a3aa5d9c944ad2bd053412
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2/bitbake-gatesgar=
th-24.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2/bitbake-gatesgarth-24.0.0.t=
ar.bz2

--------------
Contributors
--------------

Thanks to the following people who contributed to this release:

Adrian Bunk
Adrian Freihofer
Akira Shibakawa
Alejandro del Castillo
Alejandro Hernandez
Alexander Kanavin
Alexandru N. Onea
Alex Kiernan
Alistair Francis
Anatol Belski
Andreas M=FCller
Andrei Gherzan
Andrej Valek
Andrew Geissler
Andrey Zhizhikin
An=EDbal Lim=F3n
Anton Eliasson
Anuj Mittal
Armin Kuster
Arthur She
Bart=B3omiej Burdukiewicz
Bartosz Golaszewski
Benjamin Fair
Bjarne Michelsen
Bruce Ashfield
Chandana kalluri
Changhyeok Bae
Changqing Li
Charlie Davies
Chen Qi
Chris Laplante
Christian Eggers
Christophe GUIBOUT
Daisuke Yamane
Damian Wrobel
Dan Callaghan
Daniel Ammann
Daniel D=EDaz
Daniel Gomez
Daniel Klauer
Daniel McGregor
David Khouya
David Reyna
De Huo
Denys Dmytriyenko
Diego Rondini
Diego Sueiro
Dmitry Baryshkov
Domarys Correa
Douglas Royds
Drew Moseley
Fabio Berton
Frazer Clews
Fredrik Gustafsson
Geoff Parker
Gregor Zatko
Guillaume Champagne
Haiqing Bai
Hannu Lounento
He Zhe
Hongxu Jia
Jacob Kroon
Jan Luebbe
Jan Vermaete
Jan-Simon Moeller
Jason Wessel
Jean-Francois Dagenais
Jens Rehsack
Jeremy Puhlman
Joe Slater
Jonathan Richardson
Jon Mason
Joshua Watt
Junling Zheng
Kai Kang
Kamil Dziezyk
Kevin Hao
Khairul Rohaizzat Jamaluddin
Khasim Mohammed
Khem Raj
Konrad Weihmann
Kurt Kiefer
Lee Chee Yang
Leif Middelschulte
Lili Li
Li Wang
Liwei Song
Marco Felsch
Marek Vasut
Mark Hatle
Mark Jonas
Mark Morton
Martin Jansa
Matt Madison
Mauro Queir=F3s
Maxime Roussin-B=E9langer
Max Krummenacher
Michael Gloff
Michael Ho
Michael Thalmeier
Michael Tretter
Mikko Rapeli
Ming Liu
Mingde (Matthew) Zeng
Mingli Yu
Naoki Hayama
Naoto Yamaguchi
Nathan Rossi
Naveen Saini
Neil Armstrong
Nicolas Dechesne
Norman Stetter
Oleksandr Kravchuk
Oleksandr Popovych
Otavio Salvador
Ovidiu Panait
Patrick Vacek
Paul Barker
Paul Eggleton
Peter A. Bigot
Peter Bergin
Peter Kjellerstedt
Petr Vorel
Pierre-Jean Texier
Quentin Schulz
Rahul Kumar
Ralph Siemsen
Randy MacLeod
Rasmus Villemoes
Ricardo Ribalda Delgado
Ricardo Salveti
Richard Leitner
Richard Purdie
Robert P. J. Day
Robert Yang
Roland Hieber
Ross Burton
Ryan Rowe
Sakib Sajal
Samuli Piippo
Saul Wold
Sourabh Banerjee
Stacy Gaikovaia
Stefan Agner
Stephen Jolley
Steve Sakoman
Sumit Garg
Tanu Kaskinen
Taras Kondratiuk
Teoh Jay Shen
Timon Ulrich
Tim Orling
Trevor Gamblin
Tuomas Salokanto
Tyler Hicks
Usama Arif
Valentin Longchamp
Vasyl Vavrychuk
Victor Kamensky
Vijai Kumar K
Vineela Tummalapalli
Vyacheslav Yurkov
Wang Mingyu
Wenlin Kang
Yanfei Xu
Yann Dirson
Yeoh Ee Peng
Yi Zhao
Yoann Congal
Yongxin Liu
Yuki Hoshino
Zang Ruochen
Zhang Qiang
Zhaolong Zhang
Zheng Ruoqin
Zhixiong Chi
Zoltan Boszormenyi


-----------------------------
New Features / Enhancements
-----------------------------
* Linux kernel 5.8, gcc 10.2, glibc 2.32 and ~245 other recipe upgrades
* New recipes: boost-build-native, dhcpcd, go-binary-native, help2man, igt-=
gpu-tools, init-system-helpers, kea, libhandy, libmodulemd, libuv, libva-in=
itial, log4cplus, python3-cython, python3-dbusmock, python3-pyparsing
* Minimum host gcc version is now 6
* Replaced obsolete dhcp with dhcpcd (client) and kea (server)
* New baremetal-image class for baremetal applications or an RTOS
* Enabled pseudo path filtering for improved reliability and slightly less =
overhead in fakeroot environment
* New go-binary-native providing binary Go (faster bootstrap and supports A=
RM hosts)
* New go-mod class for `go mod` support
* Extended recipes to native: libexif, libnl
* Architecture / machine-specific enhancements:
 - Add tune files for cortexa55 and cortexa73-cortexa53
 - Add tune files for cortexa57 (now default for qemuarm64)
 - Add tune files for cortex-m0 and cortex-m0plus
 - armv8/tunes: Set TUNE_PKGARCH_64 based on ARMPKGARCH
 - arch-armv8-2a.inc: add tune include for armv8.2a
 - tune-cortexa57-cortexa53.inc: add CRC and set march
 - qemumips: change to 64 TLBs in CPU model which improves test performance=
 by 40%
 - siteinfo: Recognize 32bit PPC LE
 - armv8/tunes: Add tunes for supported ARMv8a cores
 - armv8/tunes: Add tunes for supported ARMv8.2a cores
 - libucontext: Recognise riscv32 architecture
 - dpkg: Add riscv32 CPU support
 - lttng-tools & lttng-ust now work on riscv64
 - linux-yocto/beaglebone: Switch to sdhci-omap driver
 - libucontext: Bring in mips/mips64 support
 - packagegroup-core-tools-profile: bring in perf for musl on ARM
* Kernel-related changes:
 - Allow dangling KERNEL_FEATURES
 - Enhanced configuration queue analysis capabilities
 - Allow promotion of configuration warnings to errors
 - Add KBUILD_DEFCONFIG search location to failure message
 - kernel-yocto: split meta data gathering into patch and config phases to =
allow patching of in-tree configuration
 - netfilter: Enable nat for ipv4 and ipv6
* bitbake improvements:
 - BBMASK can now be set per configuration in multiconfig
 - Support \ in file:// URLs in SRC_URI
 - Support spaces in git:// URLs in SRC_URI
 - Added an inverse mode to BBFILES_DYNAMIC (! prefix) to e.g. backfill rec=
ipes for a missing layer
 - deltask statement can now take multiple task names
 - Significant improvement in get_file_layer() performance (as used by bitb=
ake-layers and buildhistory)
 - When a shell function fails, print a backtrace with the function's origi=
nal metadata location
 - Filename/line number information now emitted for shell functions (e.g. i=
n run.* files)
 - Prefix the log data with pid/time information
 - Note when commands complete in logs
 - Show command exceptions in the server log as well
 - perforce: add basic progress handler
 - perforce: add local path handling SRC_URI options
 - New bb.event.RecipePostKeyExpansion event (used to support multilib)
 - Improved performance with large numbers of files in SRC_URI
 - Several refactoring efforts aimed at improving startup performance and r=
eliability
* wic image creator improvements:
 - rootfs: added --change-directory argument (similar to tar -C)
 - rootfs: do not error out if path in --exclude-path does not exist to mak=
e it easier to reuse .wks among different projects
 - rootfs: added an optional destination argument to --include-path
 - Added --offset argument for partitions
 - bootimg-efi: added support for IMAGE_BOOT_FILES
 - bootimg-efi: added IMAGE_EFI_BOOT_FILES variable to separate bootimg-efi=
 and bootimg-partition
 - Added 512-byte (i.e. sector) alignment to --offset when s/S suffix is us=
ed
 - image_types: declare support for wic.zst
* Image related changes:
 - New image-artifact-names class to centralise image artifact naming varia=
ble defaults
 - New IMAGE_LOG_CHECK_EXCLUDES to allow excluding false-positive messages =
in log_check processing
 - New IMAGE_LOCALES_ARCHIVE variable prevent locale archive creation
* qemu/runqemu enhancements:
 - qemu: enable pass-through GL acceleration when 'opengl' is in DISTRO_FEA=
TURES
 - runqemu: add QB_ROOTFS_EXTRA_OPT parameter
 - runqemu: If using a vmtype image do not add the -no-reboot flag
 - qemuboot: Add QB_RNG variable to allow overriding random number generati=
on
* SDK related changes:
 - packagegroup-go-sdk-target: Add go to packagegroup
 - oe-publish-sdk: add --keep-orig option
 - New ESDK_MANIFEST_EXCLUDES variable to exclude configuration files from =
sdk-conf-manifest in extensible SDK
 - Extended recipes to nativesdk: bmap-tools, btrfs-tools, cpio, dosfstools=
, glib-networking, kmod, libexif, libnl, librsvg, libsoup-2.4, parted, pbzi=
p2, serf, subversion, tiff
* Name of multiconfig now added to BUILDCFG_HEADER when multiconfig is acti=
ve (as printed at build startup)
* New PACKAGECONFIG options in apr-util, curl, file, gdk-pixbuf, glibc, gst=
reamer1.0-plugins-bad, igt-gpu-tools, iputils, kmod, libva, mesa, net-tools=
, openssh, perf, qemu, rpm, weston, weston-init
* Added ability to inject "minidebuginfo" into packaged binaries (PACKAGE_M=
INIDEBUGINFO =3D "1")
* libva: enabled build without opengl in DISTRO_FEATURES
* Add ability to enable VAAPI support in mesa (via new libva-initial bootst=
rap recipe)
* u-boot: introduce UBOOT_INITIAL_ENV
* u-boot: support merging .cfg files for UBOOT_CONFIG
* buildhistory improvements:
 - Add simplistic file move detection
 - Record PACKAGECONFIG
 - Record SRC_URI
* Packaging changes:
 - systemd: split systemd specific udev rules into its own package
 - linux-firmware: package nvidia firmware
 - linux-firmware: package marvel sdio 8997 firmware
 - linux-firmware: add ice for Intel E800 series driver
 - linux-firmware: add ibt-20 package
 - linux-firmware: add qcom-venus-{5.2,5.4} packages
 - linux-firmware: add Amlogic VDEC firmware package
 - iptables: split iptables-apply to its own package
 - timezone: include leap second data in tzdata-core
* weston-init improvements:
 - Enable RDP screen sharing
 - Allow setting idle time to 0 for kiosk usage / debugging
 - Add environment file support for systemd unit file
 - Explicitly select drm/fbdev backends for qemu machines (drm by default f=
or qemuarm64/qemux86/qemux86-64, otherwise fbdev)
* buildtools improvements:
 - Handle generic environment setup injection (environment-setup.d)
 - Added python3-jinja2 to support resulttool
 - Added libstc++.a and libgomp-dev to buildtools-extended-tarball
 - install-buildtools: remove hardcoded x86-64 architecture
 - install-buildtools: add option to disable checksum validation
* Package QA check changes:
 - Added test for shebang line length
 - Promoted a number of checks from warning to error
 - Check for missing update-alternatives inherit=20
 - Check for missing features_check inherit
 - Improved messages for "arch" check
* Testing related improvements:
 - Enabled ptests for bzip2, expat, libinput, glib-networking
 - New buildall-qemu script to automate build testing a recipe for all qemu=
 MACHINEs
 - oeqa/runtime: Add OERequirePackage decorator
 - qemurunner: Add extra debug info when qemu fails to start
 - testimage: enable ovmf support
 - testimage: add an overall timeout setting
 - testresults.json: add duration of the tests as well
 - resulttool/log: Add ability to dump ltp logs as well as ptest
 - Call dump_target() when SSH target reports "no route to host"
* Licensing related improvements:
 - Symlink to the current image license manifest dir under tmp/deploy/licen=
ses
 - Added BSD-2-Clause-Patent common license file
 - Added Unlicense common license file
 - Added PSF-2.0 common license file
* kernel-fitimage: build configuration for image tree when dtb is not prese=
nt
* kernel-fitimage: generate openssl RSA keys for signing fitimage
* systemd-conf: Accept MTU from DHCP
* cmake: allow chainloading of the toolchain file
* curl: enable producing debug info for curl-dbg package
* initramfs-framework: check successful mount using mountpoint (allows root=
fs module to be used with OSTree)
* Several optimisations to improve SSH host key generation for openssh & dr=
opbear
* cve-update-db-native: add progress handler
* cve-check: introduce CVE_CHECK_RECIPE_FILE variable to allow changing of =
per-recipe check file
* cve-check: add CVE_CHECK_REPORT_PATCHED variable to suppress reporting of=
 patched CVEs
* cml1: New KCONFIG_CONFIG_ROOTDIR variable to specify the .config root dir
* base.bbclass: warn when there is trailing slash in S or B variables
* busybox: enable rev and pgrep commands
* New EXTRA_OEWAF_BUILD and EXTRA_OEWAF_INSTALL variables for passing extra=
 build / install arguments to waf
* New WAF_PYTHON variable to specify python interpreter to use for waf per-=
recipe
* sysvinit-inittab: Add support for tty devices with 10 or more number.
* devtool: finish: support BBFILES_DYNAMIC when finding original recipe loc=
ation
* uninative: Handle PREMIRRORS generically
* externalsrc: allow multiple tasks to execute in parallel if S !=3D B
* rng-tools: Restrict rngd when running as systemd service
* help2man: rewrite recipe so it can also be built for the target
* graph-tool: add filter subcommand
* boost: optimised build
* grub: Remove native version of grub-efi (use grub-native instead, which i=
s functionally the same)
* rpm: disable libarchive dependency by default
* init-ifupdown: always make machine-specific

- -------------
Known Issues
- -------------

failure in ptest : valgrind.drd and valgrind.helgrind

-----------------
Recipe Licenses
-----------------

The following corrections have been made to the LICENSE values set by recip=
es:

* avahi: fixed the per-package LICENSE values for libavahi-client package (=
LGPLv2.1+)
* gdk-pixbuf: LGPLv2.1 -> LGPLv2.1+
* gnutls: with help from upstream, the license text in some source files wa=
s corrected to match the documentation (i.e. the library itself is LGPLv2.1=
+). LICENSE already reflected this.
* util-linux: set per-package LICENSE values for libblkid, libfdisk, libmou=
nt, libsmartcols (all LGPLv2.1+), and libuuid (BSD-3-Clause)


------------------------
Migration instructions
------------------------

For details on changes that you might need to make when migrating to the Yo=
cto Project 3.2 release from previous releases, please see the following ma=
nual section:

http://www.yoctoproject.org/docs/3.2/ref-manual/ref-manual.html#moving-to-t=
he-yocto-project-3.2-release



----------------
Security Fixes
----------------

* bash: CVE-2019-18276
* bind: CVE-2020-8616, CVE-2020-8617, CVE-2020-8622, CVE-2020-8623, CVE-202=
0-8624
* bison: CVE-2020-24979, CVE-2020-24980
* curl: CVE-2020-8169, CVE-2020-8177
* gcc: CVE-2020-13844
* ghostscript: CVE-2020-15900
* glibc: CVE-2020-6096
* glib-networking: CVE-2020-13645
* gnupg: CVE-2020-25125
* gnutls: CVE-2020-24659
* grub2: CVE-2020-10713
* icu: CVE-2020-10531
* json-c: CVE-2020-12762
* libproxy: CVE-2020-25219
* librsvg: CVE-2019-20446
* libxml2: CVE-2020-24977
* openssl: CVE-2020-1967
* python3: CVE-2020-8492
* qemu: CVE-2020-10761, CVE-2020-11869, CVE-2020-13361, CVE-2020-13362, CVE=
-2020-13659, CVE-2020-13791, CVE-2020-13800, CVE-2020-14364, CVE-2020-15863
* re2c: CVE-2020-11958
* sqlite: CVE-2020-11655, CVE-2020-11656
* systemd: CVE-2020-13776
* wpa-supplicant: CVE-2020-12695



-----------------
Recipe Upgrades
-----------------

* acpica 20200430 -> 20200717
* adwaita-icon-theme 3.34.3 -> 3.36.1
* alsa-lib 1.2.1.2 -> 1.2.3.2
* alsa-plugins 1.2.1 -> 1.2.2
* alsa-tools 1.1.7 -> 1.2.2
* alsa-topology-conf 1.2.1 -> 1.2.3
* alsa-ucm-conf 1.2.1.2 -> 1.2.3
* alsa-utils 1.2.1 -> 1.2.3
* alsa-utils-scripts 1.2.1 -> 1.2.3
* apt 1.2.31 -> 1.8.2.1
* asciidoc 8.6.9+py3-gitX -> 9.0.2
* at-spi2-atk 2.34.1 -> 2.34.2
* at-spi2-core 2.34.0 -> 2.36.1
* atk 2.34.1 -> 2.36.0
* automake 1.16.1 -> 1.16.2
* avahi 0.7 -> 0.8
* babeltrace2 2.0.2 -> 2.0.3
* bash-completion 2.10 -> 2.11
* bind 9.11.22 -> 9.16.7
* binutils 2.34 -> 2.35
* bison 3.5.3 -> 3.7.2
* bmap-tools 3.5+gitX (db7087b883...) -> 3.5+gitX (a17f0e3ff8...)
* boost 1.72.0 -> 1.74.0
* bootchart2 0.14.8+gitX -> 0.14.9
* btrfs-tools 5.4.1 -> 5.7
* busybox 1.31.1 -> 1.32.0
* busybox-inittab 1.31.0 -> 1.32.0
* ca-certificates 20190110 -> 20200601
* ccache 3.7.7 -> 3.7.11
* clutter-1.0 1.26.2 -> 1.26.4
* cmake 3.16.5 -> 3.18.2
* cogl-1.0 1.22.4 -> 1.22.8
* connman 1.37 -> 1.38
* coreutils 8.31 -> 8.32
* createrepo-c 0.15.7 -> 0.16.0
* cross-localedef-native 2.31+gitX -> 2.32
* cryptodev-linux 1.10 -> 1.11
* cryptodev-module 1.10 -> 1.11
* cryptodev-tests 1.10 -> 1.11
* cups 2.3.1 -> 2.3.3
* curl 7.69.1 -> 7.72.0
* dbus 1.12.16 -> 1.12.20
* dbus-test 1.12.16 -> 1.12.20
* debianutils 4.9.1 -> 4.11.1
* desktop-file-utils 0.24 -> 0.26
* diffoscope 136 -> 160
* dnf 4.2.2 -> 4.2.23
* dpkg 1.19.7 -> 1.20.5
* dropbear 2019.78 -> 2020.80
* e2fsprogs 1.45.4 -> 1.45.6
* ed 1.15 -> 1.16
* elfutils 0.178 -> 0.180
* enchant2 2.2.8 -> 2.2.9
* epiphany 3.34.4 -> 3.36.4
* ethtool 5.4 -> 5.8
* ffmpeg 4.2.2 -> 4.3.1
* file 5.38 -> 5.39
* font-alias 1.0.3 -> 1.0.4
* freetype 2.10.1 -> 2.10.2
* fribidi 1.0.9 -> 1.0.10
* gawk 5.0.1 -> 5.1.0
* gcc 9.3.0 -> 10.2.0
* gcr 3.34.0 -> 3.36.0
* gdb 9.1 -> 9.2
* gdb-cross 9.1 -> 9.2
* gdb-cross-canadian 9.1 -> 9.2
* gettext 0.20.1 -> 0.21
* git 2.24.3 -> 2.28.0
* glib-2.0 2.62.6 -> 2.64.5
* glib-networking 2.62.4 -> 2.64.3
* glibc 2.31+gitX -> 2.32
* gnu-config 20200117+gitX -> 20200831+gitX
* gnu-efi 3.0.11 -> 3.0.12
* gnupg 2.2.20 -> 2.2.23
* go 1.14.7 -> 1.15.2
* gobject-introspection 1.62.0 -> 1.64.1
* gpgme 1.13.1 -> 1.14.0
* gptfdisk 1.0.4 -> 1.0.5
* gsettings-desktop-schemas 3.36.0 -> 3.36.1
* gtk+3 3.24.14 -> 3.24.22
* harfbuzz 2.6.4 -> 2.7.2
* icu 66.1 -> 67.1
* iproute2 5.5.0 -> 5.8.0
* iptables 1.8.4 -> 1.8.5
* iputils s20190709 -> s20200821
* iso-codes 4.4 -> 4.5.0
* iw 5.4 -> 5.8
* jquery 3.4.1 -> 3.5.1
* json-c 0.13.1 -> 0.15
* kbd 2.2.0 -> 2.3.0
* kern-tools-native 0.2+gitX (c66833e1ca...) -> 0.2+gitX (df4390b18a...)
* kmod 26 -> 27
* kmscube git (76bb57d539...) -> git (4660a7dca6...)
* less 551 -> 562
* libarchive 3.4.2 -> 3.4.3
* libcap 2.32 -> 2.43
* libcap-ng 0.7.10 -> 0.7.11
* libcap-ng-python 0.7.10 -> 0.7.11
* libcheck 0.14.0 -> 0.15.2
* libdazzle 3.34.1 -> 3.36.0
* libdnf 0.28.1 -> 0.48.0
* libdrm 2.4.101 -> 2.4.102
* libevdev 1.8.0 -> 1.9.1
* libevent 2.1.11 -> 2.1.12
* libgcc 9.3.0 -> 10.2.0
* libgcc-initial 9.3.0 -> 10.2.0
* libgcrypt 1.8.5 -> 1.8.6
* libgfortran 9.3.0 -> 10.2.0
* libgloss 3.2.0 -> 3.3.0
* libgpg-error 1.37 -> 1.39
* libical 3.0.7 -> 3.0.8
* libinput 1.15.2 -> 1.16.1
* libjpeg-turbo 2.0.4 -> 2.0.5
* libksba 1.3.5 -> 1.4.0
* libmpc 1.1.0 -> 1.2.0
* libnotify 0.7.8 -> 0.7.9
* libnsl2 1.2.0+gitX -> 1.3.0
* libpcre2 10.34 -> 10.35
* libpipeline 1.5.2 -> 1.5.3
* libpsl 0.21.0 -> 0.21.1
* librepo 1.11.2 -> 1.12.1
* libsecret 0.20.1 -> 0.20.3
* libsolv 0.7.10 -> 0.7.14
* libsoup-2.4 2.68.4 -> 2.70.0
* libunwind 1.3.1 -> 1.4.0
* liburcu 0.11.1 -> 0.12.1
* libusb1 1.0.22 -> 1.0.23
* libva 2.6.1 -> 2.8.0
* libva-utils 2.6.0 -> 2.8.0
* libvorbis 1.3.6 -> 1.3.7
* libwpe 1.4.0.1 -> 1.7.1
* libx11 1.6.9 -> 1.6.12
* libxcb 1.13.1 -> 1.14
* libxcrypt 4.4.15 -> 4.4.17
* libxcrypt-compat 4.4.15 -> 4.4.17
* libyaml 0.2.2 -> 0.2.5
* linux-libc-headers 5.4 -> 5.8
* linux-yocto 5.4.69+gitX -> 5.4.69+gitX, 5.8.13+gitX
* linux-yocto-dev 5.6-rc++gitX -> 5.9-rc++gitX
* linux-yocto-rt 5.4.69+gitX -> 5.4.69+gitX, 5.8.13+gitX
* linux-yocto-tiny 5.4.69+gitX -> 5.4.69+gitX, 5.8.13+gitX
* llvm 9.0.1 -> 10.0.1
* logrotate 3.15.1 -> 3.17.0
* ltp 20200120 -> 20200515
* lttng-modules 2.11.6 -> 2.12.2
* lttng-tools 2.11.5 -> 2.12.2
* lttng-ust 2.11.2 -> 2.12.0
* man-db 2.9.0 -> 2.9.3
* man-pages 5.05 -> 5.08
* mc 4.8.23 -> 4.8.25
* mesa 20.0.2 -> 20.1.8
* mesa-gl 20.0.2 -> 20.1.8
* meson 0.53.2 -> 0.55.1
* mpfr 4.0.2 -> 4.1.0
* mpg123 1.25.13 -> 1.26.3
* msmtp 1.8.7 -> 1.8.12
* mtd-utils 2.1.1 -> 2.1.2
* mtools 4.0.23 -> 4.0.24
* musl 1.2.0+gitX -> 1.2.1+gitX
* nasm 2.14.02 -> 2.15.05
* net-tools 1.60-26 -> 1.60-20181103+gitX
* nettle 3.5.1 -> 3.6
* newlib 3.2.0 -> 3.3.0
* nfs-utils 2.4.3 -> 2.5.1
* ninja 1.10.0 -> 1.10.1
* opensbi 0.6 -> 0.8
* openssh 8.2p1 -> 8.3p1
* opkg 0.4.2 -> 0.4.3
* opkg-utils 0.4.2 -> 0.4.3
* ovmf edk2-stable201911 -> edk2-stable202005
* p11-kit 0.23.20 -> 0.23.21
* pango 1.44.7 -> 1.46.2
* patchelf 0.10 -> 0.12
* pciutils 3.6.4 -> 3.7.0
* perl 5.30.1 -> 5.32.0
* piglit 1.0+gitrX (6126c2d4e4...) -> 1.0+gitrX (2a6a8f954d...)
* pixman 0.38.4 -> 0.40.0
* pkgconf 1.6.3 -> 1.7.3
* popt 1.16 -> 1.18
* powertop 2.10 -> 2.13
* ppp 2.4.7 -> 2.4.8
* pseudo 1.9.0+gitX (060058bb29...) -> 1.9.0+gitX (cca0d7f15b...)
* ptest-runner 2.3.2+gitX -> 2.4.0+gitX
* puzzles 0.0+gitX (79a5378b5a...) -> 0.0+gitX (9aa7b7cdfb...)
* python3 3.8.2 -> 3.8.5
* python3-git 3.0.5 -> 3.1.7
* python3-gitdb 2.0.6 -> 4.0.5
* python3-magic 0.4.15 -> 0.4.18
* python3-mako 1.1.1 -> 1.1.3
* python3-numpy 1.17.4 -> 1.19.1
* python3-pycairo 1.19.0 -> 1.19.1
* python3-pycryptodome 3.9.7 -> 3.9.8
* python3-pycryptodomex 3.9.7 -> 3.9.8
* python3-pygments 2.5.2 -> 2.6.1
* python3-pygobject 3.34.0 -> 3.36.1
* python3-setuptools 45.2.0 -> 49.6.0
* python3-six 1.14.0 -> 1.15.0
* python3-smmap 2.0.5 -> 3.0.4
* python3-subunit 1.3.0 -> 1.4.0
* python3-testtools 2.3.0 -> 2.4.0
* qemu 4.2.0 -> 5.1.0
* re2c 1.0.1 -> 2.0.3
* resolvconf 1.82 -> 1.83
* rng-tools 6.9 -> 6.10
* rpcsvc-proto 1.4+gitX -> 1.4.2
* rpm 4.14.2.1 -> 4.15.1
* rsync 3.1.3 -> 3.2.3
* shared-mime-info 1.15 -> 2.0
* sqlite3 3.31.1 -> 3.33.0
* strace 5.5 -> 5.8
* stress-ng 0.11.17 -> 0.11.21
* subversion 1.13.0 -> 1.14.0
* sudo 1.8.31 -> 1.9.3
* sysklogd 2.1.1 -> 2.1.2
* sysstat 12.2.1 -> 12.4.0
* systemd 244.3 -> 246.6
* systemd-boot 244.3 -> 246.2
* systemd-conf 244.3 -> 246.1
* systemtap 4.2 -> 4.3
* systemtap-uprobes 4.2 -> 4.3
* sysvinit 2.96 -> 2.97
* tzcode-native 2020a -> 2020b
* tzdata 2020a -> 2020b
* u-boot 2020.01 -> 2020.07
* u-boot-tools 2020.01 -> 2020.07
* util-linux 2.35.1 -> 2.36
* vala 0.46.6 -> 0.48.9
* valgrind 3.15.0 -> 3.16.1
* vte 0.58.3 -> 0.60.3
* vulkan-demos git (6d63dc32c3...) -> git (4818f85916...)
* vulkan-headers 1.1.126.0 -> 1.2.135.0
* vulkan-loader 1.1.126.0 -> 1.2.135.0
* vulkan-tools 1.1.126.0 -> 1.2.135.0
* waffle 1.6.0 -> 1.6.1
* watchdog 5.15 -> 5.16
* webkitgtk 2.28.2 -> 2.28.4
* weston 8.0.0 -> 9.0.0
* wpebackend-fdo 1.4.1 -> 1.7.1
* x264 r2991+gitX -> r3011+gitX
* xcb-proto 1.13 -> 1.14
* xev 1.2.3 -> 1.2.4
* xf86-input-libinput 0.29.0 -> 0.30.0
* xinetd 2.3.15 -> 2.3.15.4
* xkeyboard-config 2.28 -> 2.30
* xorgproto 2019.2 -> 2020.1
* xserver-xorg 1.20.8 -> 1.20.9
* xz 5.2.4 -> 5.2.5
