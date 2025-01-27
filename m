Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19262C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:54:41 +0000 (UTC)
Received: from ZR1P278CU001.outbound.protection.outlook.com (ZR1P278CU001.outbound.protection.outlook.com [40.107.168.46])
 by mx.groups.io with SMTP id smtpd.web10.53360.1737989672098732195
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:54:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=Xh3mwRo2;
 spf=pass (domain: vrag.ch, ip: 40.107.168.46, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kzR9EoGdOhV0AfcouVW18CgPXpa5PwmNJYQNX9sSq4uC/iaC1pKeOLwEeXOHYxIBF1UER6l6D0YBaBXlNQIDZIZVqRqxFMUzFtrrs+rBAPkd6bzXW8fvvm90L/k4RSIj4xRPlvWXgO0prySZ8ikGmsDRoBTSk0y3/XG6IIMJhc0aHhKYPDk07UBgssPx5Btm5yrCdAjYmjUnbB77wWGSNy8DqkxnWk0qExHutX3JjhunH0yMKts2QIlNxq1yQra9x0GegoROajxshtyFPoRSbxgjTOeh4voTPKwOFy1FsSqQVJxL2lqFyXZJCER3iePRTppaxC/zdRmiI+QC9JV/Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L7IwmpaMcdNQRt2voJLLQz8MJK629kHCbS2VJY23UQ8=;
 b=Z+HoKwP4t11kZMSY6V3/QukPUvR7T2W7jmkmgHIECtXKp2WP8AKFWX4wyr8SR6jS0Z65xinzUptercjP5FFuILrulgk9skWgnCrPb8Qlqodh8Hbg4lWBKR3xk+cLqjR3ekniDWgnYrhtwdiT8Fbf4KgtdgpJtcYSvhBbMupNfgkAqYMZ5py+mlpRHViQ3suJ91OyhB/7x+gOYdcSvpvnlsP69CoeKS7vBkxzZiMy7tWi76Fhxklm30u3d2VRq3ifaw4EhA1wnA3WnLYKoD+AMMqVBF8ez3ItzzNY3ZAE6304jgDTdc6lWlAc2BmpvHcDMEECM8d7s+Om+zTsg6Pd+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7IwmpaMcdNQRt2voJLLQz8MJK629kHCbS2VJY23UQ8=;
 b=Xh3mwRo2bL7c/fzZj4Prcg5qJjwv8Xp4BGB9uIBcN+SpLSkZVg+iNJnCy8qc3RRMsJKbPm3wn8RytONf+HL2o+taPx0VhD2ZRA/HnwmDzRYsZIoTEll/Sh9q/ucnvXCkILxlRtSw4I5DR1QEpLOdxsymk8w+PUMTSd38EArq1ZU=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR1P278MB1248.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:6e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 14:54:28 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 14:54:28 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Topic: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Index: AQHbcKxSky5zFidL60yEzgkj+l00n7MqqToAgAAGWICAAAGvAIAABB+A
Date: Mon, 27 Jan 2025 14:54:28 +0000
Message-ID: <36cb67540df349877db9da338d78da55c13d3ccd.camel@vrag.ch>
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
	 <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
	 <a1657de15b95836d7694155634388de223edae86.camel@vrag.ch>
	 <79a79a8a-7494-45d1-9333-22c18deeb2c3@gmail.com>
In-Reply-To: <79a79a8a-7494-45d1-9333-22c18deeb2c3@gmail.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR1P278MB1248:EE_
x-ms-office365-filtering-correlation-id: 9a0b90e7-4c53-4ad3-e48d-08dd3ee27fb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?YndFNGpLdmJ2aUtkcjIwUzJnR1ZwUTIzR0t5U0swcE5HZmppTFVtYkJtaGZr?=
 =?utf-8?B?WUJ3SGtQbUI5dzE5YnZCR1RaK1plY2M3Yk9MYysyY2dObXZYSUNHSnBtMG9M?=
 =?utf-8?B?Q0tOY1ZjakREOWRodUxJTjgycER6UHpBSW03OWNBSGhaeldkL1NlSEFHUVkr?=
 =?utf-8?B?Q29CcGJCY05DcDdKNCtMTXBwNi9CbnhRUDhUaGNBRWE0a1l2QjlPZWVMc3VM?=
 =?utf-8?B?cmVEUWVqSWRYeDB4TXZMVVlaRWtSZjc2dytmVk5vVnNYbnM3WENibGt0Rkpw?=
 =?utf-8?B?WEw1UitJWm9abEtvUTE3QU1GSFRyVnU3VFp1bDFFeWJDY0NVRWdNYUNRZ24y?=
 =?utf-8?B?SzZYeUorRHJpK2p0MFloTkRWOHQ0Q1JlR013RU1HY2s4OXRGdVdSdkM3UWJ6?=
 =?utf-8?B?b3ZmRkorQUJjZlhZN2VJbC9ZaCtnN04raHhJT25wcmxDRFZ6YXd1QTJiVWpF?=
 =?utf-8?B?NFI5ckIzNEhUemlES2cvS1Q3dWZtemZ6K1pwdmlyeElBU1V5RzgvUVZua3Y3?=
 =?utf-8?B?b1VBbklvV2dOT3A1eW0vVFp1NlNqcVNxaDBsYnlwL0wzd1FCdHd5Y1ZIS3hV?=
 =?utf-8?B?RmRPVDYxVFJ6S1RoYmMzU0NKSEhETnFwNEVseEZEaTR4S1B2U2NNbTh5SGx2?=
 =?utf-8?B?bzc2MzN5K0tMQmkzTHg5cjltaWsvV1NBUnBaS1VRU2tLNzcwY0hvZHhadCtE?=
 =?utf-8?B?c2FoeXFaN3BZV3BLUnBBdWpUOW9zNWZzMHBWeDI4d3o4TTVyQWYybUtaNDJV?=
 =?utf-8?B?QlkwRjZPWm5LM3ZYUmU1QjI4QjJoQXJtZjJTYzlMRDZoRE55QkpsNWJKbGVO?=
 =?utf-8?B?SStVVkg2U2xNbTNhUzRqR0dZUHBUSVF6b3BHODI2UU5USTRXdWdEdUZpZWc4?=
 =?utf-8?B?TjVQTVR5ZkNwRWdTblJjU1JJdVVZZVJwcys4S0l3TXdzWVo5VG96ak96TTdS?=
 =?utf-8?B?Ym1EamlONTZyUzV6dGRYNHpjd01OTWtTc2JybjBDZWc4ZWhtLzB2TDNzVWtz?=
 =?utf-8?B?MDB2THdBOTd4OGppeVhHUy81RFdwMzRQWGRXbXcwa2VTeUR3V3Z0eTl3QnBr?=
 =?utf-8?B?YnA3bHNmODl2RGc0cmtHeXY3OVdGYUZOSDJ0NXRRNWk5QXBaMEFCMHBIaU4r?=
 =?utf-8?B?S3JSYXdPeEgvZU94QTFRZ2FYbGRHWDN0Wnk5bmlGM3VrZ0FzVnBUUzdNeGRW?=
 =?utf-8?B?QzY3U0dOdXcxOWdCeGFJcm00V1JCMDA0KzdyN3YrajAwTTBWOGJxdVBPSU1z?=
 =?utf-8?B?ZktHTUM3ZSszVjZMMWxQY0ZXdnZHckNPcGQvRTU0ekNVR0NhMzBtUnZOTW9t?=
 =?utf-8?B?UDIwNlVGMHA1UzJ4UU1PQmRJUEExT2l1VlpXWkdCaUQ4djhTdjhUV1FEOTFI?=
 =?utf-8?B?NFpUUG5LNmpQQS9yZEF4aEZEZmhUNi9mY202c0hDMy8wcllXYU1wcjd3SlZ2?=
 =?utf-8?B?N2VxTGwwY0l4V1VWay9MNytSbThscElmdVhxdDlYeGY5dDFSZDgyb1hobFFy?=
 =?utf-8?B?WExqZElVZlZ4MHpUeHRZQzFINlZwNVBUL1J2aUVTeW1sTjJNMk8xSk4rT1Jk?=
 =?utf-8?B?YmZCOUJFblZ4MGVRRmJyTm1YeHN1V1h5UDlHakhSZlplK0NnRVhINlJ4MDRK?=
 =?utf-8?B?WEtPM0N5VmxTci9vVEljS0tKNjBLeEI5bnV1cTRsdmV3aTY5eFR2Q3V6NmJF?=
 =?utf-8?B?bVZSU2s4VjNlbVc4YVZYL2ZJUHNkWTJZRHVmZDBJdmd0dnE0eTRPNDdBNzRp?=
 =?utf-8?B?TUVjOStxTU5BdGJOU0MvTU1GbnVSK09qUnMzalhaTjRVMlNHZkNPV3luWHd2?=
 =?utf-8?B?UnZlZW01UzJQb3JHZmxJTmdEN3llRXNBcDVyVmdqVWFLd0pIWFpnTklYTEk1?=
 =?utf-8?Q?Qi74EQPPltO7q?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UU1tVzFOOTZ2ZW8vTTRLZ3M0dldPc3d5cEI3d0ptMG93K1dwTlJ2VFZNVmo5?=
 =?utf-8?B?elAwV2UyazV1TFRub2VZQ0xEM3NERWRuMXR2YTFnbGN1VG1scHRXK3V0S05Y?=
 =?utf-8?B?SFhteXRnTmhmcHRGSEd6V3dZak9IamxrUStPV092Ni81NjQ5K1ZmNTJzcWM2?=
 =?utf-8?B?NEpVSnhrMXl2Q0RPb0pRc1h6YjY0QVhjaHpicWRHdmVlbEFCSGVjRnB4dnc2?=
 =?utf-8?B?T1lIVHBvUmRrcUYya2pScXR0MEJmMWN0UXFURmJWd1lISXJIZTYwbG9YOEV1?=
 =?utf-8?B?RUt4UE50ck1tUVdOTVk5bTlWOTJPUy9YNUhrRFNuWXQzR29Zb2prZE5YTG55?=
 =?utf-8?B?UDNOak1tU2g5QUVUcTgxalFyZGREeUd0L0MyVG9sSkxjWkw1eDBnVW9hcmcr?=
 =?utf-8?B?L1pOdG11RnZkaXllNFM2dVRJQURsU3FMTmxuakxBYitUdGd1TWhCa3FQRzFw?=
 =?utf-8?B?b1c5UGRlc3U3VE9sRzIwTWVLWkV3Wkx1SFFTcXRTUVJybEU4R2lTUXl2NHIy?=
 =?utf-8?B?QWZBbFRaTnRCUFpsVURDTWNJUU1Mem1QdzRLWmtqWEcxaHYrdHNITENqM2Vh?=
 =?utf-8?B?b3lnZVA2c1dmTXI0MkZiOVhuQ3JraUM1TE5UQWZRWmVKRWFFQUlHZkR4eUJ1?=
 =?utf-8?B?dllEdi9CYXBucE5MOGhwa05UQ002Y2JHeWtLL2dMNkJnWWJna1Rtby9PWGta?=
 =?utf-8?B?R2FjOExTYkF3MDRoZHk1K1lrb2lTYjNDOU4ySURicHUzOWpydHNIQ3hicjBs?=
 =?utf-8?B?Y0VFWkx4aVRsaDZwaWoyVGEyLzRPaW13ZHBpZTlhYzkxWjJxSnFOQjFOdW9x?=
 =?utf-8?B?M3BXeWtkQXIxN2ZaQS94WFNrRmlrcG5LTE9PODZvaDhiT25jYnN6ZUowYmtz?=
 =?utf-8?B?VTQ5VW9hbFpjK01lQXJ6a1JYYjRVZFVJQ0RvVXlGbzA4TFRNQkNSRmpiY01T?=
 =?utf-8?B?Z2ZsNFM5NmlGUGI5ZGdlZ2lDWlVtWEJaTzVzMmZCSFlFczhLUW5JdmpSRW9P?=
 =?utf-8?B?TytpT2NPY1UvMHRmaHVTcEV5UzFFS053UVFDVi92TDl5dnR6aGNyZEtGS21s?=
 =?utf-8?B?aU9UdENpcWZZVHhvWk9GRWRwbEhlVVllV3hDRDlCSE5SSlQ1UnRRUDEwMjUv?=
 =?utf-8?B?QTUwamh0V2hEQTh5MU9YZW5RRHhOQzlQNlJwbjlGUmx3QWZXQ0JTckdsY1dr?=
 =?utf-8?B?bDA5Y01WTmhObEkvVVRyR0JhWGZUU1hCbWdHMlB0WUFITEdIdm96SlNZUjQw?=
 =?utf-8?B?dDJhSEhpQnNNVzJ1cVlReFIxbHpGdUF3STc5MmYvT0M4WFZEb0VuVVZSOHJ2?=
 =?utf-8?B?K3o3VHFmeENjZFBrTC9oeXBvODJGTldIYWpwbDhUSi9NTjhaSVRISnhGUUpw?=
 =?utf-8?B?b0RCanhZTzFRRzh6UXh0NlozelBTVEhMQkljbmdvcjhVV3NDRGRRUlA0cUJn?=
 =?utf-8?B?NGIyZXpBazVUV09UbnlvTys2WHNrK2FTaWFrdktUT1RXRFpSYUlSODUvMnh4?=
 =?utf-8?B?Sm9BQ0JKVDRoMzJHVFJEVkg1WEVKR0RBRmRpSE5LeEZ3ZzcvRVV4RXlQVTdx?=
 =?utf-8?B?S3pGelIwbk5TVHhmWjFPMWl2SjlqUWx6Z0RnQ1Z6OXp3U3puVjc2eTNuK1Jx?=
 =?utf-8?B?bFRKeDA3d1RtOHBiVmJaclFZS0pyK0duVWhvYjlkWUdUQ2VDU3hnMUZGZkxm?=
 =?utf-8?B?WHZnaGVpazR6bUVnRCtBMHhPamhQODNVZzkyZ05sOTRrUnZDVFh2STRodEVj?=
 =?utf-8?B?UjRNaldsdnhhMXBMZVoyUy82d3U4U0hkY0QxQzdQamVWSHNreE9WTVFEY0xt?=
 =?utf-8?B?dk5uaHRmQ00yc3pZR3NHRDJ0a0FZWkNGa04rV3pia0NBVlNjM0NNUHArZ0RG?=
 =?utf-8?B?WElPUUVwcG5xcjd1RDBWQTc4clVFa1FUUVdBMmtDdUFselhwa1J6cSt1U05O?=
 =?utf-8?B?RnVFV1BEL3JaUTdjRGxOZDdLRmlrRlR2OEtXSjk5OExCQkdVN21raExZVkN3?=
 =?utf-8?B?T2hwQVlxV0dNV1VMOHRBMjZ3YmxKWHNoeEMyc0ZBd2x0aGUvcUxHbXAvWnc3?=
 =?utf-8?B?NWFFVjZ3Y0JSSFJwN3V1NjBWZzhNajVPcGxPelIybGg0Z3lpbWZOUWc4NGYy?=
 =?utf-8?Q?VtHBCN/GEVQ+b/SY3ndT0uX6a?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3C6367EB60B7A44293D9DE4AA1D5CC24@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a0b90e7-4c53-4ad3-e48d-08dd3ee27fb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 14:54:28.2618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2k1Mp2P31xfYCDqX0SsvcP5oR5ZVqLwlk2Jwo13VNBLw4YehfBNc0kQcT4Ez5TMdgfCp0jYK5yLZOcgit2sTKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR1P278MB1248
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:54:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64642

QWggb2ssIGl0IG1pZ2h0IGZpcnN0IHBsYWNlIHRoZSBmaWxlIHRoZXJlLCB0aGVuIGdvIGFoZWFk
IGRlbGV0ZSB0aGUNCmRpcmVjdG9yeSBhbmQgcmV3cml0ZSBpdCB3aXRoIHRoZSBnaXQgY2hlY2tv
dXQuIFRoYXQncyBwcm9iYWJseSB0aGUNCnJlYXNvbiB3aHkgYWRkaW5nIGl0IGFzIGEgcGF0Y2gg
ZG9lcyB3b3JrLCBzaW5jZSB0aGVyZSBpcyBzb21lIG1hZ2ljDQp0aGF0IGRldGVjdHMgdGhlIGZp
bGUgYXMgYSBwYXRjaCB0byBhcHBseSB0byB0aGUgY2hlY2tvdXQuIA0KVGhhbmtzIGZvciBjbGFy
aWZ5aW5nIQ0KDQpBbSBNb250YWcsIGRlbSAyNy4wMS4yMDI1IHVtIDE1OjM5ICswMTAwIHNjaHJp
ZWIgR3lvcmd5IFNhcnZhcmk6DQo+IEZvciBnaXQgZmV0Y2hlciwgaWYgdGhlIHVucGFjayBkaXJl
Y3RvcnkgYWxyZWFkeSBleGlzdHMgYXQgdGhlIHRpbWUNCj4gb2YgDQo+IHVucGFja2luZywgdGhl
biBpdCBmaXJzdCBnZXRzIGRlbGV0ZWQgcmVjdXJzaXZlbHk6IA0KPiBodHRwczovL2dpdC55b2N0
b3Byb2plY3Qub3JnL3Bva3kvdHJlZS9iaXRiYWtlL2xpYi9iYi9mZXRjaDIvZ2l0LnB5I242NjAN
Cj4gwqANCj4gLSBpdCBkb2Vzbid0IGNoZWNrIGlmIHRoZSBjb250ZW50IGNvbmZsaWN0cyBvciBu
b3QgOikNCj4gDQo+IE9uIDI3LjAxLjI1IDE1OjMzLCBEYXZpZCBEYW5pZWwgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+ID4gQWggSSBzZWUuIFRoYXQncyB3ZWlyZCB0aG91Z2gs
IGFzIHRoZSBuYW1lIGlzIHVuaXF1ZSwgaXQgc2hvdWxkbid0DQo+ID4gY29sbGlkZSB3aXRoIGFu
eSBleGlzdGluZyBmaWxlLiBCdXQgYWRkaW5nIGFzIGEgcGF0Y2ggc291bmRzDQo+ID4gcmVhc29u
YWJsZS4gSSdsbCB0cnkgdGhpcyBpbnN0ZWFkIGFuZCBzZWUuDQo+ID4gVGhhbmtzIQ0KPiA+IA0K
PiA+IEFtIE1vbnRhZywgZGVtIDI3LjAxLjIwMjUgdW0gMTU6MTAgKzAxMDAgc2NocmllYiBHeW9y
Z3kgU2FydmFyaToNCj4gPiA+IERlcGVuZGluZyBvbiB0aGUgb3JkZXIgb2YgdW5wYWNraW5nLCBp
dCBpcyBwb3NzaWJsZSB0aGF0IHlvdXIgZHRzDQo+ID4gPiBmaWxlDQo+ID4gPiBvdmVyd3JpdHRl
biBieSB0aGUgYWN0dWFsIGtlcm5lbCBzb3VyY2UuDQo+ID4gPiANCj4gPiA+IFRyeSBhZGRpbmcg
aXQgYXMgYSBwYXRjaD8NCj4gPiA+IA0KPiA+ID4gT24gMjcuMDEuMjUgMTI6MTIsIERhdmlkIERh
bmllbCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gPiA+ID4gSGkNCj4gPiA+
ID4gDQo+ID4gPiA+IEkgYW0gdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2h5IHRoZSBmb2xsb3dpbmcg
c25pcHBldCBvZiBhIGtlcm5lbA0KPiA+ID4gPiAuYmJhcHBlbmQgZmlsZSBkb2VzIG5vdCBwb3B1
bGF0ZSB0aGUgY3VzdG9tIGRldmljZSB0cmVlIHNvdXJjZQ0KPiA+ID4gPiBmaWxlDQo+ID4gPiA+
IGluDQo+ID4gPiA+IHRoZSBwcm9wZXIgbG9jYXRpb246DQo+ID4gPiA+IA0KPiA+ID4gPiANCj4g
PiA+ID4gwqDCoMKgwqDCoCBGSUxFU0VYVFJBUEFUSFM6cHJlcGVuZCA6PSAiJHtUSElTRElSfS9m
aWxlczoiDQo+ID4gPiA+IMKgwqDCoMKgwqAgU1JDX1VSSSArPSAiXA0KPiA+ID4gPiDCoMKgwqDC
oMKgwqAgZmlsZTovL2RlZmNvbmZpZztuYW1lPWNvbmZpZ8KgXA0KPiA+ID4gPiDCoMKgwqDCoMKg
IA0KPiA+ID4gPiBmaWxlOi8vY2YyMDAuZHRzO25hbWU9ZHRzO3N1YmRpcj1naXQvYXJjaC8ke0FS
Q0h9L2Jvb3QvZHRzL2ZyZWVzY2FsZQ0KPiA+ID4gPiDCoMKgXA0KPiA+ID4gPiDCoMKgwqDCoMKg
ICINCj4gPiA+ID4gDQo+ID4gPiA+IMKgwqDCoMKgwqAgQ09NUEFUSUJMRV9NQUNISU5FID0gIihj
ZjIwMCkiDQo+ID4gPiA+IMKgwqAgDQo+ID4gPiA+IEl0IGFsc28gc2VlbXMgdGhlIGNvbmZpZ3Vy
YXRpb24gaXMgbm90IGFwcGxpZWQuIElmIEkgcmVuYW1lIHRoZQ0KPiA+ID4gPiBkZWZjb25maWcg
ZmlsZSB0byBkb2VzbnRleGlzdCB0aGUgYnVpbGQgZmFpbHMgZWFybHkuIFRoZQ0KPiA+ID4gPiBk
ZWZjb25maWcNCj4gPiA+ID4gZmlsZQ0KPiA+ID4gPiBkb2VzIGdldCBwbGFjZWQgd2l0aGluIHRo
ZSBzb3VyY2VzLXVucGFjayBmb2xkZXIgdGhvdWdoLiBXaXRoaW4NCj4gPiA+ID4gdGhlDQo+ID4g
PiA+IHNvdXJjZXMtdW5wYWNrIGZvbGRlciB0aGVyZSBpcyBubyBkdHMgZmlsZSB0aG91Z2ggYW5k
IHRoZSBkdHMNCj4gPiA+ID4gZmlsZQ0KPiA+ID4gPiBpcw0KPiA+ID4gPiBhcyB3ZWxsIG5vdCBw
bGFjZWQgd2l0aGluIHRoZSBkdHMgZm9sZGVyIG9mIHRoZSBrZXJuZWwgYnVpbGQgb3INCj4gPiA+
ID4gc291cmNlDQo+ID4gPiA+IGZvbGRlci4NCj4gPiA+ID4gDQo+ID4gPiA+IElzIGl0IHBvc3Np
YmxlIHRvIG1vZGlmeSBhIGtlcm5lbCBzb21ld2hhdCBsaWtlIHRoaXM/IFdoYXQgYW0gSQ0KPiA+
ID4gPiBkb2luZw0KPiA+ID4gPiB3cm9uZz8NCj4gPiA+ID4gDQo+ID4gPiA+IFRoYW5rcyBmb3Ig
YW55IGhpbnRzIQ0KPiA+ID4gPiBEYXZlDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+
ID4gDQo+ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPiBMaW5rczogWW91IHJlY2VpdmUg
YWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gPiBWaWV3L1JlcGx5IE9ubGluZSAo
IzY0NjM5KToNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNz
YWdlLzY0NjM5DQo+ID4gTXV0ZSBUaGlzIFRvcGljOg0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9tdC8xMTA4MzY4MjUvNjA4NDQ0NQ0KPiA+IEdyb3VwIE93bmVyOiB5b2N0bytv
d25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gVW5zdWJzY3JpYmU6DQo+ID4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWLCoFtza2FuZGlncmF1bkBnbWFp
bC5jb20NCj4gPiBdDQo+ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPiANCg0KLS0gDQpE
YXZpZCBEYW5pZWwNCg0KVlIgQUcNClLDvHRpc3RyYXNzZSAxOA0KODk1MiBTY2hsaWVyZW4NClRl
bGVmb246DQorNDEgNDQgNzM4IDMyIDA3DQoNCldlYjogaHR0cHM6Ly92cmFnLmNoDQoNCklTTzkw
MDEgemVydGlmaXppZXJ0IHwgU1dJU1MgTEFCRUwgTWl0Z2xpZWQgfCBMZWhyYmV0cmllYg0KDQoN
Cg0K

