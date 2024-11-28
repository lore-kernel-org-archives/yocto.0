Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84A82D690EE
	for <webhook@archiver.kernel.org>; Thu, 28 Nov 2024 09:18:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by mx.groups.io with SMTP id smtpd.web11.91314.1732785490834571792
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2024 01:18:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=SOIkRCBf;
 spf=pass (domain: intel.com, ip: 192.198.163.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1732785491; x=1764321491;
  h=from:to:subject:date:message-id:mime-version;
  bh=eoacIfrQiYV0IFsfILgAIvl943U0JvosiPCaUArxPiY=;
  b=SOIkRCBfOYifZ9L2ivNJJzFrIFS89YkOt+1AdPeOHV6zO42AHoCe6G4H
   tWPdrSpZLH6WAjTRJRuBydKAZqMXnzuu/5Qv3NpVaiYrufhUzAW2Fn3YV
   J5GxrqMhaQcLyS19xuhidvKvtI9zbZZasq8QzL2DY8Xobn22blAd4gYGZ
   5UzAhhMCPCE7vkD4p/2fnEuujO5h3hC19lMf6ZisjdL1bzQLDPu3yKsow
   0pTqxziISz4PFNGDcggP5VSfNVn0cbdpCfjBeOW8roy/98fjSDbxsOL2H
   EqVZtSNjaiwmhSzCD5W33zifdDwiYoHyn65TowL3ldlwkoySn2tn/5U8M
   g==;
X-CSE-ConnectionGUID: JS4KMk9wRhOb7zz+rA4zgQ==
X-CSE-MsgGUID: 2s+EEaBpQoiWb+4sepk5gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32380830"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; 
   d="scan'208,217";a="32380830"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2024 01:18:09 -0800
X-CSE-ConnectionGUID: jwc3XzN/SCe6Wx+14NOC3A==
X-CSE-MsgGUID: nEEhoLEIS8O2MaGU6HkoDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; 
   d="scan'208,217";a="129685628"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 28 Nov 2024 01:18:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 01:18:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 01:18:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 01:18:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qDpDoGNlHhG0+KjTzVoXWFzntoi0TdyMlEMPymwD092SmGZU2qN/C6OIfkkPXfBLteoqDHrXTf2mxOYVVUq7qx1tsXvkyBqOMrWuQUpoewIZfvVSLsnUnVZUmARsMZt82ORitBb69T8lrnKLr587WZYGWy06wqte70qktPrSbhgUY8I+W8OMo7E4sPatfY144iZJ5s/ILdx4PK3IYpFHa1Nm6WcJax674QktSrR+5Pd4ff6NKFszWkZhqDp9jy2aM9jDKcPBlBi8g2J98lb2ntE5gQN8kaoi4Rh6ndXqplcIZb8uLXly8UCRx0O6BZEwZ1Vv6h9cCKauD3reESV6fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7b5TH1zZmxAew3PofR5Tjg3Rgu3Sq6LnqLWSApo6YJM=;
 b=fnooXtYUSEvBQ9ts+wPeqRyV6ZZ7ov91Ceb17I+ZwOBkuh9x1atQzIzjdEZ9+Zj7DScwEczKVk1ZiFH4h8OwpiuZ7ZBuecfvbnNT3zSfILijNEjMu2klgYaPpeQ3sk7vgvER8cxOcBbHMz1Gk9i99VX/Cs5+XXIa2tL1ru2bEWq6/21Dji0ykwUYg+DiQbc0A4ObqIIfghoFdDWeuaRUKpLtWZJ+BpUueGg37faZkfz9/bt2frDyQYzqvTqJ9Odf+i6G+FM3qQue890aV7HmWFNdbl8dZSpFnNv+TfXUpJ49ZlGSNhIdOvfdW7LP8czMP1igRTUQVK0JNn8fo/oLGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SN7PR11MB6923.namprd11.prod.outlook.com (2603:10b6:806:2aa::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Thu, 28 Nov
 2024 09:18:03 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%4]) with mapi id 15.20.8182.019; Thu, 28 Nov 2024
 09:18:03 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.23 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.23 is Released
Thread-Index: AdtBdgCZbcIkBVqUSRa1J+yfrnUmkg==
Date: Thu, 28 Nov 2024 09:18:02 +0000
Message-ID: <BL4PR11MB8797F9AD4D6B38084C30781DB9292@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SN7PR11MB6923:EE_
x-ms-office365-filtering-correlation-id: 345f5034-de0a-4311-be5b-08dd0f8d8f94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|10070799003|1800799024|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Q+Dw1iU/Pt8l7bdHAKHKcL/jrQVThtKc9ZO10eETf5gqzC2sYgyVB5t5tK?=
 =?iso-8859-1?Q?FP8AQt5Vzz9AgJ+SPxzN3Eo+GZehf+w27rdzC7Pwp7QnS6JmEaBQc/K+0D?=
 =?iso-8859-1?Q?8WkAS8ZG7TJYe1UkCwbNW4oSKpoQzRh3s064jTkwW9+XBLHuubqf5gT3kl?=
 =?iso-8859-1?Q?1SYrJwOD97u1nIxbIU6aRgYNEUqKyhB0nPwCSglNnCrf4Ta3jilEoqFTZr?=
 =?iso-8859-1?Q?JJ72RfYWFiD6PTkmKglHoSXXuuac9ITCj3BRGjzNGXBnCrJ48O/hiqOOdR?=
 =?iso-8859-1?Q?UXcmu/1/244vzsmauyn6dJqaRxLv8HQB91CSoPYvWeTpp4ZAMWWkTFM2yw?=
 =?iso-8859-1?Q?uCbTlgL0I5XY9vn/5hrK9GlbMKuxv+m1tv9bDc1Ql/51bvDrboyr7P99sg?=
 =?iso-8859-1?Q?8Ki74NJk1o4fsYhu2LDB8z8q9V5+fpI77vmCE0YwAwAj7brDVnkU7YKhKj?=
 =?iso-8859-1?Q?rLjsvdw7G5nZ0GTM4Lb7DFW4VMa10wYcc+5cVXaJibhyakv9OumtX0mMJ8?=
 =?iso-8859-1?Q?MlX8v2GVNOPSt5MAlxp4mZsP6YN5yCkC9HYDftS9OLiLZ/U6NG7baV/pva?=
 =?iso-8859-1?Q?q/focsdRlup0+YphPNthJO0JFsEfry+w8wZbRj6O3CqFzI7s45+Uo9Ijmq?=
 =?iso-8859-1?Q?N3XGDVrBovHRVcEAr1ucTXT1Pab0H6p4beiDluK22kmudMwdhyoI3tkhgh?=
 =?iso-8859-1?Q?B5vWu5JBwiakzlL8L38MgPcp62MG1QuaK0qdmg0lMO68WBiY8L1xoczCcw?=
 =?iso-8859-1?Q?obzWo71D3Xdz+GUCC83n62mnaAbAcKR3cDMRPPDYWK6VtpX6ohatqfv/JH?=
 =?iso-8859-1?Q?Qu96I6l9luMo7tyFM+Q1HKkS1BrR2i5esWuLSTtkj9yl8EAJ3g5Eu7yrD8?=
 =?iso-8859-1?Q?S3WaHB+WIp5xYXGpRJz7p5mbCXbTe6aCV/HfVLZh/4WcpLPwmLTjn+d7Gj?=
 =?iso-8859-1?Q?l5CRlr77QWM1FI2xUI+rVYdK+iFZ0OQitBipthg2CDEyAwo4ooslHFuMQp?=
 =?iso-8859-1?Q?uyglh0ppy9Up7xLxy2PIPusBU6dIup/n9I+O8DDSnNj+j592WtvH3Obcwv?=
 =?iso-8859-1?Q?PjED01FPwJ3XE6Usyor8y4J0c9SU4pCmmVLO5MmyOvpO01Im2fXXWPShQg?=
 =?iso-8859-1?Q?OhgI57FXKv1A2kDy0a1TzDpTXFxocI5mjKVQoEQqndVc7QWYpa/e0dYCwP?=
 =?iso-8859-1?Q?ynDgusfZbn9C7iTaURkHy53UcvE/79sGgaj9gbm1TORQw7bNTzYoEJI9pw?=
 =?iso-8859-1?Q?V9p4E26hX2DEYi6dBHoq96yZpESvRqFTAqjcs59TshYqIjJ4b2cTgtWKCL?=
 =?iso-8859-1?Q?dxq+EKsYzrAEjEVSUpiWhXeGvIxcaEQDS0N5oplamHA8S1rlbF6LOFLssD?=
 =?iso-8859-1?Q?zNUicQBbSaD1OlzTjdHZL0NdhkK6oh0bcYiSUcCjqlD7wgYy/lEdA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lqA4l3BlD05VPs2ke/831SLGHvlqFMht3l5R6Rl+owhJ2IAeEVqN0DHo3G?=
 =?iso-8859-1?Q?kZdL4AaRSG9Uhsusso5nHOyv6fx5OIkMi/oBj6UEXFAxL4rZ2MXU5L0l9C?=
 =?iso-8859-1?Q?zfdYTZSa9sYipnuvLP3/2MaW0tUCWUwzYUTTUIT0x09T11/K5up3eVGons?=
 =?iso-8859-1?Q?IOkVw+LpthVUlcXLwCET5TV71JNK/BvqFa9TGgGwlaLV09T9/l14jNfEls?=
 =?iso-8859-1?Q?YCnC7o7AR/ab6l/SN8jbbStSw0QPiuAs/qtWgsNlq7lUcQjUXNY7mTF/pl?=
 =?iso-8859-1?Q?vv2A2FUO9832ERzrs8q5pMTYpj6523e/ZnwpDEvrXdFLs8xlEJUyxAH6C9?=
 =?iso-8859-1?Q?ksLLxrWTy2vkNlFVbch33heLwB374eE8HIPD4y5PStyv5ZTkqSFt6HKPZI?=
 =?iso-8859-1?Q?B2yPnEW+xZj1gU69EBOpHdeQHrrl0+qhYpgcjIql9l3A7KUkb4rik151Ao?=
 =?iso-8859-1?Q?or3g9jIevMa4TADIENvtwUwAKLSNBWGDpMm7gGcaYsNLuhaKOplkFBuu9f?=
 =?iso-8859-1?Q?JNE+OmFvIISaSf6hTYCr6NFe88ug0hGLNHSC8BUh0GYDM1q1RGQecpkLwv?=
 =?iso-8859-1?Q?+fAtx20tonrwF7rfDUSOB37DFfSNy6Jbr00Ph5BBTZogZgwOV+xvyNrUSI?=
 =?iso-8859-1?Q?qZLEZ7vfXzB7DNkobxC9rjfEOsAOaRTxfymAX1LyVE+x86Xa9stdBqU0ze?=
 =?iso-8859-1?Q?hEx+9w2fvC1JgEqizZ4yYpjiVXfr2BDX8pFfPdnexqTWYd5QM3FkGIgzkq?=
 =?iso-8859-1?Q?qWH6/xqpvFLULxVTHj4qdh2gicmfYu6a1u3/SX2AbIUGj97KY8IVONWBtT?=
 =?iso-8859-1?Q?idgRAd+kGysivc8GyXjDQrMOUaTjtQNc5FOf7yZrAQsNEvNSWmDLK8Ahep?=
 =?iso-8859-1?Q?+4vPPUV/AcpZAIakYcu5IjVIh7fIpsrY+BXFhk4A8fz3e+8ydM69qdvFv/?=
 =?iso-8859-1?Q?atlbnS1FXrPdD+rcP5kowXogpEGnnBgJqv5PKD/Bv4EbTmFbbHzHtSj2gv?=
 =?iso-8859-1?Q?XnS/noFsRIIaUJoxuVJYPR+y4a5kqKVwLx2Y8ByGBwrLC0IP0N5N4F5zkq?=
 =?iso-8859-1?Q?vRoqlWOJ1zTlO9xsexMVLKOx6UgpHGbJyaopaJxQknr6AGcxUgJdjftPKO?=
 =?iso-8859-1?Q?cMhNasqAg415HqXUO0pUmoRgDSsuYwpUdmylc7bqMrl+/Im19nK182+i94?=
 =?iso-8859-1?Q?FGjZgLrVfU+Duh4ci1nMK2PWKZ/j9OL+0XtfPCNWb0nAYbxfC2ZrbAIF6+?=
 =?iso-8859-1?Q?9iT8jS4x1FmL1twybXrmPPjtD4eK9pJMeJbHKnCeZf5zhgEuxzaHJLQTpw?=
 =?iso-8859-1?Q?E8FxrP3Bo247DCGBtmM2jYZP8zqUIJUZwIb28BU17TtfXsNkWvA6P03Hx8?=
 =?iso-8859-1?Q?C431D/o3vM7OXkXFbwYYqbDPJQqyspycIABaw3kkYL7Vi0N8ln3dL8ELJo?=
 =?iso-8859-1?Q?Y432LYVi297U5OQ7KYOltoxRdZDira06L2/IdHX9xZ5VftrIxkfXEwHtIP?=
 =?iso-8859-1?Q?Z+TaJ7ty16+swV+v0InCV5YA/SWup9H8xsrOt/F2Yk6ikdh2Lij0DW0t+A?=
 =?iso-8859-1?Q?st6Py52hJab+xuKFvvfEK1NZMtmCijNCYHBw96q82gfklUezu82IvBv5aV?=
 =?iso-8859-1?Q?XJ83tHLB87hMfcnRnDNdHQavvqxYgxZ1diVA7iLkLyxSucpLGG8SNgo1V9?=
 =?iso-8859-1?Q?voPe2CBAv/p7Cm2uNjnm57SlkdQClWILgx6Mb08B?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797F9AD4D6B38084C30781DB9292BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 345f5034-de0a-4311-be5b-08dd0f8d8f94
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 09:18:03.0020
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x8Dl5rXtn01TCLnOTrHSpmRIo0zFAg7gX2Mg86qILgVKl2WW5whRbhdIMawA17+XZ/6VN2tRq53HgozogFaWug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6923
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 09:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64371

--_000_BL4PR11MB8797F9AD4D6B38084C30781DB9292BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.23 Release is now availabl=
e for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/poky-8e092852=
b63e998d990b8f8e1aa91297dec4430f.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/poky-8e092852b63e998d990=
b8f8e1aa91297dec4430f.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-4.0.23 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.23
Git Revision: 8e092852b63e998d990b8f8e1aa91297dec4430f
Release Artefact: poky-8e092852b63e998d990b8f8e1aa91297dec4430f
sha: 339d34d8432070dac948449e732ebf06a888eeb27ff548958b2395c9446b029d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/poky-8e092852=
b63e998d990b8f8e1aa91297dec4430f.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/poky-8e092852b63e998d990=
b8f8e1aa91297dec4430f.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.23
Git Revision: fb45c5cf8c2b663af293acb069d446610f77ff1a
Release Artefact: oecore-fb45c5cf8c2b663af293acb069d446610f77ff1a
sha: 1d394370ea7d43fb885ab8a952d6d1e43f1a850745a5152d5ead5565a283a0f5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/oecore-fb45c5=
cf8c2b663af293acb069d446610f77ff1a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/oecore-fb45c5cf8c2b663af=
293acb069d446610f77ff1a.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.23
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/meta-mingw-87=
c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/meta-mingw-87c22abb1f11b=
e430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.23
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/meta-gplv2-d2=
f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/meta-gplv2-d2f8b5cdb285b=
72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.23
Git Revision: fb73c495c45d1d4107cfd60b67a5b4f11a99647b
Release Artefact: bitbake-fb73c495c45d1d4107cfd60b67a5b4f11a99647b
sha: 5cd271299951f25912a2e8d4de6d8769a4c0bb3bbcfc90815be41f23fd299a0b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/bitbake-fb73c=
495c45d1d4107cfd60b67a5b4f11a99647b.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/bitbake-fb73c495c45d1d41=
07cfd60b67a5b4f11a99647b.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.23
Git Revision: 188d4317fc7c6ebf0e6803e3240e9e3ba2024442


- ---------------
Contributors
- ---------------
Aleksandar Nikolic
Alexandre Belloni
Antoine Lubineau
Antonin Godard
Archana Polampalli
Ashish Sharma
Baruch Siach
Eil=EDs 'pidge' N=ED Fhlannag=E1in
Jose Quaresma
Julien Stephan
Khem Raj
Lee Chee Yang
Macpaul Lin
Martin Jansa
Michael Opdenacker
Ola x Nilsson
Peter Marko
Philip Lorenz
Randolph Sapp
Richard Purdie
Robert Yang
Rohini Sangam
Ruiqiang Hao
Siddharth Doshi
Steve Sakoman
Talel BELHAJSALEM
Wang Mingyu
Yogita Urade
Zoltan Boszormenyi


- ---------------
Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
curl: Fix CVE-2024-9681
expat: Fix CVE-2024-50602
gcc: Ignore CVE-2023-4039
ghostscript: Fix CVE-2023-46361 CVE-2024-29508
gstreamer1.0: Ignore CVE-2024-0444
libarchive: Fix CVE-2024-48957 CVE-2024-48958
openssl: Fix CVE-2024-9143
orc: Fix CVE-2024-40897
python3: Ignore CVE-2023-27043 CVE-2024-6232 CVE-2024-7592
qemu: Fix CVE-2023-3019
vim: Fix CVE-2024-43790 CVE-2024-43802 CVE-2024-45306 CVE-2024-47814
zstd: Fix CVE-2022-4899


- ---------------
Fixes
- ---------------
at-spi2-core: backport a patch to fix build with gcc-14 on host
bitbake: bitbake: doc/user-manual: Update the BB_HASHSERVE_UPSTREAM
bitbake: codeparser: Fix handling of string AST nodes with older Python ver=
sions
bitbake: fetch2/git: Use quote from shlex, not pipes
bitbake: gitsm: Add call_process_submodules() to remove duplicated code
bitbake: gitsm: Remove downloads/tmpdir when failed
bitbake: tests/fetch: Use our own mirror of mobile-broadband-provider to de=
couple from gnome gitlab
bitbake: tests/fetch: Use our own mirror of sysprof to decouple from gnome =
gitlab
bmap-tools: update HOMEPAGE and SRC_URI
build-appliance-image: Update to kirkstone head revision
cmake: Fix sporadic issues when determining compiler internals
cracklib: Modify patch to compile with GCC 14
cve-check: add CVSS vector string to CVE database and reports
cve-check: add support for cvss v4.0
cve_check: Use a local copy of the database during builds
dev-manual: document how to provide confs from layer.conf
documentation: Makefile: add SPHINXLINTDOCS to specify subset to sphinx-lin=
t
documentation: Makefile: fix epub and latexpdf targets
documentation: README: add instruction to run Vale on a subset
documentation: brief-yoctoprojectqs: update BB_HASHSERVE_UPSTREAM for new i=
nfrastructure
documentation: conf.py: add a bitbake_git extlink
documentation: rename :cve: role to :cve_nist:
documentation: styles: vocabularies: Yocto: add sstate
documnetation: contributor-guide: Remove duplicated words
gcc: restore a patch for Neoverse N2 core
glib-2.0: patch regression of CVE-2023-32665
kmscube: create_framebuffer: backport modifier fix
libffi: backport a fix to build libffi-native with gcc-14
linux-firmware: Upgrade to 20240909
local.conf.sample: update BB_HASHSERVE_UPSTREAM for new infrastructure
migration-guide: add release notes for 4.0.22
migration-guide: release-notes-4.0: update BB_HASHSERVE_UPSTREAM for new in=
frastructure
nativesdk-intercept: Fix bad intercept chgrp/chown logic
orc: Upgrade to  0.4.40
overlayfs-etc: add option to skip creation of mount dirs
overview-manual: concepts: add details on package splitting
package: Switch debug source handling to use prefix map
patch.py: Use shlex instead of deprecated pipe
poky.conf: bump version for 4.0.23
pseudo: Disable LFS on 32bit arches
pseudo: Fix envp bug and add posix_spawn wrapper
pseudo: Fix to work with glibc 2.40
pseudo: Switch back to the master branch
pseudo: Update to include logic fix
pseudo: Update to include open symlink handling bugfix
pseudo: Update to pull in fchmodat fix
pseudo: Update to pull in fd leak fix
pseudo: Update to pull in gcc14 fix and missing statvfs64 intercept
pseudo: Update to pull in linux-libc-headers race fix
pseudo: Update to pull in python 3.12+ fix
pseudo: Update to pull in syncfs probe fix
ref-manual: add description for the "sysroot" term
ref-manual: add missing CVE_CHECK manifest variables
ref-manual: add missing EXTERNAL_KERNEL_DEVICETREE variable
ref-manual: add missing OPKGBUILDCMD variable
ref-manual: devtool-reference: document missing commands
ref-manual: devtool-reference: refresh example outputs
ref-manual: introduce CVE_CHECK_REPORT_PATCHED variable
ref-manual: release-process: add a reference to the doc's release
ref-manual: release-process: refresh the current LTS releases
ref-manual: release-process: update releases.svg
ref-manual: release-process: update releases.svg with month after "Current"
ref-manual: structure.rst: document missing tmp/ dirs
ref-manual: variables: add SIGGEN_LOCKEDSIGS* variables
syslinux: Disable error on implicit-function-declaration
util-linux: Define pidfd_* function signatures
vala: add -Wno-error=3Dincompatible-pointer-types work around
vim: Upgrade to 9.1.0764
xmlto: backport a patch to fix build with gcc-14 on host
zip: Fix build with gcc-14
zip: Make configure checks to be more robust


--_000_BL4PR11MB8797F9AD4D6B38084C30781DB9292BL4PR11MB8797namp_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 4.0.23 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.23/poky-8e092852b63e998d=
990b8f8e1aa91297dec4430f.tar.bz2">http://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.23/poky-8e092852b63e998d990b8f8e1aa91297dec4430f.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://m=
irrors.kernel.org/yocto/yocto/yocto-4.0.23/poky-8e092852b63e998d990b8f8e1aa=
91297dec4430f.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yocto-4.0.23/p=
oky-8e092852b63e998d990b8f8e1aa91297dec4430f.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.23/RELEASENOTES">http://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"http://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.23/testreport.txt">http:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.23/testreport.txt</a>=
<o:p></o:p></span></p>
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.23 Releas=
e Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- -----------------=
---------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8e092=
852b63e998d990b8f8e1aa91297dec4430f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-8e092852b63e998d990b8f8e1aa91297dec4430f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 339d34d8432070=
dac948449e732ebf06a888eeb27ff548958b2395c9446b029d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.23/poky-8e092852b63e998d990b8f8e1aa=
91297dec4430f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.23/poky-8e092852b63e998d990b8f8e1aa91297dec443=
0f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: fb45c=
5cf8c2b663af293acb069d446610f77ff1a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-fb45c5cf8c2b663af293acb069d446610f77ff1a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 1d394370ea7d43=
fb885ab8a952d6d1e43f1a850745a5152d5ead5565a283a0f5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.23/oecore-fb45c5cf8c2b663af293acb06=
9d446610f77ff1a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.23/oecore-fb45c5cf8c2b663af293acb069d446610f77=
ff1a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 87c22=
abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: f0bc4873e2e031=
9fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.23/meta-mingw-87c22abb1f11be430caf4=
372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.23/meta-mingw-87c22abb1f11be430caf4372e6b833dc=
7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: c386f59f8a6727=
47dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.23/meta-gplv2-d2f8b5cdb285b72a4ed93=
450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.23/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca2=
7aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: fb73c=
495c45d1d4107cfd60b67a5b4f11a99647b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-fb73c495c45d1d4107cfd60b67a5b4f11a99647b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 5cd271299951f2=
5912a2e8d4de6d8769a4c0bb3bbcfc90815be41f23fd299a0b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-4.0.23/bitbake-fb73c495c45d1d4107cfd60b=
67a5b4f11a99647b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.23/bitbake-fb73c495c45d1d4107cfd60b67a5b4f11a9=
9647b.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.23<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 188d4=
317fc7c6ebf0e6803e3240e9e3ba2024442<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexandre Belloni<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antoine Lubineau<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ashish Sharma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Baruch Siach<br>
Eil=EDs 'pidge' N=ED Fhlannag=E1in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jose Quaresma<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Julien Stephan<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Macpaul Lin<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Martin Jansa<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Opdenacker<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ola x Nilsson<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Philip Lorenz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Randolph Sapp<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rohini Sangam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ruiqiang Hao<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Siddharth Doshi<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Talel BELHAJSALEM<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zoltan Boszormenyi<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
9681<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: Fix CVE-2024=
-50602<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: Ignore CVE-202=
3-4039<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2023-46361 CVE-2024-29508<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2024-0444<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2024-48957 CVE-2024-48958<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: Fix CVE-20=
24-9143<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: Fix CVE-2024-4=
0897<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Ignore CVE=
-2023-27043 CVE-2024-6232 CVE-2024-7592<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2023-=
3019<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Fix CVE-2024-4=
3790 CVE-2024-43802 CVE-2024-45306 CVE-2024-47814<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zstd: Fix CVE-2022-=
4899<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">- ---------------<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">at-spi2-core: backp=
ort a patch to fix build with gcc-14 on host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: bitbake: d=
oc/user-manual: Update the BB_HASHSERVE_UPSTREAM<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: codeparser=
: Fix handling of string AST nodes with older Python versions<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2/git=
: Use quote from shlex, not pipes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Add=
 call_process_submodules() to remove duplicated code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: gitsm: Rem=
ove downloads/tmpdir when failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of mobile-broadband-provider to decouple from gnome g=
itlab<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: tests/fetc=
h: Use our own mirror of sysprof to decouple from gnome gitlab<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bmap-tools: update =
HOMEPAGE and SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Fix sporadic=
 issues when determining compiler internals<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cracklib: Modify pa=
tch to compile with GCC 14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: add CVSS=
 vector string to CVE database and reports<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-check: add supp=
ort for cvss v4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve_check: Use a lo=
cal copy of the database during builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: documen=
t how to provide confs from layer.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: add SPHINXLINTDOCS to specify subset to sphinx-lint<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: Make=
file: fix epub and latexpdf targets<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: READ=
ME: add instruction to run Vale on a subset<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: brie=
f-yoctoprojectqs: update BB_HASHSERVE_UPSTREAM for new infrastructure<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: conf=
.py: add a bitbake_git extlink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: rena=
me :cve: role to :cve_nist:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documentation: styl=
es: vocabularies: Yocto: add sstate<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">documnetation: cont=
ributor-guide: Remove duplicated words<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: restore a patc=
h for Neoverse N2 core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: patch reg=
ression of CVE-2023-32665<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kmscube: create_fra=
mebuffer: backport modifier fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libffi: backport a =
fix to build libffi-native with gcc-14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-firmware: Upg=
rade to 20240909<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">local.conf.sample: =
update BB_HASHSERVE_UPSTREAM for new infrastructure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: ad=
d release notes for 4.0.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guide: re=
lease-notes-4.0: update BB_HASHSERVE_UPSTREAM for new infrastructure<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">nativesdk-intercept=
: Fix bad intercept chgrp/chown logic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: Upgrade to&nbs=
p; 0.4.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overlayfs-etc: add =
option to skip creation of mount dirs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual: co=
ncepts: add details on package splitting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package: Switch deb=
ug source handling to use prefix map<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">patch.py: Use shlex=
 instead of deprecated pipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Disable LFS=
 on 32bit arches<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Fix envp bu=
g and add posix_spawn wrapper<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Fix to work=
 with glibc 2.40<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Switch back=
 to the master branch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to i=
nclude logic fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to i=
nclude open symlink handling bugfix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in fchmodat fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in fd leak fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in gcc14 fix and missing statvfs64 intercept<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in linux-libc-headers race fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in python 3.12+ fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Update to p=
ull in syncfs probe fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add des=
cription for the &quot;sysroot&quot; term<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing CVE_CHECK manifest variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing EXTERNAL_KERNEL_DEVICETREE variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: add mis=
sing OPKGBUILDCMD variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: document missing commands<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: refresh example outputs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: introdu=
ce CVE_CHECK_REPORT_PATCHED variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: add a reference to the doc's release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: refresh the current LTS releases<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: release=
-process: update releases.svg with month after &quot;Current&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: structu=
re.rst: document missing tmp/ dirs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: variabl=
es: add SIGGEN_LOCKEDSIGS* variables<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">syslinux: Disable e=
rror on implicit-function-declaration<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">util-linux: Define =
pidfd_* function signatures<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vala: add -Wno-erro=
r=3Dincompatible-pointer-types work around<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vim: Upgrade to 9.1=
.0764<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xmlto: backport a p=
atch to fix build with gcc-14 on host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zip: Fix build with=
 gcc-14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">zip: Make configure=
 checks to be more robust<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797F9AD4D6B38084C30781DB9292BL4PR11MB8797namp_--

