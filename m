Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web11.698.1628637766859416420
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 16:22:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=wj/WQqSH;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: vineela.tummalapalli@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="215040774"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; 
   d="scan'208,217";a="215040774"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2021 16:22:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; 
   d="scan'208,217";a="506536094"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2021 16:22:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 16:22:43 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 16:22:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 10 Aug 2021 16:22:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 16:22:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUbdrg0Gp80us1y+wIJ3JUEWKxnaAs4ay6GqBbPW244MK9Q1IaRYvF669NoBm+EYDn63odRKkJ0mJNxtRMw/xc7fitnAwRG64WHszGZZDpqIrp7DC7LyuLx2IKm94WRZOrD3LiV+gUlWdW4xgLHsowYJkbRELAs7F3VcVGcdMfHUQWzqxe6DNosNS1+VYD+VfDcYnAB3MRBuBf3FJwv+0264LFggj8qZY7i8mSTHjg3j1/LRYt4UHE7ICmRaMVQ92mfJgfVI89h9vHvmOOEjNLfO7BZ7nmbCxxLfE5a0RgK8M/DQv+eGRXch7cQoIrd2EmUnWaA0W7VmkcUu/q7fUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOLpZC0TXHFYVtHrTrAZxab77pmw5/qM0TJzQy/3gPc=;
 b=iSyIR3BKVNyGLm5aNn6NixDWGe2yHJIBVM7bcNq6KKcglE3gr3Ge2o/3vthytirjjTlc0RYMCE7nB9KGFU/7NvInjSYVSu5flGrdWj2ND76IOHccfgTPnN1RQhyo5UX9PhEPfxV7ZlZihivfNYlFWaBHsuVbVni8VZgzOltPzej0xrisXr9fZZ97BmM91Hfb8fJzQ1PJmWhocGTKjQTTGOQBM1m0KLsoN3gDDMjLa7NntfnHikDzpXQ8jXSpjtMD26n7ckn5F9VFI5L8Ad0Uc29ZOBFTvdGU9pVQnhGsghpLkBsnOQvVmydL73iqhMbZZrknIVuWAvwDlu0gDcJC4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOLpZC0TXHFYVtHrTrAZxab77pmw5/qM0TJzQy/3gPc=;
 b=wj/WQqSHxZrQcTtDqeIm0D8OtaVI82RGTtvyFBwsIlGJkHmSuisYsd0TkcR5RlreWmtwMOFzKXegzQduwuRT+sw/7Ty+76D10BvIGkDrhshzhwAjco4xZWnrLte/2jJiSWryfMStULgg9sKHOhZDUCQp0qA21UbiWWJ1Bwevjp8=
Received: from BYAPR11MB3301.namprd11.prod.outlook.com (2603:10b6:a03:7f::26)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.23; Tue, 10 Aug
 2021 23:22:40 +0000
Received: from BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9]) by BYAPR11MB3301.namprd11.prod.outlook.com
 ([fe80::1594:f1cc:8fd2:81d9%4]) with mapi id 15.20.4415.015; Tue, 10 Aug 2021
 23:22:40 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.10 (dunfell-23.0.10) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.10 (dunfell-23.0.10) is
 Released
Thread-Index: AdeOPfO0WA+an+OvQ7m13EkKZNCWpQ==
Date: Tue, 10 Aug 2021 23:22:40 +0000
Message-ID: <BYAPR11MB3301BCA0E91FFA7BA7075D1E88F79@BYAPR11MB3301.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f03fee2a-691f-4308-485d-08d95c55bfc0
x-ms-traffictypediagnostic: SJ0PR11MB5134:
x-microsoft-antispam-prvs: <SJ0PR11MB513498790378F743956D718B88F79@SJ0PR11MB5134.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VO++LWM8TAvRpiIEciMHr5dwj57yoYcsTBa4RlWxh2R3zI2274y0TpZzpTSCv9aAnqy2tecMeA+Sp+d8T6TQj50a2AdHAImHKuIGXW4xCsPRSVW319N6gpCYf8uEPfPlo4OJE1Nuz4lq9TId2b26KMZIgOdRCKWjWUzUYln9xrlgr2+rkKv7qVXcJDRUkXvQaMAmYfN96X5lgM2ceuluSOayeXySwieFLo9HpU5/ybam4ROo+bP/qEESxKSnJaZ6nOI0f9W5qDajgK1L05Sn0R5cnz9YARDBrfBUXUrP1vpGch8/OYYZWNAc34nIyuzjzBNWEbpJbxZ2Y420UrP0MTFZJqfzT6jsOrjxNcnbvZjMKbMntPycSQmE7p8iH+DSrq9mV2wM7WYnkyxP67MhvVzk9B1vroul6wZmccToTU/w4Z0r4FPoHONvBCgbcS6jY0kjB0lKDZKobh8AyNp8NphC8BNQnjkmJgfmytayHl0j8wWRiGIlZwT6dUENp5x9v9poo5e07zzQTvOmOuTIMN1dI8QZRpNunoQD3aygw8NZyGtd3Gvy5nKFc7/nnnTMzIJeds6xTJFoYU9jLpzvc58q0f7LI0UvbCRF/mTFFxle+RUpHm9uGdZpRYRa9+7Ts20As8jtx6QYLQhjbmZicoUdA/ZGp9WpO7yJN+xBkq/UoER8ey+ZZ2OgXRl1ZDDwockBnWKM9Td6eO3e44wr/PWWAwmT79Twa52HDzAuCfwzDLYK31FIamDk7Z20pv8cAdQ6sl/nS9Rmtz38lVx0sK2dAbXeZllr0Dh+WiBz2G/8zBWkZXPJIXcnjc+dGUlVVkGH2shHazbun+l0XkO4gOgzYVvnwFjzShFlCSje3UU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3301.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(33656002)(8676002)(966005)(186003)(55016002)(5660300002)(166002)(9686003)(83380400001)(64756008)(38100700002)(66946007)(66476007)(110136005)(7696005)(66446008)(66556008)(71200400001)(66574015)(52536014)(508600001)(26005)(9326002)(38070700005)(2906002)(76116006)(122000001)(8936002)(6506007)(86362001)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?JAPyGpXv/yn5vLpmg8lblO0D9oNKbjgMxd3s0vBAzTCsuRUSUzg1bh+CWR?=
 =?iso-8859-1?Q?dtqW6Dt+MDtlsa/q8fbSPVr7vPkH7W26zRIpaSdE1aJ8nJvDFO8WHsJ6wy?=
 =?iso-8859-1?Q?Dkn16+kz6Z9V3mlsNAztsSLsBvVJxPBG26/XZOyA0vl7VhvhjKSc1pIS1F?=
 =?iso-8859-1?Q?Pvt2c/AaudAg5O+nMv6IBMTP6AkFZbXPQQeGOKeJeeuvIoBXCCtjabDN27?=
 =?iso-8859-1?Q?Eb9ahaTEkhNLxs7guX2bHfwlaSOV9XgYYEP9xgDzD9NMVQM+KZaqrtb2AD?=
 =?iso-8859-1?Q?qlar+tf5hnE8yqbCL/0McYnUyuKTmCqUJI8m4ZKkmV2kqqglpsPZFPb1rm?=
 =?iso-8859-1?Q?amI0OD6EAe3Torh6ex3gB527ap4hBfZOo3nBZHhFCy5hQoRm3S/K8aS/Cq?=
 =?iso-8859-1?Q?Qp7GLQJ9Cyz0HzH7ZqVDk/TZugCyfxRwd5rgJ/H8tu3lo6iFOAVKWV6ay/?=
 =?iso-8859-1?Q?lB07vespgzrdZM1X6uKHJftDfW/I+bL92y3Eut9siCyXsRIdeu/kZp/AI/?=
 =?iso-8859-1?Q?MZ4cqp1SKDhCGnZ9+gJVbqJERyKlakGwoMmOQmjUlTew4XEQwxSPYYxO0G?=
 =?iso-8859-1?Q?QuXZOFnHhm5VTrzaQ9PUKUJInI1wFWyBcM/LhAld2WHkUXF6cqBVmtB9so?=
 =?iso-8859-1?Q?MamV1bjNJvVQrwkL2ighSa0chZVyh2/QF+HU5oA61Yz017sOpi5Zqg5bc7?=
 =?iso-8859-1?Q?mqmWHaMLkJ1sGy+ykRC9JDDFIa3vZs7RARYIXb/YV2I0nZZYMiChKBv6g0?=
 =?iso-8859-1?Q?Gotalo83dQG6po8Mksx0V20pwe8QAMb4pu5MhI57sCJcL09zw8gFAKkrTk?=
 =?iso-8859-1?Q?vfrJwCKkxIFWkdAVFrWY5DXBvIAoXjiSEltftTsqloqOnB0H9s6sqlPeDT?=
 =?iso-8859-1?Q?aw+sVeeUF+0zLDLr2/xFnKW+84SmsNB8rr41t2LNHrIiFKG6I4B3UA8KsU?=
 =?iso-8859-1?Q?kMjrmmpN1F6UJOgwiBNRiEayRHkRkqcFnd9+tjBsxdjMTB0jt66eTZIZ0X?=
 =?iso-8859-1?Q?0u09pBbGv87aM5sGpjvrMZMkhKx62J5WkucIdx4BZQr2t/JlgF/+FypM/u?=
 =?iso-8859-1?Q?rqU6YHmQScPCwfB6AOlvPz8uVJD0PfYZ1U8gCzoEIVTOs+KUiPEeJiEbty?=
 =?iso-8859-1?Q?LHOK/H82FzbHekqdxXjHH8ciECmvs6cp/6bvIupXTBfmpSpU08piVNzKi7?=
 =?iso-8859-1?Q?oQnFi7nI4nVT5NLA4C/FJ7paSm3ZTEFIJBElua+1vJE1Am5+Qy0t8IfEJy?=
 =?iso-8859-1?Q?V6824db9y4EmcNn9S0esamK4t3el2nmSo/H9Vy4KtCA89yEd0v/oMvBwva?=
 =?iso-8859-1?Q?h6toY+OV5Mgb3qMnbwn7WVsq430Y6vJO4zoehlB1Ws9E15O8z9a0yen87Y?=
 =?iso-8859-1?Q?UwKZ2+Vusr?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f03fee2a-691f-4308-485d-08d95c55bfc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 23:22:40.7291
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OR0KF8qbY1ivbMengAKZqxd84ZsAdRXPB1MUx1zJ4gLMtWB7vA6uGZuQ2zwW2KTpnNY58SQ2mulzfNO4EJLlzfXI+u4qxE/C9ygqgqJ/fb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3301BCA0E91FFA7BA7075D1E88F79BYAPR11MB3301namp_"

--_000_BYAPR11MB3301BCA0E91FFA7BA7075D1E88F79BYAPR11MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.10 (dunfell-23.0.10) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/poky-dunfell-=
23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar=
.bz2

A gpg signed version of the release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/testreport.tx=
t

Thank you for everyone's contributions to this release.


Vineela Tummalapalli

Yocto Project Build and Release

vineela.tummalapalli@intel.com<mailto:vineela.tummalapalli@intel.com>


- --------------------------
yocto-3.1.10 Release Notes
- --------------------------

- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.10
Git Revision: 2a848e95074318f3a243df7b3f40513a13173a82
Release Artefact: poky-dunfell-23.0.10
sha: 8ff647b1de50cc915491765b6c19e9f1430519e7238275d7e012e0183a7c6f7d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/poky-dunfell-=
23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: 2020-04.10-dunfell
Git Revision: 9ae339ace9274be71bfd3b5e5da64dceac9fa963
Release Artefact: oecore-dunfell-23.0.10
sha: 651943e0919c6731441c67460b35b92f592bf60f9509b0be041cacdcb7db838c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/oecore-dunfel=
l-23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/oecore-dunfell-23.0.10.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.10
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.10
sha: a2db888019c3e35cf12edda6fc68ae4f9522a2a975a57f492e9f86673dfa5c82
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/meta-mingw-du=
nfell-23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/meta-mingw-dunfell-23.0.=
10.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.10
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.10
sha: 97e915d0312fd07a6da3ae0fd21c9463ddeae03bc097b3cfe75234a066bb7045
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/meta-gplv2-du=
nfell-23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/meta-gplv2-dunfell-23.0.=
10.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 1.46
Tag: 2020-04.10-dunfell
Git Revision: 0e0af15b84e07e6763300dcd092b980086b9b9c4
Release Artefact: bitbake-dunfell-23.0.10
sha: 99fbb9ecf86385bf1effbde433f95d465c3ab90084b9dc985597220b60b6c0bd
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.10/bitbake-dunfe=
ll-23.0.10.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.10/bitbake-dunfell-23.0.10.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.10
Git Revision:180d5fcb893e8b2ebcd779d1b07f5c9e8e1bceca

- --------------
Contributors
- --------------
Alexander Kanavin
Andrej Valek
Bruce Ashfield
Chen Qi
Denys Dmytriyenko
Florian Amstutz
Jain Sangeeta
Jasper Orschulko
Khem Raj
Marek Vasut
Michael Halstead
Michael Ho
Minjae Kim
Richard Purdie
Steve Sakoman
Tim Orling
Tomasz Dziendzielski
Yi Zhao
Zolt=E1n B=F6sz=F6rm=E9nyi

- ---------------
Known Issues
- ---------------
AB-INT PTEST: tcl socket.test intermittent failure


- ---------------
Security Fixes
- ---------------
gstreamer-plugins-good: ignore CVE-2021-3497/8 since they are fixed
gstreamer-plugins-base: ignore CVE-2021-3522 since it is fixed
bluez: fix CVE-2021-3588
dhcp: fix CVE-2021-25217
busybox: fix CVE-2021-28831
gstreamer-plugins-base: fix CVE-2021-3522
rpm: fix CVE-2021-3421
libx11: Fix CVE-2021-31535
libxml2: Fix CVE-2021-3518
expat: fix CVE-2013-0340


- ---------------
Fixes
- ---------------
bitbake: providers: replace newly added logger.warn() with logger.warning()
bitbake: data_smart: Allow colon in variable expansion regex
bitbake: data_smart/parse: Allow ':' characters in variable/function names
bitbake: BBHandler: Don't classify shell functions that names start with "p=
ython*" as python function
poky.conf: Bump version for 3.1.10 release
documentation: prepare for 3.1.10 release
kernel-devsrc: fix 32bit ARM devsrc builds
linux-yocto/5.4: update to v5.4.132
linux-yocto/5.4: update to v5.4.131
busybox: add tmpdir option into mktemp applet
sstate: Drop pseudo exclusion
pseudo: Update to latest version including statx fix
pseudo: Add uninative configuration sanity check
report-error: Drop pointless inherit
update-rc.d: update SRCREV to pull in fix for non-bash shell support
tzdata: Allow controlling zoneinfo binary format
oeqa/selftest/multiprocesslauch: Fix test race
dwarfsrcfiles: Avoid races over debug-link files
bootchart2: update 0.14.8 -> 0.14.9
glibc: update to lastest 2.31 release HEAD
webkitgtk: Upgrade to 2.28.4
webkitgtk: upgrade 2.28.2 -> 2.28.3
python3: upgrade 3.8.10 -> 3.8.11
oeqa/selftest/archiver: Allow tests to ignore empty directories
devtool: deploy-target: Fix preserving attributes when using --strip
sstate/staging: Handle directory creation race issue
oeqa/selftest/runcmd: Tweal test timeouts
sstate.bbclass: fix errors about read-only sstate mirrors
package_pkgdata: Avoid task hash mismatches for generic task changes
perf: Use python3targetconfig to ensure we use target libraries
selftest: do not hardcode /tmp/sdk
kernel-devicetree: Fix interaction when packaging disabled
kernel: Fix interaction when packaging disabled
linux-yocto/5.4: update to v5.4.129
linux-yocto/5.4: update to v5.4.128
linux-yocto/5.4: update to v5.4.125
linux-yocto/5.4: update to v5.4.124
python3: apply test skipping patch unconditionally
python3: skip tests requiring tools-sdk
python3-ptest: add newly discovered missing rdeps
python3: upgrade 3.8.9 -> 3.8.10
python3: upgrade 3.8.8 -> 3.8.9
powertop: fix aclocal error too many loops
python3: upgrade 3.8.7 -> 3.8.8
python3: upgrade 3.8.6 -> 3.8.7
python3: upgrade 3.8.5 -> 3.8.6
python3: upgrade 3.8.4 -> 3.8.5
python3: upgrade 3.8.3 -> 3.8.4
python3: upgrade 3.8.2 -> 3.8.3
uninative: Upgrade to 3.2 (gcc11 support)

--_000_BYAPR11MB3301BCA0E91FFA7BA7075D1E88F79BYAPR11MB3301namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.10 =
(dunfell-23.0.10) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/poky-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of the release notes is availab=
le at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/RELEASENOTES">http://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.1.10/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/testreport.txt">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.10/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Vineela Tummalapalli<o:p></o:p></p>
<p class=3D"MsoPlainText">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"mailto:vineela.tummalapalli@intel.com"=
>vineela.tummalapalli@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.10 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/poky">
https://git.yoctoproject.org/git/poky</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.10<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 2a848e95074318f3a243df7b3f40513a13173a=
82<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.10<o:p></o:p></p=
>
<p class=3D"MsoNormal">sha: 8ff647b1de50cc915491765b6c19e9f1430519e7238275d=
7e012e0183a7c6f7d<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/poky-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.1.10/poky-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/openembedded-core">
https://git.openembedded.org/openembedded-core</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.10-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9ae339ace9274be71bfd3b5e5da64dceac9fa9=
63<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.10<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 651943e0919c6731441c67460b35b92f592bf60f9509b0b=
e041cacdcb7db838c<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/oecore-dunfell-23.0.10.tar.bz2">http://downloads.yocto=
project.org/releases/yocto/yocto-3.1.10/oecore-dunfell-23.0.10.tar.bz2</a><=
o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/oecore-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yocto/y=
octo/yocto-3.1.10/oecore-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-mingw">
https://git.yoctoproject.org/git/meta-mingw</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.10<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.10<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: a2db888019c3e35cf12edda6fc68ae4f9522a2a975a57f4=
92e9f86673dfa5c82<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/meta-mingw-dunfell-23.0.10.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.1.10/meta-mingw-dunfell-23.0.10.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/meta-mingw-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.1.10/meta-mingw-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/meta-gplv2">
https://git.yoctoproject.org/git/meta-gplv2</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.10<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.10<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: 97e915d0312fd07a6da3ae0fd21c9463ddeae03bc097b3c=
fe75234a066bb7045<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/meta-gplv2-dunfell-23.0.10.tar.bz2">http://downloads.y=
octoproject.org/releases/yocto/yocto-3.1.10/meta-gplv2-dunfell-23.0.10.tar.=
bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/meta-gplv2-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yoc=
to/yocto/yocto-3.1.10/meta-gplv2-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.openembe=
dded.org/bitbake">
https://git.openembedded.org/bitbake</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: 1.46<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: 2020-04.10-dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 0e0af15b84e07e6763300dcd092b980086b9b9=
c4<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.10<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: 99fbb9ecf86385bf1effbde433f95d465c3ab90084b9dc9=
85597220b60b6c0bd<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.10/bitbake-dunfell-23.0.10.tar.bz2">http://downloads.yoct=
oproject.org/releases/yocto/yocto-3.1.10/bitbake-dunfell-23.0.10.tar.bz2</a=
><o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.10/bitbake-dunfell-23.0.10.tar.bz2">http://mirrors.kernel.org/yocto/=
yocto/yocto-3.1.10/bitbake-dunfell-23.0.10.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: <a href=3D"https://git.yoctopro=
ject.org/git/yocto-docs">
https://git.yoctoproject.org/git/yocto-docs</a><o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.10<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision:180d5fcb893e8b2ebcd779d1b07f5c9e8e1bcec=
a<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------<o:p></o:p></p>
<p class=3D"MsoNormal">Contributors<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------<o:p></o:p></p>
<p class=3D"MsoNormal">Alexander Kanavin<o:p></o:p></p>
<p class=3D"MsoNormal">Andrej Valek<o:p></o:p></p>
<p class=3D"MsoNormal">Bruce Ashfield<o:p></o:p></p>
<p class=3D"MsoNormal">Chen Qi<o:p></o:p></p>
<p class=3D"MsoNormal">Denys Dmytriyenko<o:p></o:p></p>
<p class=3D"MsoNormal">Florian Amstutz<o:p></o:p></p>
<p class=3D"MsoNormal">Jain Sangeeta<o:p></o:p></p>
<p class=3D"MsoNormal">Jasper Orschulko<o:p></o:p></p>
<p class=3D"MsoNormal">Khem Raj<o:p></o:p></p>
<p class=3D"MsoNormal">Marek Vasut<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Halstead<o:p></o:p></p>
<p class=3D"MsoNormal">Michael Ho<o:p></o:p></p>
<p class=3D"MsoNormal">Minjae Kim<o:p></o:p></p>
<p class=3D"MsoNormal">Richard Purdie<o:p></o:p></p>
<p class=3D"MsoNormal">Steve Sakoman<o:p></o:p></p>
<p class=3D"MsoNormal">Tim Orling<o:p></o:p></p>
<p class=3D"MsoNormal">Tomasz Dziendzielski<o:p></o:p></p>
<p class=3D"MsoNormal">Yi Zhao<o:p></o:p></p>
<p class=3D"MsoNormal">Zolt=E1n B=F6sz=F6rm=E9nyi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">AB-INT PTEST: tcl socket.test intermittent failure<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer-plugins-good: ignore CVE-2021-3497/8 since=
 they are fixed<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer-plugins-base: ignore CVE-2021-3522 since i=
t is fixed<o:p></o:p></p>
<p class=3D"MsoNormal">bluez: fix CVE-2021-3588<o:p></o:p></p>
<p class=3D"MsoNormal">dhcp: fix CVE-2021-25217<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: fix CVE-2021-28831<o:p></o:p></p>
<p class=3D"MsoNormal">gstreamer-plugins-base: fix CVE-2021-3522<o:p></o:p>=
</p>
<p class=3D"MsoNormal">rpm: fix CVE-2021-3421<o:p></o:p></p>
<p class=3D"MsoNormal">libx11: Fix CVE-2021-31535<o:p></o:p></p>
<p class=3D"MsoNormal">libxml2: Fix CVE-2021-3518<o:p></o:p></p>
<p class=3D"MsoNormal">expat: fix CVE-2013-0340<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: providers: replace newly added logger.warn(=
) with logger.warning()<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart: Allow colon in variable expansi=
on regex<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: data_smart/parse: Allow ':' characters in v=
ariable/function names<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: BBHandler: Don't classify shell functions t=
hat names start with &quot;python*&quot; as python function<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.10 release<o:p></o:p=
></p>
<p class=3D"MsoNormal">documentation: prepare for 3.1.10 release<o:p></o:p>=
</p>
<p class=3D"MsoNormal">kernel-devsrc: fix 32bit ARM devsrc builds<o:p></o:p=
></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.132<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.131<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: add tmpdir option into mktemp applet<o:p></=
o:p></p>
<p class=3D"MsoNormal">sstate: Drop pseudo exclusion<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Update to latest version including statx fix=
<o:p></o:p></p>
<p class=3D"MsoNormal">pseudo: Add uninative configuration sanity check<o:p=
></o:p></p>
<p class=3D"MsoNormal">report-error: Drop pointless inherit<o:p></o:p></p>
<p class=3D"MsoNormal">update-rc.d: update SRCREV to pull in fix for non-ba=
sh shell support<o:p></o:p></p>
<p class=3D"MsoNormal">tzdata: Allow controlling zoneinfo binary format<o:p=
></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/multiprocesslauch: Fix test race<o:p><=
/o:p></p>
<p class=3D"MsoNormal">dwarfsrcfiles: Avoid races over debug-link files<o:p=
></o:p></p>
<p class=3D"MsoNormal">bootchart2: update 0.14.8 -&gt; 0.14.9<o:p></o:p></p=
>
<p class=3D"MsoNormal">glibc: update to lastest 2.31 release HEAD<o:p></o:p=
></p>
<p class=3D"MsoNormal">webkitgtk: Upgrade to 2.28.4<o:p></o:p></p>
<p class=3D"MsoNormal">webkitgtk: upgrade 2.28.2 -&gt; 2.28.3<o:p></o:p></p=
>
<p class=3D"MsoNormal">python3: upgrade 3.8.10 -&gt; 3.8.11<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/archiver: Allow tests to ignore empty =
directories<o:p></o:p></p>
<p class=3D"MsoNormal">devtool: deploy-target: Fix preserving attributes wh=
en using --strip<o:p></o:p></p>
<p class=3D"MsoNormal">sstate/staging: Handle directory creation race issue=
<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/runcmd: Tweal test timeouts<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sstate.bbclass: fix errors about read-only sstate mi=
rrors<o:p></o:p></p>
<p class=3D"MsoNormal">package_pkgdata: Avoid task hash mismatches for gene=
ric task changes<o:p></o:p></p>
<p class=3D"MsoNormal">perf: Use python3targetconfig to ensure we use targe=
t libraries<o:p></o:p></p>
<p class=3D"MsoNormal">selftest: do not hardcode /tmp/sdk<o:p></o:p></p>
<p class=3D"MsoNormal">kernel-devicetree: Fix interaction when packaging di=
sabled<o:p></o:p></p>
<p class=3D"MsoNormal">kernel: Fix interaction when packaging disabled<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.129<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.128<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.125<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.124<o:p></o:p></p>
<p class=3D"MsoNormal">python3: apply test skipping patch unconditionally<o=
:p></o:p></p>
<p class=3D"MsoNormal">python3: skip tests requiring tools-sdk<o:p></o:p></=
p>
<p class=3D"MsoNormal">python3-ptest: add newly discovered missing rdeps<o:=
p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.9 -&gt; 3.8.10<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.8 -&gt; 3.8.9<o:p></o:p></p>
<p class=3D"MsoNormal">powertop: fix aclocal error too many loops<o:p></o:p=
></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.7 -&gt; 3.8.8<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.6 -&gt; 3.8.7<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.5 -&gt; 3.8.6<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.4 -&gt; 3.8.5<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.3 -&gt; 3.8.4<o:p></o:p></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.2 -&gt; 3.8.3<o:p></o:p></p>
<p class=3D"MsoNormal">uninative: Upgrade to 3.2 (gcc11 support)<o:p></o:p>=
</p>
</div>
</body>
</html>

--_000_BYAPR11MB3301BCA0E91FFA7BA7075D1E88F79BYAPR11MB3301namp_--
