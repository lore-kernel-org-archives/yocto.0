Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31AFC433EF
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 14:38:16 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.7596.1653489495607176337
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 07:38:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=QNHfvMEH;
 spf=pass (domain: intel.com, ip: 192.55.52.120,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653489495; x=1685025495;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=unWr+m4sPaiy4NN9WnUdzRaSshY1KOb8FaGRqX2fQ88=;
  b=QNHfvMEHlWxQ0asFDg4+FriocVQmKEGItAQ/aqIM8qUbay9EZHLbub6h
   NKjDHcWlc2fyVjAXwhVkOSzVXZ2aFPacuE9B0lCJaODuzgeGptrZeoXkb
   JqKno91EF0VNHcRAeHo0MT4Plc3+F64a6V4sELoAbRcxWizswBBbHPiZ+
   t115WXPCiDBl8nJA3bByft1DquM+eMyHk8EkHZL5Iq5Y+EgMj6kpNySsh
   Xz3kD+arzLcdYtz+vHgP8CBzOzm2c5xEQJJOkjtbjA2+V1SoGNPoP6K0G
   6en54mOqzjDI1LLXM/L8EJgxr5iOd3SxEC8Ts+CDlI+yRtksRV1BaoIuW
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="272646773"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600";
   d="scan'208";a="272646773"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 07:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600";
   d="scan'208";a="601935562"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by orsmga008.jf.intel.com with ESMTP; 25 May 2022 07:38:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 07:38:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 07:38:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 25 May 2022 07:38:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 25 May 2022 07:38:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezGptbIA+paQQdG3snZSXJ33ujwLCKwLP0kTzwRMbiwv2Du1aHULZM0jRl2hR8UNVB2vFqnB9VDzxBVurvDBInINr0JoB5GOaUUy4qvPqyA5laewwx2UlCokpQ9QYhDbkPNu+1+D7DWyLarzPKvIVfd67EOBWKLPjR1t7kVc9aAuqESNcEyu2C+GKjmzz1LxIl2TKZpqF3mRL+btokFjRJH1AFqG6AfHfAKP1GhDqpL6ZVArNjmKiFwbcbBmn5biOrFFPerObcAU45efrY18yq7qP7YxXUti1maIJQkJlOTfkE3SpX0g958U6BFG1euXssUKPzYBkio/Q88EpMEwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unWr+m4sPaiy4NN9WnUdzRaSshY1KOb8FaGRqX2fQ88=;
 b=PQQMypWuY/XdSCsseh735s2IrztJRHQ/GfYKXw5rVoaQpRWQ072uj4nIIkcljwyieypIqlbEaB5QcYhskgQ3JUYSAgznywHt1D3FnQ+tBsojW2k1Q6DH/3z6paTMJTTzHOsMxslwGAMWAW+tJF7CfQ5A0vVq9EeI5ErSAn5rHruY2EdqXkLKioTi0rL1ddFh2xAPUPyhNLl0OmWbj+uKgHCe4j088spLy0Zv9ltSY1VO5EGmx7Ftc4s7PyXboZnNxQLZ3/FfFA9qEoE3+hqJ75OA3raamgW3v0AM8yTI71WkMcXKG6zfGRoDZmAqwgqNus1nKzsHI3ehVwI0hK6xAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by MN2PR11MB4742.namprd11.prod.outlook.com (2603:10b6:208:26b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Wed, 25 May
 2022 14:38:03 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::3d10:f50f:7260:c4f8]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::3d10:f50f:7260:c4f8%9]) with mapi id 15.20.5273.023; Wed, 25 May 2022
 14:38:03 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"steve@sakoman.com" <steve@sakoman.com>, "ross.burton@arm.com"
	<ross.burton@arm.com>, "marta.rybczynska@huawei.com"
	<marta.rybczynska@huawei.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] CVE metrics tracking from the autobuilder
Thread-Topic: [yocto] CVE metrics tracking from the autobuilder
Thread-Index: AQHYcDur1HsaiXPQ60GHOcasOZUNpK0vqZqA
Date: Wed, 25 May 2022 14:38:02 +0000
Message-ID: <28af71230f50b57e01757b55befd9686595c8d33.camel@intel.com>
References: 
 <839fb1eb42b9da12380051c5b27dba90f167e015.camel@linuxfoundation.org>
In-Reply-To: 
 <839fb1eb42b9da12380051c5b27dba90f167e015.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e23e4a84-e53e-4a74-02d5-08da3e5c2c6b
x-ms-traffictypediagnostic: MN2PR11MB4742:EE_
x-microsoft-antispam-prvs: 
 <MN2PR11MB47428F1658B960EF648E3982F8D69@MN2PR11MB4742.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9qU5hskt5AuY03ttoie707uc2SwPrwuf/YztFVAblUtKMVQqG8QBMTn1+BZ0NnHPfNu5DmUw0orFDsD0aqfmkN6hO0navnpE12FrLWrlKsqJL9afSAHcHOPEge5Dqq09XAtE8XU+xhDlL/hXC1TjVxXd84ba6ctZ3lcDUaahaPYuyueIWlOzgJcUXcP7f886G1HkRKrW0xtXmbQYC6mj+hAKSoVGnmyN49OsfIjS+k6zRA7Ax1JOtBkmT+K2eAela9NAx9MyMvyxUbjRTfhU3Sl0otWpCGR2lNHMJK/4xH5CNV3jw2VCdRimPbfYTz44hLuiFG/776SGYpRIVINHV2vhIJIevvQrCEru4se04MY0YUix5k0R3cg20QxYYvfEn9laOKvl7GPk/9D1oE7iIWGNgbHEEyHlVRY2Xo4jTmwDp4rPdDsVOCnN1BUrgssSZnos0vhBWTUjqF5Cjm/am6UQUOmMMC5W7JKdZzWiW/TwsxIRBtduVTtM402aVPdXd5rGNplGr9jSI2Z0bN1rWw1AmswdH3jJM8xlxSItxyPHvSfM3Um2fkDfEvhQxWES0gBCJU6joZ/jATmQ10mQ/wo9aUlSXuw4+MzTzhxesmsJbY/xmiuxWnaF9Lltbe7aVa8mMHRVzFitkMRCPFgNYghOIsFq1KifLH71gzRCL9d3d9dG6l7Z7f97agw+CAiFCpSG6UWq6G6PER8CMY+XCxhu1Q3jQV+8hGXlGOlVvCbt5QKjXLtMlt6NnjrB5D+NPdsadQwrMd+uCelgIo1XW84qwLbo+izCHSVHY+Jax1BxTF1lOOoBCa5MT6RoFFtVIskJ2FHFbFK76BD8Cy14cQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(186003)(6506007)(83380400001)(64756008)(66476007)(38100700002)(6512007)(316002)(26005)(36756003)(2616005)(6486002)(71200400001)(122000001)(82960400001)(966005)(38070700005)(110136005)(91956017)(2906002)(508600001)(8936002)(86362001)(8676002)(4326008)(76116006)(66946007)(66556008)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bkVtSXBDLzg5dmd1YlNtQmlJVEtlcXd0K0lyd0d1Mi9QdWg3c0ZkeHNSYlhM?=
 =?utf-8?B?M0hCUEI2SVJqczcveEFNUTdBZGZ0cHIzSEozOFNSV3g2YzY4a2lCYzBUVnNC?=
 =?utf-8?B?cGFtNUp6MGRvUzB4UWx3aWxibEZlRG5kb2tpdVZ2ZTd2SkhkanZZWWVPMnV3?=
 =?utf-8?B?dkpsQ09OWngwL2J5Yzc0UjlNbUtSclphR3lWRGtvUzFVYXVER1hCaUhWM29w?=
 =?utf-8?B?STZEdUZiTHQ2OUJIZjdUY0ZxM055cVJBSG1SajZJbndwRU1KbUkvL2VoUDU5?=
 =?utf-8?B?NFUzYzM5SWdXeUtuWHRxcGhQY045dHZmOXJPS09EOHhtMUw5SzUvQW9UWEJB?=
 =?utf-8?B?TC9mb2dLUnFMTlcvOXZ5SU0wSDIwOVNVY2luUGdHSXdjTzRWVk9lQkdrSlBV?=
 =?utf-8?B?OGE0ellYNnppcUk5dk4xV0p1SXQzVnh0V0I3WStuVzhISTdKWk5zNi9HRmhK?=
 =?utf-8?B?YWt1Ty9uOG0rMUFOM0RXQ1VqVWd4OVdXSzMyNTFOR094YjV4c3VnZW80eURM?=
 =?utf-8?B?b0xiRmQ3M0R0WUR5dVdlSFAwaGV2ZmFRMjZJVWNMVHBaUStRZ0I5emtqMnpo?=
 =?utf-8?B?aWtmN1pNREJhSHpEL1Q0UFArMzQ3Y1JPL2JUZy82WTVUUmpLRGp0WGZOSmhh?=
 =?utf-8?B?MHJtbzEvUlJZdHhWUXJqdkJ4QzVmSThvdGo5TGNhbEFRbUh6OXhXYkpxN2Q4?=
 =?utf-8?B?alo5MEp3RVhuYjNBcjFkSDlvMTBqMDc5elY1eVpIRUhqeTdjOWw3NzNFK29l?=
 =?utf-8?B?OFlWOXJ3YndOZlNjdVlXZEY5U1ZBZnNTeis4RkxwZHBPbFdqQWl3V2paN2hQ?=
 =?utf-8?B?Q3I2UmVWSGd4QzFjeXZFU2dSY3VHQVdVN2hIK1c2RExwcG11RFFjR240M3Qx?=
 =?utf-8?B?WjBjWVFlSjBaZ0JsTGMvdis1VEFYb0pxcjF6b0tZQ2VJbHIycGtJZXpXRlVw?=
 =?utf-8?B?enRYN1ZoRW9FNzl6OUFTaDVuVEs3ckpXblFGbGhKcmxWOHBhL25WY3orWk1m?=
 =?utf-8?B?OTVhUDBUTmQxOWtFWVJIcnh0eXdEOWJ0TkY3a2F0U3RHQjdIV3hDWm5TdDdy?=
 =?utf-8?B?RXpqeUhiNTBYWEtkSmVRbjZiMDdORkxuYkw0WHZWRGJmUFYzTmpPOXNZM1R3?=
 =?utf-8?B?dVhTNm9mbEVIR05BZWFEK2tPYVlsN3RYYXN3RVN4cEV3d254SFowYzRUOW1a?=
 =?utf-8?B?aTJUMnlQbWVHbUN3UmJLejBIVHdUSzhCSlpDc1lWWHcrbjMzM3hxSFBRVXQ5?=
 =?utf-8?B?RWI0aDJwd1hqUmZhVUxEaktyRkl5UWNJRlMvakUwTmN1OStEZXhMOEVkR1Zr?=
 =?utf-8?B?cFp4WGpvWW1sbmQzMGJ5dW5QM0ErMFoxeFh2dmhUSmlYaW1rUVBmVmlvSkRo?=
 =?utf-8?B?VFRVTkZFUmpGVndYQm5OSGFSbEE2dnJDRHh2dDZaUjByL0dmY3Q0RGZ6a2xx?=
 =?utf-8?B?MjI1eWxMWmxoSmdKcnlEYmxPNUwvSG1HMjBoSjRENmE0WFVKeWNSVGFzendZ?=
 =?utf-8?B?dlduRE5RWUpiQVN3QmdJNmR2VjZvK0p5cHJoVVZsbDRPU2JRUkJZTU1RQ21p?=
 =?utf-8?B?TE1XNllnNzBuVGFkdGRQb2VZU29YYXpIaXZaQ3BQZ1YreE5VQ2dSclZsUkZS?=
 =?utf-8?B?MFV2Qm9jUk13R3Y3L1doWlQ1T0pQMFRaRnVGVjZWcVh6WERPUmFxYkxiaWR0?=
 =?utf-8?B?QUVvSEJETkQ2YTdxazZ1TFlwbVZEZnQ0QTVEMnBjMXV5OWxPeEZveG1HeUpD?=
 =?utf-8?B?cGdyMmxlaVZqRnVoSVlXVWYwWk5OZlp6dFU1TTA3cjB2UGhhaS9vYytkU2VS?=
 =?utf-8?B?Z3AwNzFkWVlHVGVGLzlIZWpRYWtGQXdvdWloZ0wxUmZndmpvdkUxMEFRK1RF?=
 =?utf-8?B?OVZBMkg0RU1MeGJ2UkNuMVMzRnFVN3pJTy9ZMlYyVDMxRTZlL0l6OVR6UGUx?=
 =?utf-8?B?WENyblJhUGNVREZoQldRbXZ4T2pNZG9lWEx0d0E1YXU3bWpBNVZ6TndmYTIz?=
 =?utf-8?B?dFpQNEEraWJHS2plVVpsaXR3QkdQZWcyVlhFbThOTERFV0o1SjNCbFprRGcy?=
 =?utf-8?B?bUdiTTBEMWs5aGFaVktpWmN5Z2JBS1ZIL2xHekJJQjAzMy9WQnN6ZXBJYVJS?=
 =?utf-8?B?SWNKU3dDWFMxenBYUWdPd0VPMmxuWFNtQ1U5WElsb3I5eGVtZ3hyV05qdlNT?=
 =?utf-8?B?aSs1WmZTbG1Wc1ZaSHNna0xDL1ZOV1M3WVVyaCsxWHJHSXV5VXZoM0lCVUl2?=
 =?utf-8?B?UnRWQVZYNXp1SVgyb1ZBeEZZUDAvdHhnRUFXYy9UM2JCNXQzT0ZPWEZEekh3?=
 =?utf-8?B?U2IxZ2FFQXZ3Q3M1TWlHM1BNRk9lZ3U4SmRaK01ZL000VEExSWFTY21mRXE0?=
 =?utf-8?Q?UrUClqKu8UROYHHk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <65E084EFEFDDD741BEF6EC52BFF9DA4E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e23e4a84-e53e-4a74-02d5-08da3e5c2c6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 14:38:02.8845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ikKjrLBCbaIdQBkvJTPRoBfCQ7i45oc/0MtH4xuAj+XSyoKKO1quKyQmoy7zWQsjKurt91w9ImYNCHyeyYlwug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4742
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 14:38:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57186

SGkgUmljaGFyZCwNCg0KT24gV2VkLCAyMDIyLTA1LTI1IGF0IDE0OjMwICswMTAwLCBSaWNoYXJk
IFB1cmRpZSB3cm90ZToNCj4gSSdtIGhhcHB5IHRvIHNheSB0aGF0IGF1dG9tYXRpYyBDVkUgbWV0
cmljIHRyYWNraW5nIGlzIG5vdyBvbiB0aGUNCj4gYXV0b2J1aWxkZXIgYW5kIGF1dG9tYXRpY2Fs
bHkgZmVlZGluZyB0bzoNCj4gDQo+IGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL25v
bi1yZWxlYXNlL3BhdGNobWV0cmljcy8NCj4gDQo+IGFuZCB0aGUgZ2l0IHJlcG9zaXRvcnkgdGhh
dCBiYWNrcyBpdDoNCj4gDQo+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tbWV0
cmljcy9sb2cvDQoNClRoaXMgaXMgdmVyeSBuaWNlLg0KDQo+IA0KPiBUaGlzIGlzIHdvcmtpbmcg
Zm9yIGR1bmZlbGwva2lya3N0b25lL21hc3Rlci4gSXQgaXMgZW5hYmxlZCBmb3INCj4gaG9uaXN0
ZXIgYnV0IGRvZXNuJ3Qgd29yayBzaW5jZSB0aGUganNvbiBDVkUgb3V0cHV0IGZvciBob25pc3Rl
cg0KPiBpc24ndA0KPiB0aGVyZS4NCj4gDQo+IE5vdCBzdXJlIGlmIHdlIHdhbnQgdG8gYWRkIHRo
ZSBqc29uIENWRSBvdXRwdXQgdG8gaG9uaXN0ZXIgdG8gZW5hYmxlDQo+IHRoYXQgZm9yIHRoZSBz
aG9ydCB0aW1lIHRoYXQgcmVsZWFzZSBoYXMgbGVmdD8NCg0KWWVhaCwgdGhlcmUgaXMgb25seSBh
IHdlZWsgbGVmdCBhbmQgSSB3YXNuJ3QgcGxhbm5pbmcgdG8gdGFrZSB0aG9zZQ0KcGF0Y2hlcyBp
biBteSBmaW5hbCBwdWxsIHJlcXVlc3QuDQoNClRoYW5rcywNCg0KQW51ag0KDQoNCj4gDQo+IEkg
cGxhbiB0byBydW4gdGhlIGF1dG9idWlsZGVyIGpvYiBwb3dlcmluZyB0aGlzIG5pZ2h0bHkuDQo+
IA0KPiBDdXJyZW50bHkgaXQgYWRkcyBhIGpzb24gZmlsZSBmb3IgZWFjaCBydW4gaW50byB0aGUg
eW9jdG8tbWV0cmljcw0KPiByZXBvc2l0b3J5LiBUaGVzZSBhcmUgNk1CIGVhY2ggdGhvdWdoIHNv
IHdlJ3JlIGdvaW5nIHRvIGdldCBpbnRvDQo+IHNpbGx5DQo+IGFtb3VudHMgb2YgZGF0YSByYXRo
ZXIgcXVpY2tseSBzbyBJIG1heSBoYXZlIHRvIGFkanVzdCBpdCB0byBqdXN0DQo+IHdyaXRlDQo+
IHRoZSBsYXRlc3QuIEl0IHdvdWxkIGFsc28gaGVscCB0aGUgc2l6ZSB0byB1c2UgdGFicyBpbnN0
ZWFkIG9mIHNwYWNlcw0KPiBmb3IgaW5kZW50YXRpb24uDQo+IA0KPiBUaGUgYXV0b2J1aWxkZXIg
am9iIGN1cnJlbnRseSB0aHJvd3Mgd2FybmluZ3MgYnV0IEkgdGhpbmsgUm9zcyBzYWlkDQo+IGhl
J2Qgc2VuZCBhIHBhdGNoIHRvIGFsbG93IHRoYXQgdG8gYmUgY29uZmlndXJhYmxlLg0KPiANCj4g
QWxzbywgdGhpcyBkb2Vzbid0IHNlbmQgdGhlIENWRSBlbWFpbHMgU3RldmUgY3VycmVudGx5IHNl
bmRzLiBJdA0KPiB3b3VsZA0KPiBiZSBwb3NzaWJsZSB0byBhZGQsIEknbSBob3Bpbmcgc29tZW9u
ZSBtaWdodCBsaWtlIHRvIHNlbmQgc29tZQ0KPiBwYXRjaGVzIQ0KPiANCj4gQ2hlZXJzLA0KPiAN
Cj4gUmljaGFyZA0KPiANCj4gDQo+IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5r
czogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gVmlldy9S
ZXBseSBPbmxpbmUgKCM1NzE4NCk6DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9n
L3lvY3RvL21lc3NhZ2UvNTcxODQNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbXQvOTEzMzI5MDEvMzYxNjcwMg0KPiBHcm91cCBPd25lcjogeW9jdG8r
b3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZToNCj4gaHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWLCoFthbnVqLm1pdHRhbEBpbnRlbC5j
b21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0KDQo=

