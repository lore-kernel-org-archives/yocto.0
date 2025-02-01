Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B958C0218F
	for <webhook@archiver.kernel.org>; Sat,  1 Feb 2025 02:39:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by mx.groups.io with SMTP id smtpd.web10.35919.1738377540355940022
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2025 18:39:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=nVQADHdO;
 spf=pass (domain: intel.com, ip: 198.175.65.20, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1738377540; x=1769913540;
  h=from:to:subject:date:message-id:mime-version;
  bh=2BzZ5uGTqKZ7+gbLdtP8xDeA/9rOmSVJkA9OM/z5lNQ=;
  b=nVQADHdONgrFBchVQM3bi24lYJMRFAXCIfGspnSi4I2sfw1bH2W00rSZ
   VQIcQL5d/Lci+g++xk529GcII1xdqZnN3Av2RQAAiYmfFH39Ok7iOtT9f
   T7lQz474blO3qXhMr9SQjExFQBjzK+4j3ra9GStRpsGPeaKtaKGGFfm/i
   yMfklxwrnGLfmMqCt5zA8Jc9y8UWppkWSCLIBUOG85IZ9H8tdZZWwWdPZ
   GusbFX7o0gRfiPlalEm0doT5ArNtilvOC27q8mTZDMA2ksLawMLxZOQLe
   Tf8BTkdWtPR1c/ys1E7gOoSrwI+jOojrN/Akr3vEoqXyJzGEEsqcteo+A
   A==;
X-CSE-ConnectionGUID: IRFuQjiDQNOlNZUy40Gl2Q==
X-CSE-MsgGUID: dKtauUwTTNKdLYk7UnHFLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38656426"
X-IronPort-AV: E=Sophos;i="6.13,250,1732608000"; 
   d="scan'208,217";a="38656426"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jan 2025 18:38:59 -0800
X-CSE-ConnectionGUID: 7W0sECCUQ7G9jEwmczqCdA==
X-CSE-MsgGUID: SevULMknRuGbfqCQqD0CGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,250,1732608000"; 
   d="scan'208,217";a="110364172"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 31 Jan 2025 18:38:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 18:38:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 18:38:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 18:38:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3YOmQFyHaPDCCWOEnF75hpOVJpavn06tW3tBHDlOvFfhH5HLgaobIfeE+mdQYbjAQP8OaUdz+Jq6CNLGQ+5fbuoR1YI3kolBLh+VeiHRUjyTdBiI26ifcIuD5u7xUox1+XsL1a3tjXcL9uZ9XrnK1o6aPHy0UWqSCnlyilqPJ3n4B+a9sDLQfqbUHhAgeHNjytMw91EUxJb1/fvTw9cgoMp385ztyrXdw4C8WcX3PlDUsMgVQ/PtBSwG/UZ2bRlwQjeFdNl3+GxPMd2zD86bJSfkqw1SumFp8jxufwhFdMb9wy0geIaTV6gWwfjX+pWxl1VbTRwq+KABDDHROlYnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Bh1a9DNHSM+QCO4igVHMGrs4yeDD6bqM0GS+4ZdcAI=;
 b=g1dpkJaahvGdm9dJPFxodmKRJqmTMgr1bP+ta1qcHGkZpWVBGj2nVhVp6kDjZQgkJdMQkRbohz9ngoCLkyO/nCD7rTrz+nkegKoFvC9s88w0R8ZZrwaWX/asyl5VeIJlIIso63gDkbOrtXQyFJsbiQ8mzkPVZucZN+qRR41yLc9bdG/4w694kFnyCe4GG1OQmeAVXnRgnTra6HJy1rVbOmXvSiS5guhqVnxqeKNTwnAUdpkvds5/i3lu5vna8eYR2RTrXC+Nd/UnlgL7zJNo746iZhMwxyR0XQv9LmIbm/G1BnRrQXOpc8veS6SP+rykYdsc79qxikhp6b8kWElKOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH8PR11MB6904.namprd11.prod.outlook.com (2603:10b6:510:227::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Sat, 1 Feb
 2025 02:38:56 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%3]) with mapi id 15.20.8398.018; Sat, 1 Feb 2025
 02:38:56 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.24 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.24 is Released
Thread-Index: Adt0UISRpp8h7y5/S26Kf+lf2uDGxg==
Date: Sat, 1 Feb 2025 02:38:56 +0000
Message-ID: <BL4PR11MB879710C1EA5C2D619C965014B9EB2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH8PR11MB6904:EE_
x-ms-office365-filtering-correlation-id: f075c4d7-72c2-4ed7-5212-08dd426992fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|8096899003|38070700018|13003099007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?uF4IB+iEWAjYKpXMis+uKkCguAzZod94vF02YHLZzDi8X4wY5iG9KHEA8v?=
 =?iso-8859-1?Q?a9BNe8fz6xHirXvwrmajXt1+lRfqHgqya/81H7i/J2TdrDL5pM30rscVFx?=
 =?iso-8859-1?Q?MOHIRtGPJZGZqMYNgFr3JHTQX/YBZH6CjA9WHeTg4vHmxfmxUJ2vZ3OtIX?=
 =?iso-8859-1?Q?ILWQooGXpO8q6ffShKZDoSiZKxDT+QNxXhv8T4U3HD/W6Q0stHAoH1z9NT?=
 =?iso-8859-1?Q?QQRtCfFrdpy+8BA4H88+p313YGqTGLjVod/qdplsvFkcnKVy2nSRdLi23O?=
 =?iso-8859-1?Q?X3FxZj6yaqA2Lsx+xIg7ht6w5mPuVxu1GbFGzerG0CfKwWg7jKNZ/mrZzT?=
 =?iso-8859-1?Q?towWbGeMvQWYU1TgCuVRSyFA4T5NtnZs+v3ZNik9aMm7ZkEGFKrwibZ1Uz?=
 =?iso-8859-1?Q?B3Q72hxIdffPlRSiWU7tSrqXMc2K6bKLbIbNhCAgfz8tFZdAjqEtkdLK6j?=
 =?iso-8859-1?Q?7P/rDULGIOPc2MtLGYwNOpqZxAJmyEgoFORaSR2fI7BhFq15dGCt/Ou5+p?=
 =?iso-8859-1?Q?m3e0XPEGb3+omrCuQ5ScdLTc3LaBVDOG/ivToTlQFb0oG5NH6tmDKX0RC/?=
 =?iso-8859-1?Q?DEnOOBCWRp3Ey7rsNQEj8CfMEgqGgDNhr3b48WjTMVWL/C6GpoJWdcU60y?=
 =?iso-8859-1?Q?DUObZ1NC3BSH8KOQ4E4Y2zbxTDLUlUyBxw3WdYIphxb9z8jC3TiaKxRyuL?=
 =?iso-8859-1?Q?NcPxK2/s9woN2daByI7AkFR6h6D4biFdMF+S/XCqMwHyoJ2vhUK4gM/+6l?=
 =?iso-8859-1?Q?AH+H4v0/iddS8+hLJF6yypB6DfjtlP0Ix43LefAVVe9OINCf/fOyASKwJt?=
 =?iso-8859-1?Q?Wt1ooJqR7FGGZqbjKl/yqgOT7TKN2WRqnRDm4OmiaRK/sA4IWE6rPj3yjx?=
 =?iso-8859-1?Q?0/C6TuftJ2ZJAATafphxJwZhQTDLq5HqM3v2KgbKcxu9ImyL/WRcePxvQ8?=
 =?iso-8859-1?Q?JZkEui32ZQ+t5rgtzT5W18aPVRBvTdKtSQ2YidLina+l++sfrneOH2CTZN?=
 =?iso-8859-1?Q?d0L7at7oKGYDBzDOrlKRX+BEFuEQeZ7EXMKqcwoXOEXZXeS509Z/S2V0M1?=
 =?iso-8859-1?Q?dGbaiu/TAIjaThyvpd74Zom7gPLILDcpz3NRHKpJ5UnhJtDcvFP6REALVA?=
 =?iso-8859-1?Q?tb6iqEG2XlHAmTGiGPtukscouAMau71PoPX0LggWlUEG8NRiVUkl57qOgg?=
 =?iso-8859-1?Q?FjeyF608CMApcg5zGbNwjlc45cC7df8CBc1axbU2JyWjIR48en/CO+llFS?=
 =?iso-8859-1?Q?gakeK9ZCdN4eqJDhaZRJT/K8vs24FetcWbMGo3r+3zuxkY/nljM1Knorkj?=
 =?iso-8859-1?Q?nmC6cp5XkapGjjSIiXk20VwpUl19Fzo5AfCNxzXPxPTPJnwhDeoQdRwPWu?=
 =?iso-8859-1?Q?pmfqW86wnPYWme5e2jCjjPQqXi4teIVXkHpF3Gswlj1gXrAg0Bsvj7udQU?=
 =?iso-8859-1?Q?3De1g54fdJD4b33P?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(38070700018)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?VjLUeqdqaHYKIDG4ciUl+/APf2MyAJSy6R9Xo86GKnHpGpuwrjWF2O6KZq?=
 =?iso-8859-1?Q?oPQZ6EwhKzyLyr6Kv7Qhg0OUnuJrJDcA0NcqTAjeqM8GLGP5JrnpXH1hr9?=
 =?iso-8859-1?Q?p6xaKnkoDCKPQsRVDpYhvntjVlicXkk2Tj23+w3RwFVSsgDC/XOj6x3gzz?=
 =?iso-8859-1?Q?tl0mCO/tN8MldAeG5wYJ8N7HhGQgLXXF592Vb0fKusLiT8nHneSl5z22yg?=
 =?iso-8859-1?Q?9Z7bitpzXDA+TIoniBulyQZAT+ltW7Xnd3hZEWS6Tp3vMg33igzFElkFwP?=
 =?iso-8859-1?Q?3iZ2HiqcA9MvgomcIuerC9jGXNyIumQTdFLfjIZSs3J8oRleCTHI/BpcBc?=
 =?iso-8859-1?Q?mKazWpovmQRUo9OBe6aI3wIjQE7qt9l+qSTp+NBCnVsFy01ya3f8+PD9tA?=
 =?iso-8859-1?Q?7NhS3do8yEwys4ZToYJmFpg1uy9fbrAmpSubwdd99XCZWyRDmts5pwxEN+?=
 =?iso-8859-1?Q?Pc298taTkDHRgimHiXX3JzvXevla7yteyipeiwVWGX4NN+CSsV+5m0AyDQ?=
 =?iso-8859-1?Q?x5AFjj3Qs7LuCNggDwcXRpw0JX0yQLJnrgt5qS2F9OjG5dZ6fEZrLglVuL?=
 =?iso-8859-1?Q?3oSlAnN4zMwv53KJsPDegYsuqg7qCFJahK69UuBY41/LOGj3VYVfb4vXhg?=
 =?iso-8859-1?Q?aVehL4l8u2PFpZxm9AOuJMeBhDuZxcHquu+hBkIkmddQGtv7fU4ZVRHRY/?=
 =?iso-8859-1?Q?T5JDTRa5TLC6BYuMQy5lTMvZwR+CJewuzXL+YlL9E1FqRhgCJGr9+yUdtj?=
 =?iso-8859-1?Q?gsX6hUc+J/ARP3iQTLCN+XiApXSqwZ5nbbNoXoW6jWqPRFYZqzekgsBTN7?=
 =?iso-8859-1?Q?fP7zzelHL8PKB6vYOckYSS9TJo310TXbKDwMDs6OZO0KTDmRUPH/kpiPxv?=
 =?iso-8859-1?Q?rVtH+yPN+XUUSbHDvw/BkMJbt4GeJXvxylmzHUUy50iEUo94vR/Q0dtrGC?=
 =?iso-8859-1?Q?t3j1cJBDXqGB5IJuOmdsctwYb/ISsUaNQ0/7evWMJBMp+seNj2daYfGqkq?=
 =?iso-8859-1?Q?0c0Cwz3EZuKb5rt5a5IqU+hfuIgeLG+k2Hde+KtzyV7AVJyiSjj/L5e5uT?=
 =?iso-8859-1?Q?LfHCD6N04nmWdFk1peTV3cfPXut1aY0Cq7sXQhLzeFlfjsyihKjgEdBrMo?=
 =?iso-8859-1?Q?b9hFaKQzRRNQnvUCm1I/xyLteAH1KKsQolvd5Eo86ODNQJwir7FZkhkxB7?=
 =?iso-8859-1?Q?PY8ZbGicTPVp7sGnSQsmxMZdeCtolNxPTwtZn5IpbTkcPkbZ7XSV7/XiHn?=
 =?iso-8859-1?Q?P442lKG3bvpFSI8yc+02/TfIAgwUIBbJXgrDoklQP9VMZ+8vmHUMQLPbbV?=
 =?iso-8859-1?Q?dRlmZmyJqFJVG7AHHHOg76NwlhYBhRwRUZ9ZQ6m3TUAqpGz+/pk2Ov//8m?=
 =?iso-8859-1?Q?EYBzkOobNbG5EE+ao3Ul0rBKFBoptWD/mipU158kn3JJ05orBVeqbNJ438?=
 =?iso-8859-1?Q?YZUxrOGMHb+3sSR5BK0NebHgmV88/wBbNKeFEI17B++O4RV/hInEt3Iw0c?=
 =?iso-8859-1?Q?MJ06Ry9XfslKi0o+mdcbXrJQMX0z7agUF+k/ksbA6tUkOUoQ1qIWxIK4pc?=
 =?iso-8859-1?Q?fm7SH7fNvB6/TyNzGfgAW82FzdWVINPBhwTAh82rtCMHcLKauwjQ/yUNr+?=
 =?iso-8859-1?Q?AS9rt9GVQ70wkuOwBYPNahuPkPM3FC6Bxb?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879710C1EA5C2D619C965014B9EB2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f075c4d7-72c2-4ed7-5212-08dd426992fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2025 02:38:56.1525
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Uf5su74QKcj4AvMxTcs3h1qEpB+2bn4gZyD9XvMKrF5iUAIC+VCq2JgTv7T8y2DTnLS32Q96nwWd7ZZbg78Kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6904
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Feb 2025 02:39:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64691

--_000_BL4PR11MB879710C1EA5C2D619C965014B9EB2BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.24 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/poky-f505325=
93651dff82bc952288d786c55038c2c86.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/poky-f50532593651dff82b=
c952288d786c55038c2c86.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-4.0.24 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.24
Git Revision: f50532593651dff82bc952288d786c55038c2c86
Release Artefact: poky-f50532593651dff82bc952288d786c55038c2c86
sha: 0aa062d19510394748db9a2d6ded2d764f435383296d9c94fb6b25755280556e
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/poky-f505325=
93651dff82bc952288d786c55038c2c86.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/poky-f50532593651dff82b=
c952288d786c55038c2c86.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.24
Git Revision: a270d4c957259761bcc7382fcc54642a02f9fc7d
Release Artefact: oecore-a270d4c957259761bcc7382fcc54642a02f9fc7d
sha: b08b9b16c8ffa587d521ad28e24e38c79d757a6f0839d18165ebac3081a34b68
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/oecore-a270d=
4c957259761bcc7382fcc54642a02f9fc7d.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/oecore-a270d4c957259761=
bcc7382fcc54642a02f9fc7d.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.24
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.24
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.24
Git Revision: 3f88b005244a0afb5d5c7260e54a94a453ec9b3e
Release Artefact: bitbake-3f88b005244a0afb5d5c7260e54a94a453ec9b3e
sha: 31f442b72ec7d81ca75509b1a7179c3fe3942528b1e31c823b21a413244bd15b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/bitbake-3f88=
b005244a0afb5d5c7260e54a94a453ec9b3e.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24/bitbake-3f88b005244a0af=
b5d5c7260e54a94a453ec9b3e.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.24
Git Revision: 3128bf149f40928e6c2a3e264590a0c6c9778c6a


---------------
Contributors
---------------
Aleksandar Nikolic
Alex Kiernan
Alexander Kanavin
Alexandre Belloni
Antonin Godard
Archana Polampalli
Bruce Ashfield
Changqing Li
Chen Qi
Chris Laplante
Divya Chellam
Ernst Persson
Gu=E9na=EBl Muller
Hitendra Prajapati
Hongxu Jia
Jiaying Song
Jinfeng Wang
Khem Raj
Lee Chee Yang
Liyin Zhang
Louis Rannou
Markus Volk
Mikko Rapeli
Ovidiu Panait
Peter Kjellerstedt
Peter Marko
Regis Dargent
Richard Purdie
Rohini Sangam
Ross Burton
Soumya Sambu
Steve Sakoman
Trevor Gamblin
Vijay Anusuri
Wang Mingyu
Yogita Urade
Zahir Hussain


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
coreutils: Fix CVE-2024-0684
cpio: Ignore CVE-2023-7216
diffoscope: Fix CVE-2024-25711
ffmpeg: fix CVE-2023-47342 CVE-2023-50007 CVE-2023-50008 CVE-2023-51793 CVE=
-2023-51794 CVE-2023-51796 CVE-2023-51798 CVE-2024-7055 CVE-2024-31578 CVE-=
2024-31582 CVE-2024-32230 CVE-2024-35366 CVE-2024-35367 CVE-2024-35368
ghostscript: Fix CVE-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-4695=
5 CVE-2024-46956
ghostscript: Ignore CVE-2024-46954
glib-2.0: Fix CVE-2024-52533
gnupg: Ignore CVE-2022-3515
grub: Ignore CVE-2024-1048 CVE-2023-4001
gstreame1.0: Ignore CVE-2023-40474 CVE-2023-40475 CVE-2023-40476 CVE-2023-4=
4429 CVE-2023-44446 CVE-2023-50186 CVE-2024-0444
gstreamer1.0-plugins-base: Fix CVE-2024-47538 CVE-2024-47541 CVE-2024-47542=
 CVE-2024-47600 CVE-2024-47607 CVE-2024-47615 CVE-2024-47835
gstreamer1.0-plugins-good: Fix CVE-2024-47537 CVE-2024-47539 CVE-2024-47540=
 CVE-2024-47543 CVE-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596=
 CVE-2024-47597 CVE-2024-47598 CVE-2024-47599 CVE-2024-47601 CVE-2024-47602=
 CVE-2024-47603 CVE-2024-47606 CVE-2024-47613 CVE-2024-47774 CVE-2024-47775=
 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834
gstreamer1.0: Fix CVE-2024-47606
libarchive: Fix CVE-2024-20696
libpam: Fix CVE-2024-10041
libsdl2: Ignore CVE-2020-14409 and CVE-2020-14410
libsndfile1: Fix CVE-2022-33065 CVE-2024-50612
libsoup-2.4: Fix CVE-2024-52530 CVE-2024-52531 CVE-2024-52532
libsoup: Fix CVE-2024-52530 CVE-2024-52531 CVE-2024-52532
linux-yocto/5.10: Fix CVE-2023-52889 CVE-2023-52917 CVE-2023-52918 CVE-2024=
-41011 CVE-2024-42259 CVE-2024-42271 CVE-2024-42272 CVE-2024-42280 CVE-2024=
-42283 CVE-2024-42284 CVE-2024-42285 CVE-2024-42286 CVE-2024-42287 CVE-2024=
-42288 CVE-2024-42289 CVE-2024-42301 CVE-2024-42302 CVE-2024-42309 CVE-2024=
-42310 CVE-2024-42311 CVE-2024-42313 CVE-2024-43828 CVE-2024-43856 CVE-2024=
-43858 CVE-2024-43860 CVE-2024-43861 CVE-2024-43871 CVE-2024-43882 CVE-2024=
-43889 CVE-2024-43890 CVE-2024-43893 CVE-2024-43894 CVE-2024-43907 CVE-2024=
-43908 CVE-2024-43914 CVE-2024-44935 CVE-2024-44944 CVE-2024-44947 CVE-2024=
-44954 CVE-2024-44960 CVE-2024-44965 CVE-2024-44969 CVE-2024-44971 CVE-2024=
-44987 CVE-2024-44988 CVE-2024-44989 CVE-2024-44990 CVE-2024-44995 CVE-2024=
-44998 CVE-2024-44999 CVE-2024-45003 CVE-2024-45006 CVE-2024-45016 CVE-2024=
-45018 CVE-2024-45021 CVE-2024-45025 CVE-2024-45026 CVE-2024-45028 CVE-2024=
-46673 CVE-2024-46674 CVE-2024-46675 CVE-2024-46676 CVE-2024-46677 CVE-2024=
-46679 CVE-2024-46685 CVE-2024-46689 CVE-2024-46702 CVE-2024-46707 CVE-2024=
-46714 CVE-2024-46719 CVE-2024-46721 CVE-2024-46722 CVE-2024-46723 CVE-2024=
-46724 CVE-2024-46725 CVE-2024-46731 CVE-2024-46737 CVE-2024-46738 CVE-2024=
-46739 CVE-2024-46740 CVE-2024-46743 CVE-2024-46744 CVE-2024-46747 CVE-2024=
-46750 CVE-2024-46755 CVE-2024-46759 CVE-2024-46761 CVE-2024-46763 CVE-2024=
-46771 CVE-2024-46777 CVE-2024-46780 CVE-2024-46781 CVE-2024-46782 CVE-2024=
-46783 CVE-2024-46791 CVE-2024-46798 CVE-2024-46800 CVE-2024-46804 CVE-2024=
-46814 CVE-2024-46815 CVE-2024-46817 CVE-2024-46818 CVE-2024-46819 CVE-2024=
-46822 CVE-2024-46828 CVE-2024-46829 CVE-2024-46832 CVE-2024-46840 CVE-2024=
-46844 CVE-2024-47659 CVE-2024-47660 CVE-2024-47663 CVE-2024-47667 CVE-2024=
-47668 CVE-2024-47669 CVE-2024-47679 CVE-2024-47684 CVE-2024-47685 CVE-2024=
-47692 CVE-2024-47697 CVE-2024-47698 CVE-2024-47699 CVE-2024-47701 CVE-2024=
-47705 CVE-2024-47706 CVE-2024-47710 CVE-2024-47712 CVE-2024-47713 CVE-2024=
-47718 CVE-2024-47723 CVE-2024-47735 CVE-2024-47737 CVE-2024-47739 CVE-2024=
-47742 CVE-2024-47747 CVE-2024-47748 CVE-2024-47749 CVE-2024-47757 CVE-2024=
-49851 CVE-2024-49858 CVE-2024-49860 CVE-2024-49863 CVE-2024-49867 CVE-2024=
-49868 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024=
-49881 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49889 CVE-2024=
-49890 CVE-2024-49892 CVE-2024-49894 CVE-2024-49895 CVE-2024-49896 CVE-2024=
-49900 CVE-2024-49902 CVE-2024-49903 CVE-2024-49907 CVE-2024-49913 CVE-2024=
-49924 CVE-2024-49930 CVE-2024-49933 CVE-2024-49936 CVE-2024-49938 CVE-2024=
-49944 CVE-2024-49948 CVE-2024-49949 CVE-2024-49952 CVE-2024-49955 CVE-2024=
-49957 CVE-2024-49958 CVE-2024-49959 CVE-2024-49962 CVE-2024-49963 CVE-2024=
-49965 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024=
-49977 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024=
-49995 CVE-2024-49997 CVE-2024-50001 CVE-2024-50006 CVE-2024-50007 CVE-2024=
-50008 CVE-2024-50013 CVE-2024-50015 CVE-2024-50024 CVE-2024-50033 CVE-2024=
-50035 CVE-2024-50039 CVE-2024-50040 CVE-2024-50044 CVE-2024-50045 CVE-2024=
-50046 CVE-2024-50049 CVE-2024-50059 CVE-2024-50095 CVE-2024-50096 CVE-2024=
-50179 CVE-2024-50180 CVE-2024-50181 CVE-2024-50184 CVE-2024-50188
linux-yocto/5.15: Fix CVE-2022-48695 CVE-2023-52530 CVE-2023-52917 CVE-2024=
-45009 CVE-2024-46714 CVE-2024-46719 CVE-2024-46721 CVE-2024-46722 CVE-2024=
-46723 CVE-2024-46724 CVE-2024-46725 CVE-2024-46731 CVE-2024-46732 CVE-2024=
-46737 CVE-2024-46738 CVE-2024-46739 CVE-2024-46740 CVE-2024-46743 CVE-2024=
-46744 CVE-2024-46746 CVE-2024-46747 CVE-2024-46750 CVE-2024-46755 CVE-2024=
-46759 CVE-2024-46761 CVE-2024-46763 CVE-2024-46771 CVE-2024-46777 CVE-2024=
-46780 CVE-2024-46781 CVE-2024-46782 CVE-2024-46783 CVE-2024-46791 CVE-2024=
-46795 CVE-2024-46798 CVE-2024-46800 CVE-2024-46804 CVE-2024-46805 CVE-2024=
-46807 CVE-2024-46810 CVE-2024-46814 CVE-2024-46815 CVE-2024-46817 CVE-2024=
-46818 CVE-2024-46819 CVE-2024-46822 CVE-2024-46828 CVE-2024-46829 CVE-2024=
-46832 CVE-2024-46840 CVE-2024-46844 CVE-2024-47659 CVE-2024-47660 CVE-2024=
-47663 CVE-2024-47665 CVE-2024-47667 CVE-2024-47668 CVE-2024-47669 CVE-2024=
-47674 CVE-2024-47679 CVE-2024-47684 CVE-2024-47685 CVE-2024-47690 CVE-2024=
-47692 CVE-2024-47693 CVE-2024-47695 CVE-2024-47696 CVE-2024-47697 CVE-2024=
-47698 CVE-2024-47699 CVE-2024-47701 CVE-2024-47705 CVE-2024-47706 CVE-2024=
-47710 CVE-2024-47712 CVE-2024-47713 CVE-2024-47718 CVE-2024-47720 CVE-2024=
-47723 CVE-2024-47734 CVE-2024-47735 CVE-2024-47737 CVE-2024-47739 CVE-2024=
-47742 CVE-2024-47747 CVE-2024-47748 CVE-2024-47749 CVE-2024-47757 CVE-2024=
-49851 CVE-2024-49852 CVE-2024-49854 CVE-2024-49856 CVE-2024-49858 CVE-2024=
-49860 CVE-2024-49863 CVE-2024-49866 CVE-2024-49867 CVE-2024-49868 CVE-2024=
-49871 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024=
-49881 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49886 CVE-2024=
-49889 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894 CVE-2024-49895 CVE-2024=
-49896 CVE-2024-49900 CVE-2024-49902 CVE-2024-49903 CVE-2024-49907 CVE-2024=
-49913 CVE-2024-49924 CVE-2024-49927 CVE-2024-49930 CVE-2024-49933 CVE-2024=
-49935 CVE-2024-49936 CVE-2024-49938 CVE-2024-49944 CVE-2024-49946 CVE-2024=
-49948 CVE-2024-49949 CVE-2024-49952 CVE-2024-49954 CVE-2024-49955 CVE-2024=
-49957 CVE-2024-49958 CVE-2024-49959 CVE-2024-49962 CVE-2024-49963 CVE-2024=
-49965 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024=
-49977 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024=
-49995 CVE-2024-49997 CVE-2024-50000 CVE-2024-50001 CVE-2024-50002 CVE-2024=
-50003 CVE-2024-50006 CVE-2024-50007 CVE-2024-50008 CVE-2024-50013 CVE-2024=
-50015 CVE-2024-50019 CVE-2024-50024 CVE-2024-50031 CVE-2024-50033 CVE-2024=
-50035 CVE-2024-50038 CVE-2024-50039 CVE-2024-50040 CVE-2024-50041 CVE-2024=
-50044 CVE-2024-50045 CVE-2024-50046 CVE-2024-50049 CVE-2024-50059 CVE-2024=
-50062 CVE-2024-50074 CVE-2024-50082 CVE-2024-50083 CVE-2024-50093 CVE-2024=
-50095 CVE-2024-50096 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103 CVE-2024=
-50110 CVE-2024-50115 CVE-2024-50116 CVE-2024-50117 CVE-2024-50127 CVE-2024=
-50128 CVE-2024-50131 CVE-2024-50134 CVE-2024-50141 CVE-2024-50142 CVE-2024=
-50143 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50153 CVE-2024=
-50154 CVE-2024-50156 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163 CVE-2024=
-50167 CVE-2024-50168 CVE-2024-50171 CVE-2024-50179 CVE-2024-50180 CVE-2024=
-50181 CVE-2024-50182 CVE-2024-50184 CVE-2024-50185 CVE-2024-50186 CVE-2024=
-50188 CVE-2024-50189 CVE-2024-50191 CVE-2024-50192 CVE-2024-50193 CVE-2024=
-50194 CVE-2024-50195 CVE-2024-50196 CVE-2024-50198 CVE-2024-50201 CVE-2024=
-50202 CVE-2024-50205 CVE-2024-50208 CVE-2024-50209 CVE-2024-50229 CVE-2024=
-50230 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-50236 CVE-2024=
-50237 CVE-2024-50244 CVE-2024-50245 CVE-2024-50247 CVE-2024-50251 CVE-2024=
-50257 CVE-2024-50259 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 CVE-2024=
-50267 CVE-2024-50268 CVE-2024-50269 CVE-2024-50273 CVE-2024-50278 CVE-2024=
-50279 CVE-2024-50282 CVE-2024-50287 CVE-2024-50292 CVE-2024-50296 CVE-2024=
-50299 CVE-2024-50301 CVE-2024-50302 CVE-2024-53052 CVE-2024-53055 CVE-2024=
-53057 CVE-2024-53058 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061 CVE-2024=
-53063 CVE-2024-53066 CVE-2024-53088 CVE-2024-53096 CVE-2024-53101 CVE-2024=
-53103 CVE-2024-53145 CVE-2024-53146 CVE-2024-53150 CVE-2024-53151 CVE-2024=
-53155 CVE-2024-53156 CVE-2024-53157 CVE-2024-53165 CVE-2024-53171 CVE-2024=
-53173 CVE-2024-53226 CVE-2024-53227 CVE-2024-53237 CVE-2024-56567 CVE-2024=
-56572 CVE-2024-56574 CVE-2024-56578 CVE-2024-56581 CVE-2024-56593 CVE-2024=
-56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605 CVE-2024=
-56606 CVE-2024-56614 CVE-2024-56622 CVE-2024-56623 CVE-2024-56629 CVE-2024=
-56634 CVE-2024-56640 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024=
-56650 CVE-2024-56659 CVE-2024-56662 CVE-2024-56670 CVE-2024-56688 CVE-2024=
-56694 CVE-2024-56704 CVE-2024-56708 CVE-2024-56720 CVE-2024-56723 CVE-2024=
-56724 CVE-2024-56726 CVE-2024-56728 CVE-2024-56739 CVE-2024-56741 CVE-2024=
-56745 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56754 CVE-2024=
-56756 CVE-2024-56770 CVE-2024-56774 CVE-2024-56776 CVE-2024-56777 CVE-2024=
-56778 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56785 CVE-2024=
-56787
ovmf: Fix CVE-2022-36763 CVE-2022-36764 CVE-2022-36765 CVE-2023-45229 CVE-2=
023-45230 CVE-2023-45231 CVE-2023-45232 CVE-2023-45233 CVE-2023-45234 CVE-2=
023-45235 CVE-2023-45236 CVE-2023-45237 CVE-2024-1298 CVE-2024-38796
pixman: Ignore CVE-2023-37769
python3: Fix CVE-2024-50602 CVE-2024-11168 CVE-2024-9287
python3-pip: Fix CVE-2023-5752
python3-requests: Fix CVE-2024-35195
python3-zipp: Fix CVE-2024-5569
qemu: Fix CVE-2024-3446 CVE-2024-3447 CVE-2024-6505
qemu: Ignore CVE-2022-36648
subversion: Fix CVE-2024-46901
tiff: Fix CVE-2023-3164
tiff: Ignore CVE-2023-2731
webkitgtk: Fix CVE-2024-40776 CVE-2024-40780
xserver-xorg: Fix CVE-2024-9632
xwayland: Fix CVE-2023-5380 CVE-2024-0229


---------------
Fixes
---------------
base-passwd: Add the sgx group
base-passwd: Regenerate the patches
base-passwd: Update the status for two patches
base-passwd: Update to 3.5.52
base-passwd: add the wheel group
base-passwd: fix patchreview warning
bitbake: fetch2: use persist_data context managers
bitbake: fetch/wget: Increase timeout to 100s from 30s
bitbake: persist_data: close connection in SQLTable __exit__
build-appliance-image: Update to kirkstone head revision
builder: set CVE_PRODUCT
contributor-guide: submit-changes.rst: suggest to remove the git signature
cve-update-nvd2-native: Tweak to work better with NFS DL_DIR
dbus: disable assertions and enable only modular tests
do_package/sstate/sstatesig: Change timestamp clamping to hash output only
docs: Gather dependencies in poky.yaml.in
docs: standards.md: add a section on admonitions
gstreamer1.0: improve test reliability
linux-yocto/5.10: update to v5.10.227
linux-yocto/5.15: update to v5.15.175
llvm: reduce size of -dbg package
lttng-modules: fix build error after kernel update to 5.15.171
migration-guides: add release notes for 4.0.23
ninja: fix build with python 3.13
oeqa/utils/gitarchive: Return tag name and improve exclude handling
ovmf-native: remove .pyc files from install
package.bbclass: Use shlex instead of deprecated pipes
package_rpm: restrict rpm to 4 threads
package_rpm: use zstd's default compression level
poky.conf: add new tested distros
poky.conf: bump version for 4.0.24
poky.yaml.in: add missing locales dependency
python3: upgrade to 3.10.16
ref-manual: SSTATE_MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror a=
uthentication
ref-manual: classes: fix bin_package description
ref-manual: devtool-reference: add warning note on deploy-target and shared=
 objects
ref-manual: move runtime-testing section to the test-manual
ref-manual: packages: move ptest section to the test-manual
ref-manual: system-requirements: update list of supported distros
ref-manual: use standardized method accross both ubuntu and debian for loca=
le install
resulttool: Add --logfile-archive option to store mode
resulttool: Allow store to filter to specific revisions
resulttool: Clean up repoducible build logs
resulttool: Fix passthrough of --all files in store mode
resulttool: Handle ltp rawlogs as well as ptest
resulttool: Improve repo layout for oeselftest results
resulttool: Trim the precision of duration information
resulttool: Use single space indentation in json output
rootfs-postcommands.bbclass: make opkg status reproducible
rxvt-unicode.inc: disable the terminfo installation by setting TIC to :
sanity: check for working user namespaces
scripts/install-buildtools: Update to 4.0.22
selftest/reproducible: Clean up pathnames
selftest/reproducible: Drop rawlogs
test-manual: reproducible-builds.rst: document OEQA_REPRODUCIBLE_TEST_TARGE=
T and OEQA_REPRODUCIBLE_TEST_SSTATE_TARGETS
test-manual: reproducible-builds.rst: show how to build a single package
toolchain-shar-extract.sh: exit when post-relocate-setup.sh fails
tzdata & tzcode-native: upgrade 2024b
udev-extraconf: fix network.sh script did not configure hotplugged interfac=
es
unzip: Fix configure tests to use modern C
webkitgtk: Fix build on 32bit arm
webkitgtk: fix perl-native dependency
webkitgtk: reduce size of -dbg package
wireless-regdb: upgrade to 2024.10.07



--_000_BL4PR11MB879710C1EA5C2D619C965014B9EB2BL4PR11MB8797namp_
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
nnounce the Yocto Project 4.0.24 Release is now available for download.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/poky-f50532593651dff=
82bc952288d786c55038c2c86.tar.bz2">https://downloads.yoctoproject.org/relea=
ses/yocto/yocto-4.0.24/poky-f50532593651dff82bc952288d786c55038c2c86.tar.bz=
2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-4.0.24/poky-f50532593651dff82bc952288d=
786c55038c2c86.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.24=
/poky-f50532593651dff82bc952288d786c55038c2c86.tar.bz2</a><o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/RELEASENOTES">https:=
//downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/RELEASENOTES</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/testreport.txt">http=
s://downloads.yoctoproject.org/releases/yocto/yocto-4.0.24/testreport.txt</=
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-4.0.24 Releas=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f5053=
2593651dff82bc952288d786c55038c2c86<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-f50532593651dff82bc952288d786c55038c2c86<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 0aa062d1951039=
4748db9a2d6ded2d764f435383296d9c94fb6b25755280556e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.24/poky-f50532593651dff82bc952288d=
786c55038c2c86.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.24/poky-f50532593651dff82bc952288d786c55038c2=
c86.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: a270d=
4c957259761bcc7382fcc54642a02f9fc7d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-a270d4c957259761bcc7382fcc54642a02f9fc7d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: b08b9b16c8ffa5=
87d521ad28e24e38c79d757a6f0839d18165ebac3081a34b68<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.24/oecore-a270d4c957259761bcc7382f=
cc54642a02f9fc7d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.24/oecore-a270d4c957259761bcc7382fcc54642a02f=
9fc7d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
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
octoproject.org/releases/yocto/yocto-4.0.24/meta-mingw-87c22abb1f11be430caf=
4372e6b833dc7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.24/meta-mingw-87c22abb1f11be430caf4372e6b833d=
c7d77564e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
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
octoproject.org/releases/yocto/yocto-4.0.24/meta-gplv2-d2f8b5cdb285b72a4ed9=
3450f6703ca27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.24/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.0<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 3f88b=
005244a0afb5d5c7260e54a94a453ec9b3e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-3f88b005244a0afb5d5c7260e54a94a453ec9b3e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 31f442b72ec7d8=
1ca75509b1a7179c3fe3942528b1e31c823b21a413244bd15b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-4.0.24/bitbake-3f88b005244a0afb5d5c726=
0e54a94a453ec9b3e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-4.0.24/bitbake-3f88b005244a0afb5d5c7260e54a94a453=
ec9b3e.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: kirkstone<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-4.0.24<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 3128b=
f149f40928e6c2a3e264590a0c6c9778c6a<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alex Kiernan<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexandre Belloni<o=
:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chris Laplante<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Divya Chellam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ernst Persson<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=E9na=EBl Muller<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Liyin Zhang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Louis Rannou<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Markus Volk<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mikko Rapeli<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ovidiu Panait<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Kjellerstedt<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regis Dargent<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rohini Sangam<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Soumya Sambu<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Gamblin<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yogita Urade<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Zahir Hussain<o:p><=
/o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">coreutils: Fix CVE-=
2024-0684<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cpio: Ignore CVE-20=
23-7216<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">diffoscope: Fix CVE=
-2024-25711<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ffmpeg: fix CVE-202=
3-47342 CVE-2023-50007 CVE-2023-50008 CVE-2023-51793 CVE-2023-51794 CVE-202=
3-51796 CVE-2023-51798 CVE-2024-7055 CVE-2024-31578 CVE-2024-31582 CVE-2024=
-32230 CVE-2024-35366 CVE-2024-35367
 CVE-2024-35368<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-46955 CVE-2024-46956<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Ignore=
 CVE-2024-46954<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glib-2.0: Fix CVE-2=
024-52533<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gnupg: Ignore CVE-2=
022-3515<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: Ignore CVE-20=
24-1048 CVE-2023-4001<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreame1.0: Ignore=
 CVE-2023-40474 CVE-2023-40475 CVE-2023-40476 CVE-2023-44429 CVE-2023-44446=
 CVE-2023-50186 CVE-2024-0444<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-base: Fix CVE-2024-47538 CVE-2024-47541 CVE-2024-47542 CVE-2024-47600 CVE=
-2024-47607 CVE-2024-47615 CVE-2024-47835<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-plugin=
s-good: Fix CVE-2024-47537 CVE-2024-47539 CVE-2024-47540 CVE-2024-47543 CVE=
-2024-47544 CVE-2024-47545 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE=
-2024-47598 CVE-2024-47599 CVE-2024-47601
 CVE-2024-47602 CVE-2024-47603 CVE-2024-47606 CVE-2024-47613 CVE-2024-47774=
 CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Fix C=
VE-2024-47606<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2024-20696<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libpam: Fix CVE-202=
4-10041<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsdl2: Ignore CVE=
-2020-14409 and CVE-2020-14410<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsndfile1: Fix CV=
E-2022-33065 CVE-2024-50612<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup-2.4: Fix CV=
E-2024-52530 CVE-2024-52531 CVE-2024-52532<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsoup: Fix CVE-20=
24-52530 CVE-2024-52531 CVE-2024-52532<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: F=
ix CVE-2023-52889 CVE-2023-52917 CVE-2023-52918 CVE-2024-41011 CVE-2024-422=
59 CVE-2024-42271 CVE-2024-42272 CVE-2024-42280 CVE-2024-42283 CVE-2024-422=
84 CVE-2024-42285 CVE-2024-42286 CVE-2024-42287
 CVE-2024-42288 CVE-2024-42289 CVE-2024-42301 CVE-2024-42302 CVE-2024-42309=
 CVE-2024-42310 CVE-2024-42311 CVE-2024-42313 CVE-2024-43828 CVE-2024-43856=
 CVE-2024-43858 CVE-2024-43860 CVE-2024-43861 CVE-2024-43871 CVE-2024-43882=
 CVE-2024-43889 CVE-2024-43890 CVE-2024-43893
 CVE-2024-43894 CVE-2024-43907 CVE-2024-43908 CVE-2024-43914 CVE-2024-44935=
 CVE-2024-44944 CVE-2024-44947 CVE-2024-44954 CVE-2024-44960 CVE-2024-44965=
 CVE-2024-44969 CVE-2024-44971 CVE-2024-44987 CVE-2024-44988 CVE-2024-44989=
 CVE-2024-44990 CVE-2024-44995 CVE-2024-44998
 CVE-2024-44999 CVE-2024-45003 CVE-2024-45006 CVE-2024-45016 CVE-2024-45018=
 CVE-2024-45021 CVE-2024-45025 CVE-2024-45026 CVE-2024-45028 CVE-2024-46673=
 CVE-2024-46674 CVE-2024-46675 CVE-2024-46676 CVE-2024-46677 CVE-2024-46679=
 CVE-2024-46685 CVE-2024-46689 CVE-2024-46702
 CVE-2024-46707 CVE-2024-46714 CVE-2024-46719 CVE-2024-46721 CVE-2024-46722=
 CVE-2024-46723 CVE-2024-46724 CVE-2024-46725 CVE-2024-46731 CVE-2024-46737=
 CVE-2024-46738 CVE-2024-46739 CVE-2024-46740 CVE-2024-46743 CVE-2024-46744=
 CVE-2024-46747 CVE-2024-46750 CVE-2024-46755
 CVE-2024-46759 CVE-2024-46761 CVE-2024-46763 CVE-2024-46771 CVE-2024-46777=
 CVE-2024-46780 CVE-2024-46781 CVE-2024-46782 CVE-2024-46783 CVE-2024-46791=
 CVE-2024-46798 CVE-2024-46800 CVE-2024-46804 CVE-2024-46814 CVE-2024-46815=
 CVE-2024-46817 CVE-2024-46818 CVE-2024-46819
 CVE-2024-46822 CVE-2024-46828 CVE-2024-46829 CVE-2024-46832 CVE-2024-46840=
 CVE-2024-46844 CVE-2024-47659 CVE-2024-47660 CVE-2024-47663 CVE-2024-47667=
 CVE-2024-47668 CVE-2024-47669 CVE-2024-47679 CVE-2024-47684 CVE-2024-47685=
 CVE-2024-47692 CVE-2024-47697 CVE-2024-47698
 CVE-2024-47699 CVE-2024-47701 CVE-2024-47705 CVE-2024-47706 CVE-2024-47710=
 CVE-2024-47712 CVE-2024-47713 CVE-2024-47718 CVE-2024-47723 CVE-2024-47735=
 CVE-2024-47737 CVE-2024-47739 CVE-2024-47742 CVE-2024-47747 CVE-2024-47748=
 CVE-2024-47749 CVE-2024-47757 CVE-2024-49851
 CVE-2024-49858 CVE-2024-49860 CVE-2024-49863 CVE-2024-49867 CVE-2024-49868=
 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879 CVE-2024-49881=
 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49889 CVE-2024-49890=
 CVE-2024-49892 CVE-2024-49894 CVE-2024-49895
 CVE-2024-49896 CVE-2024-49900 CVE-2024-49902 CVE-2024-49903 CVE-2024-49907=
 CVE-2024-49913 CVE-2024-49924 CVE-2024-49930 CVE-2024-49933 CVE-2024-49936=
 CVE-2024-49938 CVE-2024-49944 CVE-2024-49948 CVE-2024-49949 CVE-2024-49952=
 CVE-2024-49955 CVE-2024-49957 CVE-2024-49958
 CVE-2024-49959 CVE-2024-49962 CVE-2024-49963 CVE-2024-49965 CVE-2024-49966=
 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-49977 CVE-2024-49981=
 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024-49995 CVE-2024-49997=
 CVE-2024-50001 CVE-2024-50006 CVE-2024-50007
 CVE-2024-50008 CVE-2024-50013 CVE-2024-50015 CVE-2024-50024 CVE-2024-50033=
 CVE-2024-50035 CVE-2024-50039 CVE-2024-50040 CVE-2024-50044 CVE-2024-50045=
 CVE-2024-50046 CVE-2024-50049 CVE-2024-50059 CVE-2024-50095 CVE-2024-50096=
 CVE-2024-50179 CVE-2024-50180 CVE-2024-50181
 CVE-2024-50184 CVE-2024-50188<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: F=
ix CVE-2022-48695 CVE-2023-52530 CVE-2023-52917 CVE-2024-45009 CVE-2024-467=
14 CVE-2024-46719 CVE-2024-46721 CVE-2024-46722 CVE-2024-46723 CVE-2024-467=
24 CVE-2024-46725 CVE-2024-46731 CVE-2024-46732
 CVE-2024-46737 CVE-2024-46738 CVE-2024-46739 CVE-2024-46740 CVE-2024-46743=
 CVE-2024-46744 CVE-2024-46746 CVE-2024-46747 CVE-2024-46750 CVE-2024-46755=
 CVE-2024-46759 CVE-2024-46761 CVE-2024-46763 CVE-2024-46771 CVE-2024-46777=
 CVE-2024-46780 CVE-2024-46781 CVE-2024-46782
 CVE-2024-46783 CVE-2024-46791 CVE-2024-46795 CVE-2024-46798 CVE-2024-46800=
 CVE-2024-46804 CVE-2024-46805 CVE-2024-46807 CVE-2024-46810 CVE-2024-46814=
 CVE-2024-46815 CVE-2024-46817 CVE-2024-46818 CVE-2024-46819 CVE-2024-46822=
 CVE-2024-46828 CVE-2024-46829 CVE-2024-46832
 CVE-2024-46840 CVE-2024-46844 CVE-2024-47659 CVE-2024-47660 CVE-2024-47663=
 CVE-2024-47665 CVE-2024-47667 CVE-2024-47668 CVE-2024-47669 CVE-2024-47674=
 CVE-2024-47679 CVE-2024-47684 CVE-2024-47685 CVE-2024-47690 CVE-2024-47692=
 CVE-2024-47693 CVE-2024-47695 CVE-2024-47696
 CVE-2024-47697 CVE-2024-47698 CVE-2024-47699 CVE-2024-47701 CVE-2024-47705=
 CVE-2024-47706 CVE-2024-47710 CVE-2024-47712 CVE-2024-47713 CVE-2024-47718=
 CVE-2024-47720 CVE-2024-47723 CVE-2024-47734 CVE-2024-47735 CVE-2024-47737=
 CVE-2024-47739 CVE-2024-47742 CVE-2024-47747
 CVE-2024-47748 CVE-2024-47749 CVE-2024-47757 CVE-2024-49851 CVE-2024-49852=
 CVE-2024-49854 CVE-2024-49856 CVE-2024-49858 CVE-2024-49860 CVE-2024-49863=
 CVE-2024-49866 CVE-2024-49867 CVE-2024-49868 CVE-2024-49871 CVE-2024-49875=
 CVE-2024-49877 CVE-2024-49878 CVE-2024-49879
 CVE-2024-49881 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-49886=
 CVE-2024-49889 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894 CVE-2024-49895=
 CVE-2024-49896 CVE-2024-49900 CVE-2024-49902 CVE-2024-49903 CVE-2024-49907=
 CVE-2024-49913 CVE-2024-49924 CVE-2024-49927
 CVE-2024-49930 CVE-2024-49933 CVE-2024-49935 CVE-2024-49936 CVE-2024-49938=
 CVE-2024-49944 CVE-2024-49946 CVE-2024-49948 CVE-2024-49949 CVE-2024-49952=
 CVE-2024-49954 CVE-2024-49955 CVE-2024-49957 CVE-2024-49958 CVE-2024-49959=
 CVE-2024-49962 CVE-2024-49963 CVE-2024-49965
 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-49977=
 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024-49995=
 CVE-2024-49997 CVE-2024-50000 CVE-2024-50001 CVE-2024-50002 CVE-2024-50003=
 CVE-2024-50006 CVE-2024-50007 CVE-2024-50008
 CVE-2024-50013 CVE-2024-50015 CVE-2024-50019 CVE-2024-50024 CVE-2024-50031=
 CVE-2024-50033 CVE-2024-50035 CVE-2024-50038 CVE-2024-50039 CVE-2024-50040=
 CVE-2024-50041 CVE-2024-50044 CVE-2024-50045 CVE-2024-50046 CVE-2024-50049=
 CVE-2024-50059 CVE-2024-50062 CVE-2024-50074
 CVE-2024-50082 CVE-2024-50083 CVE-2024-50093 CVE-2024-50095 CVE-2024-50096=
 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103 CVE-2024-50110 CVE-2024-50115=
 CVE-2024-50116 CVE-2024-50117 CVE-2024-50127 CVE-2024-50128 CVE-2024-50131=
 CVE-2024-50134 CVE-2024-50141 CVE-2024-50142
 CVE-2024-50143 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50153=
 CVE-2024-50154 CVE-2024-50156 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163=
 CVE-2024-50167 CVE-2024-50168 CVE-2024-50171 CVE-2024-50179 CVE-2024-50180=
 CVE-2024-50181 CVE-2024-50182 CVE-2024-50184
 CVE-2024-50185 CVE-2024-50186 CVE-2024-50188 CVE-2024-50189 CVE-2024-50191=
 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024-50195 CVE-2024-50196=
 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024-50208=
 CVE-2024-50209 CVE-2024-50229 CVE-2024-50230
 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-50236 CVE-2024-50237=
 CVE-2024-50244 CVE-2024-50245 CVE-2024-50247 CVE-2024-50251 CVE-2024-50257=
 CVE-2024-50259 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 CVE-2024-50267=
 CVE-2024-50268 CVE-2024-50269 CVE-2024-50273
 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50287 CVE-2024-50292=
 CVE-2024-50296 CVE-2024-50299 CVE-2024-50301 CVE-2024-50302 CVE-2024-53052=
 CVE-2024-53055 CVE-2024-53057 CVE-2024-53058 CVE-2024-53059 CVE-2024-53060=
 CVE-2024-53061 CVE-2024-53063 CVE-2024-53066
 CVE-2024-53088 CVE-2024-53096 CVE-2024-53101 CVE-2024-53103 CVE-2024-53145=
 CVE-2024-53146 CVE-2024-53150 CVE-2024-53151 CVE-2024-53155 CVE-2024-53156=
 CVE-2024-53157 CVE-2024-53165 CVE-2024-53171 CVE-2024-53173 CVE-2024-53226=
 CVE-2024-53227 CVE-2024-53237 CVE-2024-56567
 CVE-2024-56572 CVE-2024-56574 CVE-2024-56578 CVE-2024-56581 CVE-2024-56593=
 CVE-2024-56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605=
 CVE-2024-56606 CVE-2024-56614 CVE-2024-56622 CVE-2024-56623 CVE-2024-56629=
 CVE-2024-56634 CVE-2024-56640 CVE-2024-56642
 CVE-2024-56643 CVE-2024-56648 CVE-2024-56650 CVE-2024-56659 CVE-2024-56662=
 CVE-2024-56670 CVE-2024-56688 CVE-2024-56694 CVE-2024-56704 CVE-2024-56708=
 CVE-2024-56720 CVE-2024-56723 CVE-2024-56724 CVE-2024-56726 CVE-2024-56728=
 CVE-2024-56739 CVE-2024-56741 CVE-2024-56745
 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56754 CVE-2024-56756=
 CVE-2024-56770 CVE-2024-56774 CVE-2024-56776 CVE-2024-56777 CVE-2024-56778=
 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56785 CVE-2024-56787=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf: Fix CVE-2022-=
36763 CVE-2022-36764 CVE-2022-36765 CVE-2023-45229 CVE-2023-45230 CVE-2023-=
45231 CVE-2023-45232 CVE-2023-45233 CVE-2023-45234 CVE-2023-45235 CVE-2023-=
45236 CVE-2023-45237 CVE-2024-1298 CVE-2024-38796<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">pixman: Ignore CVE-=
2023-37769<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: Fix CVE-20=
24-50602 CVE-2024-11168 CVE-2024-9287<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-pip: Fix CV=
E-2023-5752<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-requests: F=
ix CVE-2024-35195<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-zipp: Fix C=
VE-2024-5569<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2024-=
3446 CVE-2024-3447 CVE-2024-6505<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Ignore CVE-20=
22-36648<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">subversion: Fix CVE=
-2024-46901<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Fix CVE-2023-=
3164<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tiff: Ignore CVE-20=
23-2731<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix CVE-=
2024-40776 CVE-2024-40780<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Fix C=
VE-2024-9632<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: Fix CVE-2=
023-5380 CVE-2024-0229<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: Add th=
e sgx group<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: Regene=
rate the patches<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: Update=
 the status for two patches<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: Update=
 to 3.5.52<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: add th=
e wheel group<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">base-passwd: fix pa=
tchreview warning<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch2: us=
e persist_data context managers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: fetch/wget=
: Increase timeout to 100s from 30s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: persist_da=
ta: close connection in SQLTable __exit__<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to kirkstone head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">builder: set CVE_PR=
ODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes.rst: suggest to remove the git signature<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Tweak to work better with NFS DL_DIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dbus: disable asser=
tions and enable only modular tests<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">do_package/sstate/s=
statesig: Change timestamp clamping to hash output only<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Gather depend=
encies in poky.yaml.in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: standards.md:=
 add a section on admonitions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: impro=
ve test reliability<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.10: u=
pdate to v5.10.227<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/5.15: u=
pdate to v5.15.175<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">llvm: reduce size o=
f -dbg package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lttng-modules: fix =
build error after kernel update to 5.15.171<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ninja: fix build wi=
th python 3.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/utils/gitarchi=
ve: Return tag name and improve exclude handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ovmf-native: remove=
 .pyc files from install<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package.bbclass: Us=
e shlex instead of deprecated pipes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: restri=
ct rpm to 4 threads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">package_rpm: use zs=
td's default compression level<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: add new =
tested distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 4.0.24<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: add m=
issing locales dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.10.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: SSTATE_=
MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror authentication<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: fix bin_package description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: add warning note on deploy-target and shared objects<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: move ru=
ntime-testing section to the test-manual<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: package=
s: move ptest section to the test-manual<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: system-=
requirements: update list of supported distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: use sta=
ndardized method accross both ubuntu and debian for locale install<o:p></o:=
p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rootfs-postcommands=
.bbclass: make opkg status reproducible<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rxvt-unicode.inc: d=
isable the terminfo installation by setting TIC to :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sanity: check for w=
orking user namespaces<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">scripts/install-bui=
ldtools: Update to 4.0.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Clean up pathnames<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Drop rawlogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual: reprod=
ucible-builds.rst: document OEQA_REPRODUCIBLE_TEST_TARGET and OEQA_REPRODUC=
IBLE_TEST_SSTATE_TARGETS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">test-manual: reprod=
ucible-builds.rst: show how to build a single package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">toolchain-shar-extr=
act.sh: exit when post-relocate-setup.sh fails<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata &amp; tzcode=
-native: upgrade 2024b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">udev-extraconf: fix=
 network.sh script did not configure hotplugged interfaces<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">unzip: Fix configur=
e tests to use modern C<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: Fix buil=
d on 32bit arm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: fix perl=
-native dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">webkitgtk: reduce s=
ize of -dbg package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">wireless-regdb: upg=
rade to 2024.10.07<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB879710C1EA5C2D619C965014B9EB2BL4PR11MB8797namp_--

