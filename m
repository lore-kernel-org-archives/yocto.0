Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2BEDC02181
	for <webhook@archiver.kernel.org>; Sat, 25 Jan 2025 01:57:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by mx.groups.io with SMTP id smtpd.web10.3120.1737770268191895596
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 17:57:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Ed8WJQT0;
 spf=pass (domain: intel.com, ip: 192.198.163.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737770268; x=1769306268;
  h=from:to:subject:date:message-id:mime-version;
  bh=hRU00UUtXPalQlnYT0dicJ4deeqPuKtjFGQ/Z0t/t1c=;
  b=Ed8WJQT0oTU5rsBfyPd1XvB4oGx15iIEu8S17SHY+Oxck/Wu2EVdY5JU
   efAbF6nw027I9P9KfnK6/a4suXYcZOaeG3ypyXRTDcQyg/L1xMzQ/GTjm
   8tGzCvkGNClm25RDDvGA59xsGtK2hskU6+fB2V5HqoS9PEgtaStdqPo5w
   83HQbwux6PFEuODjZC/GW7iMBW441yLnRTnRN+3volOV2528bWeMjvnqG
   m7hNTKtyj5KUptiVHvKnYwFNBN3f7kXwCD+1wwoK9Ihi9pbdMURY0Xugr
   6Yn5PCcxMby+x7P0DACRpn1ZcUX8VeKMAbc+Gso24CmVYUOs49semnrqc
   A==;
X-CSE-ConnectionGUID: 7uhky6L0SsqZd0zlFb9g8g==
X-CSE-MsgGUID: 2m9RzS/LTxmjJBPyaxYwFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37518901"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; 
   d="scan'208,217";a="37518901"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2025 17:57:41 -0800
X-CSE-ConnectionGUID: gUg25TfAQ+ub77S5Z9bBNw==
X-CSE-MsgGUID: XHSrti29S7WlpNO/rWk31Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208,217";a="138794130"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 24 Jan 2025 17:57:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 17:57:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 17:57:38 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 17:57:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tTG1I5a2QNJ9xeBd2JYInewT3gprMAyQCoPpbMc9vjr9mczlkamVJ0+n4x1UjyVQW7Z63mqbXmB5AmjkOBpkKySuhxvw/VB15/KQf7fWP2B56lNEhjhp2p+UB2N9eZbbutUs772vk3r3sZ79cIjOs+6jVRbljFQtuF0U2zY9NC7V+0qucvEgrhQ9EeUnF+OvHx15974qloWbNZmGKt0PQkj7sPLHKCkoP3M1e+QQdpV0wgLMXNZdQR2TaNjid2QMeyHDWMFsWZWiThqw6Rpi3mq7qibI1gFGFwZ9bmyvnNiymKZmoN/Mc3k7JEbGiWl4o87C9VCZcBEJSEIir2JHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dgT+PIx030i4QPrRUiy5/SkZ3FXl6dY191lviVs8tsc=;
 b=R0MeVH4iyQgb4GPl0C1evWrNnzYOSKJz0496XEznBJOwetqddD65GypIDdRK6gPNWgbCOvcWtap4zjzJL4p6MdMHYpceMhdQL/lihhC++utmp9UjJ+/mGkxoAUSKNGTd5gaXunGvpos1rsafyVO5DVtfIciADqdQV4VFsPjPFc3G15wGe4bXDawrI4hXXeLoZ+gGX0DwElQaB3E4aLwdDUr0l8+VfuVRFZjDBiomwMYVpnlQaG76KI+hqgEVhNpp149OqF7iDGvkqWgM7Bz7eHF3b648H27/JiJI1n2YczHpqizjRYES7spJGITZy4QRrLFCbjE5G5jvjV0GFNjkVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by SA1PR11MB7111.namprd11.prod.outlook.com (2603:10b6:806:2b5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Sat, 25 Jan
 2025 01:57:36 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8377.009; Sat, 25 Jan 2025
 01:57:36 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.1.2 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.1.2 is Released
Thread-Index: AdtuyXYyywPiSAYMR++JR+mJVY7Vxg==
Date: Sat, 25 Jan 2025 01:57:36 +0000
Message-ID: <BL4PR11MB8797B52C6749270ACB717A4EB9E22@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|SA1PR11MB7111:EE_
x-ms-office365-filtering-correlation-id: 67081663-bed9-4709-ea4a-08dd3ce3a3f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?o3FemmwltYow5+sMLIYDlgzqwodpb+TC6AytTRKO3Q7Xn54QzASvP9ZPnX?=
 =?iso-8859-1?Q?hW00hgqTbz+0Fq5mqg8AgV0LNLLXBlZV8iR8aOOb10fRJemtlcgcAeh9dc?=
 =?iso-8859-1?Q?OCs/7EQQPdEZADUrAqQl8Obe7exycUKXY3GtERKIFGgGXOYVHPxBkyv8l8?=
 =?iso-8859-1?Q?J6zogiFwG8ptUHBQ/9PZOTtHTBeXFxgtoL39Ukt6fLs2fqlGnff3CT1ssu?=
 =?iso-8859-1?Q?LBxXn7zexzq1z0+RTa4dOLIcgyAmaaH3iUUnj4tat1sLSKBwRq4ZTWKM3m?=
 =?iso-8859-1?Q?RmMlU1y9vqItk02H/vxsQMcvEob1yF3yI0P2ycNyXoWzJDc9tcCgOVVm77?=
 =?iso-8859-1?Q?qxQ6LvUXkAe73XdCValNACduhbIGyNDd3qo4c5/1ZussaJWVR1/4lF55ry?=
 =?iso-8859-1?Q?aBl1e/puxildZhjHo9LjLECL6DaSpB22QdXiRCqLo0A/Auc5WO8Kk4ZfBq?=
 =?iso-8859-1?Q?zD4KWWwkolFT6jtBUUD3oXtWYdDETh5kJoW9CqwYNYP0CFLqqLnxSqbvoH?=
 =?iso-8859-1?Q?Kco6xgXSvPUtBELfiyeiGWMAyLlpqBsA8I041CxwFtSq9KmwQsx/UuQMRu?=
 =?iso-8859-1?Q?m0y+yLagXJ+fhtkjSJa7wnU2syhUxG79699a0c4FLVIM4Y6j7d+pjvB2sg?=
 =?iso-8859-1?Q?yC/rquH4Ik/DtX/JKydAQcMvEo4ffrgnjyZkqHD5laUWg4kOoR+Zufj7WW?=
 =?iso-8859-1?Q?Vyn5kb00yJVw1mVj1HUD9UzwuSquRkCzuWMJg8cniEIFwjNOWQyf3Pj3K4?=
 =?iso-8859-1?Q?/8R1EZc5DZ/m/tRzxe8Ng3CV8F4hpk9G00OS0Ue5s3Rp/s9/n+PUbp6nIx?=
 =?iso-8859-1?Q?tmwM5BC/JCxdqN+p+9KIS7hTsSg9i7vQUS5c7ph1gP7mTNkuJpk14Yn3R9?=
 =?iso-8859-1?Q?gRTaAsh/QKvq1pEugunojybHWeAHVy15N7rAPbEFSDOpFt36XZXR3UVnL5?=
 =?iso-8859-1?Q?46HFgE1/TiXwsFru/+g8yz4LAX+FVGqLxrQeouWZc3Y5Le1JvEeu3i07nN?=
 =?iso-8859-1?Q?0ze6sQ95z/T6GsyBsXWiUekZzvUc0bmdpq/SIQtNB5SBv8GDVLXQjsdBQS?=
 =?iso-8859-1?Q?EWD27bbBUYCJZ9DqpQn6D268vMcVDHhk5xIS9esrXV/YOpMQcNfcmMSVE/?=
 =?iso-8859-1?Q?ebhNKk547YBQHCJAQABwhyLU/SbT3NIt311Rl6UlFQYGttdZjGwP3D1ued?=
 =?iso-8859-1?Q?7QSmYnLmqCtFwSfSkrAqfgTb+7u5DSU+XXm7i8wOPZk1/4dH8K27v1riKo?=
 =?iso-8859-1?Q?zn/2rR7UWP4ElS4i8fmySakU3TV73t/5xcPbh17mn56R1Cz2UOgcUVPCqy?=
 =?iso-8859-1?Q?3RxFwZgGHYKW0rwva4Yh6zyea7h0hfi3m/to3tLl3ibtwjInGqtHHWFfpm?=
 =?iso-8859-1?Q?vy47GTqgKRGAQlP3sFXNrx0/ASmTjBmi2tG9eQwVgUDmEB3ZjnvVihwR+o?=
 =?iso-8859-1?Q?L9T7qFxPKr1J44oPqBh/tBts/oJNd6nSJe5iAg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HDldw+UocxCj9IF/BDyCVRa/9EX1/NM+8cf4YAyJ2cuSx+wn8kSb/WEZCT?=
 =?iso-8859-1?Q?9CsIexFKIAz4RKZuk00h6EahW/uwKdLb2calgkgsLnnkJaJ4HYER86WAeN?=
 =?iso-8859-1?Q?VN/rrPLM/IQjZ5TEF5Igh+7Xpff7Yb/MaCorAhmDwSGIVBJatgnA6MK/Ys?=
 =?iso-8859-1?Q?yMyGSZlrUPfUy1BYNWrZyKe/z/4fXRyAPqSA8uim8X5GKwf9sOuEcWPoiU?=
 =?iso-8859-1?Q?cKSD2uFNDsen0cXqbtUACvpzn4Ff6612mMmJ50h6D5/3/sTMt5+IUxfAEp?=
 =?iso-8859-1?Q?xB9yv+kWFmn9UGKgIaLMqd1X2zh4gLzGuzIPCCiiIoOVWq40AneuKm08KS?=
 =?iso-8859-1?Q?qoPcWNqGkfttVf4wWibIR1wHu+HRVtXz+66J59Bncd2m7UK8Jzgkj4R3eI?=
 =?iso-8859-1?Q?7L7G3+0SGlXXhAtu+u1R/pAy9ijMOX159u64dAODouxfCFCRJZIbyK0YO6?=
 =?iso-8859-1?Q?TDqqFtwYCsKC5FIHpEpJ0ulFk+0G06nJznjO11ASFdpu4tNQoB7cv7iSAn?=
 =?iso-8859-1?Q?6D3h0s0/Q1Xrf+OBNVlpzo/MRdr4nfm0CseLMSDwiW1TwuljotXNKi82B2?=
 =?iso-8859-1?Q?yzAGo7Y2mKKM5Gtt7cOVfrEw2n6NKyYmR47ZSnTsuXrV/Aa4DdLzS3YF5B?=
 =?iso-8859-1?Q?Q1NCpmTbBEfhgDEUijRjOMzbhJY68Y6A4FvFQsNMivOSY87a8MNRkr4MbB?=
 =?iso-8859-1?Q?33ye6zwR+NiWmxM+TMKN71+uHjq43iSh7ZWbc/GsNu2BWS7mXxjZ/UlzUz?=
 =?iso-8859-1?Q?AAKGtPIrm+OTg2SCE2tggRfUEdB69nj3ScwJRaP8ZsxBipq6yEjGzjL6PU?=
 =?iso-8859-1?Q?Hk7NpIzNcU07TWAdvF+Gv53n8hS0k/dxK2BVLGvCFic8YvSRN/qC0eWCYT?=
 =?iso-8859-1?Q?ZSykFFxADQYkjlsWsrQic7p6+iQeZeihJxNZ/h9mnWbYWSrV2huLr2JWbt?=
 =?iso-8859-1?Q?JkJfww/mNlSjKeLfdWwiT26syDYx6iH7MHG+QqfHYB9eKt6JQT/8RhVqlj?=
 =?iso-8859-1?Q?KBvXNvgwF7Uuy9WTC4HLehNbniC8Uli5sMizuYTSUCPPCxZodZv6OMnPyV?=
 =?iso-8859-1?Q?e5Kg+EBB6lyywZdRMVnBMOAlqG/RT0ZnxGL9Lyx8Ed0Y+BoCc8uVgixCCd?=
 =?iso-8859-1?Q?lljc04KgVMflCEMkueQfb2wjh3hZMcGbDX3NMF7s4amxIbSlBevq/Ij6Dz?=
 =?iso-8859-1?Q?eIFaSx8EbkB5/Vd9rwJYSIGCEGjGfWEFbTimqr7yLBculO51SdHvdiaFH+?=
 =?iso-8859-1?Q?P5gAJfoMpmbtc+BBOpOnl9CTVLJ1o++76cOZkuQfJao9kPKXZ4IYABWfcI?=
 =?iso-8859-1?Q?6eTcxq5x1jlpdqBpFcbMpdr5ocrhPmTbwtsC8dGHo24PSdgHgBiO2Om+Ez?=
 =?iso-8859-1?Q?d+thL+tbwfTJ3gjh4ZWfx0zZ4CHO7nUGAqKSYgtj6MhaVEw2WMO3s5h+rw?=
 =?iso-8859-1?Q?RKo3OQol9tUlDoo7oypP/TbeDkn7FAyAEcb6XvQG5QRe52XyV0v1GJOLcu?=
 =?iso-8859-1?Q?eUq3pVxjMcaz8yXu95al9woprB/oHyETJuU24KsUoBU+PcHQuYmuh5O8Wr?=
 =?iso-8859-1?Q?qGNv7yAMAMnttp79KNIfGQZMNnKkwbE6ExfwDVJzNx5wfI0Su52LaXXES4?=
 =?iso-8859-1?Q?v9xgPIasO12hp2kj+zEbW0DHbZTtc9RH3c?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797B52C6749270ACB717A4EB9E22BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67081663-bed9-4709-ea4a-08dd3ce3a3f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2025 01:57:36.2239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n3zReEx4vP1cYt/YnDZGn5I7NpZtqDR1Dk1+Jpw4Rari+KZLG75WjbFg2Piczx8KI8seHRDusBjgBr6q5r9cPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7111
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Jan 2025 01:57:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64625

--_000_BL4PR11MB8797B52C6749270ACB717A4EB9E22BL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.1.2 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e=
170480578fcdb1f7bcd897f0e69e46a5.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fc=
db1f7bcd897f0e69e46a5.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.1.2 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: styhead
Tag: yocto-5.1.2
Git Revision: ff9ca74e170480578fcdb1f7bcd897f0e69e46a5
Release Artefact: poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5
sha: 3c8d5504ebc988a6427e31d3a9e84e74f16f84b7e9b0884f77be6bd6231b7fef
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e=
170480578fcdb1f7bcd897f0e69e46a5.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fc=
db1f7bcd897f0e69e46a5.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: styhead
Tag: yocto-5.1.2
Git Revision: 62dfe689246d648f9970a5476716e486b1a33765
Release Artefact: oecore-62dfe689246d648f9970a5476716e486b1a33765
sha: 8118c0260e673dbf9f3d7cd0a6d8364fc337f3e8ff75f0c449be88d2157e78fb
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/oecore-62dfe6=
89246d648f9970a5476716e486b1a33765.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/oecore-62dfe689246d648f9=
970a5476716e486b1a33765.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: styhead
Tag: yocto-5.1.2
Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/meta-mingw-77=
fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/meta-mingw-77fe18d4f8ec3=
4501045c5d92ce7e13b1bd129e9.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.10
Tag: yocto-5.1.2
Git Revision: 1452e74cc4ddfaadc6537a049877a66cec253c8d
Release Artefact: bitbake-1452e74cc4ddfaadc6537a049877a66cec253c8d
sha: 26538d0b8ab907d962623707697bfc6826615239a724b1805e0c3acbd74fdcaa
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/bitbake-1452e=
74cc4ddfaadc6537a049877a66cec253c8d.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/bitbake-1452e74cc4ddfaad=
c6537a049877a66cec253c8d.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: styhead
Tag: yocto-5.1.2
Git Revision: 8ac3e2eb1dd4149b24af03666813dc6d94df466d


---------------
Contributors
---------------
Alexander Kanavin
Antonin Godard
Bruce Ashfield
Changqing Li
Deepthi Hemraj
Gu=E9na=EBl Muller
Gu=F0ni M=E1r Gilbert
Hitendra Prajapati
Lee Chee Yang
Mark Hatle
Michael Nazzareno Trimarchi
Michael Opdenacker
Peter Marko
Richard Purdie
Robert Yang
Ross Burton
Sid-Ali Teir
Steve Sakoman
Sunil Dora
Trevor Gamblin
Wang Mingyu
Xiangyu Chen
Yash Shinde


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2024-53589
curl: Fix CVE-2024-9681
ghostscript: Fix CVE-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-4695=
4 CVE-2024-46955 CVE-2024-46956
gstreamer1.0: Fix CVE-2024-47537 CVE-2024-47538 CVE-2024-47539 CVE-2024-475=
40 CVE-2024-47541 CVE-2024-47542 CVE-2024-47543 CVE-2024-47544 CVE-2024-475=
45 CVE-2024-47546 CVE-2024-47596 CVE-2024-47597 CVE-2024-47598 CVE-2024-475=
99 CVE-2024-47600 CVE-2024-47601 CVE-2024-47602 CVE-2024-47603 CVE-2024-476=
06 CVE-2024-47607 CVE-2024-47613 CVE-2024-47615 CVE-2024-47774 CVE-2024-477=
75 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834 CVE-2024-478=
35
libarchive: Fix CVE-2024-48957 CVE-2024-48958
libexpat: Fix CVE-2024-50602
libsndfile1: Fix CVE-2024-50612
linux-yocto/6.6: Fix CVE-2024-27059 CVE-2024-47704 CVE-2024-49863 CVE-2024-=
49864 CVE-2024-49866 CVE-2024-49867 CVE-2024-49868 CVE-2024-49870 CVE-2024-=
49871 CVE-2024-49874 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878 CVE-2024-=
49879 CVE-2024-49881 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884 CVE-2024-=
49886 CVE-2024-49889 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894 CVE-2024-=
49895 CVE-2024-49896 CVE-2024-49900 CVE-2024-49901 CVE-2024-49902 CVE-2024-=
49903 CVE-2024-49905 CVE-2024-49907 CVE-2024-49912 CVE-2024-49913 CVE-2024-=
49924 CVE-2024-49925 CVE-2024-49927 CVE-2024-49929 CVE-2024-49930 CVE-2024-=
49931 CVE-2024-49933 CVE-2024-49935 CVE-2024-49936 CVE-2024-49937 CVE-2024-=
49938 CVE-2024-49939 CVE-2024-49944 CVE-2024-49946 CVE-2024-49947 CVE-2024-=
49948 CVE-2024-49949 CVE-2024-49950 CVE-2024-49951 CVE-2024-49952 CVE-2024-=
49953 CVE-2024-49954 CVE-2024-49955 CVE-2024-49957 CVE-2024-49958 CVE-2024-=
49959 CVE-2024-49960 CVE-2024-49961 CVE-2024-49962 CVE-2024-49963 CVE-2024-=
49965 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973 CVE-2024-49975 CVE-2024-=
49976 CVE-2024-49977 CVE-2024-49978 CVE-2024-49980 CVE-2024-49981 CVE-2024-=
49982 CVE-2024-49983 CVE-2024-49985 CVE-2024-49986 CVE-2024-49987 CVE-2024-=
49988 CVE-2024-49989 CVE-2024-49991 CVE-2024-49992 CVE-2024-49995 CVE-2024-=
49996 CVE-2024-49997 CVE-2024-50000 CVE-2024-50001 CVE-2024-50002 CVE-2024-=
50003 CVE-2024-50005 CVE-2024-50006 CVE-2024-50007 CVE-2024-50008 CVE-2024-=
50012 CVE-2024-50013 CVE-2024-50015 CVE-2024-50016 CVE-2024-50019 CVE-2024-=
50022 CVE-2024-50023 CVE-2024-50024 CVE-2024-50026 CVE-2024-50029 CVE-2024-=
50031 CVE-2024-50032 CVE-2024-50033 CVE-2024-50035 CVE-2024-50036 CVE-2024-=
50038 CVE-2024-50039 CVE-2024-50040 CVE-2024-50041 CVE-2024-50044 CVE-2024-=
50045 CVE-2024-50046 CVE-2024-50047 CVE-2024-50048 CVE-2024-50049 CVE-2024-=
50055 CVE-2024-50057 CVE-2024-50058 CVE-2024-50059 CVE-2024-50060 CVE-2024-=
50061 CVE-2024-50062 CVE-2024-50063 CVE-2024-50064 CVE-2024-50065 CVE-2024-=
50066 CVE-2024-50069 CVE-2024-50070 CVE-2024-50072 CVE-2024-50073 CVE-2024-=
50074 CVE-2024-50075 CVE-2024-50076 CVE-2024-50077 CVE-2024-50078 CVE-2024-=
50080 CVE-2024-50082 CVE-2024-50083 CVE-2024-50084 CVE-2024-50085 CVE-2024-=
50086 CVE-2024-50087 CVE-2024-50088 CVE-2024-50093 CVE-2024-50095 CVE-2024-=
50096 CVE-2024-50098 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103 CVE-2024-=
50108 CVE-2024-50110 CVE-2024-50111 CVE-2024-50112 CVE-2024-50115 CVE-2024-=
50116 CVE-2024-50117 CVE-2024-50120 CVE-2024-50121 CVE-2024-50124 CVE-2024-=
50125 CVE-2024-50126 CVE-2024-50127 CVE-2024-50128 CVE-2024-50130 CVE-2024-=
50131 CVE-2024-50133 CVE-2024-50134 CVE-2024-50135 CVE-2024-50136 CVE-2024-=
50139 CVE-2024-50140 CVE-2024-50141 CVE-2024-50142 CVE-2024-50143 CVE-2024-=
50145 CVE-2024-50147 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-=
50152 CVE-2024-50153 CVE-2024-50154 CVE-2024-50155 CVE-2024-50156 CVE-2024-=
50158 CVE-2024-50159 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163 CVE-2024-=
50164 CVE-2024-50166 CVE-2024-50167 CVE-2024-50168 CVE-2024-50169 CVE-2024-=
50170 CVE-2024-50171 CVE-2024-50172 CVE-2024-50175 CVE-2024-50176 CVE-2024-=
50179 CVE-2024-50180 CVE-2024-50181 CVE-2024-50182 CVE-2024-50183 CVE-2024-=
50184 CVE-2024-50185 CVE-2024-50186 CVE-2024-50187 CVE-2024-50188 CVE-2024-=
50189 CVE-2024-50191 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024-=
50195 CVE-2024-50196 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-=
50205 CVE-2024-50208 CVE-2024-50209 CVE-2024-50211 CVE-2024-50215 CVE-2024-=
50222 CVE-2024-50223 CVE-2024-50224 CVE-2024-50226 CVE-2024-50229 CVE-2024-=
50230 CVE-2024-50231 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-=
50235 CVE-2024-50236 CVE-2024-50237 CVE-2024-50239 CVE-2024-50240 CVE-2024-=
50242 CVE-2024-50243 CVE-2024-50244 CVE-2024-50245 CVE-2024-50246 CVE-2024-=
50247 CVE-2024-50248 CVE-2024-50249 CVE-2024-50250 CVE-2024-50251 CVE-2024-=
50252 CVE-2024-50255 CVE-2024-50256 CVE-2024-50257 CVE-2024-50258 CVE-2024-=
50259 CVE-2024-50261 CVE-2024-50262 CVE-2024-50264 CVE-2024-50265 CVE-2024-=
50267 CVE-2024-50268 CVE-2024-50269 CVE-2024-50271 CVE-2024-50272 CVE-2024-=
50273 CVE-2024-50275 CVE-2024-50276 CVE-2024-50278 CVE-2024-50279 CVE-2024-=
50282 CVE-2024-50283 CVE-2024-50284 CVE-2024-50285 CVE-2024-50286 CVE-2024-=
50287 CVE-2024-50292 CVE-2024-50296 CVE-2024-50298 CVE-2024-50299 CVE-2024-=
50300 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042 CVE-2024-53043 CVE-2024-=
53046 CVE-2024-53047 CVE-2024-53052 CVE-2024-53055 CVE-2024-53057 CVE-2024-=
53058 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061 CVE-2024-53063 CVE-2024-=
53066 CVE-2024-53068 CVE-2024-53072 CVE-2024-53076 CVE-2024-53079 CVE-2024-=
53081 CVE-2024-53082 CVE-2024-53083 CVE-2024-53088 CVE-2024-53091 CVE-2024-=
53093 CVE-2024-53094 CVE-2024-53096 CVE-2024-53099 CVE-2024-53100 CVE-2024-=
53101 CVE-2024-53103 CVE-2024-53108 CVE-2024-53109 CVE-2024-53110 CVE-2024-=
53112 CVE-2024-53113 CVE-2024-53119 CVE-2024-53120 CVE-2024-53121 CVE-2024-=
53122 CVE-2024-53123 CVE-2024-53126 CVE-2024-53127 CVE-2024-53129 CVE-2024-=
53130 CVE-2024-53131 CVE-2024-53134 CVE-2024-53135 CVE-2024-53138 CVE-2024-=
53139 CVE-2024-53140 CVE-2024-53141 CVE-2024-53142 CVE-2024-53145 CVE-2024-=
53146 CVE-2024-53150 CVE-2024-53151 CVE-2024-53154 CVE-2024-53155 CVE-2024-=
53156 CVE-2024-53157 CVE-2024-53165 CVE-2024-53166 CVE-2024-53171 CVE-2024-=
53173 CVE-2024-53180 CVE-2024-53188 CVE-2024-53200 CVE-2024-53202 CVE-2024-=
53208 CVE-2024-53210 CVE-2024-53213 CVE-2024-53226 CVE-2024-53227 CVE-2024-=
53230 CVE-2024-53231 CVE-2024-53237 CVE-2024-54683 CVE-2024-55916 CVE-2024-=
56369 CVE-2024-56538 CVE-2024-56551 CVE-2024-56567 CVE-2024-56572 CVE-2024-=
56574 CVE-2024-56577 CVE-2024-56578 CVE-2024-56579 CVE-2024-56581 CVE-2024-=
56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024-56600 CVE-2024-=
56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56604 CVE-2024-56605 CVE-2024-=
56606 CVE-2024-56611 CVE-2024-56613 CVE-2024-56614 CVE-2024-56615 CVE-2024-=
56617 CVE-2024-56622 CVE-2024-56623 CVE-2024-56626 CVE-2024-56627 CVE-2024-=
56629 CVE-2024-56631 CVE-2024-56634 CVE-2024-56640 CVE-2024-56642 CVE-2024-=
56643 CVE-2024-56648 CVE-2024-56649 CVE-2024-56650 CVE-2024-56651 CVE-2024-=
56653 CVE-2024-56654 CVE-2024-56657 CVE-2024-56658 CVE-2024-56659 CVE-2024-=
56660 CVE-2024-56662 CVE-2024-56663 CVE-2024-56664 CVE-2024-56667 CVE-2024-=
56670 CVE-2024-56672 CVE-2024-56675 CVE-2024-56688 CVE-2024-56689 CVE-2024-=
56692 CVE-2024-56694 CVE-2024-56704 CVE-2024-56708 CVE-2024-56710 CVE-2024-=
56715 CVE-2024-56716 CVE-2024-56717 CVE-2024-56718 CVE-2024-56720 CVE-2024-=
56722 CVE-2024-56723 CVE-2024-56724 CVE-2024-56725 CVE-2024-56726 CVE-2024-=
56727 CVE-2024-56728 CVE-2024-56729 CVE-2024-56739 CVE-2024-56741 CVE-2024-=
56744 CVE-2024-56745 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-=
56751 CVE-2024-56752 CVE-2024-56754 CVE-2024-56755 CVE-2024-56756 CVE-2024-=
56760 CVE-2024-56763 CVE-2024-56765 CVE-2024-56767 CVE-2024-56769 CVE-2024-=
56770 CVE-2024-56774 CVE-2024-56776 CVE-2024-56777 CVE-2024-56778 CVE-2024-=
56779 CVE-2024-56780 CVE-2024-56781 CVE-2024-56783 CVE-2024-56785 CVE-2024-=
56786 CVE-2024-56787 CVE-2024-57807
qemu: Fix CVE-2024-6505
rust: Ignore CVE-2024-43402


---------------
Fixes
---------------
binutils: stable 2.43.1 branch update
bitbake: runqueue: Fix performance of multiconfigs with large overlap
bitbake: runqueue: Fix scenetask processing performance issue
bitbake: runqueue: Optimise setscene loop processing
build-appliance-image: Update to styhead head revision
builder: set CVE_PRODUCT
buildtools-docs-tarball: Add rsvg so we can handle svg files in docs
connman: Fix restart script
contributor-guide: submit-changes.rst: suggest to remove the git signature
cve-update-nvd2-native: Handle BB_NO_NETWORK and missing db
cve-update-nvd2-native: Tweak to work better with NFS DL_DIR
dev-manual: bmaptool.rst: correct command for bmaptool-native
dev-manual: bmaptool.rst: simplify and fix instructions
dev-manual: fix styling of references to bmaptool
dnf: drop python3-iniparse from DEPENDS and RDEPENDS
do_package/sstate/sstatesig: Change timestamp clamping to hash output only
docs: Gather dependencies in poky.yaml.in
docs: Update the documentation for SRCPV
docs: standards.md: add a section on admonitions
docs: update current releases
expat: upgrade to 2.6.4
gcc: Fix c++: tweak for Wrange-loop-construct
ghostscript: upgrade 10.04.0
glibc: stable 2.40 branch updates.
groff: Fix race issues for parallel build
gstreamer1.0-libav: explicitly disable documentation
gstreamer1.0: run ptests in parallel
gstreamer1.0: upgrade to 1.24.10
linux-yocto/6.6: bsp/genericarm64: disable ARM64_SME
linux-yocto/6.6: genericarm64.cfg: enable CONFIG_DMA_CMA
linux-yocto/6.6: update to v6.6.69
lttng-modules: fix sched_stat_runtime changed in Linux 6.6.66
migration-guides: add release notes for 4.0.23, 5.0.4, 5.0.5 and 5.1.1
oeqa/ssh: Improve performance and log sizes
oeqa/utils/gitarchive: Return tag name and improve exclude handling
poky.conf: add new tested distros
poky.conf: bump version for 5.1.2
poky.yaml.in: add missing locales dependency
poky.yaml.in: replace inkscape dependency by librsvg2-bin
populate_sdk_ext: write_local_conf add shutil import
python3-poetry-core: drop python3-six from RDEPENDS
python3: upgrade to 3.12.8
ref-manual: SSTATE_MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror a=
uthentication
ref-manual: classes: fix bin_package description
ref-manual: devtool-reference: add warning note on deploy-target and shared=
 objects
ref-manual: merge two separate descriptions of RECIPE_UPGRADE_EXTRA_TASKS
ref-manual: move runtime-testing section to the test-manual
ref-manual: packages: move ptest section to the test-manual
ref-manual: qa-checks: remove patch-status-core/patch-status-noncore
ref-manual: use standardized method accross both ubuntu and debian for loca=
le install
reproducible-builds.rst: show how to build a single package
resulttool: Add --logfile-archive option to store mode
resulttool: Allow store to filter to specific revisions
resulttool: Clean up repoducible build logs
resulttool: Fix passthrough of --all files in store mode
resulttool: Handle ltp rawlogs as well as ptest
resulttool: Improve repo layout for oeselftest results
resulttool: Trim the precision of duration information
resulttool: Use single space indentation in json output
rxvt-unicode.inc: disable the terminfo installation by setting TIC to :
selftest/reproducible: Clean up pathnames
selftest/reproducible: Drop rawlogs
shadow: use update-alternatives to handle su.1 and nologin.8
system-requirements.rst: add dependencies for pdf builds
system-requirements: add fedora 39 to supported distros
system-requirements: update list of supported distros
systemd-boot: drop intltool-native from DEPENDS
systemd: drop intltool-native from DEPENDS




--_000_BL4PR11MB8797B52C6749270ACB717A4EB9E22BL4PR11MB8797namp_
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
nnounce the Yocto Project 5.1.2 Release is now available for download.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e17048057=
8fcdb1f7bcd897f0e69e46a5.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd=
897f0e69e46a5.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.1.2/p=
oky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5.tar.bz2</a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.1.2/testreport.txt</a>=
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
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.1.2 Release=
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: ff9ca=
74e170480578fcdb1f7bcd897f0e69e46a5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-ff9ca74e170480578fcdb1f7bcd897f0e69e46a5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 3c8d5504ebc988=
a6427e31d3a9e84e74f16f84b7e9b0884f77be6bd6231b7fef<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd=
897f0e69e46a5.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.2/poky-ff9ca74e170480578fcdb1f7bcd897f0e69e46=
a5.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 62dfe=
689246d648f9970a5476716e486b1a33765<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-62dfe689246d648f9970a5476716e486b1a33765<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 8118c0260e673d=
bf9f3d7cd0a6d8364fc337f3e8ff75f0c449be88d2157e78fb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.2/oecore-62dfe689246d648f9970a5476=
716e486b1a33765.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.2/oecore-62dfe689246d648f9970a5476716e486b1a3=
3765.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 77fe1=
8d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4c7f8100a3675d=
9863e51825def3df5b263ffc81cd57bae26eedbc156d771534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.2/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.2/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b=
1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.10<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 1452e=
74cc4ddfaadc6537a049877a66cec253c8d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-1452e74cc4ddfaadc6537a049877a66cec253c8d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 26538d0b8ab907=
d962623707697bfc6826615239a724b1805e0c3acbd74fdcaa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.2/bitbake-1452e74cc4ddfaadc6537a04=
9877a66cec253c8d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.2/bitbake-1452e74cc4ddfaadc6537a049877a66cec2=
53c8d.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.2<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 8ac3e=
2eb1dd4149b24af03666813dc6d94df466d<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alexander Kanavin<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Antonin Godard<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Bruce Ashfield<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Changqing Li<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Deepthi Hemraj<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=E9na=EBl Muller<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Gu=F0ni M=E1r Gilbe=
rt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hitendra Prajapati<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mark Hatle<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Nazzareno T=
rimarchi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Michael Opdenacker<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Robert Yang<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sid-Ali Teir<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Sunil Dora<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Trevor Gamblin<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Xiangyu Chen<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yash Shinde<o:p></o=
:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
024-53589<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">curl: Fix CVE-2024-=
9681<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: Fix CV=
E-2024-46951 CVE-2024-46952 CVE-2024-46953 CVE-2024-46954 CVE-2024-46955 CV=
E-2024-46956<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: Fix C=
VE-2024-47537 CVE-2024-47538 CVE-2024-47539 CVE-2024-47540 CVE-2024-47541 C=
VE-2024-47542 CVE-2024-47543 CVE-2024-47544 CVE-2024-47545 CVE-2024-47546 C=
VE-2024-47596 CVE-2024-47597 CVE-2024-47598
 CVE-2024-47599 CVE-2024-47600 CVE-2024-47601 CVE-2024-47602 CVE-2024-47603=
 CVE-2024-47606 CVE-2024-47607 CVE-2024-47613 CVE-2024-47615 CVE-2024-47774=
 CVE-2024-47775 CVE-2024-47776 CVE-2024-47777 CVE-2024-47778 CVE-2024-47834=
 CVE-2024-47835<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libarchive: Fix CVE=
-2024-48957 CVE-2024-48958<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libexpat: Fix CVE-2=
024-50602<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libsndfile1: Fix CV=
E-2024-50612<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: Fi=
x CVE-2024-27059 CVE-2024-47704 CVE-2024-49863 CVE-2024-49864 CVE-2024-4986=
6 CVE-2024-49867 CVE-2024-49868 CVE-2024-49870 CVE-2024-49871 CVE-2024-4987=
4 CVE-2024-49875 CVE-2024-49877 CVE-2024-49878
 CVE-2024-49879 CVE-2024-49881 CVE-2024-49882 CVE-2024-49883 CVE-2024-49884=
 CVE-2024-49886 CVE-2024-49889 CVE-2024-49890 CVE-2024-49892 CVE-2024-49894=
 CVE-2024-49895 CVE-2024-49896 CVE-2024-49900 CVE-2024-49901 CVE-2024-49902=
 CVE-2024-49903 CVE-2024-49905 CVE-2024-49907
 CVE-2024-49912 CVE-2024-49913 CVE-2024-49924 CVE-2024-49925 CVE-2024-49927=
 CVE-2024-49929 CVE-2024-49930 CVE-2024-49931 CVE-2024-49933 CVE-2024-49935=
 CVE-2024-49936 CVE-2024-49937 CVE-2024-49938 CVE-2024-49939 CVE-2024-49944=
 CVE-2024-49946 CVE-2024-49947 CVE-2024-49948
 CVE-2024-49949 CVE-2024-49950 CVE-2024-49951 CVE-2024-49952 CVE-2024-49953=
 CVE-2024-49954 CVE-2024-49955 CVE-2024-49957 CVE-2024-49958 CVE-2024-49959=
 CVE-2024-49960 CVE-2024-49961 CVE-2024-49962 CVE-2024-49963 CVE-2024-49965=
 CVE-2024-49966 CVE-2024-49969 CVE-2024-49973
 CVE-2024-49975 CVE-2024-49976 CVE-2024-49977 CVE-2024-49978 CVE-2024-49980=
 CVE-2024-49981 CVE-2024-49982 CVE-2024-49983 CVE-2024-49985 CVE-2024-49986=
 CVE-2024-49987 CVE-2024-49988 CVE-2024-49989 CVE-2024-49991 CVE-2024-49992=
 CVE-2024-49995 CVE-2024-49996 CVE-2024-49997
 CVE-2024-50000 CVE-2024-50001 CVE-2024-50002 CVE-2024-50003 CVE-2024-50005=
 CVE-2024-50006 CVE-2024-50007 CVE-2024-50008 CVE-2024-50012 CVE-2024-50013=
 CVE-2024-50015 CVE-2024-50016 CVE-2024-50019 CVE-2024-50022 CVE-2024-50023=
 CVE-2024-50024 CVE-2024-50026 CVE-2024-50029
 CVE-2024-50031 CVE-2024-50032 CVE-2024-50033 CVE-2024-50035 CVE-2024-50036=
 CVE-2024-50038 CVE-2024-50039 CVE-2024-50040 CVE-2024-50041 CVE-2024-50044=
 CVE-2024-50045 CVE-2024-50046 CVE-2024-50047 CVE-2024-50048 CVE-2024-50049=
 CVE-2024-50055 CVE-2024-50057 CVE-2024-50058
 CVE-2024-50059 CVE-2024-50060 CVE-2024-50061 CVE-2024-50062 CVE-2024-50063=
 CVE-2024-50064 CVE-2024-50065 CVE-2024-50066 CVE-2024-50069 CVE-2024-50070=
 CVE-2024-50072 CVE-2024-50073 CVE-2024-50074 CVE-2024-50075 CVE-2024-50076=
 CVE-2024-50077 CVE-2024-50078 CVE-2024-50080
 CVE-2024-50082 CVE-2024-50083 CVE-2024-50084 CVE-2024-50085 CVE-2024-50086=
 CVE-2024-50087 CVE-2024-50088 CVE-2024-50093 CVE-2024-50095 CVE-2024-50096=
 CVE-2024-50098 CVE-2024-50099 CVE-2024-50101 CVE-2024-50103 CVE-2024-50108=
 CVE-2024-50110 CVE-2024-50111 CVE-2024-50112
 CVE-2024-50115 CVE-2024-50116 CVE-2024-50117 CVE-2024-50120 CVE-2024-50121=
 CVE-2024-50124 CVE-2024-50125 CVE-2024-50126 CVE-2024-50127 CVE-2024-50128=
 CVE-2024-50130 CVE-2024-50131 CVE-2024-50133 CVE-2024-50134 CVE-2024-50135=
 CVE-2024-50136 CVE-2024-50139 CVE-2024-50140
 CVE-2024-50141 CVE-2024-50142 CVE-2024-50143 CVE-2024-50145 CVE-2024-50147=
 CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50152 CVE-2024-50153=
 CVE-2024-50154 CVE-2024-50155 CVE-2024-50156 CVE-2024-50158 CVE-2024-50159=
 CVE-2024-50160 CVE-2024-50162 CVE-2024-50163
 CVE-2024-50164 CVE-2024-50166 CVE-2024-50167 CVE-2024-50168 CVE-2024-50169=
 CVE-2024-50170 CVE-2024-50171 CVE-2024-50172 CVE-2024-50175 CVE-2024-50176=
 CVE-2024-50179 CVE-2024-50180 CVE-2024-50181 CVE-2024-50182 CVE-2024-50183=
 CVE-2024-50184 CVE-2024-50185 CVE-2024-50186
 CVE-2024-50187 CVE-2024-50188 CVE-2024-50189 CVE-2024-50191 CVE-2024-50192=
 CVE-2024-50193 CVE-2024-50194 CVE-2024-50195 CVE-2024-50196 CVE-2024-50198=
 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024-50208 CVE-2024-50209=
 CVE-2024-50211 CVE-2024-50215 CVE-2024-50222
 CVE-2024-50223 CVE-2024-50224 CVE-2024-50226 CVE-2024-50229 CVE-2024-50230=
 CVE-2024-50231 CVE-2024-50232 CVE-2024-50233 CVE-2024-50234 CVE-2024-50235=
 CVE-2024-50236 CVE-2024-50237 CVE-2024-50239 CVE-2024-50240 CVE-2024-50242=
 CVE-2024-50243 CVE-2024-50244 CVE-2024-50245
 CVE-2024-50246 CVE-2024-50247 CVE-2024-50248 CVE-2024-50249 CVE-2024-50250=
 CVE-2024-50251 CVE-2024-50252 CVE-2024-50255 CVE-2024-50256 CVE-2024-50257=
 CVE-2024-50258 CVE-2024-50259 CVE-2024-50261 CVE-2024-50262 CVE-2024-50264=
 CVE-2024-50265 CVE-2024-50267 CVE-2024-50268
 CVE-2024-50269 CVE-2024-50271 CVE-2024-50272 CVE-2024-50273 CVE-2024-50275=
 CVE-2024-50276 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50283=
 CVE-2024-50284 CVE-2024-50285 CVE-2024-50286 CVE-2024-50287 CVE-2024-50292=
 CVE-2024-50296 CVE-2024-50298 CVE-2024-50299
 CVE-2024-50300 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042 CVE-2024-53043=
 CVE-2024-53046 CVE-2024-53047 CVE-2024-53052 CVE-2024-53055 CVE-2024-53057=
 CVE-2024-53058 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061 CVE-2024-53063=
 CVE-2024-53066 CVE-2024-53068 CVE-2024-53072
 CVE-2024-53076 CVE-2024-53079 CVE-2024-53081 CVE-2024-53082 CVE-2024-53083=
 CVE-2024-53088 CVE-2024-53091 CVE-2024-53093 CVE-2024-53094 CVE-2024-53096=
 CVE-2024-53099 CVE-2024-53100 CVE-2024-53101 CVE-2024-53103 CVE-2024-53108=
 CVE-2024-53109 CVE-2024-53110 CVE-2024-53112
 CVE-2024-53113 CVE-2024-53119 CVE-2024-53120 CVE-2024-53121 CVE-2024-53122=
 CVE-2024-53123 CVE-2024-53126 CVE-2024-53127 CVE-2024-53129 CVE-2024-53130=
 CVE-2024-53131 CVE-2024-53134 CVE-2024-53135 CVE-2024-53138 CVE-2024-53139=
 CVE-2024-53140 CVE-2024-53141 CVE-2024-53142
 CVE-2024-53145 CVE-2024-53146 CVE-2024-53150 CVE-2024-53151 CVE-2024-53154=
 CVE-2024-53155 CVE-2024-53156 CVE-2024-53157 CVE-2024-53165 CVE-2024-53166=
 CVE-2024-53171 CVE-2024-53173 CVE-2024-53180 CVE-2024-53188 CVE-2024-53200=
 CVE-2024-53202 CVE-2024-53208 CVE-2024-53210
 CVE-2024-53213 CVE-2024-53226 CVE-2024-53227 CVE-2024-53230 CVE-2024-53231=
 CVE-2024-53237 CVE-2024-54683 CVE-2024-55916 CVE-2024-56369 CVE-2024-56538=
 CVE-2024-56551 CVE-2024-56567 CVE-2024-56572 CVE-2024-56574 CVE-2024-56577=
 CVE-2024-56578 CVE-2024-56579 CVE-2024-56581
 CVE-2024-56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024-56600=
 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56604 CVE-2024-56605=
 CVE-2024-56606 CVE-2024-56611 CVE-2024-56613 CVE-2024-56614 CVE-2024-56615=
 CVE-2024-56617 CVE-2024-56622 CVE-2024-56623
 CVE-2024-56626 CVE-2024-56627 CVE-2024-56629 CVE-2024-56631 CVE-2024-56634=
 CVE-2024-56640 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56649=
 CVE-2024-56650 CVE-2024-56651 CVE-2024-56653 CVE-2024-56654 CVE-2024-56657=
 CVE-2024-56658 CVE-2024-56659 CVE-2024-56660
 CVE-2024-56662 CVE-2024-56663 CVE-2024-56664 CVE-2024-56667 CVE-2024-56670=
 CVE-2024-56672 CVE-2024-56675 CVE-2024-56688 CVE-2024-56689 CVE-2024-56692=
 CVE-2024-56694 CVE-2024-56704 CVE-2024-56708 CVE-2024-56710 CVE-2024-56715=
 CVE-2024-56716 CVE-2024-56717 CVE-2024-56718
 CVE-2024-56720 CVE-2024-56722 CVE-2024-56723 CVE-2024-56724 CVE-2024-56725=
 CVE-2024-56726 CVE-2024-56727 CVE-2024-56728 CVE-2024-56729 CVE-2024-56739=
 CVE-2024-56741 CVE-2024-56744 CVE-2024-56745 CVE-2024-56746 CVE-2024-56747=
 CVE-2024-56748 CVE-2024-56751 CVE-2024-56752
 CVE-2024-56754 CVE-2024-56755 CVE-2024-56756 CVE-2024-56760 CVE-2024-56763=
 CVE-2024-56765 CVE-2024-56767 CVE-2024-56769 CVE-2024-56770 CVE-2024-56774=
 CVE-2024-56776 CVE-2024-56777 CVE-2024-56778 CVE-2024-56779 CVE-2024-56780=
 CVE-2024-56781 CVE-2024-56783 CVE-2024-56785
 CVE-2024-56786 CVE-2024-56787 CVE-2024-57807<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">qemu: Fix CVE-2024-=
6505<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rust: Ignore CVE-20=
24-43402<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: stable 2.=
43.1 branch update<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Fix performance of multiconfigs with large overlap<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Fix scenetask processing performance issue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: runqueue: =
Optimise setscene loop processing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to styhead head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">builder: set CVE_PR=
ODUCT<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">buildtools-docs-tar=
ball: Add rsvg so we can handle svg files in docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">connman: Fix restar=
t script<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">contributor-guide: =
submit-changes.rst: suggest to remove the git signature<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Handle BB_NO_NETWORK and missing db<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">cve-update-nvd2-nat=
ive: Tweak to work better with NFS DL_DIR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: bmaptoo=
l.rst: correct command for bmaptool-native<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: bmaptoo=
l.rst: simplify and fix instructions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dev-manual: fix sty=
ling of references to bmaptool<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">dnf: drop python3-i=
niparse from DEPENDS and RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">do_package/sstate/s=
statesig: Change timestamp clamping to hash output only<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Gather depend=
encies in poky.yaml.in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Update the do=
cumentation for SRCPV<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: standards.md:=
 add a section on admonitions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: update curren=
t releases<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">expat: upgrade to 2=
.6.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gcc: Fix c++: tweak=
 for Wrange-loop-construct<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ghostscript: upgrad=
e 10.04.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">glibc: stable 2.40 =
branch updates.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">groff: Fix race iss=
ues for parallel build<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0-libav:=
 explicitly disable documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: run p=
tests in parallel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">gstreamer1.0: upgra=
de to 1.24.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: bs=
p/genericarm64: disable ARM64_SME<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: ge=
nericarm64.cfg: enable CONFIG_DMA_CMA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">linux-yocto/6.6: up=
date to v6.6.69<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">lttng-modules: fix =
sched_stat_runtime changed in Linux 6.6.66<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.23, 5.0.4, 5.0.5 and 5.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/ssh: Improve p=
erformance and log sizes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">oeqa/utils/gitarchi=
ve: Return tag name and improve exclude handling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: add new =
tested distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: add m=
issing locales dependency<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.yaml.in: repla=
ce inkscape dependency by librsvg2-bin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">populate_sdk_ext: w=
rite_local_conf add shutil import<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3-poetry-core=
: drop python3-six from RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">python3: upgrade to=
 3.12.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: SSTATE_=
MIRRORS/SOURCE_MIRROR_URL: add instructions for mirror authentication<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: classes=
: fix bin_package description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: devtool=
-reference: add warning note on deploy-target and shared objects<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: merge t=
wo separate descriptions of RECIPE_UPGRADE_EXTRA_TASKS<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: move ru=
ntime-testing section to the test-manual<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: package=
s: move ptest section to the test-manual<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: qa-chec=
ks: remove patch-status-core/patch-status-noncore<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: use sta=
ndardized method accross both ubuntu and debian for locale install<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">reproducible-builds=
.rst: show how to build a single package<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">rxvt-unicode.inc: d=
isable the terminfo installation by setting TIC to :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Clean up pathnames<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">selftest/reproducib=
le: Drop rawlogs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">shadow: use update-=
alternatives to handle su.1 and nologin.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
.rst: add dependencies for pdf builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
: add fedora 39 to supported distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">system-requirements=
: update list of supported distros<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd-boot: drop =
intltool-native from DEPENDS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">systemd: drop intlt=
ool-native from DEPENDS<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB8797B52C6749270ACB717A4EB9E22BL4PR11MB8797namp_--

