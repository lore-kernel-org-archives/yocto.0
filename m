Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DC7CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 15:18:19 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.51])
 by mx.groups.io with SMTP id smtpd.web11.219332.1697555896246631874
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 08:18:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=eb9dQUqt;
 spf=pass (domain: kymati.com, ip: 40.107.241.51, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWEoWX94Xn/pFYuP22HebsK1q9iFnnwwYhJKb7Xw+EcGEWmbQNakpjWtON3JSNzqKNn+oRmmBedNYm0CJE7HqUZwIDjq4/cItYNWfU25jFcgAi875FKyOh+CX/m+KbMSQrQ4TCPmIJ8OcnPk3MPqff+IoKgd+8wyCyyDCObOeQknDjw5FTdXHYxce9HWLcrIAwLlaozRS214yve8fF0NEJGLqbG+4Rqw3e0oPd0RdkRBMoa3LqbvMzaVF7M797OV4UuQuCbZAMaHjnm1eV9nrQkYOOSp9ohargMUXh63+Kfyl/Ya6AL4CWw+2wM70IjrvPDDxbK/XVkoqPAzi+8DUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pdk2sEzLbHnAxewW/siVdbtr6TEechRFALlGNOZ4CM4=;
 b=mbVn+cCAMIcS160fZWnSjjQWx2XX9jUd1mZIJsnT4XcUEC7RPz2MFXdBgUFaalXhS7rAebQm9ZZXizJsViZpg4lC1sIyPFHS4b8yMP2GynrrNK3WVGF6HTQZrADFmRCu3jOXmaWCHtlcHu7dQLyPwASJA9BY7Jrg6mTZ7cMQvFpqgTAwg3pqRdbtbBVpPv5fgSjglazZHYbJ6mZTK210xSUVB3vTvpk53hRH05rWTesQM07IhhHceNW1zlWjJ0gtKbk5ay4j1XGUYFFnPUXXk/vBK0tnRSki2WBWoX1rxTk71kL/JlfNvprzJESlLqZ6RCMOV9pKkoNpVuCIsDlC4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pdk2sEzLbHnAxewW/siVdbtr6TEechRFALlGNOZ4CM4=;
 b=eb9dQUqtXhBizSzckjogV82v8chfhsnlGEFSbaFxi5oAzkuuuP3Tbz/mGJzK6gVrQENKckFcTdmoE57eMvyVjMJKbHVRlC7eso1ld6h36fXxMVbM7pTLf4dm3zr+grwwwyghioyobHd6V4s/sRPTIWEPjKQfOUfi2Ir/irvDu7w=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AS8PR03MB9120.eurprd03.prod.outlook.com (2603:10a6:20b:5b2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 15:18:13 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 15:18:12 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: Mikko Rapeli <mikko.rapeli@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: 
 AQHaAEU1GVmCsck7rEeYingXKJhbi7BNevsAgAA5peaAAAoJAIAAA9orgAAEhICAAAch+YAAEoCAgAAAttKAABregIAAHWjr
Date: Tue, 17 Oct 2023 15:18:12 +0000
Message-ID: 
 <AM9PR03MB70123A4B45B2F59AFDDD71F092D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS510fE2Q3WeU0UT@nuoska>
 <AM9PR03MB701278137F02C02E6532EFE192D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <4F96B81A-729A-4BBB-BE24-9D74CBE7EF94@arm.com>
In-Reply-To: <4F96B81A-729A-4BBB-BE24-9D74CBE7EF94@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AS8PR03MB9120:EE_
x-ms-office365-filtering-correlation-id: 21d39690-3a15-4447-aa8b-08dbcf244790
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Dz5lcTgHuMgCKH40TvUuu2EDJVraegAk7GdQsXyxYb1+fXMnGWN00jLLgAhvqgTI8lIs8LcKIeeCN1VG+ksblSWnHR8pHB/udUBQZjy0Gc3rteJVyKhapo0taq6gBuSQp5DO+i3xq7KDsLSGj1zUp0XoBjifjFDKKCJNjr7VH98VypqTohcwTyXF4iyAWwNt5Nf9XyhG4KfOV+tq7ysSEq0zkHXT6dwuTaRjtb2QLniwlyewZL2YOC2bvdTAIgIWvbRBid2IzsASNbc3jp3NFqJD0ymhONuwfpGhEGp2JSWpBP+Vfyx/6gPgIfRrknBBr18bwidRx98iLZ4TDlJpiCrTI5QdVkkLVJG6/8ppQSG9jyp7QTDZC208J87YlNNT2bYj29eNF6plOsSZhHvOuw1xhIF7+1wpXFUv+GQRu9G5WZtia3qVL+0eAeejKevKXx2+9/KFJYhxQmjTUbR+Te7eR86s7bvLlwPxwD4hFO+KXvRV2GD9BfDWPgkNLmLq90ze4xfLZSmkMcVZscPiV/rXWWYtl52oGAD/WHkmQCCvLCTL/DO3SDVvsOy/cocAIzf9f0pkFmOSq5LnocwwtNdL1TfSYW+JY2ArJIywb8a6uLam/s81W9mWvWBbwpzP
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(366004)(346002)(396003)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(6506007)(7696005)(8936002)(71200400001)(53546011)(83380400001)(41300700001)(44832011)(4326008)(52536014)(5660300002)(8676002)(2906002)(478600001)(76116006)(66946007)(66556008)(91956017)(316002)(6916009)(54906003)(64756008)(66446008)(66476007)(38070700005)(122000001)(38100700002)(86362001)(33656002)(9686003)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cytxOFlWczNVc0oxNFh6R3JIb0UrbWpicmpaL2xTWlBwSUo1U3RkWjlCSUtu?=
 =?utf-8?B?RStkckhLNlBYbWtjTVdLTE56TGt0d29lSmQxTE51WXA2c1lFY1RYODNIWXRo?=
 =?utf-8?B?bWgwYS9XNWpJSnRtc2V4N0ljampWT1RxQng5RmJnNWpVM2NiZW1RdU5rcytp?=
 =?utf-8?B?OW5PREMwVllVcStHbElRWXc0b0htNkhPRUwvcWFOQlFLcXQxZUQvZFdMbHBF?=
 =?utf-8?B?em8wK1Zsc0tEYWZDb1FnOWJIZUZtejBTQmUyN2lVTEhFSWVLWmZNanBoUmdQ?=
 =?utf-8?B?aDNQamNLUU5VRDBRMG5HNGZkckw2bXVXekNyS0Q4UE9JMGY0OUVXZUVsTnZq?=
 =?utf-8?B?eS9IMWxaMGJLc2k4eEtQZnVGV2FGMG01TEZvc3pBQlM5ektuYWVYakJpM29p?=
 =?utf-8?B?UGpWOXlJcU4rbE85K0pRSVFtQjVTVGwvbDhWdVNzcVE3VmZXUWd6SUI0N3pM?=
 =?utf-8?B?ZlhYWmloTms3ZTBpYTBsOVg4R0d5bzl3Ukd3a0JIR1VZTnhIUlo0QkxUbTdF?=
 =?utf-8?B?MmpxYVhacG9CUk9kbDMwME9RaXZRU0FSNmM4SlI4TjJqQStCUEd2SS9jeVV6?=
 =?utf-8?B?RWtWbTBSelY0OWE2QjZEcEF4Z29Kb2VzSlc2MkxxSGowWElzd0FMaEFUTm5k?=
 =?utf-8?B?ekF6VWcwb2Qvc0RQcnNFc0NHQkUrOWZWeHJUQVMybTkzekRKOU1GZmYzR3Fo?=
 =?utf-8?B?dDZIYXZ4Y044MlkvQjN4S1BRZFZxOFlpUG5VZDd4VGNnajBPWHlvL2F3T1dY?=
 =?utf-8?B?MXdsdm9Ob2c0VmFHQ0tvd0E3ekE1UkR6Unl0eU5RT1Z2RFo2Ym1md09CMVAr?=
 =?utf-8?B?WjI5NkZUZ1p5YkN2YWhJSkFjVi8ySG5jMzQ4UGNKZy8xL002MHQ2bktVdk1u?=
 =?utf-8?B?ZFhTZS9VMTJWa0ZFakFaY2xTRmdUMERKdmlTVHFiREhUd3Fvdlo3d3l2L3BW?=
 =?utf-8?B?bG9WL290K1FacUhwSkRzQ0U3QUdmbGl0dHgxZUR4bDhhdytSdFRYQUJKcXlJ?=
 =?utf-8?B?bGM1NG15MlRHdU9nNVhxN0RuYTF4b2VnTHA0cGsxOGZzOXJrZDgzZ2hnTHZs?=
 =?utf-8?B?eVJ6NFRXWFZFUlR2YjY0M3poTjFFc1Q4ejU3cFcweGUwM2RSWmtRY29BM0hq?=
 =?utf-8?B?UVU3aFdIQ09wWE0xS3JRdnNwMFlDUStRR2FWczlMZTdlUHF5eStpM002N2Nj?=
 =?utf-8?B?Y1o3OHZwS01oVGNBeVgrMjNvTVVXRi9BRTFFQnl0Q1RZa0ZqbVY5M09KWitx?=
 =?utf-8?B?SUNNM1Z1bVVwMDMycVNWQ0VlMStlRTd6U2d4VENyWi9uSUxtS2hKUURaVWli?=
 =?utf-8?B?d1RMY0dXMkVnbHhESXZFbWJGUDJ4YlIreDI1ekNsemRsU3NGcC9XU0p0UVJR?=
 =?utf-8?B?UzJKUmk4YlJFTng1VVo0WjM4QytoL0UrZWFjclNSeENpbHdtTXN1b0ZNbzJQ?=
 =?utf-8?B?Yi9scjNRVEk0YXIvd0JIbkJOWjU0OTRObnRHSU5yOVlFd1FuS3ZaUDUyc3c5?=
 =?utf-8?B?bSs2S3BCZEprczdhVWtScFFOSkx5eEFzbXVYM1BsQlZKZU0zWmtVSnlDMXdU?=
 =?utf-8?B?eGxhay90cVo0b0wrQ211eitOL2l3NmZyU2JseXY4aWdtaWJSWkdobzRVWDNq?=
 =?utf-8?B?U2J3NmlRT1lWUTk4SndYOTJxakxkd3U4dko2bVdSQ1J4WGZwZ0NCemt2UnlQ?=
 =?utf-8?B?bmszMEJqOUNqYzJnK0V1NmV5RHFOVm5XMnIyRktFa3l0WWJpM0lOLzVrS2cz?=
 =?utf-8?B?UXFUTjJxbmVZYmZSeS9jWEdSRllFcnVVaXNUYTF6OVV6ZUFVYmpHZjZVZ1I2?=
 =?utf-8?B?Qjd3OGNZeHlTQjBoc1ljS3NzSWJGdlNHSDFNZUxYcmhVMVJMZkRya3B6dmhX?=
 =?utf-8?B?SmNBQ0pWTnp2L3JTVVV0SmVPSTdKZWdmMktMNUx6WWk5Ny85WVg5ay82cm50?=
 =?utf-8?B?T25RaEk1bFJud0xaVnF4OG5mdVNCaUxlRWJpaVdueFhCK3MyS0NDeDNrb3By?=
 =?utf-8?B?cUFaSFdHNGtNTitJcGRmUHRxaTZ5Ny9JcEprNVRlN2gvZndoeFBCUnBpbEs3?=
 =?utf-8?B?dk45dTBZVzhxNnFGdDJPZnB3NWQwZmNrcjczVTZqbGN6ZjhkeWZEOWJPMTZ3?=
 =?utf-8?B?OXVEZjhla0tWWTlTVzFzN2Npbkc4d2R3ajZzVGkyNWdHd2pqKzhxWTZJVWkx?=
 =?utf-8?Q?PKlmNg0uDGxSCg5OLnW/HKh+DgJgH5YJhxYrXWwlIKiT?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB70123A4B45B2F59AFDDD71F092D6AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d39690-3a15-4447-aa8b-08dbcf244790
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 15:18:12.9260
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRJT6lB36jQNPcENwHiZ0ibcFy26unuU1ZhFjIo8sgzNM/KkdsolqUl6nw/que1hVQapqXaZGBn+ygQmB3cFHIw3ebOq7r6RDkWuxJfylnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9120
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 15:18:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61380

--_000_AM9PR03MB70123A4B45B2F59AFDDD71F092D6AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhaCwgaXQgaXMgaW5kZWVkLCBoZW5jZSB0aGUgY2hhbmdpbmcgdGhlIGdpdCBhZGRyZXNzIPCf
mYINCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBSb3NzIEJ1cnRvbiA8
Um9zcy5CdXJ0b25AYXJtLmNvbT4NClNlbnQ6IDE3IE9jdG9iZXIgMjAyMyAxNTozMg0KVG86IERh
dmUgSGl0Y2htYW4gPGRhdmUuaGl0Y2htYW5Aa3ltYXRpLmNvbT4NCkNjOiBNaWtrbyBSYXBlbGkg
PG1pa2tvLnJhcGVsaUBsaW5hcm8ub3JnPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4NClN1YmplY3Q6IFJlOiBbeW9jdG9dIFVzaW5n
IGNtYWtlLi4uIGhvdz8NCg0KT24gMTcgT2N0IDIwMjMsIGF0IDEyOjU4LCBEYXZlIEhpdGNobWFu
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxkYXZlLmhpdGNobWFuPWt5bWF0aS5jb21AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+DQo+DQo+IEkgdW5kZXJzdGFuZCB0aGF0LCBh
bmQgdGhlIGNvbXBpbGVyIHRoZSByZXN0IG9mIHRoZSByZWNpcGUgdXNlcyBkb2VzIGNvcGUgc28g
SSBhbSB0cnlpbmcgdG8gdW5kZXJzdGFuZCB3aHkgdGhpcyBiaXQgb2YgdGhlIHdob2xlIHRoaW5n
IGlzIHVzaW5nIGEgZGlmZmVyZW50IGNvbXBpbGVyLiBNYXliZSBpdCBpcyBzb21ld2hlcmUgaW4g
dGhlIGNtYWtlIG9mIHRoZSBsaWJyYXJ5LCBidXQgaXQgY2VydGFpbmx5IGlzbnQgb2J2aW91cy4g
VGhhdHMgd2hlcmUgSSBhbSBkaWdnaW5nIGZvciB0aGUgbW9tZW50Lg0KDQpJIHByZXN1bWUgdGhp
cyBpcyBhIGNsb3NlZC1zb3VyY2UgbGlicmFyeSBzbyB5b3UgY2Fu4oCZdCBqdXN0IHNoYXJlIGl0
Pw0KDQpUaGUgQ01ha2VMaXN0cy50eHQgYXJlIGRlZmluaXRlbHkgZG9pbmcgVGhlIFdyb25nIFRo
aW5nIGJ5IG5vdCByZXNwZWN0aW5nIHRoZSBlbnZpcm9ubWVudCB0aGUgdG9vbGNoYWluIHNldHMg
dXAuICBVbmZvcnR1bmF0ZWx5IHRoaXMgaXMgbm93IHlvdXIgcHJvYmxlbSB0byBmaWd1cmUgb3V0
IGV4YWN0bHkgd2hlcmUgYW5kIHdoeSBpdCBvdmVycmlkZXMgdGhlIHNldHRpbmdzLg0KDQpSb3Nz
DQo=

--_000_AM9PR03MB70123A4B45B2F59AFDDD71F092D6AAM9PR03MB7012eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQpZZWFoLCBpdCBpcyBpbmRlZWQsIGhlbmNlIHRo
ZSBjaGFuZ2luZyB0aGUgZ2l0IGFkZHJlc3MgPHNwYW4gaWQ9IvCfmYIiPvCfmYI8L3NwYW4+PC9k
aXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxlPSJkaXNwbGF5Omlu
bGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlkPSJkaXZScGx5Rndk
TXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgc3R5bGU9ImZv
bnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IFJvc3MgQnVydG9uICZs
dDtSb3NzLkJ1cnRvbkBhcm0uY29tJmd0Ozxicj4NCjxiPlNlbnQ6PC9iPiAxNyBPY3RvYmVyIDIw
MjMgMTU6MzI8YnI+DQo8Yj5Ubzo8L2I+IERhdmUgSGl0Y2htYW4gJmx0O2RhdmUuaGl0Y2htYW5A
a3ltYXRpLmNvbSZndDs8YnI+DQo8Yj5DYzo8L2I+IE1pa2tvIFJhcGVsaSAmbHQ7bWlra28ucmFw
ZWxpQGxpbmFyby5vcmcmZ3Q7OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnICZsdDt5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW3lv
Y3RvXSBVc2luZyBjbWFrZS4uLiBob3c/PC9mb250Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvZGl2
Pg0KPGRpdiBjbGFzcz0iQm9keUZyYWdtZW50Ij48Zm9udCBzaXplPSIyIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExcHQ7Ij4NCjxkaXYgY2xhc3M9IlBsYWluVGV4dCI+T24gMTcgT2N0IDIwMjMs
IGF0IDEyOjU4LCBEYXZlIEhpdGNobWFuIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnICZsdDtk
YXZlLmhpdGNobWFuPWt5bWF0aS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZndDsgd3JvdGU6
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IDxicj4NCiZndDsgSSB1bmRlcnN0YW5kIHRoYXQsIGFuZCB0
aGUgY29tcGlsZXIgdGhlIHJlc3Qgb2YgdGhlIHJlY2lwZSB1c2VzIGRvZXMgY29wZSBzbyBJIGFt
IHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSB0aGlzIGJpdCBvZiB0aGUgd2hvbGUgdGhpbmcgaXMg
dXNpbmcgYSBkaWZmZXJlbnQgY29tcGlsZXIuIE1heWJlIGl0IGlzIHNvbWV3aGVyZSBpbiB0aGUg
Y21ha2Ugb2YgdGhlIGxpYnJhcnksIGJ1dCBpdCBjZXJ0YWlubHkgaXNudCBvYnZpb3VzLiBUaGF0
cyB3aGVyZQ0KIEkgYW0gZGlnZ2luZyBmb3IgdGhlIG1vbWVudC48YnI+DQo8YnI+DQpJIHByZXN1
bWUgdGhpcyBpcyBhIGNsb3NlZC1zb3VyY2UgbGlicmFyeSBzbyB5b3UgY2Fu4oCZdCBqdXN0IHNo
YXJlIGl0Pzxicj4NCjxicj4NClRoZSBDTWFrZUxpc3RzLnR4dCBhcmUgZGVmaW5pdGVseSBkb2lu
ZyBUaGUgV3JvbmcgVGhpbmcgYnkgbm90IHJlc3BlY3RpbmcgdGhlIGVudmlyb25tZW50IHRoZSB0
b29sY2hhaW4gc2V0cyB1cC4mbmJzcDsgVW5mb3J0dW5hdGVseSB0aGlzIGlzIG5vdyB5b3VyIHBy
b2JsZW0gdG8gZmlndXJlIG91dCBleGFjdGx5IHdoZXJlIGFuZCB3aHkgaXQgb3ZlcnJpZGVzIHRo
ZSBzZXR0aW5ncy48YnI+DQo8YnI+DQpSb3NzPC9kaXY+DQo8L3NwYW4+PC9mb250PjwvZGl2Pg0K
PC9ib2R5Pg0KPC9odG1sPg0K

--_000_AM9PR03MB70123A4B45B2F59AFDDD71F092D6AAM9PR03MB7012eurp_--

