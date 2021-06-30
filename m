Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.339.1625097128432824787
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 16:52:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=b62C051k;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="208266997"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; 
   d="scan'208,217";a="208266997"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2021 16:52:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; 
   d="scan'208,217";a="447667787"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga007.jf.intel.com with ESMTP; 30 Jun 2021 16:52:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 16:52:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 30 Jun 2021 16:52:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 30 Jun 2021 16:52:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+JorD8hu3RiN6IQ+7RFDICw/4Q/YQQhHwja3696Ajh14KABOz/obbi1EJb2dAI134kA0F9ZTDo602yIPb1JOrL7dM1De0+PQfRUwCLmpJhRlF5qFwqBfyhc1rgtJCc6wLxy2VsnKCvfLVM6FTblOpVQfdN3Nc4HZAlnnrOgvqkADzbVB4MsXmy3Nnx/h+v5wz8NAqtn4/3SQevFZ5Uk7CgpYCisEm65bFvdpdX4ghwoEhznkbE+n2GEAqwBGAEiOcso/JKrbpGyTyBCxHTWkroqC4MMH89rSdAOjpgUmyCp1Y4oqW768e9PwhtXROAzYa96wnhePRTz6LYA+jrANw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKNe+wnLBl6+krZ6bBy1vSZ3xA+hurz/0eHq5fHC4kY=;
 b=bnCuYa4D8rmfiu/whwzC0Tz4JAGW+NB/e/AxbNCTvpzOAE3VShLgTDPuziOvxQvlePoK2E1QPBVI2RNuFd7torX095JCU8J4QNc1tYJaAy/id4LqqC16jD2ycg6uExON6uKaFz6FUjowcKO8sUrR/i4p2pX8Vg9ifKvdG1MyFirMSBX4+pjwDgg2YYZfUSc/9xGlhcd2KAyhEIwoHdUwdqUAMpOMxRzZNYB1EAXpsyOM/zEviodiepvoC4pwZ7cV/oo9QicHuEB/ziCX0icDELhG/YGiZ9fIlvLEy/umydU3xFCJj3pRq317IMlO6KUj0n8b0ttywHDVxJFy+pGhyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKNe+wnLBl6+krZ6bBy1vSZ3xA+hurz/0eHq5fHC4kY=;
 b=b62C051kyJnhs5pLfk+xuyEwwqdUqhzCTeG286VjsoE4rQhElqafG3hbIqYSkr2TCEb86W0c7JSWQ7KLRVgiWyggd3ECfMHZC62B2XnCr7BwsQGIikBcNLCxpivjdGJXkz+Tsg16USMYuYkNunxZgy6nTRYw944jWX48gHr2biQ=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by BYAPR11MB3062.namprd11.prod.outlook.com (2603:10b6:a03:92::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Wed, 30 Jun
 2021 23:51:59 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::5089:2b85:6b13:abe9%4]) with mapi id 15.20.4264.027; Wed, 30 Jun 2021
 23:51:59 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.9 (dunfell-23.0.9) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.9 (dunfell-23.0.9) is Released
Thread-Index: AdduCVNBo+RrFnvOSnWYZDoaypCe2w==
Date: Wed, 30 Jun 2021 23:51:59 +0000
Message-ID: <BYAPR11MB3301C6EDD2F39B928882DB7B88019@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [184.103.172.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f3ecc9e-6c07-43ca-2ecd-08d93c220cd5
x-ms-traffictypediagnostic: BYAPR11MB3062:
x-microsoft-antispam-prvs: <BYAPR11MB30626B3F40B8F8F13DD9128B88019@BYAPR11MB3062.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9BcEINgkbAOpi+Lxeetbcgyz7Dmnlr91Fz4wSN9lK/g9Ij++kIavEs12PWVzxTLUQP+O3lNC2zrhfp5u9HVeqxuhjhQmqnWon0gsfygWlGeaFREAbKjDtpJg45gkQOZoZn412vl9NwKrYuXscoyXkSZkrWU8pNn6mqo2UXxTyOQbJA3XTfGl35knZjNhcX9AqKGvqVKnVANuE7pGmOSB3AgvSh/fUQ1tCXLcG2lIK0frVPvG2/XQz8gGKaWZkYMzMgZggBwVgBsNPykuL/fqDFTakpV8y/A46BKrGawkXNphnRRl85DR4AybSdQ6IHEzhKSGE7RHG/HnA1jWZEa4u52YAXIKsq9/ru4QyF2z4FrsWKPHrn9/ZDH+BE16YDoZi5rsr8bnFdVsrL3bts0am/SYpa09PsfhtPDZAoHdW9TpKyzYXG2mkPWL4A0+lgJAXlGdpY3nYCDw2yotR36pNiDxWfPv0LcMqaWjB8Qr25hHAX4dW1fWXnkyzOGnB630wXddaVEKxtd1P8LH7eJ4yzKqSpTeUcHIW010xsWoODu7HCFXcrjtMdclZsj15IK7PK/y4mUWWvqGO5T6dXK27ZLTDbNfzbGXYJsGkMvrCdajnq0AkgYqpVxgB7Z7VsmKAdswxbGsJX+GKP0TlPKpH4fOpVt6p/AnhEFdFF40IcKOT7XHij735JRZzcmjy4avP0DMkM1bNqjV+KxHCj934jucMKRhSJL50ipqts2ylIQDW0Lgks+gJt7cQZa6u2Ib3uN37KwGcoxWoZSsU2dWYoJrvuiVCXYw66Bs8F6K2o+YQhjTucEXUigiwLnzluaJz4SwaJbEBfaSM19zbMPDshwM7BKyfFNKTfyyBddMlSQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(366004)(39860400002)(376002)(136003)(396003)(8676002)(8936002)(316002)(110136005)(26005)(9326002)(6506007)(66946007)(76116006)(64756008)(71200400001)(66476007)(38100700002)(66446008)(2906002)(186003)(52536014)(122000001)(66556008)(86362001)(83380400001)(966005)(5660300002)(33656002)(478600001)(7696005)(9686003)(55016002)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q8SA+paMWMtRJTJ8Vf/1y111BMpE5uRvPik1HLA0iMwMZQPKMWMtGyKBoEm1?=
 =?us-ascii?Q?PUBVsLwVJdc/xpDpqLBN2SxyiybMaJtTlq9gxCrfd9Px6WuM3+XxBt8tBjz/?=
 =?us-ascii?Q?BVAD5f8y2TGzt6ONo5EOKjbqAfIUJCs4Jww3sqBYAKocvmKQqZ2QnSY8j5qu?=
 =?us-ascii?Q?UIYWi+xtq8jIBQFT5xTCp0e/V2vUxtVAtY5RKQIH2vm4OXU7IHILrrKafbbC?=
 =?us-ascii?Q?JdmDfFLB+QYuTzPESVE7E56bwHs4CVm6urPAW+bv3avXo745gRx2Lnz3w8/H?=
 =?us-ascii?Q?dMkYyktYaovlyMxL3xE96RkOSPgFqhzcds64DUakDx4Oyi86WedGqaPW2ruO?=
 =?us-ascii?Q?L6GwXcaisSuhES/tOmraMQBtJbjW5su14uZXo0SXnoBXfBd6sZ+iOIbIdz0B?=
 =?us-ascii?Q?tJ1oLgoLiaZgSgk+V7rQ+z4uXfmbbnGJ+wIS2N172lkcrMe00ZnYznzZNsAP?=
 =?us-ascii?Q?FfVXffxDMzDep9/I53WiBBiGjsJ0Dr2gd0D9SaXK1rzWsctZEb2o1Lissv74?=
 =?us-ascii?Q?t+h/EQ/H2si2dOj28FAz4xAi7Yv9UigwAALhpWF1LzGj9ILOgNBqnayz0ZGI?=
 =?us-ascii?Q?zISALfETFEx00V01PMXmRBxIvGGGcDuXoQPkKbjRMczwvblQzu6G7/g0ZCli?=
 =?us-ascii?Q?C0ao9iWVpDnSHK+sfAU371/98XM9TMCBL9q4K8mAxiEaj04gYM9kx2wqfJYe?=
 =?us-ascii?Q?997nP2CbK6R+F6t2Araz+FBpFuypG+6R7UhgzGG41bPmv2aqsjoEFyRJiLfB?=
 =?us-ascii?Q?yRgXRXW1cJGcaL7bSnd4wSdnE7xesGM3hfT1gjfoIUUSE2q5a+uJHJ04WWFd?=
 =?us-ascii?Q?HtmkEiLvVjSvU8Aiq5KMvtNxBZ7mTl6jh4wq/ZJiTDpAq3Y91I+T3OFdpAT3?=
 =?us-ascii?Q?tAz79+iPhE7l3ATUlnoAR4htsXfhN+RwEDwpiV+iKe49tTQkuL4R23qY07yg?=
 =?us-ascii?Q?bhw2GR8TNmOJTHzuDdYkfVQH1Q7WxM16dnYnHv98HhpDIr/5MfFW7ZY83bI/?=
 =?us-ascii?Q?xD9WgB1IuPqkus2F1cHvXxpx3Gt/NEPD0AX/yrgeGBR5WVIEZTTMUUXU65Rx?=
 =?us-ascii?Q?6Imj3M/Z81AKW7kCpbrscft5IK9gxe3OqmWRDqduLgv3AzrWyY75bP2fs3B2?=
 =?us-ascii?Q?OG4BnRzhJ7QGTON9KZYRLvibj5E/BVX6WzXTtmN0UqbY+uKrW1MFzCCGWJVL?=
 =?us-ascii?Q?vngBaqkBOY7VCyXcJOoThkYHo3yVDoDzKiIM04EZlk/i2KVTuGbU40ZkTnh7?=
 =?us-ascii?Q?+mK2y7kW/oRopAAm0SWXfVoIRZbpd7FVsqBzsO9rtXik/jVaOG3FZbPZ5bUE?=
 =?us-ascii?Q?LNgdfqK3uexk5zN7oVIdTjRp?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f3ecc9e-6c07-43ca-2ecd-08d93c220cd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 23:51:59.1008
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAZDyZESBSZO6c0Xdqd4hCg8jnU5PRqwaTLXsqrz8U1kZ+rQztMqtVgbGmAD6hFR/3NJ+uRHknqGwjaCXv4u6H52bh6M606bOdJZgillngw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3062
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3301C6EDD2F39B928882DB7B88019BYAPR11MB3301namp_"

--_000_BYAPR11MB3301C6EDD2F39B928882DB7B88019BYAPR11MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.9 (dunfell-23.0.9) Release=
 is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/poky-dunfell-2=
3.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/poky-dunfell-23.0.9.tar.b=
z2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/testreport.txt

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>

- --------------------------
yocto-3.1.9 Release Notes
- --------------------------

- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.9
Git Revision: 43060f59ba60a0257864f1f7b25b51fac3f2d2cf
Release Artefact: poky-dunfell-23.0.9
sha: d2a7acbaca384408594b72f25883f10b454215af97e31914e8a11035a0334424
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/poky-dunfell-2=
3.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/poky-dunfell-23.0.9.tar.b=
z2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.9-dunfell
Git Revision: ac8181d9b9ad8360f7dba03aba8b00f008c6ebb4
Release Artefact: oecore-dunfell-23.0.9
sha: d4fc5e5333bc6b2dee464d1845554920e3d504ab16a47e6d335d5c8a185e0dcd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/oecore-dunfell=
-23.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/oecore-dunfell-23.0.9.tar=
.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.9
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.9
sha: e5f8e6777003d329fe7ff9e69c9e9f46edf5a272198a194cbc79b866c7b9dab6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/meta-mingw-dun=
fell-23.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/meta-mingw-dunfell-23.0.9=
.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.9
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.9
sha: 39bffee0bc5a93e224073036e6a544d83c40f5bccc4c8faeb3995cef323969e1
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/meta-gplv2-dun=
fell-23.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/meta-gplv2-dunfell-23.0.9=
.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.46
Tag: 2020-04.9-dunfell
Git Revision: 0e0af15b84e07e6763300dcd092b980086b9b9c4
Release Artefact: bitbake-dunfell-23.0.9
sha: 9a3da4317d9e43ef9b0e66ed0d8070d373fc41fa34648e2a6b04c591d12b97d0
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.9/bitbake-dunfel=
l-23.0.9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/bitbake-dunfell-23.0.9.ta=
r.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.9
Git Revision:0fadb292429b4147408798ed4c806ba6d9dd81b8

- -------------
Contributors
- -------------
akash hadke
Andrea Adami
Bruce Ashfield
Changqing Li
Daniel McGregor
Guillaume Champagne
Jain Sangeeta
Kai Kang
Klaus Heinrich Kiwi
Lee Chee Yang
Michael Halstead
Ming Liu
Ovidiu Panait
Richard Purdie
Ross Burton
Sana Kazi
Stephen Jolley
Steve Sakoman
Tony Tascioglu
Vineela Tummalapalli
Volker Vogelhuber
Yi Zhao

- ---------------
Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
Revert "python3: fix CVE-2021-23336"
python3: fix CVE-2021-23336
gstreamer-plugins-good: fix CVE-2021-3497 CVE-2021-3498
gnutls: fix CVE-2021-20231 CVE-2021-20232
libxml: fix CVE-2021-3517 CVE-2021-3537
grub: Exclude CVE-2019-14865 from cve-check
cve-extra-exclusions.inc: add exclusion list for intractable CVE's
expat: set CVE_PRODUCT
openssh: Add fixes for CVEs reported for openssh
tiff: Add fix for CVE-2020-35521 and CVE-2020-35522
cups: whitelist CVE-2021-25317


- ---------------
Fixes
- ---------------
bitbake: cooker: Avoid parser deadlocks
bitbake: cooker: Ensure parser is cleaned up
bitbake: cooker: Explictly shut down the sync thread
bitbake: cooker: Ensure parse_quit thread is closed down
kernel.bbclass: fix do_sizecheck() comparison
valgrind: fix a typo
ruby: 2.7.1 -> 2.7.3
bind: 9.11.22 -> 9.11.32
poky.conf: Bump version for 3.1.9 release
poky.conf: Add openSUSE Leap 15.2 as a supported distro
documentation: prepare for 3.1.9 release
ref-system-requirements.rst: Add openSUSE Leap 15.2 to list of supported di=
stros
variables: Add documentation for KERNEL_DTC_FLAGS
kernel-devicetree: Introduce KERNEL_DTC_FLAGS to pass dtc flags
kernel-fitimage: Don't use unit addresses on FIT
linux-yocto/5.4: update to v5.4.123
linux-yocto/5.4: update to v5.4.120
Revert "busybox: make busybox's syslog.cfg depend on VIRTUAL-RUNTIME_base-u=
tils-syslog"
linux-firmware: upgrade 20210315 -> 20210511
pkgconfig: update SRC_URI
oeqa/runtime/rpm: Drop log message counting test component
image-live.bbclass: order do_bootimg after do_rootfs
package_rpm: pass XZ_THREADS to rpm
unfs3: correct configure option
initramfs-framework:rootfs: fix wrong indentions
kernel-fitimage.bbclass: fix a wrong conditional check
lib/oe/gpg_sign.py: Fix gpg verification
sstate: Ignore sstate signing key
glibc: Add 8GB VM usage cap for usermode test suite
libxml2: Add bash dependency for ptests.
libxml2: Reformat runtest.patch
linux-yocto/5.4: update to v5.4.119
linux-yocto/5.4: update to v5.4.118
linux-yocto/5.4: update to v5.4.117
kernel-yocto: provide debug / summary information for metadata
busybox: make busybox's syslog.cfg depend on VIRTUAL-RUNTIME_base-utils-sys=
log
cve-extra-exclusions.inc: Clean up merged CPE updates
cve-extra-exclusions: Fix typos

--_000_BYAPR11MB3301C6EDD2F39B928882DB7B88019BYAPR11MB3301namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.9 (=
dunfell-23.0.9) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/poky-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/po=
ky-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/RELEASENOTES<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/testreport.txt<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.9 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.9<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 43060f59ba60a0257864f1f7b25b51fac3f2d2=
cf<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.9<o:p></o:p></p>
<p class=3D"MsoNormal">sha: d2a7acbaca384408594b72f25883f10b454215af97e3191=
4e8a11035a0334424<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/poky-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/po=
ky-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.9-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: ac8181d9b9ad8360f7dba03aba8b00f008c6eb=
b4<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.9<o:p></o:p></=
p>
<p class=3D"MsoNormal">sha: d4fc5e5333bc6b2dee464d1845554920e3d504ab16a47e6=
d335d5c8a185e0dcd<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/oecore-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/oe=
core-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.9<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.9<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: e5f8e6777003d329fe7ff9e69c9e9f46edf5a272198a194=
cbc79b866c7b9dab6<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/meta-mingw-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/me=
ta-mingw-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.9<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.9<o:p></o:=
p></p>
<p class=3D"MsoNormal">sha: 39bffee0bc5a93e224073036e6a544d83c40f5bccc4c8fa=
eb3995cef323969e1<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/meta-gplv2-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/me=
ta-gplv2-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.46<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.9-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0e0af15b84e07e6763300dcd092b980086b9b9=
c4<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.9<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 9a3da4317d9e43ef9b0e66ed0d8070d373fc41fa34648e2=
a6b04c591d12b97d0<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.9/bitbake-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.9/bi=
tbake-dunfell-23.0.9.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.9<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:0fadb292429b4147408798ed4c806ba6d9dd81b=
8<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- -------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- -------------<o:p></o:p></p>
<p class=3D"MsoNormal">akash hadke<o:p></o:p></p>
<p class=3D"MsoNormal">Andrea Adami<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Changqing Li<o:p></o:p></p>
<p class=3D"MsoNormal">Daniel McGregor<o:p></o:p></p>
<p class=3D"MsoNormal">Guillaume Champagne<o:p></o:p></p>
<p class=3D"MsoNormal">Jain Sangeeta<o:p></o:p></p>
<p class=3D"MsoNormal">Kai Kang<o:p></o:p></p>
<p class=3D"MsoNormal">Klaus Heinrich Kiwi<o:p></o:p></p>
<p class=3D"MsoNormal">Lee Chee Yang<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Ming Liu<o:p></o:p></p>
<p class=3D"MsoNormal">Ovidiu Panait<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Ross Burton<o:p></o:p></p>
<p class=3D"MsoNormal">Sana Kazi<o:p></o:p></p>
<p class=3D"MsoNormal">Stephen Jolley<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Tony Tascioglu<o:p></o:p></p>
<p class=3D"MsoNormal">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoNormal">Volker Vogelhuber<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">N/A<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;python3: fix CVE-2021-23336&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">python3: fix CVE-2021-23336<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer-plugins-good: fix CVE-2021-3497 CVE-2021-3=
498<o:p></o:p></p>
<p class=3D"MsoNormal">gnutls: fix CVE-2021-20231 CVE-2021-20232<o:p></o:p>=
</p>
<p class=3D"MsoNormal">libxml: fix CVE-2021-3517 CVE-2021-3537<o:p></o:p></=
p>
<p class=3D"MsoNormal">grub: Exclude CVE-2019-14865 from cve-check<o:p></o:=
p></p>
<p class=3D"MsoNormal">cve-extra-exclusions.inc: add exclusion list for int=
ractable CVE's<o:p></o:p></p>
<p class=3D"MsoNormal">expat: set CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Add fixes for CVEs reported for openssh<o:p=
></o:p></p>
<p class=3D"MsoNormal">tiff: Add fix for CVE-2020-35521 and CVE-2020-35522<=
o:p></o:p></p>
<p class=3D"MsoNormal">cups: whitelist CVE-2021-25317<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Avoid parser deadlocks<o:p></o:p></=
p>
<p class=3D"MsoNormal">bitbake: cooker: Ensure parser is cleaned up<o:p></o=
:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Explictly shut down the sync thread=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Ensure parse_quit thread is closed =
down<o:p></o:p></p>
<p class=3D"MsoNormal">kernel.bbclass: fix do_sizecheck() comparison<o:p></=
o:p></p>
<p class=3D"MsoNormal">valgrind: fix a typo<o:p></o:p></p>
<p class=3D"MsoNormal">ruby: 2.7.1 -&gt; 2.7.3<o:p></o:p></p>
<p class=3D"MsoNormal">bind: 9.11.22 -&gt; 9.11.32<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.9 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">poky.conf: Add openSUSE Leap 15.2 as a supported dis=
tro<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: prepare for 3.1.9 release<o:p></o:p><=
/p>
<p class=3D"MsoNormal">ref-system-requirements.rst: Add openSUSE Leap 15.2 =
to list of supported distros<o:p></o:p></p>
<p class=3D"MsoNormal">variables: Add documentation for KERNEL_DTC_FLAGS<o:=
p></o:p></p>
<p class=3D"MsoNormal">kernel-devicetree: Introduce KERNEL_DTC_FLAGS to pas=
s dtc flags<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-fitimage: Don't use unit addresses on FIT<o:p=
></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.123<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.120<o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;busybox: make busybox's syslog.cfg depe=
nd on VIRTUAL-RUNTIME_base-utils-syslog&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210315 -&gt; 20210511<o:p>=
</o:p></p>
<p class=3D"MsoNormal">pkgconfig: update SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/runtime/rpm: Drop log message counting test com=
ponent<o:p></o:p></p>
<p class=3D"MsoNormal">image-live.bbclass: order do_bootimg after do_rootfs=
<o:p></o:p></p>
<p class=3D"MsoNormal">package_rpm: pass XZ_THREADS to rpm<o:p></o:p></p>
<p class=3D"MsoNormal">unfs3: correct configure option<o:p></o:p></p>
<p class=3D"MsoNormal">initramfs-framework:rootfs: fix wrong indentions<o:p=
></o:p></p>
<p class=3D"MsoNormal">kernel-fitimage.bbclass: fix a wrong conditional che=
ck<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/gpg_sign.py: Fix gpg verification<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sstate: Ignore sstate signing key<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Add 8GB VM usage cap for usermode test suite<=
o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Add bash dependency for ptests.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">libxml2: Reformat runtest.patch<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.119<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.118<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.117<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-yocto: provide debug / summary information fo=
r metadata<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: make busybox's syslog.cfg depend on VIRTUAL=
-RUNTIME_base-utils-syslog<o:p></o:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions.inc: Clean up merged CPE update=
s<o:p></o:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions: Fix typos<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR11MB3301C6EDD2F39B928882DB7B88019BYAPR11MB3301namp_--
