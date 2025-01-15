Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B5CC02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 05:50:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by mx.groups.io with SMTP id smtpd.web11.14963.1736920229154435016
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 21:50:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=KoZKOHLF;
 spf=pass (domain: intel.com, ip: 192.198.163.9, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736920229; x=1768456229;
  h=from:to:subject:date:message-id:mime-version;
  bh=pMHFqQvcDZvCz7Rtw8irtwc8p4qyK3pImjTKoSyd+Dw=;
  b=KoZKOHLFKeiSc3yWRxf5aXbWpAvjGB9Kq4TP8TB3S2hCLd509tR6i5mM
   lFduCVt+4GJs5OCF7s8n+pTDiM9cOQUzd5h+0ksikRx3UKZ6fEHBuQ2pq
   jHk1LayP9j1h3Xl+9cmR0HC/mjgFI06g0pNMzV1rp+8d4/rW28cRJP5nM
   EVeLf8O/Ic3q1rX50kFAQiEBEZDCAlZdTw60AnAtNmePJGRRlF9whLsCp
   D6PY1WpUZrPrmSdUPjjscb6quvKaUPH7L9yrurljUAd1Dg3OTQDTBam3E
   xbN045kQQuxVrw8y1GqWoPXu3IvIF/sG3nn8NwRpJ0yO59+DM075a9DrZ
   w==;
X-CSE-ConnectionGUID: ymKzdEkHRA60BCtrOGR8Eg==
X-CSE-MsgGUID: 4D6nMGmzQ4qW3jjG5RGRZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="47905759"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; 
   d="scan'208,217";a="47905759"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2025 21:50:28 -0800
X-CSE-ConnectionGUID: dsoBC06SSSC0/JJStMKcDA==
X-CSE-MsgGUID: 3XNsdkKEQnifBf7lBEAxEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; 
   d="scan'208,217";a="105563410"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 14 Jan 2025 21:50:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 21:50:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 21:50:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 21:50:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dTH3h9bRdA2g4ydnAzxkGq2VdlC5ky6Th6FlXqYrAe8WW9hMBCsw+ioHUe8bfPJ5oyOt2ntsc2Nw1FAn7qH3abiFWKBE3246IIyL704AZsHqrbPForP/6J9K2pGozS2oxWWtQWhj+OHM5+s2r+iXIaJaLknGLV0Pdwng9l70iAhxqO2bf7WuVN2d9bC4mb9mVyo3LKl7UD+JTvZvz0BBx4oS0cS9uqNh236onNzNZRHKXWonacUxmiGgclluM/U7hei2eq2dH2WSqsZAfC0nXImLYFXuT+fiFLmjBsz68SrWMzktEv3k+yEcOwlIJsZ9dOxEyJZ1XOU84ftdvg3bAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8HKBC5RVAYM47hYVzhnlXP19gDiBGG4cVGdFapPKI0o=;
 b=qHYOeYSqZW+Tds5suDSkKXbp7Nu7kJ1gnl+5ew/rpx8PseF4n+4hAV7RDv4ZCasQgQCnamj/ZDvnmhfDmsvPjaJq7gl9QTZbv6ntR+pysPHi1guSsWL5A9kuPNwUMth2nUr3yozRzauhp2iRpQyDIdTPyCrXuiGeJQ027KET9A+BKJUXATSbueNXQ+Jap2frICk0725ILvcYfIr0XbzOTwsgqVlXbniIsmSMsABNnwKHucs0cXm9OQdL+LjbMSLtL06dol5OWGtBXOUN2ZCUrEQrnaS/gsnc520CmEzh46Yk53dypq5/uRA61qD1F63j70iTDL0dpvJFdwALV+DtGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA1PR11MB6268.namprd11.prod.outlook.com (2603:10b6:208:3e4::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Wed, 15 Jan
 2025 05:50:24 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 05:50:24 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.6 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.6 is Released
Thread-Index: AdtnDw2Q7EnikFNbTpuPKLzTlTrdfw==
Date: Wed, 15 Jan 2025 05:50:24 +0000
Message-ID: <BL4PR11MB879735F7CE75DC714A57D3FFB9192@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA1PR11MB6268:EE_
x-ms-office365-filtering-correlation-id: 7dfecd5b-d158-4080-45d8-08dd35288191
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018|8096899003;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?9OqqzLZqbvYtZTSZySwXUU0uJoTokW4qhlLAHetigjkmb2Q392Fzmhjukd?=
 =?iso-8859-1?Q?zeYetVg8qvr1fL9lpHmBQAwp9hEHsrxnevb7BoRqaORRkUcNsG5qe3guM0?=
 =?iso-8859-1?Q?hC6uMgb3YJlasXBJo6vhc5m4EhBvb9lwM5W7PyCPTgJCUwmigyichE0Huw?=
 =?iso-8859-1?Q?JF70pRr8eoXlfKXgFZFqJpLpI4WxC8scElgvaRzP1RzKA/eyegd3Y3y/HW?=
 =?iso-8859-1?Q?5cXtbXmAAIf4DicCLkWK22mWnLQOnSZQ7aSjDWMYulN7ddLG/MfTVCilZx?=
 =?iso-8859-1?Q?Qp6II5iXi4TURX4ua1FQu8CymdakrCzg/6NeBdmL1ThEMeIEexprORRbQ7?=
 =?iso-8859-1?Q?AaGtY8fy4vCsYm0IimBDW8uQCj1ZWop1RVA3dJymZWbcR7FyeOwbhYnd0Q?=
 =?iso-8859-1?Q?2G0fKBzuZSGxR/2zZF5/kS8o0ng/4HD0tE1A7D5+wLS+6vvG9miivUqdQV?=
 =?iso-8859-1?Q?yUXnzT/bMKTrOco0L2T6zhJy8IRyoRa8kaXZ5o7Nx99hxs6DdfwQ+wcpi8?=
 =?iso-8859-1?Q?BzM8AE7ti9NOsNoGofJCwbkwVl21QqHpzrUIibN7P0Ss3RwMDfLS31pwiN?=
 =?iso-8859-1?Q?yR5k9oQGGnS/RO+3Mr+12rWPmJ9ruq4n5fH+wwdWsiGzblN+bVm0y9YtWx?=
 =?iso-8859-1?Q?85ef4757wzZS+2m7E2wttqXWgXXgHG6txdpQk9HjJmDHW8S2mEFfBYkDjD?=
 =?iso-8859-1?Q?0kfPTapLiS30AbHLi5VeKx/GD1kuHlOqd+1Tgt3xVbFFcOtMqnIUNgoJ9J?=
 =?iso-8859-1?Q?pJGuZNE65bfb7d6s59zOVsTegNtFrb9YzSHKY7kb4vxRFX1lB1JaJIz1V/?=
 =?iso-8859-1?Q?1m3RHLjCD1NmwUpy9ognhFzL/kgqWgR3GjP4mmmuxB9CrpASIOLk2gYZkj?=
 =?iso-8859-1?Q?ozKvjVgoR4v9dbIGVZYZ4l4CyVe0DOzKz7PWIYp/E2dYgCGeaqU6GU2EGS?=
 =?iso-8859-1?Q?fv/yf47XKnBmrIzXksK5aniMorcikMMlindlQctEbklj1p4qzApKg2YR2Z?=
 =?iso-8859-1?Q?6BwsOPVCSCXrwJIHS49oJ+O7G8yGYGMQCJFTsdtNPp8FA0/YyUjv8RRIbQ?=
 =?iso-8859-1?Q?qEzZpzb+q0pqEGAsoLhKzHfU6yt6iWI24cWHhVJdIlCbU4Lvug0w9YJCFL?=
 =?iso-8859-1?Q?FHF57l6NtqlTiHz/VClNi7C0Qm6OwR9j8Hk0qnuEz4+wDIS907m9DukZ6T?=
 =?iso-8859-1?Q?HfsTzUjBBMm2GhrpqGPgLU9aiee5Ifl6FpRv4il5GdnfxLnu3IfmyjU+XP?=
 =?iso-8859-1?Q?NKbMAappwcgrKNYRGT58p1RJDab398nlgkuFC8m5HlQgfaDeFlrWk0US0C?=
 =?iso-8859-1?Q?O7BgeT+kgZbOgTl6KiMyqaQNIt6niHEfukTUvFEyZ10CcaCUiwp5VXlVZl?=
 =?iso-8859-1?Q?yiMMuun3z1kNEjMVG36VP4LtuyXsvoBhuBvGvM20YWDusGL4f/OOyRo+OF?=
 =?iso-8859-1?Q?7abwRkDl+yWgGZMBCKS52wGKBpwKx/jcS96XBw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?aMvazdVvg0qIETsEsEqMQCd0rHKJ9a1B1uMrYzyVT+raNZOFIJT0qcuDJ5?=
 =?iso-8859-1?Q?L9jC2seZUgl0NgqVNXs1xr2qr8TVH6baovO7hh20tU4Jt4Nq1Cp/R1EkZP?=
 =?iso-8859-1?Q?xHx8111ojSK9CZLsezRvmIoTH6l67ZRoJIIzhx5KBZf2/qKEMHlNpSO2xC?=
 =?iso-8859-1?Q?61m3b3q2rGeGTa03d379sGUhaw1qhfXpGkLSSqPGef3IDOroykaNiBy5xP?=
 =?iso-8859-1?Q?fcHISTf4PwsT/04VquUBLty5tAAUAw3fCzhHtn2AZeu8YnBwNNoX12Mmm9?=
 =?iso-8859-1?Q?SQXdmoDRQrh5YxvBov83ysB2sGDLTStBHBTNzh93mOv9fKo5QIj6ILHFrE?=
 =?iso-8859-1?Q?Y2J717Zxax9hEve1K8HN7MAWSLnWJuiY0sELDNXvQV1EVvYLD1sUfWyUOF?=
 =?iso-8859-1?Q?Vmd4QNRMkOZazHcebCKivErgEfKXZYo+DkHRyG6b2MWzFwxkVIAE55nY+d?=
 =?iso-8859-1?Q?m8vTvmD2UTJ5pTiU6EQ/YE0QhCJ5gCmHJcx4VtzMg0894YfsDzQgMilqYv?=
 =?iso-8859-1?Q?lClvY3mDlhFfEXwg3bmP76OqigqthKhHoyjSQ/kf+6tLrplHQM+GHVgOqw?=
 =?iso-8859-1?Q?whmM1bN1d8BF6SSl290U+vWFwMCvCnu/ZmWFcIrKFqh1e0NvBTRn8O1zJ6?=
 =?iso-8859-1?Q?wTz5B0vn2pZLh090czilZt0wZI4OzpJDnCjJkEr+tJ0nkb8hzYJlVlCoKp?=
 =?iso-8859-1?Q?J39xBVEchswMpwY6IQwcdx/viZLZFp5iuLEqVRkoCbVYr3jI0dAcaTcgdm?=
 =?iso-8859-1?Q?KQQi+ELHBeGKTqAjRwEH5gW4A4x01LkLhx/BqVxjP3VCz8Q3YXbwzfK/VU?=
 =?iso-8859-1?Q?eGhdY3oQ4Jxa3rmHtyY0QAmNT9AV1ZnkIDmaaQVUG50+bPU80K2fNPhXfU?=
 =?iso-8859-1?Q?VaOZAPzrO4sbj7jOkuuNfhJXbCa19N8zQ4KJP4vS8v4o4V69rZVmoeuhzW?=
 =?iso-8859-1?Q?LSLcL5VqW8t6y2dO+KeAuSa+duknxeTHI3DTD498pxCk8GUrOqIpsczx38?=
 =?iso-8859-1?Q?nSvYIe0I4loV9ysn36YzLIZWyq+T2f5Rk5axgICiIhtFGu1qg/7/JXdbcv?=
 =?iso-8859-1?Q?hClQKOXjnVqtjKshBL/7bXErHEtEHvlAO+eYsNhKnvUikP4zvdtDfgLsq4?=
 =?iso-8859-1?Q?6ZvasBxOKo2RJIHwaNXW/sMrGn40Bj9iIyBlG5+kMwHqk8YYMSLK5Pnm87?=
 =?iso-8859-1?Q?0h+rszvWGwHvC7pT0rOb4+bQgJL8KkogC3HB53e++MudqNrNcZE5Ngw6EB?=
 =?iso-8859-1?Q?jEvG3IyETN+0ZXCX2+vwfO9weDBiHG2Fbajt92lXw86PmJCz7KCdUSL/VD?=
 =?iso-8859-1?Q?vYh/mNXgPWxLRP1McUcq5fkMfEvM5wIkE40IWwEreNDbQGHcUEvqlA3I1N?=
 =?iso-8859-1?Q?lVYUzcHkAgY2Geijl9dCPtxEY0dZuM1YLu8G1WukyPN0ETzQdEgid9Skl+?=
 =?iso-8859-1?Q?PqDU+i1BqRXc386cdRy+yJcCAHsXUB9K2MDa0iqz0HTrQ0TetzYE6G+3cx?=
 =?iso-8859-1?Q?fJazpFfcCU3zCUZhchBRSJpgcf37eGHobTf4AXLXPxQpDJlwGJoH0pIfQ0?=
 =?iso-8859-1?Q?fr1pll62Y464kMRy1ZblNpFdnQWiYcpXpyfjyERlnFw0X8SnSc1nbpR1yt?=
 =?iso-8859-1?Q?Iaj7/yC6o2p6/uIrTIjwEuCoHZ9idbv+q/?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879735F7CE75DC714A57D3FFB9192BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dfecd5b-d158-4080-45d8-08dd35288191
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 05:50:24.4873
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zWl9/nArxmWN8yHpRxOFTwQeNE5aI82dRvW1g2DvwNBXv0xpOeMYs6xkbBKj2fQQBiRf8O9N8Y0nTZNEhjdHYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6268
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 05:50:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64554

--_000_BL4PR11MB879735F7CE75DC714A57D3FFB9192BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.6 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/poky-2541a817=
1f91812a4b16e7dc4da0d77d2318a256.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/poky-2541a8171f91812a4b1=
6e7dc4da0d77d2318a256.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--------------------------
yocto-5.0.6 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.6
Git Revision: 2541a8171f91812a4b16e7dc4da0d77d2318a256
Release Artefact: poky-2541a8171f91812a4b16e7dc4da0d77d2318a256
sha: b77157596ae75d163387a08a317397a57ab8fa6cf4725f28e344fae3f69cca4d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/poky-2541a8171=
f91812a4b16e7dc4da0d77d2318a256.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/poky-2541a8171f91812a4b16=
e7dc4da0d77d2318a256.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.6
Git Revision: 336eec6808710f260a5336ca8ca98139a80ccb14
Release Artefact: oecore-336eec6808710f260a5336ca8ca98139a80ccb14
sha: 38c4fa7e7e88c28361c012dd5baabe373e2ec3c8aba6194146768b146192cceb
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/oecore-336eec6=
808710f260a5336ca8ca98139a80ccb14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/oecore-336eec6808710f260a=
5336ca8ca98139a80ccb14.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.6
Git Revision: acbba477893ef87388effc4679b7f40ee49fc852
Release Artefact: meta-mingw-acbba477893ef87388effc4679b7f40ee49fc852
sha: 3b7c2f475dad5130bace652b150367f587d44b391218b1364a8bbc430b48c54c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/meta-mingw-acb=
ba477893ef87388effc4679b7f40ee49fc852.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/meta-mingw-acbba477893ef8=
7388effc4679b7f40ee49fc852.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.6
Git Revision: f40a3a477d5241b697bf2fb030dd804c1ff5839f
Release Artefact: bitbake-f40a3a477d5241b697bf2fb030dd804c1ff5839f
sha: dbfc056c7408a5547f624799621ab1261a05685112e0922a88007723b1edbc87
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/bitbake-f40a3a=
477d5241b697bf2fb030dd804c1ff5839f.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/bitbake-f40a3a477d5241b69=
7bf2fb030dd804c1ff5839f.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.6
Git Revision: 12d0ba4f496b2b28a188d34fc36e36895f397079


---------------
Contributors
---------------
Aleksandar Nikolic
Alexander Kanavin
Antonin Godard
Archana Polampalli
Bin Lan
Changqing Li
Chen Qi
Chris Laplante
Clayton Casciato
Deepthi Hemraj
Divya Chellam
Florian Kreutzer
Gassner, Tobias.ext
Gu=F0ni M=E1r Gilbert
Harish Sadineni
Hitendra Prajapati
Hongxu Jia
Jagadeesh Krishnanjanappa
Jiaying Song
Jinfeng Wang
Joshua Watt
Lee Chee Yang
Markus Volk
Michael Opdenacker
Pavel Zhukov
Peter Marko
Philip Lorenz
Randy MacLeod
Regis Dargent
Richard Purdie
Robert Yang
Ross Burton
Soumya Sambu
Steve Sakoman
Talel BELHAJSALEM
Trevor Gamblin
Vijay Anusuri
Wang Mingyu
Yogita Urade


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
acpica: Fix CVE-2024-24856
curl: Fix CVE-2024-9681
dropbear: Fix CVE-2023-48795
expat: Fix CVE-2024-50602
ffmpeg: Fix CVE-2023-49501 CVE-2023-49528 CVE-2023-50007 CVE-2024-7055 CVE-=
2024-28661
glib-2.0: Fix CVE-2024-52533
ghostscript: Fix CVE-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-4695=
4 CVE-2024-46955 CVE-2024-46956
gstreamer1.0: Ignore CVE-2024-0444
libpam: Fix CVE-2024-10041
libsndfile: Fix CVE-2024-50612
libsoup: Fix CVE-2024-52530 CVE-2024-52531 CVE-2024-52532
ovmf: Fix CVE-2024-1298 CVE-2024-38796
python3-zipp: Fix CVE-2024-5569
qemu: Fix CVE-2024-4693 CVE-2024-6505 CVE-2024-7730
qemu: Ignore CVE-2024-6505


---------------
Fixes
---------------
binutils: Add missing perl modules to RDEPENDS for nativesdk variant
binutils: stable 2.42 branch update
bitbake: Remove custom exception backtrace formatting
bitbake: fetch2/git: Use quote from shlex, not pipes
bitbake: fetch2: use persist_data context managers
bitbake: fetch/wget: Increase timeout to 100s from 30s
bitbake: persist_data: close connection in SQLTable __exit__
bitbake: runqueue: Fix performance of multiconfigs with large overlap
bitbake: runqueue: Fix scenetask processing performance issue
bitbake: runqueue: Optimise setscene loop processing
build-appliance-image: Update to scarthgap head revision
builder: set CVE_PRODUCT
cmake: Fix sporadic issues when determining compiler internals
cml1: do_diffconfig: Don't override .config with .config.orig
contributor-guide: Remove duplicated words
dev-manual: bblock: use warning block instead of attention
dev-manual: document how to provide confs from layer.conf
dnf: drop python3-iniparse from DEPENDS and RDEPENDS
do_package/sstate/sstatesig: Change timestamp clamping to hash output only
doc: Makefile: add support for xelatex
doc: Makefile: publish pdf and epub versions too
doc: Makefile: remove inkscape, replace by rsvg-convert
doc: add a download page for epub and pdf
doc: conf.py: add a bitbake_git extlink
doc: standards.md: add a section on admonitions
doc: sphinx-static: switchers.js.in: do not refer to URL_ROOT anymore
dropbear: backport fix for concurrent channel open/close
enchant2: fix do_fetch error
expat: upgrade to 2.6.4
gcc: backport patch to fix an issue with tzdata 2024b
ghostscript: upgrade to 10.04.0
glibc: stable 2.39 branch updates
groff: fix rare build race in hdtbl
libgcrypt: Fix building error with '-O2' in sysroot path
libpam: drop cracklib from DEPENDS
libxml-parser-perl: fix do_fetch error
llvm: reduce size of -dbg package
lttng-ust: backport patch to fix cmake-multiple-shared-libraries build erro=
r
migration-guides: add release notes for 4.0.23 and 5.0.5
ninja: fix build with python 3.13
oeqa/runtime/ssh: Fix incorrect timeout fix
oeqa/runtime/ssh: Rework ssh timeout
oeqa/utils/gitarchive: Return tag name and improve exclude handling
package_rpm: Check if file exists before open()
package_rpm: restrict rpm to 4 threads
package_rpm: use zstd's default compression level
poky.conf: bump version for 5.0.6
pseudo: Fix envp bug and add posix_spawn wrapper
python3-poetry-core: drop python3-six from RDEPENDS
python3-requests: upgrade to 2.32.2
python3-urllib3: upgrade to 2.2.2
qemu: upgrade to 8.2.7
qemurunner: Clean up serial_lock handling
ref-manual: classes: fix bin_package description
resulttool: Add --logfile-archive option to store mode
resulttool: Allow store to filter to specific revisions
resulttool: Clean up repoducible build logs
resulttool: Fix passthrough of --all files in store mode
resulttool: Handle ltp rawlogs as well as ptest
resulttool: Improve repo layout for oeselftest results
resulttool: Trim the precision of duration information
resulttool: Use single space indentation in json output
rootfs: Ensure run-postinsts is not uninstalled for read-only-rootfs-delaye=
d-postinsts
rxvt-unicode.inc: disable the terminfo installation by setting TIC to :
sanity: check for working user namespaces
scripts/install-buildtools: Update to 5.0.5
selftest/reproducible: Clean up pathnames
selftest/reproducible: Drop rawlogs
shared-mime-info: drop itstool-native from DEPENDS
strace: download release tarballs from GitHub
systemd-boot: drop intltool-native from DEPENDS
systemd: drop intltool-native from DEPENDS
systemd: upgrade to 255.13
sysvinit: backport patch for fixing one issue of pidof
tcl: skip io-13.6 test case
toolchain-shar-extract.sh: exit when post-relocate-setup.sh fails
tune-cortexa32: set tune feature as armv8a
tzcode-native: upgrade to 2024b
tzdata: upgrade to 2024b
uboot-sign: fix concat_dtb arguments
udev-extraconf: fix network.sh script did not configure hotplugged interfac=
es
webkitgtk: fix erroneous use of unsuported DEBUG_LEVELFLAG variable
wireless-regdb: upgrade to 2024.10.07



--_000_BL4PR11MB879735F7CE75DC714A57D3FFB9192BL4PR11MB8797namp_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi <br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">We are pleased to a=
nnounce the Yocto Project 5.0.6 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/poky-2541a8171f91812a=
4b16e7dc4da0d77d2318a256.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.0.6/poky-2541a8171f91812a4b16e7dc4da0d77d2318a256.tar.bz2<=
/a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.6/poky-2541a8171f91812a4b16e7dc4da=
0d77d2318a256.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.0.6/p=
oky-2541a8171f91812a4b16e7dc4da0d77d2318a256.tar.bz2</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/RELEASENOTES</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.0.6/testreport.txt</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">chee.yang.lee@intel=
.com<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.0.6 Release=
 Notes<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.6<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 2541a=
8171f91812a4b16e7dc4da0d77d2318a256<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-2541a8171f91812a4b16e7dc4da0d77d2318a256<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: b77157596ae75d=
163387a08a317397a57ab8fa6cf4725f28e344fae3f69cca4d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.6/poky-2541a8171f91812a4b16e7dc4da0=
d77d2318a256.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.6/poky-2541a8171f91812a4b16e7dc4da0d77d2318a25=
6.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.6<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 336ee=
c6808710f260a5336ca8ca98139a80ccb14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-336eec6808710f260a5336ca8ca98139a80ccb14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 38c4fa7e7e88c2=
8361c012dd5baabe373e2ec3c8aba6194146768b146192cceb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.6/oecore-336eec6808710f260a5336ca8c=
a98139a80ccb14.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.6/oecore-336eec6808710f260a5336ca8ca98139a80cc=
b14.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.6<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: acbba=
477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-acbba477893ef87388effc4679b7f40ee49fc852<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3b7c2f475dad51=
30bace652b150367f587d44b391218b1364a8bbc430b48c54c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.6/meta-mingw-acbba477893ef87388effc=
4679b7f40ee49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.6/meta-mingw-acbba477893ef87388effc4679b7f40ee=
49fc852.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.8<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.6<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f40a3=
a477d5241b697bf2fb030dd804c1ff5839f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-f40a3a477d5241b697bf2fb030dd804c1ff5839f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: dbfc056c7408a5=
547f624799621ab1261a05685112e0922a88007723b1edbc87<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://downloads.yo=
ctoproject.org/releases/yocto/yocto-5.0.6/bitbake-f40a3a477d5241b697bf2fb03=
0dd804c1ff5839f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">http://mirrors.kern=
el.org/yocto/yocto/yocto-5.0.6/bitbake-f40a3a477d5241b697bf2fb030dd804c1ff5=
839f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: scarthgap<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.0.6<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 12d0b=
a4f496b2b28a188d34fc36e36895f397079<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Aleksandar Nikolic<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bin Lan<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Clayton Casciato<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepthi Hemraj<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Florian Kreutzer<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gassner, Tobias.ext=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Harish Sadineni<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jagadeesh Krishnanj=
anappa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Joshua Watt<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Markus Volk<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Opdenacker<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Pavel Zhukov<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Philip Lorenz<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Randy MacLeod<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regis Dargent<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Talel BELHAJSALEM<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Gamblin<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">acpica: Fix CVE-202=
4-24856<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
9681<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dropbear: Fix CVE-2=
023-48795<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: Fix CVE-2024=
-50602<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: Fix CVE-202=
3-49501 CVE-2023-49528 CVE-2023-50007 CVE-2024-7055 CVE-2024-28661<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
024-52533<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-46954 CVE-2024-46955 CV=
E-2024-46956<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Ignor=
e CVE-2024-0444<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10041<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsndfile: Fix CVE=
-2024-50612<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
24-52530 CVE-2024-52531 CVE-2024-52532<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf: Fix CVE-2024-=
1298 CVE-2024-38796<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-zipp: Fix C=
VE-2024-5569<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2024-=
4693 CVE-2024-6505 CVE-2024-7730<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
24-6505<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Add missi=
ng perl modules to RDEPENDS for nativesdk variant<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
42 branch update<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: Remove cus=
tom exception backtrace formatting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2/git=
: Use quote from shlex, not pipes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2: us=
e persist_data context managers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch/wget=
: Increase timeout to 100s from 30s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: persist_da=
ta: close connection in SQLTable __exit__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Fix performance of multiconfigs with large overlap<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Fix scenetask processing performance issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Optimise setscene loop processing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to scarthgap head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">builder: set CVE_PR=
ODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cmake: Fix sporadic=
 issues when determining compiler internals<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cml1: do_diffconfig=
: Don't override .config with .config.orig<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
Remove duplicated words<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: bblock:=
 use warning block instead of attention<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: documen=
t how to provide confs from layer.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dnf: drop python3-i=
niparse from DEPENDS and RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">do_package/sstate/s=
statesig: Change timestamp clamping to hash output only<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: Makefile: add =
support for xelatex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: Makefile: publ=
ish pdf and epub versions too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: Makefile: remo=
ve inkscape, replace by rsvg-convert<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: add a download=
 page for epub and pdf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: conf.py: add a=
 bitbake_git extlink<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: standards.md: =
add a section on admonitions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">doc: sphinx-static:=
 switchers.js.in: do not refer to URL_ROOT anymore<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dropbear: backport =
fix for concurrent channel open/close<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">enchant2: fix do_fe=
tch error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: upgrade to 2=
.6.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: backport patch=
 to fix an issue with tzdata 2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: upgrad=
e to 10.04.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.39 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">groff: fix rare bui=
ld race in hdtbl<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libgcrypt: Fix buil=
ding error with '-O2' in sysroot path<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: drop crackl=
ib from DEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml-parser-perl:=
 fix do_fetch error<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: reduce size o=
f -dbg package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lttng-ust: backport=
 patch to fix cmake-multiple-shared-libraries build error<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.23 and 5.0.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ninja: fix build wi=
th python 3.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime/ssh: F=
ix incorrect timeout fix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/runtime/ssh: R=
ework ssh timeout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/utils/gitarchi=
ve: Return tag name and improve exclude handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: Check =
if file exists before open()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: restri=
ct rpm to 4 threads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: use zs=
td's default compression level<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.0.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pseudo: Fix envp bu=
g and add posix_spawn wrapper<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-poetry-core=
: drop python3-six from RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: u=
pgrade to 2.32.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-urllib3: up=
grade to 2.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: upgrade to 8.=
2.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemurunner: Clean u=
p serial_lock handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: fix bin_package description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Add --l=
ogfile-archive option to store mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Allow s=
tore to filter to specific revisions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Clean u=
p repoducible build logs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Fix pas=
sthrough of --all files in store mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Handle =
ltp rawlogs as well as ptest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Improve=
 repo layout for oeselftest results<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Trim th=
e precision of duration information<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">resulttool: Use sin=
gle space indentation in json output<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rootfs: Ensure run-=
postinsts is not uninstalled for read-only-rootfs-delayed-postinsts<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rxvt-unicode.inc: d=
isable the terminfo installation by setting TIC to :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sanity: check for w=
orking user namespaces<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.0.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Clean up pathnames<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Drop rawlogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">shared-mime-info: d=
rop itstool-native from DEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">strace: download re=
lease tarballs from GitHub<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd-boot: drop =
intltool-native from DEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: drop intlt=
ool-native from DEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: upgrade to=
 255.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sysvinit: backport =
patch for fixing one issue of pidof<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tcl: skip io-13.6 t=
est case<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">toolchain-shar-extr=
act.sh: exit when post-relocate-setup.sh fails<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tune-cortexa32: set=
 tune feature as armv8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzcode-native: upgr=
ade to 2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata: upgrade to =
2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">uboot-sign: fix con=
cat_dtb arguments<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">udev-extraconf: fix=
 network.sh script did not configure hotplugged interfaces<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: fix erro=
neous use of unsuported DEBUG_LEVELFLAG variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wireless-regdb: upg=
rade to 2024.10.07<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879735F7CE75DC714A57D3FFB9192BL4PR11MB8797namp_--

