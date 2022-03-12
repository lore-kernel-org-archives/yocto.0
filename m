Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670CCC433F5
	for <webhook@archiver.kernel.org>; Sat, 12 Mar 2022 01:49:19 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web11.848.1647049757698201542
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Mar 2022 17:49:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=XVpxCTXp;
 spf=pass (domain: intel.com, ip: 134.134.136.65,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1647049757; x=1678585757;
  h=from:to:subject:date:message-id:mime-version;
  bh=Fzg0Lwi9qkru/htzuq+lIcFl2n7rJIhethMlHIwkCEo=;
  b=XVpxCTXpWe9JtjV4Y/XCcY9/Dekxm70Vsi/cfoVTelSMc2oqze613drs
   Q6QAdLf0I4YN1hiE9gMsAOV2TMTe5GKA3LIDNBSI+yXLuFRSKoSZ4Z5A2
   D3kuwPyN/jkgeF6JdhzLG23BFUz46SJcT5JKRTkSlkGD/0ZDSbL91dWeL
   E4ODvblAhd6FJ8Bc4fApOaNc7gOoiBi9H5xfzJGq6No/f1WSvMU4ZBYx0
   0mMMM76S4D4FkWXaaNmfO88ASrSEIkkSWkTBqlGHKGtdU5w7ygfXZvmbf
   GcxKbDUQeYrLrs4cZUuYcx1xxc4Yu6WyaEIs4/L+gWpXHna6rpBLJMneF
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255656533"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400";
   d="scan'208,217";a="255656533"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 17:49:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400";
   d="scan'208,217";a="643176870"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2022 17:49:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 11 Mar 2022 17:49:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 11 Mar 2022 17:49:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 11 Mar 2022 17:49:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIeJwkCVBrC0mONDH0FBCyV6ibAX9tLU7g7KHqRWyyR7CMsYQLuWRtTuV1rm4U5vjIbMv+h5PZzE4WAek/jxoQOUZ/6JiJgLBU/gNqp/ksE4uglpYFUN3MT78TcxsxJUQ0/WDLswXo48zLgn6bZlU7gkgmMtIspg/3B4QmB/t+OiVmK7Q0eBHnLc/KMKagqoziyRTy/VVlzVIVNy+qaeE+Ed8GWfmDG1ie8Opb72DlamtbhdxsdyKIBuixCh0ONOdBam0QY6FxAPYZrKaUJGRdF6g6UjFI7mNd0J90gfh+NDfasDCnEMnChOjp9v6GzssXGshKKtBEGMVTvOZ4hKcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fzg0Lwi9qkru/htzuq+lIcFl2n7rJIhethMlHIwkCEo=;
 b=k1fwbsiUrqw5CW1C7xQeWfs/FMRO4pKFoEkn4I9IFYSmNO1dGPR5jz+lEH44pd8uBGx/DnE4+ShdljjYxsTofsPJzN2n4em9uq5Iv2vP/oALe+wMSS8gGOtABQ80Iw9OIbPYzo5BCFF/pchjogl4+FVARgJPWMWqUSvHsnJcifp4+qpGq91xqZeiUtDqQ1K2+i/gYBU6OGLJvBShUmh5bwWdgS9y5ixw7H+TP5yUpBE0l2WTVdW52VsF7eMeHan/vpNXzyJWQ5gPeMDND4flebcOdm2XfyqQoPTwGkEUShrFwpvOHoTf2XHIkAC8jQy0CgKVSywl2TTQnatuoebI/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by PH0PR11MB5126.namprd11.prod.outlook.com (2603:10b6:510:3a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Sat, 12 Mar
 2022 01:49:13 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::d8bf:725a:9d0c:2260]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::d8bf:725a:9d0c:2260%9]) with mapi id 15.20.5038.029; Sat, 12 Mar 2022
 01:49:13 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 3.5 (yocto-3.5_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 3.5 (yocto-3.5_M3)
  Now Available
Thread-Index: Adg1sOUq0EdCai+hSOuWZAytmfwulQ==
Date: Sat, 12 Mar 2022 01:49:12 +0000
Message-ID: 
 <DM5PR1101MB2361AD32B6F4901648F04EBAB90D9@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 410431cd-32fb-4290-cb76-08da03ca8251
x-ms-traffictypediagnostic: PH0PR11MB5126:EE_
x-microsoft-antispam-prvs: 
 <PH0PR11MB5126148B3139B397C05C3CB9B90D9@PH0PR11MB5126.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 YtpPBHj6/zWT/ZLQ87GPPp/FMTuhA4wpfqt+yILADUH4yd8Y3zBdk2C4ubL0uF8UfbQo0MS+GWUWDgghqdfMkxe5x2tlA2ZI6ekxsLffWAMSSKUEaE6waVFKB14vwU2LnghSOH2+9y2QkepEcimPo49mkUL+f3F0EnwOJ0/DtJCP5zdpaQAMiniDxtrao9vxqcYFXOSdGgx4Ebxu1XrUQhbfWsS01AnqgcItmgYzYLdRIpA//uEouLlhYMucrfHrlzEDFwkUMs4n9+8HSSQxRs4O1sZjtgun9ByV77FmY+J0CoPwCeIwuiYf7i59tp4T5/gxfCmy2SX2PK3J74TaG/BRKlU/3ksNCGKjYkO7TIHXMKmuZ2uTB+N6+3JTyGeGLX7Q0qplrlwGIO7vTgY+C7IHjl8wKPQL0Mw1TlGArSP9neze5HyWeuTHUyETLtiXyylaCtircIivGzGPtcPROBNvpVW63J0dIRv6SS5/YJBhJyDBtIHb4zgw25lRNY4dsSaRB7HwcMZDH0jO0GUZJHlCoudz06TYJV42/j4NJ/hsFHk6pO1AP8lMngHMR19RiCT//0LuirZQCtO7huPiTKEqph9Ce8oe3AAr9exVx7rU5sh67VHD+j84C6B8aksGxIGkOHYKLxDjkVullHX2Nv8XqKPNpbttn5svosEqSXmNpMHIJN/TY5/snDqyQ2MiEwpEWxvvrJbk3OwBhUb+F5Ax5oZyEtG+x21By7+JPdkS4yYTaY+/oCq1FbisdnX3P2F8LweeU/RRcl7AnbYZv+uZrmisu+zNq/uXWyP2mxLkkWAP9FYWAokpEghctle5GSemQ1bQ7j3YFghhAayj1A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(82960400001)(122000001)(6506007)(33656002)(76116006)(166002)(450100002)(186003)(66946007)(966005)(5660300002)(110136005)(66446008)(38100700002)(86362001)(66476007)(66556008)(64756008)(38070700005)(8676002)(83380400001)(508600001)(52536014)(8936002)(55016003)(9686003)(4744005)(9326002)(2906002)(71200400001)(316002)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y0xhVmVGVWNXUGxLcEdXcEc4dG5Ua0cwUjlzTzZ6TGR1WWJtOUNtOUpjWUxt?=
 =?utf-8?B?elY1OGRVUHU2VW5Kakl3bzdCd2VJRmU2QXY3aGdLMEozTFZFd2hCSnRySnc3?=
 =?utf-8?B?ZTlvTFlidmpWNHd0bTJpQVF3SDU1T1dqTTdNbEFvL2tOakptaEo1TC80a21y?=
 =?utf-8?B?UHVLVUJmTnVWcTFVMEx6M3BxckpnYnMxaFRvNFEraVNGQW9oWTZVd0VPMCsw?=
 =?utf-8?B?cEsxYkZjSEtBck52R3pHVDNHODJGdERFK24xeVN3Z2M5K1BSZGNJV0pIZStp?=
 =?utf-8?B?aTF4VGtvTXAwalU2ZTluMWxWY1NoY1k2VjBOOVR2M2ZCeDNQakxGZVYxQlBy?=
 =?utf-8?B?VW1xL2ZoQjNleE1HRkFwTlkvVGZuOE5sMVJHaWJpbHJDYXdwTzNDRndSQ0Rj?=
 =?utf-8?B?bHNMTkRJUzJUMzZ2clAxbi90YmVJZzl2bFFjUzlhSGVQOWpHU3lSd2pBVUxF?=
 =?utf-8?B?SHRTaXVxaWdqYWJMdVdVMGtSQVFWK0ZYMWV4Y1FmVjUxZW1pUVFzellPR0Zn?=
 =?utf-8?B?aThmMkFsMjFtYTJ4UlhiMlFPaVg2OXc3Ky9RZmZUQ0lOd3krdjc0M2tiVXNB?=
 =?utf-8?B?cjFtckV2aGhOeFhkenZHbkpNQUdnZGxzOXhMWGNNb2dPNnlnNlpDa1FHM0pI?=
 =?utf-8?B?TlZIOCtKQkw4VVJhQnJ5ZytYYW9pSzd3emN0bFRuQjdxUzhZaTErT2xDZGRB?=
 =?utf-8?B?ZVlmTC9tdTlVL3lyQk9sblgwM0hXSkV6Ym5ERVZKMmtDQ2ZoRFdPK2NOSXJE?=
 =?utf-8?B?SzNrQ3UwMGhSNTM2NDhjOW1kMHphMGtBak5mdDd0dWszdkR2TkdPem9rNzhW?=
 =?utf-8?B?NHE3b1UzdkdTNWl5U01TK004V1k4anVBalZCcXhLVHNUdURDSFYreEphTEVh?=
 =?utf-8?B?Y3lJbnVUN1BIQmxVUDFFY3BYNTd0RUVIRTVxaXdOSlFwSzZoVk1Jc1hkU0Nn?=
 =?utf-8?B?Wko1bTlxYnR0c2FJSEtTV1g0cWtQRkkrTDA5YWRMM2JZYzN3Lzc3bDBYZHBK?=
 =?utf-8?B?SzZJamp0YXhtcDE2SFo3N1VCQlZXaXBiY2NIcFo1Q2lFNEdsL2JjY1gzWHYr?=
 =?utf-8?B?K0Z3cmdPS01RUXNFM1RnZDRiVGE1QU1MZHU2dERoVm5NTTB4UWdOc05qTHl4?=
 =?utf-8?B?YnV0V2hMcnFQRHVYZjFpSHM1dUExRGhIOVByam4vVUkrZEY4Z2FDMElIYWJH?=
 =?utf-8?B?MDQwSWQ2MkdvOUFORjkrWUY5YTVSaEQ1OGRDQUJ4QklvbStkNjFuRXpjZ0dQ?=
 =?utf-8?B?S3BZc0JvdkZ3NFluU2YvcHJtZ3ZqWUg2QzFiNE9jN28zOTRhRk83LzRaMWpk?=
 =?utf-8?B?bHRyUjRUYzZUb0RFL3pMMS9qSUdrQ1RuNHhNTGh5ZkNISlYzU0RVeGNXNTVH?=
 =?utf-8?B?bm9tWWRNMkEycEVydjlQTDFNNzNBWWFXeGZ6UVhrempuQy9oTmYwZGFraVVZ?=
 =?utf-8?B?VzZSRjAxQUtxaDJyMEhaNDFhV1o4ODN1MTI3dGpWQU5DVTRyYi81SEVtRmc2?=
 =?utf-8?B?SHF6T3lrNW1vay9FSTN3WUMxUnBDWnQ4aHIxbkZFY1NsY0tMT085MVdVNWt3?=
 =?utf-8?B?Y3JEaURVdDg4c3lOZ0JBMm01NE5WdVE0dU9BdUF3R3I3VnZuN0daclRLYmlP?=
 =?utf-8?B?MEJPOEpTM21aUzVUc3ZQdlhiMG5mZ0pYUk0xK3h1cWN1cTNwQ2pYa0REaEhJ?=
 =?utf-8?B?dUdjbHRWdUF4ZEVDckN3andpa0F5OWtvaWRTYWoyWGNPN1dPV0FYa3FVc00y?=
 =?utf-8?B?UmpJeUFnQ0l5aDFYbDFBaFlnV0JCZkZ1WHdidGZQZHhwVGJTM3p5dnkwMUF5?=
 =?utf-8?B?OG5mS3FMRkNYc0JjN0dFSkh0cm1yKy9LK0ZJdUVUK2d2bldpM25KWjNqMm9j?=
 =?utf-8?B?dnR5dWowYUppR3p3bzdFQzdoOW1IYXdVNjFTdXlWT0dQNTA2R2drMnI5ZURa?=
 =?utf-8?B?L3NoY2JLQjdYTmE2SDF1bmg3QWVuNnNKbmJ4MFp6bWVqa3RnTUZ2Y3E3ZEVT?=
 =?utf-8?B?M1RpcGVzSjR0MTBQUmlFdk5kRGI2Y2lmYjNVVEhUVXVKaFExWWtqMXFvdnpi?=
 =?utf-8?Q?pU4Y5g?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361AD32B6F4901648F04EBAB90D9DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 410431cd-32fb-4290-cb76-08da03ca8251
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2022 01:49:12.9928
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 Jal4ukOeLEcnBnGucz9L/Fkz31ih0xpOxNluP1P7qaW7lI7Z0gVu1t4OW++Yrwl9BawRLpT7pFbq3vYwT2RAIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5126
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Mar 2022 01:49:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56423

--_000_DM5PR1101MB2361AD32B6F4901648F04EBAB90D9DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCldlIGFyZSBwbGVhc2VkIHRvIGFubm91bmNlIHRoZSB0aGlyZCBtaWxlc3RvbmUg
cmVsZWFzZSBmb3IgWW9jdG8gUHJvamVjdCAzLjUgKHlvY3RvLTMuNV9NMykgaXMgbm93IGF2YWls
YWJsZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3Rv
cHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by0zLjVfTTMNCg0KYml0
YmFrZTogODA1NWVjMzYwNTA3ZTZhNjc4ZWU1YzQwMThlYzFhYjdmNWE5Y2NlNQ0KbWV0YS1hZ2w6
IDlkZjdhNDBkZDBiNWUzZWUxZWQ3MmU0NjBkYzk5MTkzZWViNGJkNmMNCm1ldGEtYXJtOiA2NDNj
ZjU4YTY5ODg1MDVkYmQ5MjQzMTQyNDk2YTNiYzY0OWVmYjFjDQptZXRhLWF3czogMjE0YTU4Njdi
M2IwZDliYTU0ODE4YWFiYjE3MTFlYWRmNGJhOWViMw0KbWV0YS1ncGx2MjogNWM5ZjAzMzg5MmFl
NTZjMTc4NjE2ODU5YTEyNDVlZmQzNzVlNjRiZA0KbWV0YS1pbnRlbDogNmZiYTU4YWRiMzgyM2Nk
NzU3ODA2MmIwYWZhNDkzOGRkNzIwNmFkYg0KbWV0YS1taW5ndzogZDQ5ZTgwM2U0YjhiNjJkYzE0
OGMxODJhZjQ5OWU1ODJlNzY4NGRlNA0KbWV0YS1vcGVuZW1iZWRkZWQ6IGE3NWI5YTU0OTU2M2Uw
OWZjYTlhOGMyODBmNTczMTE1MjkxM2I2NTENCm9lY29yZTogNGNhZWEyZDMyZjE3N2ZiYmUzODg3
ZjM3YjY3MDBiMmI0OTk2YjJiZQ0KcG9reTogYWZiZGJhOWIxMmJjMTI2MzhkODI4MTNkMWNkMzFl
YzQ3OTk3MWM0Yg0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3Rv
cHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by0zLjVfTTMvdGVzdHJl
cG9ydC50eHQNCg0KVGhhbmsgeW91Lg0KDQpMZWUgQ2hlZSBZYW5nDQpjaGVlLnlhbmcubGVlQGlu
dGVsLmNvbTxtYWlsdG86Y2hlZS55YW5nLmxlZUBpbnRlbC5jb20+DQpZb2N0byBQcm9qZWN0IEJ1
aWxkIGFuZCBSZWxlYXNlDQo=

--_000_DM5PR1101MB2361AD32B6F4901648F04EBAB90D9DM5PR1101MB2361_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkRlbmdYaWFuOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAx
IDE7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIgMTUg
NSAyIDIgMiA0IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxARGVuZ1hpYW4i
Ow0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMg
Ki8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBj
bTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlm
O30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0K
CWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWls
U3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5
OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1
bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmki
LHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0
Ow0KCW1hcmdpbjo3Mi4wcHQgOTAuMHB0IDcyLjBwdCA5MC4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9u
MQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48
eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwv
eG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQg
djpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hh
cGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1NWSIg
bGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29y
ZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGVs
bG8sPGJyPg0KPGJyPg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRoaXJkIG1pbGVz
dG9uZSByZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDMuNSAoeW9jdG8tMy41X00zKSBpcyBub3cg
YXZhaWxhYmxlIGZvciBkb3dubG9hZC48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RG93bmxvYWQ6
PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHA6Ly9kb3dubG9hZHMueW9jdG9w
cm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTMuNV9NMyI+aHR0cDov
L2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9j
dG8tMy41X00zPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5iaXRiYWtlOiA4MDU1ZWMzNjA1
MDdlNmE2NzhlZTVjNDAxOGVjMWFiN2Y1YTljY2U1PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5tZXRhLWFnbDogOWRmN2E0MGRkMGI1ZTNlZTFlZDcyZTQ2MGRjOTkxOTNlZWI0
YmQ2YzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hcm06IDY0M2Nm
NThhNjk4ODUwNWRiZDkyNDMxNDI0OTZhM2JjNjQ5ZWZiMWM8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtYXdzOiAyMTRhNTg2N2IzYjBkOWJhNTQ4MThhYWJiMTcxMWVh
ZGY0YmE5ZWIzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWdwbHYy
OiA1YzlmMDMzODkyYWU1NmMxNzg2MTY4NTlhMTI0NWVmZDM3NWU2NGJkPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWludGVsOiA2ZmJhNThhZGIzODIzY2Q3NTc4MDYy
YjBhZmE0OTM4ZGQ3MjA2YWRiPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5t
ZXRhLW1pbmd3OiBkNDllODAzZTRiOGI2MmRjMTQ4YzE4MmFmNDk5ZTU4MmU3Njg0ZGU0PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLW9wZW5lbWJlZGRlZDogYTc1Yjlh
NTQ5NTYzZTA5ZmNhOWE4YzI4MGY1NzMxMTUyOTEzYjY1MTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+b2Vjb3JlOiA0Y2FlYTJkMzJmMTc3ZmJiZTM4ODdmMzdiNjcwMGIyYjQ5
OTZiMmJlPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5wb2t5OiBhZmJkYmE5
YjEyYmMxMjYzOGQ4MjgxM2QxY2QzMWVjNDc5OTcxYzRiPG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PkZ1bGwgVGVzdCBSZXBvcnQ6PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Imh0dHA6
Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lv
Y3RvLTMuNV9NMy90ZXN0cmVwb3J0LnR4dCI+aHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qu
b3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tMy41X00zL3Rlc3RyZXBvcnQudHh0
PC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFuayB5b3UuPG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPkxlZSBDaGVlIFlhbmcgPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48YSBocmVmPSJtYWlsdG86Y2hlZS55YW5nLmxlZUBpbnRlbC5jb20iPmNoZWUueWFuZy5sZWVA
aW50ZWwuY29tPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+WW9jdG8g
UHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+
DQo8L2h0bWw+DQo=

--_000_DM5PR1101MB2361AD32B6F4901648F04EBAB90D9DM5PR1101MB2361_--

