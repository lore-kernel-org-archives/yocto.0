Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2416CC5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 19:06:20 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.59])
 by mx.groups.io with SMTP id smtpd.web10.102077.1700766377025673208
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 11:06:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=m3RHJZ2k;
 spf=pass (domain: kymati.com, ip: 40.107.14.59, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RsBllZACMQ2xzhMP6INdK14ucubePBBbPm1Da2DYAl8JB52wMDtvaJNl31h0QfsutWd3DC6BzwD72ObtYYuS80zrhh+QeeHUzButyoujsp9LUwrBfctFB0udzGYBljNrhxK14lj3Ph1sfNRXDRXFsdqeLghC25df5C+zG2LvXXCPQs4bp+4uio8w7LsPqKITc+EMQl8cWBl0IBE4bGJhHtlS8gmAdgCFE2JEgNjaKxNJGtXpmJzthR5+gV8RQWNX4Nb7vJhY/DvQ8Ps8EWmXwWxvTb/y/EQWJ+e+Cah0RMo3gFtu8kpXfAH+PxdVYaE+rJFvwRCTAG5b+wvLBQfRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVo5UkZRAyzePI5kGjdJ6gOoWL2C4zEf07Uq6r3YLmE=;
 b=TIjEEzGyLzptLeEW1e6T/+vnGLx3leYYWIElFeMGuSSLXpR7pEm23JgZt7Ky8kddmio0n6q0qtQtIqZWXSVrS9uKBnCcsBoHruO/hF1C6X0Lvj/40yj4TZqHf3hjk/HqnJcLcvmwyDZ/evIVab0TBEIUZyYWgEjtkmKUEOsM3AD3siEzIkLXJgHnf9t7ra62n/Hn3OB2ROAohNnV9NwU8QrMxOqYMLSeHR+gjwE225mi/KYfRi8EagbQqDQJTyFDsp3ot+0Nhg4APkXl1nYK46wXXG+bIXRi7dMgXaXl/ThpTzyB6H2UhOJ8ySbKR2PbmtmVN33n0XPkjGM0SSrWjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVo5UkZRAyzePI5kGjdJ6gOoWL2C4zEf07Uq6r3YLmE=;
 b=m3RHJZ2kLvFcnRYNJzbRJ5tJvGTS8h4c8xMx15zzvb/vhXyyX/ykoRuZ69ohHpJ7/1Th3+N8UClz7LlNBtAQcgWBlT4rQAmZz0QtF3vf2y68dz9k6HCpZrMd9eYTNOZDxT+huqpqd9dXp2J4uLqfeleslBdbij4QHOQEcQCuB/w=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AM7PR03MB6387.eurprd03.prod.outlook.com (2603:10a6:20b:1bf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Thu, 23 Nov
 2023 19:06:12 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::5111:21b7:7721:9dd3%7]) with mapi id 15.20.7025.021; Thu, 23 Nov 2023
 19:06:12 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: Khem Raj <raj.khem@gmail.com>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, "ross.burton@arm.com"
	<ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] how can a missing file
 be a WARNING and the build 'succeed'?
Thread-Index: AQHaHh+QHpws51ms406OtJOEGAq8h7CIHHOAgAAnTAY=
Date: Thu, 23 Nov 2023 19:06:12 +0000
Message-ID: 
 <AM9PR03MB7012736C9361B5C88650A82992B9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 18891a90-1f0a-43a0-7e41-08dbec5742a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2qlXkWkDQLoRj1IiscS6EWTpyTaBxAGjj4NWfisgZaKDN8+ohT02jnBLF/qTQ6fMQMHglJexfouFnPM1Kg5IgF2SdVfKcTYL6gUwer8Aikff2/gPWbr2NpOvHCjSI1D8H6uvqAfGmFoN+Q36gMWsn7s/00ttPNqCn1P5kkVtOJVIK1PTezeGotvJoBRHQmVlqp5VrcYFnFnU1hJMS/Koh70k0onnnDS8/a3XkOew1ihHU6QVHXZ4Q3dApA2b48kdreOjf4939PMl4gauSqb0UhLGN/wvFZma2Hj7jwecBWG1vGvZV6i9x2qusZ6UVBaWrJdEKDotJAKEpaQbikq+/7XOLReHqyHzUWHKrI7rcIxawGq7IfQoZa3cW/dBYhKQ3UQe4q7gVqXuQyTXrljkOWtDyxJ4M+WCqUtwpPJKeOrR8zo2EGqKKgmHlJkMGecaQ601fyqNMp3LGW/ElavnLO5K+fbv3pvyYcYuW0RyLDpa1RNhl+2zeS7m+iezCOpWpduqqcjgAGQsSdaGzBs8JxgCdItFvJr1rsP67245MgHrtYxh5qNSb4v7QG9ee0Tf7+mvuJVf3UEEMSUtq/IL7y0qYDobxCG7is96Y3rb9NrTc7SLt5Kab4UJ6o3yA7qe3K2fpa5GaBEc3bRR6kfG3a7Pz+IVM4XnSrBL3Cte5/A=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39830400003)(396003)(376002)(366004)(346002)(230173577357003)(230273577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(53546011)(33656002)(9686003)(7696005)(6506007)(41300700001)(86362001)(71200400001)(38070700009)(6916009)(316002)(4326008)(122000001)(8676002)(8936002)(54906003)(38100700002)(91956017)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(52536014)(2906002)(478600001)(44832011)(5660300002)(19627405001)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?YjUzbFJtTnkrRW5xU3pPR3hQT0tnTG1hQ21tM1RBRTlOZjVVRGdrbTJjVUtr?=
 =?utf-8?B?bW1aWFExK2U0ZWVoT3BhcGNPM0IwQXVBZlZocFpQSmk2eWRFazRKL1MxcDN0?=
 =?utf-8?B?U1RmeGtBZHBHdWpTck9ySEU1RjRXc3ROU0s5Z0Q3VFBuUXJucENKQkwrSzJw?=
 =?utf-8?B?OG5PWnR1amlVSWpMZjEzS2ErYldTVmVraUd0cDNIeWRkV1pxT2RVY2Y5TEpY?=
 =?utf-8?B?Y3pkY2xhdWx4bUVtdTBXNWl1R240dU5hdzBSTmpJdTA5eUZGOXRSZTZ2Q1J1?=
 =?utf-8?B?eDZFNnU2UzJYdHBUQUdQaVBUaEp4cU43a0w2YVd3MlcxVTk0QnQyejNPTHN5?=
 =?utf-8?B?Y0R3NzExNksrdmdpNkdhVFhBMVNzNHBBTWRENGN1cSt5TXRlSjhhbng3Mngz?=
 =?utf-8?B?eDh2bTRsbFVFQUNBYnF3V3Z2TDR0QVNNSjltNlNiUlE5S3FEalVDeHVscEpQ?=
 =?utf-8?B?a1h6VWZNMEw3MWhodWJFRk5BT2ZuL1A3c3NIWHR4YXVPdGJ5TTZ0cE1WeG4r?=
 =?utf-8?B?QWpYd0xpdktNTVZWemNCam15ODBJWitScTljT1FpYmwxRlFWdHVrakFlRmFR?=
 =?utf-8?B?eE50UC82VEMxUjNnTmxKODUrdDBaeTZxTStyNkV5eUF0NE01cFkzSUlLckMz?=
 =?utf-8?B?S2pSMW5jOWdOblcwRGpUOFVXdzZwOS9YRGFnK3pwdWsxNXpLV1dwenU3M3VF?=
 =?utf-8?B?S2tCZnB0TkkySWM5MWNxNEJrZTNiVkt5TWlKZWZuajR3ZHhEVmpWdTFLRUlr?=
 =?utf-8?B?TThSaWlPclkwZEM4QkQvUnNEREQ0RCtCUllyeEljc0JEcnJEQ2ViWDF3azdu?=
 =?utf-8?B?anI0a0hldEhlQXFvdlNaZ1V4ZW9ZaXhJOGV5ZDlKNGZNZ1V1Ym9KVzRqbzlT?=
 =?utf-8?B?cVluRTFEUXFWSmhmNVdITXdseDZPSW1XZnEwWlRVMTd6Wk05elV0T2x3Mnhr?=
 =?utf-8?B?KytzSkpOYkZWNUVkdE1oQlAwRE1HYmpRcHBUdk9sSS9tTWtNVGJPb1dLcWtm?=
 =?utf-8?B?WWZVMmIwNmJpbkxXOTNHWXMvdkp3MG8rWlhKU2tLQnhFY2JBWktENFUxWHlU?=
 =?utf-8?B?cGNoOGQyWHBvRVUwQXRZM0dIeTFzRlg0MUVVMmF2TDk3ZW12WTB5UlZ3UmVQ?=
 =?utf-8?B?Z0x4emtoN05SNmc2TDBwbU5MRFhSL01CRjhDMEZVeCtlR2FUR3FBUFZyUWNC?=
 =?utf-8?B?R082ZnNwcyt5bWdtL01ETzhkRUFuVi85Rk5CVjUxNnlnbThnTzZUUmJYbFd6?=
 =?utf-8?B?MXVhdDJaSTV5WGpmWG5QUTkzVmF1Q21hV0ExekhzUkk0L0V1TmtNNEU0b1BY?=
 =?utf-8?B?N0VNNzFKUVZwS0NXSHJWQi9oSU1aMUFlL3Jxc2xHWWJDdDh3clZKc3Y1amxz?=
 =?utf-8?B?RmdHMXprVUhSdWdzQ0c5cmw0bm45QXQvNnZIWDJYa050cHFkRndzbTVURVB2?=
 =?utf-8?B?bUExZk81ZTRTdWtiNmpjYVZOT1lmQ0x4RHhELytyd2U1emRERThNOERUdW9I?=
 =?utf-8?B?blF3OC9hS1VMczAwcWpoN21CeGFSK0I2eDN3RDBRM0FTYmhySFpkeFphcEVR?=
 =?utf-8?B?ck1QYjJJRERRV1h1bXoxZ3lJQ3pmZytoSHdrYjluRW05Z3ZKMVlGMFhxMkJZ?=
 =?utf-8?B?Um5PUnRGWlF0L0xlYm83eE9LdWtmZEhXMFJTaHNZMWxxcnRtWmJ2bXc0WElX?=
 =?utf-8?B?bklwN3ArNlJWS0hpNXU5aTZiZkYzUkpDSzhPMWR4QVhGMitrMkZpd2s5bW81?=
 =?utf-8?B?TW10WkFFS1ZGaS9wajZEVUMrSU1KakZDRlAvc0VCT29TSnk2U0dOR1lqTFBB?=
 =?utf-8?B?N0YvOGRveU4vZ0ExRVpMTm1MTmhnWUU3OGtXVDBaYWRNbDhPcEJMbE1GbW1a?=
 =?utf-8?B?ZjZPQXo3MnZBYjZabkEvMjcvREFoNDZ2Wkt3cmpMS3J5a1d2UzFSejN0UHZh?=
 =?utf-8?B?ckdtdlp6bnA3YTVZR1I4R3RCZHc4YmdneVZZZFhKdlBwWDNpdHBOS1B0UWQx?=
 =?utf-8?B?ODZobjZFaHdjZm5qdHdwQ3NXelA3K3hNTy8rMVBTTnM5by9HbU8yTkdINmFr?=
 =?utf-8?B?V0wySzZCQ2l5dndzY0t2ZGY4NnR0OEpKQ0I1ekdCL1JHaitJb1VlL0diZERX?=
 =?utf-8?B?WGlYTEZObEs1bDhPcEpyUzd0NzhHRDNoVUFFMGNMWWZucTBEaVRCbFMydXBo?=
 =?utf-8?Q?Sehiz55b126LNh8iB0m75HOOlCCEbI6wXnDBSoRmE/kA?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012736C9361B5C88650A82992B9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18891a90-1f0a-43a0-7e41-08dbec5742a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 19:06:12.6964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rj01tzHmoAA1Lu2sbMn8xPgiEpDp2qQ3trlTfw4L+8W0dHhaBOgrkIq3KWQyz7QdgSh7ta3YEPf9pYPg351M8B0RZk3jbxzhIn7lHyUySGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR03MB6387
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 19:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61748

--_000_AM9PR03MB7012736C9361B5C88650A82992B9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIG5hbWUgbWF0Y2hlcyBmb3Igc3VyZSwgaXQgc2VlbXMgdG8gYmUgYSBxdWVzdGlvbiBvZiBl
eGFjdCBzcGFjaW5nIG9yIHNpbWlsYXIuLi4gaXRzIGp1c3QgY3JhenkgdGhhdCBpdCBkb2VzbnQg
ZXZlbiBlcnJvciBhbmQgc3RvcCB3aGVuIGl0IGRvZXNudCB1bmRlcnN0YW5kIHRoaW5ncw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBn
bWFpbC5jb20+DQpTZW50OiAyMyBOb3ZlbWJlciAyMDIzIDE3OjQ0DQpUbzogRGF2ZSBIaXRjaG1h
biA8ZGF2ZS5oaXRjaG1hbkBreW1hdGkuY29tPg0KQ2M6IEFsZXhhbmRlciBLYW5hdmluIDxhbGV4
LmthbmF2aW5AZ21haWwuY29tPjsgcm9zcy5idXJ0b25AYXJtLmNvbSA8cm9zcy5idXJ0b25AYXJt
LmNvbT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBbeW9jdG8tYXV0b2J1aWxkZXItaGVscGVy
XVtQQVRDSF0gaG93IGNhbiBhIG1pc3NpbmcgZmlsZSBiZSBhIFdBUk5JTkcgYW5kIHRoZSBidWls
ZCAnc3VjY2VlZCc/DQoNCm1heWJlIHlvdXIgYmJhcHBlbmQgaXMgbm90IG1hdGNoaW5nIGluIG5h
bWUgdG8gcmVjaXBlIG9yIG1heWJlDQpzb21ldGhpbmcgZWxzZSwgdHlwb3MgZXRjLiBTaG93aW5n
IGV4YWN0IGNvZGUgY2FuIGhlbHAgYSBiaXQgbW9yZSBpbg0KdW5kZXJzdGFuZGluZyB3aGF0IG1p
Z2h0IGJlIGdvaW5nIG9uLg0KDQpPbiBUaHUsIE5vdiAyMywgMjAyMyBhdCA3OjEz4oCvQU0gRGF2
ZSBIaXRjaG1hbiA8ZGF2ZS5oaXRjaG1hbkBreW1hdGkuY29tPiB3cm90ZToNCj4NCj4gSSBhbSB0
cnlpbmcgdG8gYXBwZW5kIHRvIGxpbnV4LWlteC4NCj4gSWYgSSBkZWxpYmVyYXRlbHkgcHV0IGEg
d3JvbmcgZmlsZW5hbWUgaW4gdGhlIHNyY191cmkgYXBwZW5kIGl0IHdhcm5zIG1lIGFuZCBjYXJy
aWVzIG9uIHdpdGggbm8gZWZmZWN0IG9yIHdvcnJ5Lg0KPiBBbnl0aGluZyBJIHB1dCBpbiB0aGUg
ZG9fY29uZmlndXJlOmFwcGVuZCgpIG9yIHByZXBlbmQoKSBpcyBqdXN0IHRvdGFsbHkgYW5kIHV0
dGVybHkgaWdub3JlZC4NCj4NCj4NCg==

--_000_AM9PR03MB7012736C9361B5C88650A82992B9AAM9PR03MB7012eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFw
dG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhl
bHZldGljYSwgc2Fucy1zZXJpZjsgY29sb3I6IHJnYigwLCAwLCAwKTsiPlRoZSBuYW1lIG1hdGNo
ZXMgZm9yIHN1cmUsIGl0IHNlZW1zIHRvIGJlIGEgcXVlc3Rpb24gb2YgZXhhY3Qgc3BhY2luZyBv
ciBzaW1pbGFyLi4uIGl0cyBqdXN0IGNyYXp5IHRoYXQgaXQgZG9lc250IGV2ZW4gZXJyb3IgYW5k
DQogc3RvcCB3aGVuIGl0IGRvZXNudCB1bmRlcnN0YW5kIHRoaW5nczwvc3Bhbj48L2Rpdj4NCjxk
aXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJs
b2NrO3dpZHRoOjk4JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRp
cj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9udC1zaXpl
OjExcHQiIGNvbG9yPSIjMDAwMDAwIj48Yj5Gcm9tOjwvYj4gS2hlbSBSYWogJmx0O3Jhai5raGVt
QGdtYWlsLmNvbSZndDs8YnI+DQo8Yj5TZW50OjwvYj4gMjMgTm92ZW1iZXIgMjAyMyAxNzo0NDxi
cj4NCjxiPlRvOjwvYj4gRGF2ZSBIaXRjaG1hbiAmbHQ7ZGF2ZS5oaXRjaG1hbkBreW1hdGkuY29t
Jmd0Ozxicj4NCjxiPkNjOjwvYj4gQWxleGFuZGVyIEthbmF2aW4gJmx0O2FsZXgua2FuYXZpbkBn
bWFpbC5jb20mZ3Q7OyByb3NzLmJ1cnRvbkBhcm0uY29tICZsdDtyb3NzLmJ1cnRvbkBhcm0uY29t
Jmd0OzsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAmbHQ7eW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFt5b2N0b10gW3lvY3RvLWF1
dG9idWlsZGVyLWhlbHBlcl1bUEFUQ0hdIGhvdyBjYW4gYSBtaXNzaW5nIGZpbGUgYmUgYSBXQVJO
SU5HIGFuZCB0aGUgYnVpbGQgJ3N1Y2NlZWQnPzwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8
L2Rpdj4NCjxkaXYgY2xhc3M9IkJvZHlGcmFnbWVudCI+PGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMXB0OyI+DQo8ZGl2IGNsYXNzPSJQbGFpblRleHQiPm1heWJlIHlvdXIg
YmJhcHBlbmQgaXMgbm90IG1hdGNoaW5nIGluIG5hbWUgdG8gcmVjaXBlIG9yIG1heWJlPGJyPg0K
c29tZXRoaW5nIGVsc2UsIHR5cG9zIGV0Yy4gU2hvd2luZyBleGFjdCBjb2RlIGNhbiBoZWxwIGEg
Yml0IG1vcmUgaW48YnI+DQp1bmRlcnN0YW5kaW5nIHdoYXQgbWlnaHQgYmUgZ29pbmcgb24uPGJy
Pg0KPGJyPg0KT24gVGh1LCBOb3YgMjMsIDIwMjMgYXQgNzoxM+KAr0FNIERhdmUgSGl0Y2htYW4g
Jmx0O2RhdmUuaGl0Y2htYW5Aa3ltYXRpLmNvbSZndDsgd3JvdGU6PGJyPg0KJmd0Ozxicj4NCiZn
dDsgSSBhbSB0cnlpbmcgdG8gYXBwZW5kIHRvIGxpbnV4LWlteC48YnI+DQomZ3Q7IElmIEkgZGVs
aWJlcmF0ZWx5IHB1dCBhIHdyb25nIGZpbGVuYW1lIGluIHRoZSBzcmNfdXJpIGFwcGVuZCBpdCB3
YXJucyBtZSBhbmQgY2FycmllcyBvbiB3aXRoIG5vIGVmZmVjdCBvciB3b3JyeS48YnI+DQomZ3Q7
IEFueXRoaW5nIEkgcHV0IGluIHRoZSBkb19jb25maWd1cmU6YXBwZW5kKCkgb3IgcHJlcGVuZCgp
IGlzIGp1c3QgdG90YWxseSBhbmQgdXR0ZXJseSBpZ25vcmVkLjxicj4NCiZndDs8YnI+DQomZ3Q7
PGJyPg0KPC9kaXY+DQo8L3NwYW4+PC9mb250PjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_AM9PR03MB7012736C9361B5C88650A82992B9AAM9PR03MB7012eurp_--

