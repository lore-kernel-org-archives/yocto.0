Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D60CD6E78
	for <webhook@archiver.kernel.org>; Thu, 13 Nov 2025 14:59:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.25790.1763045981492967435
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Nov 2025 06:59:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=oDEMskEc;
 spf=pass (domain: intel.com, ip: 192.198.163.7, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763045984; x=1794581984;
  h=from:to:subject:date:message-id:mime-version;
  bh=cvJbCAmkaoJTS3DUWW1fnBgvjGk6OsRYLcPeiMPHvK0=;
  b=oDEMskEcPScKMQi5C9O1e8yOEvveh+s3v+G8gBeGqx1IRLjx5mQUKM1y
   IiZ4LYrOEbxqbygVVxG97TccSubnn+t3wUBVS6TyPXossDbit+84/wZW5
   g8oqKeNUybDopuE8v2lLyjbj5EbIjd9M8Kah2MyU925QMLF4BI8Jx0DCw
   OD0fqyMQI/8iLUu7/psc5vVmPD9hykeINv1w+yKyl0C7u1De/+iGh7MEa
   ZWJPr1qUiMDQ4l2N6sruVPe3ewFON2Z9dr5R0P5e+3NEg59DCwqD1HmBS
   3vijmngXtj33ulBxXb3MDvd+EZGetyZVR4M+XrKLC/xd7YU3M9IgA+qpO
   w==;
X-CSE-ConnectionGUID: cMzmW56XSp2Iy7zAGno3+w==
X-CSE-MsgGUID: MmvcFrGCRgiNS2qix8H7iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="90604276"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; 
   d="scan'208,217";a="90604276"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 06:59:40 -0800
X-CSE-ConnectionGUID: +mrlhGjYRyaxnaaQlds4Xw==
X-CSE-MsgGUID: YjqVj+/JRYuNzm5kdvX/gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; 
   d="scan'208,217";a="220321488"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 06:59:37 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 06:59:37 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 06:59:37 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 06:59:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nhqtfanZbOQ8U5yo3yC0nQDauX2uJDNV+QX7q7Ce4hY0YgMxHv9w6VJYrGFvegmzVGqOHMbbDxT8+gtxrUGxpg84jenD9FHChiYYNLCTWvvJHdpe+rel3F7cPAiN8700Dh38+hPDU+t8dJ3Dq5EPFA7j1Tecr18QwxC54SbcDfuf2dYXRLhh2n0lnO5rGqQWpf6YgOaqB/f6u6CGznFsxy+D/FHGO7vcpDOhhi85NB9FWqbZzP/m1+aCssgIUq9yy9HqGOaCz0+vvzTM7HwW1ycBTSkg1b6mlGxN7BepMZ6YQ0vKzQ376axA1EDuK8K3wU4PQkH7tM5jUoWTpYiVgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BU7YtP/q4G7IkmJdzvT+CN11qsizTPfM7/YZllFk+C8=;
 b=CXywOtWWVdIV9YU5BRnwwd6lQAs2fSLFBb8U7ZUbo0rwJW/ZNhvc5lrLrQHaS+O0KfppkM7+vGcHYzW0cRdPywGkBsqbFDGp604B7TuDfwS08u/Xe7jdC+ztZTtGimY8sHJXBqUOTc2ZSwt55qJPHB4f6REXWufKhxklpg6SekJn4kr9CBA7G4hX4sgdK/5UVfpLC5bHPQwi7utDnzbRqGMgSpXkZoWdRQDe5pQKR3qltigcDy77zM40fj1Fx7CtxAEshApZoNTvfuyHXLZq0A5Fla+TY2Fz4roW6kA9nDJmj7fHSy42K3fnz2ayyi0orlVQGxLd+Y6ejVr7FsxZtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 14:59:34 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 14:59:34 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.31(kirkstone-4.0.31) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.31(kirkstone-4.0.31) is
 Released
Thread-Index: AdxUqDOKuyFgdExsRdiuk/KVSkxD9A==
Date: Thu, 13 Nov 2025 14:59:33 +0000
Message-ID: <BL4PR11MB879747CF6003FFAE96C2A91DB9CDA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: 966198c9-281e-493f-4644-08de22c541c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|10070799003|13003099007|8096899003|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?+wGyS4eKfPZtRgu8+QMC/Eh4btG/WUg5sYEvi9jElN9lHQC1Lm5Bvfe2ql?=
 =?iso-8859-1?Q?4yoI2sb9fEB7/P7IwaJrTjmxNZWZG+1nVSsbts0iiuRIQJmKowXc6qMT9D?=
 =?iso-8859-1?Q?4BuU+3uGb/8ZMN3jdLpBY/lKsguI4ZExC5J4xI6doikkYoKUEbEwkjMobE?=
 =?iso-8859-1?Q?FuctC6pMHBFEAO42kqWrzulpmVvANHqQ8VlvkzK9qgInPqEiodG6r2MY6m?=
 =?iso-8859-1?Q?0BZEfUcZKcJeRcjx/q6g5jqEGC05rWL2c884Ef1X8UHFK1DkaVbmJsF53C?=
 =?iso-8859-1?Q?3k+oruA/ZXxvF0dOBx8866nbck8pU6stiYwm5e/9QV6Drb3CnCYSrq+4Ap?=
 =?iso-8859-1?Q?X1pRY6axCqtRQYnFPTEwoJCqX0cPQ69/jEq9OLwo/YqpMwuV8EtBNFkSaQ?=
 =?iso-8859-1?Q?YnX+gqkcmEqmhF7hZN89cw5CZGuqTK3NlkkcwO8s4DTYUGihDgiMoMcnAG?=
 =?iso-8859-1?Q?0HIgQ107awmHsq2QjxVprFfi6X28i1qRT7dlrwq2aT/4r/zjFusOr4XUa6?=
 =?iso-8859-1?Q?y0PB7xX7pxJlqVmTReuH8MmACSNJFa3y/Td50Kyl/Wm88VRmYBCgIk0nJ6?=
 =?iso-8859-1?Q?N+HXoxC7fWahYdAmE9/EvgLioDK9nsyic7ysQ0n2tXvOohgQakc+fgwHl2?=
 =?iso-8859-1?Q?NWgSNBgOKfqkOxT5jBd69GSUYECLIqjv1jW5bJECzcVQjgd47JFyiV3L2/?=
 =?iso-8859-1?Q?lF3j/0E1rYpqHzNn38GBSiCXSyVD1Rs/L7XBayl5yABkFTNeS+zNARyCO0?=
 =?iso-8859-1?Q?qFYrWfZsHFqk2CfQD0En2dhQ+Llz8vvukwmtorEK7Zl+dZECUXdbuZsdxA?=
 =?iso-8859-1?Q?jjn5zXdlK/uVqybS5Ipn43MiNP53VA6uMDqJL6cPhei42SGyeHBsKhO9PH?=
 =?iso-8859-1?Q?CJ4lSb7pQN0zppIC/rCGtfCWl5fzOMqK1JOAAudJLoA5subJTBcmH3Vn3i?=
 =?iso-8859-1?Q?FKoLGm+YIh4spbIhEiIR6jgjYedBNe+WRlDmxC+wGzpv5y7RZZ+nhQQbmo?=
 =?iso-8859-1?Q?lJPrnTaefQz9gn7Xg7YzYgp6ERABWuiTCNJgJkcMU5kQIlblNEyCFORHiA?=
 =?iso-8859-1?Q?HErjUhe7v4jb+yTlePVeEM0Biy697O02HkeRbJBgp1VK45mYSw52Fg8/qE?=
 =?iso-8859-1?Q?cIcR22Ve9+m+zDZKPTRhSN9ctpymlGyP0jeCOludptedYTRQ6T1kRGNIxc?=
 =?iso-8859-1?Q?KXf6I96DMQPBQeZncGa+L+mfutj286nwVv69XZvRvpmcuTa0xy8jY/aXX8?=
 =?iso-8859-1?Q?uTAQ/N5PzKNyxUUuK9nsK88D16R8NKRLOHPDZKdflK4fXTyw0tu7yRd3fY?=
 =?iso-8859-1?Q?i5c6IvS8Cb8YakBCWmPcP+9U53Y08Zvwp/c1Zpn5HsHiKx0TDdBK/cGECb?=
 =?iso-8859-1?Q?9+sEYlZYSkrorQdj6sU/I9e2CvT8YaGj21Rua7RZI7zgLYgqiAp8GEyDBZ?=
 =?iso-8859-1?Q?iyaPH1lBOqVgnu2PvFbakJGNSa7h3oUqvAu+fcHzdy4n8rEL6z9IxI0dnx?=
 =?iso-8859-1?Q?TIwgXmnZ9XTxwqr4dLH/MYM4uBN+pcZlvc0Q2K9zNtmQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(13003099007)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Yxsfzgxq2oNJqLno+VAjH6bcmXljvQTyFeaA3zLmwlqf8UKA4m/YfDP/ea?=
 =?iso-8859-1?Q?GLRWrFVhTC3WOEVBMDOUYHN1aXUj0df/QhFBaoN+5jb81hMwnRNAkoFv+N?=
 =?iso-8859-1?Q?JXIvx6mwaf4An0FEhpEnIyx8npdzaSauJRsLeP1ZAdL9U6kJLb88pJ+WlB?=
 =?iso-8859-1?Q?Rmu93YgrTWOxW0y9i8ExLP4mHgd/Bfytq6y/zn0eFTte21uUX5O5K4WeUP?=
 =?iso-8859-1?Q?5qNrMTIG3B6GjyEvCJmvE0fzV6CdIaBQiLOOVXy3KY3bokaBKJJy0o2VDM?=
 =?iso-8859-1?Q?kXZvCAUnsSJi3Jr9OUG/9FqYJdTOgXKXfINTIObss+XrQieDfnJwhqZWoc?=
 =?iso-8859-1?Q?69u/pmoVWDj15iNdA77h2he+HDHn5cEN0EA09g0KG2Pt9shARDoKdWWXAZ?=
 =?iso-8859-1?Q?DAudp8er+6kHmGK12JdLnw47/v6PHJQQOlkyYnlLV9PZxB3gls5oBp4DTx?=
 =?iso-8859-1?Q?K4KMmmdEDUo9lwme9i0wln8IaWx8vwWjphatYy7gHuvWULsSL0k5nAOOl1?=
 =?iso-8859-1?Q?JUaOB7twD50WY7saQppgHKpFYskS9VbQf7bB+/C3oYUWIgLUo2A+/tFFQt?=
 =?iso-8859-1?Q?iYMSMa/vJs5ZqRmOUs7T+B/LpFSkraGcJTt7kbgluvSFUEBSkLcmO7A+Hb?=
 =?iso-8859-1?Q?PW+XIQFRS3ELKXHnhQv8pABFBacIj1Ex5j3/gL+iBoX/qEVKXVIs4e17xg?=
 =?iso-8859-1?Q?zvHvSPihMM5u7+MqTYM+XdPA9uyU1zGa17tekb9XEep4JLpSr+hpUNFPUt?=
 =?iso-8859-1?Q?tOprSeq6ARkeNhVl7sCeKosMSLirSs00zJriuSVStEXPwEqpwxF6sJstf+?=
 =?iso-8859-1?Q?rT+nWEuPH8FlUciL8mvKiStpdowxkeaV/mzmZ1imLeuQRa9EhIrdQADAwg?=
 =?iso-8859-1?Q?RCIkRyFVWCLngnR4OmhNH98Md73bf/CQAjAc3iPRQCmR1IgTEMF8woXtrZ?=
 =?iso-8859-1?Q?KHYnGYRN4ALNzlM1bd324/dtObSkZZE5aNahnZ9wZ5IzFZ613aXcy3JCCF?=
 =?iso-8859-1?Q?Fs2dLIvWEbOf1GaCLNiEkXAXdkf6sfmm7+ilP70cDSS4SFMLiQzAMbvdVr?=
 =?iso-8859-1?Q?OT46OpvNNh31iXSnycv8ok1Vt9qcPEnKjvKi3K15EbN9UEht2xl4HJKmOA?=
 =?iso-8859-1?Q?mDSngyihqicXnD+fm5dSE26u6daoEcZBQo3aJGRUIRYtoHYDBRQZr8eJlI?=
 =?iso-8859-1?Q?YTy8s0k/ik/4qZNWCuKAzQVFZrMbdq/wGCvF+8kMe9v05oGAccdIEMZ18b?=
 =?iso-8859-1?Q?IvjvoMAHDsls8RTXCbCMNoutWhpy0uawLjHojMzyxiX2c9lKvYogzTrRIR?=
 =?iso-8859-1?Q?J+6RmafDN2kwWNn7wtqHSY/RMZdUDx1NMTFLgUUAdu7FNdI+7Z81IN8XC1?=
 =?iso-8859-1?Q?abBBQvFHMqYbrMDarqBvPSjxqDiiH0Y3IjQ/BEgi5xxkON7V79X85EXKSg?=
 =?iso-8859-1?Q?Ng26TquxOLo1SPt++pPzt+ljA7ZM8iuwe07OJ3k2tKufFrIehq4qkTEGNx?=
 =?iso-8859-1?Q?9HVEco7Gsed01iyGZiSVIm0rUdKOYOIJLJAwPMxdLexBw9wNLUEnTomSyl?=
 =?iso-8859-1?Q?jIivU5P9THwD6ZHLDbnA47wLXiioXS8oXj6UD5tzIKd76guJeyYuBKwFPi?=
 =?iso-8859-1?Q?SUR1j1cQHUwGteHVxcgks4bzz8oBO5VpGfjG+ZfVlxDingxlF26X01OnyI?=
 =?iso-8859-1?Q?Q6V+KrXQXRsVI5o5njnNV8xvDQkbN17dm5VlYtBa?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879747CF6003FFAE96C2A91DB9CDABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966198c9-281e-493f-4644-08de22c541c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 14:59:34.0115
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oJW9rs76hX8JYwwwPPEtjWi4hf4N1hnN8inkG/dnYK9o01cz+25vaevmTnmIrvwhCgiUfS3WsKq+wFie/T+L/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Nov 2025 14:59:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66021

--_000_BL4PR11MB879747CF6003FFAE96C2A91DB9CDABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.31 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/poky-04b39e5=
b7eb19498215d85c88a5fffb460fea1eb.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/poky-04b39e5b7eb19=
498215d85c88a5fffb460fea1eb.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.31 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: 073f3bca4c374b03398317e7f445d2440a287741
Release Artefact: yocto-docs-073f3bca4c374b03398317e7f445d2440a287741
sha: 3bfde9b6ad310dd42817509b67f61cd69552f74b2bc5011bd20788fe96d6823b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/yocto-docs-0=
73f3bca4c374b03398317e7f445d2440a287741.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/yocto-docs-073f3bc=
a4c374b03398317e7f445d2440a287741.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: 04b39e5b7eb19498215d85c88a5fffb460fea1eb
Release Artefact: poky-04b39e5b7eb19498215d85c88a5fffb460fea1eb
sha: 0ca18ab1ed25c0d77412ba30dbb03d74811756c7c2fe2401940f848a5e734930
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/poky-04b39e5=
b7eb19498215d85c88a5fffb460fea1eb.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/poky-04b39e5b7eb19=
498215d85c88a5fffb460fea1eb.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: 99204008786f659ab03538cd2ae2fd23ed4164c5
Release Artefact: oecore-99204008786f659ab03538cd2ae2fd23ed4164c5
sha: aa97bf826ad217b3a5278b4ad60bef4d194f0f1ff617677cf2323d3cc4897687
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/oecore-99204=
008786f659ab03538cd2ae2fd23ed4164c5.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/oecore-99204008786=
f659ab03538cd2ae2fd23ed4164c5.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: 3b2df00345b46479237fe0218675a818249f891c
Release Artefact: meta-yocto-3b2df00345b46479237fe0218675a818249f891c
sha: 630e99e0f515bab8a316b2e32aff1352b4404f15aa087e8821b84093596a08ce
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/meta-yocto-3=
b2df00345b46479237fe0218675a818249f891c.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/meta-yocto-3b2df00=
345b46479237fe0218675a818249f891c.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.31
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.31
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2


---------------
Contributors
---------------
Adam Blank
Aleksandar Nikolic
Antonin Godard
Archana Polampalli
AshishKumar Mishra
Bruce Ashfield
Deepesh Varatharajan
Divya Chellam
Gyorgy Sarvari
Hitendra Prajapati
Jo=E3o Marcos Costa
Lee Chee Yang
Paul Barker
Peter Marko
Praveen Kumar
Quentin Schulz
Rajeshkumar Ramasamy
Saravanan
Soumya Sambu
Steve Sakoman
Sunil Dora
Talel BELHAJ SALEM
Theo GAIGE
Vijay Anusuri
Yash Shinde
Yogita Urade

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-8225 CVE-2025-11081 CVE-2025-11082 CVE-2025-11083
busybox: Fix CVE-2025-46394
cmake: Fix CVE-2025-9301
curl: Fix CVE-2025-9086
ffmpeg: Ignore CVE-2023-6603
ffmpeg: mark CVE-2023-6601 as Fixed
ghostscript: Fix CVE-2025-59798 CVE-2025-59799 CVE-2025-59800
git: Fix CVE-2025-48386
glib-networking: Fix CVE-2025-60018 CVE-2025-60019
go: Fix CVE-2025-47906 CVE-2025-47907
grub2: Fix CVE-2024-56738
grub: Ignore CVE-2024-2312
gstreamer1.0-plugins-bad: Fix CVE-2025-3887
gstreamer1.0: Ignore CVE-2025-2759 CVE-2025-3887 CVE-2025-47183 CVE-2025-47=
219 CVE-2025-47806 CVE-2025-47807 CVE-2025-47808
python3-jinja2: Fix CVE-2024-56201 CVE-2024-56326 CVE-2025-27516
libxml2: Fix CVE-2025-9714
libxslt: Fix CVE-2025-7424
lz4: Fix CVE-2025-62813
openssl: Fix CVE-2025-9230 CVE-2025-9232
pulseaudio: Ignore CVE-2024-11586
python3: Fix CVE-2024-6345 CVE-2025-47273 CVE-2025-59375
qemu: Fix CVE-2024-8354
tiff: Fix CVE-2025-8961 CVE-2025-9165 CVE-2025-9900
vim: Fix CVE-2025-9389

---------------
Fixes
---------------
build-appliance-image: Update to kirkstone head revision
poky.conf: bump version for 4.0.31
ref-manual/classes.rst: document the relative_symlinks class
ref-manual/classes.rst: gettext: extend the documentation of the class
ref-manual/variables.rst: document the CCACHE_DISABLE, UNINATIVE_CHECKSUM, =
UNINATIVE_URL, USE_NLS, REQUIRED_COMBINED_FEATURES, REQUIRED_IMAGE_FEATURES=
, REQUIRED_MACHINE_FEATURES variable
ref-manual/variables.rst: fix LAYERDEPENDS description
dev-manual, test-manual: Update autobuilder output links
ref-manual/classes.rst: extend the uninative class documentation
python3: upgrade to 3.10.19
linux-yocto/5.15: update to v5.15.194
glibc: : PTHREAD_COND_INITIALIZER compatibility with pre-2.41 versions (bug=
 32786)
glibc: nptl Use all of g1_start and g_signals
glibc: nptl rename __condvar_quiesce_and_switch_g1
glibc: nptl Fix indentation
glibc: nptl Use a single loop in pthread_cond_wait instaed of a nested loop
glibc: Remove g_refs from condition variables
glibc: nptl Remove unnecessary quadruple check in pthread_cond_wait
glibc: nptl Remove unnecessary catch-all-wake in condvar group switch
glibc: nptl Update comments and indentation for new condvar implementation
glibc: pthreads NPTL lost wakeup fix 2
glibc: Remove partial BZ#25847 backport patches
vulnerabilities: update nvdcve file name
migration-guides: add release notes for 4.0.30
oeqa/sdk/cases/buildcpio.py: use gnu mirror instead of main server
selftest/cases/meta_ide.py: use use gnu mirror instead of main server
conf/bitbake.conf: use gnu mirror instead of main server
p11-kit: backport fix for handle USE_NLS from master
systemd: backport fix for handle USE_NLS from master
glibc: stable 2.35 branch updates
openssl: upgrade to 3.0.18
scripts/install-buildtools: Update to 4.0.30
ref-manual/variables.rst: fix the description of STAGING_DIR
ref-manual/structure: document the auto.conf file
dev-manual/building.rst: add note about externalsrc variables absolute path=
s
ref-manual/variables.rst: fix the description of KBUILD_DEFCONFIG
kernel-dev/common.rst: fix the in-tree defconfig description
test-manual/yocto-project-compatible.rst: fix a typo
contributor-guide: submit-changes: make "Crediting contributors" part of "C=
ommit your changes"
contributor-guide: submit-changes: number instruction list in commit your c=
hanges
contributor-guide: submit-changes: reword commit message instructions
contributor-guide: submit-changes: make the Cc tag follow kernel guidelines
contributor-guide: submit-changes: align CC tag description
contributor-guide: submit-changes: clarify example with Yocto bug ID
contributor-guide: submit-changes: fix improper bold string
libhandy: update git branch name
python3-jinja2: upgrade to 3.1.6
vim: upgrade to 9.1.1683




--_000_BL4PR11MB879747CF6003FFAE96C2A91DB9CDABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.31 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/poky-04b39e5b7eb1949=
8215d85c88a5fffb460fea1eb.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.31/poky-04b39e5b7eb19498215d85c88a5fffb460fea1eb.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.31/poky-04b39e5b7eb19498215d8=
5c88a5fffb460fea1eb.tar.bz2">https://mirrors.edge.kernel.org/yocto/yocto/yo=
cto-4.0.31/poky-04b39e5b7eb19498215d85c88a5fffb460fea1eb.tar.bz2</a><o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.31/testreport.txt</=
a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
--------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.31 Releas=
e Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 073f3=
bca4c374b03398317e7f445d2440a287741<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: y=
octo-docs-073f3bca4c374b03398317e7f445d2440a287741<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3bfde9b6ad310d=
d42817509b67f61cd69552f74b2bc5011bd20788fe96d6823b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/yocto-docs-073f3bca4c374b033983=
17e7f445d2440a287741.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/yocto-docs-073f3bca4c374b03398317e7f4=
45d2440a287741.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 04b39=
e5b7eb19498215d85c88a5fffb460fea1eb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-04b39e5b7eb19498215d85c88a5fffb460fea1eb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 0ca18ab1ed25c0=
d77412ba30dbb03d74811756c7c2fe2401940f848a5e734930<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/poky-04b39e5b7eb19498215d85c88a=
5fffb460fea1eb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/poky-04b39e5b7eb19498215d85c88a5fffb4=
60fea1eb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 99204=
008786f659ab03538cd2ae2fd23ed4164c5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-99204008786f659ab03538cd2ae2fd23ed4164c5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: aa97bf826ad217=
b3a5278b4ad60bef4d194f0f1ff617677cf2323d3cc4897687<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/oecore-99204008786f659ab03538cd=
2ae2fd23ed4164c5.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/oecore-99204008786f659ab03538cd2ae2fd=
23ed4164c5.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 3b2df=
00345b46479237fe0218675a818249f891c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-yocto-3b2df00345b46479237fe0218675a818249f891c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 630e99e0f515ba=
b8a316b2e32aff1352b4404f15aa087e8821b84093596a08ce<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/meta-yocto-3b2df00345b46479237f=
e0218675a818249f891c.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/meta-yocto-3b2df00345b46479237fe02186=
75a818249f891c.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 87c22=
abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f0bc4873e2e031=
9fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/meta-mingw-87c22abb1f11be430caf4372e6=
b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c386f59f8a6727=
47dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/meta-gplv2-d2f8b5cdb285b72a4ed93450f6=
703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.31<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8e2d1=
f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: fad4e7699bae62=
082118e89785324b031b0af0743064caee87c91ba28549afb0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.31/bitbake-8e2d1f8de055549b2101614=
d85454fcd1d0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.edg=
e.kernel.org/yocto/yocto/yocto-4.0.31/bitbake-8e2d1f8de055549b2101614d85454=
fcd1d0f94b2.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Adam Blank<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">AshishKumar Mishra<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gyorgy Sarvari<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jo=E3o Marcos Costa=
 <br>
Lee Chee Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Paul Barker<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Quentin Schulz<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rajeshkumar Ramasam=
y<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Saravanan<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sunil Dora<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Talel BELHAJ SALEM<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Theo GAIGE<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-8225 CVE-2025-11081 CVE-2025-11082 CVE-2025-11083<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix CVE-20=
25-46394<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Fix CVE-2025=
-9301<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2025-=
9086<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Ignore CVE-=
2023-6603<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: mark CVE-20=
23-6601 as Fixed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2025-59798 CVE-2025-59799 CVE-2025-59800<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2025-4=
8386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-networking: Fi=
x CVE-2025-60018 CVE-2025-60019<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-47=
906 CVE-2025-47907<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub2: Fix CVE-2024=
-56738<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: Ignore CVE-20=
24-2312<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-bad: Fix CVE-2025-3887
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2025-2759 CVE-2025-3887 CVE-2025-47183 CVE-2025-47219 CVE-2025-47806 =
CVE-2025-47807 CVE-2025-47808<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-jinja2: Fix=
 CVE-2024-56201 CVE-2024-56326 CVE-2025-27516<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: Fix CVE-20=
25-9714<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxslt: Fix CVE-20=
25-7424<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lz4: Fix CVE-2025-6=
2813<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
25-9230 CVE-2025-9232<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pulseaudio: Ignore =
CVE-2024-11586<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
24-6345 CVE-2025-47273 CVE-2025-59375<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2024-=
8354<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix CVE-2025-=
8961 CVE-2025-9165 CVE-2025-9900<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2025-9=
389<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.31<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: document the relative_symlinks class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: gettext: extend the documentation of the class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document the CCACHE_DISABLE, UNINATIVE_CHECKSUM, UNINATIVE_URL, USE_=
NLS, REQUIRED_COMBINED_FEATURES, REQUIRED_IMAGE_FEATURES, REQUIRED_MACHINE_=
FEATURES variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: fix LAYERDEPENDS description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual, test-ma=
nual: Update autobuilder output links<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: extend the uninative class documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.10.19<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.194<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: : PTHREAD_CO=
ND_INITIALIZER compatibility with pre-2.41 versions (bug 32786)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Use all=
 of g1_start and g_signals<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl rename =
__condvar_quiesce_and_switch_g1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Fix ind=
entation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Use a s=
ingle loop in pthread_cond_wait instaed of a nested loop<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Remove g_ref=
s from condition variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Remove =
unnecessary quadruple check in pthread_cond_wait<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Remove =
unnecessary catch-all-wake in condvar group switch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: nptl Update =
comments and indentation for new condvar implementation<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: pthreads NPT=
L lost wakeup fix 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: Remove parti=
al BZ#25847 backport patches<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vulnerabilities: up=
date nvdcve file name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/sdk/cases/buil=
dcpio.py: use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/cases/meta=
_ide.py: use use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf/bitbake.conf: =
use gnu mirror instead of main server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">p11-kit: backport f=
ix for handle USE_NLS from master<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: backport f=
ix for handle USE_NLS from master<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.35 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.0.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: fix the description of STAGING_DIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/structur=
e: document the auto.conf file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/building=
.rst: add note about externalsrc variables absolute paths<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: fix the description of KBUILD_DEFCONFIG<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kernel-dev/common.r=
st: fix the in-tree defconfig description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/yocto-p=
roject-compatible.rst: fix a typo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: make &quot;Crediting contributors&quot; part of &quot;Commi=
t your changes&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: number instruction list in commit your changes<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: reword commit message instructions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: make the Cc tag follow kernel guidelines<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: align CC tag description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: clarify example with Yocto bug ID<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes: fix improper bold string<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libhandy: update gi=
t branch name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-jinja2: upg=
rade to 3.1.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: upgrade to 9.1=
.1683<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879747CF6003FFAE96C2A91DB9CDABL4PR11MB8797namp_--

