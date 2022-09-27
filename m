Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E505C54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 09:02:13 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.100])
 by mx.groups.io with SMTP id smtpd.web08.8479.1664269328923985686
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 02:02:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=DM1Iupd5;
 spf=pass (domain: cognex.com, ip: 40.107.100.100,
 mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m3b9p769U884bKdEKM2a389fKxKQ8sC4rGExj3eK6gpgvOrPCuz8D7g0fHiivnsYNyVnjs2S4VIsAXyGt9Rr4zVspjlVn0xVm+SOzRFKFA7bcT8sXSjp3smx5jYFmY18Zuf8ZMkoURKCfB0+cwvMEIS1YoCQvvwvRN4voTbDScDxsx3wOQNplieh058TVOGgXF1/vi7B/9puB6NypfASMVBHPJAk7wfZAqi3toFAniQw84QK6rvYqunDRzuvn8Kn91DWu/FbiV4uWSzyxlTr0dElrySGQqXkIISyb7raHc46sEezRC05P1tmhtQjuM6dMMh0Sq3ew1o5EhOmE2eGCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KYA4gAvignZNrI/a66OA0MZfQZ3YmY3iRjY5MHs8jo=;
 b=H4nEXYlibbQLCo6GUTg9ZZby1Hcq/WQ16BdPomVYS5GbU0xwbtBvcuJotEpMEXTZ/D+J/8ILRIvH9Ww8awZzKqXzl9O27jQ29+0cbR4NUByDBmT9dx9PQNxycKN/Mb1rBY5N94tXZT/OVHLjEYTjJ9LLtlACw94BPdv+Fpnm3PyjeMtpv7GEWPidVQqBJ1skQQ8D417vyc6lBndBcBattqxrno92q+y/NT6/MxGpZcc/iPeGoJewOUzwSwrmZumOSG4KooLTwP1JzzKt+pUS3lOhgdpDPrk2XbPJJmt2T96HkzSCi8sxZ8+oisO62DQtn9h0iHTgbkBvBEW98EGTVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9KYA4gAvignZNrI/a66OA0MZfQZ3YmY3iRjY5MHs8jo=;
 b=DM1Iupd5vhnKcJOilG0ctvL1MWcas4C50guw4j8bLeCIJYEBkbG2n4CljhvVvWubAVf993lb2RryPzbWmoHuZRv3MDkPRO657eAVFxY3FMd58wPaBD2S4LbBEbOk4NnPIqCCFHKI+3ejZVG4rrHCQ07h1uzF7yzo2xoCyoOtqzw=
Received: from SA1PR06MB8209.namprd06.prod.outlook.com (2603:10b6:806:1c0::13)
 by PH0PR06MB7317.namprd06.prod.outlook.com (2603:10b6:510:3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 09:02:05 +0000
Received: from SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63]) by SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63%4]) with mapi id 15.20.5676.015; Tue, 27 Sep 2022
 09:02:05 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [EXTERNAL] Re: [yocto] nodejs do_compile eats all resources
Thread-Topic: [EXTERNAL] Re: [yocto] nodejs do_compile eats all resources
Thread-Index: AQHY0k4r4wx2UZdNvku1yu9m6NXZea3y+uXA
Date: Tue, 27 Sep 2022 09:02:04 +0000
Message-ID: 
 <SA1PR06MB820996C847BB91D26CBBB4A186559@SA1PR06MB8209.namprd06.prod.outlook.com>
References: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
 <SA1PR06MB8209B064AB1471F7B0AF432B86559@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj8NzbdA8gWocxcX6TOJTPhFbCSEuNOFOVcHDB-vcD2muA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8NzbdA8gWocxcX6TOJTPhFbCSEuNOFOVcHDB-vcD2muA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF8yMjBiMDVjOC0yNTM3LTQxZTgtYWZmNC1mYjZjNTIyZjk2?=
 =?utf-8?B?MjRfRW5hYmxlZD10cnVlOyBNU0lQX0xhYmVsXzIyMGIwNWM4LTI1MzctNDFl?=
 =?utf-8?B?OC1hZmY0LWZiNmM1MjJmOTYyNF9TZXREYXRlPTIwMjItMDktMjdUMDk6MDE6?=
 =?utf-8?B?MzhaOyBNU0lQX0xhYmVsXzIyMGIwNWM4LTI1MzctNDFlOC1hZmY0LWZiNmM1?=
 =?utf-8?B?MjJmOTYyNF9NZXRob2Q9U3RhbmRhcmQ7IE1TSVBfTGFiZWxfMjIwYjA1Yzgt?=
 =?utf-8?B?MjUzNy00MWU4LWFmZjQtZmI2YzUyMmY5NjI0X05hbWU9Q29nbmV4IOKAkyBH?=
 =?utf-8?B?ZW5lcmFsOyBNU0lQX0xhYmVsXzIyMGIwNWM4LTI1MzctNDFlOC1hZmY0LWZi?=
 =?utf-8?B?NmM1MjJmOTYyNF9TaXRlSWQ9YzEyMDA3YTQtODgyYi00MzgxLWIwNWEtYjc4?=
 =?utf-8?B?MzQzMTU3MGM3OyBNU0lQX0xhYmVsXzIyMGIwNWM4LTI1MzctNDFlOC1hZmY0?=
 =?utf-8?B?LWZiNmM1MjJmOTYyNF9BY3Rpb25JZD1lNDE5N2U0Ni05Njg1LTRlZTktYmI1?=
 =?utf-8?B?ZC1mMGQyODg3MmJiMjQ7IE1TSVBfTGFiZWxfMjIwYjA1YzgtMjUzNy00MWU4?=
 =?utf-8?B?LWFmZjQtZmI2YzUyMmY5NjI0X0NvbnRlbnRCaXRzPTA=?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cognex.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR06MB8209:EE_|PH0PR06MB7317:EE_
x-ms-office365-filtering-correlation-id: 85c82eab-08f8-4ed5-7d0d-08daa066f30b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sCU8UUuGjj4SlsA716vCuArKDxIxapcYo4UTutI3RAwRvYFhjkL9lFS+vlOhjG0vzHmvIQ+7PRrGWNRfN+yH7yWfP31nRg/qm7S9ulteA8BFi7NrRD/P1vKqoBQ/EKw6GNzNJUJhLvqrPeJZVSjIr5UGTJePKL3AxvgWtqqQUBxP+wMO4pO0ExOWMD0rO1oy76/2NvmNfbUiSmPyk0x7LGgrCt2uSYNpuZHFyYPmveL75D2dlve8VwgzyyymUV2uwtHNA+twpDimQoMPpGPIWUAdg9B5pQ0YRJ9Jk1l1j05CXq5ce92mlXNKKBu6lnvPOaXmonSM5IXhQhGxoR/nBGtJDyAoqqxWFbiXC0eszzxeI/3CD11isfyCVXsPBE/vJwVFhhHWdDcLugKp2WO7LF7j+nt+FrmJb+Fb5zc3e5aZ+S+FMoGAPTCeBIor2/TxX2918qb+Z0VcX/v+Quljf7i+mBNZzkQmQm4dJAa1pI7jENaDDON0G7ACuXQfKCIhT7jnJ0RS7v5SyoLgWhtnX9zveeu/jCk1csj9XAM97JpVuFVn+ZvIf81Uu8d9RDWeYC62sHT9nUqvUneaopk4tsLXuQoWaWi7fKOP46CCILsmyuTtTWH2n+sOWxBIfxKIXwhl0P8BPmYs5Fay337Vo2Cb/GZClZWzrkWjZLxYCf5YHDrKLoOfnb0rtTngPhtYygi4UGWDH7VhpoZXMKSGFfBnVzrpqTeBgiOIJzsbEJ5uvjfOJL7vPRaGdbrhcwIyU1gQC1GQG26UFbyQvIdntA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR06MB8209.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199015)(41300700001)(2906002)(4744005)(64756008)(66899015)(66476007)(86362001)(66556008)(76116006)(66946007)(4326008)(8676002)(26005)(316002)(5660300002)(9686003)(8936002)(52536014)(83380400001)(6506007)(33656002)(7696005)(71200400001)(478600001)(186003)(38100700002)(122000001)(38070700005)(6916009)(55016003)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MUJ3ZEphbFhWZ1k2TldSbHpHbmtEeXB2bVN4ek9MWElUeU9aMlBxRzJaUlRG?=
 =?utf-8?B?WURma0llellrSUxtbWdxc3gycHFQaXVMVk1hWnBnSTFmdjBuck8zdVo1Sm9y?=
 =?utf-8?B?MGJzUE9VbkxSc0hyOVdsZG1OQ0FMQ2xkcGZ2WEc1ajhFMlA0dHNqckxzdnZm?=
 =?utf-8?B?eHVJWllhVTZlVnhqWGVYYkZPaHJGZUVJd2Vzc2U1RERnOHpwRlZQcVJQNWVz?=
 =?utf-8?B?bjNhNzlhYW1VODg5OXg5TWJ6amxpOUN5eFZManVSUnJYZjg5bTBoaXM5RVd5?=
 =?utf-8?B?QXVJek0rS1BodHFXYm1qbnpCY1M3UVB2Y0FOOFo3cS9Pb0Z3S2xGRG1Ed1Zt?=
 =?utf-8?B?enBOWE45SVdTWVBIUE1LOHFZOXlXdHhTY3crZnJqdEZkelErckdOYzFxWXg5?=
 =?utf-8?B?YU1kdVd3NzBPTUdxS1c1aExqcEVVUUVkNExuVERKZ25ZUDIxYldHV1VXRnVu?=
 =?utf-8?B?eURlNUNER1ZIaFFITjVKTVA3ZDRMNGVML043QmdSMU9GWmZQRUZlWW9WM1VR?=
 =?utf-8?B?emUvRHcwWmZGekNQK0NyQm9LRG5JUGVEeDZ4clcwMjN2ajZSNC9BaGsyOTNT?=
 =?utf-8?B?Zjg3cXNZWG03Z1hCSG4yMnhydlBVTzhOZHpWOW5kSG11MXhVOFIwelFvUU5P?=
 =?utf-8?B?MDl3RkpCeUVhaDRkZFJvZzd2UHVJZFE2Nmw5VDV5ajJsblV3NEFwRHA0M0Jr?=
 =?utf-8?B?cUlraDlBVVl2bDBidlpzcHpNV0hzY0hwMTZqemh0eksxU1ZTclJEMWF4akg1?=
 =?utf-8?B?TEs5Smh0Nmw4Q2xEL05YcGdlSi81SnNRYVpGbzZBWDBQZXVKaXQ3MjJHTDdB?=
 =?utf-8?B?VkIxN0JkakFjbEIvMXpoRzlrZnViTDBPeWFyOGVhUDBNczZGbDcxYkU5Zytz?=
 =?utf-8?B?S3YzREIwRG9VaENQVzltV3dSbmwzVmxvZDdLYkNnVCtML1Y2ZUViUkZaQXIv?=
 =?utf-8?B?MzN3VUh1NFJMTW9YMVNmVUh3bFFHRlZMbnh5eWZ3UEpxRUJkeG8vT1YxYWR4?=
 =?utf-8?B?cVNBZHM3VlZFTHFWR09EWXpYZFhPbkxlV3pleXJBVVB4SVZ2NUs4QzJTQlA4?=
 =?utf-8?B?R3c0MEFXRWowblpiWFBhSFVrYi9JK0F3UGRZV3JOcVNiRHdwZVlEVWVHMktB?=
 =?utf-8?B?MTJQWmhkRExPa2M2VjNtQnp6VVJlUHlKOEdIVG1oRUVPS3padjhEdnFtS1Zv?=
 =?utf-8?B?RmxuR0kzajhiZjZ4cEd4TCtiMlAxeU9IOXZ0aCtzYzByZnBnNG1Zd2RDYldV?=
 =?utf-8?B?TmxzWC9zbGpLMzBFZElWT0lKTjhrZ3I5UGdlL05iWk0zd0tLS3pIMFNXMXFi?=
 =?utf-8?B?cWUvczZXWlhjTmM5ekxXd1dSY2k1TlRjWnhLbHpBTmUzOUZUcUhucWhrQXNV?=
 =?utf-8?B?MWM2UGYvMVdEMFBMLzdaZEtXUnhuZ3I1TG80MUJYMnRmeks0Wnp5ZUpZRHJ1?=
 =?utf-8?B?a21mNFcwQk8rNXFxQ1NkekNLUUtSUnFTdEFJc3B6bU5QN2s4WkZWZWhaVUxT?=
 =?utf-8?B?VjNIOUQ5QmNzVDFSK09XOVdPQ0VTTHlueGRDUXdhL0tWcmplQkNyeitjSnlR?=
 =?utf-8?B?TnFyMHNZZGJrbzM2SFd0aTgxNzZPb0hqdTVjdFk5ZVBVQWY4S3N3WUwzbWtS?=
 =?utf-8?B?VTl6bTlnbm5KSng4THN2alQxL3Vmd0FmUUQ1N1o2SEh6bW5xK3pzSkdSK3RG?=
 =?utf-8?B?dGczWWFlcGVlbnpmWGJSN1pqdWVFQVFxdnZ2SVZ3SE8wY3ZVVFVMa2NhcW5D?=
 =?utf-8?B?MFU3d1VGOTlrdER1TVAyM3U5NWFPOHFBZTAzbytzS0dyaU1qazlIUklwTFZy?=
 =?utf-8?B?NVhiWWFJUUpJMDBMcjVSb2FLanVYUHFObXYvZTdvRHBLeDBMSDhsTnBTTSty?=
 =?utf-8?B?M0R6a0Q2aDhwTC9rc3JaeTVtS0tFWlNSd3c1cWFKdDRYQU5ybldhTzl3V1Rs?=
 =?utf-8?B?WHUva1N6NUlaQ3phdmpkdXlRZVgvQmVpU0VURGxpYjFXSklabTlETzlpVHVs?=
 =?utf-8?B?MmNBN3Y2SXMyakVHL2oyVU5kQVAza2pFbjIzOVN4a1N2eTF6U2w2NW1MQ0Jo?=
 =?utf-8?B?SjJIbnd5WTdsNnVvQjVNUE1KLzVJYTVtOXg1ajVvNTc3YUhLbFdDaUJPVEpa?=
 =?utf-8?B?TUNnT3BIRk1ZMXlpZ1ZwTDVsS2FjNUZMRkhiYzVyOWora0tnR0JNQmF0N2F0?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR06MB8209.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 85c82eab-08f8-4ed5-7d0d-08daa066f30b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 09:02:05.0446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 s4b8ge1W/tTx76bqglRH/dHBoRZJiPPN790qvBdid+t5bAbJ1IiTEgpzsVoeE0BN5a9TptNILvwRnjx+W2xkikkTBwQBVLUbA5ET+xigkHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7317
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 09:02:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58179

PiBBbSBEaWVuc3RhZywgMjcuIFNlcHRlbWJlciAyMDIyIDEwOjUwIHNjaHJpZWIgQWxleGFuZGVy
IEthbmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5jb20+Og0KPg0KPiBEbyBrZWVwIGluIG1pbmQg
dGhhdCBQQVJBTExFTF9NQUtFIGNhbiBhbmQgc2hvdWxkIGJlIHNldCBwZXIgcmVjaXBlLCBzbyB5
b3UgY2FuIG1ha2UtbGltaXQgb25seSB0aGUgd29yc3QgaXRlbXMuDQo+IA0KPiBBbGV4DQoNClll
YWgsIEknbSBjdXJyZW50bHkgdXNpbmcNCg0KUEFSQUxMRUxfTUFLRSA9ICItaiAke0BpbnQob2Uu
dXRpbHMuY3B1X2NvdW50KCkgLyA0KX0iDQoNCkluIGEgLmJiYXBwZW5kIHRvIGxpbWl0IGl0LCBi
dXQga2VlcCBpdCBkeW5hbWljLg0KDQpPbmUgcXVlc3Rpb24gb3V0IG9mIGN1cmlvc2l0eSBvciBs
YWNrIG9mIHVuZGVyc3RhbmRpbmc6DQpCaXRiYWtlIG9mZmVycyBCQl9OVU1CRVJfVEhSRUFEUyB0
byBsaW1pdCAoSU1ITykgdGhlIG51bWJlciBvZiBiaXRiYWtlIHRhc2tzLCBlZyBwYXJhbGxlbCBk
b19jb21waWxlKCkgdGFza3MuIEVhY2ggb2YgdGhlc2UgaG93ZXZlciBzcGF3biB0aGUgY29tcGls
ZXIgd2l0aCBzZXZlcmFsIHBhcmFsbGVsIHRocmVhZHMgb2UudXRpbHMuY3B1X2NvdW50IChQQVJB
TExFTF9NQUtFIGRlZmF1bHRzIHRvIGNwdV9jb3VudCgpKS4gV2h5IGlzbid0IGl0IG1vcmUgY29t
bW9uIHRoYXQgd2UgZW5kIHVwIGluIGlzc3VlcyBkdWUgdG8gY3B1X2NvdW50XjIgdGhyZWFkcyBi
ZWluZyBzcGF3bmVkPyBTaG91bGRuJ3QgKHJvdWdobHkpIEJCX05VTUJFUl9USFJFQURTICogUEFS
QUxMRUxfTUFLRSBmdWxseSBsb2FkIHRoZSBDUFU/DQoNCkJlc3QgcmVnYXJkcywgYSBjdXJpb3Vz
IE9sbGkNCg==

