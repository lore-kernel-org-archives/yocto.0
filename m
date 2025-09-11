Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4ACA1016
	for <webhook@archiver.kernel.org>; Thu, 11 Sep 2025 06:19:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by mx.groups.io with SMTP id smtpd.web11.39578.1757571571024764599
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Sep 2025 23:19:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=O0NmDo/z;
 spf=pass (domain: intel.com, ip: 198.175.65.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757571572; x=1789107572;
  h=from:to:subject:date:message-id:mime-version;
  bh=ETPQ4n63QbcDLnWAyLDjmdlG5J22Fhk3oCZZglNG71U=;
  b=O0NmDo/zluFtH2ApREgWjEJJ41VIz9ahZvfEGY0uq+9ZZ6UqfHba4Lse
   rH9LEf7lCkHq3qu5Rn1HGbE3bmxCkWV3xiRPIUcTqq5IORdepqiAe6g0f
   jY7gdGC/ZbOfyINvlVs1zKqCoSLQmwT+pLemvI0NClskd/0yXsq2xRQmk
   ls8gKSMAopzucxGsPGL3FffnusAEaUKck1RPwM4tK56DYDBEDxil+G5ur
   +ed+2YGrbVKHlj9RJj+xoCuqvziCp9hoZcXmMnK7ouSiwNnAKcMXP6r4k
   sj1FkFs1hCU8hWDWVsqjP95lZwTqpPDryiw+hpb+idkWnus/sSqI4Kv/6
   w==;
X-CSE-ConnectionGUID: oCQw/o4tRhW3tbNjPP0AqA==
X-CSE-MsgGUID: +LwitFRlRnKAUrliXZfnDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63722502"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
   d="scan'208,217";a="63722502"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 23:19:30 -0700
X-CSE-ConnectionGUID: xdbOP3dkRCCzKBrVGJ92kg==
X-CSE-MsgGUID: wD00kQrpSjOMCZg1DatDFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; 
   d="scan'208,217";a="178807052"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2025 23:19:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 23:19:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 23:19:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 23:19:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jaQxf4SEtfHTyLx90dZNrUwkHPCbPbSjBpyJ609pl1AmfqAJFMCs7P2nt306PmX4ZgKf79HP1WVg76+JgMc3zmUpzv9CjlQB9o0i7yovCLzgIhNb82hU/0ST7dI6ie7dxgG3alYU9+osCv0QhA4jbyeKec/2bm003fRLcAP27mdaVtK953ALfz85WCtsQ73L+4qy4J7sHqOpqM7vrHpnJuR8ZAUeLljIj+U4pHlW8Q/nPbSMdkeyHA3Q7js5V+SLSoBDhgSsQI/vLFMR3yJg3KJ29tXyFt4k4ztCGV3Bf+6KZRdbFhnAcZJbE3Tt7CcOMIsQRgj0nI1PfFWQ1cqr9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yjw7hM/R44JV6kRmvVKb5SSFQXgwWMLFVGQMP5TbhlU=;
 b=W47K/yvrRONfgoq/s7c0FXI8S7DmDzEzD07GRtkyHP2TExz5T8stroL4TihWFWFhLVeludneOZb8yeArAnZhHVOEk67oIKU5wgYFEkIzCf2qK2ioeItUt5OC8DoLQxg8s8wbc1SDUHHFzLqx7P58pv/z/czJsUGVP7z5HEoHPzhW8+5DhYZ4p7wH9Bru50tWReHotJeNBdZKfe1ZsIElNGHZ+kt+C8I6WYuM0g0KN+eAlrRRqgsNP5g2TY38J8nWp7jey9PiBuY95gbGiEm9z3exEhIsgPiltPXw52DWqw6d1D6BEF/+GBj0HMYiCHgmT2XV8nvysKZyp/SaHSSjww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SJ2PR11MB8472.namprd11.prod.outlook.com (2603:10b6:a03:574::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 06:19:26 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%5]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 06:19:26 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.2.3(walnascar-5.2.3) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.2.3(walnascar-5.2.3) is Released
Thread-Index: Adwi2xdn3YoJWWjgQViwYwiNOLssew==
Date: Thu, 11 Sep 2025 06:19:26 +0000
Message-ID: <BL4PR11MB87972F72B5817844319C02CCB909A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SJ2PR11MB8472:EE_
x-ms-office365-filtering-correlation-id: 5c6afaf8-0bf8-43e2-8c35-08ddf0fb2897
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|13003099007|8096899003|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?HgSnV/nBsB7lviGgZjTxHaCKV+1BXKk3eAjfrQgLQjFBxqv2UCy37yNgyR?=
 =?iso-8859-1?Q?y/1430QiZ7ciqTRlPtvoolsmRH1AI+GI7LFTX4EKGvzyNq3Jo7xfuWRlyj?=
 =?iso-8859-1?Q?ZTyxLlGzUizN0fjp1vGuPeVdnQDQGbwRUs/3kG/pc2d1ZAddDbdNxuCejF?=
 =?iso-8859-1?Q?i2SiC2RZkGxaiXMaigvJV4rFx+YqeXELLPM+CNQ4UEH6v9/hJP8K8b2XtI?=
 =?iso-8859-1?Q?khum/T1Gq0tFqZk23nyXGmzSwm8AKQH7lxMgj7TPTdrKc0HzGDxma838MC?=
 =?iso-8859-1?Q?qkC6+MRyjnkP9OUHQY5VYpzyw3vj5ByL+a3s4iOMCg62Zgk8dVq/bTMKTH?=
 =?iso-8859-1?Q?zfCNkpBc1Xe95nxAjIIk9ckocHURRz1oJtrxHvc2WVAm7lDdqP3lQQKv/8?=
 =?iso-8859-1?Q?b+J5Sx5DkQ88Hk13Up7xMNv3C9ZO2BJm9eitpWMfd3l8dZI460OMjxVOCD?=
 =?iso-8859-1?Q?KVakzOoIS8L1FDafVIgvrPS1HHm0O4EODBlKKMr21jBBj1gi55uVOSyCkU?=
 =?iso-8859-1?Q?+fO5qhb2vr2mWM0z0BdMoz7myKc5UUQCQhhVZdjbf0WbY7pwGX5ei6A+zv?=
 =?iso-8859-1?Q?cgcaQeZU0Nrw2LAqQFLhIHwnrbH8FKhSa+kszCHwI1uiBirjPq085AAkt+?=
 =?iso-8859-1?Q?0nZIgQc8TqbkoDmypAgzdb+pfpI+WIUM0I6mt14Ln9Bh/e1aU2QoyjAkw6?=
 =?iso-8859-1?Q?9WnNyseVDHeN066pORhEJJhG8kDrx8iX/a8nNXYWj5Zmu/7y+WtM9BDQIi?=
 =?iso-8859-1?Q?XqsvwsDpETjusN+tavNS4rLDtHTwf/FjknWLzD7heRtoRmncL6PG1DxL6o?=
 =?iso-8859-1?Q?VeNB0gA8czlMQjZAsOApNWIlF/27xQ6k9/I911OptWTLSMGa5C0hGjhWFE?=
 =?iso-8859-1?Q?sTVBYT6LsZkeJgJrJGQIaGlxiESD0kARe0EXN6NRPqV3xPSeGgnh2sbJ8k?=
 =?iso-8859-1?Q?QYMP3Cc4oEXEVPPq2azmtpKcAxPRxNF1pOlsbcy4vQAkYtmqJREOE9Nu6O?=
 =?iso-8859-1?Q?fxhgWHCavyRIVqHvp9/vUQ2/+GV5X1y1Y3137tv5tn/PAFC8B0in5Fto+k?=
 =?iso-8859-1?Q?S1hs5+rNkqha7r6HlpZikssHkiv2Wzwk0jAwAmMAjE0dioJY7dpf/JEM3+?=
 =?iso-8859-1?Q?pBr3GIMmc3hMSUU17a7QdG/t+7FPMbwnC0q6JH5btoNnnoE9JmRdX1Raio?=
 =?iso-8859-1?Q?9Mr1hOChLViYgWch1e15FP5GfpozpZydT2phf+Zotp0h/LOFEPr5p2MlOQ?=
 =?iso-8859-1?Q?j3q0LskGixWThbQIdELAENzUKaj3ZZVereCjDANJHinN/YTa1rgNLpnrMC?=
 =?iso-8859-1?Q?9CTTDmF7Hq00swJaFyIj946HNBC9NjV9Alf+Fe7ZKJcIBZiOrhqfSEpzGb?=
 =?iso-8859-1?Q?Unlu4flKk1xODVf8gPLFJAj80k8zI7a3d77W36imLIWXsy/0XTgRY5MR35?=
 =?iso-8859-1?Q?Rv3+s0TVxsqnv1OgYTGau3rmHc+MPoofCalrM8uZNRFEatLzPhsUhHHlGK?=
 =?iso-8859-1?Q?8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(13003099007)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TD0GknoqnkC+on77Nr89qMKzgfE0dxvetVxtq2NaU2tpR4efCDsS/AzUxE?=
 =?iso-8859-1?Q?UHyDNUcufXo2CpNMBlXuaMAAvseH9Pkwl/emNrUCvbeqk9TFWL8kZ7nK15?=
 =?iso-8859-1?Q?kIkZqmxky0f52ubF6+f1WmOMTdQxLqkbdDzHKlVdGT3Eg0qYSkEr/V+bJG?=
 =?iso-8859-1?Q?DF6Wu7OOLXss2k/Bwl6LRODCXTcIQRoXAc4WrvfKTn8j5csUmOTeFmMjM9?=
 =?iso-8859-1?Q?F98aMHDvXwDeXGJUf9DgBFFpHL+6d2mFWdGEcJgb0VHUJ3+6CMcWTRV3XA?=
 =?iso-8859-1?Q?YB1ngb/RaDtbgjbPWGkM5O6/KCsiRyWnxJteCLCh5qGZA+NiMPSryoHf7V?=
 =?iso-8859-1?Q?aaL5v/7T2MrYIpFcFhOfpLTBckkpfwSP+rcUUTtdcFww7pufb4HK/Emptm?=
 =?iso-8859-1?Q?O+VCdGm5TZOOX2dJ5HkHzz5AR6R/vbMebf8yizHUe3x8TJkha0wXsyDeXV?=
 =?iso-8859-1?Q?HF7pnkHVpHdtfi7E/ixUYp8nBj85UZBTv3NL3MbrhehtPSQkYsPl+wip+V?=
 =?iso-8859-1?Q?2z/9BO/ah7rsj7Dwvq6U1WM2pV+4tkbHEWkn+dN7OBRmcEquvo80YniMDB?=
 =?iso-8859-1?Q?vjikh9HoNkQXdkSSdDtsqE3Be5btqojdrRSjlf+MBS6csXJPIbk7BhVy8m?=
 =?iso-8859-1?Q?jdxmUNCTLlIM8wUgTUJ6kfyZcQHwwpP1/4agKCsOrj8z0ddax3QD1Ww3aU?=
 =?iso-8859-1?Q?42qjnhlJUR/G/ZL0U9ufE8oF6mPYIdrj8/rdDMqxpXjgv6lc4T7O0NwKbL?=
 =?iso-8859-1?Q?XPuJHBVNTmRQnJe8Ik0nPvroLapqbwo2I7zw/MP3534XvXUsaw1PgTCrTn?=
 =?iso-8859-1?Q?1nImSbQqoVBr32NjThpBTNwyCcFyiXDnxRXQcX/YLmU4GFQGYD8u77/r+s?=
 =?iso-8859-1?Q?hNG63P/HvZV90qCF5Q9ibSqEavlz3aVsN15sVraRIPtg4cjxGHA25wBg/6?=
 =?iso-8859-1?Q?W0j9d0eVCCH15iUQhyCRg26apGjCEfsm1LGViWE8bbEKGUUHNLi7CEkn47?=
 =?iso-8859-1?Q?qxz2TdKn1S19QkQWr0esDpvkOHPqmXGl5Rqy+5IbWN2znr9ehkIBqTsSpB?=
 =?iso-8859-1?Q?7uNjiVOqOhh9GCJRNdUzNL79U/lMJmvlVJ19GAhYCO7Hyr2DHWN/ZfdagN?=
 =?iso-8859-1?Q?qcPHdxvXgxKHRv60wtJ9pitjA0V7nEViGv6LeookT47He8C/tjNuHwKC/U?=
 =?iso-8859-1?Q?WcBG+xcBAOmS+6Q747zXWmExGtmXNpyq07wmyX84KvQRl61ustLloD1mbZ?=
 =?iso-8859-1?Q?u2+IeCa2kJwoy0XDKJDC9aKMGfyrcr1HpP2YXG/nYxG0OJ0Nd5Hp8ssOra?=
 =?iso-8859-1?Q?OogHs0yELyne/rpnJ8P9l2CE+SwGxagGDA7MXY11BuZ8rfRMoL2d7ZxCCI?=
 =?iso-8859-1?Q?gjzkNmmyEKnkxR7m/HPz5qsvI2A9xdON5OTKoOMOsILjhzJkYqTxk7IZ+w?=
 =?iso-8859-1?Q?HA/QQ08lwSUdobgZf+aNufYUXD+HSo0fu8kBXUEklhR+s8tvYSZumKpxBU?=
 =?iso-8859-1?Q?DxqjBTNScgbWMfl+MZSo42JC5zZll1/zr2zACZ70yVZouG6Wfc8LRzwZBg?=
 =?iso-8859-1?Q?zvqgyiTFwAtM2UuXFsXbRGUAgMFz+HKp0fYTO3qhUAPCqdxWAFyUir7HOf?=
 =?iso-8859-1?Q?m1oXh9zuH9U7k2Et/xHDA+CjF7+PLSk7ZPnlT+BiuFIfd8eE3pgLJ3jNo1?=
 =?iso-8859-1?Q?xlhySlEJF+3zBMS5eS8B51Cv6m6hje1VFCL8hZZ4?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87972F72B5817844319C02CCB909ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c6afaf8-0bf8-43e2-8c35-08ddf0fb2897
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2025 06:19:26.4859
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6KGVZd+21dCnziMbo5FRWAAJlFvqiVbcvSt/Ri7IHsfHcS9SFB3pqPfSDL0LXczyrnSx8fjkrIu776ltkmmliA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8472
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Sep 2025 06:19:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65827

--_000_BL4PR11MB87972F72B5817844319C02CCB909ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.2.3 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/poky-db04028d=
9070f05c3b5dee728473fb234bd24f05.tar.bz2 <https://downloads.yoctoproject.or=
g/releases/yocto/yocto-5.2.3/poky-41038342a471b4a8884548568ad147a1704253a3.=
tar.bz2>
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5=
dee728473fb234bd24f05.tar.bz2<https://downloads.yoctoproject.org/releases/y=
octo/yocto-5.2.3/poky-db04028d9070f05c3b5dee728473fb234bd24f05.tar.bz2>

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release



--------------------------
yocto-5.2.3 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: walnascar
Tag: yocto-5.2.3
Git Revision: db04028d9070f05c3b5dee728473fb234bd24f05
Release Artefact: poky-db04028d9070f05c3b5dee728473fb234bd24f05
sha: 32e1d457d5de0041ee423727b5690fbde58c485a42b8ed81ecebb7bb2d8c58cc
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/poky-db04028d=
9070f05c3b5dee728473fb234bd24f05.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5=
dee728473fb234bd24f05.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: walnascar
Tag: yocto-5.2.3
Git Revision: 347cb0861dde58613541ce692778f907943a60ea
Release Artefact: oecore-347cb0861dde58613541ce692778f907943a60ea
sha: 88cbb79f7bc2de9d931cfa1092463005189972d4584cdae1562621df79f09fbd
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/oecore-347cb0=
861dde58613541ce692778f907943a60ea.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.3/oecore-347cb0861dde58613=
541ce692778f907943a60ea.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: walnascar
Tag: yocto-5.2.3
Git Revision: edce693e1b8fabd84651aa6c0888aafbcf238577
Release Artefact: meta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577
sha: 6cfed41b54f83da91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/meta-mingw-ed=
ce693e1b8fabd84651aa6c0888aafbcf238577.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.3/meta-mingw-edce693e1b8fa=
bd84651aa6c0888aafbcf238577.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.12
Tag: yocto-5.2.3
Git Revision: 710f98844ae30416bdf6a01b655df398b49574ec
Release Artefact: bitbake-710f98844ae30416bdf6a01b655df398b49574ec
sha: e30aa4739e3104634184b1dd7d5502f0994a725daec15929c4adf1164aa1296d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/bitbake-710f9=
8844ae30416bdf6a01b655df398b49574ec.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.2.3/bitbake-710f98844ae30416=
bdf6a01b655df398b49574ec.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: walnascar
Tag: yocto-5.2.3
Git Revision: ce011415ab4e583a4545cd91aceff4190225f31d

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: walnascar
Tag: yocto-5.2.3
Git Revision: e664a70adb5bc19041b3b5f553fb90dcddff99d0


---------------
Contributors
---------------
Aleksandar Nikolic
Antonin Godard
Archana Polampalli
Bruce Ashfield
Changqing Li
Chen Qi
Deepesh Varatharajan
Divya Chellam
Enrico J=F6rns
Erik Lindsten
Gyorgy Sarvari
Hongxu Jia
Jiaying Song
Jinfeng Wang
Khem Raj
Lee Chee Yang
Marco Cavallini
Mark Hatle
Peter Marko
Praveen Kumar
Richard Purdie
Robert P. J. Day
Steve Sakoman
Vijay Anusuri
Wang Mingyu
Yash Shinde
Yi Zhao
Yogesh Tyagi
Yogita Urade
Zhang Peng

---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
avahi: Fix CVE-2024-52615 CVE-2024-52616
bind: FixCVE-2025-40777
binutils: Fix CVE-2025-5245 CVE-2025-7545 CVE-2025-7546
busybox: Fix CVE-2023-39810
coreutils: Fix CVE-2025-5278
curl: Ignore CVE-2025-4947 CVE-2025-5025
dpkg: Fix CVE-2025-6297
dropbear: Fix CVE-2025-47203
gdk-pixbuf: Fix CVE-2025-7345
git: Fix CVE-2025-27613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-20=
25-48384 CVE-2025-48385 CVE-2025-48386
gnutls: Fix CVE-2025-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990
go: Fix CVE-2025-4674
icu: Fix CVE-2025-5222
iputils: Fix CVE-2025-48964
libarchive: Fix CVE-2025-5915
libpam: Fix CVE-2024-10963
libsoup-2.4: Fix CVE-2025-4945
libsoup: Fix CVE-2025-4945 CVE-2025-6021 CVE-2025-6170 CVE-2025-49794 CVE-2=
025-49795 CVE-2025-49796
linux-yocto/6.12: Ignored CVE-2021-47342 CVE-2022-49934 CVE-2022-49935 CVE-=
2022-49936 CVE-2022-49937 CVE-2022-49938 CVE-2022-49939 CVE-2022-49940 CVE-=
2022-49942 CVE-2022-49943 CVE-2022-49944 CVE-2022-49945 CVE-2022-49946 CVE-=
2022-49947 CVE-2022-49948 CVE-2022-49949 CVE-2022-49950 CVE-2022-49951 CVE-=
2022-49952 CVE-2022-49953 CVE-2022-49954 CVE-2022-49955 CVE-2022-49956 CVE-=
2022-49957 CVE-2022-49958 CVE-2022-49959 CVE-2022-49960 CVE-2022-49961 CVE-=
2022-49962 CVE-2022-49963 CVE-2022-49964 CVE-2022-49965 CVE-2022-49966 CVE-=
2022-49967 CVE-2022-49968 CVE-2022-49969 CVE-2022-49970 CVE-2022-49971 CVE-=
2022-49972 CVE-2022-49973 CVE-2022-49974 CVE-2022-49975 CVE-2022-49976 CVE-=
2022-49977 CVE-2022-49978 CVE-2022-49979 CVE-2022-49980 CVE-2022-49981 CVE-=
2022-49982 CVE-2022-49983 CVE-2022-49984 CVE-2022-49985 CVE-2022-49986 CVE-=
2022-49987 CVE-2022-49989 CVE-2022-49990 CVE-2022-49991 CVE-2022-49992 CVE-=
2022-49993 CVE-2022-49994 CVE-2022-49995 CVE-2022-49996 CVE-2022-49997 CVE-=
2022-49998 CVE-2022-49999 CVE-2022-50000 CVE-2022-50001 CVE-2022-50002 CVE-=
2022-50003 CVE-2022-50004 CVE-2022-50005 CVE-2022-50006 CVE-2022-50007 CVE-=
2022-50008 CVE-2022-50009 CVE-2022-50010 CVE-2022-50011 CVE-2022-50012 CVE-=
2022-50013 CVE-2022-50014 CVE-2022-50015 CVE-2022-50016 CVE-2022-50017 CVE-=
2022-50019 CVE-2022-50020 CVE-2022-50021 CVE-2022-50022 CVE-2022-50023 CVE-=
2022-50024 CVE-2022-50025 CVE-2022-50026 CVE-2022-50027 CVE-2022-50028 CVE-=
2022-50029 CVE-2022-50030 CVE-2022-50031 CVE-2022-50032 CVE-2022-50033 CVE-=
2022-50034 CVE-2022-50035 CVE-2022-50036 CVE-2022-50037 CVE-2022-50038 CVE-=
2022-50039 CVE-2022-50040 CVE-2022-50041 CVE-2022-50042 CVE-2022-50043 CVE-=
2022-50044 CVE-2022-50045 CVE-2022-50046 CVE-2022-50047 CVE-2022-50048 CVE-=
2022-50049 CVE-2022-50050 CVE-2022-50051 CVE-2022-50052 CVE-2022-50053 CVE-=
2022-50054 CVE-2022-50055 CVE-2022-50056 CVE-2022-50057 CVE-2022-50058 CVE-=
2022-50059 CVE-2022-50060 CVE-2022-50061 CVE-2022-50062 CVE-2022-50063 CVE-=
2022-50064 CVE-2022-50065 CVE-2022-50066 CVE-2022-50067 CVE-2022-50068 CVE-=
2022-50069 CVE-2022-50070 CVE-2022-50071 CVE-2022-50072 CVE-2022-50073 CVE-=
2022-50074 CVE-2022-50075 CVE-2022-50076 CVE-2022-50077 CVE-2022-50078 CVE-=
2022-50079 CVE-2022-50080 CVE-2022-50082 CVE-2022-50083 CVE-2022-50084 CVE-=
2022-50085 CVE-2022-50086 CVE-2022-50087 CVE-2022-50088 CVE-2022-50089 CVE-=
2022-50090 CVE-2022-50091 CVE-2022-50092 CVE-2022-50093 CVE-2022-50094 CVE-=
2022-50095 CVE-2022-50096 CVE-2022-50097 CVE-2022-50098 CVE-2022-50099 CVE-=
2022-50100 CVE-2022-50101 CVE-2022-50102 CVE-2022-50103 CVE-2022-50104 CVE-=
2022-50105 CVE-2022-50106 CVE-2022-50107 CVE-2022-50108 CVE-2022-50109 CVE-=
2022-50110 CVE-2022-50111 CVE-2022-50112 CVE-2022-50113 CVE-2022-50114 CVE-=
2022-50115 CVE-2022-50116 CVE-2022-50117 CVE-2022-50118 CVE-2022-50119 CVE-=
2022-50120 CVE-2022-50121 CVE-2022-50122 CVE-2022-50123 CVE-2022-50124 CVE-=
2022-50125 CVE-2022-50126 CVE-2022-50127 CVE-2022-50129 CVE-2022-50130 CVE-=
2022-50131 CVE-2022-50132 CVE-2022-50133 CVE-2022-50134 CVE-2022-50135 CVE-=
2022-50136 CVE-2022-50137 CVE-2022-50138 CVE-2022-50139 CVE-2022-50140 CVE-=
2022-50141 CVE-2022-50142 CVE-2022-50143 CVE-2022-50144 CVE-2022-50145 CVE-=
2022-50146 CVE-2022-50147 CVE-2022-50148 CVE-2022-50149 CVE-2022-50151 CVE-=
2022-50152 CVE-2022-50153 CVE-2022-50154 CVE-2022-50155 CVE-2022-50156 CVE-=
2022-50157 CVE-2022-50158 CVE-2022-50159 CVE-2022-50160 CVE-2022-50161 CVE-=
2022-50162 CVE-2022-50163 CVE-2022-50164 CVE-2022-50165 CVE-2022-50166 CVE-=
2022-50167 CVE-2022-50168 CVE-2022-50169 CVE-2022-50170 CVE-2022-50171 CVE-=
2022-50172 CVE-2022-50173 CVE-2022-50174 CVE-2022-50175 CVE-2022-50176 CVE-=
2022-50177 CVE-2022-50178 CVE-2022-50179 CVE-2022-50181 CVE-2022-50182 CVE-=
2022-50183 CVE-2022-50184 CVE-2022-50185 CVE-2022-50186 CVE-2022-50187 CVE-=
2022-50188 CVE-2022-50189 CVE-2022-50190 CVE-2022-50191 CVE-2022-50192 CVE-=
2022-50193 CVE-2022-50194 CVE-2022-50195 CVE-2022-50196 CVE-2022-50197 CVE-=
2022-50198 CVE-2022-50199 CVE-2022-50200 CVE-2022-50201 CVE-2022-50202 CVE-=
2022-50203 CVE-2022-50204 CVE-2022-50205 CVE-2022-50206 CVE-2022-50207 CVE-=
2022-50208 CVE-2022-50209 CVE-2022-50210 CVE-2022-50211 CVE-2022-50212 CVE-=
2022-50213 CVE-2022-50214 CVE-2022-50215 CVE-2022-50217 CVE-2022-50218 CVE-=
2022-50219 CVE-2022-50220 CVE-2022-50221 CVE-2022-50222 CVE-2022-50223 CVE-=
2022-50224 CVE-2022-50225 CVE-2022-50226 CVE-2022-50227 CVE-2022-50228 CVE-=
2022-50229 CVE-2022-50231 CVE-2024-26710 CVE-2024-57976 CVE-2024-58091
linux-yocto/6.12: (cont.) Ignored CVE-2025-21817 CVE-2025-22101 CVE-2025-22=
112 CVE-2025-22119 CVE-2025-22122 CVE-2025-22123 CVE-2025-22128 CVE-2025-23=
137 CVE-2025-23155 CVE-2025-37842 CVE-2025-37855 CVE-2025-38000 CVE-2025-38=
001 CVE-2025-38002 CVE-2025-38003 CVE-2025-38004 CVE-2025-38005 CVE-2025-38=
006 CVE-2025-38007 CVE-2025-38008 CVE-2025-38009 CVE-2025-38010 CVE-2025-38=
011 CVE-2025-38012 CVE-2025-38013 CVE-2025-38014 CVE-2025-38015 CVE-2025-38=
016 CVE-2025-38017 CVE-2025-38018 CVE-2025-38019 CVE-2025-38020 CVE-2025-38=
021 CVE-2025-38022 CVE-2025-38023 CVE-2025-38024 CVE-2025-38025 CVE-2025-38=
027 CVE-2025-38028 CVE-2025-38031 CVE-2025-38032 CVE-2025-38033 CVE-2025-38=
034 CVE-2025-38035 CVE-2025-38037 CVE-2025-38038 CVE-2025-38039 CVE-2025-38=
040 CVE-2025-38043 CVE-2025-38044 CVE-2025-38045 CVE-2025-38047 CVE-2025-38=
048 CVE-2025-38050 CVE-2025-38051 CVE-2025-38052 CVE-2025-38053 CVE-2025-38=
054 CVE-2025-38055 CVE-2025-38056 CVE-2025-38057 CVE-2025-38058 CVE-2025-38=
059 CVE-2025-38060 CVE-2025-38061 CVE-2025-38062 CVE-2025-38063 CVE-2025-38=
065 CVE-2025-38066 CVE-2025-38068 CVE-2025-38069 CVE-2025-38070 CVE-2025-38=
071 CVE-2025-38072 CVE-2025-38073 CVE-2025-38074 CVE-2025-38075 CVE-2025-38=
076 CVE-2025-38077 CVE-2025-38078 CVE-2025-38079 CVE-2025-38080 CVE-2025-38=
081 CVE-2025-38082 CVE-2025-38083 CVE-2025-38084 CVE-2025-38085 CVE-2025-38=
086 CVE-2025-38087 CVE-2025-38088 CVE-2025-38089 CVE-2025-38090 CVE-2025-38=
091 CVE-2025-38092 CVE-2025-38093 CVE-2025-38094 CVE-2025-38095 CVE-2025-38=
096 CVE-2025-38097 CVE-2025-38098 CVE-2025-38099 CVE-2025-38100 CVE-2025-38=
101 CVE-2025-38102 CVE-2025-38103 CVE-2025-38106 CVE-2025-38107 CVE-2025-38=
108 CVE-2025-38109 CVE-2025-38110 CVE-2025-38111 CVE-2025-38112 CVE-2025-38=
113 CVE-2025-38114 CVE-2025-38115 CVE-2025-38116 CVE-2025-38117 CVE-2025-38=
118 CVE-2025-38119 CVE-2025-38120 CVE-2025-38121 CVE-2025-38122 CVE-2025-38=
123 CVE-2025-38124 CVE-2025-38125 CVE-2025-38126 CVE-2025-38127 CVE-2025-38=
128 CVE-2025-38129 CVE-2025-38130 CVE-2025-38131 CVE-2025-38133 CVE-2025-38=
134 CVE-2025-38135 CVE-2025-38136 CVE-2025-38138 CVE-2025-38139 CVE-2025-38=
141 CVE-2025-38142 CVE-2025-38143 CVE-2025-38144 CVE-2025-38145 CVE-2025-38=
146 CVE-2025-38147 CVE-2025-38148 CVE-2025-38149 CVE-2025-38150 CVE-2025-38=
151 CVE-2025-38153 CVE-2025-38154 CVE-2025-38155 CVE-2025-38156 CVE-2025-38=
157 CVE-2025-38158 CVE-2025-38159 CVE-2025-38160 CVE-2025-38161 CVE-2025-38=
162 CVE-2025-38163 CVE-2025-38164 CVE-2025-38165 CVE-2025-38166 CVE-2025-38=
167 CVE-2025-38168 CVE-2025-38169 CVE-2025-38170 CVE-2025-38171 CVE-2025-38=
172 CVE-2025-38173 CVE-2025-38174 CVE-2025-38175 CVE-2025-38176 CVE-2025-38=
177 CVE-2025-38178 CVE-2025-38179 CVE-2025-38180 CVE-2025-38181 CVE-2025-38=
182 CVE-2025-38183 CVE-2025-38184 CVE-2025-38185 CVE-2025-38186 CVE-2025-38=
188 CVE-2025-38189 CVE-2025-38190 CVE-2025-38191 CVE-2025-38192 CVE-2025-38=
193 CVE-2025-38194 CVE-2025-38195 CVE-2025-38196 CVE-2025-38197 CVE-2025-38=
198 CVE-2025-38200 CVE-2025-38201 CVE-2025-38202 CVE-2025-38208 CVE-2025-38=
209 CVE-2025-38210 CVE-2025-38211 CVE-2025-38212 CVE-2025-38213 CVE-2025-38=
214 CVE-2025-38215 CVE-2025-38216 CVE-2025-38217 CVE-2025-38218 CVE-2025-38=
219 CVE-2025-38220 CVE-2025-38221 CVE-2025-38222 CVE-2025-38223 CVE-2025-38=
224 CVE-2025-38225 CVE-2025-38226 CVE-2025-38227 CVE-2025-38228 CVE-2025-38=
229 CVE-2025-38230 CVE-2025-38231 CVE-2025-38232 CVE-2025-38233 CVE-2025-38=
235 CVE-2025-38236 CVE-2025-38238 CVE-2025-38239 CVE-2025-38241 CVE-2025-38=
242 CVE-2025-38243 CVE-2025-38244 CVE-2025-38245 CVE-2025-38246 CVE-2025-38=
247 CVE-2025-38249 CVE-2025-38250 CVE-2025-38251 CVE-2025-38252 CVE-2025-38=
253 CVE-2025-38254 CVE-2025-38255 CVE-2025-38256 CVE-2025-38257 CVE-2025-38=
258 CVE-2025-38259 CVE-2025-38260 CVE-2025-38262 CVE-2025-38263 CVE-2025-38=
264 CVE-2025-38265 CVE-2025-38266 CVE-2025-38267 CVE-2025-38268 CVE-2025-38=
269 CVE-2025-38270 CVE-2025-38271 CVE-2025-38273 CVE-2025-38274 CVE-2025-38=
275 CVE-2025-38276 CVE-2025-38277 CVE-2025-38278 CVE-2025-38279 CVE-2025-38=
280 CVE-2025-38281 CVE-2025-38282 CVE-2025-38283 CVE-2025-38285 CVE-2025-38=
286 CVE-2025-38287 CVE-2025-38288 CVE-2025-38289 CVE-2025-38290 CVE-2025-38=
291 CVE-2025-38292 CVE-2025-38293 CVE-2025-38294 CVE-2025-38295 CVE-2025-38=
296 CVE-2025-38297 CVE-2025-38298 CVE-2025-38299 CVE-2025-38300 CVE-2025-38=
301 CVE-2025-38302 CVE-2025-38303 CVE-2025-38304 CVE-2025-38305 CVE-2025-38=
307 CVE-2025-38308 CVE-2025-38309 CVE-2025-38310 CVE-2025-38312 CVE-2025-38=
313 CVE-2025-38314 CVE-2025-38315 CVE-2025-38316 CVE-2025-38317 CVE-2025-38=
318 CVE-2025-38319 CVE-2025-38320 CVE-2025-38321 CVE-2025-38322 CVE-2025-38=
323 CVE-2025-38324 CVE-2025-38325 CVE-2025-38326 CVE-2025-38327 CVE-2025-38=
328 CVE-2025-38329 CVE-2025-38330 CVE-2025-38331 CVE-2025-38332 CVE-2025-38=
333 CVE-2025-38334 CVE-2025-38336 CVE-2025-38337 CVE-2025-38338 CVE-2025-38=
339 CVE-2025-38340 CVE-2025-38341 CVE-2025-38342 CVE-2025-38343 CVE-2025-38=
344 CVE-2025-38345 CVE-2025-38346 CVE-2025-38347 CVE-2025-38348
ncurses: Fix CVE-2025-6141
python3: Fix CVE-2025-8194
sqlite3: Fix CVE-2025-6965
sudo: Fix CVE-2025-32462 CVE-2025-32463
webkitgtk: Fix CVE-2025-24223 CVE-2025-31204 CVE-2025-31205 CVE-2025-31206 =
CVE-2025-31215 CVE-2025-31257
xserver-xorg: Fix CVE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-491=
78 CVE-2025-49179 CVE-2025-49180


---------------
Fixes
---------------
bind: upgrade to 9.20.11
binutils: stable 2.44 branch updates
bitbake: test/fetch: Switch u-boot based test to use our own mirror
bitbake: utils: Optimise signal/sigmask performance
build-appliance-image: Update to walnascar head revision
ca-certificates: correct the SRC_URI
conf.py: improve SearchEnglish to handle terms with dots
dev-manual/start.rst: added missing command in Optimize your VHDX file usin=
g DiskPart
dev-manual/start.rst: mention that PERSISTENT_DIR should be shared too
dev-manual/start.rst: remove basic setup for hash equivalence
dev-manual/start.rst: remove shared PERSISTENT_DIR mentions
docs/variables.rst: remove references to obsolete tar packaging
git: upgrade to 2.49.1
glibc: stable 2.41 branch updates
gnutls: upgrade to 3.8.10
go: upgrade to 1.24.5
kea: set correct permissions for /var/run/kea
libpam: upgrade to 1.7.1
linux-yocto/6.12: riscv tune fragments
linux-yocto/6.12: riscv: Enable TUNE_FEATURES based KERNEL_FEATURES
linux-yocto/6.12: update to v6.12.38
linux-yocto/6.12: yaffs2: silence warnings
ltp: Skip semctl08 when __USE_TIME64_REDIRECTS is defined
ltp: backport patch to fix compilation error for Skylake -march=3Dx86-64-v3
migration-guides: add release notes for 4.0.28, 5.0.11, 5.2.2
mingetty: fix do_package warning
mtools: upgrade to 4.0.49
openssl: upgrade to 3.4.2
orc: set CVE_PRODUCT
overview-manual/concepts.rst: fix sayhello hardcoded bindir
overview-manual/concepts.rst: mention PERSISTENT_DIR for user configuration
overview-manual/yp-intro.rst: fix broken link to article
poky.conf: bump version for 5.2.3
poky.yaml.in: increase minimum RAM from 8 to 32
python3: update CVE product
ref-manual/classes.rst: document the testexport class
ref-manual/classes.rst: drop obsolete QA errors
ref-manual/classes.rst: insane: drop cve_status_not_in_db
ref-manual/structure.rst: remove shared PERSISTENT_DIR mentions
ref-manual/structure.rst: update with info on PERSISTENT_DIR
ref-manual/system-requirements.rst: update supported distributions
ref-manual/variables.rst: document SPL_DTB_BINARY
ref-manual/variables.rst: document the FIT_CONF_PREFIX variable
ruby-ptest: some ptest fixes
ruby: upgrade to 3.4.4
rust: Fix malformed hunk header in rustix patch
scripts/install-buildtools: Update to 5.2.2
sudo: upgrade to 1.9.17p1
test-manual/understand-autobuilder.rst: mention hashequiv server
webkitgtk: Fix build break on non-arm/non-x86 systems
webkitgtk: Use gcc to compile for arm target
webkitgtk: upgrade to 2.48.2
xserver-xorg: upgrade to 21.1.18





--_000_BL4PR11MB87972F72B5817844319C02CCB909ABL4PR11MB8797namp_
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
nnounce the Yocto Project 5.2.3 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/poky-41038342a471b4a8=
884548568ad147a1704253a3.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5dee728473fb234bd24f05.tar.bz2
</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.2.3/poky-">https://mirrors.kernel.or=
g/yocto/yocto/yocto-5.2.3/poky-</a><a href=3D"https://downloads.yoctoprojec=
t.org/releases/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5dee728473fb234bd24=
f05.tar.bz2" title=3D"poky-db04028d9070f05c3b5dee728473fb234bd24f05.tar.bz2=
">db04028d9070f05c3b5dee728473fb234bd24f05.tar.bz2</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.2.3/testreport.txt</a>=
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
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.2.3 Release=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: db040=
28d9070f05c3b5dee728473fb234bd24f05<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-db04028d9070f05c3b5dee728473fb234bd24f05<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 32e1d457d5de00=
41ee423727b5690fbde58c485a42b8ed81ecebb7bb2d8c58cc<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5dee72847=
3fb234bd24f05.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.3/poky-db04028d9070f05c3b5dee728473fb234bd24f=
05.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 347cb=
0861dde58613541ce692778f907943a60ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-347cb0861dde58613541ce692778f907943a60ea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 88cbb79f7bc2de=
9d931cfa1092463005189972d4584cdae1562621df79f09fbd<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.3/oecore-347cb0861dde58613541ce692=
778f907943a60ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.3/oecore-347cb0861dde58613541ce692778f907943a=
60ea.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: edce6=
93e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-edce693e1b8fabd84651aa6c0888aafbcf238577<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 6cfed41b54f83d=
a91a6cf201ec1c2cd4ac284f642b1268c8fa89d2335ea2bce1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.3/meta-mingw-edce693e1b8fabd84651a=
a6c0888aafbcf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.3/meta-mingw-edce693e1b8fabd84651aa6c0888aafb=
cf238577.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.12<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 710f9=
8844ae30416bdf6a01b655df398b49574ec<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-710f98844ae30416bdf6a01b655df398b49574ec<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: e30aa4739e3104=
634184b1dd7d5502f0994a725daec15929c4adf1164aa1296d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.2.3/bitbake-710f98844ae30416bdf6a01b=
655df398b49574ec.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.2.3/bitbake-710f98844ae30416bdf6a01b655df398b49=
574ec.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-yocto<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ce011=
415ab4e583a4545cd91aceff4190225f31d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: walnascar<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.2.3<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: e664a=
70adb5bc19041b3b5f553fb90dcddff99d0
<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Archana Polampalli<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chen Qi<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepesh Varatharaja=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Enrico J=F6rns<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Erik Lindsten<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gyorgy Sarvari<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hongxu Jia<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jiaying Song<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Jinfeng Wang<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Khem Raj<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marco Cavallini<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mark Hatle<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Praveen Kumar<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert P. J. Day<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yi Zhao<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogesh Tyagi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zhang Peng<o:p></o:=
p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">avahi: Fix CVE-2024=
-52615 CVE-2024-52616<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: FixCVE-2025-4=
0777<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-5245 CVE-2025-7545 CVE-2025-7546<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">busybox: Fix CVE-20=
23-39810<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">coreutils: Fix CVE-=
2025-5278<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Ignore CVE-20=
25-4947 CVE-2025-5025<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dpkg: Fix CVE-2025-=
6297<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dropbear: Fix CVE-2=
025-47203<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gdk-pixbuf: Fix CVE=
-2025-7345<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: Fix CVE-2025-2=
7613 CVE-2025-27614 CVE-2025-46334 CVE-2025-46835 CVE-2025-48384 CVE-2025-4=
8385 CVE-2025-48386<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: Fix CVE-202=
5-6395 CVE-2025-32988 CVE-2025-32989 CVE-2025-32990<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: Fix CVE-2025-46=
74<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: Fix CVE-2025-5=
222<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">iputils: Fix CVE-20=
25-48964<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2025-5915<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10963<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2025-4945<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
25-4945 CVE-2025-6021 CVE-2025-6170 CVE-2025-49794 CVE-2025-49795 CVE-2025-=
49796<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: I=
gnored CVE-2021-47342 CVE-2022-49934 CVE-2022-49935 CVE-2022-49936 CVE-2022=
-49937 CVE-2022-49938 CVE-2022-49939 CVE-2022-49940 CVE-2022-49942 CVE-2022=
-49943 CVE-2022-49944 CVE-2022-49945
 CVE-2022-49946 CVE-2022-49947 CVE-2022-49948 CVE-2022-49949 CVE-2022-49950=
 CVE-2022-49951 CVE-2022-49952 CVE-2022-49953 CVE-2022-49954 CVE-2022-49955=
 CVE-2022-49956 CVE-2022-49957 CVE-2022-49958 CVE-2022-49959 CVE-2022-49960=
 CVE-2022-49961 CVE-2022-49962 CVE-2022-49963
 CVE-2022-49964 CVE-2022-49965 CVE-2022-49966 CVE-2022-49967 CVE-2022-49968=
 CVE-2022-49969 CVE-2022-49970 CVE-2022-49971 CVE-2022-49972 CVE-2022-49973=
 CVE-2022-49974 CVE-2022-49975 CVE-2022-49976 CVE-2022-49977 CVE-2022-49978=
 CVE-2022-49979 CVE-2022-49980 CVE-2022-49981
 CVE-2022-49982 CVE-2022-49983 CVE-2022-49984 CVE-2022-49985 CVE-2022-49986=
 CVE-2022-49987 CVE-2022-49989 CVE-2022-49990 CVE-2022-49991 CVE-2022-49992=
 CVE-2022-49993 CVE-2022-49994 CVE-2022-49995 CVE-2022-49996 CVE-2022-49997=
 CVE-2022-49998 CVE-2022-49999 CVE-2022-50000
 CVE-2022-50001 CVE-2022-50002 CVE-2022-50003 CVE-2022-50004 CVE-2022-50005=
 CVE-2022-50006 CVE-2022-50007 CVE-2022-50008 CVE-2022-50009 CVE-2022-50010=
 CVE-2022-50011 CVE-2022-50012 CVE-2022-50013 CVE-2022-50014 CVE-2022-50015=
 CVE-2022-50016 CVE-2022-50017 CVE-2022-50019
 CVE-2022-50020 CVE-2022-50021 CVE-2022-50022 CVE-2022-50023 CVE-2022-50024=
 CVE-2022-50025 CVE-2022-50026 CVE-2022-50027 CVE-2022-50028 CVE-2022-50029=
 CVE-2022-50030 CVE-2022-50031 CVE-2022-50032 CVE-2022-50033 CVE-2022-50034=
 CVE-2022-50035 CVE-2022-50036 CVE-2022-50037
 CVE-2022-50038 CVE-2022-50039 CVE-2022-50040 CVE-2022-50041 CVE-2022-50042=
 CVE-2022-50043 CVE-2022-50044 CVE-2022-50045 CVE-2022-50046 CVE-2022-50047=
 CVE-2022-50048 CVE-2022-50049 CVE-2022-50050 CVE-2022-50051 CVE-2022-50052=
 CVE-2022-50053 CVE-2022-50054 CVE-2022-50055
 CVE-2022-50056 CVE-2022-50057 CVE-2022-50058 CVE-2022-50059 CVE-2022-50060=
 CVE-2022-50061 CVE-2022-50062 CVE-2022-50063 CVE-2022-50064 CVE-2022-50065=
 CVE-2022-50066 CVE-2022-50067 CVE-2022-50068 CVE-2022-50069 CVE-2022-50070=
 CVE-2022-50071 CVE-2022-50072 CVE-2022-50073
 CVE-2022-50074 CVE-2022-50075 CVE-2022-50076 CVE-2022-50077 CVE-2022-50078=
 CVE-2022-50079 CVE-2022-50080 CVE-2022-50082 CVE-2022-50083 CVE-2022-50084=
 CVE-2022-50085 CVE-2022-50086 CVE-2022-50087 CVE-2022-50088 CVE-2022-50089=
 CVE-2022-50090 CVE-2022-50091 CVE-2022-50092
 CVE-2022-50093 CVE-2022-50094 CVE-2022-50095 CVE-2022-50096 CVE-2022-50097=
 CVE-2022-50098 CVE-2022-50099 CVE-2022-50100 CVE-2022-50101 CVE-2022-50102=
 CVE-2022-50103 CVE-2022-50104 CVE-2022-50105 CVE-2022-50106 CVE-2022-50107=
 CVE-2022-50108 CVE-2022-50109 CVE-2022-50110
 CVE-2022-50111 CVE-2022-50112 CVE-2022-50113 CVE-2022-50114 CVE-2022-50115=
 CVE-2022-50116 CVE-2022-50117 CVE-2022-50118 CVE-2022-50119 CVE-2022-50120=
 CVE-2022-50121 CVE-2022-50122 CVE-2022-50123 CVE-2022-50124 CVE-2022-50125=
 CVE-2022-50126 CVE-2022-50127 CVE-2022-50129
 CVE-2022-50130 CVE-2022-50131 CVE-2022-50132 CVE-2022-50133 CVE-2022-50134=
 CVE-2022-50135 CVE-2022-50136 CVE-2022-50137 CVE-2022-50138 CVE-2022-50139=
 CVE-2022-50140 CVE-2022-50141 CVE-2022-50142 CVE-2022-50143 CVE-2022-50144=
 CVE-2022-50145 CVE-2022-50146 CVE-2022-50147
 CVE-2022-50148 CVE-2022-50149 CVE-2022-50151 CVE-2022-50152 CVE-2022-50153=
 CVE-2022-50154 CVE-2022-50155 CVE-2022-50156 CVE-2022-50157 CVE-2022-50158=
 CVE-2022-50159 CVE-2022-50160 CVE-2022-50161 CVE-2022-50162 CVE-2022-50163=
 CVE-2022-50164 CVE-2022-50165 CVE-2022-50166
 CVE-2022-50167 CVE-2022-50168 CVE-2022-50169 CVE-2022-50170 CVE-2022-50171=
 CVE-2022-50172 CVE-2022-50173 CVE-2022-50174 CVE-2022-50175 CVE-2022-50176=
 CVE-2022-50177 CVE-2022-50178 CVE-2022-50179 CVE-2022-50181 CVE-2022-50182=
 CVE-2022-50183 CVE-2022-50184 CVE-2022-50185
 CVE-2022-50186 CVE-2022-50187 CVE-2022-50188 CVE-2022-50189 CVE-2022-50190=
 CVE-2022-50191 CVE-2022-50192 CVE-2022-50193 CVE-2022-50194 CVE-2022-50195=
 CVE-2022-50196 CVE-2022-50197 CVE-2022-50198 CVE-2022-50199 CVE-2022-50200=
 CVE-2022-50201 CVE-2022-50202 CVE-2022-50203
 CVE-2022-50204 CVE-2022-50205 CVE-2022-50206 CVE-2022-50207 CVE-2022-50208=
 CVE-2022-50209 CVE-2022-50210 CVE-2022-50211 CVE-2022-50212 CVE-2022-50213=
 CVE-2022-50214 CVE-2022-50215 CVE-2022-50217 CVE-2022-50218 CVE-2022-50219=
 CVE-2022-50220 CVE-2022-50221 CVE-2022-50222
 CVE-2022-50223 CVE-2022-50224 CVE-2022-50225 CVE-2022-50226 CVE-2022-50227=
 CVE-2022-50228 CVE-2022-50229 CVE-2022-50231 CVE-2024-26710 CVE-2024-57976=
 CVE-2024-58091<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: (=
cont.) Ignored CVE-2025-21817 CVE-2025-22101 CVE-2025-22112 CVE-2025-22119 =
CVE-2025-22122 CVE-2025-22123 CVE-2025-22128 CVE-2025-23137 CVE-2025-23155 =
CVE-2025-37842 CVE-2025-37855 CVE-2025-38000
 CVE-2025-38001 CVE-2025-38002 CVE-2025-38003 CVE-2025-38004 CVE-2025-38005=
 CVE-2025-38006 CVE-2025-38007 CVE-2025-38008 CVE-2025-38009 CVE-2025-38010=
 CVE-2025-38011 CVE-2025-38012 CVE-2025-38013 CVE-2025-38014 CVE-2025-38015=
 CVE-2025-38016 CVE-2025-38017 CVE-2025-38018
 CVE-2025-38019 CVE-2025-38020 CVE-2025-38021 CVE-2025-38022 CVE-2025-38023=
 CVE-2025-38024 CVE-2025-38025 CVE-2025-38027 CVE-2025-38028 CVE-2025-38031=
 CVE-2025-38032 CVE-2025-38033 CVE-2025-38034 CVE-2025-38035 CVE-2025-38037=
 CVE-2025-38038 CVE-2025-38039 CVE-2025-38040
 CVE-2025-38043 CVE-2025-38044 CVE-2025-38045 CVE-2025-38047 CVE-2025-38048=
 CVE-2025-38050 CVE-2025-38051 CVE-2025-38052 CVE-2025-38053 CVE-2025-38054=
 CVE-2025-38055 CVE-2025-38056 CVE-2025-38057 CVE-2025-38058 CVE-2025-38059=
 CVE-2025-38060 CVE-2025-38061 CVE-2025-38062
 CVE-2025-38063 CVE-2025-38065 CVE-2025-38066 CVE-2025-38068 CVE-2025-38069=
 CVE-2025-38070 CVE-2025-38071 CVE-2025-38072 CVE-2025-38073 CVE-2025-38074=
 CVE-2025-38075 CVE-2025-38076 CVE-2025-38077 CVE-2025-38078 CVE-2025-38079=
 CVE-2025-38080 CVE-2025-38081 CVE-2025-38082
 CVE-2025-38083 CVE-2025-38084 CVE-2025-38085 CVE-2025-38086 CVE-2025-38087=
 CVE-2025-38088 CVE-2025-38089 CVE-2025-38090 CVE-2025-38091 CVE-2025-38092=
 CVE-2025-38093 CVE-2025-38094 CVE-2025-38095 CVE-2025-38096 CVE-2025-38097=
 CVE-2025-38098 CVE-2025-38099 CVE-2025-38100
 CVE-2025-38101 CVE-2025-38102 CVE-2025-38103 CVE-2025-38106 CVE-2025-38107=
 CVE-2025-38108 CVE-2025-38109 CVE-2025-38110 CVE-2025-38111 CVE-2025-38112=
 CVE-2025-38113 CVE-2025-38114 CVE-2025-38115 CVE-2025-38116 CVE-2025-38117=
 CVE-2025-38118 CVE-2025-38119 CVE-2025-38120
 CVE-2025-38121 CVE-2025-38122 CVE-2025-38123 CVE-2025-38124 CVE-2025-38125=
 CVE-2025-38126 CVE-2025-38127 CVE-2025-38128 CVE-2025-38129 CVE-2025-38130=
 CVE-2025-38131 CVE-2025-38133 CVE-2025-38134 CVE-2025-38135 CVE-2025-38136=
 CVE-2025-38138 CVE-2025-38139 CVE-2025-38141
 CVE-2025-38142 CVE-2025-38143 CVE-2025-38144 CVE-2025-38145 CVE-2025-38146=
 CVE-2025-38147 CVE-2025-38148 CVE-2025-38149 CVE-2025-38150 CVE-2025-38151=
 CVE-2025-38153 CVE-2025-38154 CVE-2025-38155 CVE-2025-38156 CVE-2025-38157=
 CVE-2025-38158 CVE-2025-38159 CVE-2025-38160
 CVE-2025-38161 CVE-2025-38162 CVE-2025-38163 CVE-2025-38164 CVE-2025-38165=
 CVE-2025-38166 CVE-2025-38167 CVE-2025-38168 CVE-2025-38169 CVE-2025-38170=
 CVE-2025-38171 CVE-2025-38172 CVE-2025-38173 CVE-2025-38174 CVE-2025-38175=
 CVE-2025-38176 CVE-2025-38177 CVE-2025-38178
 CVE-2025-38179 CVE-2025-38180 CVE-2025-38181 CVE-2025-38182 CVE-2025-38183=
 CVE-2025-38184 CVE-2025-38185 CVE-2025-38186 CVE-2025-38188 CVE-2025-38189=
 CVE-2025-38190 CVE-2025-38191 CVE-2025-38192 CVE-2025-38193 CVE-2025-38194=
 CVE-2025-38195 CVE-2025-38196 CVE-2025-38197
 CVE-2025-38198 CVE-2025-38200 CVE-2025-38201 CVE-2025-38202 CVE-2025-38208=
 CVE-2025-38209 CVE-2025-38210 CVE-2025-38211 CVE-2025-38212 CVE-2025-38213=
 CVE-2025-38214 CVE-2025-38215 CVE-2025-38216 CVE-2025-38217 CVE-2025-38218=
 CVE-2025-38219 CVE-2025-38220 CVE-2025-38221
 CVE-2025-38222 CVE-2025-38223 CVE-2025-38224 CVE-2025-38225 CVE-2025-38226=
 CVE-2025-38227 CVE-2025-38228 CVE-2025-38229 CVE-2025-38230 CVE-2025-38231=
 CVE-2025-38232 CVE-2025-38233 CVE-2025-38235 CVE-2025-38236 CVE-2025-38238=
 CVE-2025-38239 CVE-2025-38241 CVE-2025-38242
 CVE-2025-38243 CVE-2025-38244 CVE-2025-38245 CVE-2025-38246 CVE-2025-38247=
 CVE-2025-38249 CVE-2025-38250 CVE-2025-38251 CVE-2025-38252 CVE-2025-38253=
 CVE-2025-38254 CVE-2025-38255 CVE-2025-38256 CVE-2025-38257 CVE-2025-38258=
 CVE-2025-38259 CVE-2025-38260 CVE-2025-38262
 CVE-2025-38263 CVE-2025-38264 CVE-2025-38265 CVE-2025-38266 CVE-2025-38267=
 CVE-2025-38268 CVE-2025-38269 CVE-2025-38270 CVE-2025-38271 CVE-2025-38273=
 CVE-2025-38274 CVE-2025-38275 CVE-2025-38276 CVE-2025-38277 CVE-2025-38278=
 CVE-2025-38279 CVE-2025-38280 CVE-2025-38281
 CVE-2025-38282 CVE-2025-38283 CVE-2025-38285 CVE-2025-38286 CVE-2025-38287=
 CVE-2025-38288 CVE-2025-38289 CVE-2025-38290 CVE-2025-38291 CVE-2025-38292=
 CVE-2025-38293 CVE-2025-38294 CVE-2025-38295 CVE-2025-38296 CVE-2025-38297=
 CVE-2025-38298 CVE-2025-38299 CVE-2025-38300
 CVE-2025-38301 CVE-2025-38302 CVE-2025-38303 CVE-2025-38304 CVE-2025-38305=
 CVE-2025-38307 CVE-2025-38308 CVE-2025-38309 CVE-2025-38310 CVE-2025-38312=
 CVE-2025-38313 CVE-2025-38314 CVE-2025-38315 CVE-2025-38316 CVE-2025-38317=
 CVE-2025-38318 CVE-2025-38319 CVE-2025-38320
 CVE-2025-38321 CVE-2025-38322 CVE-2025-38323 CVE-2025-38324 CVE-2025-38325=
 CVE-2025-38326 CVE-2025-38327 CVE-2025-38328 CVE-2025-38329 CVE-2025-38330=
 CVE-2025-38331 CVE-2025-38332 CVE-2025-38333 CVE-2025-38334 CVE-2025-38336=
 CVE-2025-38337 CVE-2025-38338 CVE-2025-38339
 CVE-2025-38340 CVE-2025-38341 CVE-2025-38342 CVE-2025-38343 CVE-2025-38344=
 CVE-2025-38345 CVE-2025-38346 CVE-2025-38347 CVE-2025-38348<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ncurses: Fix CVE-20=
25-6141<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
25-8194<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sqlite3: Fix CVE-20=
25-6965<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: Fix CVE-2025-=
32462 CVE-2025-32463<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix CVE-=
2025-24223 CVE-2025-31204 CVE-2025-31205 CVE-2025-31206 CVE-2025-31215 CVE-=
2025-31257<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2025-49175 CVE-2025-49176 CVE-2025-49177 CVE-2025-49178 CVE-2025-49179 C=
VE-2025-49180<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bind: upgrade to 9.=
20.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
44 branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: test/fetch=
: Switch u-boot based test to use our own mirror<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Opt=
imise signal/sigmask performance<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to walnascar head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ca-certificates: co=
rrect the SRC_URI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">conf.py: improve Se=
archEnglish to handle terms with dots<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: added missing command in Optimize your VHDX file using DiskPart<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: mention that PERSISTENT_DIR should be shared too<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: remove basic setup for hash equivalence<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual/start.rs=
t: remove shared PERSISTENT_DIR mentions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs/variables.rst:=
 remove references to obsolete tar packaging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">git: upgrade to 2.4=
9.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.41 =
branch updates<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnutls: upgrade to =
3.8.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">go: upgrade to 1.24=
.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">kea: set correct pe=
rmissions for /var/run/kea<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: upgrade to =
1.7.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: r=
iscv tune fragments<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: r=
iscv: Enable TUNE_FEATURES based KERNEL_FEATURES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: u=
pdate to v6.12.38<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.12: y=
affs2: silence warnings<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ltp: Skip semctl08 =
when __USE_TIME64_REDIRECTS is defined<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ltp: backport patch=
 to fix compilation error for Skylake -march=3Dx86-64-v3<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.28, 5.0.11, 5.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mingetty: fix do_pa=
ckage warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">mtools: upgrade to =
4.0.49<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssl: upgrade to=
 3.4.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">orc: set CVE_PRODUC=
T<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/con=
cepts.rst: fix sayhello hardcoded bindir<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/con=
cepts.rst: mention PERSISTENT_DIR for user configuration<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">overview-manual/yp-=
intro.rst: fix broken link to article<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.2.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: incre=
ase minimum RAM from 8 to 32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: update CVE=
 product<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: document the testexport class<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: drop obsolete QA errors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/classes.=
rst: insane: drop cve_status_not_in_db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/structur=
e.rst: remove shared PERSISTENT_DIR mentions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/structur=
e.rst: update with info on PERSISTENT_DIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/system-r=
equirements.rst: update supported distributions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document SPL_DTB_BINARY<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual/variable=
s.rst: document the FIT_CONF_PREFIX variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby-ptest: some pt=
est fixes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ruby: upgrade to 3.=
4.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: Fix malformed=
 hunk header in rustix patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 5.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sudo: upgrade to 1.=
9.17p1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual/underst=
and-autobuilder.rst: mention hashequiv server<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix buil=
d break on non-arm/non-x86 systems<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Use gcc =
to compile for arm target<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: upgrade =
to 2.48.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.18<br>
<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87972F72B5817844319C02CCB909ABL4PR11MB8797namp_--

