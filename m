Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18B4CC4707E
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.63])
 by mx.groups.io with SMTP id smtpd.web10.18118.1649604650148027027
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 08:30:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=JGkcxpNz;
 spf=pass (domain: advantech.cz, ip: 40.107.117.63,
 mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDLAfAL1lRAFJWlXMoltcMhL0Zb0KBNxzPyc98fanK3hYKqSVBN7Xg6WJZR89C6N8YGNvGLfRvLsdJx8BFp5BLtvr52S9hWiKTKwX3AdhYDkoGGh3SF0+Iw8tgLXLvH5Aq3ut3vgehjpAEZzRp9e2Y/UpLzP5a5rjljeJhej4kdzmgl1NAVz0uQ+TF0MHz/XD+CUtAPlKw63KjuYRdYeALafVjsBLtRE8QfZbpTnz7DbjE8C/+XfrP6V7K6BTtvF0xtMiMfABHE1Mg2cnf3oX2ELRUXTh9YZ3o0YVqsdPE5ZeBp25EhzUFX1O0//l/bVu8QrCwfmrFigJT7P+OEJuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tjTw0h6WO9urbcyh/qZxu94V7o2AAkOAsPXxSSClWoU=;
 b=nzuWNQDEktAukWe1Gf+XCQUiJdlwwE23IgeLbjA4XCrQ0WrzaNAZLXrTaVJsA9ifhqltN+pfFjJQlmNJaqt0IC0Xn3xnQ3oPvUl2PHSkk7BpjyaSqOyDHK0tM4W0QnjISuajULtcEoRl5gCjMMdhJFIsw5XRYLx3D1DtHYwtSVSBLfWA6yaz6VwC4JHTll+wBChVazwQvbC7l58VcqtTcxFuVUmD95xaFAMQuqzy37NWIIBvo7HibQJGiaQhhrBF9s+upNqoL2OaBjJ9i7qQXfUwlMd0tVZhzGv+uarBQxtxAaZ8sOayIen5v82vnxJclAfEG9UpPjnMM4LDYop0jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tjTw0h6WO9urbcyh/qZxu94V7o2AAkOAsPXxSSClWoU=;
 b=JGkcxpNzUrtR+VDDokEUsWj7VcrMadx+h0Eklg2qjx2ErwwfewvdaSb/dOa9llfDrkHZ1uRO/F1Wnr/YhC9+1QbngaYUAO3ipwhOPMPfBnX5J0FU21GCr108YGax8AOIifGK2YnGbPR9LqlWgyg3iLDqdJR9mKvMHHabcnUK4as3vYw1o6Wlh7M7WaGIPLNrMnJxGP+GdLqRrh9TxAaC0Ncvu76fX4IcMzQowUqDzbLLIpsgZ66zy1tjiias8jhNLvNuwdQnw6ft4o4dZMbB+j//Ne7GDN96mMVwa3U97gPxzmiQDmm2PlWsFnxUmDCEhpgZNCFkKqqD1vU1+d561A==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by SEYPR02MB5965.apcprd02.prod.outlook.com (2603:1096:101:84::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 15:30:48 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 15:30:48 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 2/6] tpm2-openssl: update to 1.1.0
Thread-Topic: [meta-security][PATCH 2/6] tpm2-openssl: update to 1.1.0
Thread-Index: AdhM7NlrjCixNpzjS+KMK8K5/skcfw==
Date: Sun, 10 Apr 2022 15:30:48 +0000
Message-ID: 
 <TY2PR02MB3678195FA5577D5DD10E3C3981EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e7970fc-b92d-42f7-eda6-08da1b07167c
x-ms-traffictypediagnostic: SEYPR02MB5965:EE_
x-microsoft-antispam-prvs: 
 <SEYPR02MB5965410C1D647911C3F51D4081EB9@SEYPR02MB5965.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +J6lKNndshFxooEHU18ApjJXmykfhyxElkwODp7JatwDwA9o4fodWzgVgJK/4c3jTfy0KWHBck+1+y1wSbKqa/gw/KWHW2VFWcp147PCuMyY7/VLfHnAJC6Ert0Gus1WE6rykwTT6DR3BLk9Q/3P4Dc6PFnkup9oJrLQ+HQx6+esc5TViW0boHJDXX7gA9OmOj/jbGsVNU1mbsG79O5c9SJbyH/WFJacl/UQIwJiJyhWINauh2Ab/go5KKsxBSZCip540MiGUyoHgakgFQgyR6VFStXpRc83vlBvuAtnPnlTAZsHB9iaqfBYIL0p4gCcviEOT2g0oh+6E4rKxyvRqPhLtf1RVlxVGbDTpVaBpmWXmHkIpRig8SOPWVyqYKFoEMKQwEbS/9IB0Y8+1Eglhecs2NsAfOAUu6bO8N4J2oNIUA+8ZcOXcet3XtbyAQym0CO80upFeY9iXmgT+1NMvn+N4nRD5/Da6GWVbq6EA4tiUJ2ECnlgJxl90hKHbSX13xXOJoFi+nC/4yqzuScEqeoDJVjsZMcjEoh5HR3zFlQdsHH5+Ur8d/vcWSWLsqBj2HbPO0z3fc7/PUP4U31Gf1UiFvYLNCfAqoE5eTFL+rCmEdp6Kwl4Vrn804PDgqRvOJKhPEoFcOkoaJBADLETrXRuyYkvpt56tjpwvlzVoqtGLPfkzLMGiWH2k2nV2WxcLSaB2n1dRq/pBysDiCFWr15prbszClAw0XjNrZ2Fng2ksyPaVBf9bYsquv9emyjcDIv5fbS6f1b9KfyfcuMeHfV022c10Mhmfo9yYzxFtww=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(83380400001)(86362001)(26005)(52536014)(8936002)(9686003)(7696005)(6506007)(508600001)(2906002)(55016003)(5660300002)(8676002)(38070700005)(71200400001)(33656002)(66946007)(66446008)(76116006)(122000001)(38100700002)(44832011)(316002)(66476007)(66556008)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SlY5UnhpYVhHeC8zVHg0V0hWdGpBb3VxMC9WVUl4YmREZkk2aVlROEtZRktn?=
 =?utf-8?B?MG52Q281TXBBazhZNEJlTi84b2x2NGdoUHVZTXFCRjRpSzRpa3Iva1NIMFVw?=
 =?utf-8?B?cmlUKzhoYWdqREY0b0djMk81NkZGRGlNbTVsSEdydlRKR3A4NEJxbkoyRkFP?=
 =?utf-8?B?RUkrYmhDSGVtdTFCb1ljell3SjA1eWhUV0p5eHNBWTJic3kxRTduMTc2cnV5?=
 =?utf-8?B?SDJxWnhnNDZ0MWJUd2IzNTBBK2M2WFl0dnd1WEoyQy81dnN1WlVDdFFqOHBN?=
 =?utf-8?B?bmN3a3JLcjZRTFdHVFZmYnpHU1ZXQVdKQ29PS21XZ0o0OGdJL0NtTCtYNjVi?=
 =?utf-8?B?SkU1ek1lQ1A2dDQrbjNpYUZlSW45ZTNDN2JCd1B5ZlRDb01wOXZ1dTB6OFNq?=
 =?utf-8?B?RDVxeTBBMytqUXFwQVd2bWd0UVJKOFNJMXplaUVPZ0h2NzEzK0RWdDBKY0JE?=
 =?utf-8?B?YWlhRndQcXRFd1dPell0YzlYTUFPUjhIcjR6WnBrb3R0anpoMmtOWSt6YWZH?=
 =?utf-8?B?NXZJWkVmMkY2ZmdWcy9xNnZMTlI2UjhsMjFXVnBZNmNFUHM5ZU1xcmw3Y3RD?=
 =?utf-8?B?YTh5eGNxK1krQStCejZKRjcxOXNHaTNEZkpZaEM1TllFK2xvTWpLVVg5ekZY?=
 =?utf-8?B?emlIRS84ZEFsdS9reHFuRnpDNTRvY3JYQVVlT3o5YzRNUC9nUWhYUWhUQ3da?=
 =?utf-8?B?SUlodzZUTmQydGpYMU1pZ0JOV0p0R1FXVzIxbStvTEJlL05XTHVQaXlXZVFF?=
 =?utf-8?B?a0RFdG1tYzdxWnNlSHpaWlJDOE1kS0lnQVhSTk9qdDJUM1Y3Zkl6bTlTRXhU?=
 =?utf-8?B?NUJDSStMQkpsek5VUzFiSHRiWCtWWXdkZzJ2SS9lOG9NSXRzYTFZMWFmRXEv?=
 =?utf-8?B?K1U0NXF6TXplU3RVRnhvZExhaFZyeDVZVGk5RmFqdlo5ME5ra1g0Rkoza0Zi?=
 =?utf-8?B?bnNPeU9ldGZ4LzhnbjYxWXFKOWNYZEdXRWY4aEl0and3YkhUbzNvcXlwNm5n?=
 =?utf-8?B?UGdZQi9VSEdzeXpSZjhTNG9QaWx1NW9FSUpFQmtydTVqWnhRNFZVQ01MdG9W?=
 =?utf-8?B?cmE2U1FBU3JiMVVHWGF0Ky8yNVdSbEhocDFzRk9rMFNYakcyKzZxbnBDdTlp?=
 =?utf-8?B?VjlENnNVSTdNY3gzTjV1dkluSzBKNTBOTkoySzZleUFOZHlBRnpibFZvTnN6?=
 =?utf-8?B?VGV1REFyczNFenluRVVvYUhTZ1p6R2dmYUJCbjRBcHRmeFBPc1NublBuRTlK?=
 =?utf-8?B?czV1MkZIMXZSZWlHTFkzWWdieEg0cjByWVVwZUtibEVkeHVka3lBZHUvZ1g0?=
 =?utf-8?B?RGY5UXdDV3ZGVm1rcG5wTmIyaEk0TzhRdmNKL0tqVkVOUm9lOVA5ZFBFVGJS?=
 =?utf-8?B?MzNMak5ZMmRvM3Z2L1RCQ0FHMlNIeXFIb3VBM1FUR1FxSllITlZ2TEx6S3lG?=
 =?utf-8?B?NkpvOCsrNko1NE9maEt5d0RNMW9TcC93NjFMM3FQVXIxcjhodjhjVGlqTlVP?=
 =?utf-8?B?VjNuMXdmMVh5NUtxd2JyRzBYdiszOGJTUzVINXhBWHNiM2tWMllwc2JSdkRX?=
 =?utf-8?B?WERURE9QWnpTWTJrbytkU0J5dnltMkY3NXRqQlJxcktZZFRSK2h1RWZ2V29h?=
 =?utf-8?B?dGsyTUVFZ1dPRFBYNmprNmpreEZCTzduUG5IakxMVy9tdGU2UFpHY3ptQ0hp?=
 =?utf-8?B?SVgyMEIrSEdhd09sS2hLUHVUT3diN1Bhb0lkaUExTEhlQWxBQWk0bjZDbTVG?=
 =?utf-8?B?aVprakVYNHZEclNyNEVDckNhZTR4K0xDUUZsUDFHQ2tadGRVSzNuM1hwYnhU?=
 =?utf-8?B?R1ovSkl1U1hxVHVDcU96NWZ5dXZqTkVxeDd0Q2tXczdCcEF2dWVJUEN2eEQz?=
 =?utf-8?B?dWxvbGFibGw4T3BrMTJldlU2NGliT1VyM3dFdjN0Z0Y0blRDRitzd0VVMTI2?=
 =?utf-8?B?NEJBWDBtRERVSWdUOGM2dlB3emorWDBiRFJOaFkyd3Z6dzF1ZklTMTdla0lK?=
 =?utf-8?B?bDJ6eDh1WFQ2UXd3MFExeHpTSU5rZDZWcm1qZWRJK2xTRUtXVEdiSEVST0Ra?=
 =?utf-8?B?bG5XVmdTTkxjZU5ETlVUNjVRT3NDV1RKWXVKM2JzVVJmdEhZSXRyTk14WStr?=
 =?utf-8?B?YVh5RXpiQ0pReGY5dXZyc0NBM20vRXozVGVRUnQyMEF4VVdGUG9FSUQzQXE3?=
 =?utf-8?B?RUZmTUc2Y3ByT0VwQUQvK0Q5YjJHb3NSa1JzRHlBZWpCZXB1RlBXOFdsNlNI?=
 =?utf-8?B?TFhsZGpnaWNVQU0xVXpub0ZsSEhicE84MVpCQk1lc2VjN1BrTVloSytUR1ll?=
 =?utf-8?B?T3ExVHYva3RrVnEwMGM3d3hLQjUzWjViM2F1QlVkTlRxSTFlU1BNTjlhY0kz?=
 =?utf-8?Q?Lhg/9IzLDBM4HhTI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9e7970fc-b92d-42f7-eda6-08da1b07167c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2022 15:30:48.2041
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ozhJGv5IzCoQ7+1QGCCGsc4sZKTNeXqG++nmF0KypBVE83m5DkGOTeGP22SKLfEYSKclokvSJq+EN2MUt9rR6omp64UkiXoP7naVyvV0IqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR02MB5965
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56705

QWxzbywgdGhlIHJlY2lwZSBpcyBmaXhlZCB0byBjb3JyZWN0bHkgcGFja2FnZSB0aGUgb3BlbnNz
bCBwcm92aWRlci4NCg0KVGhpcyBuZXcgdHBtMi1vcGVuc3NsOg0KLSBGaXhlZCBzZWdtZW50YXRp
b24gZmF1bHQgd2hlbiBhIHNpZ25hdHVyZSBhbGdvcml0aG0gaXMgYmVnaW5nIGluaXRpYWxpemVk
DQogIHdpdGhvdXQgYSBwcml2YXRlIGtleS4NCi0gRml4ZWQgUlNBL0VDIGtleSBlcXVhbGl0eSBj
aGVja3MuIFdvcmtzIHdpdGggT3BlblNTTCAzLjAuMS4NCi0gQWRkZWQgc3VwcG9ydCBmb3IgdGhl
IGBUUE0yT1BFTlNTTF9QQVJFTlRfQVVUSGAgZW52aXJvbm1lbnQgdmFyaWFibGUuDQoNClNpZ25l
ZC1vZmYtYnk6IFBldHIgR290dGhhcmQgPHBldHIuZ290dGhhcmRAYWR2YW50ZWNoLmN6Pg0KLS0t
DQogLi4uL3RwbTItb3BlbnNzbC90cG0yLW9wZW5zc2xfMS4wLmJiICAgICAgICAgIHwgMTEgLS0t
LS0tLS0tLS0NCiAuLi4vdHBtMi1vcGVuc3NsL3RwbTItb3BlbnNzbF8xLjEuMC5iYiAgICAgICAg
fCAxOSArKysrKysrKysrKysrKysrKysrDQogMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkNCiBkZWxldGUgbW9kZSAxMDA2NDQgbWV0YS10cG0vcmVjaXBl
cy10cG0yL3RwbTItb3BlbnNzbC90cG0yLW9wZW5zc2xfMS4wLmJiDQogY3JlYXRlIG1vZGUgMTAw
NjQ0IG1ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLW9wZW5zc2wvdHBtMi1vcGVuc3NsXzEuMS4w
LmJiDQoNCmRpZmYgLS1naXQgYS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi1vcGVuc3NsL3Rw
bTItb3BlbnNzbF8xLjAuYmIgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi1vcGVuc3NsL3Rw
bTItb3BlbnNzbF8xLjAuYmINCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KaW5kZXggZjZhNjk0
Yy4uMDAwMDAwMA0KLS0tIGEvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItb3BlbnNzbC90cG0y
LW9wZW5zc2xfMS4wLmJiDQorKysgL2Rldi9udWxsDQpAQCAtMSwxMSArMCwwIEBADQotU1VNTUFS
WSA9ICJQcm92aWRlciBmb3IgaW50ZWdyYXRpb24gb2YgVFBNIDIuMCB0byBPcGVuU1NMIDMuMCIN
Ci1MSUNFTlNFID0gIkJTRC0zLUNsYXVzZSINCi1MSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9M
SUNFTlNFO21kNT1iNzU3ODVhYzA4M2QzYzNjYTA0ZDk5ZDllNGUxZmJhYiINCi0NCi1TUkNfVVJJ
ID0gImdpdDovL2dpdGh1Yi5jb20vdHBtMi1zb2Z0d2FyZS90cG0yLW9wZW5zc2wuZ2l0O3Byb3Rv
Y29sPWh0dHBzO2JyYW5jaD1tYXN0ZXIiDQotDQotU1JDUkVWID0gIjY2ZTM0ZjllNDVjMzY5NzU5
MGNjZWQxZTRkM2YzNTk5M2E4MjJmOGIiDQotDQotUyA9ICIke1dPUktESVJ9L2dpdCINCi0NCi1p
bmhlcml0IHBrZ2NvbmZpZw0KZGlmZiAtLWdpdCBhL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0y
LW9wZW5zc2wvdHBtMi1vcGVuc3NsXzEuMS4wLmJiIGIvbWV0YS10cG0vcmVjaXBlcy10cG0yL3Rw
bTItb3BlbnNzbC90cG0yLW9wZW5zc2xfMS4xLjAuYmINCm5ldyBmaWxlIG1vZGUgMTAwNjQ0DQpp
bmRleCAwMDAwMDAwLi41NTA2MWM5DQotLS0gL2Rldi9udWxsDQorKysgYi9tZXRhLXRwbS9yZWNp
cGVzLXRwbTIvdHBtMi1vcGVuc3NsL3RwbTItb3BlbnNzbF8xLjEuMC5iYg0KQEAgLTAsMCArMSwx
OSBAQA0KK1NVTU1BUlkgPSAiUHJvdmlkZXIgZm9yIGludGVncmF0aW9uIG9mIFRQTSAyLjAgdG8g
T3BlblNTTCAzLjAiDQorTElDRU5TRSA9ICJCU0QtMy1DbGF1c2UiDQorTElDX0ZJTEVTX0NIS1NV
TSA9ICJmaWxlOi8vTElDRU5TRTttZDU9Yjc1Nzg1YWMwODNkM2MzY2EwNGQ5OWQ5ZTRlMWZiYWIi
DQorDQorREVQRU5EUyA9ICJhdXRvY29uZi1hcmNoaXZlLW5hdGl2ZSB0cG0yLXRzcyBvcGVuc3Ns
Ig0KKw0KK1NSQ19VUkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvJHtCUE59
L3JlbGVhc2VzL2Rvd25sb2FkLyR7UFZ9LyR7QlBOfS0ke1BWfS50YXIuZ3oiDQorDQorU1JDX1VS
SVtzaGEyNTZzdW1dID0gImVlZGNjMGI3MmFkNmQyMzJlNmY5ZjU1YTc4MDI5MGM0ZDMzYTRkMDZl
ZmNhOTMxNGY4YTM2ZDczODRlYjFkZmMiDQorDQoraW5oZXJpdCBhdXRvdG9vbHMgcGtnY29uZmln
DQorDQorZG9fY29uZmlndXJlOnByZXBlbmQoKSB7DQorICAgICMgZG8gbm90IGV4dHJhY3QgdGhl
IHZlcnNpb24gbnVtYmVyIGZyb20gZ2l0DQorICAgIHNlZCAtaSAtZSAncy9tNF9lc3lzY21kX3Mo
XFtnaXQgZGVzY3JpYmUgLS10YWdzIC0tYWx3YXlzIC0tZGlydHlcXSkvJHtQVn0vJyAke1N9L2Nv
bmZpZ3VyZS5hYw0KK30NCisNCitGSUxFUzoke1BOfSA9ICJcDQorICAgICR7bGliZGlyfS9vc3Ns
LW1vZHVsZXMvdHBtMi5zbyINCi0tIA0KMi4yNS4xDQoNCg==

