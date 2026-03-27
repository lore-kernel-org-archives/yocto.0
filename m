Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 816FF10A62FF
	for <webhook@archiver.kernel.org>; Fri, 27 Mar 2026 02:41:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.64039.1774579313615328364
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2026 19:41:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=OO2FQAAo;
 spf=pass (domain: intel.com, ip: 192.198.163.14, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774579314; x=1806115314;
  h=from:to:subject:date:message-id:mime-version;
  bh=0MoDJMsXPkByg72zM+2HyY6SRXXWuJ0ELruiSPtn2Js=;
  b=OO2FQAAo5h8Ijwy3u8u18aXEUrrkjIjEMh8o88OJwZupQfKil8H0ravi
   chiVK7JQ2KL1KeW0Rfp2BOIN21xpnVQD+x4GiI1w2MZXysJicMF/usWIK
   AL4UqM5os0eZlrGymsopBKuUjzTLK0VuMe38mJ6lUDDKAg5lo/l+HF5Dc
   9rVpfVcU8VCaxCG8qF+7hqvcNvgwcmN96z4JNTQDuh/EgZ+G3dhVIZh7S
   hyYOPJEmUwnEC+gqHZC7CvDFA1+oIVEbuz9FQTy9OdEs9/kl/2uKPHAbF
   r3rIrtTVbvM8agbYChwa9qy7DpRUBI6w7AAp8B2Af3YO/n4+zqjf6/Nm5
   Q==;
X-CSE-ConnectionGUID: vSoX2qlKRX26V+NLhf0dJg==
X-CSE-MsgGUID: 444xsE3ZQ9GX9b4xqZTL8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75719115"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; 
   d="scan'208,217";a="75719115"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 19:41:52 -0700
X-CSE-ConnectionGUID: PBVcFSrFSpe9Gf5CnAeRKQ==
X-CSE-MsgGUID: tPkNJTwDSoqMCOh73h2r5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; 
   d="scan'208,217";a="222274613"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
  by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 19:41:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 19:41:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 19:41:50 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 19:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kbC0JSQghOj4zWMBiX8OoNCEtg4rv6uJMV1+5Co1qngFom+SD28wNtpXeBgP8r5DoT14izkJAJKgR32sC/vOkFJAT85CCujs0DUej0ccCA2a41iGhhCj2xrDg8TLVA+Avtuc+276VcjLvIgI9p3ENnJRXKq4k7ORmtuC6HQyZYQESGicIbxIgWvkEmHv26k2jc0Jec3I1vJojo8dM8ByYExUERxz1SaX/hQ4iwbcJNJ1AyGiNjJZXl3DZCBQpVd5gJ/ktUbF8zxOZBkG13ZjrfmJauqFfKWeTkbeMxjZbtcI0QNNyfsv9ZcNazBLbGIajHBishnkP1b9odFT+AWmtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0MoDJMsXPkByg72zM+2HyY6SRXXWuJ0ELruiSPtn2Js=;
 b=IWw1acWoJ615Vrb3aWyrirJTFGnRpzERxpiiJyeDjFilBPW3erXd51BO1jswBuxbPN4fDRoW8r67RPPZqI4IKpQ9ByBb4xwdVgedGFSpeTlQw5KQ5c2YR6a3rG9kGAo7oc8eAtnRT5ieTcKvV9iwHQrEjxFIaQOK7mEAPcgvorrhn6lpH3kgzq680AOh5+KAbqvs7MlydovsolRIhOKf2cOZeGgFIr5Xc1avJixk85aY2PxPm8niRlIPEkf+80p/0ovCTJyZCDa4zyDak9bMAwCGBghA1GbmZXEpwEQ+vyjj4+8eOBhjQ3RB1B3jDormDn//Ur3YU/1Ov0YyUKCphQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH7PR11MB6329.namprd11.prod.outlook.com (2603:10b6:510:1ff::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.6; Fri, 27 Mar
 2026 02:41:42 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9745.019; Fri, 27 Mar 2026
 02:41:42 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 4.0.34 (kirkstone-4.0.34) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0.34 (kirkstone-4.0.34) is
 Released
Thread-Index: AQHcvYyWVnL/ExYJcUOdG8spaxqXhQ==
Date: Fri, 27 Mar 2026 02:41:42 +0000
Message-ID: <BL4PR11MB8797C529F4F971B21805C215B957A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH7PR11MB6329:EE_
x-ms-office365-filtering-correlation-id: 5c36adf6-e242-4638-3020-08de8baa6108
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|10070799003|366016|376014|1800799024|38070700021|13003099007|56012099003|18002099003|8096899003;
x-microsoft-antispam-message-info: 9kyhiadOQFC+gN0NxUNgCIfT4/j+nKPWa4aUKxdVefGVhZqV/ACxYs+HcIpiugvMKlITDw8yQdqOQH7jSbx7256YMFbrhhBtGOevCMGnW28zL0WyIYli/TSLi4OD+69oioAYNg0OuAO4zMYVHEAct2zudUYZtBw30w0IKN5GRH8kwvw7HwkTrMaRqLcz12jXFjqjons3NKUFCFhJID/I9Skl/plqQnpsniBLcSRYQLMz2VId103PkyFoRIJwCrYXzejWSELX0ya21SY6Nq6toqwIiNv8a6/zMQNabju1fU4v/OSTSsFaEVw2PGfaGsorf8P/cJ4GGLXy8g5oa07FvBlJZjgSxiHYKmGTFUCRl9fnXa/aq9nnxv8eg8G9kaoDLJw4VIk4bglpRrngFhqx2Dmsb4/wATV2dAZ9HdjbY2qTzyRjr6XkbYgSKuDMwCYOyUe6LHdB5Bf3QItY0ErS44dSheAc3+MUn8ZtYwVipiVSBoDhnJPND+ZKYKVpjn56z+xu3Xn6taL39nMQPuCMEuxaPdCw+hfANieEg6HtRT1HkxO48d8YfjQq5ZKc1AUcqv5/uNZlyEuBoM9uMQTbTQ8JL78GdnOCCG2+vd/It8afkUIF9jexIhTNCaCIGbzgiSGSThwsyhS0QrfFtCGiUSH0Dusvx6qp2Vq3mvTPL1BfyzMavcMx7zMvGzFRTTouQaFb8rFLagdeo7dATM85iCCoqCjjHDyS5AvfXC2Dn/iWl4xdaB9ogheO59JXlKll
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(13003099007)(56012099003)(18002099003)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?s5mbd5GvYscPRzdvNKkbA0CPLvBrK6gmgMqiLZ6lj72kH9FxsZrm4n1xL8?=
 =?iso-8859-1?Q?pWVKTVXdIHgNiCElRdK1tsgoqWs0LOwnx6Tz6utICHfc4IYz9RfTI56EYf?=
 =?iso-8859-1?Q?qxBYlA0ol8cld/2kRIHMrYOTUO33/jSWjikbKyfb0OyKJT/X95T6K1AhGm?=
 =?iso-8859-1?Q?TaELoK7C+Ot7K3798muWVKfv0Qgp9UaySeiC3jwtm2+ZQQFB3qXKAdq5B4?=
 =?iso-8859-1?Q?7rNiKQS+pzun9BVUbBcVsZWXRlb/yqH6V6IyVQ+r/cxHX+PUqh2CtHrO96?=
 =?iso-8859-1?Q?rYApqzb4MxQOgFF4dbXdmAxlzyFjzJ7kGYHwruGHnhJ/O/Xe7v2+jP1/ME?=
 =?iso-8859-1?Q?o48Uu7t6BKQlQjB9xX3SqbtKCfMjE757b/5lIIHmq+89h0F3lq78jXJjgR?=
 =?iso-8859-1?Q?UTqbql8n+jJDlMZpaURD7r0MO0RbMWa8FxjSRrXbxcmmnBYpj32V1vmXcD?=
 =?iso-8859-1?Q?SdIl10YWcu01r9i8btFvZc4mxe5LwkfuuCwnWhz0120GYiAbZN9c43947C?=
 =?iso-8859-1?Q?MEtK5141oGGoOKGsEfFTR5gbLkPI4ua1B66x594wwzTbP3uMLGx4B8MLC7?=
 =?iso-8859-1?Q?aJUUqSh4VlAspmumQ4vo42twRhclmG/RZmE+aBNLnEb+jwqfpazkk0Jcox?=
 =?iso-8859-1?Q?7JESf839LkodKPWjxCblNtOQRAbTBdqh9rTz30x+t+BoC5Aa52yjNPQlVY?=
 =?iso-8859-1?Q?VNwb6QtTu1/yiej0Hz4IUEkBPsPjysFnFhEYuUxjniJxYI3jLdjJoRtPPq?=
 =?iso-8859-1?Q?pCljONkuRW/c0RqV+1rAPX9qz8pDiFwfqC3xyvvXP1ow4vOMxgNBZL2ORj?=
 =?iso-8859-1?Q?2wT/5hoSntXBLBFvwK/cagK/uQf44IiAalRv8qpCIqCdO1iZIn/Pm0oT5m?=
 =?iso-8859-1?Q?Skky17xxdYFVtcllEy6PSdV/qbKsVoFaaWR+RUtdR80fxHb69KJF9qs7Ce?=
 =?iso-8859-1?Q?RGRBVNOkWXXn2g5hJ5QeCXvuXa4o4kc7duAgEkfhfcNRPvKzvYcE/hoLQQ?=
 =?iso-8859-1?Q?WaLNQO9DseLsUO2xXhpfVzAo+4TXzwNXcZNjX4ePpimKC0Y/VFCSAwZxyv?=
 =?iso-8859-1?Q?VTAVVEWaYa178qaKOxsy/6p1wlcDpCTv8YHB9pOEfenvgPngWFXk/Mmk4y?=
 =?iso-8859-1?Q?cF98JOhB0ktvwfIYVDmGykw8pvipl3t0twR7VJafbfbdZz2v6DixP02NQV?=
 =?iso-8859-1?Q?w2WukuA3+JDgJ/JthTv7FUF306J7w0f++C/6uU8oRl/m9h5KjobZQK65jJ?=
 =?iso-8859-1?Q?52RpQX8lZnR5qf9W1VDzU7s5Sd4JmeW3yGB6/GXThlORqXo9kTTQ1YbJGR?=
 =?iso-8859-1?Q?OVR5m3AblL5G/TU0XhTbaSq8uACpN/1AwM4AFBPHaxyfjtmB8SXUVHXn/d?=
 =?iso-8859-1?Q?J8ZYesroscoyPG3kIA3Dx6CmwbW2isBQR1FZWTwgijuWNVBLH2Y5i+QHkG?=
 =?iso-8859-1?Q?QGsgJpCIQXuGAF0XemlcZhm4lRUxjJp7mvZLdKa9qyVDqacaU0uVzcI7x8?=
 =?iso-8859-1?Q?mzy0YRDnLo8uNsIIVgzMzwpy2VQmcn90EMjKs5KR60T04do5SUglkvcOYU?=
 =?iso-8859-1?Q?+Q4IbTXlwVdZtOHp+cKWCQgEMbaMaF0BEQK7HEjHdNsRrcyUX+8h1zVUlo?=
 =?iso-8859-1?Q?F6WdaeLJaSIJSW27Z0H6yRaBbAWRwqIL63PiTWz6V4Jt7ssMgzer2ZmKSN?=
 =?iso-8859-1?Q?e6FwrLaIC3+SEGol8xuCSQ/M5PrES1Bt0xKLamaWrkjK2+wRyBg4cRMo+D?=
 =?iso-8859-1?Q?U3Y8DQ0eAnY+/g9i7UTiyMLX+BMOKPRvByEZx0M6fmyeyJth7fL62rn155?=
 =?iso-8859-1?Q?RN1E3eZTVaJNHRsIpLsYjxcKeRjHaMwYTGie0twxUkOsQ2WjbfnFxoC+Kb?=
 =?iso-8859-1?Q?+i?=
x-ms-exchange-antispam-messagedata-1: M8m7kHv+c5qxyQ==
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB8797C529F4F971B21805C215B957ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DPnfjugUogyl0hM63Ei0H38ZAIXhrx5OxnfCt5GvBOWCiUw9FK1hxSPgk87kdDjyKNwrKAUBlLdE3Les+mAQXI65ougHiappWvXu2P5O+zE0bpIXo0N8/D+lqwsL3hiO9LuiKD4vOPaHHY/+SqXO0uxgaR9H/HM78u0WYDilSKOLHAEpXL1YzdjMMUpLldZyqdp96bClK1httD7bRoYroy/7XvX7BAH3Jnwd/S8/pNgF9HXaDkHPz6wCTS9fXEvveRQVeoJ4ae9B88lf9Ixr5BJtpL7Sv/OjsrCvDBorzqmXlXmkvmhUAmhleVmxfZ/nR8JWSArlPtBFtJJGaCQrpA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c36adf6-e242-4638-3020-08de8baa6108
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 02:41:42.1361
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FFYFizeFvqT4rZB+bpOgTW9OqjI3EgEFhEnBhUa/WKpj2DHLbJSceiZfHbiiZ1JjWDopXWoDJaD807NA1bGjww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6329
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2026 02:41:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66358

--_000_BL4PR11MB8797C529F4F971B21805C215B957ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 4.0.34 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/poky-8334e82=
e1d85e50557bd3da64054fc9e3eafc495.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/poky-8334e82e1d85e=
50557bd3da64054fc9e3eafc495.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--------------------------
yocto-4.0.34 Release Notes
--------------------------


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: 7c348dd67cfd169b1a56bf969606b03dccb76c56
Release Artefact: yocto-docs-7c348dd67cfd169b1a56bf969606b03dccb76c56
sha: 0677fc3aee3c936599f3bcffbe16792494058bd3506ca3ab1697ceac1822829b
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/yocto-docs-7=
c348dd67cfd169b1a56bf969606b03dccb76c56.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/yocto-docs-7c348dd=
67cfd169b1a56bf969606b03dccb76c56.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: 8334e82e1d85e50557bd3da64054fc9e3eafc495
Release Artefact: poky-8334e82e1d85e50557bd3da64054fc9e3eafc495
sha: 74fcc57d1dd3bb0c6ef77bfaaeca7504f393e705a55149cf52d4b61981c9c387
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/poky-8334e82=
e1d85e50557bd3da64054fc9e3eafc495.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/poky-8334e82e1d85e=
50557bd3da64054fc9e3eafc495.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: 7b6c9faa301a6d058ca34e230586f6a81ffa3ffb
Release Artefact: oecore-7b6c9faa301a6d058ca34e230586f6a81ffa3ffb
sha: 375a22e3e229064749e78c80c44cde95adcedd26df76045fccefa3a9d3fa14ad
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/oecore-7b6c9=
faa301a6d058ca34e230586f6a81ffa3ffb.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/oecore-7b6c9faa301=
a6d058ca34e230586f6a81ffa3ffb.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: 1d3874a383023a5e2433e0fcfd87ac5d1e6d341d
Release Artefact: meta-yocto-1d3874a383023a5e2433e0fcfd87ac5d1e6d341d
sha: baf48bbe1f29686d502c0c6f311c7723b0a18f08e7efbf89c150589102285dbe
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-yocto-1=
d3874a383023a5e2433e0fcfd87ac5d1e6d341d.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-yocto-1d3874a=
383023a5e2433e0fcfd87ac5d1e6d341d.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0.34
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0.34
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2


---------------
 Contributors
---------------
Aleksandar Nikolic
Amaury Couderc
Ankur Tyagi
Antonin Godard
Bruce Ashfield
Fabio Berton
Hugo SIMELIERE
Lee Chee Yang
Michael Opdenacker
Paul Barker
Peter Marko
Richard Purdie
Scott Murray
Vijay Anusuri
Yoann Congal

---------------
 Known Issues
---------------
N/A

---------------
Security Fixes
---------------
avahi: Fix CVE-2026-24401 CVE-2025-68276 CVE-2025-68468 CVE-2025-68471
bind: Fix CVE-2025-13878
expat: Fix CVE-2026-24515 CVE-2026-25210
ffmpeg: Ignore CVE-2025-25468 CVE-2025-25469
glib-2.0: Fix CVE-2026-0988 CVE-2026-1484 CVE-2026-1485 CVE-2026-1489
glibc: Fix CVE-2025-15281 CVE-2026-0861 CVE-2026-0915
harfbuzz: Ignore CVE-2026-22693
inetutils: Fix CVE-2026-24061
libpng: Fix CVE-2026-22695 CVE-2026-22801 CVE-2026-25646
libtasn1: Fix CVE-2025-13151
libxml2: Fix CVE-2026-0990 CVE-2026-0992
linux-yocto/5.15: Fix CVE-2022-49465 CVE-2023-54207 CVE-2025-22058 CVE-2025=
-40040 CVE-2025-40149 CVE-2025-40164 CVE-2025-68211 CVE-2025-68340 CVE-2025=
-68365 CVE-2025-68725 CVE-2025-68817 CVE-2025-71147 CVE-2025-71154 CVE-2025=
-71162 CVE-2025-71163 CVE-2026-22976 CVE-2026-22977 CVE-2026-22978 CVE-2026=
-22980 CVE-2026-22982 CVE-2026-22984 CVE-2026-22990 CVE-2026-22991 CVE-2026=
-22992 CVE-2026-22997 CVE-2026-22998 CVE-2026-22999 CVE-2026-23060 CVE-2026=
-23061 CVE-2026-23063 CVE-2026-23064 CVE-2026-23076 CVE-2026-23078 CVE-2026=
-23080 CVE-2026-23083 CVE-2026-23084 CVE-2026-23085 CVE-2026-23087 CVE-2026=
-23089 CVE-2026-23090 CVE-2026-23091 CVE-2026-23093 CVE-2026-23095 CVE-2026=
-23096 CVE-2026-23097 CVE-2026-23119 CVE-2026-23120 CVE-2026-23121 CVE-2026=
-23124 CVE-2026-23125 CVE-2026-23133 CVE-2026-23146 CVE-2026-23150 CVE-2026=
-23164 CVE-2026-23167 CVE-2026-23170
openssl: Fix CVE-2025-15467 CVE-2026-22795 CVE-2026-22796 CVE-2025-68160 CV=
E-2025-69418 CVE-2025-69419 CVE-2025-69420 CVE-2025-69421
python3: Fix CVE-2025-12084 Fix CVE-2025-13837
vim: Ignore CVE-2025-66476
zlib: Ignore CVE-2026-22184


---------------
Fixes
---------------
bind: Upgrade to 9.18.44
build-appliance-image: Update to kirkstone head revision
classes/buildhistory: Do not sign buildhistory commits
dev-manual/packages.rst: fix example recipe version
dev-manual/packages.rst: pr server: fix and explain why r0.X increments on =
SRCREV change
dev-manual/packages.rst: rename r0.0 to r0 when PR server is not enabled
glibc: stable 2.35 branch updates
linux-yocto/5.15: update to v5.15.199
migration-guides: add release notes for 4.0.32
openssl: upgrade to 3.0.19
poky.conf: Bump version for 4.0.34 release
poky.conf: add fedora-41, debian-12, rocky-8&9 to SANITY_TESTED_DISTROS
pseudo: Update to 1.9.3+git43cbd8fb49
ref-manual/classes.rst: fix broken links to U-Boot documentation
ref-manual/system-requirements.rst: update untested distros
scripts/install-buildtools: Update to 4.0.32
u-boot: move CVE patch out of u-boot-common.inc
what-i-wish-id-known.rst: replace figure by the new SVG



--_000_BL4PR11MB8797C529F4F971B21805C215B957ABL4PR11MB8797namp_
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
Hi</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
We are pleased to announce the Yocto Project 4.0.34 Release is now availabl=
e for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWAe10e9a38-bf2c-342c-6fdd-69596087af8f" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/poky-83=
34e82e1d85e50557bd3da64054fc9e3eafc495.tar.bz2">https://downloads.yoctoproj=
ect.org/releases/yocto/yocto-4.0.34/poky-8334e82e1d85e50557bd3da64054fc9e3e=
afc495.tar.bz2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWA685d4e6d-0139-ef8a-25ae-9661fc09fd2b" hre=
f=3D"https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/poky-8334e82e=
1d85e50557bd3da64054fc9e3eafc495.tar.bz2">https://mirrors.edge.kernel.org/y=
octo/yocto/yocto-4.0.34/poky-8334e82e1d85e50557bd3da64054fc9e3eafc495.tar.b=
z2</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWAc7556bf1-472d-7ec6-2ff9-df3cce3758a4" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/RELEASE=
NOTES">https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/RELEA=
SENOTES</a>&nbsp;</div>
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
<a class=3D"OWAAutoLink" id=3D"OWA254725e2-6364-2b05-7e5f-fbdefc92614a" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/testrep=
ort.txt">https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/tes=
treport.txt</a>&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you for everyone's contributions to this release.</div>
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-4.0.34 Release Notes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Repositories/Downloads</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 7c348dd67cfd169b1a56bf969606b03dccb76c56</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: yocto-docs-7c348dd67cfd169b1a56bf969606b03dccb76c56</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 0677fc3aee3c936599f3bcffbe16792494058bd3506ca3ab1697ceac1822829b</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/yocto-docs-7=
c348dd67cfd169b1a56bf969606b03dccb76c56.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/yocto-docs-7c348dd=
67cfd169b1a56bf969606b03dccb76c56.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 8334e82e1d85e50557bd3da64054fc9e3eafc495</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: poky-8334e82e1d85e50557bd3da64054fc9e3eafc495</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 74fcc57d1dd3bb0c6ef77bfaaeca7504f393e705a55149cf52d4b61981c9c387</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/poky-8334e82=
e1d85e50557bd3da64054fc9e3eafc495.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/poky-8334e82e1d85e=
50557bd3da64054fc9e3eafc495.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 7b6c9faa301a6d058ca34e230586f6a81ffa3ffb</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: oecore-7b6c9faa301a6d058ca34e230586f6a81ffa3ffb</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 375a22e3e229064749e78c80c44cde95adcedd26df76045fccefa3a9d3fa14ad</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/oecore-7b6c9=
faa301a6d058ca34e230586f6a81ffa3ffb.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/oecore-7b6c9faa301=
a6d058ca34e230586f6a81ffa3ffb.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 1d3874a383023a5e2433e0fcfd87ac5d1e6d341d</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-yocto-1d3874a383023a5e2433e0fcfd87ac5d1e6d341d</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: baf48bbe1f29686d502c0c6f311c7723b0a18f08e7efbf89c150589102285dbe</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-yocto-1=
d3874a383023a5e2433e0fcfd87ac5d1e6d341d.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-yocto-1d3874a=
383023a5e2433e0fcfd87ac5d1e6d341d.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-mingw-87c22ab=
b1f11be430caf4372e6b833dc7d77564e.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-gplv2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-gplv2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: kirkstone</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/meta-gplv2-d2f8b5c=
db285b72a4ed93450f6703ca27aa42e8a.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: 2.0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-4.0.34</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 8e2d1f8de055549b2101614d85454fcd1d0f94b2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: bitbake-8e2d1f8de055549b2101614d85454fcd1d0f94b2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: fad4e7699bae62082118e89785324b031b0af0743064caee87c91ba28549afb0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.34/bitbake-8e2d=
1f8de055549b2101614d85454fcd1d0f94b2.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-4.0.34/bitbake-8e2d1f8de0=
55549b2101614d85454fcd1d0f94b2.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Contributors</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Aleksandar Nikolic</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Amaury Couderc</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ankur Tyagi</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Antonin Godard</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Bruce Ashfield</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fabio Berton</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hugo SIMELIERE</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Lee Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Michael Opdenacker</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Paul Barker</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Peter Marko</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Richard Purdie</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Scott Murray</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Vijay Anusuri</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yoann Congal</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Known Issues</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
N/A</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Security Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
avahi: Fix CVE-2026-24401 CVE-2025-68276 CVE-2025-68468 CVE-2025-68471</div=
>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bind: Fix CVE-2025-13878</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
expat: Fix CVE-2026-24515 CVE-2026-25210</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ffmpeg: Ignore CVE-2025-25468 CVE-2025-25469</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glib-2.0: Fix CVE-2026-0988 CVE-2026-1484 CVE-2026-1485 CVE-2026-1489</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glibc: Fix CVE-2025-15281 CVE-2026-0861 CVE-2026-0915</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
harfbuzz: Ignore CVE-2026-22693</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
inetutils: Fix CVE-2026-24061</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libpng: Fix CVE-2026-22695 CVE-2026-22801 CVE-2026-25646</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libtasn1: Fix CVE-2025-13151</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libxml2: Fix CVE-2026-0990 CVE-2026-0992</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
linux-yocto/5.15: Fix CVE-2022-49465 CVE-2023-54207 CVE-2025-22058 CVE-2025=
-40040 CVE-2025-40149 CVE-2025-40164 CVE-2025-68211 CVE-2025-68340 CVE-2025=
-68365 CVE-2025-68725 CVE-2025-68817 CVE-2025-71147 CVE-2025-71154 CVE-2025=
-71162 CVE-2025-71163 CVE-2026-22976
 CVE-2026-22977 CVE-2026-22978 CVE-2026-22980 CVE-2026-22982 CVE-2026-22984=
 CVE-2026-22990 CVE-2026-22991 CVE-2026-22992 CVE-2026-22997 CVE-2026-22998=
 CVE-2026-22999 CVE-2026-23060 CVE-2026-23061 CVE-2026-23063 CVE-2026-23064=
 CVE-2026-23076 CVE-2026-23078 CVE-2026-23080
 CVE-2026-23083 CVE-2026-23084 CVE-2026-23085 CVE-2026-23087 CVE-2026-23089=
 CVE-2026-23090 CVE-2026-23091 CVE-2026-23093 CVE-2026-23095 CVE-2026-23096=
 CVE-2026-23097 CVE-2026-23119 CVE-2026-23120 CVE-2026-23121 CVE-2026-23124=
 CVE-2026-23125 CVE-2026-23133 CVE-2026-23146
 CVE-2026-23150 CVE-2026-23164 CVE-2026-23167 CVE-2026-23170</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
openssl: Fix CVE-2025-15467 CVE-2026-22795 CVE-2026-22796 CVE-2025-68160 CV=
E-2025-69418 CVE-2025-69419 CVE-2025-69420 CVE-2025-69421</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3: Fix CVE-2025-12084 Fix CVE-2025-13837</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
vim: Ignore CVE-2025-66476</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
zlib: Ignore CVE-2026-22184</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bind: Upgrade to 9.18.44</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
build-appliance-image: Update to kirkstone head revision</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
classes/buildhistory: Do not sign buildhistory commits</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: fix example recipe version</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: pr server: fix and explain why r0.X increments on =
SRCREV change</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: rename r0.0 to r0 when PR server is not enabled</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glibc: stable 2.35 branch updates</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
linux-yocto/5.15: update to v5.15.199</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
migration-guides: add release notes for 4.0.32</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
openssl: upgrade to 3.0.19</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
poky.conf: Bump version for 4.0.34 release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
poky.conf: add fedora-41, debian-12, rocky-8&amp;9 to SANITY_TESTED_DISTROS=
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
pseudo: Update to 1.9.3+git43cbd8fb49</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/classes.rst: fix broken links to U-Boot documentation</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/system-requirements.rst: update untested distros</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
scripts/install-buildtools: Update to 4.0.32</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
u-boot: move CVE patch out of u-boot-common.inc</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
what-i-wish-id-known.rst: replace figure by the new SVG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB8797C529F4F971B21805C215B957ABL4PR11MB8797namp_--

