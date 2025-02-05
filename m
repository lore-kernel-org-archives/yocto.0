Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 463B4C02192
	for <webhook@archiver.kernel.org>; Wed,  5 Feb 2025 13:44:48 +0000 (UTC)
Received: from GVAP278CU002.outbound.protection.outlook.com (GVAP278CU002.outbound.protection.outlook.com [52.101.188.11])
 by mx.groups.io with SMTP id smtpd.web11.12118.1738763081147015512
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 05:44:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=Jbb41gNG;
 spf=pass (domain: vrag.ch, ip: 52.101.188.11, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q8VtiXZtjH7Jd5ecdmbu3cpLK8J4lYSwj/G4Bmem9dAVMRMgyiCU6sHMKDwbq0bZ13exwxAk0+hpvHkBUS2ALRFP/8JC5Hfdf6iaYdPGNSELCOSDo67CRqn+DOM4MqABirWUFcFcANDlJC87oXssUByXjTPhJf4qjl6hhEZ7ushM3b2YTM1NK8S8gQHvzrKURNHpgsgq5IYjbDQGcUWXZlr1IhGAriB8xCElDtnJnky+JCRYVoUTwMBQrkOoNGNkFXHEkF+kJHiPkYCK+brMGZiCpCYqia+y+oYLQ2m/0h85ZWmol3Ly3Zt/IIoKPGAgPTWF83/atMvIS80y6GZvgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6V3iVlQw0odT/YitYZpbHA/8F/qjnB/V64mPeuDP99E=;
 b=TpnIyL7HEDGz5dG+vb8f9Tn0XXP0uF2X4KANRfydAwOgo/53QYmfIn7lV9Az7/UmHKMi1xoH1AnqS6YuX3fE3HAT2QexgqN9ggGDGib4OStQGIQzA0FEF6/irNmyVaOMIxR5WAq2KBuZDBs1FbtlDtIxfsGpf0CbQVcu+2u8qhnDyUIl+IZuTeQ/vPY9NCsY8+zOLt5CTlrbqi5R9lgIiINe5ysfbCy7R4rgIXOWETFMsQB1T+HQwGKjnqhIgPAZcjiM0+fKIgHxFJrwYR3o8eYx/xex7SRzuZjOU4zZCVyhKZsYk9w8HkXlo09NJcfIQKaBHFW/oUQpODEoQG0cZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6V3iVlQw0odT/YitYZpbHA/8F/qjnB/V64mPeuDP99E=;
 b=Jbb41gNG9HI9a1m04uWorIHJRb3a4RwpBefMhqR8DqYgi4qk31tHowRHY5c7gj9F24Ak90Y8K7Gpe3D8RZbK14x+lxHvxDeqi+VyoAJ8Qq7JNBGtgPMJTLMqmPUZ782ryJDjtz92S9gGc6rZKfZNcNrPMbpiMwNJg/rQLya3zcE=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZRAP278MB0962.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:4c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Wed, 5 Feb
 2025 13:44:37 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 13:44:31 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] imx-boot / u-boot for iMX95
Thread-Topic: [yocto] imx-boot / u-boot for iMX95
Thread-Index: AQHbd7cGBfJRpagUf0ODEW7w8PtrMrM4mU4AgAAfboA=
Date: Wed, 5 Feb 2025 13:44:31 +0000
Message-ID: <deafa9f8f753bda4fe671557c810a033cadbcb4b.camel@vrag.ch>
References: <7da91a921033b4465f9b7d28af5665e8d8cc7cfd.camel@vrag.ch>
	 <22391.1738756322590050551@lists.yoctoproject.org>
In-Reply-To: <22391.1738756322590050551@lists.yoctoproject.org>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZRAP278MB0962:EE_
x-ms-office365-filtering-correlation-id: aeb32cab-9cc3-4678-fcfa-08dd45eb3833
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?WWQxdEVIV1N0VXRMaFVIZ3k3clZTckM4a1hsSGJRSXRQYnNSbUZuOXErT2FD?=
 =?utf-8?B?SjlZaCtXZHNHb21OK2poakJYTUJQNUJnb2ZUdng1dXhueXVXdXVtbElqUWxu?=
 =?utf-8?B?bHE0YnB5Q2J3NXpqQjJxTlFlRjNJUGpDY21NKzNGUVp1ZGlCSzVkTkE5VGhO?=
 =?utf-8?B?MnRKYk04Q2NQRDh6M24yOWhwb2N2QXN4NzJ4TnJUeFZVMjJIZ0ppT1NCOGVt?=
 =?utf-8?B?M3ZBaS8wZEkxd0hHcGFKa3Q1WU53QXZoSzlNUVZTb2FYZUZJZGV2b1pPQmRi?=
 =?utf-8?B?WS9GMFE5UTU4K3VURHJvWjhPNU16alZpMTg4ZVdmY05lN0x0dWY4Rng2MThJ?=
 =?utf-8?B?WlpPcER0U1p0MVpqY2txekU3RTNUSGx4Wmxkb2R1ZUZwUGNTai96SnhRY0RK?=
 =?utf-8?B?bDhpTWx6M0xXVnFrZGgxdWJ3TjIwL056V2xTdi8xN0N2T3hLUGNHejNYcFgw?=
 =?utf-8?B?Z3lSRTQ3N2tRWkpKVXM0dkhvbVdtMlhxSjR4Y0tYZmxqTlM4R0JJeEtuTXhI?=
 =?utf-8?B?azIyOEdPQXhONFVqVy9pUVZQOFdSOVlpTjBjSTNLTHpHK1ZxeDRWL2VOaDNG?=
 =?utf-8?B?cGI0ZWxFNnM4R3hCY0V2KzVHQmNORkpFeEJTeHBOZXhIc2FDaERmeFVrTndm?=
 =?utf-8?B?cUxheHVVY2RlMWtBdUFiWjdJSURwUTJsZ285QXJqdklSZmtyQnhNcGtHdnhH?=
 =?utf-8?B?RWRDeHVNVG16WXNhTDZlYk9DSExPNkJXVFNybitiQUNMSlVTeGd4SGFUSXYv?=
 =?utf-8?B?bzlMY2wwT0lSdUdqSGJKNFV1YjduZzlXcnNKVXVkQUd6L1o5Y1JOeUVUL2h5?=
 =?utf-8?B?TnA3Uk41V1ZWSG9hNzArT2RnZW9MbTRUOFJOMDF6NEZ4d3owcGNLdlNLVE1q?=
 =?utf-8?B?dEZabmcvTTcraktFQVR2WThKQXI2SFlIR2YvTmNQc0NLOHloWVVTSFR1dEtG?=
 =?utf-8?B?VlBlVndGMmxia2VEdU9WWS9XZEEzRHl5eTR5SklNeVU2YzdiZVNQZzR6N0Zh?=
 =?utf-8?B?NjZKeFdDbWU1bC85S1JSRGQzeXJrVW5lWHNaVGY1Z1pvSTVxUFY1QlM5V3dN?=
 =?utf-8?B?MlR6c0ZoMVRGdmJ3Z3ZtQjZueHBpc3IwbUl6UVphVmc5aS9XS0t2ZUtScDc4?=
 =?utf-8?B?MGliR3lJMWRUWGJTVkEva3dhcllUUjRTdDlKcmc3SkNvKy9tMWhqMTQ1Q2FJ?=
 =?utf-8?B?Tm14VWhSbHIxTlVwM2xnN0RvMTJGR3F3Ty9lL2VOaFQrUUFnZUJ0ZEZTbVow?=
 =?utf-8?B?OHhGa3NGV1c3OW9pak9wOU9wWThDTFo3V0VsYkszNnlLSkZMSCtERTlFWXFS?=
 =?utf-8?B?YUZwamt3amhsR21uK3FFV3pFN1dWNVBTUEVuVm1nbzFybDJmSEM2Zm9MZm00?=
 =?utf-8?B?RHZMVVQrTUtYRmZjL3R6YnpsNisyWUs4SFdncTBwV1JrZUJhYWxCMTVRQWtz?=
 =?utf-8?B?d3BUODFMc29DanZlWS9SLzFEVnlVVXkwa25KSlI1blRQUVdPWFNGM3daU3Js?=
 =?utf-8?B?bDZnMlZWM1ZCR0hoRXRqV2pEVk5reHpZcVVUVjg0VGtYS0dvbkNQSEdobllj?=
 =?utf-8?B?VmR6QUxmM0paZ21ubWZwYk9veUJwMnN3aTRPNE5zT2NZYVQwTStzTisvUXZr?=
 =?utf-8?B?QWFteURlTnZHU04ybkUvZFUzZ3JXMmZuMHRWcU1uUFJTWCsrNGs4N1dyM2JB?=
 =?utf-8?B?bDZ2ZFFHRmNGV0FRWmdRUGtvUk9na2owOEp5UC9KRXU0aVd3ZDFxalY1dGRh?=
 =?utf-8?B?YWhMYTVlZHROV0dHdGNSRXdXaXZDU0xYSWJvME40M0xnOWh5UlJJektMMFIr?=
 =?utf-8?B?RkdQUlQxUnl4NzcrQ3lZMXdaZ2cyZVRRdGQ4VzBBN3IxSW9remRLS3JkaHh4?=
 =?utf-8?B?dkZ4bXJKM2hjVVBOaEw2bS90YjRTalVTZmN4QndqbVNNNlJuVVFTTUQ3L2Yv?=
 =?utf-8?Q?FG2uZ0VQO6TI8BoT2A3OATGgaFOJkmYW?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SkZkSTYxNDRyWFVqTXNyS2RWVlNJM2drcDE1ejl1d2xoRy9aRmV3eFlheG5l?=
 =?utf-8?B?UFl2Ynhid1dqMUtzU3Fqdnh0ajBVSFowWnkwejUraWdtSlFSQWF3V2R2a3Zy?=
 =?utf-8?B?bFVXMFkxQi9tRlJ0SWJMemx6OGlqTUlITGJKSFNiRUdPWDJFQ09iT1BRcmh1?=
 =?utf-8?B?aDFJVlcyWU1weDRDUDViODZuYUVFUmlMTHh0QklST0lOWEFXN1l1d0hlN0cy?=
 =?utf-8?B?Vm5iaG53Z25iaTRWSlhqcm5nWG9CNGZVNGVwbGVpOHNrdVpRWFBUK2txNmJN?=
 =?utf-8?B?SUF2ekFDSlJVNzlMR0liMElwWGE0ay9wbm9JYU5IU1luTTRZUFdHdFl4c2lF?=
 =?utf-8?B?S1hLWXNGYlJ5S05NVG1YQ1crSUJMZ2pSbjJzMkFPOTVEdGlTakoxK3puRkJP?=
 =?utf-8?B?N0ZtTVc4RUxDUWVkTm1zUStsQjM3SWlwTWtsQUltYU9qbXNqMGdlRFN2SHFF?=
 =?utf-8?B?UERPaFpsSStVNm1YMkNtUDUvMTBqTWh1VndPT1RWWnh6RVh6NURoeGl1b0hB?=
 =?utf-8?B?SGwyUVNPbVVGSWVtMlhHSW5NQURQcFF2eGxvRFNOVWl4WVVYV0pZTGZPb3Zz?=
 =?utf-8?B?ZTZERHdUZ0ZYczZzVit0bTViaitiSExBanc5N0VWaG5ubEVlcEhDTHl5azd5?=
 =?utf-8?B?VlVJM2s1ZW5FemVrdU1xOWFMSWN2L0VXZFhkTlRhR0dndmpjYXNFQzZYM1Fo?=
 =?utf-8?B?czFpQ2pWQ2JOZ1dYRlZGWUVoc1dMYXlkTUlVbmNFVUx0YVF4K0UySjBDTmF5?=
 =?utf-8?B?eXJycTc4SkdtQm03ZndSdlJSM1I0TG9HNXRQaVZzM3doY0xxSENXcWhNd1pG?=
 =?utf-8?B?SVR3dmR5M1BwSkEyVVpYUkNUOCs0SnozZEM2S0tFS01ZNm0vUjhybjB1YnFW?=
 =?utf-8?B?a2x6UGIxUzI0eFpCK2ZFREV5Sjdod0Jkd0lnZlM5RVU5N1h6bHlpZzBUUGwx?=
 =?utf-8?B?bi9VZHBDTkhKcjZrYUJ5K3pVNkhnY3FqclM5dnBNZkx5OVU2SXVSMS93OXRk?=
 =?utf-8?B?T2NkTnZjS2RwcFFoMjdlVFBBbVhDUm9DcG5PODVRQktNTW5IZDc1Mk9RR2pj?=
 =?utf-8?B?ZnBmaHF4dVNKN1NZdVloWlVKMWg0NUhXVGN2Wi80YVo3bmxwNXBPVmhqUHk0?=
 =?utf-8?B?bjAzZnBrMDY5eWtvVUl2WVZqRjY0MWx3SWNDay9vYTFQTURZY1VHQjRZcFkv?=
 =?utf-8?B?emxNY2lUc0VRNm14MDdteWRYTEVPaGtjbjlaVG9aOHAyWEdwM3BXVjJ1THpp?=
 =?utf-8?B?Sjg4eGM0ZmRkanA1akw1b1ArTG40VTBmcWpmMzZ4MTE5Qm1uK2M5UGIzUTdG?=
 =?utf-8?B?SnlhaWxyTEdPQ3dxbWc0bnphZ0NDUytJSzhKc21jVXYxMVdEV1R3eUZ6cGZF?=
 =?utf-8?B?MFBQQytoK2ZncVZBTDAxRDZDUTNEUVVTcG1xOHZxaDdxZlRnMk5sMURBTW1x?=
 =?utf-8?B?WEV0TWE3dDIxanNCSW13dXF4bm5vYlN1UStEQnlKSmtBMDYvK3ZzS0JjMS9v?=
 =?utf-8?B?UGZTWkpzZzh5RG9Wa3l2WS9BRnFLVkt2NnlNTEhUSUlXSDBoTzJqWWhwektK?=
 =?utf-8?B?UWVTdVp4SHNtTDFqdzRrcWV2RHFXazFlZFgvYzA2SE1pNW9LSGd4V1Zrdmpk?=
 =?utf-8?B?dGlHUGFxNGdUbzRROHZncEZZeTEwV2xkWW13ekZsZWtXeVBVa0xpaGtjU0ww?=
 =?utf-8?B?Rm1aa3ZMUC9XWlovWUFmRHZGa282a1BkNTZjVzJqMTJzZGVoemFoczh5VzhQ?=
 =?utf-8?B?QjgxTXlyS3J3SGFnUk1qb0ZSUnp1YjN6dWhwMllMa09NTDZnMklHMVZSWlo2?=
 =?utf-8?B?YStzVnRuNHNNWjNFb21yYXVHMlpCR1dNYkF4Y1RKejZISjVSdUZGc0Fyazdl?=
 =?utf-8?B?cGY0UFRac3ViV1BuTDRyUUZ0bGdVMDJrZmhINXpIcDA4VGtQTkI2S1JlNmcx?=
 =?utf-8?B?OEdrbWFJNW5qNE1STytuazVzSXVIdXBNSk9yV1BobEZkQVZpd1FYQ21YOU9G?=
 =?utf-8?B?YmVrZkVKRStpRzZvY1ljQit4ajIvNFRBMllCUkNoT05adXc2RXBVbGpyQm5J?=
 =?utf-8?B?RXBIRnZqOFNSSDJEc0FvTVErNjJpVTZxNnhPTmxIVC9lKzNqOUhkemoxQlU2?=
 =?utf-8?Q?NfH0sDiQ5QcF3XSHQZ1T+eIMU?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <438A1716E31DA34D8F340D484F7D6023@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb32cab-9cc3-4678-fcfa-08dd45eb3833
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 13:44:31.8393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /V4vqE47eKjCMsGmrpebhGs8eYCC3caognHFUhbEACjz5t7AglkmXZSobE1BBZoF0UwRQ4VoUVJdBrft6qmJ8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0962
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 13:44:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64714

VGhhbmsgeW91IGZvciB5b3VyIGlucHV0cyEgSSBjYW4gc2VlIHRoYXQgYm90aCBpbXgtYm9vdCBi
aW5hcmllcyBiZWdpbg0Kd2l0aCB0aGUgc2FtZSBoZXggY29udGVudCwgdGhlIHRlbnRoIGJ5dGUg
d2hhdHNvZXZlciBpcyAwMSBpbiBteSBidWlsZA0KYW5kIDAwIGluIHRoZSBidWlsZCBmcm9tIFZh
cmlzY2l0ZS4gVGhlbiBmcm9tIHRoZSAyM3JkIGJ5dGUgc29tZSBtb3JlDQpkaWZmZXJlbmNlcyBh
bmQgdGhlbiB0aGUgc2FtZSBieXRlcyBhZ2Fpbi4gTG90cyBvZiBibG9ja3Mgd2l0aCB0aGUgc2Ft
ZQ0KY29udGVudCBidXQgc3RpbGwgZGlmZmVyZW50LiBBY3R1YWxseSBJIGRvbid0IGtub3cgaG93
IHRvIGludGVycHJldA0KdGhhdCBjb3JyZWN0bHkuIEkgZG9uJ3Qga25vdyBhYm91dCBvcGVuQk1D
IGVpdGhlciBidXQgbG9va3MNCmludGVyZXN0aW5nLCB0aGFua3MgZm9yIHBvaW50aW5nLCBJJ2xs
IGhhdmUgYSBsb29rLg0KV2hhdCBkb2VzIHRoYXQgbWVhbiwgdGhlIGJvb3QgaXMgdmVuZG9yLWxv
Y2tlZD8gVGhlIGlteC1ib290IGltYWdlIHRoZXkNCmJ1aWxkIGNhbiBiZSBwdXQgb250byB0aGUg
c2QtY2FyZCBhbmQgdGhlIGJvYXJkIGJvb3RzLiBTbyBpdCBtdXN0IGJlDQpzb21ldGhpbmcgd2l0
aGluIHRoaXMgaW1hZ2Ugb3IgdS1ib290IGl0c2VsZiBJIGd1ZXNzPyBPciBkbyB5b3UgbWVhbg0K
dGhleSBwdXQgc29tZSBzaWduYXR1cmUgb3Igc29tZXRoaW5nIGluIHRoZXJlPw0KDQoNCkFtIE1p
dHR3b2NoLCBkZW0gMDUuMDIuMjAyNSB1bSAwMzo1MiAtMDgwMCBzY2hyaWViICB2aWENCmxpc3Rz
LnlvY3RvcHJvamVjdC5vcmc6DQo+IEhpIERhbmllbCENCj4gSG9wZSB5b3UncmUgd2VsbCBhbmQg
Z29vZC4NCj4gDQo+IEZyb20gYSBmaXJzdCBnbGFuY2UsIEkgcmVja29uIHRoZSBpc3N1ZSB5b3Ug
YXJlIGZhY2luZyBpcyBwcm9iYWJseQ0KPiBkdWUgdG8gdGhlIGZvbGxvd2luZyByZWFzb25zIGVp
dGhlciBpbiBpc29sYXRpb24gb3IgY29tYmluYXRpb246DQo+IDEuIFRoZSB2ZW5kb3IncyBidWls
ZCBjb25maWd1cmF0aW9uICYgeW91ciBjdXN0b20gYnVpbGQgY29uZmlndXJhdGlvbg0KPiBhcmUg
aW4gY29uZmxpY3Qgd2l0aCB0aGUgcmVxdWlyZWQgaW5mcmFzdHJ1Y3R1cmUgKCBwcm9iYWJseSB2
ZW5kb3INCj4gZGljdGF0ZWQgaW5mcmFzdHJ1Y3R1cmUpLg0KPiAyLiBUaGUgYm9vdCBpcyBwcm9i
YWJseSB2ZW5kb3ItbG9ja2VkLg0KPiAzLiBNaWdodCBiZSBhIHZlcnNpb25pbmcgb3IgYnVpbGQg
b3JkZXIgY29uZmxpY3Qgb3IgbGlua2VyIHNjcmlwdA0KPiBpc3N1ZS4NCj4gQ2FuIHlvdSBjaGVj
ayB0aGUgbWVtb3J5IGxvY2F0aW9uIG9mIHRoZSAxc3QgYm9vdCBzZWN0b3Igb3IgImJvb3QtDQo+
IGJsb2NrIiBmb3IgdGhlIHZlbmRvciBidWlsZD8gQ29tcGFyZSBpdCB3aXRoIHlvdXIgYnVpbGQg
YW5kIHNlZSBpZg0KPiB5b3UgY2FuIHRyb3VibGVzaG9vdCB3aXRoIHRoYXQgYXBwcm9hY2guIEFu
ZCBjaGVjayB0aGUgZmlyc3QgcmVzZXQNCj4gbG9jYXRpb24gaW4gaGV4IGNvZGUgaW4gY2FzZSB5
b3VyIGRldmljZSBwb3dlcnMgdXAgYnV0IHRoZSBib290DQo+IGZhaWxzLg0KPiANCj4gUC5TLiBT
aW5jZSB5b3UncmUgdXNpbmcgYSB5b2N0byBidWlsZCBJIHdvdWxkIHN1Z2dlc3QgdHJ5aW5nIG91
dCB3aXRoDQo+IG9wZW5CTUMgZmlyc3QgdGhlbiByZXZlcnNlIGVuZ2luZWVyIHlvdXIgd2F5IGlu
dG8gYSBjb3JyZWN0IHUtYm9vdA0KPiBjb25maWd1cmF0aW9uIGZvciB5b3VyIHJlcXVpcmVtZW50
cy4NCj4gDQo+IFRoYW5rcyAmIFJlZ2FyZHMsDQo+IFJhaHVsDQoNCg0KDQo=

