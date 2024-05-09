Return-Path: <janne.kiiskila@izumanetworks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0798C10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 12:50:50 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.112])
 by mx.groups.io with SMTP id smtpd.web10.9577.1715259046775662331
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 05:50:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@izumanetworks.com header.s=selector1 header.b=H04246a1;
 spf=pass (domain: izumanetworks.com, ip: 40.107.244.112, mailfrom: janne.kiiskila@izumanetworks.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ck2NBHx6MmO+NstNzG3FUzoaLOb8nU2UsHSMLZTkYras1ivz11CcpQIT2kPzpeNRQSWkA5V5Du9V1KmvV/IzDpgbSF+dREBpaa72kFktiTVreGbhQDW8SYljr3PWz99EYKC2+NKGMDYwRBEF9YF3SsKaiq5nHZy+XkAMnX3EyT89r0W0mZ/LC6/b/NW4k5GCEYj33w3m6G9E7xANkpXVtcNcF1XkN5eD51LrKAQZDWeBROjZuPon/NnlKvnjcmg32boWwmtbvdyEb++cbQEOv5jI4m5ZuCm2u5a9NefkkLkAsdelw7unSmQj1PoHC9KKZgPbZOYg/LTPFFIE0gRpeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BWG4vHsjkmUVLcQl3xGrTt5qQWTpjrDWwv3lSFw0Mxs=;
 b=eCHXCTgnpXz1SmT675jkBNZhN0BwCHDqvGg/XkDt9IR+FRGtYLTWtikrgGs6bV+xKfwlRsMswsLWVJN3XHyZvesnzx6n0xrXuShBTzxiGFtsrqHl3fLtuPnbgzDflpAQoW55k5Tw5FmnkezkkLBdNE5aQHjcJiaOgYqWFGieKUEee6z701dNCVwbUbDPVVqET5OIbvlMso73NXwwCPzDszS1ywJf4RMuzcwXrBe9tiwIVnqLU1Px8JcHA6/j+XiAl+pBuMUQNaf0LrUETJleHI2d6NUOgjjTU4UTZGLic87CmQ0vVGA53OwsfdMEuYdSz41aHskslSdoyxNRcAFsFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=izumanetworks.com; dmarc=pass action=none
 header.from=izumanetworks.com; dkim=pass header.d=izumanetworks.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=izumanetworks.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BWG4vHsjkmUVLcQl3xGrTt5qQWTpjrDWwv3lSFw0Mxs=;
 b=H04246a1sNjG/huTWeFhr3mkMNgF3Wn2XMKJZTrk1bcEt7M16LZvPR8CiqHnKhfTaoWIJtuvx1dCrC0rFHnOW+xNcQ/tM7CCbsuPjo1pHjvM2XiQqRBmbqMcjzRUU7Wq5EvkcybukALD1lkTb1MGFu+N4x7n1JhJIpvgKm8jjcs1R0ecSZd7O/y80+XN0DY4ScybUvhtrxGIFfR5B79iLxiEmzsWtPd4J3YXkgOYdS9AEIPKOqz+TXjkCIeIN9ozw45/fTXBiUebnQ3fKB+O6M0INIkvz4VEtjKic5M+SeHVxZlKrtiWEQZ4Gnl0nbKIcrnYkEsCCL9/8edgXOkxAg==
Received: from IA0PR14MB6188.namprd14.prod.outlook.com (2603:10b6:208:440::14)
 by BY5PR14MB3911.namprd14.prod.outlook.com (2603:10b6:a03:1d7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.48; Thu, 9 May
 2024 12:50:40 +0000
Received: from IA0PR14MB6188.namprd14.prod.outlook.com
 ([fe80::b395:4be7:dff8:ea75]) by IA0PR14MB6188.namprd14.prod.outlook.com
 ([fe80::b395:4be7:dff8:ea75%4]) with mapi id 15.20.7544.045; Thu, 9 May 2024
 12:50:39 +0000
From: Janne Kiiskila <janne.kiiskila@izumanetworks.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
CC: openembedded-core <openembedded-core@lists.openembedded.org>
Subject: RE: [yocto] Where are we at?
Thread-Topic: [yocto] Where are we at?
Thread-Index: AQHaofR/z5cv0eGVVEmtQnPBGVPAArGO2jaw
Date: Thu, 9 May 2024 12:50:39 +0000
Message-ID: 
 <IA0PR14MB6188558226DBC7D15C1B36EF85E62@IA0PR14MB6188.namprd14.prod.outlook.com>
References: 
 <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
In-Reply-To: 
 <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=izumanetworks.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR14MB6188:EE_|BY5PR14MB3911:EE_
x-ms-office365-filtering-correlation-id: 3ac23ef0-cfba-4e82-22aa-08dc7026a123
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bTVSUEdnUG5qeVhrTXYyRFR6TE5uQ0o5b1cyYVVCemxPN2txbFJnMVdxK0ln?=
 =?utf-8?B?ZUg3eW9oN2pSdmFRL3p2c1RJWUp1L1U3a2xvUy9KS2NjUUJPemtwMmlJbHlU?=
 =?utf-8?B?NUduUHNTMHRaSHdxSndFZnM5Y1YrMGYxVXBXUmtUYmFyZ3VIVWtsMzF6THh1?=
 =?utf-8?B?YlpqaXBESjBZQmdJcGRMdG4veTkvSWE4amhOR1ZqMmg3U0NpYmFXTlpsUmhN?=
 =?utf-8?B?KzdTajVjeEU3d2FYRCtHVXc5czBxYkZFdVVqSjN0V2hkSDhMN3JrOXFyRWhx?=
 =?utf-8?B?ZGFJYTA2YWVkQUdvY3VLd2RsMFh3Z2pTaGVqOEh3Q092bWt5K2pNQkR2eG8x?=
 =?utf-8?B?ZURVMWs1ajhqQ3J2N2g4bjMzNk80TzZ2cjhpMlVTaGJqR1J1TkVZWCtOdFpR?=
 =?utf-8?B?QWpIdXRBZEQ0bWZpK3FzL3ltR2V3dnJrbENoY1JWazhnNTludVpPSEpna2hB?=
 =?utf-8?B?WG45ZDFBZXZPQjAwODA5Yzk4WGh5QUorYzBSY0VUcEE3V053VGg0cVlrQ283?=
 =?utf-8?B?UUxCYndYNFl5RnI2bW9JZ3pqOHhJNFVhZWNIYm15RC9NN1VNYlFGQzVrSkc2?=
 =?utf-8?B?THNrcEc0RGwwYXZzVzNDVGRzL0M3VWg1dmhkU0pOOWV6MFV4VEd2K1Zsc1Vv?=
 =?utf-8?B?QUQ5LzNkMHlHRVJKamRIWFJ2aEVVczVpWlI1K2E4UnVwYXpMZFZDcGl5a0dS?=
 =?utf-8?B?SFhTb002VnNoamRTcmsrWGppb0Y3dFVTSjhUa2NmRU5lYjRBaktiWXZyaGtF?=
 =?utf-8?B?Zm5seUxRVlp6TDFUWDQ0NVhGOUFSYUIwWTgybGovUEUybWVuSEtYV1RuZ09n?=
 =?utf-8?B?NWt5d3VUYVpPSi9tdGhvUG82dnY5eEc0NDVmVVFneUx3Nml0bm40ckdkZVNY?=
 =?utf-8?B?L0RjaVZ2UUFCb2IzaEJpNzU1TTF1Q0dIcWxKV2ZWKzNnRktxNjFHMVAxbVdS?=
 =?utf-8?B?K2w2K0VnT3hXRHdWT25LZVhoRG5UTDFMc2c4UnZuMll6ME5RcHBNczJNeERF?=
 =?utf-8?B?UHlsdWFvLythMVZrS09iZGZOWUNRY3llenl3Zi9vdzRDNWVlcXVPOG5pRFp0?=
 =?utf-8?B?OVNsOWcvMmhVZ3NzUDYyWHcrRVhmVTU1MlQya1Q3NDhvM01mem42UUJFS0hC?=
 =?utf-8?B?b2J3c0VmWm9zSE5HUGZTMmw3NTNxdGFkY0hXN052ZmgyRExTeDUxYlpReEZt?=
 =?utf-8?B?UGFYRno3YlR0TTduZDB0aDRPelRTSVZ3NGlaenZqeDlqWjJYUklldENKa1pK?=
 =?utf-8?B?cHVjNGRmcS9oZmRRcUdaenZuNC8xdkRMOHJCKzRtMndTT2ljdmpoOThtMnRP?=
 =?utf-8?B?ZzZkdldsMmg3c1BjRjVDcGpIVjU4a01KSzBtSGNIdkhwTTMzbjBneDhucGRI?=
 =?utf-8?B?TlVZN01vdEFQWXY3ZEhxUXFWREsyVGRZOVdrdjRMNUpWZW5XWnAwUHBkbFhq?=
 =?utf-8?B?TWtrdmlWWnRuc0E0T2xLNG40U00zQXExU2lkS0J1WXBCRFRMWGg4eFRaTWJD?=
 =?utf-8?B?azBsaXJ2WVNBRnlOdEFaY1NtNng0WlZaaTE3aDFrdTVFaTkxWFlPVTl1SkdY?=
 =?utf-8?B?T0luR0U3YVRPemc4c090dzN6NXE1RFFSY2JZWHdXTnBTYXIyMjdad3Z4Z3Y2?=
 =?utf-8?B?bGNZZk4xcWc0ZDk2Vkk1OC9NZjlWdGRtaVJVLzlibmhwS0dNRXljejYzSzAw?=
 =?utf-8?B?MGRsQld6VnVQQUt4SUFDOGNJVDhzN1NBOG9pT0x3U1FuY0w1Y21WU2dxVkky?=
 =?utf-8?B?SFJialFHN1VZV21QUndwc1JGMnhUTTIwZUoyN0NUMHMzM0FBRzZ3TGd4U2d5?=
 =?utf-8?B?dmNpdXlVUXNjU2Q1ZW1rdz09?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR14MB6188.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ajZXdmh0R0NQSHd3SUtkZjk1M0Nhb0hNdUF0NW1Mdk1Wc1ZVVlpiOWhINms0?=
 =?utf-8?B?UUl3eFFLbk9VNStNc1psTUdOdzVSemhoc1ovSk53b0l5aktTVGNvZWdFODgr?=
 =?utf-8?B?dTdQK25iTkNxM3NqaXRnMlphcExCU2JYUUE3WHdtRkN2U216Zkx6U0xUWjhn?=
 =?utf-8?B?Z0o3YjB2YUpOZWltYUE2ZlBTNzJWS05Va1N3RWVZaHJaWWxKUnRyWEx5S0Rw?=
 =?utf-8?B?T0hzWWdpVE9mVjhxUkVRL3Bxdm1FWlJDTjhVVUFIcDlPQ3QraC9oT2hQTUUv?=
 =?utf-8?B?cDJLOW5pOXVKa05MaEJFTVUya1ZDVXI3dGxSb21VemNEbTVlcGI3eUF0RFJ6?=
 =?utf-8?B?S1NHeWtqb1BLQ2dEWFF4YTd6SlBmbW1Nd1VmSHBkRGRlbzk4eEFyREI2a0l0?=
 =?utf-8?B?ZTNUM3FocVljaHpjYVc0ZWsxYVpPUVFRSnJvRHh2cFI0dlJnWUZpdVhPZkNT?=
 =?utf-8?B?eW1CQy9La0lGdWZyckk3eXowSFo0ZVRGT2Y3dSt2YkVXTitNZEx3Y1BwN2d6?=
 =?utf-8?B?Nmp3VC8wVEpQNnNnTzJ6enhCTDMzWVQxZUZUZ0FIblhuQjFGVWF1emxDZzgx?=
 =?utf-8?B?VjA2OWNsVFFVQWUxUDhJNk9IcjBBc0Vad0MvTGpqQXJ6a25NRGNSRlB4TC95?=
 =?utf-8?B?TGdjeTJwWThIOE80THJKbzdyTE5RRjhNMm5nQ3hLelhTaWRuSm5OejFBQlNV?=
 =?utf-8?B?a01YS3VLYmFLeHNyam1vbmx2c3NOTGhoNllFbnFEY2VWMmlFQ0cwZUp2TlhX?=
 =?utf-8?B?cXBuRnlkTTNHZlVCWTNFOFVrblZnV3AyZjdjdVcyUDgxa1NBellvWFhSbkZl?=
 =?utf-8?B?NDRGOGVZMmZFRTVIK2FTK0JOSTZ3VkVhZnlHYlBsalNiSE5TSHRmcnFSRVVB?=
 =?utf-8?B?NFJKRjIwaDRCQ2dhYkxIS25UTDFhbXZUKzZ2cytEVm5valNvd1lLSW9rRXBj?=
 =?utf-8?B?dmtrdWVGT3prV3NoTmNSZE91WjZvMWJPR0N4akc4UUVxbEROaGt6bjMwNU9M?=
 =?utf-8?B?N1VBelRxL29QMGRpLzA0R010OUJrcVJwWXp3ZG5hUkwwVDZJNzdtWmlobEZn?=
 =?utf-8?B?Y0daWTRrRmo4MUtLOEJjRGdkeVpXWEhENlJua2VBeTRBR1JlbFpmZUhmZE9J?=
 =?utf-8?B?ZlB4eUx4cktQd2pDUGZrZnRlVTJIUTgwSjkwWjk5NHVaeTB0WE1rQjZlL0Jl?=
 =?utf-8?B?UDFYbGpvNTZtc1MzS0F1THJISXlmVjVURHJRMDQwWVZOL2MyRlduYTJSdURC?=
 =?utf-8?B?cW5DalR1eW1TamJBSzFZTnpSMlA1RUQ3MzU4ZTI5SXF2a3dBby9OWnQ3KytX?=
 =?utf-8?B?THFGZmpaaXFsNmJ1V3dBcUI1S2JmSkQyQXJ6bko2R3ZVY2pKdHl3d01aMWtp?=
 =?utf-8?B?UXhGM0o5bUhmMDhkNEhRbHBrN2NXb25QMzhyUmc0NS9YeWlNVUpIS3JBRFcr?=
 =?utf-8?B?WjBIOFIxQXcwUTFjV2JHdUlPZFFwR2VSVTFoaEtWVmRjNlhIcGxtYVhaMXR3?=
 =?utf-8?B?RnZTOU0wcmdiRVNzaEdBL2RtcWVwSGlJS09MbitreU1iSzdMNDc4QThuOW5q?=
 =?utf-8?B?RFhFTDFnZ0JPbE10dDRHWWo0SEVURW9xZ29OaS9DWFdMVjBjM3NHT0FhOWtl?=
 =?utf-8?B?MEdDM0RjUHlUUE81bGdCTms2UHZ4MVhkZlEyalpMMTM2N1ZYbklGQXVPaVVh?=
 =?utf-8?B?cDJ5OFdDdi9VNmtwaU8wam1LaTJUUzRxbng4MVA1TlV5bkV5VUxDWFEvM2ps?=
 =?utf-8?B?blAxUXRVN3B2b3pxazZPTHhUWjk0QVFQdkpiM0dtRUx4NVdsRFdoYVZtNHFC?=
 =?utf-8?B?clU5ZmlaY0tZWkFLM2hBYnlpZTc0dG5QcTFvYVdyMHFSK1N0Qk8zR3h0bTRT?=
 =?utf-8?B?WEkwYkpHWnl2U3NuM2ExSFN5MW9lSEtTU3kxSHRJZ2FMRUQvYzd3YzF0bktk?=
 =?utf-8?B?cUEwTGM5MldVWUhScm5XOEQ2RTIxaFozWEVaMHFNUitzbmlDbzNCcWdtcnZu?=
 =?utf-8?B?OFo1N0pkSVRCM1lyd3BKUXU5NWxaUGZoMFN3MldzQ3hwYld4ZkJtUE9OYVVr?=
 =?utf-8?B?d09ydStrK0ZqZjZ4QkVjSVcxdVdNcS9WaGZJWkpZN1NzN1NvNDdYcEVPMHlT?=
 =?utf-8?B?RXhlRDJRNmtKNVZuMU8yLzZSS0FEQzkxSWtuNi9zYTBqWEZlRU1GclJYa1Ns?=
 =?utf-8?B?blE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: izumanetworks.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR14MB6188.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac23ef0-cfba-4e82-22aa-08dc7026a123
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 12:50:39.3704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b75ac1ab-4ecf-4491-a62d-9087b0c0cf30
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DH8JuspKxj6wseDZnm6p/Meitam8ZWT4yQGsJ2G3y9ym0X7R/OF6P56h5zvtOptgF2oWrNFSc1cMdq3n+uhyFLHvwiUcFq/45iGtAik/xbdNw6F+jIAlCwB2TebDmUmZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR14MB3911
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 12:50:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63061

PiBQZXJzb25hbGx5LCBJJ20gbm93IHJlYWxseSBzdHJ1Z2dsaW5nLiBUaGUgaW50ZW5zaXR5IG9m
IHRoZSBsYXN0IGZldyBtb250aHMgaGFzIHRha2VuIGEgdG9sbCBvbiBtZSBhbmQgSSBzaW1wbHkg
Y2FuJ3Qgc3dpdGNoIGludG8gaGFuZGxpbmcgYWxsIG9mIHRoZSBhYm92ZSwgSSdtIHJ1bm5pbmcg
b24gZW1wdHkuIFRoaXMgbWVhbnMgSSBuZWVkIGEgYnJlYWssIGV2ZXJ5b25lIGtub3dzIHRoYXQg
YW5kIGFncmVlcy4gDQouLi4NCj4gT25lIG9mIHRoZSBrZXkgaXNzdWVzIGlzIHRoYXQgSSBhY3Qg
bGlrZSBhIHRyYWZmaWMgZGlyZWN0b3IgaW4gdGhlIG1pZGRsZSBvZiBhbGwgdGhpcy4gTm9ib2R5
IGVsc2UgaXMgd2lsbGluZyB0byBzdGVwIGludG8gYWxsIHRob3NlIGRpZmZlcmVudCBzdHJlYW1z
IGFuZCBoZWxwIHRyeSBhbmQgdGFtZS9kaXJlY3QgdGhlbS4gVGhlIGRvd25zaWRlIHRvIHRoYXQg
aXMgdGhhdCBpZiBJIHN0b3Agb3Igc2xvdyBkb3duLCB0aGluZ3MgZG8gYnJlYWsuDQoNCllvdSBh
cmUgcGVyc29uYWxseSByZXNwb25zaWJsZSBmb3IgeW91ciBwZXJzb25hbCB3ZWxsYmVpbmcuIFRo
ZXJlJ3Mgb25seSBvbmUgeW91LiBJZiB5b3UgYnVybiBvdXQsIGl0IGNhbiBtZWFuIGV2ZW4gYmln
Z2VyIHRoaW5ncyAtIGJvdGggdG8geW91IHBlcnNvbmFsbHksIGJ1dCBhbHNvIHRvIHRoZSBvdmVy
YWxsIGNvbW11bml0eSBhcyByZWNvdmVyaW5nIGZyb20gYSBidXJub3V0IHdpbGwgdGFrZSBtdWNo
IGxvbmdlciB0aGFuIGEgc2hvcnQgYnJlYWsuIFNvLCB5b3Ugc2hvdWxkIHRha2UgdGhlIGJyZWFr
Lg0KDQpBbHNvLCBhcyBpcyB3aXRoIHRoaW5ncyAmIHRoZSBwYWluIGJlaW5nIGluIHRoZSByaWdo
dCBwbGFjZSAtIHRoZSBwZW9wbGUgaW4gcG93ZXIgKGkuZS4gcGVvcGxlIHdobyBjYW4gYWN0dWFs
bHkgZnVuZCB0aGluZ3MpIC0gYXJlIG5vdCBnb2luZyB0byByYW1wIHVwIHRoZSBmdW5kaW5nLCB1
bmxlc3MgdGhleSBzdGFydCBmZWVsaW5nIHRoZSBwYWluLiBUaGlzIG1pZ2h0IGJlIG9uZSB3YXkg
dG8gZ2V0dGluZyB0aGF0IGRvbmUuIE9yIHRoZSBtb3JlIG9wdGltaXN0aWMgb3V0bG9vayBiZWlu
ZyAtIHNvbWUgcGVvcGxlIHdpbGwgc3RlcCB1cCAmIHN0YXJ0IGhlbHBpbmcgbW9yZS4NCg0KVGFr
ZSB0aGUgYnJlYWsuDQoNCkJlc3QgUmVnYXJkcywNCg0KDQpKYW5uZSBLaWlza2lsw6QNCg0K

