Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99770C35FF3
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 07:34:28 +0000 (UTC)
Received: from ZRAP278CU002.outbound.protection.outlook.com (ZRAP278CU002.outbound.protection.outlook.com [52.101.186.16])
 by mx.groups.io with SMTP id smtpd.web11.15802.1742542461885454969
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 00:34:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=lYPVIfED;
 spf=pass (domain: vrag.ch, ip: 52.101.186.16, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O2BCwqFQGOHy2XOwIK3yIFtKJTA6vXruO23eqjyBeLuiGlSxlAo+49TOjbiFBcmvmN9Oxg/HJ8BygF6KV66lPk9FM/t5mGBVg13k+eUmeOCJEu7Gyh/e3hS3fAoIZ7485lg9my6X5erXMG3NDbkLg0Yxx31lsmmbcwMTJ987YVneUds06jvMblYKyQHe8rVNJzWQJYqwyxrLS+lSNt+uN23UOpfHgBh1JsayaC6CELG2PcLLqE9iolLHojLkrBr8JCWjjbvSye4Fr8L6iwYaaNYCwe2IUOZW3m5aT4cN+oxIpQ3UrCgEt4wijrSpKlADYCxL+2RTIP+wEcIsqKSWQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HVdZnpsPAXIAbuYVeTdco0w0ff1V3uikMdZ5/bAygjg=;
 b=DerZXE58hJmOiQdpJGP9f7oI8ScyLmOwgfUDshVOoCJ1+NS5++VYwDnEZCG8EEx4u+Wd8YOvK+eesM1DgnM7dhxHOFwY5TPOOO/1OLR18cTUGQWn8twc0lx+taOb9/fjgyJLipVP7sU/11q/VVfp5zaf1/tJxmkp2i0TZQAduVld7D5DIlyHyj0K1fptPHdEAJnxJ96QLrONXdg7G8jV9ZZxe5SB+aOEvs2NHAwoQ4PRsIxMwDbh9nTDE/k4v1f2ujbIUb36YMTJkasqfJdxN2RILv3P2uULTTFWbuf0NM5YWwfYQSwz1iKIuJoXY8iyoG9nNZsf/5lfc+lTrxIZBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVdZnpsPAXIAbuYVeTdco0w0ff1V3uikMdZ5/bAygjg=;
 b=lYPVIfED8Ff2XkFfSUEpJm+8ovJLvOvx43sdiuTqNDn5u79JvBnJifXd+5azRUHawayT0Hlnbj8SNiER5Cv5DepVthLrYv0qx9mSrV+7l/j/8Q0qThYToEwcp4EcLBtypiOxzWIa6x3kfTaBzc/oxavQMP454PXxUbU5nE9QdK4=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR3P278MB1379.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:9f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.35; Fri, 21 Mar
 2025 07:34:16 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%6]) with mapi id 15.20.8534.036; Fri, 21 Mar 2025
 07:34:16 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Topic: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Index: AQHbmaOYnvqeEqgygUOVJpc4m2AxQ7N8JssAgABC8oCAAMpHgA==
Date: Fri, 21 Mar 2025 07:34:16 +0000
Message-ID: <5439c76f3f64dd2b9edf5726f1961ea1961634cb.camel@vrag.ch>
References: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch>
		 <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
	 <CAMKF1srmDjAgPK2ZCXg2XQfbdnhuHhc3kafhagkCJvug2tOT4A@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srmDjAgPK2ZCXg2XQfbdnhuHhc3kafhagkCJvug2tOT4A@mail.gmail.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR3P278MB1379:EE_
x-ms-office365-filtering-correlation-id: 9219ef6f-fccc-4864-c60b-08dd684ac908
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|4022899009|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UGMvaWdaSWpUZDkyQ0lwRm1kVWFNL1UrOHFaTVdXSk9zcFIyd01LQitSWWI1?=
 =?utf-8?B?L21HVytNUVNjVlRSWHlpQzRmQTFTTS8yamtscUZpRzdzOEV5OHZFekpVR1VZ?=
 =?utf-8?B?MVJDNk5HV2xMaVlBdG9TdHRwOWJmbnZCOHI3dFI3ZWVXT0JUZXVqd3IzZUdr?=
 =?utf-8?B?N2F3L0kzcDhORDlCYzRYbmxFS3M0TmExb0t0ZXFnbUNxY3AvUExWd3ZVZFl1?=
 =?utf-8?B?UXVTSFVoOWljRGYxZmxQblh4STdyYXV1VUNYS3BZcGJJRVVYbDVjc2JMY3Mr?=
 =?utf-8?B?cVc4NnpOTzM0WktwMEpvampjcER6a3hWc2o5dHFsWnVyNEhpT2RWdkhNRHpU?=
 =?utf-8?B?b3h0MUpoQnZQczM5ajlwcTV1ZGVnTmY4QnA5eHd0a0JMVlF0TStJcVJTd0xr?=
 =?utf-8?B?ejVNaEcvMkQxNjh4QlhSbkwwelZ0YWwrbkYvM0dnSTlnZlFCTjJBaDdndDhH?=
 =?utf-8?B?ZE41WmpZNFdhdG0rZ3drTDRjZmxxMzJPbHBVODZmTldXM1FnbDJCVW8zWDFD?=
 =?utf-8?B?RGV6Q1FFQWxGNWYreitWSXRWVmhTV2pvWDNSYXRPdWZnamo0SnFLcXZIUlVM?=
 =?utf-8?B?eFlPNm5mM1ZUVzhaUi96dEVHWkhGTGRhNFlCSGdkaFhLQ2Q2N3hhVGpVU2hm?=
 =?utf-8?B?cm9jOGVLZS9KTlhZVG5qRmRYY2d2Rmc1bXFydVR0Yis4OVAzVzZGZDdTUUUz?=
 =?utf-8?B?YVBrWGVKOWFEblNEM2kyNkE3VHcwMVNjRjlNZXgrdUZRWENkaXZLUFYrSENT?=
 =?utf-8?B?WDR4UTdDWnhPcjlPNVMyaXdOVE1QQlBpRWxBbktHZlhUdWZDUG1GSFpEaEhE?=
 =?utf-8?B?U0pQbGdLZGpNUldGRHM4M2NsMkZKQVVTTGdPOUtoZDNHWTVtUU5xeVVpZUpn?=
 =?utf-8?B?bHBjUmF1bFJwNC9ISWF4ZjRqZDgrd1o5MGRIenZUMEVyWEtIbFVjcmwzRndL?=
 =?utf-8?B?c2hZNnlKSlZMK04vTVNIUE9hOGg0aW93djBPbjJQNjdBVTVvNXEvaDBuQ0tR?=
 =?utf-8?B?V2NISjBkY3BSTm1LVVhQcU1RdXl3UlFLWW9oVXNZZDRjdmNock1EdWhWNXlh?=
 =?utf-8?B?alBrYkdPVlZBaWFNQ011U2pmVGozMWx2RkdDYzV6S2RLY1Z0NUxZZnZoT3JB?=
 =?utf-8?B?cHJaNmtPaU5WVnI2YmhLQkRXWEpWRWtRWlo4VDhIbTh2eVA1UGlvQ2RwMVk2?=
 =?utf-8?B?cGloaUprUEFXODFObTYySzBpK2dYdWFQZEpHMzY1NHBWY04wbjZaSGs1UjBj?=
 =?utf-8?B?bTA4WDdyUDg2UkxWRkNqN2h5UVRldGprcENzdmhlbXNHankwTTFYNm52S3Z2?=
 =?utf-8?B?NkNscGNXTm1FZXJ6WmhOMEpCMlBDTURCYWhGbzF3bndpcXlIUExlbkozVW1M?=
 =?utf-8?B?R1ZuTUpITzJYSnM3d2V6bEZKYklvZUhQTlUyTHc1b3JNZ0FJN2FWSUVWNmk0?=
 =?utf-8?B?QVo2aDZ3K1pmVk5tak1pazY5NmxBTE5QODBZQXZHdi9pckMwUWYwQ0M5V3dP?=
 =?utf-8?B?ZjRRbGZEckZIMlFKeGdXZyt1M2xGeTI5aFR2WHFqcjVCODJRRmRWRnVWYmFL?=
 =?utf-8?B?cGNtSW05d2VLSk5tSTk3OVkzZks5d1ZYR1dubHZQUVBpU2QyTC95VFhnR1FT?=
 =?utf-8?B?SDd1bVJJTGlYOE9ZTFUxUEM3UGlrWDIxc0xQLzZIVVI5M2pialo1YzBFTm1L?=
 =?utf-8?B?TXhydTZSbERpbW5BZWxsOEdJdzVOcDBKSkFpRWlZL3hQZ20wQ2VzNXVCRjhx?=
 =?utf-8?B?ZUprb2JKaEczUlV4dzlvdGgrN1VPTnN2U3IrNkIxN2o0L0p3Y2FsSko0dmFx?=
 =?utf-8?B?MFhldm5rZEYwTnd0UldVS0NQVmh6UkZOUEY1M202VW1Dbllxcm5SdGJHS0Zi?=
 =?utf-8?Q?d6BFjpggHOiL4?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4022899009)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cEtBbmxMVWhlYzFDUlUrQ2RSWVc3eVhTc2duRk1ickFHZVlnanN0OUcyS1dZ?=
 =?utf-8?B?WkdWS1ZmOHRJQXA2SHoxR3NOWWF6SW1TQkQ0dWRPd2NDMWZlT3F5a2F4MTlO?=
 =?utf-8?B?NXpvSkprd1prMlg1aHBSRDV4R1pJWHR3UTRHVC8zNGtMdXBxblAwYmNmSGZq?=
 =?utf-8?B?QkZKK2JndEJpNmpXWTBHTnY0SXpKUTRPcjRSYzRhQjRJZGNlOFg5WDI3eWV1?=
 =?utf-8?B?SEljODBzMjFBY2ZPaDV4cnJDSFRsVVRRRm5kTkI3OStsQUl0N2FrUkRCdmUy?=
 =?utf-8?B?MXZLNVZuYTk1K2YvdEZabXFNaUFXaHh3RDZZek84b2JOeHhnN2V6KzVweHBi?=
 =?utf-8?B?bi90cXdVSU9Qd2tmTEk5SXdtTmpBK2ZvTDVpMTVWb21YbTgrSVJFaXpNaDQ1?=
 =?utf-8?B?VGlDZzZNa01XRnp6Wm5VTEFwMStLOEZZNW9ENUN1WmIwRUV6ZktjTytxMmlq?=
 =?utf-8?B?a1FocjRxMXp3L0ZLZHF2VzRmQlNSK0pUU3BydWc4Rm9BVVVFaXExOW4zUXhB?=
 =?utf-8?B?YzJvaVdxL2NIanVGekxaQXV2RHFnbE5NSUVWZEVGVC8rbElZcjhMblFLK1hD?=
 =?utf-8?B?cjlvTXZGOFo0UWdnc1hZOWZPSnpCemNjMW9GTERyUllnS1RBSVdUTFVraWFr?=
 =?utf-8?B?eE5VNDdQUTFKUkRLNW50czExajRIMFZocWY5djVoMkdYTFJ1ZmorL2EvMjNS?=
 =?utf-8?B?NTJURGtEUHlXbStVNjhMNzFRL1B3RG9aL0hoS0ZFM1lyRlR3clpoZHVjS2Zh?=
 =?utf-8?B?TWxUNThKUFhYdGIzaHhjRWljampjWUpISVdnTXBMWnJycEwyR1ZtKzVURG5V?=
 =?utf-8?B?UnZyVXhLWGR2QmtBcFF1eUtsc0V5NWVrMFlUd1JSSHpUUWxHUXRodG1ldjFT?=
 =?utf-8?B?b2szNTB3RlFrZXh2UlMvK2V1UDVlV3dnTlhWeU5DYUJDV0JQWXVmUUNpOS9O?=
 =?utf-8?B?QVZPc2JxWFlmMkFiYTR4MWR2cEg0ajFJM0JROFUzVkNnbHRMOGpoYVlYRC9Z?=
 =?utf-8?B?WElkZGlhek9RdWNnUWJiRm1GOUE4bU9kaTRhUVdWSURma04xVkxnN2lmMDUw?=
 =?utf-8?B?eTFqRnNJNXQ2RDRMcTR0R3AzZUMyZWcybCtwQnZUc2tJSXJnRjQ0VFNvU2RE?=
 =?utf-8?B?OEJXOUhsNmRPMFRoSG5iQ2dxTHViNy80WEtqTFZUbkcvSVpVbDg5YXRFN2Jv?=
 =?utf-8?B?Q0xoSnZodEUvR25lNjRGVnV6NG9MblQzQlh1NENBVFZSUVlaQkZqY2pnL3Ra?=
 =?utf-8?B?N05jWE5walFScmFkeCtrNW5wSXJ2WU9MR215ak1veXo2cm54Q1FjRy9LaytW?=
 =?utf-8?B?VGdRaHl3N2RoUjlSUmdhZVIycVpXdXpQTFdubVhJNWpYYWpzUW1qZThiandO?=
 =?utf-8?B?UFVkUllwYWpKRWFKOUc0MjV1bS9IcUNiaVliZm9BZ1hkdWZNa2dON3o3VTFN?=
 =?utf-8?B?eGhBZlZrcmJUTGF3bU55N3gvNlRvaFhwTVBzSlVnSmlxNmlNbWZlSjNhSXZo?=
 =?utf-8?B?WDlSWEdyWTZJNDI5KzZiTk5pbGJjRVVxK0VxWjExN3R3TmtRRldmQUowSXdl?=
 =?utf-8?B?K3hXbDRHb1A5NnN3bmM4d0hZcmNVa0dxMmxnamIwM1RPTENFaGN3aU4yMG9v?=
 =?utf-8?B?VE5XOFF5RG1mYnJPQ2MxNUhuekdVSmdKOTloVzFpUTl3WWhUZThKallGQm5W?=
 =?utf-8?B?LyswR1pMdDJaQldYRnNLay9YN3NKTmQrVVpOT3ZwVlNPTi9wV3hEZXNjZisy?=
 =?utf-8?B?VlJtR2ZKQjdPRWNIYmNYay9mUHFmN29OYlF5azlleG9FYjNBL0JFWmtVZWdT?=
 =?utf-8?B?eVMxVlpJNDdZYk9HMVFUSDgySjRUcEsyY2xwTnRxR2N0eE01aVZNaVFzVCt6?=
 =?utf-8?B?Tkp5V3g4MXowZHNRSXdXUlRIVG9aSC9yUzV0UDZ0U1RWbGtQdkE4YTFDbzlt?=
 =?utf-8?B?S1g2aktxeXArWjg0VkVGSnluS1JIeUNjMWRZb0hIclRVd0lnVHJZd3grQ3F0?=
 =?utf-8?B?cUdmUHZWODhQMDFtZXJRYXZKVHNwbkJYb3B6QmVQRHJzSnRONTZyLzFtRnAy?=
 =?utf-8?B?NlhBeDBDenFYM1BROWNyNGFMM1BacDcyV0dwWUhjQmFDRTdSVWkwRWNFUk1B?=
 =?utf-8?Q?CKx5KssKZWuV6IVFltlaNzJnS?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF3C31FE3E18404F9D0608CDB7123C98@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9219ef6f-fccc-4864-c60b-08dd684ac908
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 07:34:16.5924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Okj7ZnnaXJHLAw738ZEl5RTwGgsnbuSIEqv5GCwIBO+wdw5PTa+gFl885SREo1sdw+A4qhmPzs928aKbDe+Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR3P278MB1379
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 07:34:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64997

QW0gRG9ubmVyc3RhZywgZGVtIDIwLjAzLjIwMjUgdW0gMTI6MzAgLTA3MDAgc2NocmllYiBLaGVt
IFJhajoNCj4gT24gVGh1LCBNYXIgMjAsIDIwMjUgYXQgODozMeKAr0FNIFJvc3MgQnVydG9uIHZp
YQ0KPiBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IDxyb3NzLmJ1cnRvbj1hcm0uY29tQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ID4gT24gMjAg
TWFyIDIwMjUsIGF0IDE0OjIzLCBEYXZpZCBEYW5pZWwgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcNCj4gPiA+IDxkYXZpZC5kYW5pZWw9dnJhZy5jaEBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gPiA+IEkgY2FuJ3QgZmluZCBhbnl0aGluZyB3cm9uZyBpbiB0aGUgbGlidXNibXV4
ZF8yLjEuMC5iYiByZWNpcGUgLQ0KPiA+ID4gaGFzIGFueW9uZSBhbiBpZGVhIHdoYXQgaXMgY2F1
c2luZyB0aGlzPw0KPiA+IA0KPiA+IA0KPiA+IG9lLWNvcmUgbWFzdGVyIGNoYW5nZWQgYW5kDQo+
ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb3BlbmVtYmVkZGVkLWRldmVsLzIwMjUwMzE5MTY0
NTExLjgzMjIxMS0xLXJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcvVC8jdQ0KPiA+
IMKgaGFzbuKAmXQgeWV0IGJlZW4gbWVyZ2VkLsKgIFlvdSBjYW4gYXBwbHkgdGhhdCBsb2NhbGx5
IHVudGlsIGl0IGhhcy4NCj4gDQo+IEl0cyBpbiBub3csIHNvIHBsZWFzZSB1cGRhdGUgeW91ciBt
ZXRhLW9wZW5lbWJlZGRlZCBjaGVja291dCB0bw0KPiBsYXRlc3QNCj4gb24gbWFzdGVyIGJyYW5j
aA0KPiANCj4gPiANCj4gPiBSb3NzDQo+ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPiBM
aW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gPiBZ
b3UgYXV0b21hdGljYWxseSBmb2xsb3cgYW55IHRvcGljcyB5b3Ugc3RhcnQgb3IgcmVwbHkgdG8u
DQo+ID4gVmlldy9SZXBseSBPbmxpbmUgKCM2NDk5Myk6DQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82NDk5Mw0KPiA+IE11dGUgVGhpcyBUb3BpYzoN
Cj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTExODA5MTk5LzE5OTc5MTQN
Cj4gPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA+
IFVuc3Vic2NyaWJlOg0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3Rv
L3Vuc3ViwqBbcmFqLmtoZW1AZ21haWwuY29tXQ0KPiA+IC09LT0tPS09LT0tPS09LT0tPS09LT0t
DQo+ID4gDQoNCkluY3JlZGlibHkgZmFzdCAtIHRoYW5rcyBhIGxvdCEgQW5kIHNvcnJ5IGZvciB0
aGUgbm9pc2UuDQoNCkJSDQpEYXZlDQo=

