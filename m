Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6025EC0218C
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 16:04:11 +0000 (UTC)
Received: from ZR1P278CU001.outbound.protection.outlook.com (ZR1P278CU001.outbound.protection.outlook.com [40.107.168.19])
 by mx.groups.io with SMTP id smtpd.web10.55332.1737993845944951094
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 08:04:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=HRrquO5W;
 spf=pass (domain: vrag.ch, ip: 40.107.168.19, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ndkb3FUwG53QebEaz8EvlCp+YHemanGGcY2QZRKO6+yQ43/zEWYlRz2ESfHJmTI8e65NHmFC9V/5FPsv0siat96J+aF0Qyta36HLv2SBpGRnzG8vBv0kFWdN26PCNwZfKTzVw+B/wdsd4mjvl/zPKydj1/R6pddi2uMGBI4OkdTs+hYrohoMdI7zNxYW/QwvpiVdTPpjT6nT8plZDv4PbyqWpwkcJcj1b50970npn1nQ+Qn5nSTWlUJpFfC0IsxLArjEyi5xrxgpkBTXJ3ygX0RDZP06c2R/dOQgwsulB+Irq2CdZB3sZ0xwjiHemZfX7RbD+PU1XRAaBOWW8UhOBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nWVTYLIXcPRmuaB7JiRjxp++ebZGaETBCoO5KvHLjjA=;
 b=q2ZH1az9xHcj4x1M/oHhfPx50McU3aQHnXcuvafAFRyd0+zwbprZI4Eh9yykVrU+kGaXAJIZQnsoEWtOZSvD4+gr45OHWvJRlvdYsoMVTYHDO9wzj2ETEEQISs4h0i8glmt+LalqwYsWwx8jfNW1Ld8AlPH3Cd/EO7wyuSkRb2y/3JpRJo4AWEI55TnrW90302ZkscFqSCIWRrBAe0Tzoves3QSOELraog4XnfFk2xjdw95JcNmyQx1AC6lFElxB7KGtZSQ1QU18xZOZ7RlIUS5dRH2efhh3NQGrOSAxusNlP4Vv7ajZtXVI5FL2uDaD+18BpxCdAC5T2MYDYnaUcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWVTYLIXcPRmuaB7JiRjxp++ebZGaETBCoO5KvHLjjA=;
 b=HRrquO5WPByUcQfwJOZoz9SgV/Hnm9ifaQoolV/QWiMoG07V2gzHL9SvgiDq3wFTXt/W0lEDSQh9Q4IYXiwlIb40c1AtFu2i/QgHqeb60f0Mwua2ZAgZqhPtkZ6dKvbW1McqE0d0XY1RiN+ZaQ20HPj8zQBbMRKbyhZrsfkjRGg=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR0P278MB0011.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:18::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 16:04:02 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 16:04:01 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Topic: [yocto] kernel append file with dts in SRC_URI and subdir
Thread-Index: AQHbcKxSky5zFidL60yEzgkj+l00n7Mqt7KAgAARHoA=
Date: Mon, 27 Jan 2025 16:04:01 +0000
Message-ID: <92da3307390c416b4bdcacbf0c9545cfa1e1a35d.camel@vrag.ch>
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
	 <b9caa6eb-7244-4872-988e-c90f21fb5675@cherry.de>
In-Reply-To: <b9caa6eb-7244-4872-988e-c90f21fb5675@cherry.de>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR0P278MB0011:EE_
x-ms-office365-filtering-correlation-id: dd260ff7-cf90-4099-2534-08dd3eec3766
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?QXBnQTkyUUxpK2xibkNVNllZc0VyUjdyRUNFNnh4aXRTY25FYkdlQ2hYODBl?=
 =?utf-8?B?Ky8zSk9ieCt5Y0djZ1k3OUtuc0VKMHNrVzdheWNTWHdoeFJrUnA0VWdvd3FF?=
 =?utf-8?B?VmRlbnEzT0xpNzhET0p1bkc0QzlJcXU0cVk2akx3MkhSUUdEUm0yUDc5RkFu?=
 =?utf-8?B?STI5VkowTWQybi81REhtT0tzMlhkZFgzOEJ3b2FTOURsdEUyRDJIckRmc0tX?=
 =?utf-8?B?TWpic1hYaEpnSFpDNWhrY0NmNm1YeUh3R2tqeWJ5MFpQNkwzZjYvZXBBR2pJ?=
 =?utf-8?B?VTAwVG1HYUcrNjhqSVI0U3ZhRnlzYnBVS1dFQlFRMkNnMUp1TDFZS2JEU2Va?=
 =?utf-8?B?a28vZS9QbnF2RHpLdjBnQWhZMkF1UVBLcjcxUXJDZmRSdlo5OU9ISzVkbkRV?=
 =?utf-8?B?YmxmMWQxbHVLM2xZNTJ1b3QxeHhGQldwUUZ4NU8rclczcXJYU2lrZFV3OW1H?=
 =?utf-8?B?SUZNeVkramNQdjlZdDFsSWZEODB3TktPN0MyV3B1eWYzN080d3ZOd3FobzhQ?=
 =?utf-8?B?TGl4N0tCZGt5WTF2YkFPUmN5STlQYkhhcSt1MnRMYnd4Z1lBSnlMSGJKb01n?=
 =?utf-8?B?bXhWWU5oYmI2bjUzL3ovVi94UWZWWnhDQlVQZElwa2hrL2N4N25zdXBCNjdt?=
 =?utf-8?B?cWhVelg1dUkvU1dzYmFmOFJvcVBCMHR6ZTZlM3FOM01RcHNjVEtlU2NFUWNW?=
 =?utf-8?B?dVBJUEVKRElDdVljNEhhWjV5ek1ieWszcDBiTm44U3ZiWTYyUEhXMHJnTk1I?=
 =?utf-8?B?YzMzQUxaTkZpRGdyejRUMW9lWkg4VWpXUjZtbHhCRWdkSVdkRFExSGE4QnJv?=
 =?utf-8?B?NzR1c1hvaDU5WDQzZ25YRU9qekpMZ1hVSnNrT1JyU2o5TEc3WGUzbWlob1ZJ?=
 =?utf-8?B?bFpSaG1BQlQvTThnUk5rYUVFRkt4dHVFV3c4UmxvTHNxV0RsbldIWFNEeDdk?=
 =?utf-8?B?K1JFRnVGTkJPeDAvb1BlTmdKYjAzVUl3WDI0Uk92bHpmL0JzcDZLWkJaWllw?=
 =?utf-8?B?VTdHekt1Y0h1QytQbDYwN0ZxWEQ5ZkpCbE4yUXJIZnhzeFY2QnlDMmZaVUlH?=
 =?utf-8?B?bmVUNGNvT0VyQkRiRUZ1eCtOaTcyRUd3MFZqMCtBU04xM1VPZmdJdTJVdmFV?=
 =?utf-8?B?ZFVaUlBHdTN4RmNDOFJjWEh2SWkwdHFhZHg4K3E4Q1dJNG4vdFRmZk5udnFy?=
 =?utf-8?B?Y082RCtGOUJFc1krd29wUkZYK0E1THlJNXlITXcyNWdPWWJLSVdYYVdtZzlG?=
 =?utf-8?B?TFZ1cWhDZnUrSWZkaURnOUEvdys3amlsaEtkcFFaQU5lTFFVWU41eldHd05F?=
 =?utf-8?B?U2YwaC85anAyK25XV1U4bVRtZ2h3Tnh3a0hwS2tseE9kUkxFbFpPejRRbmNx?=
 =?utf-8?B?Qm80NUM3Z01BNGpuak8vVUsrTnEySDMrdFJucDhUbHZwUnhwUmo1RU5KZHBS?=
 =?utf-8?B?b3g3RTNicSswOVIvY0d1aWwzb0xDdFRiWVBlR1I5Q3Bodm4rNGE4aFF3Q1gw?=
 =?utf-8?B?UDQzQnNseGlVckg3QWo5bm81Rk5zTFhnbzZQR2tOcTVHV2VrYnBmbHB0NHE0?=
 =?utf-8?B?NTZReXNsZFdRV1c4VUh0Slk2SlZhdUgyditzcVNZZVorSitaTDV1NGptWVlS?=
 =?utf-8?B?UDZqMjhkK0xYOGF0N1hpRURnODlReVBqUzhOZ2pKUXJhV2RQaVhReVRMK0d1?=
 =?utf-8?B?YnBGQWV2RVpDSDVmalM0bmtDSXNFcjF1ZmxzM0xZR2p4QlJJRDhFRC9EQUxl?=
 =?utf-8?B?Uk4zZHYvVExlS1hhREU1NkJDTXNtSzJKdk90QVlyY2NGcTBJK0FFZUdzWVY4?=
 =?utf-8?B?VU9nMjZNQTFBaUM5Qi9EenI2bXFtOFRSNzZVRHl6MVMwU1ZHUHdYNnFYcjVO?=
 =?utf-8?Q?+Tb5bD7IrprVZ?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bnNST0hpSUswTFFteGRkV1B3dlM3WjlPRWxyNUJvR2hHYXZkSUd5bWY1dDFD?=
 =?utf-8?B?MkFxTU52bk1ENDAxM2x0bHNxRGxUOEptZDFsK0dldGFRVitGM0FYM25jMlVH?=
 =?utf-8?B?YzNZYUtHQ1dDT2gzU2t6U0VxeGVZZ0ZFWFB4THhGaU9NbjlQeXBnSlIzb0tC?=
 =?utf-8?B?ZnpBQlR1OU1wcmVTTGtVZzl1Kzl3dVlEUkFaUjV3Ni9mUW9mZkM0d294d2dz?=
 =?utf-8?B?K0tBMkFlbUM0cG0wWkUvbFUyYWJiVUZZbFBvcGJrWkFXUG1TZGV2Y2VHMnpJ?=
 =?utf-8?B?SHBLTkM1WUh1bmExbFZ1RDk0Z3JUaGZ0aFRsRk9VV3pvMVdHbnZaUXRjUU9F?=
 =?utf-8?B?QWdXNVdiSEhad3dyalhwTm9vMW90OGxOZWJDa01KTGRFRHlsUmlrSnJuT21B?=
 =?utf-8?B?NjNEWFZrMUF6NGF5bnYxWUJpM05tY3NveS9zenhFOGE3SkxTbU9HZEJldVNn?=
 =?utf-8?B?VVhLdnVrVENBUndLVGdpRlNtQi9UMW1TYUlXNi8vRHloa1NrT2NNVFE3OHhR?=
 =?utf-8?B?dGJvS3g3Rk1NejJaajhjL2IzVFRKdnpNZlJ2bThWSmZwak5mTnI1a2JvbkJC?=
 =?utf-8?B?WFp3ZFF0eVl1dUtsVDJ0My94Mloxb1lpNU1YTEF3SnZ1SHozSVNPY21UN1Jp?=
 =?utf-8?B?S1RCczEwWUsvd2h4ZTkrZnMwZlI5UVliWkp0RjY3cDR5RTFta2JBZXpBdTBK?=
 =?utf-8?B?b2duRVJKWFByZmtkek1qK2FzelByamkvTldkTEZmU3Y4MnBNSmE0QVZGcTBs?=
 =?utf-8?B?eHl6Qk40aGxEWkYwaU85Y2pHa2V3Q1ZQcldLYjluTjNCU242bDI2blNGTDFH?=
 =?utf-8?B?blZtRHJWUU50VENkL2ovZFNOVVRNRVVJMjZWNS93SjJDUXZEK2VUSlFRRisw?=
 =?utf-8?B?dnM0SkZna3BtWm9UTlhtSHhwVm1TYkYxcTRLOE1MT2Y4Z2k4R05kdzBnVE9x?=
 =?utf-8?B?YnU0bnVKVnZpTkJxc1dKbHg0ZlAwTG40UTV1VW4rS25FL294amZXVWJBVEc5?=
 =?utf-8?B?Z3BHU1FSSzJ6dTdzTEJvYjBuU3FwMTFZZlR1L3NPY3dEWkd0QzV4ekhKOHdB?=
 =?utf-8?B?NVIzS1JlSlVmWjhUQ3laUmNBUW1PTTdlQUpQSm9KNkM2ZEN2TkFnaFA1M1Fy?=
 =?utf-8?B?UVY2NjFqWVhzS2hnaUhCbWQwWjZDZTFYM2gwMC9SRW1RS1pQYmlpMzhZM2dU?=
 =?utf-8?B?Q0pWd2IwY2htR3BtcWo1ckJuK0ozdW11RkxyUnRiUFptNWR5amFUSklJNlgx?=
 =?utf-8?B?VlFXZHhpSk5LRjJNNjJlTWRjb3M4eS9WczAweHZxN0g1emUrUGVFbmFJS3lD?=
 =?utf-8?B?QnorV3R2YnlVN3JRL1RvY2VPNzc3d2FLR0U3bHNPVUNJUThxSUVHdkpzL3pM?=
 =?utf-8?B?bjJmSGxGaFZhR1p3T1I5V2pjZjFnczVkMVQrL1g1a0h2Y041SEVOTGh4Umt2?=
 =?utf-8?B?dFArbjJObW8yamtsZmRWeHM2VHNBbC9FWm41TTFuTS84S0tNMDJCWjlKaklz?=
 =?utf-8?B?bFlXM2NBbEdyRE85MWhIeEhYbTFxUUhEZGVIdUpranpXdWxMbE50VmtpaXMr?=
 =?utf-8?B?YzdSUzJQSzhzVTFnajRzRUtRQlpja1hWNjJwckZFQXU5LzF1TEhEZDY3c0pt?=
 =?utf-8?B?c0x1cHAzRHcvUmVXbHRCZ2ZXU0RVbTJWalVXR1ZkaHlKRXRoYlU2Z3lLUVNx?=
 =?utf-8?B?R2pLYXJHUXJKYTROSmJHUWxCdWZrSmxuMlR4dFVoNStCUlk0TlVheUxWWjBj?=
 =?utf-8?B?Vi9wWUxyVEUyVU1aSEpkNlAybEhKUmdHa1QrODBvWjBETzNacHBoUEV6VDZ6?=
 =?utf-8?B?a1RtL2puMnVzZHlSckRubDJNSEgzb0llL3ljajZpYm4zK3VOd0RwU2ZpYXVh?=
 =?utf-8?B?RU9SeXFta2tPM1htT3FNNkMzTE8vVVBUcUxUWVNlMmx1MS9Kdkh2UU5iWDV4?=
 =?utf-8?B?YzVtR1FadnBsK0JDVmY2MFl5WXVzcXkyS1Q5STRtUWdKcU9MR3NacTZVTEhi?=
 =?utf-8?B?a28wZFRBWHhGbSsxUzZCNDloNTZJSFp2Z0xnOGF4WDBENFVaL2k3cTdKb3p5?=
 =?utf-8?B?bE1zcTEvWDI4aFJNdjE3S3FOeWxWdUVPWjFxOGpFLytXTUg0WHkwQXY5STVJ?=
 =?utf-8?Q?5ob883HU2NErGcLEyz2oqppmn?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <402ECCBA6B0B814D9BC13025F3617A8A@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dd260ff7-cf90-4099-2534-08dd3eec3766
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 16:04:01.8709
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BwAaq/tkCv7BZN9ElZeDwEzuWs37zUCTP07erNkMJOePaTUZVrctHp42i9Ewfqckj/abl5aYk1IN6PPeeOudwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR0P278MB0011
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 16:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64645

WW91J3JlIHJpZ2h0LCBzb3JyeSwgSSB0aG91Z2h0IGl0IHdvdWxkbid0IG1hdHRlciBtdWNoIGJ1
dCBJIGludGVuZGVkDQp0byBhcHBlbmQgdG8gYW4gaW14IGtlcm5lbCAobGludXgtaW14IGZyb20g
ZnJlZXNjYWxlKS4gQW5kIHllcywgSSBoYXZlDQpmaW5hbGx5IHRha2VuIHRoZSByb3V0ZSBvZiBh
IHNlcGFyYXRlIGtlcm5lbCByZWNpcGUgLSBpdCBtYWtlcw0KZXZlcnl0aGluZyBlYXNpZXIgaW4g
dGhlIGVuZCBhcyBJIGNhbiBub3cgc2ltcGx5IGluY2x1ZGUgdGhlIHNvdXJjZSBkdHMNCmZpbGUg
YW5kIGRvbid0IGhhdmUgdG8gY3JlYXRlIGEgcGF0Y2ggZm9yIGl0Lg0KQW5kIHlvdSdyZSByaWdo
dCBvZiBjb3Vyc2UsIGl0IHNlZW1zIHRoZSBkZWZjb25maWcgd2FzIGlnbm9yZWQgYW5kDQppbnN0
ZWFkIGFub3RoZXIgcHJlZGVmaW5lZCBkZWZhdWx0IGdvdCBjYXVnaHQgKG9uZSBJIGRpZG4ndCBv
dmVycmlkZQ0KY29ycmVjdGx5IEkgZ3Vlc3MpLg0KVGhhbmtzIGZvciBhbGwgdGhpcyBncmVhdCBo
ZWxwISBSZWFsbHkgYW1hemluZyDinaTvuI8NCg0KQW0gTW9udGFnLCBkZW0gMjcuMDEuMjAyNSB1
bSAxNjowMiArMDEwMCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Og0KPiBIaSBEYXZpZCwNCj4gDQo+
IE9uIDEvMjcvMjUgMTI6MTIgUE0sIERhdmlkIERhbmllbCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyB3cm90ZToNCj4gPiBIaQ0KPiA+IA0KPiA+IEkgYW0gdHJ5aW5nIHRvIGZpZ3VyZSBvdXQg
d2h5IHRoZSBmb2xsb3dpbmcgc25pcHBldCBvZiBhIGtlcm5lbA0KPiA+IC5iYmFwcGVuZCBmaWxl
IGRvZXMgbm90IHBvcHVsYXRlIHRoZSBjdXN0b20gZGV2aWNlIHRyZWUgc291cmNlIGZpbGUNCj4g
PiBpbg0KPiA+IHRoZSBwcm9wZXIgbG9jYXRpb246DQo+ID4gDQo+ID4gDQo+ID4gwqDCoMKgwqAg
RklMRVNFWFRSQVBBVEhTOnByZXBlbmQgOj0gIiR7VEhJU0RJUn0vZmlsZXM6Ig0KPiA+IMKgwqDC
oMKgIFNSQ19VUkkgKz0gIlwNCj4gPiDCoMKgwqDCoMKgIGZpbGU6Ly9kZWZjb25maWc7bmFtZT1j
b25maWfCoFwNCj4gPiDCoMKgwqDCoMKgDQo+ID4gZmlsZTovL2NmMjAwLmR0cztuYW1lPWR0cztz
dWJkaXI9Z2l0L2FyY2gvJHtBUkNIfS9ib290L2R0cy9mcmVlc2NhbGUNCj4gPiDCoFwNCj4gPiDC
oMKgwqDCoCAiDQo+ID4gDQo+IA0KPiBZb3Ugc2hvdWxkIGNvbnNpZGVyIHB1dHRpbmcgdGhpcyBk
dHMgaW4gYSBzZXBhcmF0ZSByZWNpcGUsIHNlZSANCj4gaHR0cHM6Ly9kb2NzLnlvY3RvcHJvamVj
dC5vcmcvcmVmLW1hbnVhbC9jbGFzc2VzLmh0bWwjZGV2aWNldHJlZcKgZm9yDQo+IGhvdyANCj4g
dG8gZG8gaXQuDQo+IA0KPiA+IMKgwqDCoMKgIENPTVBBVElCTEVfTUFDSElORSA9ICIoY2YyMDAp
Ig0KPiA+IMKgIA0KPiA+IEl0IGFsc28gc2VlbXMgdGhlIGNvbmZpZ3VyYXRpb24gaXMgbm90IGFw
cGxpZWQuIElmIEkgcmVuYW1lIHRoZQ0KPiA+IGRlZmNvbmZpZyBmaWxlIHRvIGRvZXNudGV4aXN0
IHRoZSBidWlsZCBmYWlscyBlYXJseS4gVGhlIGRlZmNvbmZpZw0KPiA+IGZpbGUNCj4gDQo+IEl0
IGRlcGVuZHMgb24gd2hhdCB0aGUga2VybmVsIHJlY2lwZSBpcyBkb2luZyB3aXRoIHRoYXQgZGVm
Y29uZmlnLg0KPiBDb3VsZCANCj4gYWxzbyBiZSB0cnlpbmcgdG8gYXBwbHkgZnJhZ21lbnRzIGFm
dGVyd2FyZHMgZm9yIGV4YW1wbGUuIFdpdGhvdXQNCj4gaGF2aW5nIA0KPiBhIGxvb2sgYXQgdGhl
IHJlY2lwZSwgaXQnbGwgYmUgZGlmZmljdWx0IHRvIHRlbGwuIFlvdSBoYXZlbid0IHNhaWQgdG8N
Cj4gd2hpY2ggcmVjaXBlIHRoaXMgYmJhcHBlbmQgaXMgc3VwcG9zZWQgdG8gYXBwbHkgdGhvdWdo
IGFuZCB0aGVyZSBhcmUgDQo+IG1hbnkgd2F5cyBhbmQgbWFueSBrZXJuZWwgcmVjaXBlcyBhcm91
bmQgOikNCj4gDQo+IENoZWVycywNCj4gUXVlbnRpbg0KDQoNCg0K

