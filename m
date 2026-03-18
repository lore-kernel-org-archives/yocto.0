Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 259D3FCD0D2
	for <webhook@archiver.kernel.org>; Wed, 18 Mar 2026 08:26:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9188.1773822404091878742
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2026 01:26:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=CiIegET7;
 spf=pass (domain: intel.com, ip: 198.175.65.19, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773822404; x=1805358404;
  h=from:to:subject:date:message-id:mime-version;
  bh=y3EojmKvBD7JhX/bDY8PFKoavMBgakSwO1/vwLKgPe4=;
  b=CiIegET7Nv16AAKzxldh/HgMFIM8zSCQh1jbNAYUR3BAU139QFvS7xeg
   PSmliQcIcq1dgVg7SobCbYBi9ysabJrH7XdWg4ilCp52AK9c/dqH1Xj1N
   xLqmng5YHelTIbsBgdQImzZ7VnnowoIUFgTwETLbn9YfpxMSqgbZHLQZT
   JFxCEWyYCQ8OlXS8fHURGZy+5FrgQqvYPt1CLlIZDdp38yYGT57BE2XtN
   p5RYjPGj+YmabYp2sGdKBs/ZgrXmz1dO14KrehpQwd8WTAmy8SVIoP+Dv
   GDCpclUGwiriW0pG+/S2BPuQ3M4yC6EOB3Wl3SowpWiVjNtpNh1Je6ICx
   Q==;
X-CSE-ConnectionGUID: YfX55kSXRbyQC1LX4x/Bug==
X-CSE-MsgGUID: lAO/eaSsTuOH4314u/tHmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74756948"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208,217";a="74756948"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2026 01:26:37 -0700
X-CSE-ConnectionGUID: CmCsrT6LQ3e37+HyX4SXug==
X-CSE-MsgGUID: bqWOCOxGSmicWYpmqBsoJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208,217";a="221634804"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2026 01:26:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 01:26:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 01:26:36 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 01:26:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XAXP0EChrXTg2xDOQ/I1w5ZTEa3Rylj9l84XVjnKs9g89WvBHyUiLRqNNpBIxJZrPdQxHYUGKCauu4rBQ/B2TXKD7ELMKkkyMuPD704Z/moaDHylU/790K6xPSxqfsKSrqfkLJ6vV5+6w/ioIlN20TrVa7tZG847voPv6gbl1blTK+s50sy2XP17i0XNOnoRrHZeA8t60SouHidHVXlpEbu0DYUoXWN0c8gXKzQWaCAaMlYKCHreQd3f1Uh2WTsfyon42UOhmywFCJ/e5x7fLoG6j6voQFsjZ8q+/xeYzn8da/vD2LZUJYFU9ggdNgt+wk0uE6rtQeeS0EP7UNAZuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3EojmKvBD7JhX/bDY8PFKoavMBgakSwO1/vwLKgPe4=;
 b=MEPhbhDmjVSZIOD4WzyIpgL3/Q+F4/Gd8QI3Etnzx0oeV0Ed+SBPZUEFJTk1xn1M7E9NWGt2ZLLeuSW4ARNd/2OugpxgWRWgwVR7sJxjjTUV2aaTmn0GOwSHu/OiyhWhc5Ns7WkU4iAvizHyYlVHN0R1HAv6GCZqCR++KCj6iCh1c2sVQteNPHbb5pYSLmcUsVdv+CIRxOaBfoeX39omQBAUdFtuWJTX6/9Li+TUtFLJbNlDQCIypJYBC3wc7aULeQrX5NDelD4XkatjbtKBVT9/mZq3R5Z6pFIjyZMuoKA9O4JFyX1G+MYWGQHOfMLxXcWj/W7KHNDjRZIktykQtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by LV4PR11MB9467.namprd11.prod.outlook.com (2603:10b6:408:2d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 08:26:32 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 08:26:32 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 6.0 (yocto-6.0_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 6.0 (yocto-6.0_M2)
  Now Available
Thread-Index: AQHctqkLrz+gSbqoxkeGT8hH6VzjFQ==
Date: Wed, 18 Mar 2026 08:26:32 +0000
Message-ID: <BL4PR11MB879741571A6A8C093D6FCE7AB94EA@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|LV4PR11MB9467:EE_
x-ms-office365-filtering-correlation-id: 30b82a5f-c7fb-43db-0e8d-08de84c80f7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|18002099003|56012099003|38070700021|8096899003;
x-microsoft-antispam-message-info: 1geGuz6kwSX/QLugRbro1bn41OBm+/sI5RXiq/r3bRPkn81pEKsmzb1aVNbRM9V//rnrt/zrLeRdxqinDoaqXCpAlOTsJUSG1xE1emMwH4hrpjhUNglc8Hi3Qxc+Tyzj7jDoWmSa2oPlk5QK+t8geeEc579rr29Qodz+Ao6MzgroigGRSepuUdQz1rjzFIR5uv6nEtiIEe86JF9woOss5G52cRn1ns8DzqQBgcoxTS2f/VL1+j9/U23e6bG6zxOCyoz+vOZAQ9jjZ7d8GAs8lyRzIganDuOG/g+ys/qbVvmM9d9t2B7biASNMUkvXbbg8Xmci+6epo3jDMvyodZJ8ldP2ka/V/xT8TK4b2FzPGdm5gd65Va8EqdqzEkBj5fL9Ur8ZkCVc+i7iPph7BCH6zzwWckk9zIqzTFEXMwZwzAa+xswKFiAv8YtumOp5ULrA0yRdDDW4gIrYnXsYwF5XVKf8POvsdwuQy2VKL0Fcf9IHY1zQfrL0EG++H/b/OT8gwaBb56ocIgxgLn1pWpN6+Jkfr9NEQT4UtGZ9+qafo+e33UrPbTiy/a7voniNCsdTn50CrC3sCk96g5nmFNnVayjVsL6SJuxvev0iVUqCn+6WJG/3ROienktfkjF8Z/xT4H81dfo1lV4LXzMTQe4gX6sgRPqnXNkdFgbZn4y4hmWrSy6sxZQ/veKU0lW4Si2P95CnqVXNhIH7HTcgAg6ZaJLISUC4ahRuMecgZahRyUugQ60SDE1hPafXs0+6298
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+paLNLjsH7nFkRakqb6Zx3VdauX8TPz0hQY7uLEvRVqTLIV8bvM25ib2YA?=
 =?iso-8859-1?Q?z7DenXGJlxJikXw7VAbiK3Ht51VxYZIBqlyvaWF/c2AYlfJ8SKsUZ70IGQ?=
 =?iso-8859-1?Q?xvzdUZCrE0ZKknE/Mwmr0tx14wWyLhUA2fwxmdlefzZ8Kj3fa228Xa2U8N?=
 =?iso-8859-1?Q?Y6Kz31AuKoMIXoRYYUhexmVXvStOFopykAAZ9K7x8wlmcI1RstynOWc/s9?=
 =?iso-8859-1?Q?dNeoQ/AF97BcHdgAvogwyHPaYkdgqWNhpPjibjAyqtxoPNvFLJBQ0/mEMR?=
 =?iso-8859-1?Q?ejYW8qZD/zqLdK3dJr9qKBJ3ADvBUUenyYpeZ5LUAsXo9hCooT3/+2d3qf?=
 =?iso-8859-1?Q?L6asMyfTraNQeg1vcH5SzkYYTmevdtnXjweDLoVXmg9Up90x5iMS5Amek0?=
 =?iso-8859-1?Q?pvp4ywKAbbAeCfB16Q0PFIU76zyZBPPE8f/bvN+yFe7/Wb0HIiEhC9iKJN?=
 =?iso-8859-1?Q?X0P7C/0acIgvtICgVVD1xREhJFchTTw3SWNvxLJ4BFozl+mDmqFSYJvgJc?=
 =?iso-8859-1?Q?4/pc1HlKOAKZwP/Dt0EaacFU1sBtSE9eNNSV7tTA1NaAfsIZJCL2P7gLWq?=
 =?iso-8859-1?Q?OuLTss5oIo0B1IDXuZybVWjWY0Wwc30HNbj2fz9q9wr4pKGkhXfamZq4+o?=
 =?iso-8859-1?Q?UXcS4Sda5hR8C+X4hpOtB14i4e1dU2V9vHcEF4R3t8XbnPadV6M0S9Pxgi?=
 =?iso-8859-1?Q?yakrqQ6II1EppVDImK9VoVdPOEp/RH5bikleUBPMLyvhuXrG5Q3pYV7acM?=
 =?iso-8859-1?Q?RqvMcVs3hMlhbJOppHH21ROZMZyV7aoyrWO57FXOp5HU1+8eBjh25W7l5X?=
 =?iso-8859-1?Q?nzmYMBMokPb4NNxkpCOZHh6mrLQmylKxmyK2jIUjBuERWmCuzJ6MKWdOfQ?=
 =?iso-8859-1?Q?J1jUGyro1wrh9UgaP5PjpFiB44Tc8v1KJF18HJOwVxc6jfrBetDyo8hjcb?=
 =?iso-8859-1?Q?EckH7JVgSIvznE52yXfdgjfowl3qUxMuPcwiVtpDki93l//KE8A8eO0oZy?=
 =?iso-8859-1?Q?pWakUJOcOZ/IXcYeMFZvUvAgUSrK+uvnozPjyWsiOgaO9kPGIdf1gldsyn?=
 =?iso-8859-1?Q?64DhPTmfLOnsoGTVvbwq+YiRWT2u+4Zt7z4rF2rc48SE1wruqiko6ytPra?=
 =?iso-8859-1?Q?dXLYb5CcMVqWwwWwBzKJnJ/VapdxncpEufZjXGjdRYxn6HTTp0BAyCbgVX?=
 =?iso-8859-1?Q?AwrOPMfGMRe15qkpETYOdI75WKzD0L+9L7nwsZi9p4AK+fvI1SjQs0f0mV?=
 =?iso-8859-1?Q?7cii6ZtTPQ5fLeCllS3pexsqwehvAINnKn/Xoy4MNhRBARGCfjtm0l41PW?=
 =?iso-8859-1?Q?oQkdweCN6VssA1EFzxSmGPQJRDRLXp0zXlJgCNpYauf45ns/bJL+KUxbXm?=
 =?iso-8859-1?Q?yiQ4BhNTXlv2Lo2CGGjsIveQjrTTRba9rkqianCFppuZZL+9bkT7oDxd33?=
 =?iso-8859-1?Q?CWmlubmDK8MEtav4gqUmqjBMstEITl5ni538LzFVfdgun9PLBerh+s7BOT?=
 =?iso-8859-1?Q?rjmCRI0IXQgM83iZwhUrEhuW9TKgN0TwKz0NPypfzXtSdz0AtV2w+2ImP1?=
 =?iso-8859-1?Q?Nftv8bh097Ynx75KJUQtWLrbHziwnU8i28wJRKQjxP/8+UZm6Ji/ljmXWY?=
 =?iso-8859-1?Q?LJWPfsRJqW6e6CZgNXUPprzvKKq6F++4kKXuah4Q/gfSINxzsjYZ3+cRRX?=
 =?iso-8859-1?Q?Qe473MTs01HfIANQzzTVMTpMde/hGCtuUvy1tVp1p7OCZRSMTlgK0zU+Dq?=
 =?iso-8859-1?Q?9vX0xff2FE2tLwZYAkJ3flTcPWHmOu3mWQSzOJVTbbJ187gL26d1ZgRYt+?=
 =?iso-8859-1?Q?BTzWG3dAdw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB879741571A6A8C093D6FCE7AB94EABL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sMixMqekfXPmNKc8UFGP7y95uMKMITiMpaMr5KHTHVwuAXGVL8JxLm4/50rbLoBRHgSuBOPVAN2gLpEEGHWI6dUXk/HMj6BjQ/Hi7SrFx0ZZXJc6OFliCkS9qgmScBWO7DOa+C2QkUxeyBkqyx/LbBGLzC2GFFLEL96Mcca4WZuM0ZqscyH7z2vR31A+OHJs4+NpMGtCj73B46BTQALXbP7NA+RfhslFh0hL6VDHiiyGmszW/VSegkPVE2N4ZpNnSyTnKxusmlzBndILqZlHguL2LdKHdZnSSwcAPkttcqvdj+uXZqO10GL5wD9sF9+l7tkHwIvdwcEcQuld3zu+iA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b82a5f-c7fb-43db-0e8d-08de84c80f7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 08:26:32.0803
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jcQ71MZ+gbgpjpy2MwgR5j/W+5rQVCitfzYzO9KbfPsoLm7uAKRAAaQY3BJd1S3J/1GoyMl2PZTaWn/ODQKZmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9467
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2026 08:26:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66343

--_000_BL4PR11MB879741571A6A8C093D6FCE7AB94EABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the second milestone release for Yocto Project 6=
.0 (yocto-6.0_M2) is now available for download.

Download:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M2

bitbake: bc8be83aef0a6de85cd33a6f132f281d518594f7
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407
meta-arm: b00fe8862bc31cd4b6f0299b6a2edb244f19487a
meta-aws: b570577bf3ae3752e27bac15faf8733e45a01360
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
meta-intel: b6c23896d3eee0f925cbe189ff1e67b3c4953353
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767
meta-openembedded: 6ba45c1f94e1c2015df940ec9efcd4568346df56
meta-qcom: 1a7b6b0363fa75232d46ffb9fd706b9539872e10
meta-virtualization: 506d5af230f0b41809dfe754e84d5611b75c6585
meta-yocto: f3b63d0d6882af61020bd6f7150fae68a0322f63
oecore: be8cdcf13a658e9e81ff2f7b71d1c8c37a920ce7
yocto-docs: d97cfeaa55ed42722998d3313c1857aa377f6881

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M2/t=
estreport.txt

Thank you.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release


--_000_BL4PR11MB879741571A6A8C093D6FCE7AB94EABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
We are pleased to announce the second milestone release for Yocto Project 6=
.0 (yocto-6.0_M2) is now available for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M2</=
div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bitbake: bc8be83aef0a6de85cd33a6f132f281d518594f7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-agl: c1761e898d7fca3d8438e9b010eaf234f94fa407</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-arm: b00fe8862bc31cd4b6f0299b6a2edb244f19487a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-aws: b570577bf3ae3752e27bac15faf8733e45a01360</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-intel: b6c23896d3eee0f925cbe189ff1e67b3c4953353</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-mingw: 11666fce6a3cc98bcff6fe2c6bdd9e48faf03767</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-openembedded: 6ba45c1f94e1c2015df940ec9efcd4568346df56</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-qcom: 1a7b6b0363fa75232d46ffb9fd706b9539872e10</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-virtualization: 506d5af230f0b41809dfe754e84d5611b75c6585</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta-yocto: f3b63d0d6882af61020bd6f7150fae68a0322f63</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
oecore: be8cdcf13a658e9e81ff2f7b71d1c8c37a920ce7</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-docs: d97cfeaa55ed42722998d3313c1857aa377f6881</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Full Test Report:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-6.0_M2/t=
estreport.txt</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yocto Project Build and Release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB879741571A6A8C093D6FCE7AB94EABL4PR11MB8797namp_--

