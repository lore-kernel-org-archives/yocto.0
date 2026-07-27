Return-Path: <daniel.turull@ericsson.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E16BC531FC
	for <webhook@archiver.kernel.org>; Mon, 27 Jul 2026 06:28:31 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.37])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.25318.1785133705120338733
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jul 2026 23:28:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ericsson.com header.s=selector2 header.b=G1HBV8On;
 spf=pass (domain: ericsson.com, ip: 40.107.159.37, mailfrom: daniel.turull@ericsson.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r+EVAPanbhwuoZp509k9HRd9CcLf88xqCECR7Z1VREM+DKokJa9ed81phuZtqlvVArejvNV/RWT1aiQxBTmpR90E2Er8SqW16Qny/6VMshfXhDgmv4VrfUSRQhs3CmKegLvMF2iPvtlWlGyQrOoxr6U2vC5Cq5aacUs+bu4jKGBfTCt/pr0w6Qwou0yFJMWw1epIuB6tWxPmwexgvKiXy5BAsOQ8R42HkFMNG6vPc2W7GWLmZwVQO7Y6b6TzGP/71VqyY2VhJUh13BN1ea3c0MZdyeghb7DKZ/Gr6uHtr6z2ISKkMJSkI+29L68RsMfuI7RuCwhT7+wTnajjT5p/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yWm1eRrum6pdpRdnr8Eo1AQDiRofZ7UOZ/iRruzBNgM=;
 b=QW70BwQi/JiUcgxWyS41v0JQVCRd7WZH2kCHzM9m7bsRntwWITvyvNu0tTULv35suIwylrXR6QrlHRUYV6p6YZpLtBYxXiVf0FRtKKRve46AKY5gDENQ6eBq/fpfjCsZ+rkNeqNgUuv0Eq7MQPWmvZmh4+v6pY1o46G30ELARfdsaw6SPPinLmghwUvtzY4hKRxUMf6L9Uo9lINDrLGqL4RZCakSHIDJrbX/ojeAJn67BaWUD5N5PAzyRGVKafyU9773Sye4eBMLyQwKIr2OUAJ1Ki9+WjlBiStRyhY+5Z5dZXUJN8lq3ohGJghexdTMr0/XkI+g5zLXNHmBFU9fTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWm1eRrum6pdpRdnr8Eo1AQDiRofZ7UOZ/iRruzBNgM=;
 b=G1HBV8OnWAsj5MHpfdnqTyh16NAez8wa5HcfT/iU2ymFI5DNTeUW/tetwKKrFCuU3MOLCtyEeYmCvXcwAcCouc65dCgxD96vmEZYg8kIPqUHpJHY9Vr0JOidLC1bfkmKIdiHFKLFjeVGC+UqchdZ1U/iY6HJl1bqsVJQmpACcAKm9pr11/1wB9KKsxMI7Kk+/81oM4xReIpycCxH6nUyKzdx/HUfe0NYAy/5dRKGEuTATw+pbRi3wLwskoeDGUcrT94N+DG6QSN6wZZKDdZDOwtoUZWwoy5l2vWZdYgMkpOJ9DRgOi4e2deCYTI08qXfRR2WFmp7m7fa3BB6uT12Vg==
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com (2603:10a6:102:4af::6)
 by GVUPR07MB11781.eurprd07.prod.outlook.com (2603:10a6:150:333::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.270.12; Mon, 27 Jul
 2026 06:28:20 +0000
Received: from PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7]) by PA3PR07MB10721.eurprd07.prod.outlook.com
 ([fe80::afd3:17e5:1663:7ce7%6]) with mapi id 15.21.0270.009; Mon, 27 Jul 2026
 06:28:20 +0000
From: Daniel Turull <daniel.turull@ericsson.com>
To: "hfranco@baylibre.com" <hfranco@baylibre.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yocto-security@lists.yoctoproject.org"
	<yocto-security@lists.yoctoproject.org>
Subject: Re: [yocto] Is it possible to correlate CVEs with packages instead of
 recipes?
Thread-Topic: [yocto] Is it possible to correlate CVEs with packages instead
 of recipes?
Thread-Index: AQHdGr0+l4yDcMBJWE6kB74exRxf0raA7MCA
Date: Mon, 27 Jul 2026 06:28:20 +0000
Message-ID: <4a4d59b1a8b164fb6c709617485ddf220be6596f.camel@ericsson.com>
References: <amIwAyJHJmT4jWY8@hiagonb>
In-Reply-To: <amIwAyJHJmT4jWY8@hiagonb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ericsson.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA3PR07MB10721:EE_|GVUPR07MB11781:EE_
x-ms-office365-filtering-correlation-id: 1482988c-f7d7-4414-29d4-08deeba84096
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|23010399003|1800799024|10070799003|376014|366016|11063799006|5023799004|10067099003|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 
 vPhJhakf9kSYpH3kE2HLOntRIOZ/NVuPwsbutzAiPbrIXi9eF44NeEKGYt1y8W/6PzH9KKbTqXtctbYhMFsbKDQFK5u7vCnzC6tcVwQtKjRvqmWFXEXpxFgMG1M2gZ4YHZ0JjbKDVJS0qtaiiuW7DpeXd5UT0hfmgvkTiS0bO1T4QzPPwe/5nAwc2qnp1ekvivG5khSn34sUuRADxds/NDlY/wFxQ8NdQHS5UHBUvNHmY/FyVftBlq4bJDFF2kLG1WrIVoSCKtPF1tS5oPA3psS9o8oyf+2jzQwZrXsp69AqnXQyaI4eDRpd72iscR9N1nzXj1VyoJTDxYSY9AWKX9uHhS8fcwj/SfZkypo4JfDOmkGZVK/owSVhJr9QYp+ei1hCoH5O2RRT3fFGFfDQlBXTeaNP27+T0sGMyins5ZFE2es50mF3YiA/c/tCT8Ls/G2GxyCFQBughqmjJzs3o/v2uiRGY61+AeibDQ+ZVxd05AT5EkPU45YXTBvBjPeA7nTv0IK9srNLCR7lZxWcMPlIX+N3uYwxOxMf68iPCeVqVrL+g5l0BArKrPrv6olvdbOULvwKqMpmU2Z/RTgpsiuI8DBHcdOlw16z8la22R2Uf/M6HANIBrXEtFnBuAEObHspUHvph4fJVrUN3Q2fTCDkFKTpTRYC0AirjwdCX/CXrIyTEFJJwX55kZ0UOlMWuGDFqZNhQ9sK+bANQUFalqHQqCoH1dqJ6M34nqSqwUY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA3PR07MB10721.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(10070799003)(376014)(366016)(11063799006)(5023799004)(10067099003)(56012099006)(22082099003)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UUttQVhkNFdHeUVzVVFxVGpFeDAzRzU0TzI2N1FDQTI4NUVEUFFoTStQeEpT?=
 =?utf-8?B?enlLSlAxdHJ3TFYvZFJwSW9COFY5QTJkcG03UnpmRGRXK1F6RHkwc0ZacUNs?=
 =?utf-8?B?U2dIWVlZMnlkZjNmUXdQSDVWWEhtM0hNaFNwR1huRDZTYnY4YXJvRm1SYkdR?=
 =?utf-8?B?UjBBVmJOeWFaZlNJc1dsRjJVRGg1OFQ4a1R1TDdBVXljR095Qk00WGZxaGpm?=
 =?utf-8?B?eTZReTl4dkhWaUdKcHVMaW9pVUgrNVNoSjc0VjNHYmplVnRxbDBlMW92WUMz?=
 =?utf-8?B?NnJwWmxsZkg2QUdyeUM0VFJINCtQUHV1NHBaa0t2TDlJdnl0VTU4MnNndVVu?=
 =?utf-8?B?WWRGYXpIekRtL1NqMzFJRitrdVF5NmVkS0VxekpWdUd4WFFGbVdSQkV4U0V1?=
 =?utf-8?B?aUlTcjZvOGdjZkVybWU3QitqYmJyNnBURFNFRFp4Vk5aaTF3ZnZsRW5YaWhj?=
 =?utf-8?B?dVNKUkFRYlhzaVNwdjBnY1F2RVJQVmRPTklsQWhSNk8rUlhsbHM4V0hjQUYw?=
 =?utf-8?B?aHh1ZWhrMWxqRVVqZ05WVFkyRld5Wm9RMk9DanFjaHJlYi9lcTl4TjhTVDBM?=
 =?utf-8?B?aUd3YTU3dVJycDZmSGVuQ1hUaWlXaHFWZEtkTTFyTkREdkRXRHJZcVlwRkRp?=
 =?utf-8?B?dTU0Nkp2M1JvM09ORWpFVDRBTzU3aTFNeFR2cGlqL2pvZVU4RGpUTGp0dDdG?=
 =?utf-8?B?TmNVdXpiVDhiUkc2T2kxYktjR3RSbGlHZFpBRFZLejZROGxYUkJGcTgvOG8y?=
 =?utf-8?B?V3hla24rQXNFOERkWlZXK0dodTZ4YTZYQy9qMGZjdE5KSkpBbFdEU0ZoRkEx?=
 =?utf-8?B?OWo1SmFwWmc3MzFydUl5WXlHd2lwR1BsTXVDY3RWTkRsV3NXL25MM3lYOVkv?=
 =?utf-8?B?ckhoclVndFRsMVRnejNYc2lQY0VHZWhsQkhTSEtaQkpIYnJHQWlVZ2U2U0RJ?=
 =?utf-8?B?Z2JsNnllRWd6Y1h0RmV4SE1iZFRES1IyaU1nNFJBOUZLQ2sxRmkxKzRVTGEr?=
 =?utf-8?B?YjQ1S3hoSGpSRnlKS1NNSVZoRmQvSXFBYXBZeXJrTi9ObU5mTG1WVVN1Ny8w?=
 =?utf-8?B?UStkcXd0OWlTdk1yM1Ezb1dWTkdFVnJKcXZxRW9ZNEJQOERCL3UzTHc4a05q?=
 =?utf-8?B?TWtVak1yTDJUWjN1WmU1ZjFGeDBVOFpzYVdZSU92MWJqVjhLckl6K2NGSksx?=
 =?utf-8?B?TUpnejM5WGtmcXIwTFd6dEFHVDBYL1BHREtSa1NyREIrRmpnN0JUK0NXWmpF?=
 =?utf-8?B?U1o0QTRaZWhGclRXbDNyR3hpYnBMSy9rdzYwQzV4enZFNm9oS1pOSUtkNHJn?=
 =?utf-8?B?MmxKV004MEpVQ2dxRFFNYkV2UWNudE9pQTdhN0FJNUg1b0t5U0tLL3NsOVRS?=
 =?utf-8?B?MkEzT1BEQmVtUnA4QWF3MkhyVVBkWkdibnMrSEFtV05FN3hlOFZhbnVtSFho?=
 =?utf-8?B?WWFha21odlNNWjN2THRwakJ0emhhTWE4SGtLTWJRS0JpZFQ0NkVkMnA3WTlL?=
 =?utf-8?B?a1dLTVZzdEVBQmQreUpISWFBRDdNUzdhOWp2VExKQVo5SDh1Y1ZYeHVvdG5D?=
 =?utf-8?B?a29tWHFkU2xTcGtTdm1KQ2N1ZUYvb1BIbTZ4WktyUHZwSkNNNzBZVlpxZEZF?=
 =?utf-8?B?S0N4cTR6MjQ5M3hyaVNKQ0RxQXlxd29vanJZS2dJMlZDYjcxcmlBQVU4dnRL?=
 =?utf-8?B?emtmMHB6cVBQZjJRMW5MS1ZkbUJRanRuaUcxM2tQeXUxNWtEdko1NGhpV0RV?=
 =?utf-8?B?cEZDSW9zT1pCMk5ZK1FLdmhkcFBkNWVKbXFlOXpEbEpZYS9VakxHN1BjRWhS?=
 =?utf-8?B?Z0RHVnBDbE5YVCswaWVHdjRUWXVrU0ZjeWNyT1JOWjJtMHJBeWtzeUtlZmR5?=
 =?utf-8?B?R2JzKy95K2dXdHZ1cTNodDdXQjdGZjVhaDBDQ0w2d1VqdC9xUGticGpOdHJU?=
 =?utf-8?B?cjNGdmltQkdJM2Y1QmhJcm9neGZZcGxpK0hQMjE2NmtGT0dhdFAvOEtoR1di?=
 =?utf-8?B?Ri9waHFPc3g0L2VRY3YycXFXMElPZnZqaDFGdFhGOVd5cXBPUE9iNTU1b2FO?=
 =?utf-8?B?bVpiMWN4YXlBRDJQQUJhTndIYzYzd29ISzlZWTRNNi9HN0pGek5IclN4WlBx?=
 =?utf-8?B?VnU5YU5YZHV3VVFWZklwOHJGZ3ZzalZ1U2U4VTJzZy9JL2REdjFHOWFNdkJE?=
 =?utf-8?B?Y0JURDlqaGtaVXpOd2wzbmEyalg0RDlvM0hqNWRXeHRWYnA2TEZkOVNYWnJh?=
 =?utf-8?B?UjV3eTBzZHlmeE5tTXhHQVdodFU0TU1nKzdFSC94aGVBWmFvZHoyRjlhT0Zs?=
 =?utf-8?B?YWNKVVB5OXlXRW9uQW1uM0NoOTd1b2JvdyswNjJ4UEZoMVNFbU81WVJucWpU?=
 =?utf-8?Q?pmOOIftwoNm4Q2xcQIb5voUK47v5Zioegr9VxfYH2D4Bl?=
x-ms-exchange-antispam-messagedata-1: BbNAVWG4Fm/VwinR2/20gw37hm+XDJjM4EU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA8EF6189ADD8A41941D66742C0283AD@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA3PR07MB10721.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1482988c-f7d7-4414-29d4-08deeba84096
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2026 06:28:20.3786
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jXAWmyZvoyeTOFs4UxESdPXe3fz9qgKJ+5a8ax/y3m3jqVCCgNsfquoMxro9xPVJaUUSENrDzmyCaDy9W+EzfZ5us+ui5jPXlpZObFmFs3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR07MB11781
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jul 2026 06:28:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66663

T24gVGh1LCAyMDI2LTA3LTIzIGF0IDEyOjI1IC0wMzAwLCBIaWFnbyBEZSBGcmFuY28gdmlhIGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IFtZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWls
IGZyb20gaGZyYW5jbz1iYXlsaWJyZS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy4gTGVhcm4g
d2h5IHRoaXMgaXMNCj4gaW1wb3J0YW50IGF0IGh0dHBzOi8vYWthLm1zL0xlYXJuQWJvdXRTZW5k
ZXJJZGVudGlmaWNhdGlvbsKgXQ0KPiANCj4gSGVsbG8gYWxsLA0KPiANCj4gSSBhbSB3b3JraW5n
IHdpdGggYSBwcm9qZWN0IHdpdGggWW9jdG8gV3J5bm9zZS4gQnkgY2hlY2tpbmcgYWxsIHRoZQ0K
PiBSUE0gcGFja2FnZXMgaW5zdGFsbGVkIGludG8gdGhlIE9TIGJ1aWxkIHdpdGggWW9jdG8gSSB3
b3VsZCBsaWtlIHRvDQo+IGNoZWNrIHdoaWNoIENWRXMgYWZmZWN0cyB0aGlzIGltYWdlIGFuZCB3
aGljaCBiaW5hcnkgcGFja2FnZXMgYXJlIGJlaW5nDQo+IGFmZmVjdGVkLg0KPiANCj4gWW9jdG8g
aGVyZSBpcyBiZWluZyB1c2VkIHRvIHNlcnZlIHRoZSBSUE0gcGFja2FnZXMgdG8gdGhlIGltYWdl
LCBhZnRlciBhDQo+ICdiaXRiYWtlIHdvcmxkJy4gU2luY2UgWW9jdG8gbGlzdHMgdGhlIENWRXMg
cGVyIHJlY2lwZSwgdGhleSBhbGwgYXBwbHkNCj4gdG8gYWxsIGJpbmFyeSBwYWNrYWdlcyBnZW5l
cmF0ZWQgYnkgdGhlIHNhbWUgcmVjaXBlLg0KPiANCj4gRXhhbXBsZTogJ29wZW5zc2wnIHByb2R1
Y2VzICdsaWJjcnlwdG8nLCAnbGlic3NsJywgJ29wZW5zc2wtY29uZicsIGV0Yy4sDQo+IGFuZCB0
aGV5IGFsbCBoYXZlIHRoZSBzYW1lIGFmZmVjdGVkIENWRXMgZHVwbGljYWRlZCBieSBlYWNoIHBh
Y2thZ2UgaW4NCj4gbXkgaW1hZ2UuDQo+IA0KPiBJIHdhcyBub3QgYWJsZSB0byBmaW5kIGEgZ29v
ZCB3YXkgdG8gZGVkdXBsaWNhdGUgdGhlIENWRXMgb3IgdG8gY2hlY2sNCj4gd2hpY2ggcGFja2Fn
ZSBwcm9kdWNlZCBieSB0aGF0IHJlY2lwZSBpcyBiZWluZyBhZmZlY3RlZC4gSGFzIGFueWJvZHkN
Cj4gZmFjZWQgdGhlIHNhbWUgaXNzdWUgYmVmb3JlIG9yIGhhdmUgYW55IHN1Z2dlc3Rpb25zIGZv
ciB0aGlzIGR1cGxpY2F0aW9uDQo+IHByb2JsZW0gd2l0aCBhbGwgdGhlIHJlY2lwZSBDVkVzPw0K
DQpZb3UgY291bGQgcGFyc2UgdGhlIHNib20gYW5kIGZpbmQgdGhlIHJlY2lwZSB0aGF0IGNyZWF0
ZXMgdGhlIHJwbSBwYWNrYWdlIGFuZCB1c2UgaXQgYXMga2V5IHRvDQpkZWR1cGxpY2F0ZSBpdC4N
Cg0KQmVzdCByZWdhcmRzLA0KRGFuaWVsDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEhpYWdvLg0K
DQo=

