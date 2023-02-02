Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38249C61DA4
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 14:02:26 +0000 (UTC)
Received: from CO1PR02CU001-vft-obe.outbound.protection.outlook.com (CO1PR02CU001-vft-obe.outbound.protection.outlook.com [52.101.47.3])
 by mx.groups.io with SMTP id smtpd.web11.14990.1675346538109277530
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 06:02:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@parraid.onmicrosoft.com header.s=selector1-parraid-onmicrosoft-com header.b=E63Q3v4T;
 spf=pass (domain: parraid.com, ip: 52.101.47.3, mailfrom: dspore@parraid.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKBD0jzS8/pAM3/dM9/ODRhLd6Mkl5V3559nLObRlml1CGk+HdN9MSLD30v0qwB5Mz4mqHoCMj5A/ThyzKMGhwqGmKA16XFQro7//KCC9vUTscGRzXP7QAsmjGwWbOqc1ktMjZvTy/XinagIkfVD+urNCn5XEuufGynid2KdhmEwR5Ih5GX/e7d69p2TcIyJM/BKTiofwNCJVTr7O5bVep1c/+C4OD75FQ/CjVbrkrhdd8gr2VwP8qo1zLv4VhjYNTeFlb6/fWxyKH4JltetNx5BStooAGCaskgKlFHeuk8cvC7MDXgquhi36lMPcd5dop1V9sOTvHTlxJPT+SBzSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hqnqE+VLRI4nGjIlth8OKLnmXgprH1+2XoQyorJS8wk=;
 b=AIhvABFXriLpuDpb+l8apJyCIjFX0Uj1irOdrSod25Zu3eCUxyRZVLSToPsX77cKM+ij3PdTD88QdHKHDgmntFc8ErebWDsfQeg+7ZQTx4KWOcR0TGLrhrtZIFkho8aJWbkvIscdUNSt2KbwqH0rrqOlIpWt0NgEm0KJAysotVfJYvtt70QiG8B076VUe17CJRUH0ks0UdwLSNWFmAlra+ydNZxEkzN4PdiSSxT3PEIcKtnX6C6YijVUmA7sOHjMBC2ROJWNLhDvGHaAie5Y7d2yzQreeokz3OJfKvgqULUJ+gUyIfs3Ya9N/QmkmHcng5fD/zBVOEm+SmnAVXGfOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=parraid.com; dmarc=pass action=none header.from=parraid.com;
 dkim=pass header.d=parraid.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=parraid.onmicrosoft.com; s=selector1-parraid-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hqnqE+VLRI4nGjIlth8OKLnmXgprH1+2XoQyorJS8wk=;
 b=E63Q3v4Ts1hBOdTD0BCTUl8HxFASlq9jKcU3PR6hjh8OSBhl+LKcj1RpR0+3c/RwUm3QIwLmwHRMJNVJAip627ko7t9blu3F7GPCIQWWgdQmDcINxGzio7JdVVdwLyNe+G97vAXDFF0E1rFlWCICqB8un95Tn75kW+0k2jTBOIU=
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 (2603:10b6:803:4a::25) by PH0PR05MB8254.namprd05.prod.outlook.com
 (2603:10b6:510:bb::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 14:02:11 +0000
Received: from SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::e040:aeba:34b4:bbf4]) by SN4PR0501MB3919.namprd05.prod.outlook.com
 ([fe80::e040:aeba:34b4:bbf4%3]) with mapi id 15.20.6064.025; Thu, 2 Feb 2023
 14:02:11 +0000
From: "Spore, David" <DSpore@parraid.com>
To: Richard Leitner <dev@g0hl1n.net>, Robert Joslyn
	<robert.joslyn@redrectangle.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
Thread-Topic: [EXTERNAL] Re: [yocto] Adding openjdk-11 to Yocto
Thread-Index: AQHZNOlN8A7oDn2CrE2CLDh0IR82A664mboAgAFL0YCAAR5zAIAAP1uAgABwdlA=
Date: Thu, 2 Feb 2023 14:02:11 +0000
Message-ID: 
 <SN4PR0501MB391986340CCB939AF69C7341D7D69@SN4PR0501MB3919.namprd05.prod.outlook.com>
References: <TNB7.1675098856905334898.dmEm@lists.yoctoproject.org>
 <GV0P278MB02110F36ACEAFD3C29936CBCF0D39@GV0P278MB0211.CHEP278.PROD.OUTLOOK.COM>
 <5FFCF910-A57E-4369-9D88-12FCC585E778@redrectangle.org>
 <Y9o+Za7X8j20qRIS@g0hl1n.net>
 <909273E4-7D7B-47B2-9E79-9FB5431C82CF@redrectangle.org>
 <Y9thAUU9hME+hrBh@g0hl1n.net>
In-Reply-To: <Y9thAUU9hME+hrBh@g0hl1n.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=parraid.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN4PR0501MB3919:EE_|PH0PR05MB8254:EE_
x-ms-office365-filtering-correlation-id: 46a79317-1b7a-4cd7-ee8a-08db0526149b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 O62DU2pOyfl29rT8GwcnbOiE1Gc9jhoMRwFqzA+5MAcAMQuEyp690dIgk0G3dHYHeglIVqfrcv+VqZlXLGLclSF9JrOVmAcuggba92A9QaprrLBtW7yHM98bzT4DNcXW0wV+Yo3gLpWvu+r1l7bRnpDGjeDjFMqLcGXVIozC7n2zikKbt66Xz2ecgGVkpnHiODUfYNfU4UUdXCn4m8zaV3b0zc+M/QYxVoYqvpFYGyxk783YmGWLJizQoZC284R4+pj+YX+HMqO7J/IogyakpLBDtSMPe7Le04xXDFuzaSeZd646VtdbLMaF3Z4YV2Yd3UKRVLQGi/ta3d2++96Nl8jqDPffkpF7X/rnBiJRxCME5npDLh2k3YG/Pqe0M2/PXm1hgXlQkWbqPySWKAVfVgQsQJxZg5wIzOyZkxCMmpTr/5CYzXoPPqoOroPt7mk0B0C6nY7BEoIxb6Qu+bP8wFu8fklI8mlYI2Y/q6dsu6JJ+Vdb4FsjmoZu4FUcNbwcCGnqQVK04R6Kfj+MOkfOdp/LGjNi3mQPGL6cq5myZPSbT7fEeJvYadQ4VopcxhuHCexWysC7rR4QP9fKssP1j0jEMNDSFx12qXveEHhGklB9IXSgL1aYdQW8ISxVMqvUtQ3acHcI7KWIAYMUMmPJBt11OjVC57XJeXd91YonLUE7hxm8UlylSnfNOLPtJzR9BqDuE1XdBp2W0wQYalNZW+NLHQQwydIuvARPmWYYVX3G1WbR7HPXijo2yY7qK1mC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0501MB3919.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(396003)(366004)(376002)(39830400003)(451199018)(5660300002)(4744005)(41300700001)(8936002)(52536014)(64756008)(76116006)(66556008)(4326008)(66446008)(66946007)(66476007)(33656002)(8676002)(478600001)(26005)(53546011)(6506007)(186003)(110136005)(83380400001)(2906002)(38100700002)(122000001)(86362001)(38070700005)(9686003)(55016003)(316002)(7696005)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?RTFpbG9TZTV6VGJHWVM1aHVrcnVZWTlDMXdIM3RrWXdaUmdRdE9kWTJ0aHcy?=
 =?utf-8?B?L3lwTVpaalptWVl2Uk5odVMyRXB4ZXdSUWNLNnEzeGRaM25Sd1g0dWpTODFX?=
 =?utf-8?B?YU42eDVyclhpbkRiNk5EcnFBTGtMUjJxVXpVaFRqTnM1R2k1dy9xSVBvUDBQ?=
 =?utf-8?B?citITFBJZFJPNGl2VW5HODlLTUdFODU5Y1NHZlRmNEk3OTB5R2RmT1ExQjEr?=
 =?utf-8?B?MkoyMHY0aCtNclMyOHYzQitzMWNpY2NhSGFubnBoZVlxL09MWll3cG9zWDlG?=
 =?utf-8?B?b216c3dRdHMwOGN5K0cxZVBrcnRVUW9rdnN1Uzl3d3RDTUFXSlJvbjhLcjNT?=
 =?utf-8?B?R0pDYTlnZUtFMGdFU0ZWY25SeHJzQzFYc2lRdURUODJkeTRERnUyUDExMkl1?=
 =?utf-8?B?RmwvMmlRZmNVZnpwNE9xM01wNTZ5ZVVHWDFKbGd0ekJSK0NEdTFCMVdLOWti?=
 =?utf-8?B?cVJUT0dzRWdicVExaHUwcXg2RnpxSElDeXpwaUh0c0pzV2c5UXNMQVhFb2xx?=
 =?utf-8?B?N0tueTRoT29FbzQzSUhUUnd2cXY0WWVZaTRDbVowS09zemxaSUp1NTEyWERo?=
 =?utf-8?B?WlBzOFJ3bGgwZUt6RWRXZmRlcHl1cW5JTGJMQkpmdXp6bU0rV1AwWnJDRkJC?=
 =?utf-8?B?SCt2ZHZIckVkdDluL1dWbWtmMkJyVjdEYllyV2tEUGRQZU05TTUwOGhDa2Js?=
 =?utf-8?B?Nk4zd25sMDZkKzNjMzNHOWNraVRyUDlhMEhvVThSWGpSL0h6ZmpmaWZZNWxv?=
 =?utf-8?B?bUdHdGw0S0ZuZmlIQXRCbzRVNlJtUjZLRzBLOW1iMUthWXlvZC9jNFZ0YXpL?=
 =?utf-8?B?M0M0SytJcGhxSDlrdjZvNGFRKzJtazZaV3R4Q04yK3diSEt2dXhSUUtDWlRy?=
 =?utf-8?B?bDV3a3l6d1QzTE1MemZQMnhBUjNwNVQ0RHhtWWY5eFF5UWFobTg2cWY2VmFV?=
 =?utf-8?B?Yis5amJncjJjQ2oySjkxb1NoZktTcU01SWlvWUNxTXN2RWpjMkhVaW9uTFlR?=
 =?utf-8?B?UkpIeDdDaDZMdEk3dHNWR3NNYVMrUk1FR0E0RUJWakxMdmIzaWxpeDYvekFL?=
 =?utf-8?B?V3Z2SHRVbjZMTE56TUEyeW5FWjVPSWViWDhIVkVtUkJ1c1M1eU9kMFhMQ2Vx?=
 =?utf-8?B?dDZQQjNrdXBNVVpVZlRLOGlaWHF5Ykx6NmFoYlFpNzBRS2Z5N1M4NnFQc241?=
 =?utf-8?B?K0grZ3JiVXdxZTVMNCtqMkRQWnJoa2RBcWdZblh4UXlPWDBsZWN2eTFxM29E?=
 =?utf-8?B?UFRuTm9DbThCcVEva1F1OGo2LzhmRUZERWg2cjU1Z2xqV3RyaDd3Smw3b1Nv?=
 =?utf-8?B?S1VxdUM2aEUvKzR5RUU3V2JYdG1RYnFaU0pUL3FjMllGN0VzSWJhcTdPaE1y?=
 =?utf-8?B?Z253bVAvNVVaUXRCNFpMVjJtRmFiM1A4K01UT2cvb29SOXVLZ0ZVMWt4eWFH?=
 =?utf-8?B?WkZKTHFjekMxVUNzWmtlN2x3QUNRSnhqTGJISUYxUnZOSlExWUFnMDVRVkd0?=
 =?utf-8?B?dUoraU01d2dTcGZDeGdua01KeGdZMEFpV3YxRVRud2VjTHByVnRiMzlUbzFv?=
 =?utf-8?B?Nk9lRDRwZlZ4cFRwTTRETFBNeVlScldGN2VicDg0cE03UEVRUXZ4dlBhRlho?=
 =?utf-8?B?REIwOFpuRVNJdFU0QjM3UWZocVRpUWYrQ3p6aUtWSkhyVkE0UEg4dzhxNk5C?=
 =?utf-8?B?bjdWNnlUNjI0ci9tbTNrV0Q3enFvSG1idXU0K3Z1U2ZTcUVHOGFDU3pzMGxw?=
 =?utf-8?B?ejMwV3lUaUc1T0ZkVHpCMGlGZ2k2TGM3TE9iVlljNlE5OE9kYTdDQkkyU2NM?=
 =?utf-8?B?ekIyVzJlcXd6dWN4V0hUaEFMRXJZaWI3NkZxY1hIRThVZjdheDF0cFQ5bjQ4?=
 =?utf-8?B?aERvY2pwZTlndld3WFMyRlkwUUpqTTBjdGRsWXRqY3hMWXFxeWYwRmV2TVVU?=
 =?utf-8?B?UnMwZURMOTlBdmNWRzZXTlp6TitvTURyeW9jOFpUdzZBYWpsK085b2xqSm0r?=
 =?utf-8?B?UHpqdyt3NDlSb1Bqd2lsRTBnYnhpbXNzZENzc2xBTVVsTGpCd3VWNVVuMm5M?=
 =?utf-8?B?WHpzMTI4MDNOTU5CeXNYOUkvYUc4NE5URE1teWlXV09HUFQvOXhQWlc1UXAz?=
 =?utf-8?Q?Y1TXFerSxE69hl6YNLbvK219w?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: parraid.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0501MB3919.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a79317-1b7a-4cd7-ee8a-08db0526149b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 14:02:11.5091
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5040c286-ef2b-454f-85da-d009af0c41c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ohc9X4l93dk39WuGBAsQm/c5cwERpyWPTlArEFcqYyvKPHl2+OEPFeoTWdjbgAKW8s3s0/2+x7M7NsC4IG500w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR05MB8254
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 14:02:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59147

TG9va2luZyBmb3J3YXJkIHRvIHRoZSBwYXRjaGVzIHRvby4gIFRoYW5rcyBmb3Igd29ya2luZyBv
biBpdCENCg0KRGF2aWQNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUmlj
aGFyZCBMZWl0bmVyIDxkZXZAZzBobDFuLm5ldD4gDQpTZW50OiBUaHVyc2RheSwgRmVicnVhcnkg
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

