Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC6D9EB7EB5
	for <webhook@archiver.kernel.org>; Wed,  4 Mar 2026 09:03:22 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.33])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14012.1772615001507348824
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2026 01:03:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=eBHISe2G;
 spf=pass (domain: siemens.com, ip: 40.107.162.33, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CKGZqFDLb3lm4RpEk/6w2dSpGVFcRjWaBylGOc8v3LPLl8wOQTTPe869uKKBC+3PG7A9Paln4yq8n9rtkl8HFId9mr6iB/bXcVJ2rI0YCHSnbFYpOioPlXXfThi2Bk2Y61SAsKDxxNM2C9o/41kANd3iUVfNergUA/31YcykZgn9B/ODiyDEn/6fZzTgdRRLfhICBYmRnEZR3soekGHgZ+2OU5abpOyXideZZEZW6SVjAy0o1wuLrCCm7p7ZnwPye+Ex7WREKdikEzodAoIxpLzru1uGuunhIQ8fyfIgm9VMfmDgCNRimxtsCKVI6rloog6nmmNGTh2/15/GYzRh3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IS4+9O5YzQVZV/lMSAbkCtmqhQxrLjslZs99VrVHcvg=;
 b=b41wDIgqxJzYDX1pyxrZdxN4F+9z7gmTEkV+emh+FcJ3zUvNWw+WpF7m/OYkiTAtcZ0QjpdrOA7/tQqI5/72TKmJ2oRC25U36oLpH3I+83y2yrp2tA1+fc+AdFhaGkG44z3I1y/4qfGtytBzaHs8mZEXhfFXkehFecrkAujlYJzuvEh6AE8ERRh0synQWQnfbeeeAaPPII4JYHyGlh4q8TlIzzKvvH4TxDYJEJQJ4qz1uw7b1QsHe3yoOyylq3SpRwlPQaz6Tft44+W6ZitgAyDj7YXBi8R7qqm2FCU0lbPyS4WOGXkOb2/9/MGX7oCbdY62UF3hzocbQwnpj5lRjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IS4+9O5YzQVZV/lMSAbkCtmqhQxrLjslZs99VrVHcvg=;
 b=eBHISe2GI5wCRWsioaXiyu+prXxXOAsAKgQ0h5vk8nIZa35oxJsRAKJZKObPsyTiQlwtBFf0fmpyJ6bfTh2XbmzCB4IB1lDJm8l6C6Ue7qbTet87e8NAA/uARlYd3Hsrm6zZL0tqlCdqTA/QRpCZfHClP2NwR6yP5DHoGlsc0XxnrgMZ0b9YO+A5iG6/puqCmawAzLDShNGT4Cyuwlx9p0akPjdX63tj7fI9pNyjjj5aMUFaU3lunWcG2oMtozLQ41XI81gwh19Ne7TiHK3piamf2ELVWXXqhJDd08Umg2+2jojldMVXMAN1507sTUCeWr4pLywFxRTjfTUiqqZG+Q==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by GV2PR10MB9699.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:358::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 09:03:12 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b54d:255a:1abf:2dc7]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b54d:255a:1abf:2dc7%6]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 09:03:12 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"H.Wulff@kruss.de" <H.Wulff@kruss.de>
Subject: RE: [yocto] Recipes to modify variable UBOOT_CONFIG?
Thread-Topic: [yocto] Recipes to modify variable UBOOT_CONFIG?
Thread-Index: AQHcq63+/mUdWEhlbUe06TYlX1HJk7WeEcVA
Date: Wed, 4 Mar 2026 09:03:12 +0000
Message-ID: 
 <AS1PR10MB5697B1C9904D20325E0D93C5FD7CA@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <ufvN.1772611659319623243.CDwZ@lists.yoctoproject.org>
In-Reply-To: <ufvN.1772611659319623243.CDwZ@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=4a5fa29b-9720-460d-b86d-feeffbe12f39;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-03-04T08:54:52Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|GV2PR10MB9699:EE_
x-ms-office365-filtering-correlation-id: 1c4a8cd2-da85-4d94-1de6-08de79ccdd02
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|38070700021;
x-microsoft-antispam-message-info: 
 hDeH0uaC5c6xaEUL3A2K9v5lqUp7WmReljLgXfVG81VEKW+B468iY0qfGQtOvBDxj38/eIbOeAFR7FvPK868/o2wPk6PtoelmMFacbevdfVOEWegvzy8/BJH63GMVYsJPue6labj9x0SgjwuEgb+BUTtGFce3ORnsFIW1kOMAMREwQqYCob9hIBZjQMCdoDVZ3KpbZaHp/cotI4XXSSRysapIpPtxe6P7sYsjZZh7y/84Fq4pN8I6kXH57RwGcH92vrzLaQ9RhSYZzffPyJNKjwXDAveLg1vpWaBLXwnV0TQsDf5GcWHS0iO4NThtYVDuZ2CgxJnM8rGoecCp9jOlK0wZd0P0tvgAACCGVRbCRhmXQuWptbLV7NfzS3TmTmbVgfMDk8wHu0gZQKJtBpHblj16vnjTtR1jjukr+ZHiaNKtRAHoOyxjUH9yCafUmp6VNawu9KbsJlLTwkJ2SqNyjDiR0KpJGSpwr72B4ssVEkk3Beu4J9/4E1NQ446IgE8ua5z77Tp5eCdOdp1PQvmdLENMQ5HTwdtXTs2dUIecotcL86Id7DokoCTbbIavTYx5h/WIpMBJ4jfiXId+anRYM25udOHuP3V9p1/gbw2lnPFerePQm+ijrqNdQZJ83qng2C26cMxIzqDwXtyt4CyMv7QOa/JOdj2/RqxZz6tvtp3f23/AWmYyGgNXpg3EnSEyKzJZYoo/BpLalWDjQkEoWPvT2ZMkji4XzGmuw7qecypBoKWX/3i411Qlwbm5bY2F5ykPBLiQyBTmGd7D7qYofVOA+H1fNd05byRfkg8Imw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cmhHM2hkRmhDdHI2S3NCQjJORXA0L1owQTF0UmNtTUQvWmwrS2ZuOXBGUFVN?=
 =?utf-8?B?R1p0MWJhU25zTWE4ZzYyRWVtRzhxOUQrSFRKM1lUcWExY3pVTW1pYkJpbU5n?=
 =?utf-8?B?NnNGc2hOam10UEkwNTBOQUdwZGhsL3dzcFZHS1gzeW5xSXRQcmY0NlpuWVU2?=
 =?utf-8?B?RjVFRUQrVmppRmYzTlNFclVUZFNCWW9kQkNWM2hCS1REaXJzUlV5UDM0OFVn?=
 =?utf-8?B?cnExYklGaTlKUDVXUFVoNUhjV3VTOUZBSXZYZDBEcWNmeU92c2FCNDYvTHV0?=
 =?utf-8?B?bzNVOGp1MmhOWE5BYmdBSlc1UktwZUVTdnBjODc2Q3J5aDNvTzJpOFlGbnZW?=
 =?utf-8?B?V2xiWnJZWDRHWnd6L3UveUtzQUVUMFJPN21QamtwUHdqSm83VFppOVVKaWN2?=
 =?utf-8?B?Nnd2blhLY0EvME1hN3B2RGFnUTFmWk1tQm9HVWRLNHkyYVhZYTdveU1HSG44?=
 =?utf-8?B?ekVDZFlXMjltTUZyQTlmQkVSYk5jSWRhQm9RUklvWlN1MzFXNE5lU2VxbUVo?=
 =?utf-8?B?MnUxNlBtOEp3cWxwVXJDRnB5cmd5WmRDdk9MaytSYUdpQUdIYWJBTUhVU3lE?=
 =?utf-8?B?VGFEYStBQWpBWTlEUUZEa1NQMGFDa00vTFVCaG5KUnEvMkJpSEg5ZFpDT1l4?=
 =?utf-8?B?Y2N6cENqSXVBMmRKb3c4QjZMaVZhaXlqeGVOK1hUdEFyaE5uUlMwdkpIN1By?=
 =?utf-8?B?S2dmekV3WDZveHplZENPbWl6SWRGRENTM1JZZkRPcloxbHoxK1JRV0pZTWZR?=
 =?utf-8?B?Uk50Z3JNbmJkUmlUaUk5OUMxQk1EYWFSd005bFFqNlZSUFhCKzJnZ2ZTRThY?=
 =?utf-8?B?d0FXaXlWRnZHd3hMRU96bDAzZ0ZOM2tJZDl0WXlUNS9GU2ZGeFpFek1zd1pH?=
 =?utf-8?B?UStldmxFMmZjd0pjcjFtd3VKTUZDUFZ2MHcxQlUydUhyUjl5M2F2dVBZc2Ez?=
 =?utf-8?B?Tkp2bUh4M1lpaElqT3ByYnNBZFNaNUlUVnl5VVhjbFBJU0pRWjgwQnVhMGVj?=
 =?utf-8?B?cEwrQnh1eis2enhPdS8zZFFwU2xIem94YWppV1YyWlkwcGE4NmdZUmpmUUtn?=
 =?utf-8?B?empUbThxNUxSSUdBNE1RdE43dk5BSjhQU2dIeDU1NFQxOTFJTVEyVkk0M045?=
 =?utf-8?B?R0xITFJxNlhkakFjaGdOZDg0dkhTdWdZYU10dXA1Uy9iZm5sQzVxL0JSWjZk?=
 =?utf-8?B?MytDR1hVM0ZPMERzbXNTaE5USTdMeEc1bDhTQjBHaEVGKzFWL2g3WVYvbDNw?=
 =?utf-8?B?NGMwZTdTOTAzbnlncTdWZDJBbzJseUkvc2Z5YzJYWG1QcmZzc3lXZ0xqM2FU?=
 =?utf-8?B?L1ZCQTByTTRoaTl0MWtQRXRNQ3VzdGVLL2lRTEo0R1NEd3U3a2c2OHlwNnc5?=
 =?utf-8?B?cnduVXNUdFNqTVBpRktHV3NOa2JKZldHNEhoSlNQYkljd1hDcDFzQi80MkVG?=
 =?utf-8?B?T0dQbFBuejBZNENCOUxaYTV1Q2RyYlZtaE8vYWpTZ3QvY1BsWXZvTmUyUTlE?=
 =?utf-8?B?by9JcWh4VTFna3RTeUl0OWt4cHJrTFQrZDVmdkpPWEViNjVsTTRqNU1hdk1u?=
 =?utf-8?B?Sk95L3pmeFRrSm9vWHBWRndVQWhlUnh4WitDdFVRZVZ0TEJ1UGxOd3Jydjkr?=
 =?utf-8?B?WFZOSDEwcnVFNm8vY1VuYkFlV2lGT1ZmL0hRZERxSDhpMGNHVXlvcWdPNGRQ?=
 =?utf-8?B?eis2bWc3SmJheXpJWVpWNlRDNmJpUzlLZ0FWbmxEck9YNXFpbmxNa3dSSXkx?=
 =?utf-8?B?dTdrc2Z0ZE5QNkRkWi9DdU9pZWQvSUFSSnV5UlpIdlZhRnpSZDdUODl5T1FZ?=
 =?utf-8?B?MmtlOEk3MVQxdGs0U3lYKzk3bGtIajFzM0pVTDZydjJZWm93bTN4RDdhTmd1?=
 =?utf-8?B?RHc1S2RrbzJSOFRWamt5QTZsbFJEbWkzdnNmV3I1K1BXRVh1SURUdHRKeFdY?=
 =?utf-8?B?TUV2bjVzUjN4ZUxkWkp1QmtHdlRpOVRCd3RWR0o0OG1Yc0JXVklraUFmT3g5?=
 =?utf-8?B?UXR0TURXeWRyTFZ4cThGSGtQdWlEUk5QbmlDVHRUR2MweHRmbXYwUzVQeUVy?=
 =?utf-8?B?cjVxanQ2cENvUm5OVU5UM3lvS0x5L1JZb3JvZEt1VktCb2x4dytFdHIyS05Z?=
 =?utf-8?B?OU1vYU9EKzIvV2NDdVBST2JQSDkvTFh0WFd5cFZvbzNqSDRIbTdMeERkbHM3?=
 =?utf-8?B?WTdteDJEZUJMcDFRTW5ldVpsV2JsMDdCckVENEhseG8vNm1DelVCMUtuRWRE?=
 =?utf-8?B?RDJJcHU4Nnk4RS9WUitmWTVnUlZzblBxQjZPdVRBei8zNTZBUWhWa3VSenNG?=
 =?utf-8?B?Z1FkVVJRTHVNcnl0b0J5bm1ia1c0Q3VmRXJ3Z3ZnVnVubm5kSi9Udz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c4a8cd2-da85-4d94-1de6-08de79ccdd02
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 09:03:12.0659
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4b61U/oKVmnn/oWn8iKVMxuX9J6p7CQe2hMXWnt+IzJb6H/pY5zFaOU4UoVdzvyd+l23uMctsLLjik2JZPOkMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB9699
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2026 09:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66300

VmFyaWFibGVzIHNldCBpbiBvbmUgcmVjaXBlIChpbWFnZSkgYXJlIHZhbGlkIG9ubHkgaW4gdGhh
dCByZWNpcGUgYW5kIG5vdCBvdGhlcnMgKHUtYm9vdCkuDQpXaGF0IHlvdSB3YW50IGlzIHRvIGdl
bmVyYXRlIHR3byB1LWJvb3RzIChwdXQgYm90aCBvcHRpb25zIHRvIFVCT09UX0NPTkZJRyBpbiBt
YWNoaW5lKSBhbmQgbGV0IHRoZSBpbWFnZSBkZWNpZGUgd2hpY2ggb25lIHRvIHVzZS4NCk9yIG1h
a2UgeW91ciBzaW5nbGUgdS1ib290IHN1cHBvcnQgYm90aCBib290IG1ldGhvZHMgaWYgcG9zc2li
bGUuDQoNClBldGVyDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
T24gQmVoYWxmIE9mDQo+IEguIFd1bGZmIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNl
bnQ6IFdlZG5lc2RheSwgTWFyY2ggNCwgMjAyNiA5OjA4DQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10gUmVjaXBlcyB0byBtb2RpZnkgdmFyaWFi
bGUgVUJPT1RfQ09ORklHPw0KPiANCj4gSGkhDQo+IA0KPiBJbiBvdXIgbWFjaGluZXMgd2UndmUg
ZGVmaW5lZCBVQk9PVF9DT05GSUcgZm9yIHNkIGFuZCBlbW1jIGFuZCBzZXQNCj4gVUJPT1RfQ09O
RklHIHRvIGVtbWMuIFRoaXMgd29ya3MgZmluZS4NCj4gDQo+IFdlIGdvdCBvbmUgaW1hZ2UgcmVj
aXBlIHdoZXJlIHdlIG5lZWQgdG8gcnVuIGZyb20gU0QtQ2FyZCBpbnN0ZWFkIG9mIGVNTUMsDQo+
IHNvIHdlIHNldCBzZXQgVUJPT1RfQ09ORklHIHRvIHNkIGluIHRoYXQgaW1hZ2UgcmVjaXBlLiBX
aGVuIEkgcnVuIGJpdGJha2UgLWUNCj4gPGltYWdlPiBJIGNhbiBzZWUgdGhhdCBVQk9PVF9DT05G
SUcgaXMgc2V0IHRvIHNkLiBCdXQgaW4gb3VyIGN1c3RvbSBhcHBlbmRlZA0KPiB0YXNrIGRvX3Vu
cGFjayBvZiB0aGUgdWJvb3QgcmVjaXBlIGl0IHNlZW1zIHRoYXQgVUJPT1RfQ09ORklHIHN0aWxs
IHJlbWFpbnMgdG8NCj4gZW1tYy4NCj4gDQo+IFdoZW4gSSBncmVwIHRocm91Z2ggYWxsIHJlY2lw
ZXMgSSBjb3VsZG4ndCBmaW5kIGEgc2luZ2xlIHJlY2lwZSB0aGF0IG1vZGlmaWVzDQo+IFVCT09U
X0NPTkZJRy4gU28gdGhlIHF1ZXN0aW9uIGlzIHdoZXRoZXIgaXQgaXMgcG9zc2libGUgdG8gbW9k
aWZ5DQo+IFVCT09UX0NPTkZJRyBvdXRzaWRlIHRoZSBtYWNoaW5lcz8NCj4gDQo+IFRoYW5rcyBp
biBhZHZhbmNlLCBILiBXdWxmZg0KDQo=

