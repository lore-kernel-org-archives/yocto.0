Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13A9FCCFA18
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 06:40:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12021.1762843239954606849
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Nov 2025 22:40:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=NLIxJce1;
 spf=pass (domain: intel.com, ip: 198.175.65.21, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762843241; x=1794379241;
  h=from:to:subject:date:message-id:mime-version;
  bh=hWYeD425+ppM7h41APlshV5U9CmBABrA6FVNh0mXSaA=;
  b=NLIxJce1/n9KaQQgbVDXkoBeYhnR4Q2UmsFW/7WvvpJArKC81uf41/CU
   JgmXp3iRjxgIwxCir0hERHA9wPMvcw/59N5dJMLQ4qzNkCWZDqFIzY8A1
   Sf11XZ/7LgkQTnB8kARkICdtwxSGgFCiPpbeeFiSzzEEjjVtT0+/iNLu5
   eOrLmRw1WbBhum3ig2bR4M7dfqGGRLz91kF0Uyf3XK+kT4yQRw4zqx3DS
   GbGOFOcnbd8ykv3CPrLcGFLI4zjVz/P9IX4YTmI1+DWLULJO4j2TMEvO/
   HPDot5vxoalND9Q8V4L/VDSngI6OhzgJLi0MnRBo1sybw74THtb83kza8
   Q==;
X-CSE-ConnectionGUID: Oqvp2A1jSuaAYeZWMKJFLg==
X-CSE-MsgGUID: rv5gvgfvRg+NdZYZlmM4Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64817849"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
   d="scan'208,217";a="64817849"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 22:40:32 -0800
X-CSE-ConnectionGUID: wag3+x8oRJOsmfTvHlVngQ==
X-CSE-MsgGUID: 33uxEqfZRHK+jVVmuVxIDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; 
   d="scan'208,217";a="188521392"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 22:40:29 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:40:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:40:29 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:40:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJ0Of7gsQ21ipq2jYVLtVSC3klW1t0L7FgVOHb7Ez6zDpbEYw2N38H870fB/FqGnZiJO3dvFnTG68ln+wdU2smvV7FF3qK64fSxc/os8exxpUQ94qjSr16/Vol5FHTdkUFOrZPomkZyAK2YuYvXwgGbzyvtxixDDDaIu5H82C9/pxqUR9EzjFIFYclJ0HisrySLDSteja9pe9Tt/tvFBixdZbZi93pE3HG9Ob99N95OUa3ibk/6bURnIHtASytjE/9Gqkcdr1jmR9MXPb2bbgUeG2Xg5YBfcAAa+jj30O9AwR+HL5Ox03v0Aur9bksgnrUyGGNUvDzcf3AclR5rLPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ASsO4QHi2SP8EwSSj8MyUNOvzWfxB2jZ+XRqfywnU1A=;
 b=NyK07CH5UK+6wOko4CaEkIWy/KM9btK39qH4VGwgQk1bWE5N01ZqJJ2TpElD1RqOXzxPd9AJQoZQPq3yrSoI22BWSqWLyWBTDrYLfi4OOAwq78ir5/UojLH0Hlh2BHY8Ggg4RJPSMuZB5A6k2zSSmKH5g1E+sdaGtBLhHjTvYi+FhE5KXN57bc8EHy3xkk3Jc6D5s70I8h+kfl721wcMSFAKhVePSZbhxsRVhP4UXRSRAXVrMqkjbHgv6CqWuTpSHz7pKjlMIfa2seRwfgSM18cQm7I3Gqee4BubnaTNrRd2r7Jq02YEJVvye4HKi8sluiusqkw/H//N2xAQYYY8ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH0PR11MB5096.namprd11.prod.outlook.com (2603:10b6:510:3c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 06:40:27 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 06:40:27 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.3 (yocto-5.3_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 5.3 (yocto-5.3_M3)
  Now Available
Thread-Index: AdxS1SsjQ6CQ29hnQiqSCk+MWpZrww==
Date: Tue, 11 Nov 2025 06:40:27 +0000
Message-ID: <BL4PR11MB8797B9F3B3D681F60669EAC0B9CFA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH0PR11MB5096:EE_
x-ms-office365-filtering-correlation-id: ddca9df7-b824-47c6-c4a8-08de20ed3330
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: =?us-ascii?Q?Rg6jJnkd6SszZNxEBB/VNpf8IimxdoZ5LUhoST1Zgo0XWOoVyg8miZGm7IcI?=
 =?us-ascii?Q?hexPceSn/18MFtjHUVWISzkkQGpEDijdf1u45hpHebvxjImrWH00CDA/Z5o+?=
 =?us-ascii?Q?BYldgCU8ITH6wlcIZfqiG2Nb4HPHSb1sXRC4rfMS/arUBZSVr3r9BxuFKSy+?=
 =?us-ascii?Q?F7nQOHLnN25dZuPmPn/pBKPD/m8WbOzIsx1pqqTH+tslAlmnYNc71wir2e9Y?=
 =?us-ascii?Q?94k3OfP6kiM4FVEFaengXv08xVq1frehhakfCkvpGOBqNyHPTRlkl1dLtEwu?=
 =?us-ascii?Q?Mc2n4yefTdAakid0Okly3nCqq2br7y5ucibE5uD3bFoTq2d7l972xm15omse?=
 =?us-ascii?Q?q05b21uisoe0/vpWoL3zZM0MSF901r5bMVkijv1iTLocrD6e/oNZhgKWUush?=
 =?us-ascii?Q?tMh6M7R4OcVqJ8xo6ABi2ejv0clg78ZpqvJ6UifHA4IjkmYqZVvwixC2KOJ5?=
 =?us-ascii?Q?SUimfm4WWKvpN/gld/5FHYMzJHlyBAPEljCiOaJZ/WnkHh0XGwxNuZ/pUq72?=
 =?us-ascii?Q?l/jY2pL4axlyFc5Z0tL9MuSyl9/bOc2726UZ1m8MN93AUNkE0FebRfxoP4cT?=
 =?us-ascii?Q?W4do5xSITd8I3UQybWgefw4u3sVYp+Dtt0O625Ee0T89bVxW9xdJmO8fLWCC?=
 =?us-ascii?Q?+Jzl/fkQZfS6scyVfjb2aBWL3qVkADWJB6oXO2jRPKE6b0ejvMhCbkAFEkkM?=
 =?us-ascii?Q?XBrj1A5chUp83NyrTUxa/Jj6ruZZKbe8EYhvMIsTdzs5tf1zPzqbA+pIX11v?=
 =?us-ascii?Q?uakcV5hPXHJDqOHyNjU4+0ttOJfohVaNhdsQ6o7q9bNU7XBA0qUH/FzT9+Qe?=
 =?us-ascii?Q?3LVlkfP1ynMI58zR7SDFBcwYOmnphWxG6kHG6bazgjZOadaqoHx25AiZbrAy?=
 =?us-ascii?Q?Ntlge90f7I8LwSWGfbQCz6TQ8tQvp6dP/Z5NNxm/xFpfsmE0OKC+0pfo0ZEA?=
 =?us-ascii?Q?GR/6uaHZYwT9EhR7ZEFNjTbBXdmGbXVsmMGJrtr6wKOhsqk1UIofljpkXAHX?=
 =?us-ascii?Q?/ExUfZjRAKSbnIh2btaHN9+BtPzfSmelJRMpsTvbHN0iPngAN6lxcLTIgvpI?=
 =?us-ascii?Q?dsnidepWd9KDznf/MFApVg41YxSNjOJl1I3Gzu6XYCXtXMgCyX42LCa0UxK7?=
 =?us-ascii?Q?jbJLM2Ppr/6HIwtzPi0bS+C6RqFkJUsmylG+d+aFfOHJgJUqGQtRcOfN3D5+?=
 =?us-ascii?Q?ap4UMviDKWO9VO37CupxWJLxkT6Ip1Ld3DtztcvHxXh0AqGIMTFqEDjeiNSP?=
 =?us-ascii?Q?trLzsMkdkGBk88qSC6YCumcsI6JrCq8ag8qVGVS5yNacxfLq4D0R3lsBBLhR?=
 =?us-ascii?Q?NPHXYfC80irhBef7/YZfD5HJYwJbopF2ZDPZk5a8KfMxm2cje07NIIEXDb6x?=
 =?us-ascii?Q?4LUCIEzN5HK/LP9XWjWAgmeYTF9zu+ujQqatKdG2ixMsLpkfWIHjNwAozU2d?=
 =?us-ascii?Q?VJga8r4L3Mrd5Kvj5iY7LFuFmqbp6NDNQixzCUbQ93PQbk8Hk+UhuA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eLOZ67X3X/jjpsFuExgqO18a4+nAHYIo7YhemLDovdCGcpZFkemeEemDNk7I?=
 =?us-ascii?Q?JihnpHZoXGlBuHgSDNc626npY/z5ONCC0/lx6bC6LSSY3rWFGAGRXKmQmEyc?=
 =?us-ascii?Q?3qJGLUoxEF1RD2bfbqd8yoEhz4vTz6YpJrVdS56/ISyS6tT5qQgOn8oHLny4?=
 =?us-ascii?Q?ILlKV6o+R2x7jPLkRcA30AuY+wyyTMONar7LfhXXoWYxVFKubLNroMKjRW7I?=
 =?us-ascii?Q?DzK+hcE6CLmvPNQ4tJCU7QZD94/kPNqY97L/JZJeHUM/+D8d5desBZaa9G8t?=
 =?us-ascii?Q?RL8IRw8xBfr6UjLXN9oSqL4qJ5I2ZkweGwlpFn21sc1AhhVW5PNRv38utfXi?=
 =?us-ascii?Q?lXZGFARdNaMCMnjXlRQuwwdv2ecOkSS5NNqQunIy2+G4caExtS+jQh4UJxOb?=
 =?us-ascii?Q?CF3EGbWY8j3d2ZoaPF99sragNhwEmczR52uxC5A7wOq4toQJ/Im74SaJyHR7?=
 =?us-ascii?Q?p96I1pBTRvEkjIgCaUkX9SMx6+GK0lpfRRrbHcAUYyRaDYAZOs6TB7wm0sH+?=
 =?us-ascii?Q?2KBmAX81CFzbledmITZ4LaDkGX7ueKg6U9q8507RuyGg5wuBwoGNcqS2p/mj?=
 =?us-ascii?Q?WdiWIrtZksq9q+kx1/vJGvuT2wdkrtc67O/IYV63iTaMKl8MT/3YImSUfP9C?=
 =?us-ascii?Q?Djl8ioSwzu/YPfVkJtsY947GN1scU6ePntrKNsntKM0RchjOdpm0H0Ngp/vg?=
 =?us-ascii?Q?PbXU8va5QJmyz4uyGx3IeBv4orlzQ/dcI/Mrb7hmtqhtazoyopvtb3Y1RTC1?=
 =?us-ascii?Q?S8kz3Jq+iy7cT9w7ZsJmIEze2BB1jDMcE3d/wTie/w+QMLuoNen9LJi53J7h?=
 =?us-ascii?Q?MBMM387orVLH6tpitGqvjmrRQHAurh9fZ0+LEVKvu0ws/rD1OkySAdMEzZ7N?=
 =?us-ascii?Q?jGUoZPkqyBYiTa0kKKLB+h0V+UkuOESWde/8d0Ih8ZNt1s8U7T0UHIOhB/Mk?=
 =?us-ascii?Q?1p7+p6dq13YTnoIFRITsKWQjdMXlG0b5ntSJ27irXq0uS4JoKNA30mmff30f?=
 =?us-ascii?Q?x/oCgpP3j8RwnvY/ip/VLhxaKZlWNgvQOz4cdc5nI8oSaO2EHA51F6EUxY9g?=
 =?us-ascii?Q?S0wdgp3wivxIpHm6D5tTqH+fsmXsgM8UuqeTkwFJMDPGmLqhgxSh5UsoLANg?=
 =?us-ascii?Q?GxEkhtTsUDFK8B6Gz1wmYkwgkMdCsdhHY32yXP+SLpUx+3WmjKmTg6Qz7BrN?=
 =?us-ascii?Q?biBsgLi068/+4mZ9Etq85MWYnkYgYze2a5wDAprKUOJEwvipq8ynkrf3sFYc?=
 =?us-ascii?Q?39VJn+ZM+Bu9FFHcrvJ2XHNSmRmEmlAFFSspM48P1ePIQ+cAGcvNgU9maDMg?=
 =?us-ascii?Q?wGh2TWlnbHtuubIf/VDVhWxctDWjoDKml46EuXqA/u2HQm8LVQtyQrtq44z4?=
 =?us-ascii?Q?lchghMEm9L1w8ZF2F6u1Q+wtwqV+gDc28s5QA0u6U6Vlp4fUP2YBbPILU5+c?=
 =?us-ascii?Q?+vl6ccWP2qsrEcKKEGEqXvTHnKdiHsNjN7wCSeRDG9Lp8wah9NDS0H3iJzPL?=
 =?us-ascii?Q?gUJxVWNQe6ZDmU/oaH1Y/4vX30QgbwrASliZtzrEhvyF72oo9ab63CqXIxGq?=
 =?us-ascii?Q?b4MZEvs0r8xHAEgN41Zw2qKLdNLiul8N8cR8NSPB?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797B9F3B3D681F60669EAC0B9CFABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddca9df7-b824-47c6-c4a8-08de20ed3330
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:40:27.1221
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qmx4vWWIUIuiy7DRIYtziLCu+6K+E1WM24NrzrUK2Y5l12LxgNeYrragAeVARGgGk8q76O9TSFTWZITSqMu3Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5096
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 06:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66015

--_000_BL4PR11MB8797B9F3B3D681F60669EAC0B9CFABL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the third milestone release for Yocto Project 5.=
3 (yocto-5.3_M3) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M3

bitbake: 8b582ef8dd0cef0192d4c0104bcd9b5d642d132c
meta-agl: f30cc1bec758954f7cc44f15b1df3c7a49ff2e1c
meta-arm: 40a5aac50c2540d32f79c30accd4bd5e891a87a4
meta-aws: 20cdd76c203b9b5b3331a145e9afcc9171a40b7d
meta-clang: 9c772c10f9001db62e4391b6617d03086a24beb1
meta-intel: c347d0be75958ca095d4ad320c6f2faf88b364a6
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
meta-openembedded: b28f8caccfefa7c03ec193a67fa8b11deeafa558
meta-virtualization: 437efd9259c1786c130c724290cb1e46d50edcb2
meta-yocto: fe65e142d0d9ba0e51ff9175ffa82e902f982a20
oecore: 5298d01663f897e38380116edf23973d2a156cbc
yocto-docs: 8b85245490ae0b19a9c3880ec31e55b42e19d094

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M3/t=
estreport.txt

Notes:

This will be the last release where the poky repository is available.

You can either use the separate repositories, or use bitbake-setup going fo=
rwards. Please see https://git.yoctoproject.org/poky/tree/README for more i=
nformation.



There was a kernel issue found in the release,

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15704 and this has been=
 fixed in recent commits.


Thank you.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release

--_000_BL4PR11MB8797B9F3B3D681F60669EAC0B9CFABL4PR11MB8797namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
We are pleased to announce the third milestone release for Yocto Project 5.=
3 (yocto-5.3_M3) is now available for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M3">https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M3</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: 8b582ef8dd=
0cef0192d4c0104bcd9b5d642d132c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-agl: f30cc1bec=
758954f7cc44f15b1df3c7a49ff2e1c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-arm: 40a5aac50=
c2540d32f79c30accd4bd5e891a87a4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-aws: 20cdd76c2=
03b9b5b3331a145e9afcc9171a40b7d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-clang: 9c772c1=
0f9001db62e4391b6617d03086a24beb1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-intel: c347d0b=
e75958ca095d4ad320c6f2faf88b364a6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-mingw: 00323de=
97e397d4f6734ef2191806616989f5e10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-openembedded: =
b28f8caccfefa7c03ec193a67fa8b11deeafa558<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-virtualization=
: 437efd9259c1786c130c724290cb1e46d50edcb2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">meta-yocto: fe65e14=
2d0d9ba0e51ff9175ffa82e902f982a20<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oecore: 5298d01663f=
897e38380116edf23973d2a156cbc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-docs: 8b85245=
490ae0b19a9c3880ec31e55b42e19d094<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-5.3_M3/testrepor=
t.txt">https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-5=
.3_M3/testreport.txt</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><br>
Notes:<br>
<br>
This will be the last release where the poky repository is available. <o:p>=
</o:p></p>
<p class=3D"MsoPlainText">You can either use the separate repositories, or =
use bitbake-setup going forwards. Please see
<a href=3D"https://git.yoctoproject.org/poky/tree/README">https://git.yocto=
project.org/poky/tree/README</a> for more information.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">There was a kernel issue found in the release,<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D15704">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15=
704</a> and this has been fixed in recent commits.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797B9F3B3D681F60669EAC0B9CFABL4PR11MB8797namp_--

