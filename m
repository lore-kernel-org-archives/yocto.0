Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14B70C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 14:23:19 +0000 (UTC)
Received: from ZR1P278CU001.outbound.protection.outlook.com (ZR1P278CU001.outbound.protection.outlook.com [40.107.168.30])
 by mx.groups.io with SMTP id smtpd.web10.8839.1742480590909037952
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 07:23:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=ZOr8HBNx;
 spf=pass (domain: vrag.ch, ip: 40.107.168.30, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tKKiG9LDIGqYw6390uUCbW1LAWMjDG3cAPf+LZ+oecNo/fAI9+5+Cjaiy+G9c2qiI84tjpeFx9tQbGv6vWxOJuLR1ObTLKgIztA0Knro913ZTmGFPB8GE/zeGYiNXs+YU/+oHder4ZraTleURtgGzIDtw81BTYO9a/hYTtoOo82Z96YHo5CdXgm8thnpCK0y/jDnC98/soeVpjJX0zBk+LZMU0iabR73HzbGwbu+xqHBsZ7GwPNkPD0S715LoYozgBd5TPl/hcOx8DSfolQQkysuFuBArSK3GPBHK2zxF9pakpbIlvBJDCFZppSvDK1uwwF4/2U//aV8VYch0dVE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFZYqBP571Jk5NHWX2uwPOrw+NnxGM6WMzSYGun+Xwc=;
 b=qAHWeUUR0Y7qItjSXijp6pCxSt2p1LSIFhvjGNX6GP/NIhaeaL5v1i/rwDfmkqKHbM6Vc5oNHg+Mu8M1tYlLVSOUHvaJrV/9+8TbDMfVmS8WiBocY9OT2J/LVG/nacG+FP+Uzo0sLpEit0ZK85cUqtB1L4Ptn4eFzOHEC+0BE9Z3Etkmj5FwDLh9VgHeXCfRPqxl0l3GvzfICgxINtfF68mHRXnILkpY5fAieD4Jsa+L0uI0F7UoFFfR2ICU8frW3B2Fsr2jctMQ6OF1GYmuJwDxf4hP2LXWb68u2gEWv0y18ej/T9Sg7lOlN1f6+zyJFVv079ucSyO33Psh0+O8cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kFZYqBP571Jk5NHWX2uwPOrw+NnxGM6WMzSYGun+Xwc=;
 b=ZOr8HBNxFcOZRLN9GUHVdu/y1c6nEV3qYzJe1djPhyYKBomRvI4iey8idhOEvd/9EOj3wvFyw+EpqWfsPl9EVP0obxnmlmxScGGKCZCE3bnabgXnsYVim9MLgVVGMhepAAXZuSyrovoj+xfC+0gV3GsiKBODbjwuFHGV6cu4zAo=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR3P278MB1561.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:91::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 14:23:06 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%4]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 14:23:06 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Failure expanding variable GITPKGVTAG in libusbmuxd_2.1.0.bb
Thread-Topic: Failure expanding variable GITPKGVTAG in libusbmuxd_2.1.0.bb
Thread-Index: AQHbmaOYnvqeEqgygUOVJpc4m2AxQw==
Date: Thu, 20 Mar 2025 14:23:06 +0000
Message-ID: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR3P278MB1561:EE_
x-ms-office365-filtering-correlation-id: 138e8fdc-35d6-4406-033d-08dd67babb66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?eWkvb0xQK0xXM3V0OU9QQVdaVEF5WTdZUkVZUllYRGluSVg0V0l1U3V1dFk5?=
 =?utf-8?B?VWFCMUdKL29KU2FwRHhST2RicThnVll5VDUraEZvU3Z0SEgydkZYQW8wVzds?=
 =?utf-8?B?WEloZjA2bnF4a1Q0SDltMHVldDZSeEZpMUxJZm5oMG1BN1hqKzEwdVZoQXZM?=
 =?utf-8?B?RzVOU2p1eStKakFXR2pxS0FDMFVZK1ZWd0FFNXNFaWRFVFkrNkEyRHlIUkFt?=
 =?utf-8?B?ZUcrbkdjT21UOVBrWldjV2F0aHAveWxtSVMxcVZ2QklZYU8wNUVVNWlRV1E2?=
 =?utf-8?B?NEd1WERUb1pHSmR3VGNUMFUrMDhYNGRFSzZtT0d5T2ZHZEowbjgveCttSTJa?=
 =?utf-8?B?TmNkbktQMXRNcWZlTkx2eXQ5YWhUWXgwcWZtWGZhajZNUzFTSHVJNnpIVTZi?=
 =?utf-8?B?VVBNVmVJWjM5QjRFUTZKRk1GY1Q1UEQ5ZmxnTURkdDMvTUdiRG5ZSndURW1D?=
 =?utf-8?B?TVJsdGRtcmtVT1grRlRaa0VzV1J4VnRudG84REl1ZmozNHVOUDNSWVZiMEQ3?=
 =?utf-8?B?TWRZTTFzeTV5bGxhSko4Q1d5bU1rSms5QmxIZC9hVG8wdjFGTlhIeHhCZGc1?=
 =?utf-8?B?TlN3NmE3RW9DRGcrU05GUjdYNW1jRHViTTZBR3JScEExNGdDRXJUZ05HVktG?=
 =?utf-8?B?dTNTc3h2b0hmWTdCZ1hCMm1NM1hzdnZzQkQ2SlU5M3NmWnVMS0R3aG9Rek10?=
 =?utf-8?B?bnA2MjRweSt0WUZ0UWtsemlEN1RlWE45OEZqQm9xejJCaVdGa1RZUllKdU9U?=
 =?utf-8?B?bmlUTHV6Tnp6UVZsY3Z2OTltQ0c3ZTVqNHEvRW4vZ1Q4ck5uZzFGZFJNUzEz?=
 =?utf-8?B?cU5jK3BteGtuVmxnYS84QmlkazA5WFVoaDdwUFYvOVA3WHlaNkdsZXdYUG8r?=
 =?utf-8?B?R1NQdi9BZjNPQUk1UXRmeUNkaElNMERkQlFUT3VBMHRlREIxSTZ1Vy9ISVZD?=
 =?utf-8?B?c3FsNDlZRzcyOUFhTGx6K3IwZEdJck0vY2IrSVlkaXd4WVRhdW9mRHM5eU5C?=
 =?utf-8?B?QUtyUHFVaGhuL3NvS0ZScjc2VStMNzBpVU5YMnhOd0xleEtxRENyK2d3Q0Js?=
 =?utf-8?B?ZmdwMHhVUFRDSjV5ZGdlU2xrWWswSjBoWkFuWm5QeUl5aVdoek4vWkU0eTBL?=
 =?utf-8?B?UFAxYUZvdGd1VjVOYnpYVE5pYnVicTJMSHJjTmM1bmxvN0FXRThIZlJoVlg4?=
 =?utf-8?B?ZlRXOGJtODFQT3Y2eW83WGRPVXlyRzQxbmhYdVdGTnovYk1wbGR4QjRvemM2?=
 =?utf-8?B?cUxXaHhQMTRtalBLZkZjQXBnSkw5MkZraWJFUkNoWjRiNFdCcXY2RmhYQlpt?=
 =?utf-8?B?SFp5NG1OMVROWXM4MitmakM1a0QxUlIweXRkbnBnRE10QVBybFhJYWtCUDRm?=
 =?utf-8?B?dzRpS2JHK1ZDcmQrcElVNHFLR3ladjRxU1V6SHZPR0hlVEFLVE9vNG93clZR?=
 =?utf-8?B?dlloL2twYXlWUi9TTDZ3OTFrcVBqWjMvY2NFcnRkTjBXNjgzdm9ZQkMyZmpE?=
 =?utf-8?B?RUFxc3VSaUtVYkpqV0lWeENYZFphRk9BdHZMa0x0U0FaV0FWZzdRb3RENDJS?=
 =?utf-8?B?RFd0UG96cG9HN20vNmV2TzZkKzNtVFRObTZ5OHVaUGhjUVJRQnUyVFBBQzdJ?=
 =?utf-8?B?ZFBiajdJUnNrVXF2R3FRMTI5NFNBUUtmVHQ3dlJob3VqbndvZ3ZvdkZma1lH?=
 =?utf-8?B?KzVQRXlCcU8wL1N0bGRuZi9Sd2liTk1nRXl3YkhaTnJsZ0ZzRDBjZWYzVGtG?=
 =?utf-8?B?NVVWUm5DRVpUNHBqZFBKd2FTcGJpTWdCNzRZSjRrQllvMHJkaWp4cnZyblJp?=
 =?utf-8?B?cXhkcWJWRGhicHUyUW8ra0g3V0hyNXhDMEFOdkYyYnlERUtTT2xlcm1Vdm1p?=
 =?utf-8?B?bXVsU3pna2ZCMzRPenEzT3RrSit2Z3Yzek1rVVhTREVkaEJKNFAvUzZBTjQ1?=
 =?utf-8?Q?oM9iUV0XGP9nRswnR3jY9jX8jlEjm5YP?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?OTUxaUlEcnFSdC8yT09POFdiY3krYS9pT3dScUs3cUlNaUNrNWduVktDQUQ0?=
 =?utf-8?B?eVJGUmE0Tk5jZlFVTXdMb1NIaVJvK1JHa0NVcWxUeEIvNlVFcGkxSXFiSXZX?=
 =?utf-8?B?S004OS9WcW9pd2RHenU3dVdrd3Joem43NjFjRHJpYzB3QS9icy9Ibk9Nengr?=
 =?utf-8?B?RjNTUUNvZXNEVWtLZW9mNmN2SW9xcEwyYTNKbWo3Yk9EajgrM0lhT3dDQi8w?=
 =?utf-8?B?cFJucWkxZnBEcHVVZW96eGpxMm9HRTNiYm9tU3N2cEVHN285ZlhnZFNURlVX?=
 =?utf-8?B?ZUxZdzI4aDd6UDFqdmFPbzZtcEJkM3BsK1BTTjFPb0pvS2tSaU5jdDh3REtu?=
 =?utf-8?B?SFBNd2xZOGF4UXZYVStXaVY2ZVFVQSt2K2lud1dZTzVOZC9ya3pnS3RKK2Rs?=
 =?utf-8?B?MExVUDJZc2ovTlR0a0F6V2hFQWtseVE4UEd5Y2NPbytZaDdINjQxVkVsVm55?=
 =?utf-8?B?bE1WQXB2YWZiZG9xUkU2WUFoL1BaM0RkOHMvWUdLT0wwNU9KWUZ5KzZPQzRD?=
 =?utf-8?B?alZ3YVZhT2NTSVBEb043L1Y3YjJIK0QwZFVuYWZRRGpERTBQYmZmb0R1cVhG?=
 =?utf-8?B?V00waU5tQ2tDN2c1anNuMHFlaFE3MkJiZzVaTnBuNDZIR0plSWhEU0RoMXY1?=
 =?utf-8?B?bHEyUTQ5MHY1NUpUbm1aejdublJsempVbDFjUmkxOXRPc2V1cmJ3Y0daRU1I?=
 =?utf-8?B?UXgybHhwbUVpb0pkNDRiYnJ0S2s2ZEIzZ1JJT0VHelJML3ZPY2xJSGFucEFL?=
 =?utf-8?B?OUZpT3RJWVRoRy82SENCRGVrbGtvWVgzMVowOVhLNnJLN1pSV1daNytFVjVs?=
 =?utf-8?B?Y3o1RmZMWkVvRUZMcGdxc0g3aStqekdBeHI0TWVNbXN0Yi8vRzIrWFRkODhN?=
 =?utf-8?B?cDFlTEd6cHl0b3E3dHFON2FJL2ZlS2VjWG5qdmZ0ZWhrTmlkeE1OMmNlUC8v?=
 =?utf-8?B?WmdMOG1sU3dPMFhqRVdxcHUwTkdoTDZOOXZ4VzFDMmx0WXJ0ZkNoNWJWVXlj?=
 =?utf-8?B?bC9DZ2U1UHB3U0M0UlBmZTNRL1Qza285SWhzNlhrWlcxUUpDR1p1c1FWbVpi?=
 =?utf-8?B?aG9qWG85Y1Y1K1J2YUZKb0V4cjRvSjlTMDJzK0YwNXhZeUZTbTMzRmxneVpa?=
 =?utf-8?B?VENvRXhySE1UeDRLeHlweUFGS3ZvU0orUGptUWkyUGt1TFNrcjdZbUNaREhx?=
 =?utf-8?B?cEFGalNSUnM5VDNNVzY4TjBtSjBnYjNPOVRXdUp4cnJDWnByRUd2YjI2Z0hk?=
 =?utf-8?B?a0pTRlhWKzhkeGNPdklFd0lEYlBVNXkvcWxycG9IYU5OZzBNQTF3em5jQ2dB?=
 =?utf-8?B?L3ZVaXRDNk9kQXJzZVE0ckdMYnl3Q3EyUVJsMGJuQ2NVSzIzcys5Q2ZoOE5z?=
 =?utf-8?B?QlJHenIzVzJOSXB5YzF0ZG5GU01sckRCQTdvbTFhZmx6ZDJVT1p6MHREWGty?=
 =?utf-8?B?ME9FZmhtQXFMVXpxc1Q0ZDRCSXdrWE5TRXhCQjgzeGRZTHp2ZThVZ3U5ZWRN?=
 =?utf-8?B?QytmZFlyT0c3dkZwMmpmMXBmZm9aN3IxdGdkOUpkdmJyeSsxUzhUM3YvaXo0?=
 =?utf-8?B?ckZHQ2xsUmx6TUNQeGVJa0d5YmtJeFBCaHk1TlllTEFldXBvRHNxd2RBbVp2?=
 =?utf-8?B?cGwza2JGR0JjVU5EcWV3RytmMVFhUlJMS1V3VUZXczZMUUVEK2ZzcUpvVUI5?=
 =?utf-8?B?MmJvOHpJb0hXYjd0Um5HZHNmcjdQVFhpT1FQRVFRTjhpWnU5QjhDWVN0ZExt?=
 =?utf-8?B?ekpYUkJ1ajdlTE9XVER2RkQ3a09JRVdmelVnSThmMmtRYjNTa1BnellzdHBp?=
 =?utf-8?B?MFArSjhibTd4UVB1Rit1TEZwV2llcUs5UEZmR2d1T2R3ZjVJRmFZVXFOaXZV?=
 =?utf-8?B?c296ZHlCeUtkK01MU2hEQnpxYmxDMXNKRUsyd0ZselJZU1dueDlUb2RZbFcy?=
 =?utf-8?B?cVFxaGdZQ2xTaGJlQzdJV1ZsK3JZNGdTRDJJaGp5c2VuU0lsSXl4MGtwMEw5?=
 =?utf-8?B?cVF6NlhHR3hhQk16MlFoRVU1ZjhxVjM1QWhKajBSZElPZGxIVmpDY3FaaG5U?=
 =?utf-8?B?MnlOemRaaElFQy9IWjIwbE14dVpwSzFnZXBERm5uWWd0eEsvUTk2UXcvSDV2?=
 =?utf-8?Q?oSV3SptHpGwWeIqB/OGQYdmaE?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E7AFD488CC081E4DB719C4C6BD9624D7@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 138e8fdc-35d6-4406-033d-08dd67babb66
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 14:23:06.1732
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NXJ9Il27fr/bzS4pO8bmuWGS7QM+cQo0L7PiJvdnyR2+QuzTRg3SyvIsjzpioyA6TgeIC0N1gR53tCbhlO1y6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR3P278MB1561
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 14:23:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64991

SGkgdGhlcmUNCmEgcmVjZW50IHVwZGF0ZSBtYWRlIG15IGJ1aWxkIGZhaWwgLSBJIGdldCBhbiBl
cnJvciBzYXlpbmcgJ0ZldGNoRGF0YScNCm9iamVjdCBoYXMgbm8gYXR0cmlidXRlICdyZXZpc2lv
bnMnLiBUaGUgY29tcGxldGUgZXJyb3IgbG9va3MgbGlrZToNCg0KCVdBUk5JTkc6IC9tbnQvZGF0
YS95b2N0by9iZjEzMy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3JlY2lwZXMtZXh0ZW5kZWQv
bGliaW1vYmlsZWRldmljZS9saWJ1c2JtdXhkXzIuMS4wLmJiOiBFeGNlcHRpb24gZHVyaW5nIGJ1
aWxkX2RlcGVuZGVuY2llcyBmb3IgUEtHViAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8IEVUQTogIDA6MDE6MDANCglXQVJOSU5HOiAvbW50L2RhdGEveW9jdG8vYmYxMzMv
bWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1vZS9yZWNpcGVzLWV4dGVuZGVkL2xpYmltb2JpbGVkZXZp
Y2UvbGlidXNibXV4ZF8yLjEuMC5iYjogRXJyb3IgZHVyaW5nIGZpbmFsaXNlIG9mIC9tbnQvZGF0
YS95b2N0by9iZjEzMy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3JlY2lwZXMtZXh0ZW5kZWQv
bGliaW1vYmlsZWRldmljZS9saWJ1c2JtdXhkXzIuMS4wLmJiDQoJV0FSTklORzogL21udC9kYXRh
L3lvY3RvL2JmMTMzL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1leHRlbmRlZC9s
aWJpbW9iaWxlZGV2aWNlL2xpYnVzYm11eGRfZ2l0LmJiOiBFeGNlcHRpb24gZHVyaW5nIGJ1aWxk
X2RlcGVuZGVuY2llcyBmb3IgUEtHViAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgRVRBOiAgMDowMDowMw0KCVdBUk5JTkc6IC9tbnQvZGF0YS95b2N0by9iZjEzMy9t
ZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3JlY2lwZXMtZXh0ZW5kZWQvbGliaW1vYmlsZWRldmlj
ZS9saWJ1c2JtdXhkX2dpdC5iYjogRXJyb3IgZHVyaW5nIGZpbmFsaXNlIG9mIC9tbnQvZGF0YS95
b2N0by9iZjEzMy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3JlY2lwZXMtZXh0ZW5kZWQvbGli
aW1vYmlsZWRldmljZS9saWJ1c2JtdXhkX2dpdC5iYg0KCUVSUk9SOiBFeHBhbnNpb25FcnJvciBk
dXJpbmcgcGFyc2luZyAvbW50L2RhdGEveW9jdG8vYmYxMzMvbWV0YS1vcGVuZW1iZWRkZWQvbWV0
YS1vZS9yZWNpcGVzLWV4dGVuZGVkL2xpYmltb2JpbGVkZXZpY2UvbGlidXNibXV4ZF8yLjEuMC5i
Yg0KCWJiLmRhdGFfc21hcnQuRXhwYW5zaW9uRXJyb3I6IEZhaWx1cmUgZXhwYW5kaW5nIHZhcmlh
YmxlIEdJVFBLR1ZUQUcsIGV4cHJlc3Npb24gd2FzICR7QGdldF9naXRfcGtndihkLCBUcnVlKX0g
d2hpY2ggdHJpZ2dlcmVkIGV4Y2VwdGlvbiBBdHRyaWJ1dGVFcnJvcjogJ0ZldGNoRGF0YScgb2Jq
ZWN0IGhhcyBubyBhdHRyaWJ1dGUgJ3JldmlzaW9ucycNCglUaGUgdmFyaWFibGUgZGVwZW5kZW5j
eSBjaGFpbiBmb3IgdGhlIGZhaWx1cmUgaXM6IEdJVFBLR1ZUQUcgLT4gUEtHVg0KDQoJRVJST1I6
IFBhcnNpbmcgaGFsdGVkIGR1ZSB0byBlcnJvcnMsIHNlZSBlcnJvciBtZXNzYWdlcyBhYm92ZQ0K
CVdBUk5JTkc6IC9tbnQvZGF0YS95b2N0by9iZjEzMy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9l
L3JlY2lwZXMtc3VwcG9ydC9mcmVlcmRwL2ZyZWVyZHBfMi4xMS43LmJiOiBFeGNlcHRpb24gZHVy
aW5nIGJ1aWxkX2RlcGVuZGVuY2llcyBmb3IgUlJFQ09NTUVORFM6ZnJlZXJkcC1kZXYNCglXQVJO
SU5HOiAvbW50L2RhdGEveW9jdG8vYmYxMzMvbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1vZS9yZWNp
cGVzLXN1cHBvcnQvZnJlZXJkcC9mcmVlcmRwXzIuMTEuNy5iYjogRXJyb3IgZHVyaW5nIGZpbmFs
aXNlIG9mIC9tbnQvZGF0YS95b2N0by9iZjEzMy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lL3Jl
Y2lwZXMtc3VwcG9ydC9mcmVlcmRwL2ZyZWVyZHBfMi4xMS43LmJiDQoJV0FSTklORzogL21udC9k
YXRhL3lvY3RvL2JmMTMzL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1jb25uZWN0
aXZpdHkvdXNibXV4ZC91c2JtdXhkX2dpdC5iYjogRXhjZXB0aW9uIGR1cmluZyBidWlsZF9kZXBl
bmRlbmNpZXMgZm9yIFBLR1YNCglXQVJOSU5HOiAvbW50L2RhdGEveW9jdG8vYmYxMzMvbWV0YS1v
cGVuZW1iZWRkZWQvbWV0YS1vZS9yZWNpcGVzLWNvbm5lY3Rpdml0eS91c2JtdXhkL3VzYm11eGRf
Z2l0LmJiOiBFcnJvciBkdXJpbmcgZmluYWxpc2Ugb2YgL21udC9kYXRhL3lvY3RvL2JmMTMzL21l
dGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1jb25uZWN0aXZpdHkvdXNibXV4ZC91c2Jt
dXhkX2dpdC5iYg0KCVdBUk5JTkc6IC9tbnQvZGF0YS95b2N0by9iZjEzMy9tZXRhL3JlY2lwZXMt
Y29yZS9pbWFnZXMvY29yZS1pbWFnZS1wdGVzdC5iYjogRXJyb3IgZHVyaW5nIGZpbmFsaXNlIG9m
IHZpcnR1YWw6bWNleHRlbmQ6YnVzeWJveDovbW50L2RhdGEveW9jdG8vYmYxMzMvbWV0YS9yZWNp
cGVzLWNvcmUvaW1hZ2VzL2NvcmUtaW1hZ2UtcHRlc3QuYmINCg0KSSBjYW4ndCBmaW5kIGFueXRo
aW5nIHdyb25nIGluIHRoZSBsaWJ1c2JtdXhkXzIuMS4wLmJiIHJlY2lwZSAtIGhhcyBhbnlvbmUg
YW4gaWRlYSB3aGF0IGlzIGNhdXNpbmcgdGhpcz8NCg0KQlINCkRhdmUNCg==

