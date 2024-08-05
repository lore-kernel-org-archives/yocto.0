Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A6C1C3DA4A
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 12:37:37 +0000 (UTC)
Received: from ZRZP278CU001.outbound.protection.outlook.com (ZRZP278CU001.outbound.protection.outlook.com [40.107.167.56])
 by mx.groups.io with SMTP id smtpd.web10.6884.1722861452718527349
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 05:37:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=pm28DzoT;
 spf=pass (domain: vrag.ch, ip: 40.107.167.56, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q16zNDahFBAeBHAq2n4YyLG9V1sguruzzjqzc6kHK8R/cBsvF3Hq9d9VKhkwqRAngcYi6nGI2FGFBYCt7sJLkcLB/0AsSD9D5f+z4wT4nHACHlq7Usba5Bgzlaol4dzxjALbb3me/huxZ5sUqKgOsTzJxB9r+LTbTJj7Tk3hweKHyLSejo9/a5FX0+7an5TCytCaiayPoRlY0c89+Zz3ykTtSPwZ8g2jPto9xUQ+EBFYyupg3TOludsHcHApPbSm3tday6dxI77G+R6otxFGwFs9PyGkzZ7I9rGhJ5Hd58KPhlWfmkEFlQEOxNlXpHqb3Ow2hkXxL5jVTi6AIjH5ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4iK5G+mpx6HoJWUipxDCh+uKMvNIocEGaAikOYV/MdA=;
 b=V+GXC588SFiVVLWljuYdbbetWgSR9VsuEfY0wOlYwJXeL9ddDO2pb3y+90ViezRafa7QGrYuei34VAddyDtkQT9/qivRl/wvcJw/a8TPHw/gEQzXfEAcr85a5gxRsD9FCoPcwO7XyclnMFR5fMo1uC8HHLj9qwg81LTaRqoLiIgJn7RZA8T847ntyzUeWvoreMsZ738orhSe/lsTeZtTZoFh/VRS1IZa1BShWDl/91xXHOW2dW9uTGdAfRTjkFvE+jeIDDEpkyrly4OC9ur234+cCTplOiH/RPtwlRCCQ21HFFmQOXiy2bClR99MaTHKumCAdeLC+Ggznec8xR1ZhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4iK5G+mpx6HoJWUipxDCh+uKMvNIocEGaAikOYV/MdA=;
 b=pm28DzoTzmkxpCW11jTHlT1RLenEtYtbaygLyNKq6DGUJZnwqVP4juLV4aO4yU1fUnm9rMsVZy7jMGeyIbVjhIoNELCqhuCz0LBuxIhAjgU7VKnVw//J3/ONzsLxvtMHps9uBVC/BKs3d86lqCoYwAW6Ms+pmWl+K81OCE+oSbY=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR2P278MB1109.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:60::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Mon, 5 Aug
 2024 12:37:29 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%7]) with mapi id 15.20.7828.023; Mon, 5 Aug 2024
 12:37:29 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Missing patch status (upstream status)
Thread-Topic: Missing patch status (upstream status)
Thread-Index: AQHa5zQ7X7TUFPpkkESB12UOxdcwCg==
Date: Mon, 5 Aug 2024 12:37:28 +0000
Message-ID: <bc2a6e0bf1d7b9a02b215a0b26b4bbd9dd577072.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR2P278MB1109:EE_
x-ms-office365-filtering-correlation-id: ed1c461c-51b9-4fab-6da7-08dcb54b5e55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?TmQzUjRZaUZZRGhSSnN2aWtheVpXa0VsVFFsNzNNeUgrazJPYXZoc3gveURu?=
 =?utf-8?B?NzgwVFA4eUlJbG5YUVl6blMvMitnd1g4VXZtdyt0bWNYd1kzQkhDcGhlalRt?=
 =?utf-8?B?NUh2c1p0eUl2TU1lY0lqNTU0aVRZa1hHRithQTlTTis0S1dOdHdUTGtNck1L?=
 =?utf-8?B?VEVLYmJ5alYwOHg1anFaTUxuZFBHQmpqVHpWQjBObmxsRXZjc2lyRktvL1pD?=
 =?utf-8?B?MHRsdWJXUFRZTWpuNDFUSTIrL2VndmxCRHpJK1JtamZvakc5UnphTEJXRVZ0?=
 =?utf-8?B?UitoZk5aVmNtYmRJdTlCMVFtQkhXZStKWmY0bEswRFdneHVjVnE4RFlzS3hj?=
 =?utf-8?B?dm0waGh2L1N2RENWSTJxUTFBYi9MOXVWOVVuY1BIc1IvL0tPWVA0QXQyN2xt?=
 =?utf-8?B?UXArZmtjcyt2c3JsdnBrWktwczdZb1dkeXYzMytVV2lRbGh3cTAyQTROdkVr?=
 =?utf-8?B?eFhJaXFTMXNWUHFWK1BhWThCN0FRaS83Z0xYTXVsWUl3T2xmYi9vYTExS295?=
 =?utf-8?B?dGwzUVo2TTNqL2U2bGJxbEJIVmZDWVFnYW54dmtnbEZMNVoxalA5MWFKazMx?=
 =?utf-8?B?MEZET3NKK1IzcXdpUE56M3p3SDFFN1g0Uy82UlliVDRsMXhxYTZaOG1OVG5a?=
 =?utf-8?B?ZW1yQ0VLNzVlT3VBN0Ewc1JJTlRwd3N2dk5pVlY4OTR1SDdZeGlKRFRkNE9T?=
 =?utf-8?B?UmVTWTdMQ0pUeWF6WTJ0YWdwWjQyWlc2U0JFa1EzTVQ2RTRFUEUxYUxCcUZJ?=
 =?utf-8?B?OXVIY0ZYL0FWTndkT1paK3dFNEZzd2hRcnByZDBBZlpLMi9HWGhHSDZlQUxG?=
 =?utf-8?B?SzZHamsyV3B0L2thYko2QXYxemZLTi83ZW1oVDRTaGU5U3lYQjlpSUQ4WVNE?=
 =?utf-8?B?K1FPZHBCV0RtTk9iaEg5czRvdS9EUHcvU1F5SUtzN3Zyek04RjhBYks5NTV6?=
 =?utf-8?B?TnNGeEJRVlZMZE1DWmNrYjdNaEl5Y2RERVVvbGNzeUUxVVRVdzJpTnNaZFVP?=
 =?utf-8?B?bmhMRy83dUFSb05BcGp6YkhyYVdWRnBuK3Vvb0Zxd0Z4ZUMzZTY2bkpDV2RX?=
 =?utf-8?B?ZXJHSG11dVFQOW9HWm8ydGJyNmZFOVRKblA2RVlJSlJKNlQzWnY1b0lUK3pV?=
 =?utf-8?B?bE5YMTgrdDRnR0R4d1dETW9CbGxmR0FhanRwWVFEeVBObEZ0cGFrZkNUMy9j?=
 =?utf-8?B?dVZ3ZkdpbWVMdVdWVno0UFZjSHZodFRENkFxVjBGS1FYdnM1dFUrRVRsZ3FH?=
 =?utf-8?B?TjBNcnpJbDdFTDdJQ1NiK0hCaWRvcFBiemtpNlBGU1RLMTU4dGhiTHowbDBt?=
 =?utf-8?B?WndzbkNvalhxNTh5QWhnNkEwcnhxblJMNXZDeDdNY0NCSk9Jb01EVmxzUEFR?=
 =?utf-8?B?N2x5OFV6OThkQnZFdFhPaTNQODJjY3U4QkRKUzZoaWZDMTlkVnVhdEJPM3Vr?=
 =?utf-8?B?QmNTSWJkTG80T3kwZ0RJOGxLcC8vdjFFbm56a2J5cVBvSkxHTldKcDhTSHpy?=
 =?utf-8?B?MTUwTXlVR0xtMVVwd2pNcytyNTlZcFV1UGh5S0d6SHB2U3VhZWl2NVR5SjBn?=
 =?utf-8?B?TnE4QTdiTkQ1aW1pc2xqamJkT05idGdseDEyWUN2a2xrclVGaUU3WjA5NzlG?=
 =?utf-8?B?SDBvRzlYaGIrTmU2cnZGdk1CeHZhZ0ExMXNCRzd5b2JTZkRLTTl5SlVMdmNj?=
 =?utf-8?B?UGxNWXkrSGNxemFCZ0VKSHIzdFh6UEJveEJPZDFDUGxESTVTOHNiM0ZhTWJr?=
 =?utf-8?B?dHVPYS8wUUlqaHVQSm5MZVF4MnBkeFlrS2hScHYzR29VaTlic0hJS2NmWXFZ?=
 =?utf-8?Q?1QY2z64x8jZZTJQ9vWpkHCJ2QEwwk9u6i2+mE=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dzl1QVJkQ0Y0Y2FyRjlPRUV1V29pK3lvREtxSWZtOE5xdnlHamRiQnRhaS9N?=
 =?utf-8?B?WFZHZ2xDWTQyZUZaNUsxSmhOdjNWNFBIcktNMmxiQmFhUjRSblhaSThRd0Jh?=
 =?utf-8?B?bFg1Qm96cVdQdStYWXE3TDBzSGJWZDRWa3hmaXY5WTd0Y3ZuU1JDMEJVSUJ3?=
 =?utf-8?B?aStUMExhbW1sc01hZVFZNkRBdmU2eSszUDAzRkRYZ1MyNktNSTlYeEhXZzRw?=
 =?utf-8?B?YUo3ZXNQbmN1QnF1RGV4OXFzamtpejJ2TDNzVUdYSTErTGxmSU1YVGJtYmlG?=
 =?utf-8?B?UUNyN3dhVHVpaEpkdGNpTGJZMUZqWEY2d3NVMThxYmlSeVBtcUxPejFTM0sy?=
 =?utf-8?B?NFhjVHBia3gyS1lrRTdkZ3EzVkgwbnBINm5GdUgyb3VFRHhvM3B6UG1xVE41?=
 =?utf-8?B?ZG85VEdzMHRsRU1vZ0pZYU9nQk1MZDJVNTVVRnVlNVdieXd6M1IrY3FLNEFK?=
 =?utf-8?B?c3R3dzFYcERTS2lVRUk3K3kzdXU1VjM2RmN0eEo1bDFzamppNWhtUWdMVVZM?=
 =?utf-8?B?b3grUG9Lb1haM1FjWFU1SXdPeGdNdU5BaGYzVkpSQ1R4V1c0c3UxRldrSEZB?=
 =?utf-8?B?NWlzWEtLQmFuQnlObmFXc2NoNEg0M05wQ2pXMDNJaU8zMGdmSHNmOEFBTE5u?=
 =?utf-8?B?MmZOTk92QjMrK21MQ3o0cnJib0RyV29hV0hGVnF0aXI3M2s4Mmk2OVV5Q01P?=
 =?utf-8?B?RE1OVitDK0pMZFJKZlZ1QXp2bm1JVzRaVFpKWWlpNDI0WkFNOUcvVElzQnFC?=
 =?utf-8?B?dEt1MnA1UEYvaStKMWdkbVFXY1dyckEvM2l0WVFGODFkVXJBTkRQZ2taTi8v?=
 =?utf-8?B?bUZ1YjhZT2JWZEdpcVNPcGlsOC9vS01kcXVTQmxNL3NxWElWendWWC9Ua3l4?=
 =?utf-8?B?Vlo3MXVVUjZmNldFRVZBNlViQWEzZ0lZZDRZcTJyNVhpOUpzeUpnNUwvc1ZH?=
 =?utf-8?B?eEdKWkpjMUw2QzlpazBsYzhtekpuOHdnd29uMnplM2V2cDYwRGdwTEF4ZTY1?=
 =?utf-8?B?Z3BtOWZJeThndGlRdnpEdmRoOEdCWGoyK2JOUkNIMDJRdGswYnpvVVVFQ1RD?=
 =?utf-8?B?REdLemZ2K1RjTmZqYko3M0FMc0dUcTZ0QUxVRk5LSkZIa1lnOERwTFZKYkhn?=
 =?utf-8?B?bXphSE5TWFkxUGdHbHNmUzJwaVJwUlVjQlJZUjhzZitpWDJJZkNrTEhGMDQ2?=
 =?utf-8?B?R1pkc0c5N3lwTkN6QWQ4ankvQ3BMenB5Y0IwQkJVcXkrNHVPUzArUEtOYTZy?=
 =?utf-8?B?RG5ZNHBWZEU0YWx5VFBpaFNqcmY0bW1vTXlJb05uMXFDTjdsL2ZZcDFibzF2?=
 =?utf-8?B?clVXd0pPSGk4eG5oUXpLankvNXV2blMwUmRoYTRFWnhNa28xMk52dWREWEdM?=
 =?utf-8?B?RithNXRGU2tRMnlYdXJUbzVwMXVXM2k3dXVvcXc1TldZRjAwdFAwQWFYeHR1?=
 =?utf-8?B?ZHQ3amlEVDBraVhtQWJFeVl3VmdETllEMkE3MGhYZnZSN3BHNmY2b0pLTGNn?=
 =?utf-8?B?MEJ1MkFBbGc0dm52K3FTZ2pCSjBWWUpWWFhMWnlvOW1sRktXdE1CQUVVb3Vi?=
 =?utf-8?B?QVp6TkQvclF4bkQ2dTJZcEVkUm9waWEzTGZvQUhkaFh0bEVjQmx5V1M5Sk81?=
 =?utf-8?B?YXhOZlVCRGgzRTVVQ3owSXFXME0xRkxyNjUwS0lHRUhJTHExNHdrNXI1Szhq?=
 =?utf-8?B?ODBkM21TNzZyYm5IVFZkUmcrMUo4NVBOWHFyZXNNYlB2eGUxMG9MMmZhMGhP?=
 =?utf-8?B?SXVyV0J1QXdhaE1UejFEOWtvU25IK2JOVnc3L2NGamxOMTR4ZmNTV2lPUGhH?=
 =?utf-8?B?bkxyRUVvTkpjRzdXVkJ5aFQ0cFF0YlBmN3VTTTU0dHVKdnRjYUQrSnhFQTFx?=
 =?utf-8?B?ZFBsdE0xNERKMkMwZmdjQXk1dU9LYjV0cTdOS3pDYkNsR0JmdU50NFowdVla?=
 =?utf-8?B?QTJCSHNrR3VZYzJjdThNSG85Wmg0TTBoN2l5Q2Y4T0ppMUNOdlhoR25NNldj?=
 =?utf-8?B?NWRPemx5djlnRWVSdUE2U1Rocm5pNmJqdS93VEVzM2NGQThuVTJOZm5sWGRy?=
 =?utf-8?B?NTNjaFQ0MjZ1WUdJSk5YTStGNjJPbHhwamFDS1h3N1pPR3FyWXkyL25sTHZB?=
 =?utf-8?Q?7sPsdOsFiJJYbdhc6shFF+d2h?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F352F55073F1994EB5375BB2F400E4DE@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ed1c461c-51b9-4fab-6da7-08dcb54b5e55
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2024 12:37:28.9083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Kkw9/jxmuBTIoMR3VJdsZlwzhpuvjQUDbXjCMtRj0mr1zyd1hU+oG3X+usnA/BM5isOL11SjFW+ULMa2HHKEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR2P278MB1109
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 12:37:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63651

SGkgYWxsDQoNCkkgcmVhbGl6ZWQgdGhhdCBteSBwcm9qZWN0IGRvZXMgbm90IGJ1aWxkIGFueW1v
cmUuIE5vdyBhIHBhdGNoIHN0YXR1cw0KaXMgcmVxdWlyZWQgLSBidXQgZXZlbiB3aGVuIEkgcHV0
IGl0IGluICh0aGUgcGF0Y2ggc3RhdHVzKSwgdGhlIGVycm9yDQpkb2VzIG5vdCBnbyBhd2F5Og0K
DQpFUlJPUjogYm9vdGNvbW1hbmRlci0xLjAtcjAgZG9fcGF0Y2g6IFFBIElzc3VlOiBNaXNzaW5n
IFVwc3RyZWFtLVN0YXR1cyBpbiBwYXRjaA0KL21udC9kYXRhL3lvY3RvL2JmMTMzL21ldGEtYmYx
MzMvcmVjaXBlcy1ic3AvYm9vdGNvbW1hbmRlci9maWxlcy9vcGVuYmx0LWNtYWtlLWFkZC1pbnN0
YWxsLnBhdGNoDQpQbGVhc2UgYWRkIGFjY29yZGluZyB0byBodHRwczovL2RvY3MueW9jdG9wcm9q
ZWN0Lm9yZy9jb250cmlidXRvci1ndWlkZS9yZWNpcGUtc3R5bGUtZ3VpZGUuaHRtbCNwYXRjaC11
cHN0cmVhbS1zdGF0dXMgLiBbcGF0Y2gtc3RhdHVzXQ0KRVJST1I6IGJvb3Rjb21tYW5kZXItMS4w
LXIwIGRvX3BhdGNoOiBGYXRhbCBRQSBlcnJvcnMgd2VyZSBmb3VuZCwgZmFpbGluZyB0YXNrLg0K
RVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46IC9tbnQvZGF0YS95b2N0by9iZjEz
My9idWlsZC90bXAvd29yay9wcGM2NGU1NTAwLXZyYWctbGludXgvYm9vdGNvbW1hbmRlci8xLjAv
dGVtcC9sb2cuZG9fcGF0Y2guMTQ4MzE3OA0KRVJST1I6IFRhc2sgKC9tbnQvZGF0YS95b2N0by9i
ZjEzMy9tZXRhLWJmMTMzL3JlY2lwZXMtYnNwL2Jvb3Rjb21tYW5kZXIvYm9vdGNvbW1hbmRlcl8x
LjAuYmI6ZG9fcGF0Y2gpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCg0KV2hhdCBJIGRpZCBh
ZGQgd2FzIHNvbWV0aGluZ8KgbGlrZToNCg0KRml4IHRoZSBpbnN0YWxsYXRpb24gcGF0aCBmb3Ig
Q01ha2UgYmFzZWQgaW5zdGFsbHMuDQoNClVwc3RyZWFtLVN0YXR1czogUGVuZGluZw0KDQoNCkNh
biBhbnlvbmUgcGxlZWVlYXNlIHRlbGwgbWUgd2hhdCBpcyBnb2luZyBvbiB0aGVyZT8gV2hhdCBp
cyB0aGUNCmNvcnJlY3Qgc3ludGF4IC8gcmVxdWlyZW1lbnRzIC0gaW4gdGhlIGRvY3MgSSByZWFs
bHkgY2Fubm90IHNlZQ0KYW55dGhpbmcgYXQgYWxsIHRoYXQgY291bGQgbGVhZCBtZSB0byB0aGUg
Y29ycmVjdCBhbnN3ZXIgKGdvdHRlbg0KZnJvbcKgaHR0cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5v
cmcvY29udHJpYnV0b3ItZ3VpZGUvcmVjaXBlLXN0eWxlLWd1aWRlLmh0bWwjcGF0Y2gtdXBzdHJl
YW0tc3RhdHVzDQopLg0KDQpDYW4gSSB0dXJuIHRoaXMgb2ZmPyBJIHdvdWxkIHJlYWxseSBsaWtl
IHRvIGJlIGFibGUgdG8gYXBwbHkgcGF0Y2hlcw0Kd2hlbmV2ZXIgSSB0aGluayB0aGlzIGlzIG5l
Y2Vzc2FyeSAvIGFwcHJvcHJpYXRlIGFuZCBub3QgaGF2ZSBiaXRiYWtlDQpydWxlIG1lIG91dCBv
biB0aGlzLg0KDQpUaGFua3MgZm9yIGFueSBoaW50cyENCg0KQlINCkRhdmUNCg==

