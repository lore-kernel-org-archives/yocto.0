Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.5708.1619050720554603212
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 17:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Re9jfVS1;
 spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: nYqmvCzI0AuzkCfqK7K9chBjXLcdm5kxJpw2cyW7ffOIZlIfIukCZWlFo6WFyYheO7omcyzkNF
 B4ds4SNzPEPQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="281131417"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="scan'208";a="281131417"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 17:18:38 -0700
IronPort-SDR: 7fXpPD+jHKIt39QiT5j26VV2Ij50rikhS+amE4lx2IdFytkj3MH6jy5cCj2goS6ggyMh4xG27j
 WSM1WW0WSIhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="scan'208";a="391628526"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2021 17:18:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 17:18:38 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 17:18:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 17:18:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 17:18:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELx5dtJ2l8FAAZIyLYkn0zWKggG17iUHH758Sgbom2x2wdaVMixqNevnMmoO1j6MvP1Mijh3A2Xzq9+NFOI4XByOuv/cwmqQTYNoma0++gp62ltBa6R348kn1AVmevLOn6rP4iTTGIyDvBv88Ml08REMbmWTZYihQ8lH4X5HEp1gyACjFuxYWj6JtdQ3eCZBSvH3W6AKwUs043klc6f9o84DWmfGfvbOgdsMHgx59bvwVv81aw9dUsYFZe8MgGqUB2nkgH4cBfBUm8eGnGs1112d6hz+oYuAZpVKa4J9RT2c2odBVS6x9aE88QUuKlyqBUpNhLxBRp5vdnUCFe2Q3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KugrkCyT/0m+JMTLILUWwIRTSsN8RwrimODt+tv9GY=;
 b=SVyEDkEmH25tkIpa0n2bIxpgbNoGWv+VNpXXcbmo9iUK1Yn8EXSlLItupWvN3wZ4cuWZzcZQAQwQSqe+ryHcVczu3T0lIGq2GK+kqY2BsRKCO2iWhX17I9R2lWasD9iz2QXI0uvPgO4rkF2FcCynpo6GF6/SVSsA8Krnxa+wVxgSCA1T7qLGLoM5IsQD9NoYpOfr/ejz092ZNO/zLWSNXt75sFFVaY4rr2yPO/QxlNwcvUSzufPmKOmjz9sQtFZdyewO1E0RUAY++6mwTZ17ZEU4aDC3l0kOBFXCyP2zxm5O2GBhClx4LwFqKKNkPjZ9eybleIV9+LZVW9fuHvWrNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7KugrkCyT/0m+JMTLILUWwIRTSsN8RwrimODt+tv9GY=;
 b=Re9jfVS1VEoWoNmBp6elv+RY7WHz1Jo/X+cfDnoWz8bwryxqv5UgUjDhhekE96ujNmJVRMd8+ZQyvSTAJXpvilNOIsKA+WtPB2w4gUe0kHQtXLRjFRq4uwzyWNuE2qK+G6rZ7/4GdTyFvQiboxVJpEADLC73zHqjtnEpJDsBfJI=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB5006.namprd11.prod.outlook.com (2603:10b6:a03:2db::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Thu, 22 Apr
 2021 00:18:35 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::bd46:b6cc:534a:62d1%7]) with mapi id 15.20.4020.023; Thu, 22 Apr 2021
 00:18:35 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.7 (Dunfell 23.0.7) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.7 (Dunfell 23.0.7) is Released
Thread-Index: Adc3DNiOTPZPLNYWTgCu3jitp9LHkQ==
Date: Thu, 22 Apr 2021 00:18:35 +0000
Message-ID: <BYAPR11MB330190B313FD1C6E74BF6EAB88469@BYAPR11MB3301.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 06d0d1e5-86c5-4784-05c7-08d905242b86
x-ms-traffictypediagnostic: SJ0PR11MB5006:
x-microsoft-antispam-prvs: <SJ0PR11MB50063B4E71816E1498A41D7D88469@SJ0PR11MB5006.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:369;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b5szKKYJEUY0xs3eP4MhcnHUO9jNeztPP6bBwKt/iJcAcIMcYnx/546CxbEpYDhPi/vWihapY3ORC3yemA56dn+7wShsu8vGdU9nZO0Ik1e785dCJoxtyD4tFOG1bvaGvnt0OYWsoTZ/sGlC7mT8MpxrtvfWY4kbKaUt+2IxpFx5XQev+dTLr4jlcSiGpidk5Ld+PuHKhy53f3YI7kEAVWHl98WXLqwEcxepvRJmDCKm7M0WFr3m9oR+meg1rmnzqc+he23fodGPEaa/nkUiEUEcP0K8HRM8qczR1T49Duic730yLjEFP39brorO/W1yxHfZXEXHLUWS30ySTgdV9ZcYQ3n4h8MKM8mcTgq6AbK/C/JBai7i4yJqcDNZ9dCjItFtbMRFDyWT4newxfayafpIypyO3szTcWYwh8Uhc36/KlDWRYUTndd6uIg6s0PpBzsHCg8t12JAIVIi2/TRH0rhKBmN8wbzm+hwaxux/jzISa8x7Z8XxIApQT1c0lPoy5pWtdTv62Fi6CoCVVi3gpnzTMhsxSvExrwzRcm6wur/hBw8a3R4rAjf1p495JZZydpvPoKIQkKWYIw0NlCbcSHdTowPbXZmnOp4K8srZg3BIpscHNRJRpoP3rKzWarQuZkAABVN37BG5tWdiFj9dJdgqgAfTKAJyFp8LLQKihNTBca6fXMkd2VquQKFXIRqFfVHRnK6cHRXdxDmn9n5gBnRCR8pcdEgJaLOjvv5CCY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(346002)(376002)(396003)(136003)(366004)(6506007)(66574015)(83380400001)(8676002)(110136005)(478600001)(316002)(8936002)(71200400001)(55016002)(76116006)(66946007)(9686003)(86362001)(38100700002)(33656002)(2906002)(26005)(66446008)(186003)(5660300002)(52536014)(966005)(7696005)(30864003)(66476007)(122000001)(66556008)(64756008)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?+PMkJkQFJCSEmBsCuxezCoG8PB/jmkK0QClrnfk/jt+tygxYjBHLUBkpqG?=
 =?iso-8859-1?Q?5mpd+V2zm6qRDGZkpu0qOEAJExygZECh+4iKLvR++mX5HGiORejOBDFCzm?=
 =?iso-8859-1?Q?TwFvmeoKtpIQKvApRf23nG7CoMKhQkc3GVS/0k5M6rd6m0/4+K9GGwF92G?=
 =?iso-8859-1?Q?5woNgvVZW4NQoY3KblEcf0QElcVFvPOZ5DHtvOfybxgZXE8h8+dbeSwL9p?=
 =?iso-8859-1?Q?39bZPCPQOHmX0nWNwVl/MA2Sr6X53wmUQ7oqroJ/9C+i7UNa/lxjiJQEKq?=
 =?iso-8859-1?Q?Ps3FXqalWSjspdjOXnX2+AJ4eIiuHJpEpvr4Hhty8rt84imMyYLSzcCRM7?=
 =?iso-8859-1?Q?HtTQU66mAlTfKCJCX/W94xLZEwRjmtchowQ42/oz2NS8FrYxFNnvK3kp/V?=
 =?iso-8859-1?Q?9zkb2/g6bI52DS+G3c3JRHNpr/tvwMvff7P4pRxHHe1sxaTR7VzbnN2u6R?=
 =?iso-8859-1?Q?UVGtdA4q1n3iP+nBMA9g8p+GVT4SrNS5m5aojflXExGPBa2KrQWA9pdZGz?=
 =?iso-8859-1?Q?oo4rpBTtkzw51jMOBggrTzubjzOz3E+4qtgcWridG2DFDUG8NsOEsPUfXN?=
 =?iso-8859-1?Q?I6yK6visH0EXkNW/RB+ycSVB46auCnGEJM1xtcL+ttgH2pn/i5c0Wbi/ZQ?=
 =?iso-8859-1?Q?x9mjev/HWlSPXim+4K91jF5QISlPL1SZsiR7dyd9bCfIGYRMobN3djtqep?=
 =?iso-8859-1?Q?i+idt5QFnjKbppMtTKvtkqaiLCOieU9CxGF2MpzOepcC93vpT5ZiKnYbx3?=
 =?iso-8859-1?Q?DbOampV45ri06/zpG5Gkn3jTwRbSSrc9vSlJoqnoqlcDyRqmjJiJfCL1QE?=
 =?iso-8859-1?Q?RofuzLJ79GsjU+04ZJ+O60Lu9ou4koEs3Xm8ClFUkI4XDJ4L0mO05uZezo?=
 =?iso-8859-1?Q?2RKDaCB8eRmmfbIj2Yem2MQnMv30W1hgokbGF5M8QlMDYBckOEW/YTtLaX?=
 =?iso-8859-1?Q?R1i1QqLZ5FV70oM4NGz+JtihhDSu37/J+VPVzGwe0frSIRwbwoyt6oOe/w?=
 =?iso-8859-1?Q?pN0ELPthvxCy2w3pCuA4r+zTAy/9FOKKYFCenLYg02ZLHLizm7W/oew++s?=
 =?iso-8859-1?Q?UPvHOPvj5caBRStyljn87fTtYPBBbovKMplDEhxSWjNrhWBjveJufH4NNQ?=
 =?iso-8859-1?Q?80Hl3IeYHu3Nh8bQXMqlL1jkpNO8Gtuz0eC6g9/6KHk/5g+l0CPFDhm9FL?=
 =?iso-8859-1?Q?y/vFk3Cozf41bpZ1H6+eDw5jKrWIEsNwiAEM4k1CiU3jWklJfEfSbEC630?=
 =?iso-8859-1?Q?NKn30HsFuneUBmJi4jc7bnBtmCvEu2Zy2EcSol5Nj75ZbPLP7UzduF4jCk?=
 =?iso-8859-1?Q?mu2uvUa+lhGeGRSpP10P0AcZ+ohpfesphBCPPnFe3+/V+qDFXWPh3daV8c?=
 =?iso-8859-1?Q?fIzhv/T1p4?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d0d1e5-86c5-4784-05c7-08d905242b86
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 00:18:35.5681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YsMihZ+EHz6FhmfTilZhQoykQPokz/bPAOjyp5f4XbqWi7YwkF2JTffSYd/XrKxHO4f731rRu4ViTNpTW6NYY8g5n96C52jtQKiM+gygTtY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5006
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.7 (dunfell-23.0.7) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/poky-dunfell-2=
3.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/poky-dunfell-23.0.7.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,

Vineela Tummalapalli
Yocto Project Build and Release
vineela.tummalapalli@intel.com

- --------------------------
yocto-3.1.7 Release Notes
- --------------------------


- --------------------------
 Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.7
Git Revision: 13f4ddf50eccaeed96a40a5f1a1d4173e677e98a
Release Artefact: poky-dunfell-23.0.7
sha: d3ae731cc7d76c4dd0c88ce72798a373511303beb45c623f0e08237c4cff884d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/poky-dunfell-2=
3.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/poky-dunfell-23.0.7.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.7-dunfell
Git Revision: a3de6239e98efafe3668396e69133ffee3d9b27f
Release Artefact: oecore-dunfell-23.0.7
sha: 7d06059d6455c8b56303c9803418568536c8b18fb63a4d5330d34dc5200c05ba
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/oecore-dunfell=
-23.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/oecore-dunfell-23.0.7.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.7
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.7
sha: a282ecfecf73b3626e82472a2c54e46f349140cc87579dc9fe2940c1ed113194
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/meta-mingw-dun=
fell-23.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/meta-mingw-dunfell-23.0.7=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.7
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.7
sha: 19ebacca25b52920f77633cb50f43e57e7cfe40f6118ef434b3bfa8074ad7b3a
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/meta-gplv2-dun=
fell-23.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/meta-gplv2-dunfell-23.0.7=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.46
Tag: 2020-04.7-dunfell
Git Revision: 017a39ed05d065bf28fd38f91bcde8a098300551
Release Artefact: bitbake-dunfell-23.0.7
sha: d5c542a3ba721f820c2b5963f9d2309bc17a1eb6fe42082327b7cc6bd44126d6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.7/bitbake-dunfel=
l-23.0.7.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.7/bitbake-dunfell-23.0.7.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.7
Git Revision:5a54200a8702e473ecbbc3dbbdaa24169796c9e8

- -------------
Contributors
- -------------
akuster
Alejandro Hernandez Samaniego
Anatol Belski
Andrei Gherzan
Anton D. Kachalov
Anuj Mittal
Bruce Ashfield
Catalin Enache
Charlie Davies
Chee Yang Lee
Chen Qi
Chris Laplante
Christopher Larson
Denys Dmytriyenko
Diego Santa Cruz
Dorinda
Dorinda Bassey
Douglas Royds
Florian Bezdeka
He Zhe
Jan Brzezanski
Jain Sangeeta
Jan-Simon M=F6ller
Jon Mason
Joshua Watt
Khem Raj
Lee Chee Yang
Li Wang
Marek Vasut
Mark Hatle
Martin Jansa
Meh Mbeh Ida Delphine
Michael Halstead
Michael Trensch
Mikko Rapeli
Milan Shah
Mingli Yu
Minjae Kim
Naveen Saini
Peter Kjellerstedt
Petr Vorel
Purushottam Choudhary
Richard Purdie
Robert P. J. Day
Ross Burton
Scott Murray
Stefan Ghinea
Stefan Schmidt
Stephen Jolley
Steve Sakoman
Teoh Jay Shen
Thomas Viehweger
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
openssl: update to 1.1.1k to fix CVE-2021-3450 and CVE-2021-3449
git: fix CVE-2021-21300
connman: fix CVE-2021-26675, CVE-2021-26676
cve-check: CVE_VERSION_SUFFIX to work with patched release
cve-update-db-native: consider version suffix when update CVE db
wpa-supplicant: update CVE-2021-27803.patch
python3-jinja2: set CVE_PRODUCT
shadow: whitelist CVE-2013-4235
qemu: fix CVE-2021-20203
wpa-supplicant: fix CVE-2021-27803
librepo: fix CVE-2020-14352
libsdl2: fix CVE-2020-14409 CVE-2020-14410
wpa-supplicant: fix CVE-2021-0326
bind: fix CVE-2020-8625
screen: fix CVE-2021-26937
python3: fix CVE-2021-3177
u-boot: fix CVE-2020-8432 and CVE-2020-10648
cve-check: add CVE_CHECK_REPORT_PATCHED variable to suppress reporting of p=
atched CVEs
cve-check: introduce CVE_CHECK_RECIPE_FILE variable to allow changing of pe=
r-recipe check file


- ---------------
Fixes
- ---------------
build-appliance-image: Update to dunfell head revision
poky.conf: Bump version for 3.1.7 release
documentation: prepare for 3.1.7 release
image,populate_sdk_base: move 'func' flag setting for sdk command vars
buildhistory: add missing vardepsexcludes
populate_sdk_ext: Avoid copying and producing .pyc files
libtool: make sure autoheader run before autoconf
bitbake.conf: correct description of HOSTTOOLS_DIR
documentation-audit.sh: Fix typo in specifying LICENSE_FLAGS_WHITELIST
run-postinsts: do not remove postinsts directory.
cryptodev-module: fix build failure with kernel v5.10
cryptodev-module: Backport a patch to fix build failure with kernel v5.8
linux-firmware: Fix packaging
linux-yocto/5.4: update to v5.4.107
bitbake: Force parser shutdown after catching an exception
linux-yocto/5.4: update to v5.4.105
selftest/wic: Fix dependency issue in rawcopy test
linux-dummy: add empty dependent packages
devshell.bbclass: Exceptions displayed within devpyshell
scripts/verify-bashisms: Update checkbashisms.pl URL
externalsrc: Detect code changes in submodules
cmake: Fully-qualified path to ar
initrdscripts: init-install-efi.sh install extra files for ESP
glibc: Pull latest 2.31 HEAD
iputils: fix various arping regressions
systemd-conf: do not ask for DHCP if configured on kernel command line
maintainers: update own email address
meta-selftest: Add HOMEPAGE / DESCRIPTION
bitbake-whatchanged: change ending quote to proper period
populate_sdk_ext: record METADATA_REVISION
devtool: Fix do_kernel_configme task
iso-codes: fix protocol in SRC_URI
Revert "sstatesig.py: show an error instead of warning when sstate manifest=
 isn't found"
bitbake: runqueue: Add setscene task overlap sanity check
bitbake: runqueue: Fix task execution corruption issue
cups: use /run instead /var/run in systemd's unit file
insane: don't check for a warning string that is never output
build-appliance-image: Drop kernel module handling
ptest-packagelists: remove libinput-ptest
bitbake-bblayers/create: Fix incorrect priority help message
runqemu: use "raw" instead of "bin" for ovmf
dtc: Fix array-bounds error
rxvt-unicode: Do not use throw specifications
valgrind: Increase timeout duration 30 -> 90 s
oeqa/pam: Need shadow installed for the tests
wic: Warn if an ext filesystem affected by the Y2038 problem is used
selftest/reproducible: Add ability to pull some objects from sstate
efivar: Fix reproducibility issue
swig: Fix reproducibility issue
syslinux: Fix reproducibility issues
libid3tag: Fix reproducibility issue
meta/recipes-devtools: Add HOMEPAGE / DESCRIPTION
meta/recipes-graphics: Add HOMEPAGE / DESCRIPTION
meta/recipes-multimedia: Add HOMEPAGE / DESCRIPTION
meta/recipes-kernel: Add HOMEPAGE / DESCRIPTION
meta/recipes-support: Add HOMEPAGE / DESCRIPTION
meta/recipes-extended: Add HOMEPAGE / DESCRIPTION
meta-skeleton: Add HOMEPAGE / DESCRIPTION
meta/recipes-rt: Add HOMEPAGE / DESCRIPTION
recipes-support: Add missing HOMEPAGE and DESCRIPTION for recipes
recipes-sato: Add missing HOMEPAGE and DESCRIPTION for recipes
recipes-multimedia: Add missing HOMEPAGE and DESCRIPTION for recipes.
recipes-kernel: Add missing HOMEPAGE and DESCRIPTION for recipes.
recipes-graphics: Add missing HOMEPAGE and DESCRIPTION for recipes.
recipes-gnome: Add missing HOMEPAGE and DESCRIPTION for recipes
linux-yocto/5.4: update to v5.4.103
linux-yocto/5.4: update to v5.4.101
linux-yocto/5.4: update to v5.4.99
yocto-uninative.inc: version 3.0 incorporate seccomp filter workaround
yocto-uninative.inc: version 2.11 updates glibc to 2.33
linux-yocto: update genericx86* to v5.4.94
linux-yocto: update genericx86 to v5.4.87
linux-yocto: update genericx86* SRCREV for 5.4
local.conf.sample.extended: prefer INIT_MANAGER
local.conf.sample.extended: fix double 'of' typo
meta/recipes-core: Add HOMEPAGE / DESCRIPTION
meta/recipes-devtools: Add HOMEPAGE / DESCRIPTION
meta/recipes-connectivity: Add HOMEPAGE / DESCRIPTION
meta/recipes-bsp: Add HOMEPAGE / DESCRIPTION
cups: Fix reproducibility issues
asciidoc: Switch to using the main branch
package/package_rpm: Disable font_provides configuration for reproducibilty
reproducible: Improve SOURCE_DATE_EPOCH_FALLBACK handling
reproducible_builds: SOURCE_DATE_EPOCH should not be 0
report-error.bbclass: Add layer and bitbake version info to error report
libpcre: Drop old/stale patch
ca-certificates: Clean up two patches and submit upstream
libevdev: Update patch status to backport
maintainers: Update email address for Victor
bitbake.conf: Split PSEUDO_IGNORE_PATHS to be more readable
bitbake.conf/image: Move image specific PSEUDO_IGNORE_PATHS to image class
populate_sdk: Add directories to PSEUDO_IGNORE_PATHS
image: Add directories to PSEUDO_IGNORE_PATHS
sstatesig.py: show an error instead of warning when sstate manifest isn't f=
ound
linux-firmware: upgrade 20201218 -> 20210208
openssl: upgrade 1.1.1i -> 1.1.1j
bitbake: __init__.py: Fix bitbake debug log handling
selftest/reproducible: Don't call sync between each file compare
qemu: Backport patch to avoid assertion fails on icache line size
oeqa/commands: Fix compatibility with python 3.9
oe/recipeutils: Fix copying patches when BBLAYERS entries are not normalise=
d
icu: backport fix for rare random genrb segmentation fault
wpebackend-fdo: Fix missing .so symlink when using dev package
package_rpm: Enable use_source_date_epoch_as_buildtime in package_rpm class
df.py: Add feature check for read-only-rootfs
weston-init: Fix weston-keyboard path in weston.ini
mtd-utils: Remove duplicate assignments to alternative link names
libomxil: Fix up commercial license flag
npm.bbclass: avoid building target nodejs for native npm recipes
groff: Fix determinism issue
xmlto: Fix reproducibility
xorg-minimal-fonts: Really fix determinism
xorg-fonts-minimal: Fix reproducibility
watchdog: Avoid reproducibility failures after fixing build
watchdog: Fix determinism issue from sendmail host path
vim: Fix a race over creation of the desktop files
vim: Improve determinism
cwautomacros: Ensure version is set deterministically
oeqa/runlevel : add test for runlevels
oeqa: reproducible: Add more logging
oeqa: reproducible: Fix SSTATE_MIRRORS variable
buildtools-extended-tarball: Add glibc-gconvs needed for build
quilt: Be determnistic about column presence
linux-yocto/5.4: update to v5.4.98
linux-yocto/5.4: update to v5.4.96
go: update to 1.14.15
sudo: 1.8.31 -> 1.8.32
cve-check.bbclass: add layer to cve log
pseudo: Update to include fixes for glibc 2.33
pseudo: Update for rename and faccessat fixes
pseudo: Update to work with glibc 2.33
poky.conf: Drop OELAYOUT_ABI poking
