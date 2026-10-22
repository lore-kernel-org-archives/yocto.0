Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.26])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18206.1792657317587090720
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 01:21:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=Enn95RNF;
 spf=pass (domain: siemens.com, ip: 52.101.66.26, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WORnu0omNhqr2ElbIUHDveaE4CEASMeIzsFsEKhpnb6Ysvd7aoKxi1LDNits/lrFdORQ6om2PnNbd5CHcYUkE8UQFDOZW2TJgXFH+u9wwKoW8wPR2+C+5G9uN6S/nkaoxhUMLhOWiAYPKEqrVylW6nWzsCv4lpxY5WCp2Px9489lIxSeERziSNlAUlSsYtPKUcZG2yMvoKAY9a+Jj1+KIj5J25NO49rV+8YPpiHzIKA/kEaKeb40mwv38vEhijUoH4fpq2TPXLopkG2Qav4+hFH7Cs+aCYP7r7uM9+1eNpthApDePgakLmiUiY6HE59Bd9ZC8DpRPyEJXN9knXEiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SDjTMhTvveAS0iWReilFoX3MbfLcgoD9rkWZmcVRIlU=;
 b=pkbkvfK3PFgXriCq1Gw0Xw1KmuNM1SEpVAkmnFd59uq4mNiIHKoOLTWXRteTYmbBq5dtEWnXhu/elMtzkyN+6CqUlEsIh/oYV47cgPaFzWLQxkiIWHKuvH794t4YsxOfyIyM7VMOv2eJ0hm5u7qR3BA1639TjPzpwfsmF3TG2yQf+Ri9LdY6pfSxeEz1/eJotcZc9kZ2oVbK3mAEc9c3VgrLNr6wIrSNa8LbEakEjlQVWDncXhhHUlgVW9f8xuLRrLiSPvIsoqRhRiUZvFcSO41oxYlqXoDdjqgtJO6PrP40pap3oGD2fjwvvjPvL0LbTAwsZdPqPU28fRhrX4SwrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDjTMhTvveAS0iWReilFoX3MbfLcgoD9rkWZmcVRIlU=;
 b=Enn95RNFI3MgrZRWcl8aBBDHJhB1JjSISyhzUWS/fJM8X4MvND1QmmxAU6nJ3BZEi/5nh8s2iNTyY5tE32MmXcevlZXolIcfDltXNQkUA//yM0ax5hDw8zsId3Fo9XU9GiPLwKjMY3ymWwwAwn2jdarzxziBMk90myZ+facHCL4muvFrgk9ytBj84rQdYF4VxAU1lFdhJ3Q4y3p8zvzA5d41d7fWcweMSHIciKx168YUOmqucLvQuTo6Mm0j2l8d65k+m5LTFnGVbiizCe5yeg5TLv5hK72E8s0s/zjLHtFDwZcDsSS+G26mZMCm3XCEJHsH55K6GaNuJAGrW52FNA==
Received: from AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:435::23)
 by GV1PR10MB9060.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1d1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.15; Thu, 22 Oct
 2026 08:21:53 +0000
Received: from AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c5a:f9c2:dc48:6388]) by AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c5a:f9c2:dc48:6388%6]) with mapi id 15.21.0569.000; Thu, 22 Oct 2026
 08:21:52 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
CC: "Freihofer, Adrian" <adrian.freihofer@siemens.com>, yocto
	<yocto@lists.yoctoproject.org>
Subject: RE: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Index: csrwnORdasdJ3xzr7D7vjdu/N9REb6ThjGzwNaVB2iP+VAx68A==
Date: Thu, 22 Oct 2026 08:21:52 +0000
Message-ID: <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM>
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
 <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
 <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=1cd9143f-a4e3-4ce0-ae14-312e55fc807a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-10-22T08:17:35Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR10MB5082:EE_|GV1PR10MB9060:EE_
x-ms-office365-filtering-correlation-id: d59b9d8f-f2b4-4aeb-b699-08df30158721
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|23010399003|376014|366016|261021121427099003|38070700021|56012099006|4143699003|261021135927099003|11063799006|10067099003|18002099003|55112099003|6133799003|22082099003;
x-microsoft-antispam-message-info: sh2qj7kHwsgSvnemC8IJ8zln6f88gVXS7B4P4B2fH438j6AvM46+VXMfTiIgRwCf2VMfC/V01IZcFAbvyELYwTt/V5Kl5+kx23GR6y9Q/KTxOfy6JEc9wpcbs+0rkZGCnIgkrHgAWxHM9SKhUh/kXrQryKBxHxbGbVbRjEyKKXAmqwDkvD61KwYvuES3rpnXqmhoHidgA5zddqItib0e3IuyVhrBo1LVtzo98qv6/+eIhBsu9ZmpDlavoJ0M/XS49cndnpJSdY4uqRedPVaGDF4kXPJsEhLyJkrFJtgAM7ty4v2UJxLhDO5MTaNY7IBjySZ70BGX1XzytziscQ03PtnVQlLqiTi606qAt5pW8HCQmc/FqTvMQOVZGSKaWRA4X3S8Ossw6yQbpseuL7X7iJrEUasGLGUmHHhu4hpkx0QN/A4rhu9wHjowZHVm8xCZrgzCEJvBtBA+xmcktciSkX6JsWZSnAZ7boWhcyYH25VC9D2etCQDK0j8aICIUL/i5DabKQS2aTQT1krcTxHI6JPsFRdRLL2kEYYl6NWo5ssjHKHu8bgED7Iwf/6vUY0DprLKPoKJtZCdvIBdclMdg8ZpTPbL6/isbiBhEPcerMfyq89Ez/4Q6gRuNSPOMv5o2/3cJoUrRbnBDvLKi4R/Qr8sqz4L161By5CC5h1aKYsIItP9N7FTADyhIeOgdJhT9g0EzYss1Hz5jBtM7jirfzGVHb2kN/9KqvLIgeyn3sM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(261021121427099003)(38070700021)(56012099006)(4143699003)(261021135927099003)(11063799006)(10067099003)(18002099003)(55112099003)(6133799003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnR0N3FGUVVNaWs1RXVUMEdVWE9OQ2tDKy9qUUpUUW52QjNianZWRSt4U2Vo?=
 =?utf-8?B?a0xZMUhRYjFjWTRxT21aYXM4MU9LZ3RaZ3NKZ2RLK2lPaFh1NElLaWw4dXdH?=
 =?utf-8?B?MFBIeGw1VDUzczBuM25KQW1QTDFvRTBlVVV6SGt6RUZDcGdPYlhmeVdMYnZH?=
 =?utf-8?B?UG5XSHF2UTNLMWRxeEtmcC9mc1diZkkvREV6TmExdU5kTEFPOEtEUitLdE14?=
 =?utf-8?B?aUtYV3hkKzdWTnVZTk9HaTMvckdzL2lGeW1TVUQzWU00eCtmNCtZSGppMTdE?=
 =?utf-8?B?RklUY0gxYjlTcVNkd1F1M0xSMTYxNkg0UGZmNit4S0JCaDNya2gwbzhUZE1D?=
 =?utf-8?B?U3hIZG1ZRHJ0TWlKaE51UUF5TTFaSXVSa2hZUjFOc3lCSWxYV1dEWHo1TGMz?=
 =?utf-8?B?VzFtY2JQUndOL25WQzdFNm5LajV5NXRPOGwraGZVRGJPa0NTeGJodVJJcEh5?=
 =?utf-8?B?bkJwOXdKNXE2RithZHU4TStlU1o1amJjb2ZicnFndng3b0l5R3hUQWtaTFgy?=
 =?utf-8?B?RTZSZng0Y0RRVm9objR6aGtoa25EMDh2Z2NEdHAvRTQ3ZVZsdkRKMlo4K2ZX?=
 =?utf-8?B?cmhCTnE1V2FJSkY0dWUwYVhJWElkdStPZ3A3bTRoblZnUllIYzJ6cFpVb2o1?=
 =?utf-8?B?VmVzM05HVXJKaXEvQ1hpLzhBek9nS0lObDh0UEppdkttK2d1WFlyMnN0ZzBK?=
 =?utf-8?B?SGVpRHlkcGMxdVBTZVJ4U0RlRWEwbHlIMHF3QVNDNjhvczE4Rm5UR1lMS1lE?=
 =?utf-8?B?cStNQ0tQQ081OWZ1TGFjajNSWE5sQ1VSaGs2a1pxVWdmZ01ad0lUY0g4RW54?=
 =?utf-8?B?TkhvTEpZR3VRU0lrL3BMeFpoZTU0YnE4ZndJU1Z5K1FOS0ZnM2JjWFpJWFl5?=
 =?utf-8?B?UncxbUkzay95YzJySlZFOXY2dDg1dGl6Si9JT3pDbExnVVZoNGRsVXNoeVoy?=
 =?utf-8?B?RjQwOC9PMGM5NEJaVXJqbUNMdDFmcTFFd2JycERRYlRzUEVlZlVIaEN3ai9l?=
 =?utf-8?B?QmNWYUJTRTR0elBzWHNTc3NVZUlRQzFaekI0eVFVaTB0TUo5bnF2RHQ4eW9l?=
 =?utf-8?B?Ri9UWFp5dHg0YThRd01qWW9EcmxEL3FRZ29HNnRDYmtrU3pHR2ZYZzgrSzhs?=
 =?utf-8?B?SjRkRHFNKzN4WGtZdXJ6WFpWbWlvb2VMdGZNWkJ2cS83REVUbDRqaGFFbTVr?=
 =?utf-8?B?SElzckdQcGhMU2txSG93YVNybEVIQkN0WmV6RTJ2WnczUTAzTWU1S1oveVIz?=
 =?utf-8?B?ejB3blBpdjF2RUZPWk1ndG5jSWwzeXppMTNHSUF4b2lXbWlTT3RMZ1RYcVVE?=
 =?utf-8?B?cWlOUkpIUi9pVlFwTVRtdEU2cVVLd09CcXZWVzQ1SjZoMnRvKy9RYXI4Ykpi?=
 =?utf-8?B?ZVgyVXVGYTIzQzhOeWxaTjhuSFRla0tJVHFWYkhqR3gxNjRleSt2VzFrb0Fa?=
 =?utf-8?B?WW0xNjZiU0MrSzA4RWk1bVIwMGdaVmcwcTJib3lFY1FtZHpSNFc5c2lzdzZL?=
 =?utf-8?B?MDZvYkh4UXFwNFdHU0ZyRlhUb3BlWE9EUldDanBrVEt3NTVsNWNFVmlJY2JK?=
 =?utf-8?B?dGl3NWlDME90RnBxVjFQQmVWK0xHQy9VL25NQVVSMXNaclE0TklLSnhNaE9S?=
 =?utf-8?B?Ymt4N1UvbjgrTDZzK3B6N0pxQ25ZRlhCY0RPdGlYQk1LOGkwaFM2dG95cU5J?=
 =?utf-8?B?ckRRNDZjZXRGWGlJOFNudm12aG12YlZBZkR2MFVrMkhXbE1DWGdNSHd0eU9y?=
 =?utf-8?B?MS9PUWJjaGlHWHVTWVJjVDdhN25hWG9XMnVweXBuTjc0QXoyWFY2Q3pMVTd3?=
 =?utf-8?B?K2p1RXVBU3diY3c1L0VWZ28yV1llQWp4dkxORFZKVWhSVmk3Mnpyd0xFcVQ3?=
 =?utf-8?B?eHA3Z0RNazFRUndib3lUNmFaTFhxTkx5SVd1SWVOWW5CQ1NQckRUTzBwemc1?=
 =?utf-8?B?R0w5OGZvbFUyeC9HZzlKNWJMbjRmSTU3OUdiU09DamM1OVVicU40UDJaRWd1?=
 =?utf-8?B?Y1JGNGNuRzNxUjdTNTRNaERWY1BuekpiQklkNmd3K0M4V3FWODNXZmN4Ny9h?=
 =?utf-8?B?Q0JLdkJVbHBnM1hINVJoWkRxMFRxV0c3aFJudUdHSU94ZGo3VmdDbjR0d3Jq?=
 =?utf-8?B?VENEZWdYazM2cGJsb0kxbVpWMmErSE5BOVM2ZGlaN3hXWSs2VnVYYm1DeEhp?=
 =?utf-8?B?eTk5Kyt0R2g5SE5jeFhNZ2JCY0hTOVR6bm9xekZtZC80dFowOWRoanYzeHRD?=
 =?utf-8?B?TG54cFQ5Y2EzME9EcW9va0dMeHU0Rm43R3FGSVpBRzgwSkN1S2F5K3ZpOFJK?=
 =?utf-8?B?c1R2K2pLcVN5elJCVDUwMHRuRzcyVjBmdG1KenlxOW8vcDlROVczUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d59b9d8f-f2b4-4aeb-b699-08df30158721
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2026 08:21:52.8729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OJL2U62xePrYYRt/qF4VxC69R1WAkHi76qWLBPaAO96DCjp2ynTyTry8/ej4cGkbr5wZFxuFjq6R6kJyCBt/wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB9060
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 08:22:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66779

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRWxpbm9yIE1vbnRtYXNz
b24gPGVsaW5vci5tb250bWFzc29uQHNhdm9pcmZhaXJlbGludXguY29tPg0KPiBTZW50OiBXZWRu
ZXNkYXksIE9jdG9iZXIgMjEsIDIwMjYgNTowMiBQTQ0KPiBUbzogTWFya28sIFBldGVyIChGVCBE
IEVVIFNLIEJGUzEpIDxQZXRlci5NYXJrb0BzaWVtZW5zLmNvbT4NCj4gQ2M6IEZyZWlob2Zlciwg
QWRyaWFuIChTSSBCIFBSTyBUSSBFQUMgQ0NQKSA8YWRyaWFuLmZyZWlob2ZlckBzaWVtZW5zLmNv
bT47DQo+IHlvY3RvIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KPiBTdWJqZWN0OiBS
ZTogSXNzdWVzIGFuZCBxdWVzdGlvbnMgcmVnYXJkaW5nIFBvd2VyUEMgMzItYml0cyBlNTAwdjIg
dHVuaW5nDQo+IA0KPiBIZWxsbyBQZXRlciwNCj4gDQo+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2Ug
LS0tLS0NCj4gPiBGcm9tOiAicGV0ZXIgbWFya28iIDxQZXRlci5NYXJrb0BzaWVtZW5zLmNvbT4N
Cj4gPiBUbzogIkVsaW5vciBNb250bWFzc29uIiA8ZWxpbm9yLm1vbnRtYXNzb25Ac2F2b2lyZmFp
cmVsaW51eC5jb20+LCAiYWRyaWFuDQo+IGZyZWlob2ZlciIgPGFkcmlhbi5mcmVpaG9mZXJAc2ll
bWVucy5jb20+DQo+ID4gQ2M6ICJ5b2N0byIgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
DQo+ID4gU2VudDogV2VkbmVzZGF5LCAyMSBPY3RvYmVyLCAyMDI2IDE1OjUwOjIyDQo+ID4gU3Vi
amVjdDogUkU6IElzc3VlcyBhbmQgcXVlc3Rpb25zIHJlZ2FyZGluZyBQb3dlclBDIDMyLWJpdHMg
ZTUwMHYyIHR1bmluZw0KPiANCj4gPiBIZWxsbyBFbGlub3IsDQo+ID4NCj4gPiBJIGhhdmUgYWxy
ZWFkeSBjaGVja2VkIFNQRSBvbiBlNTAwIGJlZm9yZSBhbmQgY2FuIGNvbmZpcm0gdGhhdCBpdCBu
ZWVkcyB0byBiZQ0KPiA+IGRpc2FibGVkIGluIGZhdm9yIG9mIHNvZnQtZnB1IHdpdGggbmV3ZXIg
R0NDIHZlcnNpb25zLg0KPiA+IEl0IG9mIGNvdXJzZSBkcmFtYXRpY2FsbHkgZGVjcmVhc2VzIHBl
cmZvcm1hbmNlLCBidXQgd2hhdCBjYW4gd2UgZG8uLi4NCj4gPg0KPiA+IEFzIHVzdWFsIHdpdGgg
WW9jdG8sIG9ubHkgdGhlIGRlZmF1bHQgc2V0dGluZ3MgYXJlIGJlaW5nIHRlc3RlZCBhbmQgdW50
ZXN0ZWQNCj4gPiBmZWF0dXJlcyBzbG93bHkgYml0IHJvdCBieSB0aW1lLg0KPiA+IEZvciBub3cs
IHdlIGRvbid0IHBsYW4gdG8gZXh0ZW5kIG91ciBwaXBlbGluZSB0byBhbGwgcG9zc2libGUgdHVu
ZXMvdmFyaWF0aW9ucy4NCj4gPiBTbyBpZGVhbGx5LCB5b3Ugc2hvdWxkIHNlbmQgcGF0Y2hlcyB0
byBmaXggeW91ciB0dW5lIGNvbmZpZ3VyYXRpb24gYW5kIHNwaW4gYQ0KPiA+IHJlZ3VsYXIgbG9j
YWwgcGlwZWxpbmUgd2l0aCBZb2N0byBtYXN0ZXIgdG8gY2F0Y2ggaWYgaXQgd291bGQgYnJlYWsg
YWdhaW4uDQo+ID4NCj4gPiBCZXN0IFJlZ2FyZHMsDQo+ID4gIFBldGVyDQo+IA0KPiBPaywgdGhh
bmsgeW91IGZvciB5b3VyIGFuc3dlciwgYXQgbGVhc3QgaXQgY29uZmlybXMgbXkgYW5hbHlzaXMu
DQo+IA0KPiBCZWNhdXNlIEdDQyBpcyBub3QgYW4gb3B0aW9uIGZvciBTUEUgc3VwcG9ydCwgSSBh
bSBjb25zaWRlcmluZyB1c2luZw0KPiB0aGUgTExWTS9DbGFuZyB0b29sY2hhaW4gdGhyb3VnaCBt
ZXRhLWNsYW5nLCBhcyBpdCBzZWVtcyB0byBzdXBwb3J0DQo+IFBvd2VyUEMgU1BFLg0KPiBJIGtu
b3cgdGhhdCBzb21lIHNwZWNpZmljIHJlY2lwZXMgd2lsbCByZXF1aXJlIGJ1aWxkaW5nIHdpdGgg
R0NDIGFueXdheSwNCj4gaW4gdGhhdCBjYXNlIGZwdS1zb2Z0IHdpbGwgYmUgZW5hYmxlZCwgYnV0
IG1vc3Qgb2YgdGhlIGRpc3RyaWJ1dGlvbg0KPiBjb3VsZCBidWlsZCB3aXRoIGNsYW5nLg0KPiAN
Cj4gSXMgaXQgc29tZXRoaW5nIHlvdSBoYXZlIHRlc3RlZD8NCg0KVGhpcyBpcyBhbiBpbnRlcmVz
dGluZyBpZGVhIHdlbGwgd29ydGggdHJ5aW5nLCBidXQgYWZhaWsgd2UgaGF2ZSBub3QgdHJpZWQg
dGhhdC4NCk5vdGUgdGhhdCBJIHdhcyBvbmx5IGludm9sdmVkIGluIGRpc2N1c3Npb25zIHdpdGgg
b3RoZXIgcHJvamVjdHMsIEkgcGVyc29uYWxseSBoYXZlIG5ldmVyIGJ1aWx0L3VzZWQgZTUwMC4N
Cg0KUGV0ZXINCg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBFbGlub3IgTW9udG1hc3Nvbg0K
