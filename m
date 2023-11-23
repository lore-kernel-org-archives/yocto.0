Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A963C61D85
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 19:08:00 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.51])
 by mx.groups.io with SMTP id smtpd.web10.102102.1700766475243438834
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 11:07:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=cWPkZbOk;
 spf=pass (domain: kymati.com, ip: 40.107.21.51, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdwzUJWKLvzbqHobirCCqI76mIugl6UPA996PGUNmP1X94NsKM93vhSPDv8bHN5IBONOv+btW0E399m8ISXaHBGEuha9pvpy3WXSfFtyXUr8ydcwK88119rykuoID6OwnuuyVL/c1NY7IqZGNG+S9YlDN1duEFcIcPBeRynHBxHkJXtX99trFOenOvkU/BKryzT7KxdYFqlP/HDWSyiMUDFtcfDK/DOKSoKXplEpYWTJZbRXqgcRJM62kTzwL6nlqSqHRMVKFD9AZFA07/fZfAQjnlECcjstWHn1P/sGw6BXA46DcbXtPq3T6pcP2c54ULGaM+aknGWTvU1rZ80v3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C56fLA7220cVbR2zqpiwtjNJIAlCg9y3CjRUnF5Z370=;
 b=cz3JJovUb8l4ra2jbvdMD3dNJ1GtV/qwbM7+omEIS2gskEQzaMj+Ep4FV2VBkyOJIRE2cWh8OHdNAHXrVe7ADgCgAyQgQroJvyLwww+q23WM4unw9zqs3OhcQUuE8By4mSxFntvrZJmxs7x3aNMYFROQZsmq3g279WbbZt/voPqX5vdBpwBhZ6BQA6SicDeE8SVypeq6LSbcE8mn/RJ+gIDMW/xiGrsnu69I3VuEyfI1+ocXRNkc9izSD6sXmY37u/IpjK5JaN0pl3U8v6bAfDbvw1l9ObWJBjq7Q2YQZlyejl593hEeEolsgVpYgNKpu4C4RI7IMVnrCZBzl8mK8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C56fLA7220cVbR2zqpiwtjNJIAlCg9y3CjRUnF5Z370=;
 b=cWPkZbOk5bjlCKBVVb+jLSkrfV32NNmQj5CcV2PksFCxOEiDdgfd12Fvc3TQrEuwCARVG/uCI7aMUsQwJVlx+fslPUf8M3TyIGokaKIosSZQtT2S1IDNI3ZWPzhhmj8xdBE8eY4bcZpKkciOUGL+mhe9hEvDyv57ShOM58SBzPQ=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AM7PR03MB6387.eurprd03.prod.outlook.com (2603:10a6:20b:1bf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Thu, 23 Nov
 2023 19:07:51 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3%7]) with mapi id 15.20.7025.021; Thu, 23 Nov 2023
 19:07:51 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Khem Raj <raj.khem@gmail.com>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, "ross.burton@arm.com"
	<ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Index: AQHaHh+QHpws51ms406OtJOEGAq8h7CIHHOAgAAnpwg=
Date: Thu, 23 Nov 2023 19:07:51 +0000
Message-ID: 
 <AM9PR03MB7012B5C22E2AB3AEDD16659A92B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
 <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
 <CANNYZj8HkDHb9i2=rc4V7MxoxqFV_dyNBcEyausW+=8f35_ByQ@mail.gmail.com>
 <D16D6B59-7E34-49BC-8385-D7216058B9A4@arm.com>
 <AM9PR03MB7012EFD751803A645DBDFC6992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <CAMKF1so23Z70avrYbyT9iQ4obvVFyOyvo1AiBzWJc3H5ptN4gQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1so23Z70avrYbyT9iQ4obvVFyOyvo1AiBzWJc3H5ptN4gQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AM7PR03MB6387:EE_
x-ms-office365-filtering-correlation-id: 8a05012e-9bea-4339-5870-08dbec577db9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LGggfLn7KZlbJdAam83jufbe93WMzjtP7UK+gm+m/bJCWgBEhwfMCSk0tZWrNYZVlgZZNcAg6Lbkn/Fw/9YlpROApaFsGBosljKoqR2R92tNPX7x7OnpTtnnjsfPgyQzjLj4YQyrtw6mlle4+CusQdInTFD+ZqMj79jU3Yn6sQDpZ9UBk0ikg4pcTlWsBLIxU+w4EuT9Xg8RqzwwLoTCJqhqp5UC8er7UqBNFj5rT8sOEOJhj6ocGjPPhiP6LM/uVlcpza+NpfyFiHPieuAWRCwuHM75Y5aBjUAi3wWwciJhqIdOOyaUyFsC3mWrHXjx7BF8q6tsqQxhAoLIPkUn8bQbg14JAtmmaFYeuKEeuqS0253sGDhWo89+BXdjXb1+6X4oNEKvrINiFeojNKdwbGyrdrj9HSlv3dAMrwvGX0piodoEsrjh8cKwOYrSxLOSzKnq3H6ytkfqoBtZzz2gg6/YFCRsrypAAWgMWinAetmJfhQjjY1u8Pa5WvCWr0gxzgf+NY8ZGiDx1La+10FQwgbASOqZhV3HzDT8zTkOFiTUHdC2Rsl1Kz0dLJ/oGDiD/1MyAWyOUouO81J0ISnm9FCIcOwQMkjKqWQJBGaYPTohZ6EPscN3MsXQRupuRNFo6Llfq3ey1oPIMTwAvA50uD+t9F3QUzRfNXHuEfwIEBM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39830400003)(396003)(376002)(366004)(346002)(230173577357003)(230273577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(53546011)(33656002)(9686003)(7696005)(6506007)(41300700001)(86362001)(71200400001)(38070700009)(6916009)(316002)(4326008)(122000001)(8676002)(8936002)(54906003)(38100700002)(91956017)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(52536014)(2906002)(478600001)(44832011)(5660300002)(19627405001)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?YTNJYUhucjdMaGVMak1aVGhycnU0ZjdqL2FTU0RpMnFuNjhzUFByWVJuM25z?=
 =?utf-8?B?RDlLT0lIRGYzWlc5THNyWDBkOUxhRXNOYWpxVjRoSHhjRE5vN1d3K01iR2xw?=
 =?utf-8?B?UnlEb1F6NWxoQnUvcTNnRjR1cnJoVmhLYUhxMkxqL0dlbkYxell1aENBTWRs?=
 =?utf-8?B?bDVUM09mWHlUeGpnTkdlekVYaFFqUkp6YW5mQlVFSjJ1VUl5RitDa3Nlc1hK?=
 =?utf-8?B?cURJTmtNQnRjVGlCZHNUKzJ6Rkd2TTNKY1p4ZWR6bTFvNE04a3lzL24zVEpy?=
 =?utf-8?B?ejZESzBCQUFEUk1COWZ3RTBJYTYvSlNxNnpWck50UjVMQVhBQ1QzeW1NTWti?=
 =?utf-8?B?Rm5VTWVybkdCVVV5U2ZjNEx0eGphbTIyU1JFM0g0VUthanozSjZ0UDE5MWJm?=
 =?utf-8?B?YlYrN2VPTVUzR0Nid0E0UmpVOE9zTlpDQzNzTWltTEh6RmFCNVJwQm14Y1E2?=
 =?utf-8?B?QzlpVEZsY1pBOStOY25FQ1Byekh4clcyRmI1d3pMREVrNDAyT3lJSXBhQjVW?=
 =?utf-8?B?MVh6YXJpNksweEg1aEg4ekVTRDhDZlFML1c2RHQ0ZUVRMEJrOFZXR1dEczh0?=
 =?utf-8?B?OHVKbjhaQWhPWWkrcC9xTGxSbGJrU3h2cFU0aEZldEEySW9wRnV3cEwxYjZ6?=
 =?utf-8?B?MFZ6K2ljUjNiYmZiU1U4UGZ6M0tTNFRkdHl6VFZTd3dxY0RPUldSUjAyZk1s?=
 =?utf-8?B?M2ZQcXk5L3Z3NkptbUgxcXAvKzNwaTB6SEhsZmVmTmZrYWJEeVVTaW1YNmVM?=
 =?utf-8?B?d2gxTzZnZlNtL29lbTUwdjJ4Y0RkTmlzejBUTVVRK1VSenhuRFhUQlViM0tH?=
 =?utf-8?B?UTI5UU9ScktRWHJ2N0ZZQm44MEdvZ0pkQW9WTkpZOGtWSW5ucEVZNG0xSFZL?=
 =?utf-8?B?Qk1YY1ZSNHNzTTBxNnMzaW0ydTJaUlpCWlNlZmpCMnZnV2tQRlNIZW5XZVU4?=
 =?utf-8?B?VXFhWVFCSnRWcFQyTS9ranU2N1hsckN1Q29Dak1odHc5d1dqZ3NibTR1OXBC?=
 =?utf-8?B?dG9VOWN3bStQV1l6dEhJdHNpZTR4MVhSdXdIenI0S0R5aWtQV09oK0tZVmlZ?=
 =?utf-8?B?RXZJWU56UFJHcEhCMkZZUTcxKzEzd2hteU5PZ1EyMFBteXQ5bWZtM2JEUnpa?=
 =?utf-8?B?VldPazRrUGtZQ0pDTFcydEhLelF1TFhRZjVsRFNuVTZnU1NtS2VpcG5uZUsw?=
 =?utf-8?B?Nmx5akdJd1lqRVRtWTZ5ODJBSEtqREtpeCs0ZzBtb2tvR3p6T1l5S3FkU0FK?=
 =?utf-8?B?d0ZmRVBpMWZHVS9uZHorbkxvM2dNL2ZZdCtML3VSTUF2SkcyM3hwNWVmWUZa?=
 =?utf-8?B?ejVnRTZ4M2dBUUJNNzZ3MzVhaGN6SHR4eEtLeStNR0grM1lGVTg5UkVCRGth?=
 =?utf-8?B?WDgvMFNsMkZWN21YaVAzb2U2SVdLUDNSRUx5K3JWQjBMSU1oaDVHd3FXZ1Jl?=
 =?utf-8?B?dHgrY2JIR01vaml5THpodERqb1hNa2xmQW1laW5SQytBNDhqeVg2WVpsQlhV?=
 =?utf-8?B?Z1cvbGJYenRsU1FWM2RIQ2JOOUVnc1g5QTFoZis2SWU4STcxbitadWlyNWUr?=
 =?utf-8?B?b1l6eWRQVWM5UmNkL3JpZVdFbTA2MFF1Sytydm5OWmRJeXhsZGdKTVlUU0pC?=
 =?utf-8?B?bWJEemVhdUQreUxhKzFjQkJOQ1d5RGt4dCtTWjh1RUFISDZlcG1FRUtUbjNQ?=
 =?utf-8?B?Yk1wOW5wSk90aW5GWHJDanErZmlTS2pJdW45aGFIVFc4K0Y3M1duZnE4SjZs?=
 =?utf-8?B?Sk5mNUIxYlFVdXZjc21OOE14cUJoYVlYaTJIbjBWYXR0Wm1kN1BGR3dGOFFT?=
 =?utf-8?B?RUYyNVZEUVdxVG9MdFl6Q1B1czFhd1dKbEM2SG9vdWlxb1RFcUt3T2ttK2g4?=
 =?utf-8?B?RTFGaWFUR2RUeTgvdHdSR1ZrMnpuSkRiQTdPVVhrZXNVTS81STR5VG9qTnBs?=
 =?utf-8?B?dUIzUEg4dEVoQkU2RE11bHdYM1VqQ3hLSk9WS28wTlFSMnBUa0JNTWJpWUs4?=
 =?utf-8?B?K2dET05JK3VUVUNxNnk5K1lnSWkzMHlqM3V3YUhrK1FBQ3hTY1FVV251UThw?=
 =?utf-8?B?L1NSQTFYRmtwc3BuQ0tnYzhraVdSUGVjUUFXQm9iejVIMmwzVWFJd0tMSjZm?=
 =?utf-8?B?WWkrejRlN3VLZGVxQVhHMTBUZ1NNWFAybVAyRXFSdEUwUEJhcWkvRFpWWWlM?=
 =?utf-8?Q?Hw6YnxT9EjIvdCjEsne+eNlgBcuCfPSHWNv7TklHHZSs?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012B5C22E2AB3AEDD16659A92B9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a05012e-9bea-4339-5870-08dbec577db9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 19:07:51.8243
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SrRI+TIePUWTCxupVRz5+NWhCStHnNBQGpphUMlIaFJSGZh6f/G/r3dBt/DqctHiTrJ8iAvY+wqePBqkK+nmyCCAS88WlmX7srJfT7nohnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR03MB6387
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 19:08:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61749

--_000_AM9PR03MB7012B5C22E2AB3AEDD16659A92B9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnV0IHRvIGJlIGZhaXIuLi4gJ0ZpbGVzJyBoYXMgZGVjaWRlZCB0byBzdG9wIHdvcmtpbmcgcHJv
cGVybHkgYXMgd2VsbCBvbiB0aGlzIG1hY2hpbmUsIEkgbWVhbiwgZG8gYW4gbGwgb24gYSBkaXJl
Y3RvcnkgYW5kIGZpbmQgNSBzdWIgZGlyZWN0b3JpZXMgd2hpbGUgJ0ZpbGVzJyBjbGFpbXMgMiwg
dGhlbiBpZiB5b3UgY2xvc2UgQUxMIHRoZSAnRmlsZXMnIHdpbmRvd3MgaXQgZmluYWxseSBsZWFy
bnMgdG8gbG9vayBhdCB0aGUgZGlzay4gSnVzdCBzYWlkIHRvIGEgY29sbGVhZ3VlIEkgdGhpbmsg
SSB3aWxsIGdpdmUgdXAgYW5kIGJlY29tZSBhIG1vbmsNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KU2VudDogMjMg
Tm92ZW1iZXIgMjAyMyAxNzo0NA0KVG86IERhdmUgSGl0Y2htYW4gPGRhdmUuaGl0Y2htYW5Aa3lt
YXRpLmNvbT4NCkNjOiBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT47
IHJvc3MuYnVydG9uQGFybS5jb20gPHJvc3MuYnVydG9uQGFybS5jb20+OyB5b2N0b0BsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KU3ViamVjdDog
UmU6IFt5b2N0b10gW3lvY3RvLWF1dG9idWlsZGVyLWhlbHBlcl1bUEFUQ0hdIGhvdyBjYW4gYSBt
aXNzaW5nIGZpbGUgYmUgYSBXQVJOSU5HIGFuZCB0aGUgYnVpbGQgJ3N1Y2NlZWQnPw0KDQptYXli
ZSB5b3VyIGJiYXBwZW5kIGlzIG5vdCBtYXRjaGluZyBpbiBuYW1lIHRvIHJlY2lwZSBvciBtYXli
ZQ0Kc29tZXRoaW5nIGVsc2UsIHR5cG9zIGV0Yy4gU2hvd2luZyBleGFjdCBjb2RlIGNhbiBoZWxw
IGEgYml0IG1vcmUgaW4NCnVuZGVyc3RhbmRpbmcgd2hhdCBtaWdodCBiZSBnb2luZyBvbi4NCg0K
T24gVGh1LCBOb3YgMjMsIDIwMjMgYXQgNzoxM+KAr0FNIERhdmUgSGl0Y2htYW4gPGRhdmUuaGl0
Y2htYW5Aa3ltYXRpLmNvbT4gd3JvdGU6DQo+DQo+IEkgYW0gdHJ5aW5nIHRvIGFwcGVuZCB0byBs
aW51eC1pbXguDQo+IElmIEkgZGVsaWJlcmF0ZWx5IHB1dCBhIHdyb25nIGZpbGVuYW1lIGluIHRo
ZSBzcmNfdXJpIGFwcGVuZCBpdCB3YXJucyBtZSBhbmQgY2FycmllcyBvbiB3aXRoIG5vIGVmZmVj
dCBvciB3b3JyeS4NCj4gQW55dGhpbmcgSSBwdXQgaW4gdGhlIGRvX2NvbmZpZ3VyZTphcHBlbmQo
KSBvciBwcmVwZW5kKCkgaXMganVzdCB0b3RhbGx5IGFuZCB1dHRlcmx5IGlnbm9yZWQuDQo+DQo+
DQo=

--_000_AM9PR03MB7012B5C22E2AB3AEDD16659A92B9AAM9PR03MB7012eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpCdXQgdG8gYmUgZmFpci4uLiAnRmlsZXMnIGhh
cyBkZWNpZGVkIHRvIHN0b3Agd29ya2luZyBwcm9wZXJseSBhcyB3ZWxsIG9uIHRoaXMgbWFjaGlu
ZSwgSSBtZWFuLCBkbyBhbiBsbCBvbiBhIGRpcmVjdG9yeSBhbmQgZmluZCA1IHN1YiBkaXJlY3Rv
cmllcyB3aGlsZSAnRmlsZXMnIGNsYWltcyAyLCB0aGVuIGlmIHlvdSBjbG9zZSBBTEwgdGhlICdG
aWxlcycgd2luZG93cyBpdCBmaW5hbGx5IGxlYXJucyB0byBsb29rIGF0IHRoZSBkaXNrLiBKdXN0
DQogc2FpZCB0byBhIGNvbGxlYWd1ZSBJIHRoaW5rIEkgd2lsbCBnaXZlIHVwIGFuZCBiZWNvbWUg
YSBtb25rPC9kaXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxlPSJk
aXNwbGF5OmlubGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlkPSJk
aXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIg
c3R5bGU9ImZvbnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IEtoZW0g
UmFqICZsdDtyYWoua2hlbUBnbWFpbC5jb20mZ3Q7PGJyPg0KPGI+U2VudDo8L2I+IDIzIE5vdmVt
YmVyIDIwMjMgMTc6NDQ8YnI+DQo8Yj5Ubzo8L2I+IERhdmUgSGl0Y2htYW4gJmx0O2RhdmUuaGl0
Y2htYW5Aa3ltYXRpLmNvbSZndDs8YnI+DQo8Yj5DYzo8L2I+IEFsZXhhbmRlciBLYW5hdmluICZs
dDthbGV4LmthbmF2aW5AZ21haWwuY29tJmd0Ozsgcm9zcy5idXJ0b25AYXJtLmNvbSAmbHQ7cm9z
cy5idXJ0b25AYXJtLmNvbSZndDs7IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgJmx0O3lv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcmZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBb
eW9jdG9dIFt5b2N0by1hdXRvYnVpbGRlci1oZWxwZXJdW1BBVENIXSBob3cgY2FuIGEgbWlzc2lu
ZyBmaWxlIGJlIGEgV0FSTklORyBhbmQgdGhlIGJ1aWxkICdzdWNjZWVkJz88L2ZvbnQ+DQo8ZGl2
PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJCb2R5RnJhZ21lbnQiPjxmb250IHNp
emU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPg0KPGRpdiBjbGFzcz0iUGxhaW5U
ZXh0Ij5tYXliZSB5b3VyIGJiYXBwZW5kIGlzIG5vdCBtYXRjaGluZyBpbiBuYW1lIHRvIHJlY2lw
ZSBvciBtYXliZTxicj4NCnNvbWV0aGluZyBlbHNlLCB0eXBvcyBldGMuIFNob3dpbmcgZXhhY3Qg
Y29kZSBjYW4gaGVscCBhIGJpdCBtb3JlIGluPGJyPg0KdW5kZXJzdGFuZGluZyB3aGF0IG1pZ2h0
IGJlIGdvaW5nIG9uLjxicj4NCjxicj4NCk9uIFRodSwgTm92IDIzLCAyMDIzIGF0IDc6MTPigK9B
TSBEYXZlIEhpdGNobWFuICZsdDtkYXZlLmhpdGNobWFuQGt5bWF0aS5jb20mZ3Q7IHdyb3RlOjxi
cj4NCiZndDs8YnI+DQomZ3Q7IEkgYW0gdHJ5aW5nIHRvIGFwcGVuZCB0byBsaW51eC1pbXguPGJy
Pg0KJmd0OyBJZiBJIGRlbGliZXJhdGVseSBwdXQgYSB3cm9uZyBmaWxlbmFtZSBpbiB0aGUgc3Jj
X3VyaSBhcHBlbmQgaXQgd2FybnMgbWUgYW5kIGNhcnJpZXMgb24gd2l0aCBubyBlZmZlY3Qgb3Ig
d29ycnkuPGJyPg0KJmd0OyBBbnl0aGluZyBJIHB1dCBpbiB0aGUgZG9fY29uZmlndXJlOmFwcGVu
ZCgpIG9yIHByZXBlbmQoKSBpcyBqdXN0IHRvdGFsbHkgYW5kIHV0dGVybHkgaWdub3JlZC48YnI+
DQomZ3Q7PGJyPg0KJmd0Ozxicj4NCjwvZGl2Pg0KPC9zcGFuPjwvZm9udD48L2Rpdj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_AM9PR03MB7012B5C22E2AB3AEDD16659A92B9AAM9PR03MB7012eurp_--

