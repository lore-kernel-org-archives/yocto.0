Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF01CC76195
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 13:14:09 +0000 (UTC)
Received: from CY4PR02CU008-vft-obe.outbound.protection.outlook.com (CY4PR02CU008-vft-obe.outbound.protection.outlook.com [40.93.200.7])
 by mx.groups.io with SMTP id smtpd.web10.34441.1679922844248168113
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 06:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@parraid.onmicrosoft.com header.s=selector1-parraid-onmicrosoft-com header.b=o2slfR/m;
 spf=pass (domain: parraid.com, ip: 40.93.200.7, mailfrom: dspore@parraid.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTT0fjl/ox2frQK6N/i9HuF2Zot/6hUqOUY2qMAmq68NrspCINUxTLVK/xyAqqVbSozqvNTgsbQHuQpP8tsdmf1Sg/Ba2emkTiqhNC4q6mwuBD0W1s+O7g2DBY9wppEEsHhM1EisYvcykc67LNHB/5eddasb/nXGfsFXL/O5wTgr5Hbuh1jvDUmHn3YyZuTxvpLmyhv0fa9HUqYDWg/A8vCXW6kj0JWBFnWQjm1556bnJ13R6pOGwHvGqwM3capFTxcwIWLDTcZyjnkw8KvCw/gqklPYCP3e6JptFTpoePd0KGCEUlRjZiNn0WgP7nv9FY586F4p9+TV7T6rvus/Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v/EqBfogSSX2wr5KgJnidNL+OjpLtG4WqumUNTrUfvo=;
 b=nPF25BStnY2+IqbjtrTLS21PIGSEiHbSfHxz3l3+hP9/qsft5Y7z9qArV48tQ3GTXkNj6WKZn+TEw5ih9mEJ/pgsSrJtAFm6OEKhGDCKsJhuWrKGl2+kn2gog7LUqv/h6BElzuv5jRqi6dZhSv2wxo+idrLUlZirnnDFbmNdUcNL/Ct6lTKzzIS6q6pVNxMNv26XT8LFLBQZ/uPQ5yvk441v7YeuadlwML3bFkHiEs3sMotK/BQ86msUKJ65YMffFIldJWOkruxJ7rzpfcZiwB60KgNC5FZ8WdUvw8XLKbU2AsTDy6G7PoX40emp2F+UKp5ffM8LrGaqaLoOHlglUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=parraid.com; dmarc=pass action=none header.from=parraid.com;
 dkim=pass header.d=parraid.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=parraid.onmicrosoft.com; s=selector1-parraid-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/EqBfogSSX2wr5KgJnidNL+OjpLtG4WqumUNTrUfvo=;
 b=o2slfR/mtH5eu2zyKpL3STFBqf4D/iYN94g41/+UMeO47gLjTa8nWdCAVo3o7+Iavo3CdQ1tZFECO1IJnwJGXc3bf2y4jHR5tU4Z2aT2kxuguPyMMsNEfFmmjiiArtWvqL7J8S6zkQWDBm2cBzykoC6TL6u4xTCsdxsKAkI76cM=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by SA1PR05MB7935.namprd05.prod.outlook.com
 (2603:10b6:806:1a3::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 13:13:59 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::4486:6e05:b547:5363]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::4486:6e05:b547:5363%7]) with mapi id 15.20.6178.037; Mon, 27 Mar 2023
 13:13:58 +0000
From: "Spore, David" <DSpore@parraid.com>
To: "Spore, David" <DSpore@parraid.com>, Richard Leitner <dev@g0hl1n.net>,
	Robert Joslyn <robert.joslyn@redrectangle.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
Thread-Topic: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
Thread-Index: 
 AQHZNOlN8A7oDn2CrE2CLDh0IR82A664mboAgAFL0YCAAR5zAIAAP1uAgABwdlCAUz4M0A==
Date: Mon, 27 Mar 2023 13:13:58 +0000
Message-ID: 
 <SN4PR0501MB3919376DF634D9E82627C7BCD78B9@SN4PR0501MB3919.namprd05.prod.outlook.com>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
 <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
 <Y9thAUU9hME+hrBh@g0hl1n.net> <174006CCF862C3D3.3213@lists.yoctoproject.org>
In-Reply-To: <174006CCF862C3D3.3213@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=parraid.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|SA1PR05MB7935:EE_
x-ms-office365-filtering-correlation-id: 115e2ce3-85a1-4650-3471-08db2ec5204e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Rm6X73u6MGC4pvE6hByuplU4mrJeRdoivSGRLbUB9YzLKWcw4zduPXPIfIw+La+pFqgevRoE3YukKYrNTqyYFFYUOjPsluqI3IJPt+5QDzsWyNtR8PVxjEyRw9wVPWHOMs8wrCBuu+LJr6KfCQ6tWnglOBWj0ZBSNJCMTKH/b+afqaT2Oj8G1iwCrfa7Dl4NBqytnXGD6juem5VgjLPs8DBAP15DVlMGZYcx1LOOQeXOvWSfZheMEEMOjE8gZy2+n1lAgYnVORIyK7Oc2W3py/d9KAq6WoQ0OGJNXSRBHeNTXH73hBeOzNG7QQlpbhstdP+krjLXfyMnWGcLjXfRJFn1kter5ek8AGvsUk5FWqPYFryTV77JJ+aIMRLJTRNjyqPvWoIv0bRtgx65+22HGQGTOZ4XhI4vcxOEx338p4n3jMJOQgbSNpYxYyUUsJ/yz0YLYmTyObNrgDfRSupAtJyIw9HO4BF2DAU5ZrXwmIXwL07UwIeNDljTOV6RGboKuSeqxPm3gPUzu4ldxQQfySwFSmxwN/pmF3uu2b9xmEwzQC+uomT4JTDW6Lek7mUqPpFtyFTukhlrrC3MUay80jg7RcWGyeyWRMyqiURIV3Ja0r7ejW35Fz7v+2mSzYKAVMH5bR1RsW5CUaPu+w5o3jW3MFiyi8Rt4ObmlugtTDU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(39830400003)(136003)(396003)(366004)(451199021)(110136005)(316002)(478600001)(52536014)(8936002)(122000001)(38070700005)(5660300002)(86362001)(38100700002)(66476007)(2906002)(4326008)(33656002)(66446008)(66556008)(64756008)(76116006)(8676002)(66946007)(41300700001)(55016003)(186003)(26005)(6506007)(53546011)(9686003)(83380400001)(71200400001)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bEEzbzJmeWhYRlpQTTNUalZGMDZsQkgvWnlaeEhFcVlWWUoxV2ZYOU1pZ3Qr?=
 =?utf-8?B?b1l3TVhuVHNQaDUxOWVLZHNoNWRVUnk3ZEtISm1SY3dwOE9GYTBjVTBWNkpF?=
 =?utf-8?B?dUkwcHc0NTk5bVl5NnNxUUJoRmtqREdWVUNVSVlKdnVBYWJVdy9NeXlkb3ZG?=
 =?utf-8?B?T0dObjVoNXVleks3Q0crNi96dFBqQUVDRXJPYi9aa09FMDdUdEdwOUcwbldE?=
 =?utf-8?B?bnBYRXBDMDI5T3FmcUp0cW1IclV6T3lGamNyOWhQSVlWWWt1QlBjTXBxNHRB?=
 =?utf-8?B?ejl4bU5Md0dRM005blR3UlhkZjEvd1J2WCsvejM1WmtHT1pFa2RLLzZkTFJM?=
 =?utf-8?B?dzAwcWVDSmczWHEvZTFQUmFMZThzVndVMlVWMVpLVy9DRm9zNUJRYVFyYjhU?=
 =?utf-8?B?VTl6bWFkY1U0dVlBWXNpZG13aGZBeGN0Z0RGT09VYW5MVFRLK2lQN1dLOGpZ?=
 =?utf-8?B?MTNGTmRiVW9mZkVqRHd3LzM0bHVrWWx5ZndWS1o3dmFBYjJzT2dROHl5TGhB?=
 =?utf-8?B?TnZmMTRXK0pwemZNaFNEOWJ0OERLNVNOa08wU1ZhN2ZTdE1LZDJoTXIyOEtK?=
 =?utf-8?B?b1FiOU83ZzZrTHNUVUhKYTltaHdWQ0pIUUxDcVVwNEZjaGorNnZRcG9pTzlu?=
 =?utf-8?B?ZVBhY3E3b1k3TTdWMGlMclpHOEhDd1hOeFFIZUxkWUE2UlpIWW4xRkx6S2s3?=
 =?utf-8?B?Z3ljVXY0a29QUDArUHVQVXZBOElxTTdUaU9GenZEaUpBeHArNWV3cHdhck5Q?=
 =?utf-8?B?ZFlaa2NyS21ZYTdzUkx5aWt0VFhhYXlHdHRUYU5XY2R2QW94NEVNVHc5TUZr?=
 =?utf-8?B?bk5ZZHhiOTBFTXJ2MUY5Q3JnNG43RWN3QTh4THErZmdReXZjZS9xMlg4VVE0?=
 =?utf-8?B?NisvOHNOd2RJN0FxOTRoRW1XT1lDcTQ4YklwWVVaTWlQanNCaE5yR25EUVlT?=
 =?utf-8?B?SnVtcFdxanFZU3V4SDBhOWN0SXA3YmRwMDludFl2eUNtdVoxWnA2K08zZ1U4?=
 =?utf-8?B?cGIrb08zb3JoOE1oaVRncTE1enAxeXNXS2xvN0lVZmlqbUFyUyt6eUQrZ2ZW?=
 =?utf-8?B?NmcwWC9kZ0UxcTRzbkVIRU0zKytOUldUeGxKRGRLeGFPcUZ4OEhWSXAwa2U4?=
 =?utf-8?B?TDVGWVB6dEkzOWk3aVBLS0wyQkFGZS9aSFVrL0tMVERYWDR1Q09NTllsTWdP?=
 =?utf-8?B?Q3JvY0hBRmZXVFhXZTJYenRYK3ZuaGxrYlZVbnBlTmNFNkxqL2tBcHBDU2ZL?=
 =?utf-8?B?MVZ6TlBxc2luZUhvRmQ1QXlsU2dJdXppbU5XUnE2dDZvckZOSVkxYmV2V2tP?=
 =?utf-8?B?Wk0ycDV5N2Z3QXNva2kvMGttdEpOLzI2L0VvcWdTSG5kbkNQTUptUlFGS2lR?=
 =?utf-8?B?WDZJN0dEaFViTmorQ0tHM0ZoRkhMMU5yTGNoMUNVRjFJQkhXRGpkYnAxbTR2?=
 =?utf-8?B?YWc1bUVnSnRaSlB6K1ZYd0E0ZWVBMHRib3NmdHFFQTI0L1FCTGl0MDMyUDFT?=
 =?utf-8?B?dVFFNUtKMmVWWnR4U3NDbjZJVW4xS080RlpCdXVuRzJlMHRUemQ2bEM1R09z?=
 =?utf-8?B?MnhJaEFTdnhrYVJrMVJ1SnBqMTNwclNCd0pLYVFkejh6UmFnS0pGZmROMDds?=
 =?utf-8?B?aVAwMktMaFl5WENFaUd2MjVmY3pkOTBuWlN0WHM2bzQ2VDdvRkVqclM0VmU3?=
 =?utf-8?B?RHQ0dWV4YU12akMxcndPayswL3B5SUxWS05jQ283ODd5Zk12UjF3UHlZa2s5?=
 =?utf-8?B?b2svb2lieEZUTUlacXNpb050QWFzaE9JZU81MkV5Q0EwM0d5YXFNa3cxNWNq?=
 =?utf-8?B?OGVPenFCZWFsbzFtVDNFZUI5Tm53M1lWYkRYR3MvcklnYWJaMytUSjR1cTR1?=
 =?utf-8?B?R3VsL2xrWlhHbVNrdERXeGN2M3F2QnRJcWNlVk1HaEJnM0RGcjRhcnNkUDY1?=
 =?utf-8?B?UTM3RXJUV2JzUHl1S1NSZzdVRXBZUjNmZW1Ic3QzYXlQNjhKN3RDYU1VdHJn?=
 =?utf-8?B?WGlHdU9OVVo0Z05rS05ZcWJJTUxGWlRKZm1EQnp2VTNZQm9kZG4zSXdxeXdW?=
 =?utf-8?B?TFlhWDJDQmQyanIreUNrNjExTjJ6bEhDQ3h0bHJvTU9LWmtGV1B0c1IwUytX?=
 =?utf-8?Q?MxjI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: parraid.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0501MB3919.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 115e2ce3-85a1-4650-3471-08db2ec5204e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 13:13:58.8332
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5040c286-ef2b-454f-85da-d009af0c41c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 30lJD87JiczBKt/bUzFUC6nadZ0hwNSZgNS/4PUGn8FBMsYe/eJNfPYZ/RCbBhzrG5J28Xs/l+gmQDvx8//gQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR05MB7935
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 13:14:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59526

SGVsbG8sDQoNCkp1c3Qgd2FudGVkIHRvIGNoZWNrIGlmIHRoZXJlIGhhcyBiZWVuIGFueSBwcm9n
cmVzcyBvbiB0aGlzLg0KDQpUaGFua3MhDQoNCkRhdmlkDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBTcG9yZSwgRGF2aWQgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNClNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyLCAyMDIzIDg6MDIgQU0N
ClRvOiBSaWNoYXJkIExlaXRuZXIgPGRldkBnMGhsMW4ubmV0PjsgUm9iZXJ0IEpvc2x5biA8cm9i
ZXJ0Lmpvc2x5bkByZWRyZWN0YW5nbGUub3JnPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcNClN1YmplY3Q6IFtFWFRFUk5BTF0gUmU6IFt5b2N0b10gQWRkaW5nIG9wZW5qZGstMTEg
dG8gWW9jdG8NCg0KQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBv
ZiBQYXJyYWlkLiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3Mg
eW91IHJlY29nbml6ZSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuDQoN
Ckxvb2tpbmcgZm9yd2FyZCB0byB0aGUgcGF0Y2hlcyB0b28uICBUaGFua3MgZm9yIHdvcmtpbmcg
b24gaXQhDQoNCkRhdmlkDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJp
Y2hhcmQgTGVpdG5lciA8ZGV2QGcwaGwxbi5uZXQ+DQpTZW50OiBUaHVyc2RheSwgRmVicnVhcnkg
MiwgMjAyMyAxOjE5IEFNDQpUbzogUm9iZXJ0IEpvc2x5biA8cm9iZXJ0Lmpvc2x5bkByZWRyZWN0
YW5nbGUub3JnPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IFNwb3JlLCBEYXZp
ZCA8RFNwb3JlQHBhcnJhaWQuY29tPg0KU3ViamVjdDogW0VYVEVSTkFMXSBSZTogW3lvY3RvXSBB
ZGRpbmcgb3Blbmpkay0xMSB0byBZb2N0bw0KDQpDQVVUSU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0
ZWQgZnJvbSBvdXRzaWRlIG9mIFBhcnJhaWQuIERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0
dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cgdGhlIGNv
bnRlbnQgaXMgc2FmZS4NCg0KT24gV2VkLCBGZWIgMDEsIDIwMjMgYXQgMDc6MzI6MDBQTSAtMDgw
MCwgUm9iZXJ0IEpvc2x5biB3cm90ZToNCg0KLi4uDQoNCj4gU3VyZSwgSSBjYW4gZXhwYW5kIHRo
ZSByZWNpcGUgZm9yIGFkZGl0aW9uYWwgYXJjaGl0ZWN0dXJlcy4gQSBxdWljayBsb29rIGF0IHRo
ZSBvdGhlciBkb3dubG9hZHMgc2hvd3MgdGhleSBoYXZlIGJ1aWxkcyBmb3IgeDg2LCB4ODYtNjQs
IGFybSwgYWFyY2g2NCwgcHBjNjQsIHNwYXJjdjkgYW5kIHMzOTB4LiBJIGRvbuKAmXQgdGhpbmsg
WW9jdG8gc3VwcG9ydHMgc3BhcmMgb3IgczM5MCwgYnV0IGFjY29tbW9kYXRpbmcgdGhlIG90aGVy
cyBzaG91bGQgYmUgc3RyYWlnaHRmb3J3YXJkLiBJIHNob3VsZCBiZSBhYmxlIHRvIGdldCB0aGUg
dGltZSB0byBwdXQgYSBwYXRjaCB0b2dldGhlciBsYXRlciB0aGlzIHdlZWsuDQoNClNvdW5kcyBn
cmVhdCEgTG9va2luZyBmb3J3YXJkIHRvIHlvdXIgcGF0Y2hlcy4NCg0KUGxlYXNlIGVuc3VyZSB0
aGlzIG1haWwgYWRkcmVzcyA8ZGV2QGcwaGwxbi5uZXQ+IGluIG9uIENjLiBUaGFua3MhDQoNCnJl
Z2FyZHM7cmwNCg0KPg0KPiBUaGFua3MsDQo+IFJvYmVydA0K

