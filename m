Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.24057.1617405267266934730
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Apr 2021 16:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=gYnbSIZ1;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: xxlM/yjVl0VO9D6iuU7CnRGkPHE6LgXSyd84/h7xP0SitQck1/JT9g8PAcDGmW5qqBBLwfsam4
 NSWApi4/VOhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="192652207"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="scan'208";a="192652207"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2021 16:14:26 -0700
IronPort-SDR: CAh+jAH96XkXEAZStfwycU01qJeF18W6etZ2t9ig/H/2K+t2WjzRismIAjtrU/xXpl7NJ3Cml7
 FK6v8z/kKCNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="scan'208";a="608130042"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga006.fm.intel.com with ESMTP; 02 Apr 2021 16:14:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 2 Apr 2021 16:14:25 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 2 Apr 2021 16:14:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 2 Apr 2021 16:14:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 2 Apr 2021 16:13:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmpCBrRX41SbkBIkXK5dZQMdgXaqzhUPUgSG6TnJUXzlzZ46medHAiuX4vwlVdrLnSwr1/oy3fbX/YIDNMvg49wb7XIvDiFpwBdSrekrQ0vlmgUja976iHo73T31mxMp11aQa223UoybZcG3b/HMFozLqiGKy+S0qhdIKQdB1gOrh2SgLdgFb4LFtDRUdbkrGZe0khbvbNeABAt9qNfOelIWZUIQ5dQ5+AgIfmbio0sf1yEJyvJCunz2pMar9KuA6BvlxXF2MjhRRs2cFD8YHvXhNlZ2GrywD4x49YYZAlFKFfXzPmbJKolYh/0nCHJgq8nH/UOaqt+2HDvCWQWyog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9HgCoxrjIfiL6NmrPqOBP+SFTFkWkKIYCd66U+EAmmo=;
 b=T0Z1YQTMzpltBgV30jmmn1gzq/NW5A4zNyHPP1qLhF+kIgNGjOu+j+vbHfq6My7TVAgRwmpou7C/raxbjU6/B4p4ks+Fofw8eecR1GjJjDE3Ne2LpXkuy4JeZiTf1yeOrH7fYU4HlAzLXZqkWt5X0IK5C1tt50kVpvvAM0vc1bccckET2zCT8q07kttGr73RTsAdKLbxxBY/oLTJ4IGwZ01XwdzKaVz26+shI6xmS/ozH+85Vm0EoGLkBsoL3DZXU6xJRFhyHdMEW6Jc+XBLpoC+OqCrQW/vd8/78jB3TbrNcYBVGhjoUKug/Jfq8EaHXOhowyMmzuhJrR77ptpGHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9HgCoxrjIfiL6NmrPqOBP+SFTFkWkKIYCd66U+EAmmo=;
 b=gYnbSIZ1NbQw+qU4mypZvpOdP+Bg/fIuEwRzmCleEOp1qmCA0mbY21oZh+vRQV/bQNLnP4sCXTAd88YChsRnQq4rD4BbhNFl+eO9AT0hhXw5m+eYIDgdP8AjQlewSxlN1GYEQOoo9qp2dyQUH0FHgaFgtbl1LFySgfQVLVWaGcQ=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB2901.namprd11.prod.outlook.com (2603:10b6:a03:91::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Fri, 2 Apr
 2021 23:13:41 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1%7]) with mapi id 15.20.3977.033; Fri, 2 Apr 2021
 23:13:41 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.2.3 (gatesgarth-24.0.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2.3 (gatesgarth-24.0.3) is
 Released
Thread-Index: AdcoFQmBIEuO9qFTQHageuz1Ov/bKg==
Date: Fri, 2 Apr 2021 23:13:41 +0000
Message-ID: <BYAPR11MB33014E7CE7F08AEE18425170887A9@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.154.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1af3903b-3045-4e22-8525-08d8f62cf48e
x-ms-traffictypediagnostic: BYAPR11MB2901:
x-microsoft-antispam-prvs: <BYAPR11MB2901F4359EC8694344C1A368887A9@BYAPR11MB2901.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kul/N0Bds7dzenn6mS17mVGbmLI5chFACLpJX2/O3OmArU7fpUa/nkWyG+VsQZTwLqGL1ztJKsfNAndgzJ7casY4HnZQt5T8s8kkbTiGH9GVC+Gf4cmtqwRrbaZOS+aedG6ZltAvrGdLNGHMi/jJ+R3c4e7G7YeSc6WvF6053fwempBorZhoLhoxMfTmkVplxIoAxomqUD6Z+2Nkk2YnJqtzk2qh+SFG/lf9z6bFWdzx62+oWEDr3Py2y8JdVVjsrikhZFLJQ3KCbLwsgftDXfQ62ARWWefVq7jEmlqZ5b1+qxyitcjbozBxEuOofUVHQUvSg7PiQ86HIc+LA92egpX34sUKDX92N5znBqHdrwflm4oOSCW9+vQtpy/+kYHym60cTRM6vUVHRGXru20jA9BD+jFMaaNk5b2/W9ztMlCg7ua59jZAItnOn2K17tnsSrv3quRFAjybQlQqJNih9ecBSSO43gFfvvaRi60Q5mYmQGlFkd1/ZNv0nN95d20bf3+S9yrN5Z7m0hkqCk1S1NqqW3L1E1kOPph8X7CZME8mO7PulLfi5810UifTaGc0j01OVQVQG3Qt5TbjYX1dE63vtPLgQs8hsZGVme4tQf0yo/UdpuSvJ7GCche6bh+3QlRThxDajjdnlt6uaoUMXjC8EA/SlPnDGgmGH05fZ43mIEGZY9fhpLCInBBzXmAji8JwSbdHGP1vOX4500b3JwwlENDiwuUGbgxmW/eCH5kK7R2CuNMJvoKvK3qp+2dHo7xJ2mylsR8iSrRwjjCSrw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(366004)(396003)(376002)(39860400002)(66946007)(76116006)(66476007)(66446008)(64756008)(66556008)(966005)(6506007)(478600001)(38100700001)(66574015)(52536014)(9686003)(55016002)(2906002)(316002)(8676002)(186003)(26005)(110136005)(86362001)(8936002)(71200400001)(5660300002)(33656002)(83380400001)(7696005)(491001)(86284004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?9PJVCcSZuZEfnrpd4/QQkoNmPY4vGdGxZwJvs5ZPRL85BwWvG6SGJy2ApA?=
 =?iso-8859-1?Q?7J+SOd1k3BPN9NqXKQmTXSfKu1HpCZUS4pf2YPG4mJcOgNLDmBaUjs/ra6?=
 =?iso-8859-1?Q?DsqNl0sQRt2Z2lMaiAPRvtgHTPOxbbfppRh/P8Sl2HGw4bdDqnsdGRUpqi?=
 =?iso-8859-1?Q?lol743afjLt24SBcritcCPV0AXascsG4ed+7YxOczI9mkz95iK49aP7tfz?=
 =?iso-8859-1?Q?lc/hM2yPbO0Ru3psinaHVrRfZjX7WM7uAW1vP3zSHYw3WpOvjvABoTVXDw?=
 =?iso-8859-1?Q?xXH1GCPlikWE1Imbc/KFm4/NqEENQhMpKV7CEZdvmbqB6+dpYB9rqyLN1N?=
 =?iso-8859-1?Q?WAxZ9W9x/vq84hueFReMlDyz4xBT5K+B7PKW5TYbaBG9RVF3EvpFNI28St?=
 =?iso-8859-1?Q?/ocoMVzVKzLS7HboZkA9jVF3rhGMZMj6j1d1B6kAscMJ+PeYnEgh6YiDVV?=
 =?iso-8859-1?Q?FFU06jOCbsat3/UxF6c304fhFgvIBY4dtpB7QksUHQFJ16InqYIar2K4yI?=
 =?iso-8859-1?Q?8ladA+hAQ9gSTMEVuYAHIPA3bX5CuLS6GfiMsP/F29bzq50n4zt5uKWg2r?=
 =?iso-8859-1?Q?Z9hh6YUyqnzwjB8jggG6qWJ5Yt++HeW/cNTcsOL/sCmz4qf4XPH4D0/3y1?=
 =?iso-8859-1?Q?fK3fIaqHabQWRVtOZPSKzykCpIrPt4GHqaM8s7kXcOpB6CCG9c2du/JSx4?=
 =?iso-8859-1?Q?ctrrLpwABA8C8ZXEuS987f8e2GBHflS0uqFMUeObiNaFCQWi60IpjE+yl9?=
 =?iso-8859-1?Q?kEBDT/Qe3dyfhIXg2zsd30h+kBTVHWvpaY5zfA0i0u+5HdjVnpeL5GM3sQ?=
 =?iso-8859-1?Q?HAD4e+o7BJsZDEa10K+X+zQbqqknDuO+Rtu5t100NXuXTsB6FSQmE74Lg4?=
 =?iso-8859-1?Q?9w99RV8TCupb30O7fX9JEr34/pb//vOLjHuwDc6qUQq+MK4lS6NFQ1OiKn?=
 =?iso-8859-1?Q?rExJrv0BjTr1d3+LWBVq/DlXIJIAeHDVnYmyfoqOZhDybi54f9GkEO/1mD?=
 =?iso-8859-1?Q?jMAEgM/uWVgQfS9d4Ppc9QTIqkltMk74y5EfI/5j82/pWPMZwgtiMI0u0a?=
 =?iso-8859-1?Q?MvVD6LhKkYtEmZytkeUyjplSQS3tvoTaf1Zohj2Ikp6bRX85b618vF/9fj?=
 =?iso-8859-1?Q?eDbNxArlw7Gv05x6T9OSi0lsUk2npKAm5w137fpknTkvwvIy78ywdPNOdP?=
 =?iso-8859-1?Q?IyGRuT198la+4wY4OhcTHt6g704PrGs+BQsNNLKR5rldMgrXAHs5yP/tTc?=
 =?iso-8859-1?Q?lv4ZBxaeAQaCvN1u0+AUutNAg5LhsaYbB2YTdihe+mPxGMYdOIASETAB0B?=
 =?iso-8859-1?Q?VIi72Z/JfJTRdY20YCvUOO+/K0rxIjF18xpCjpEBnhq2jkKK4rK8sU4MZ5?=
 =?iso-8859-1?Q?9AkCkGltPh?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1af3903b-3045-4e22-8525-08d8f62cf48e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2021 23:13:41.3770
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wMIooAuhvCG6iaoDYfVxhxJh4x1ac1zviH2HF+Bs0d2V0CoML8Bx41EnYKSWT02INVkUNRQhc9TxAp96zZDWi6sc9Cyn3fPDsdGzVL4qc1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2901
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.2.3 (gatesgarth-24.0.3) Rele=
ase is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/poky-gatesgart=
h-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/poky-gatesgarth-24.0.3.ta=
r.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/testreport.txt

Thank you for everyone's contributions to this release.

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

- --------------------------
yocto-3.2.3 Release Notes
- --------------------------


- --------------------------
 Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: gatesgarth
Tag: yocto-3.2.3
Git Revision: 08665a81dcd41069eed1468f1587abe6b5893471
Release Artefact: poky-gatesgarth-24.0.3
sha: 174cdc436360fb8a11f08b54e6e39d3159aa80f57a3cabc165c625cdd111f9da
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/poky-gatesgart=
h-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/poky-gatesgarth-24.0.3.ta=
r.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: gatesgarth
Tag: 2020-10.3-gatesgarth
Git Revision: fdae970656cc421c542af9856bc9ae038c61db13
Release Artefact: oecore-gatesgarth-24.0.3
sha: 22b293dda4bb47b6d57ef3058ccb8fc8d49c41a5d5b4e8f86ca94b49eed37a07
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/oecore-gatesga=
rth-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/oecore-gatesgarth-24.0.3.=
tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: gatesgarth
Tag: yocto-3.2.3
Git Revision: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
Release Artefact: meta-mingw-gatesgarth-24.0.3
sha: 03ae3c3695e60a8130023c6eff1f75ca2b735484b9889a8689f33bb220fa9dbc
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/meta-mingw-gat=
esgarth-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/meta-mingw-gatesgarth-24.=
0.3.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: gatesgarth
Tag: yocto-3.2.3
Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
Release Artefact: meta-gplv2-gatesgarth-24.0.3
sha: 7c639c543b01b0ffdac3ac3b3a25513af690113f29a528408aaecf1f3618aa4f
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/meta-gplv2-gat=
esgarth-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/meta-gplv2-gatesgarth-24.=
0.3.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: gatesgarth
Tag: 2020-10.3-gatesgarth
Git Revision: 5d02c98489d3a5836676b9c3fb3bd0157449db2b
Release Artefact: bitbake-gatesgarth-24.0.3
sha: 527828a79ec0cd92cdabc779247e31787cd7f5451b8ed568fd4bd511c0a5cd23
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.3/bitbake-gatesg=
arth-24.0.3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.2.3/bitbake-gatesgarth-24.0.3=
.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: gatesgarth
Tag: yocto-3.2.3
Git Revision:10ea3bc5691bdf32df47a28252ce4b74ca7fd646

- -------------
Contributors
- -------------
Alejandro Hernandez Samaniego
Anatol Belski
Andrei Gherzan
Anuj Mittal
Armin Kuster
Bruce Ashfield
Chee Yang Lee
Chen Qi
Dorinda
Florian Bezdeka
Jan Brzezanski
Jan-Simon M=F6ller
Jon Mason
Joshua Watt
Khem Raj
Lee Chee Yang
Marek Vasut
Martin Jansa
Michael Halstead
Mike Crowe
Milan Shah
Mingli Yu
Minjae Kim
Peter Kjellerstedt
Purushottam Choudhary
Richard Leitner
Richard Purdie
Ross Burton
Sangeeta Jain
Scott Murray
Stefan Ghinea
Stefan Schmidt
Stephen Jolley
Thomas Viehweger
Tomasz Dziendzielski
Vineela Tummalapalli
Vivien Didelot
Wang Mingyu
Wes Lindauer
Yi Fan Yu
Yi Zhao
Yoann Congal
Zbigniew Bodek

- ---------------
 Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
glib-2.0: Fix CVE-2021-27219
python3-jinja2: set CVE_PRODUCT
shadow: whitelist CVE-2013-4235
wpa-supplicant: fix CVE-2021-27803
qemu: fix CVE-2021-20203
libsdl2: fix CVE-2020-14409 CVE-2020-14410
python3: fix CVE-2021-23336
bind: fix CVE-2020-8625
cups: fix CVE-2020-10001
wpa-supplicant: fix CVE-2021-0326
screen: fix CVE-2021-26937
openssh: fix CVE-2020-14145
qemu: fix CVE-2020-29443 CVE-2020-35517


- ---------------
Fixes
- ---------------
build-appliance-image: Update to gatesgarth head revision
poky.conf: bump version for 3.2.3 release
documentation: version bumps for 3.2.3 release
build-appliance-image: Drop kernel module handling
xcb-proto: update to 1.14.1
linux-yocto/5.4: update to v5.4.103
Revert "sstatesig.py: show an error instead of warning when sstate manifest=
 isn't found"
systemd-conf: do not ask for DHCP if configured on kernel command line
populate_sdk_ext: record METADATA_REVISION
runqemu: use "raw" instead of "bin" for ovmf
devtool: Fix do_kernel_configme task
iso-codes: fix protocol in SRC_URI
gcc-sanitizers: Move content from gcclibdir into libdir
gstreamer1.0-python: Set internal python library path correcty
selftest/reproducible: Don't call sync between each file compare
apr-util: Fix CFLAGS used in build
igt-gpu-tools: Fix reproducibility issue
libsecret: Improve determimism
ptest-packagelists: remove libinput-ptest
linux-yocto/5.4: update to v5.4.101
linux-yocto/5.4: update to v5.4.99
libinput: less parallism to increase chances the test suite works
bitbake: Force parser shutdown after catching an exception
bitbake: runqueue: Add setscene task overlap sanity check
bitbake: runqueue: Fix task execution corruption issue
linux-yocto: update genericx86* to v5.4.94
yocto-uninative.inc: version 3.0 incorporate seccomp filter workaround
yocto-uninative.inc: version 2.11 updates glibc to 2.33
parted: Fix reproducibility issue
valgrind: Increase timeout duration 30 -> 90 s
oeqa/pam: Need shadow installed for the tests
bitbake.conf: Split PSEUDO_IGNORE_PATHS to be more readable
bitbake.conf/image: Move image specific PSEUDO_IGNORE_PATHS to image class
populate_sdk: Add directories to PSEUDO_IGNORE_PATHS
image: Add directories to PSEUDO_IGNORE_PATHS
epiphany: Fix distributor contamination from /etc/os-release
epiphany: Fix reproducibility issue
wic: Warn if an ext filesystem affected by the Y2038 problem is used
externalsrc: Pass through npmsw URIs in SRC_URI
gcr: Fix reproducibility issue
cups: Fix reproducibility issues
asciidoc: Switch to using the main branch
sstatesig.py: show an error instead of warning when sstate manifest isn't f=
ound
bitbake.conf: Introduce FAKEROOTLOGS variable used by bitbake to print pseu=
do.log
babeltrace2: Fix reproducibility
report-error.bbclass: Add layer and bitbake version info to error report
python3: Fix python interpreter line length for nativesdk
libevdev: Update patch status to backport
rsync: Fix group name determinism issue
rsync: Fix a file sorting determinism issue
openssl: upgrade 1.1.1i -> 1.1.1j
systemd: Fix importd requirements comment
linux-firmware: upgrade 20201218 -> 20210208
wpebackend-fdo: Fix missing .so symlink when using dev package
oeqa/commands: Fix compatibility with python 3.9
oe/recipeutils: Fix copying patches when BBLAYERS entries are not normalise=
d
package_rpm: Enable use_source_date_epoch_as_buildtime in package_rpm class
mtd-utils: Remove duplicate assignments to alternative link names
npm.bbclass: avoid building target nodejs for native npm recipes
go: Update to 1.15.8
cve-check: add include/exclude layers
cve-check.bbclass: add layer to cve log
df.py: Add feature check for read-only-rootfs
groff: Fix determinism issue
linux-yocto/5.4: update to v5.4.98
linux-yocto/5.4: update to v5.4.96
valgrind: Disable ptest nlcontrolc for x86-64
git: Fix determinism issue
xorg-minimal-fonts: Really fix determinism
xorg-fonts-minimal: Fix reproducibility
rootfs_deb: handle aarch64 SDK_ARCH
bitbake: __init__.py: Fix bitbake debug log handling
documentation: version bumps for 3.2.2 release
acpica: Fix reproducibility issues
bison: Fix up file name mapping
systemd: Re-enable chvt as non-root user without polkit
xmlto: Fix reproducibility
watchdog: Avoid reproducibility failures after fixing build
watchdog: Fix determinism issue from sendmail host path
oeqa: reproducible: Add more logging
oeqa: reproducible: Fix SSTATE_MIRRORS variable
buildtools-extended-tarball: Add glibc-gconvs needed for build
quilt: Be determnistic about column presence
package_manager/deb: Fix image generation with package removal
deb: export INTERCEPT_DIR for remove actions
vim: Fix a race over creation of the desktop files
vim: Improve determinism
weston-init: Fix weston-keyboard path in weston.ini
cwautomacros: Ensure version is set deterministically
opkg: Fix patch glitches
opkg: Fix build reproducibility issue
pseudo: Update to include fixes for glibc 2.33
weston: remoting backend requires GStreamer base plugins
libomxil: Fix up commercial license flag
tcf-agent: Fix build on riscv32
connman: update to 1.39
pseudo: Update for rename and faccessat fixes
oe-pkgdata-util: Check if environment script is initialized
wic: debug mode to keep tmp directory
initrdscripts: init-install-efi.sh install extra files for ESP
