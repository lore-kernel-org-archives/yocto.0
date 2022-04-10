Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27D69C35273
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (APC01-PSA-obe.outbound.protection.outlook.com [40.107.255.88])
 by mx.groups.io with SMTP id smtpd.web09.18416.1649604688588122823
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 08:31:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=JIaSCSid;
 spf=pass (domain: advantech.cz, ip: 40.107.255.88,
 mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nf8l/a2BqR4xGm2Rsg6D9JEP9/GCLPDs4reNvrfmho0LsKM5ilhlSwUk0Ft89w6h0tqmXT7lBrMq66/ZFzSG2PTmZHxH939P5Ji1BBFlgwNHR/QKkVCcvo9AChi13HJNcoNk7jNr1TY4xlkuPXPb2B2G5Zo8Fi0cDnOK5C+WG5CbtRABHUDorCxjy0hCOYEBse3gyE1LNq1SN82og41poZxENoQrxAxxZNfVFhYXbbmyrt4OE30cE8PH659ahrESYa3Ki7lRXLMJii8uSCy9uSkI6l+T+aoSuTRPY5mFr5ThtU5WRhTmI/iCD1R89H/rF7NM7TUooziDW04/zFbLVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUsbxelptJRfwCQfcUiPvJOcGjCGy3VoYXp/UBGZfb0=;
 b=TXxLx4BVPMtFTouvBsYy4hrGhwgbUVZ9n2Sqfg5VTIuPxtZKnf9r3v3zympTfBX/ZNXE9jBocxDMA2UTWsKzZVJBie7z84iu+PlYHY3kaQU5/F0DfJLpZE/vjwuPd88NOddQUfRMOtjEMGA0hutTIXmcoko9rWOHLocOkByoAaPFJTkFA9ID/GW9T+xrf/GMUJ4+xQ+iA2N40Rq1OcW3kr5TnrA+YL2nz1O5pnB+lDcrpEuwpIURciBmTiFHaD4429oP0DInisd+o/tAlenR4h9/p9TICtVEIIhFGgDfcN9c7vXO7Mn7V+EDn4gIVH1eYA4ShJfQwK4tEwbHbsGzjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IUsbxelptJRfwCQfcUiPvJOcGjCGy3VoYXp/UBGZfb0=;
 b=JIaSCSidTnfdGfro034XMj/YQLf/Bdnu+ueiVeKDeA8znrYxFB1Qtmd82p7alk1xMPdj6YVI/mZz5YIFPY40bRdKemCoCqQG78tvYKiPK9aggNKYblJipXlxh0d62UE30pRsaiCEpOFD81uTDkHlOPkHjfnWDHjMLwQ9OIDhNWJpPRyvGb7RtZjnLcXHtVCXHl2hpwjvxZ0w0UWnedNgVkYbLnzYZRR/S1apoxIGK4uuXwkqnbpbKo4w6471wDbJvHV408rncrm8kucqIzhVoalYh6lLPLKpTsp5Auh6Ih/8QahkVsxphJtdaf8KrfXn4wTJSas7JA3Bx0cp7J0/gA==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by SEYPR02MB5965.apcprd02.prod.outlook.com (2603:1096:101:84::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Sun, 10 Apr
 2022 15:31:25 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::b46d:269f:591f:7eff%6]) with mapi id 15.20.5144.029; Sun, 10 Apr 2022
 15:31:25 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 5/6] tpm2-tss-engine: fix version string and
 build with openssl 3.0
Thread-Topic: [meta-security][PATCH 5/6] tpm2-tss-engine: fix version string
 and build with openssl 3.0
Thread-Index: AdhM7IEdNovL4q2qRDu806pa0A8zuA==
Date: Sun, 10 Apr 2022 15:31:25 +0000
Message-ID: 
 <TY2PR02MB3678D91E8540762ADC04FE7281EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da96e68e-0af9-4a3d-51e1-08da1b072cbc
x-ms-traffictypediagnostic: SEYPR02MB5965:EE_
x-microsoft-antispam-prvs: 
 <SEYPR02MB59658891385FD5DDFC93640381EB9@SEYPR02MB5965.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 weCJbfG6bvY5HgBIWS9ZVcV6G7d2G7jtR7jAjZXgtinxR04XzSYgPqkDTirg/WvVRKWntUIVukV7uwrPOechJcnLVvTwSj7UeW8aJsznstULOffYrYCHET1t90/Uc+q1PEpkgXPPwKjRZ8YnRFR91agEqBVFtL6GJ8PJ/f2G0xvbtyhGh8DkQ2e+jZ6uRNB5xZMQNcNeorxlU/kj45FiyCq1iUt3kDfZe6CAxJkq15u5SL7f2srNoQH7gRfbF1C14YO9lLQYzmG5RkNqzq+9OzYgc0/uFAIzLAJiZ8Mtldnyh+AbKT2kUcg/DD4Vv4F6E7G/RdAnLZoHqdGAniR/T1CCMNgQ3mCMrhY0rjxPE40F8O/pQ7+HelRxTkxlWhX/Nc4B5ZfAEZ/fI+40Fpr9+mmAZp8+GdF2arygAxRt/5JtUwwe+AyB1FJOQ6hAQFI3Nwmbf5Tk+YH5f7PBTKcLwMz6OeyfO0xBzbcJXmHk9wxA3aOk83cOI8GCF64bGQihJ8TaQvLrw9fXHOT7ujtUlOMd3rOSfYL2W7VHPcdqAkKcAinoLRZFI49rBiuQP2Xj2Jw+chP77LO9Dl5c6wveM4Muz1ObIwpP3AhykQgDPFuDMeyvyx2bgZeuG5Bw3Cv3hmuI6wifrBP0+pNH/HWiy7RcGT+LY6A0r4tUtkOeWfhE6SXbEVoDfydrcvoyi2wol66/djnbHTYSQsj/WQi4dhsJ5+46hSIqY2xI2iLfLH91tfX67PNUg409QBchdi8s3l28ePl2xlx/UntNNi7tfKbejrKM563f9e++fCPTd/s=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(186003)(83380400001)(86362001)(26005)(52536014)(8936002)(9686003)(7696005)(6506007)(508600001)(2906002)(55016003)(5660300002)(8676002)(38070700005)(71200400001)(15650500001)(33656002)(66946007)(66446008)(76116006)(122000001)(38100700002)(44832011)(316002)(66476007)(66556008)(64756008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Q0JYdnhBOUlmWkt5RGJlVmpOVnZBTThYaG9LK2tnT1RaV09QYUpzWTVWYmFt?=
 =?utf-8?B?SVF1anRycGZnZTBQYlp3eTY4OXJTWVI4a2ZOb3RHYmZBVnBVZzdLM1NSa25o?=
 =?utf-8?B?ZURWT3ZVdjVHTk43SUwvR0s3STdiakMwZHNKQlJxUHhqb3N3YlBBYUhSblBF?=
 =?utf-8?B?UnRrU2FJUVV0cUJ2N1RNdDdQeEl0cXRnYXFTYktlcEh2Ujd6RzZORkNBMEtN?=
 =?utf-8?B?TzgyRmw3aEMxUzVkd2MvOW84R3R4UE5PbHVuRkNlV1duSkdVbk9oU1YranlF?=
 =?utf-8?B?QnUrNXFHVlpMOUpjSkxzK3JHYy9ZREdPNGxrdVNab1IwKzlSeVBpRXoyenlF?=
 =?utf-8?B?L3Q5cUl1cnNlNG1Uc1J2UXRkb2RzaTNOMU4yQVN0QTNYSU9kRzBQVTVyT1Ju?=
 =?utf-8?B?S3VhQUtjeTRxN3pISGVDUDI3QnFwMStQWGFjbWlZQW1ab1lpMUVra0RhZWVh?=
 =?utf-8?B?aU0zbHdoazM1RkJWaWRLeEprOFNmOEdPa241Um9CcUE5UzBJTlRpZDZWdWJZ?=
 =?utf-8?B?N1hNVklBbThYL2diMktxMDVlNUI2US9sSmpPUmJEeS9iYjFWV1RCQU5acGxO?=
 =?utf-8?B?SDVNVko4ZUlrVENldzllZjFNNVpteWlWRGViRVVTaURaZkRRcGVud2Y2bVp1?=
 =?utf-8?B?MUZhYlNTN3pzQkQrWHF3Ni93SkMzdGdRR0FOSndCNmp4bTBEWC9wQ1N3KzJF?=
 =?utf-8?B?SUZya2Ntb21VV2VFZk1OT0IrR2E0Y2N5Z09GaGprcDYvZGpjcWF1N3BvUHMx?=
 =?utf-8?B?WVgyaU9JWHNwemN5RVBWRTk5a0tFcmxXUEtjbTdzTlg3RkZ1SUpMc0Q5bW5S?=
 =?utf-8?B?aFNtcjRCcmh0K01TVHFiZENqVWR3UVNJdytyZ1FqYWM5NTNuR3pSd2NSbnB6?=
 =?utf-8?B?VW9zVDRTcnpuZ2ZuUWZoZ0d5a0lBTmhsL25Nd24waVR0YWJVSDVPUmE3dXNa?=
 =?utf-8?B?SW9KZ0lRTGNpRk1meVBydU9YcGFadUNBcUE5KzRiUno2M0dZNXdWVHBhVzFD?=
 =?utf-8?B?TStId3h3VHVxNnRuM1hUZ1BQenJoVTU5eDI0clRwS1k5QmF4RzRsY1I2R012?=
 =?utf-8?B?dW5uOFlBSXd5QW55WU1yaCtNd0FCMVNEVjU2bU5vdUxNL0EzUkNXMGZXbzZn?=
 =?utf-8?B?eHdEcU01bXZneDNMQ09VbE45ZmtGakI0V21TL2tKQW9jd2ltS1luZGVibWdI?=
 =?utf-8?B?eCtmUTJMbEJGd0prQWhYZVBCVUQzYlBEREJtT1hOYVgwbGJvUkNsMUZIb2Zi?=
 =?utf-8?B?L1U0S3pzYldnekJDbnY0UnEwRmJEVkFpdFVMekNlbFpGVDBhaHVxSTVIL2Vv?=
 =?utf-8?B?RXlJUEVBUGNmODVHMlY4aEpCYmxWMFUzS1NNcWJJUjB1RVJOdDlGaWoyOG8v?=
 =?utf-8?B?cW1ST3dkWkYwL0dyM1d0ZWcwSGFTRGlRL1hCZXRrWGV4RFF1OGtOdXJSYXdm?=
 =?utf-8?B?WnVpV0JlT01OWHkxbmEvN3lSMjY3bWxyNzZlZXU4bStQZ2EwWDBqSjcxVElX?=
 =?utf-8?B?SWRpK0cxeVhOMEV0VHpTQk92SUU0cWM1SnIxNFFwNFBqZUhzWGUzbmJuMGxs?=
 =?utf-8?B?YVovSXN4S0NBWVNhSmV5WDJsL2NRdElxU25FYnBNc2dwTEhNd2haQTFrWHQr?=
 =?utf-8?B?NlVIZ0VMaHhuaTZBY3FxRDdVWlh2VmR4MlJIdlN2R0FTSEFiM1UzakdQS0pm?=
 =?utf-8?B?bFlFYnBBdFhyWlEvOFNKUEozOFFSNXpPSHFCSWNVb0V5U1VwamVQSWl4MXdi?=
 =?utf-8?B?UTNtRmdGK05BUkdTRFRva3hKT2lUUkdBNnRoYTBhM2hWd2c0UFM1NDlvNSsv?=
 =?utf-8?B?N29QWGJnNDJaK1lPVllZVkRHNWRVWWxWVW1Pc0tHT2Z5T1lHdW1nL1hnRlB2?=
 =?utf-8?B?aTNMdUtYdHJzbkMxT3BjYkxPL1B1VHB4bWVqZ0hLQUFsV3RyZ2ozUzJJbE1S?=
 =?utf-8?B?cUZJRzBxUEQvODRMd2VPczJqMnE4RXlCZHNBZUIrdzNkQ0pxRjdvLzhoVnBQ?=
 =?utf-8?B?S0szOUl4SG5lRzZsU0RnaFJYNTNMRXpIUHEwT0g1NWdWUmZnQ3BXSnR3WjRw?=
 =?utf-8?B?RkhKREtUUythZ0tQVWh5VWJBNElUVmh2OE5qdUJGRDkzZ1hUa2ZCWWVpWmZa?=
 =?utf-8?B?UzlUYm1MNElBQWdHc3BlOFZsWlN0dlNYVEcybjVvaFpWd2pNN2tDL29ZbWlY?=
 =?utf-8?B?TmpNdDVJS09ZT2k5b0N3UWpnMGdvNmxJZkRNZzNCUFl4QzJLYkZybHNibFpv?=
 =?utf-8?B?MzZOTFkvMkxWa05TL0pTRXZsaGo1Y0RoYUcyT3h1U3VEQU5RSDJMcXhTRzQ0?=
 =?utf-8?B?alZjblduT1hrQVBQRWhOTkxHVzBNRWxIS2hCOWc3QW44MW1VZmNpNGNTZEpG?=
 =?utf-8?Q?zazx4fxzFhsDbV4A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 da96e68e-0af9-4a3d-51e1-08da1b072cbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2022 15:31:25.4825
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 jyMdT33FyR+6jKtKsmv4BfedVTMwMAmxqoILu4F+j8dX0GkNgTq798azOJmC/hDgoRdSl5G2WgdhsJlQVfbgB4yoArPKjIYvkOFdyGH5x9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR02MB5965
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56708

Q2FsbGluZyBhdXRvcmVjb25mIG91dHNpZGUgZ2l0IHJlcG8gY2F1c2VzIHRoZSB2ZXJzaW9uIG51
bWJlciB0bw0KYmUgbnVsbC4gVGhpcyBwYXRjaCBtYWtlcyB0aGUgdmVyc2lvbiBudW1iZXIgZml4
ZWQuDQoNClNpbmNlIFlvY3RvIG5vdyB1c2VzIE9wZW5TU0wgMy4wLCB0aGUgZmlsZSBwYWNrYWdp
bmcgbmVlZCB0bw0KYmUgdXBkYXRlZC4NCg0KU2lnbmVkLW9mZi1ieTogUGV0ciBHb3R0aGFyZCA8
cGV0ci5nb3R0aGFyZEBhZHZhbnRlY2guY3o+DQotLS0NCiAuLi4vdHBtMi10c3MtZW5naW5lL3Rw
bTItdHNzLWVuZ2luZV8xLjEuMC5iYiAgfCAxOSArKysrKysrKysrKysrLS0tLS0tDQogMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQg
YS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MtZW5naW5lL3RwbTItdHNzLWVuZ2luZV8x
LjEuMC5iYiBiL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy1lbmdpbmUvdHBtMi10c3Mt
ZW5naW5lXzEuMS4wLmJiDQppbmRleCA0ZDFmNDI1Li5lZmU2MmE4IDEwMDY0NA0KLS0tIGEvbWV0
YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzLWVuZ2luZS90cG0yLXRzcy1lbmdpbmVfMS4xLjAu
YmINCisrKyBiL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy1lbmdpbmUvdHBtMi10c3Mt
ZW5naW5lXzEuMS4wLmJiDQpAQCAtOCwxNiArOCwyMyBAQCBTRUNUSU9OID0gInNlY3VyaXR5L3Rw
bSINCiANCiBERVBFTkRTID0gImF1dG9jb25mLWFyY2hpdmUtbmF0aXZlIGJhc2gtY29tcGxldGlv
biBsaWJ0c3MyIGxpYmdjcnlwdCBvcGVuc3NsIg0KIA0KLVNSQ1JFViA9ICI2ZjM4N2E0ZWZlMjA0
OWYxYjQ4MzNlOGY2MjFjNzcyMzFiYzFlZWY0Ig0KLVNSQ19VUkkgPSAiZ2l0Oi8vZ2l0aHViLmNv
bS90cG0yLXNvZnR3YXJlL3RwbTItdHNzLWVuZ2luZS5naXQ7YnJhbmNoPXYxLjEueDtwcm90b2Nv
bD1odHRwcyINCitTUkNfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS90cG0yLXNvZnR3YXJlLyR7
QlBOfS9yZWxlYXNlcy9kb3dubG9hZC92JHtQVn0vJHtCUE59LSR7UFZ9LnRhci5neiINCisNCitT
UkNfVVJJW3NoYTI1NnN1bV0gPSAiZWEyOTQxNjk1YWMyMjFkMjNhN2YzZTEzMjExNDBlNzViMTQ5
NWFlNmFkZTg3NmYyZjRjMmVkODA3YzY1ZTJhNSINCiANCiBpbmhlcml0IGF1dG90b29scy1icm9r
ZW5zZXAgcGtnY29uZmlnIHN5c3RlbWQNCiANCi1TID0gIiR7V09SS0RJUn0vZ2l0Ig0KKyMgSXQg
dXNlcyB0aGUgQVBJIGRlcHJlY2F0ZWQgc2luY2UgdGhlIE9wZW5TU0wgMy4wDQorQ0ZMQUdTOmFw
cGVuZCA9ICcgLVduby1kZXByZWNhdGVkLWRlY2xhcmF0aW9ucyAtV25vLXVudXNlZC1wYXJhbWV0
ZXInDQorDQorZG9fY29uZmlndXJlOnByZXBlbmQoKSB7DQorICAgICMgZG8gbm90IGV4dHJhY3Qg
dGhlIHZlcnNpb24gbnVtYmVyIGZyb20gZ2l0DQorICAgIHNlZCAtaSAtZSAncy9tNF9lc3lzY21k
X3MoXFtnaXQgZGVzY3JpYmUgLS10YWdzIC0tYWx3YXlzIC0tZGlydHlcXSkvJHtQVn0vJyAke1N9
L2NvbmZpZ3VyZS5hYw0KK30NCiANCiBQQUNLQUdFUyArPSAiJHtQTn0tZW5naW5lcyAke1BOfS1l
bmdpbmVzLXN0YXRpY2RldiAke1BOfS1iYXNoLWNvbXBsZXRpb24iDQogDQotRklMRVM6JHtQTn0t
ZGV2ID0gIiR7bGliZGlyfS9lbmdpbmVzLTEuMS90cG0ydHNzLnNvICR7aW5jbHVkZWRpcn0vKiIN
Ci1GSUxFUzoke1BOfS1lbmdpbmVzID0gIiR7bGliZGlyfS9lbmdpbmVzLTEuMS9saWIqLnNvKiIN
Ci1GSUxFUzoke1BOfS1lbmdpbmVzLXN0YXRpY2RldiA9ICIke2xpYmRpcn0vZW5naW5lcy0xLjEv
bGlidHBtMnRzcy5hIg0KK0ZJTEVTOiR7UE59LWRldiA9ICIke2xpYmRpcn0vZW5naW5lcy0zL3Rw
bTJ0c3Muc28gJHtpbmNsdWRlZGlyfS8qIg0KK0ZJTEVTOiR7UE59LWVuZ2luZXMgPSAiJHtsaWJk
aXJ9L2VuZ2luZXMtMy9saWIqLnNvKiINCitGSUxFUzoke1BOfS1lbmdpbmVzLXN0YXRpY2RldiA9
ICIke2xpYmRpcn0vZW5naW5lcy0zL2xpYnRwbTJ0c3MuYSINCiBGSUxFUzoke1BOfS1iYXNoLWNv
bXBsZXRpb24gKz0gIiR7ZGF0YWRpcn0vYmFzaC1jb21wbGV0aW9uL2NvbXBsZXRpb25zIg0KLS0g
DQoyLjI1LjENCg0K

