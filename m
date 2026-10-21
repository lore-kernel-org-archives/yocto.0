Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11762.1792590629185047425
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 06:50:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=rJJhAqb0;
 spf=pass (domain: siemens.com, ip: 52.101.83.41, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YO37H4aZHC+YqwWTpVnQ+VydpwxnzYO74E8U9vTLuFzeGJkKjDSl6SRoRGVN1TljKioJBF2Dq+ZpvKf6Qv3uuHOfguM5Gy9ulxuHJ/jdfqgQh5SssW2igFrlvM+FfsOFSncH9BDUGjSkESBii7w9xL+AmlzfUIGCRL3HdaKr2YYZEMPPqo27/+DaEK6TUvd2tOg/VPGxwXJJEXJpwr129a7+F9GWiYBCThqmzOsF7ChZVPBBmDN+0iCyPbubtCB//LGSwIxT4WcWmKHuV09VwlS2L42RjxC+nlFCbN60gkJPQLAbUBONwTGrNCShEXVtyzP3aGA+feMvFo5d8DHw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VkDHfZRU1GGUbjWTq+p7EkBz/2xZl0vzaBx7BDy6QCw=;
 b=b4tVq+A2RYoWhidUc3dXYQRWvpXIozqYRKBcdbW64qCM7dX2e1RrQI7mul6vxjEreVCpuBsapT0zDlD8vDrB5ruNRZA0fQROq54Ac/ZEhGD7fd6R0fva6c2OJ5oGSFY+JgWGgBWKOW2wRWvNrq2qK091RFkIR+Iaatk3NSi53C0B200HLTvZk+8B7UJquOrLhBdwJpYFE3s3MivTMXNn79kt+uXSu7dG8KOgZicwYw1zQc6LXf1bK8nz9PuMIysxESesVNAOxMoPM9rdtG7494GiXRvaJpQh2+6ZRBIejTFVXJbmfgz7LtqcjYAzcuHx6hfb0UxhcKUZO8u0fNVxOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkDHfZRU1GGUbjWTq+p7EkBz/2xZl0vzaBx7BDy6QCw=;
 b=rJJhAqb0/ZwQ2LIRIGnGkk+YTf9sXLvuA6WsLC/x0dEeGky+UMQZiJTlBBt/ullrFJPNu4+iy85LJAE3ADfkr/EPbknhvYFkZi1wdPNsekITIGtSOguVdZ29kw1YwQluD2RpeV2xbq2y+H8ptDT8IbxjFE22o4WKZnvP7VT/P7R+AHA9YvedrqlhhMb/up3J6uaJPwWtZiMjiRGFB6fhuaRxog4AOQHjEsMTLEm4yzmY/MVqfjvLUgU7POo8N2GuQgZBTtPsNqfBaZcKXXA+GwjK1+4C85b6YPwhaCNlJ2qrlchLdj0bSCd0464Rtld4Rz3Fia6gwhBu3EAB6+Y4Zg==
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:420::16)
 by PA1PR10MB8504.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:440::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.569.2; Wed, 21 Oct
 2026 13:50:23 +0000
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008]) by AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008%6]) with mapi id 15.21.0546.012; Wed, 21 Oct 2026
 13:50:22 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>, "Freihofer,
 Adrian" <adrian.freihofer@siemens.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Index: csrwnORdasdJ3xzr7D7vjdu/N9REb6ThjGzw
Date: Wed, 21 Oct 2026 13:50:22 +0000
Message-ID: <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=c121fe85-2c99-4f7b-b55b-24c85455ea86;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-10-21T13:28:32Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB5073:EE_|PA1PR10MB8504:EE_
x-ms-office365-filtering-correlation-id: dfd5bd4a-240c-4a33-5d26-08df2f7a40cb
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|23010399003|6133799003|18002099003|22082099003|55112099003|11063799006|10067099003|56012099006|38070700021;
x-microsoft-antispam-message-info: UZfdhLDtwcqPmw6edH8XGrui0YQik1GHp04+uAJhXKV0SdIihoOUG7K/ZJQ/kunBRji86VO+kDne2c9xh0inxKCoO9ZAAitQfyxY0HereoAd9pTxhFPyG1KIk79JvoPHdmo/W8luyvww0XhSV/F8gwo69JpqZuNT0UR58R7r6F0FOyeaUsDYZzifq1S8sOEJF1GEPWGUhIIySuTUXDTJq4YDj19QRWavyClA3ngzloFibfs/2MSvJHyguchSIavHX4FuKxEUUt+xpGQP+aGHG9t9JeYGSNe+pj270jTmnPrthfv/z75p3+UxhN3zc1edMMn8PVpfTzNQqwleDOGeuMGIWnEZdDVklOf/MGHpe+/lv0YCMejdu7rsD4+XsGfkPSFFxLgHnGZ3gUOv8Edydtp+EGM5KOIPUW6gfShG2Ad0Ti/vw5kzboiyTuT6TRxyroCPzmJNrIK+Lvo/1EFqhIVNfhbqgI8dr/j1F55KVz+tOFRPtGi7bq2d8ykPBXZ/L/bThymExRmT250xqIi+v0gsFkLIQWqk0MM3nsJBQMdzFhwKS8XdNcsutq/kEMJnyyYAYMq9GvfKClu1POy2BWbwegYV7NPjb3WdtUOtNfwmJ6ZRB5hdhvo0yEcPiHMR5Y3UqfZvhS3PfWNpcBx9CzfAwbXfFDycfhvLMn6xg1ManEd7HAH553sLc0gzCjt6xjORlZHsCuMsTLYNEfN60dyJNOSlfobp/NDEYB5Vytg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(6133799003)(18002099003)(22082099003)(55112099003)(11063799006)(10067099003)(56012099006)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDJiQjFWZVZXWXUzY3VUb2dEUkJBTUZXMWZYOTIreUUrcGxPME1nRkZlTFlF?=
 =?utf-8?B?STFHaUhHb0NOMjdGNkJWYnYydHZVTS9iUVRLNjFncFNvZ2RCUWN3bzhMQkZH?=
 =?utf-8?B?N0tlYkV0a0x0QkNYbWV6WUUrQTRxRXRYWW1EcjRiS3pzR1ZzSG5aOExzaXZn?=
 =?utf-8?B?ODQ1Y1BQM0VadUpqR29GZ0p0Wk1rMHRxcThBcUsxczFoNk83UFREd05FOEpJ?=
 =?utf-8?B?eVZ6MHZuUWJybG9OYkxsbXkvc3BhdEprTlhmL09nTkNHeVdxWFRaTkJ6a3VX?=
 =?utf-8?B?Q3BHU2dwRlZlMHcvRnFxWGZJUWhmajdaMlBqK1lOWTVsZ2VpSThzdDIvd1FK?=
 =?utf-8?B?Z09PVG83ZzF5RTVyVVk1YlNZYUhxWmh3TDliZnBPdXFJU2NLckpQK2lFOStF?=
 =?utf-8?B?eWlwRms1TE5SMEVPSlNhcEtQYnF1SkVhTnF3T1R0cHpxSE5MOHV6a0l1TFpj?=
 =?utf-8?B?S2kvVDQ5amkwY1lBQWhGRWFmR2tKSklDc0FxbVlNOU9uRkFqRko0eEVhR1lz?=
 =?utf-8?B?MlFqNGdURW9CMGg1MjZaUm14K3p0OXpQMU83NUIrN3NqbjI2UzdaNDJaZUZs?=
 =?utf-8?B?eTJudVBsL3hEREJCSnkzMnVNOUVxbytmQnhHdmp0SEwyUnZjbFMyNEJWY1pa?=
 =?utf-8?B?VmI5cUQvMDBvV1RvUXRqeHBNN2x0VnN5SUphbjFieFNpemUwREJNVCtQR0R4?=
 =?utf-8?B?UmpBNTBoSW9aMVd3SWt0aG81SytzS25kK0drbXZvT2FSbzRDRlllUm1sTGoz?=
 =?utf-8?B?SFExS2JiOXFCZzlUNFNSNFA2WWl5Uk5vZHlTQ1R1enRzdDFsenMzVXdrSndZ?=
 =?utf-8?B?VDBEaENBS0poNXg0V2ttZVhzRXhUL2lYODlxL2hLN0xKaUV1UHA5NUtIdlZF?=
 =?utf-8?B?V2pxOHpYc0VPVE1rdS9hM01mVUJnK1B5QlI2b2x4c0VCaWY1OUM5cEtpVHRu?=
 =?utf-8?B?SWJ4aHBCQnBNYUlBKzE5MmpQY3YySmREckMyWUFMc3JiK3djTmdvTVFzTlFV?=
 =?utf-8?B?RVBVWndBbkxHZjBTcUhGZ05rMEp4dzNRb0toU3FUYjlpTm9hQlFXU1Y5MnFp?=
 =?utf-8?B?bWQrb0tTNDB3bHJyMDIyVXJqWEd1RndJK3R6Y2hnbUFUUGtNZHFkOUJjSkFM?=
 =?utf-8?B?amJldHN6SW93bU1EM1RsUVZGTFEyNFpPZ1lwd2djUlhtMkg2RlBpRjg4Nk9n?=
 =?utf-8?B?cEFTUWJQaWdWaU53L05EY0szay9obFZhcjNNUm1JQjRVUnZMZlB1SkE5Y0Y4?=
 =?utf-8?B?dFBxVEdySWdpWDNZUTZUQzYrSG15d0laOHpJZ2hLZ3BUcHk0V0NKWjZyRnQ5?=
 =?utf-8?B?Q095L05ZaDV2VFNJZEtLNTR5ZWNBRTZhT05mby9TRFlVS3ZIN29JWHVkUFBM?=
 =?utf-8?B?bHBQZ01sUnVpZjJzMi9vdTJFN2RpSzM1cXFDZ0JRSndpdTB0TFhZNDR4RTBH?=
 =?utf-8?B?bW4wRmNKNnUwM3pjSkpNNi93aDlLN3Zzc1Y1TzRNRlhqWjhTd3hIMWlQYUFk?=
 =?utf-8?B?M21vUjZQZ0gxVVN4Y0l5cmR1MFhad1ZUUHpkUTYvZ01JNXAyd1F0eU1nelRG?=
 =?utf-8?B?UEtmK01hL0NFL2lNRGJjaDRHK28yM0pERGlYT1FRUVJ0SnlDZ053YWFMSklI?=
 =?utf-8?B?dkoyc3hrY0hGM0hMc2ZJcGZ4MHVwVFMrdEpnQWtsM1RhVlJMcnI0eXY0Ni9E?=
 =?utf-8?B?M1lXQ0ZtSU5lVjVnUlN0R3JFQ3NlV0JSUjluR3FvaDhUbFpWVisvSFprbEhh?=
 =?utf-8?B?WnEzbHl3RytkdnJCejE3M2V6V2RCUll1NTFoMXRQOGdzK0NnSk9hNW43aVpu?=
 =?utf-8?B?ZkFnSVhTdG1GU29CakNHb1NOeVc5cENuUzlCZS94V2d1YXQrSFJLNmxPMTY3?=
 =?utf-8?B?dGVzZ21xTWtITUcxeEQ3aG1jdWkvZG43ZEhyVnhnNzJSTVRsZllEQmpWdnhn?=
 =?utf-8?B?OHpxVEF5SXA5WmsyUnI1OGVSLzhkSjdnMWgvMCt2K0tSdnpVR3hXaEZWdThG?=
 =?utf-8?B?dFI4TXVtSWNLeHZ5SkpkL0VQT04vdGJDeTRuRUZkd1VJRmtOY0M4VnIzN3h5?=
 =?utf-8?B?Y25YSTNJSlBxL0NNZnlFMWdFVktuM25rUE5VMUJENmVrUnZaNXVxOThkaUxL?=
 =?utf-8?B?bU50Y2VtL3h6Sk82b3ppN1FKdks3QnhLOGc0REErdzFRS1JKekNGZ1RLZ2hQ?=
 =?utf-8?B?cDFLeG1RdnNkQkZwdU0wRm5aSEZlQ3JxMmRseE5YcWFCcnVyU3dXN0wvdDlC?=
 =?utf-8?B?UVBiZE5iUjJPcW9BbmFmN29PSzFZYmJkNm1YRVRnd2RBdkliQVF5VytXOEpQ?=
 =?utf-8?B?bmJwM0h3RTN1ZnZQc2cyWkJGdW14Zkw1bjBnS1lsZDNYcjQzNURadz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd5bd4a-240c-4a33-5d26-08df2f7a40cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2026 13:50:22.9387
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q7b8j/M4c4pqHlcCKzilIgEM51V7rmapk4Re+gl5t5V7Z+uwQ58E9RDDMh1xaZrs58lpo192QcXUTt8Ki9OD+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR10MB8504
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 13:50:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66776

SGVsbG8gRWxpbm9yLA0KDQpJIGhhdmUgYWxyZWFkeSBjaGVja2VkIFNQRSBvbiBlNTAwIGJlZm9y
ZSBhbmQgY2FuIGNvbmZpcm0gdGhhdCBpdCBuZWVkcyB0byBiZSBkaXNhYmxlZCBpbiBmYXZvciBv
ZiBzb2Z0LWZwdSB3aXRoIG5ld2VyIEdDQyB2ZXJzaW9ucy4NCkl0IG9mIGNvdXJzZSBkcmFtYXRp
Y2FsbHkgZGVjcmVhc2VzIHBlcmZvcm1hbmNlLCBidXQgd2hhdCBjYW4gd2UgZG8uLi4NCg0KQXMg
dXN1YWwgd2l0aCBZb2N0bywgb25seSB0aGUgZGVmYXVsdCBzZXR0aW5ncyBhcmUgYmVpbmcgdGVz
dGVkIGFuZCB1bnRlc3RlZCBmZWF0dXJlcyBzbG93bHkgYml0IHJvdCBieSB0aW1lLg0KRm9yIG5v
dywgd2UgZG9uJ3QgcGxhbiB0byBleHRlbmQgb3VyIHBpcGVsaW5lIHRvIGFsbCBwb3NzaWJsZSB0
dW5lcy92YXJpYXRpb25zLg0KU28gaWRlYWxseSwgeW91IHNob3VsZCBzZW5kIHBhdGNoZXMgdG8g
Zml4IHlvdXIgdHVuZSBjb25maWd1cmF0aW9uIGFuZCBzcGluIGEgcmVndWxhciBsb2NhbCBwaXBl
bGluZSB3aXRoIFlvY3RvIG1hc3RlciB0byBjYXRjaCBpZiBpdCB3b3VsZCBicmVhayBhZ2Fpbi4N
Cg0KQmVzdCBSZWdhcmRzLA0KICBQZXRlcg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IEVsaW5vciBNb250bWFzc29uIDxlbGlub3IubW9udG1hc3NvbkBzYXZvaXJmYWly
ZWxpbnV4LmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIxLCAyMDI2IDEwOjM1IEFN
DQo+IFRvOiBGcmVpaG9mZXIsIEFkcmlhbiAoU0kgQiBQUk8gVEkgRUFDIENDUCkgPGFkcmlhbi5m
cmVpaG9mZXJAc2llbWVucy5jb20+Ow0KPiBNYXJrbywgUGV0ZXIgKEZUIEQgRVUgU0sgQkZTMSkg
PFBldGVyLk1hcmtvQHNpZW1lbnMuY29tPg0KPiBDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZw0KPiBTdWJqZWN0OiBJc3N1ZXMgYW5kIHF1ZXN0aW9ucyByZWdhcmRpbmcgUG93ZXJQQyAz
Mi1iaXRzIGU1MDB2MiB0dW5pbmcNCj4gDQo+IEhlbGxvLA0KPiANCj4gTXkgY29tcGFueSBpcyBj
dXJyZW50bHkgaW50ZXJlc3RlZCBpbiBidWlsZGluZyBhIFlvY3RvIGRpc3RyaWJ1dGlvbiBmb3IN
Cj4gYSBQb3dlclBDIDMyLWJpdCBlNTAwdjIgcGxhdGZvcm0gdXNpbmcgdGhlIGFzc29jaWF0ZWQg
dHVuaW5nIGF2YWlsYWJsZQ0KPiBpbiBPRS1Db3JlLg0KPiBJIGhhdmUgYSBmZXcgcXVlc3Rpb25z
IHJlbGF0ZWQgdG8gdGhlIGU1MDB2MiB0dW5pbmcgaW4gT0UtQ29yZS4NCj4gDQo+IEkgdW5kZXJz
dGFuZCB0aGF0IFBvd2VyUEMgZTUwMHYyIHdhcyBjb25zaWRlcmVkIHBhcnQgb2YgYSBzcGVjaWZp
YyBhcmNoaXRlY3R1cmUNCj4gY2F0ZWdvcnksIFBvd2VyUEMgU1BFLCB3aGljaCBpc24ndCBzdXBw
b3J0ZWQgYW55bW9yZSBpbiBHQ0MgYXMgU1BFIHN1cHBvcnQNCj4gd2FzIGRyb3BwZWQgaW4gR0ND
IDkuMS4NCj4gSW4gdGhlIGU1MDB2MiBjb3JlLCB0aGUgU1BFIHdhcyB1c2VkIGFzIEZQVSwgbWVh
bmluZyBjb2RlIGZvciB0aGlzIGFyY2hpdGVjdHVyZQ0KPiBjYW4gbm93IG9ubHkgYmUgY29tcGls
ZWQgd2l0aCBzb2Z0IGZwdSBpZiB1c2luZyBhY3RpdmUgR0NDIHJlbGVhc2VzLg0KPiBEbyB5b3Ug
Y29uZmlybSB0aGlzIGFuYWx5c2lzPw0KPiANCj4gQnVpbGRpbmcgYSBjb3JlLWltYWdlLW1pbmlt
YWwgd2l0aCB0aGUgcHBjZTUwMHYyIHR1bmluZyBpbiBPRS1Db3JlIGRvZXNuJ3QNCj4gd29yaw0K
PiBvdXQtb2YtdGhlLWJveCBvbiBZb2N0byBXcnlub3NlLg0KPiBSZWNpcGVzIGJ1aWxkaW5nIHdp
dGggbWVzb24gKGUuZy4geG9yZ3Byb3RvKSBmYWlsIGJlY2F1c2UgdGhlIGRvX2NvbmZpZ3VyZSB0
YXNrDQo+IHJ1bnMgYSAibWVzb24tcWVtdXdyYXBwZXIiIGJpbmFyeSB3aGljaCBmYWlscyB3aXRo
IFNJR0lMTC4NCj4gVGhpcyBsb29rcyBsaWtlIGEgZmxvYXRpbmcgcG9pbnQgY29uZmlndXJhdGlv
biBwcm9ibGVtIGFzIGFkZGluZyB0aGUgdHVuaW5nDQo+IGZlYXR1cmUgImZwdS1zb2Z0IiBzb2x2
ZXMgdGhpcyBpc3N1ZS4NCj4gVGhpcyB3b3VsZCBjb25maXJtIHRoZSBsYWNrIG9mIFNQRSBzdXBw
b3J0IGFuZCB0aGUgbmVlZCB0byBzcGVjaWZ5IHNvZnQgZnB1DQo+IHVzYWdlIG9yIGFueSB1c2Fn
ZSBvZiBmbG9hdGluZyBwb2ludCB3aWxsIHJlc3VsdCBpbiBhbiBleGVjdXRpb24gZXJyb3IuDQo+
IA0KPiAqIFdhcyBhbnkgdGVzdGluZyBkb25lIGZvciB0aGUgZTUwMHYyIHR1bmluZyBvciB0aGUg
ZTUwMCB0dW5pbmc/DQo+IAkqIFRoZSBlNTAwIHNoYXJlcyB0aGUgc2FtZSBTUEUgc3BlY2lmaWNp
dHkuDQo+ICogU2hvdWxkIHRoZSBlNTAwdjIgdHVuaW5nIGNvbmZpZ3VyYXRpb24gYmUgY29uc2lk
ZXJlZCBub3QgdXAtdG8tZGF0ZT8NCj4gKiBJcyB0aGVyZSBhbnkgcGxhbiBpbiB1cGRhdGluZyBh
bmQgdGVzdGluZyB0aGUgZTUwMCBhbmQgZTUwMHYyIHR1bmluZw0KPiAgIGNvbmZpZ3VyYXRpb25z
Pw0KPiAJKiBFc3BlY2lhbGx5LCB0dW5lLXBwY2U1MDAuaW5jIHN0aWxsIGVuYWJsZXMgdGhlICJz
cGUiIGZlYXR1cmUsDQo+IAkgIGJ1dCBzaG91bGQgZW5jb3VudGVyIHRoZSBzYW1lIEdDQyBjb21w
YXRpYmlsaXR5IHByb2JsZW0gYXMgdGhlDQo+IGU1MDB2Mi4NCj4gDQo+IEJlc3QgcmVnYXJkcywN
Cj4gRWxpbm9yIE1vbnRtYXNzb24NCg==
