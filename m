Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AA76C54E49
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 03:05:36 +0000 (UTC)
Received: from esa6.fujitsucc.c3s2.iphmx.com (esa6.fujitsucc.c3s2.iphmx.com [68.232.159.83])
 by mx.groups.io with SMTP id smtpd.web11.3617.1709694326650855426
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 19:05:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=rTV4j9BX;
 spf=pass (domain: fujitsu.com, ip: 68.232.159.83, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1709694327; x=1741230327;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=d6VjAUFAlK+LcpU4zZtijdISH9wDWVTn8/Tw4sE3K84=;
  b=rTV4j9BX/65BHd6i2EDq467nIUPmhhTDMhkoZsBuawI18fY/rFAo1EAM
   bwGIKiu88SSKipc2injBNzN+29p9nwZLZ6jK1k7acPK7oxNLPMwhCdhnB
   lyfqcoxoc1ToccvppHiMcAhffw88zdLdysdKDMu5eSa+04ENjH/MO8x7z
   +8GppMQKeZxxlvjUmtBbO4Y3NwX+6uhk64UJuzftA30pHOMCtwDDST7Vk
   WG9g/vorLyOER0O1W1MHYjKAyhKNL+Dici9iGw9E4VriW3itPuomB8hfM
   iFxLGYExK2+9QJTdWz7ftNxbpH9ewM4qNlRTvC9fiOBPT6WyxseNWbmF5
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="113141998"
X-IronPort-AV: E=Sophos;i="6.06,207,1705330800"; 
   d="scan'208";a="113141998"
Received: from mail-tycjpn01lp2169.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.169])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2024 12:05:23 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bLPgwHDJAGnkVn3Oua5+jvm9HZduM6p0F/7EHxY13cvnpx23lsY5OyIX2gRN0f7yYTgAhkhE7i1pF5oG9/4Be+vkIMEWoyaQhSz2Pxmo0uCpFq116RTyueNoyzJcrhzMA3L+pI1rEkSvDdul9XGojq0j6TMw6ZM2VkY6Ni+xvESn93QfhqZkc0l5+8U8cFW3JCduBOQcIZ0v7FJ7z49lbCoTpaZ0HwRv1moX/INPWXFJ9gY52yDZKgVV7IQnzcDDJe/TDn99vzLcITzZ1OrosYI5mjtbSgS2X+OFPGf2nNiLNhCL3FPdPUO5O5MLQUTnRjrx6jloCedAcLyVXmZMTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6VjAUFAlK+LcpU4zZtijdISH9wDWVTn8/Tw4sE3K84=;
 b=TLYZHWxTz6ELyu/Gun5PLBg01cZBdY38Qm+oZ/0XQHUv+YLzGc27hne438OqFgxcskT0TgR0x0m1qaCkbGDhGaom2ZlEMNLaI5ucbp6vWdsuAXdmfxAVuCRCkJgBm+yV/27R2M0bWOgCn3nB9+cAg+dCxELQM9snaj9ss8klsee9NvfXucxV8eBxYmNDljeRoZljhrSdeo++X/CFsQRdy/nt4OimIQ/F5IpzI8JQ2+ln6f0L8wRQCkzDiXNq5kcXM5AWjSzySoOAOXib/zu/VrGTMW5rbYjR6DAT/4O8BfLsw1IxtNxoOm/A0GNGWep6tzA0U/n4vT0kP/DbwNdQfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from TY3PR01MB11056.jpnprd01.prod.outlook.com
 (2603:1096:400:3b4::12) by OS3PR01MB6628.jpnprd01.prod.outlook.com
 (2603:1096:604:10e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 03:05:21 +0000
Received: from TY3PR01MB11056.jpnprd01.prod.outlook.com
 ([fe80::4189:9809:9327:afc8]) by TY3PR01MB11056.jpnprd01.prod.outlook.com
 ([fe80::4189:9809:9327:afc8%4]) with mapi id 15.20.7339.035; Wed, 6 Mar 2024
 03:05:20 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"patrick.vogelaar@belden.com" <patrick.vogelaar@belden.com>
Subject: RE: [yocto] [PATCH ][meta-spdxscanner] python3-patch: fix an error in
 kirkstone
Thread-Topic: [yocto] [PATCH ][meta-spdxscanner] python3-patch: fix an error
 in kirkstone
Thread-Index: AQHaVvEbDGMSzOIaakWR4IRATtLxK7EqOCDQ
Date: Wed, 6 Mar 2024 03:05:20 +0000
Message-ID: 
 <TY3PR01MB110562189725A2F5553B99FCDA0212@TY3PR01MB11056.jpnprd01.prod.outlook.com>
References: 
 <20240203-fix-build-error-in-kirkstone-v1-1-fc36c4870de5@belden.com>
In-Reply-To: 
 <20240203-fix-build-error-in-kirkstone-v1-1-fc36c4870de5@belden.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2Uw?=
 =?utf-8?B?NTBfQWN0aW9uSWQ9NWVlZmYyZTAtMjA0My00MTZmLWJlMWQtMWU0YzYyYWZi?=
 =?utf-8?B?MTBlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRm?=
 =?utf-8?B?ZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5?=
 =?utf-8?B?LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxlZD10cnVlO01TSVBfTGFi?=
 =?utf-8?B?ZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX01ldGhv?=
 =?utf-8?B?ZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRk?=
 =?utf-8?B?LTNiMGY0ZmVjZTA1MF9OYW1lPUZVSklUU1UtUkVTVFJJQ1RFROKAiztNU0lQ?=
 =?utf-8?B?X0xhYmVsX2E3Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9T?=
 =?utf-8?B?ZXREYXRlPTIwMjQtMDMtMDZUMDM6MDQ6MjlaO01TSVBfTGFiZWxfYTcyOTVj?=
 =?utf-8?B?YzEtZDI3OS00MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIx?=
 =?utf-8?Q?d-81e1-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11056:EE_|OS3PR01MB6628:EE_
x-ms-office365-filtering-correlation-id: 0b1f09e1-9e90-4406-cfbb-08dc3d8a4274
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5e6Tnpvh/EWY1/GvzdFrgqY7h+7AMPTFvPiJC7yh5J35tXlQGgIclGYWJnfdpcRj8w2dJ3aB950ZazBYH+XOH89o4jGgY1t32F8X5XVEbL/AGGFMoEVbWMd/HMnevKZVSIDXOh9Ybao9KAYYoFfZlNCa98rKaQnOkTLnhnQA5KVkfXMVAnXsva6yzl9jJGdapuIcWE2FtJ4KJ+BDwW0mI2TDHigzF5Xr+QIQ8pTETFbGg+cmM5l5WLf0Txsu+Qv4PsGnB2sv9IYJll/KHIdXbtV39GSjDMrgsOTWEezDu/R2V1oYvj3ZzF1VdAiBSGHhMA3ob0P7ZC57p8PZN+Zz2JGhoJ/pV7Fz55j5In0uq6sYPuHFuJ/gp7RgSHYDsVlciwtfThCMlKN1i2CVKgORIyVqVrhseUu+a/RBR3SgsAl8XIqQyHwTNKEF6CiL/4LMYkaNo0ULqhfI07Et1xiZlGmGIESYCngiGv6fuYN4rmGY/WWR4XcuYSJn78BZJrisWkYF+VNO1JdHwsr1nj8ar/kjUrp85jBZnLbZkEBBMMS9tJWTqlm/bTpOoAB3w4ltK9O9lf1RTn3d1QxDbXbMv6/04CUebs4Xl8QDTMxg3UsUJsY/Ngv+jshg4WyM8/7U82q7ESCzHEU5oODuJi9bX0mKuUEIVRUPvSgtj2mJFKV6JIGbPZUNRVYUxFypNNSjMqX8lBS2ijJuzlKaiYExM6t9VaLWOXx8NOxQWsK276HIYjbKmpm2+ErQ/MmN0+Nk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11056.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1580799018)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dmtRcEZrUlZuYjNYbTlvMUlzODN1aHdZdTh1YW1CY2J6QUc1MVhQVDFWeG5l?=
 =?utf-8?B?TG5MdjBOQ1Z3ZmJhVVA1OFZZby9FRktLbjFldHdWRE16YVRQYm5HeGF3SVBQ?=
 =?utf-8?B?aDhLZDUvckFJVU01N2ZYUUxBSkFyUVpJWGFGSzdRUS9vRi9INEF5emFObkhq?=
 =?utf-8?B?eVhaYjJrMGlHNktIT3hhRlBsSmo1QmZxdWg4NGdUTmpYMFlLQ1JKeklLUU9v?=
 =?utf-8?B?Z003RGtGOEVGcVJnOHNsOVVDNVU5UnZsZkcreGUwaHAweCs4anFoaDFyU0FP?=
 =?utf-8?B?NUpUR1J3UnZ2VjJDNm1KU2VIZ0lNODFaQ3pXb2pnQW1ZSFp3SUR1N1BVWExG?=
 =?utf-8?B?NUttOGVwWWd5MEcxOHdjdm5FcHp1cW1iWDc0Zk12ZlBOZ0QxTmJwYnp3aEdB?=
 =?utf-8?B?K0RnUUNXckdLL1Mxa05zTWMxeENNYld0NkpvT21HYURnT1BxeTBWT3VqTUNu?=
 =?utf-8?B?MEpJNVRqOGVTNEZiVGJtWE50N28raWVzVGFMcXhYQWcvWml1R3pNQzF0Sk9P?=
 =?utf-8?B?Y1VPQlQvMEpOS1d6bnRKdHhqd1BWMjNTbW5wWEJsSFRrZnJSRUNrL2hRdHhy?=
 =?utf-8?B?NTJqUUovWDUrdm5Ua1k4bC9ObVpNanR1WmxEcmhNdEZ0bC95TmduVjM0OFky?=
 =?utf-8?B?RVc5VHV1aTJYRU41UFhBVW5uM2VxL1pvTEpGZzRQdTlSV1hnekYya2xqeGpq?=
 =?utf-8?B?Um1EZFVrQXRIL0JOY3B5MXlYY2hzRE43Y1dIaS85dEU3NmdReEVZUjlaNVpN?=
 =?utf-8?B?bG0zRURPWWZLVTdEV0hwU1RocklrQlcwZno5bmdYYmJqSXNNMUthQmYxY1hi?=
 =?utf-8?B?bUxqYW1LbW1sd1ZRTTZTNGsrZmxwV2VjQXpMRWl0NHR1NTBsSTJtb0NXUE1z?=
 =?utf-8?B?ckJtbVhpUC94ZXNPbHY4K1NoSzBwMXNRWlZLN0JURXZlSWY1NXR2aGNvdkJZ?=
 =?utf-8?B?ZGZhN0lHNU94d3R2ZDk3cnpMcnI1VEk5QVB2NGUxWkpSaEV2d29hdjl6V3Bk?=
 =?utf-8?B?T2g4ZnRYZG9CNTFyTTVhL0ZsdVNaQ1hZbE5yTDRZaTJ5MlhWVXd1V0ZiOGd2?=
 =?utf-8?B?QkVMNlljcHhibmFOL3VCbm51em9MdUNhYkR3ajNKS2NuOEhjWXNDK3QxRTNj?=
 =?utf-8?B?WGNuOXpSMlphWDdmaG9FMHdORVRjSHdZWXh3TjFxcjU1N3Q3Rit4WUh4Z1B2?=
 =?utf-8?B?WEkrbnFYM2tFeTczMzZuaVJmYnNuSHUyR3A1Q2NSK3BlOFMxbENhaW0xUVdv?=
 =?utf-8?B?eVoxcjVSY3UwNDVzMFJQNnR4MHdtN1VNcDlUbmJieUJTM21jNUhMZWh4SUc5?=
 =?utf-8?B?Vkt0OEZybk9ML0NEbTh1aUwrb1hObFZncklBdGV0eXhKMHd4Snc1VHlJc2FL?=
 =?utf-8?B?OFBjSXF0ZkdBZzVvbDZrWDYrRmxzWXBTa3JGVHhwYTZFTmlDOUxGZmdHRjZD?=
 =?utf-8?B?Tk1BTkRxZVRialZNTitEN3JpQTBvdmlaaXl1ZWlYVUVMTTd0cjl2a1g1R25s?=
 =?utf-8?B?ZUJJZ3JMbWdYbWpLcXhhVzZNY3VXVUxLTDNRZlhNZ1JIYXM3L1d6WFkyMHhl?=
 =?utf-8?B?RWk1VXpRNnJ2QXdaLzRta1FycnpVYnNTUEZnSDVJQWFYa25SV0hRWEd5WG1X?=
 =?utf-8?B?ck9tZWdBWitNNkZ1T0Q3NGpGcDdKdytYUEhSRURTcjhQeTZaRG9xaEZjQ2V4?=
 =?utf-8?B?OHo5b2hmREJ3SmhBcHNiMUVkdElEeVJiVzE0UzQ2WFoya2ZvbW9ZQWU5K1NJ?=
 =?utf-8?B?TlI0Y2xiOWpDYm9UTUFXOS9INEhZM0h0aHFjcEsyZStjK0tOSVRRdlpUM3k3?=
 =?utf-8?B?b0ZYWU5qc0NRVFF3L1ZEem42ZDkxL2hlZmhwazh3QzBwMFNXN0wzNE5tbFBn?=
 =?utf-8?B?Y0w0SUdsZXprRmYrK2hNR0ZMTlc2Vnk4a1RsdUdLM25KeEhjcE1KOWp6T2Jq?=
 =?utf-8?B?SkhCYjVkT0tDa2dhbUpTazlUMHdQL01SQUZBMEpUamcxSzB5dXNWMjVTY3I1?=
 =?utf-8?B?ajBsclI4M0d5MWZQdzhqdEdOeElhN2dQNHI2NS8wZzloaHZ6Y2ZwT05RSDdv?=
 =?utf-8?B?aDdzTXNLVGpjRG1sUDB5MVBuZXBrS2Q0S0VqWjR6WStEcHRQOFovRGR5T3or?=
 =?utf-8?Q?D95j8h/UjBxgHRrk4C9JsAlzh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	aPwLpiNIbLg0987K0CF2qMMkgVIWDKOS06YGQS2bo5CWAUTYdZ79STmO/eET8DR3C6qF0gu8APMR0Fqre7EjpXBxNBuu9UGdmeoQfcKJKm4WTodOGoM6FmUNtndmZW4o8+oSSfFOK1rgxt4BJRSD4uVkcGMdH0UYZ98mt036qZyfDsaCzWiNIYVK+T9YNyBX/h/TuNCdm42XOuIHYydlbSNq8bQokE2BwGQzphH4pbnOUYHlMUuPmdgkqSzz2ymSbQUOr0pH0JvU8QkLXT8YFCBN9DsmhkAJdS+tZoJqvT2ppliWo19b8bfrhDUtQ9jwvtJha1cpvatCVJabL9U+B8j8cPzgHoJoaRXl7i+mTy2ES8xUu33wUCFFflhbrIOBboxzLH9TtY1WlGJk81dLvyM9W4EytYi7zyJbV+8iK93RFpULTj2wMNlripgB4bPb2cHuEPpKO7WPfYULVSoqBap61aPngccIXB3m2DZ9PkaqjBAjZXt04CYQBQ+YQ6fBhoHsi4eOB8Y30piGRJ2tu2jgT1J3UzrREMUZyo9t6jL2E3tK/VB5wtRZIttDXp6cb1p/GyUJYaVEgVz1pSHwSjrGnbmzHK1QcXX4BZY2FqytF8Q9IWl0TY/Y7kN/JBwG
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11056.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b1f09e1-9e90-4406-cfbb-08dc3d8a4274
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 03:05:20.8933
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k1fI2BDmjrVxOv8HqPyGomF9aqSFYA8qjOorZd5AA3v4qhznhusp/o8DMhsS0o61g6r1G/3rmXmdgpuOCIS9jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6628
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Mar 2024 03:05:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62688

SGksDQoNClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4gTWVyZ2VkLg0KDQpMZWkNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYNCj4gT2YgUGF0cmlj
ayBWb2dlbGFhciB2aWEgQjQgUmVsYXkgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU2Vu
dDogU3VuZGF5LCBGZWJydWFyeSA0LCAyMDI0IDY6MzQgQU0NCj4gVG86IHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc7IExlaSwgTWFvaHVpDQo+IDxsZWltYW9odWlAZnVqaXRzdS5jb20+DQo+
IENjOiBQYXRyaWNrIFZvZ2VsYWFyIDxwYXRyaWNrLnZvZ2VsYWFyQGJlbGRlbi5jb20+DQo+IFN1
YmplY3Q6IFt5b2N0b10gW1BBVENIIF1bbWV0YS1zcGR4c2Nhbm5lcl0gcHl0aG9uMy1wYXRjaDog
Zml4IGFuIGVycm9yIGluDQo+IGtpcmtzdG9uZQ0KPiANCj4gRnJvbTogUGF0cmljayBWb2dlbGFh
ciA8cGF0cmljay52b2dlbGFhckBiZWxkZW4uY29tPg0KPiANCj4gUGF0Y2ggcHl0aG9uMy1wYXRj
aCB0byB1c2Ugc2V0dXB0b29scyBpbnN0ZWFkIG9mIGRpc3R1dGlscy4NCj4gVGhpcyBmaXhlcyBh
IGJ1aWxkIGVycm9yLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUGF0cmljayBWb2dlbGFhciA8cGF0
cmljay52b2dlbGFhckBiZWxkZW4uY29tPg0KPiAtLS0NCj4gIC4uLi8wMDAxLVBBVENILXNldHVw
LnB5LXN3aXRjaC10by1zZXR1cHRvb2xzLnBhdGNoIHwgMjQNCj4gKysrKysrKysrKysrKysrKysr
KysrKw0KPiAgcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uMy1wYXRjaF8xLjE2LmJiICAg
ICAgfCAgNCArKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQNCj4gYS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9w
eXRob24zLXBhdGNoLzAwMDEtUEFUQ0gtc2V0dXAucHktc3dpdGNoLXRvLXNldHUNCj4gcHRvb2xz
LnBhdGNoDQo+IGIvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uMy1wYXRjaC8wMDAxLVBB
VENILXNldHVwLnB5LXN3aXRjaC10by1zZXR1DQo+IHB0b29scy5wYXRjaA0KPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi45Zjk5NjNmDQo+IC0tLSAvZGV2L251bGwNCj4g
KysrIGIvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uMy1wYXRjaC8wMDAxLVBBVENILXNl
dHVwLnB5LXN3aXRjaC10DQo+ICsrKyBvLXNldHVwdG9vbHMucGF0Y2gNCj4gQEAgLTAsMCArMSwy
NCBAQA0KPiArRnJvbSAzMTRiZTY3NWE5MzNlZDI2MjY4N2IyNWVhNzBmMjNkMzQ1NGUzNjUxIE1v
biBTZXAgMTcgMDA6MDA6MDANCj4gMjAwMQ0KPiArRnJvbTogUGF0cmljayBWb2dlbGFhciA8cGF0
cmljay52b2dlbGFhckBiZWxkZW4uY29tPg0KPiArRGF0ZTogVGh1LCAxIEZlYiAyMDI0IDEwOjU5
OjQ1ICswMTAwDQo+ICtTdWJqZWN0OiBbUEFUQ0hdIHNldHVwLnB5OiBzd2l0Y2ggdG8gc2V0dXB0
b29scw0KPiArDQo+ICtJbiBQeXRob24gMy4xMCwgJ2Rpc3R1dGlscycgaGFzIGJlZW4gZGVwcmVj
YXRlZCBhbmQgaXMgc2xhdGVkIGZvcg0KPiArcmVtb3ZhbCBpbiBQeXRob24gMy4xMi4NCj4gKw0K
PiArU3dpdGNoIGZyb20gJ2Rpc3R1dGlscy5jb3JlJyB0byAnc2V0dXB0b29scycuIFRoaXMgYWxz
byBhbGxvd3MgZm9yIHRoZQ0KPiArJ3doZWVsJyBiaW5hcnkgYXJjaGl2ZSBmb3JtYXQgdG8gYmUg
YnVpbHQgd2l0aCAnc2V0dXAucHkgYmRpc3Rfd2hlZWwnLg0KPiArLS0tDQo+ICsgc2V0dXAucHkg
fCAyICstDQo+ICsgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
DQo+ICsNCj4gK2RpZmYgLS1naXQgYS9zZXR1cC5weSBiL3NldHVwLnB5DQo+ICtpbmRleCAwMzA3
YWZkLi4xMjg5ZjI1IDEwMDY0NA0KPiArLS0tIGEvc2V0dXAucHkNCj4gKysrKyBiL3NldHVwLnB5
DQo+ICtAQCAtMSw0ICsxLDQgQEANCj4gKy1mcm9tIGRpc3R1dGlscy5jb3JlIGltcG9ydCBzZXR1
cA0KPiArK2Zyb20gc2V0dXB0b29scyBpbXBvcnQgc2V0dXANCj4gKw0KPiArIHNldHVwKA0KPiAr
ICAgICBuYW1lPSdwYXRjaCcsDQo+IGRpZmYgLS1naXQgYS9yZWNpcGVzLWRldnRvb2xzL3B5dGhv
bi9weXRob24zLXBhdGNoXzEuMTYuYmINCj4gYi9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9weXRo
b24zLXBhdGNoXzEuMTYuYmINCj4gaW5kZXggNjYyN2EyYi4uNmU3ZmYxNSAxMDA3NTUNCj4gLS0t
IGEvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uMy1wYXRjaF8xLjE2LmJiDQo+ICsrKyBi
L3JlY2lwZXMtZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjMtcGF0Y2hfMS4xNi5iYg0KPiBAQCAtMTIs
NyArMTIsOSBAQCBTUkNfVVJJW3NoYTI1NnN1bV0gPQ0KPiAiYzYyMDczZjM1NmNmZjA1NGM4YWMy
NDQ5NmYxYTNkN2NmYTEzNzgzNWMzMWU5YWYzOWE5ZjUyOTJmZA0KPiANCj4gIGluaGVyaXQgcHlw
aQ0KPiANCj4gLVNSQ19VUkkgPSAiJHtQWVBJX1NSQ19VUkl9O3N1YmRpcj0ke1BZUElfUEFDS0FH
RX0tJHtQVn0iDQo+ICtTUkNfVVJJID0gIiR7UFlQSV9TUkNfVVJJfTtzdWJkaXI9JHtQWVBJX1BB
Q0tBR0V9LSR7UFZ9IFwNCj4gKyAgICAgICAgICAgZmlsZTovLzAwMDEtUEFUQ0gtc2V0dXAucHkt
c3dpdGNoLXRvLXNldHVwdG9vbHMucGF0Y2ggXA0KPiArICAgICAgICAgICAiDQo+IA0KPiAgaW5o
ZXJpdCBzZXR1cHRvb2xzMw0KPiANCj4gDQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogOGIwN2RmMTUz
NWZlMTIwM2IwN2ZjODdmOGM2YTFlMzQzMTFlMmExZA0KPiBjaGFuZ2UtaWQ6IDIwMjQwMjAzLWZp
eC1idWlsZC1lcnJvci1pbi1raXJrc3RvbmUtYzkxNDFlOTQ3MzFlDQo+IA0KPiBCZXN0IHJlZ2Fy
ZHMsDQo+IC0tDQo+IFBhdHJpY2sgVm9nZWxhYXIgPHBhdHJpY2sudm9nZWxhYXJAYmVsZGVuLmNv
bT4NCg0K

