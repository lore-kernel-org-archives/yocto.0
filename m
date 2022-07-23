Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCF7C433EF
	for <webhook@archiver.kernel.org>; Sat, 23 Jul 2022 15:03:54 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.104])
 by mx.groups.io with SMTP id smtpd.web11.7045.1658588633539703892
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Jul 2022 08:03:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=jL1D2v8L;
 spf=pass (domain: sakuraus.com, ip: 40.107.243.104,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RhH0IP9WdaSkNRys10SkoQh4k+L2Z0DrzyQXpeyTJFFsgYog72LUnWYEixj6ThEi0N5J0IdCHLCdz+/oPep2N6zloepbr84UFCP31ZL1aEosqb9c54T2iDvT0OOGf7ySHVi1ckwNoW85MgG+5BcGtCFZ9qPprih34ZCbXb/pxqiuDIMrobEYLCwTiAgZbyx+h3BXvCIGPjJ3xT2tjZ8ee2RYanzI63XTBeCgHcycBp+x+lmzKb4GadDkvUGGVy/bIWOtsGDlqDGX4wFXAf3USPfMofa7vgAAko5DK/H7vAWgDu7rLwAoDpRojnn1fp6cr+Dpv4WR7e8p6wAwLxhEpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7SmyavA90mnW6Ba29YboIVLCxNIO5UTNNcLusaw8TQ=;
 b=XGgjj12VHeNBOYTKME4OCg7cszk6yTN/hfNpCC9rI8U34cbQUoev+LeHDslnretxGbFtwlV/9vrNTBHZJKu4LLy5NTPp3dijgzPvD2pRnxDjdaSxpVe84p3bZaURWUvxUX1xhRrKh2gExbfrlDRzzH+9vAsspfKb7b2QrFM7t0B9ZEcXNWH9sL2+LyaTc6HDWDkEj7LjaK3DXtvtb5AkBg267814e+VdJ789s4H00qmD8GWXsssL8o/d3EXi67y8Hizf1MBpGPEFBKhhleDKcAmpe6z7M5OlX+GxJ1wGLjvCIPuw5PEUD6OLXRXuiWUkvWGOEJXdKReViMHUJwPBsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T7SmyavA90mnW6Ba29YboIVLCxNIO5UTNNcLusaw8TQ=;
 b=jL1D2v8LMV1WRlDILc/2j71fMNJpb79zLD4T/9Spigml3KJmmOxWbk3jtslyCQF+gRXTJaeRhXMNcOE0q04DJ0dDMOtB6oL8vEb/mekoEyx9dvjHkazcjemjPF6oXMLU4ruBgG0OH2tm1+SHNfwtR7sTzty9PbNqYRA51cOehj0=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by BN6PR15MB1217.namprd15.prod.outlook.com (2603:10b6:404:e8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.20; Sat, 23 Jul
 2022 15:03:50 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%7]) with mapi id 15.20.5458.021; Sat, 23 Jul 2022
 15:03:49 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Adding and using user in more than one recipe
Thread-Topic: [yocto] Adding and using user in more than one recipe
Thread-Index: AdieD1df1BcSkp4iQdmPgSqjbDpx0AAHRpKAAB4NYmA=
Date: Sat, 23 Jul 2022 15:03:49 +0000
Message-ID: 
 <PH0PR15MB50551A7E4053014525F5C309CB939@PH0PR15MB5055.namprd15.prod.outlook.com>
References: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
 <CAMKF1srE40FXoPynBsUxtaOjj+BdJHu4SoNQXNMDFmFwjYvt0g@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srE40FXoPynBsUxtaOjj+BdJHu4SoNQXNMDFmFwjYvt0g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1149b402-1493-4c5a-a05e-08da6cbc8cb7
x-ms-traffictypediagnostic: BN6PR15MB1217:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UvooAMJxCY4zrCeufI8N5geaECMGftRvbLMxwbpdPWsaIm8q5reJOX3umYeHvGl7Ho9+jtLFIBQqJ+8Z2KwvWkKNyKhZm/Ll7SVJCVWGgkYrtKqWSP/ZdmJ4/uPXFHDgKMeClvpWLXBk9GiIGuCeoUodkf+GICy0Gwigheo9o6sp+D0xYYxrdK2DbRRzzN1vXgh3Ivk8V4a6OuM0V9Ko+4ELEBVGIh3Sw6SPd/3KKP4VBe5V1fx9lLHOISFtAdBbhCvcNq8LT0odgXZSU2grGdxRr1vW89j8EkAKjgzA/JzBNgiKZHjDwnDfMGQa581Ef+p67CeKCp/MPjduK6KCElWyEuLAO8y/9nRXwM1FqXQEx8bnut5ZiOr2sWha/SSaynQPC9IdfIJuoCcUgokhaUoeMr2z+UBOhd5tNwh1B8VS+a/HG5PWCwjjm+ko0z1zm07WLS+nSkbKlncSx5v/S+dDQv901Jyj9rQuX46Mww92TEiQAtXRhZ3NLuaOWhwHePh2SzkB64OxHLW6Kh+BaA70hatxAejDtPHIAKi6Yfpt2nrDeMvU2ZQFMlsg/ZrHfdYU5ZANmdueiL8rIcQAM3VGnJai1AtTWBrqojy2tv8eNARjnafMZ4RMNEoLEzUZE4rHqQ/e6flG/ji6LzpvJXsoJVRHZoSW1/pa6quZFyok2VPQgTgcY5wTTjd+bZY1ecK2zvxUl5U2zrGawevheLOj+VM/RPo6bgBtOq+SQxTK5Mv+e8+YTld2Ao4KwKhoRpe41KvMkEbY29+QeaurQKA3daABQmyojqLS71iMXtiCV6je2wjFARMpLXjPXzhdRLU6HCi2k04BRsIJNvXAUg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(136003)(39840400004)(366004)(376002)(86362001)(966005)(478600001)(186003)(38070700005)(26005)(33656002)(41300700001)(2906002)(71200400001)(5660300002)(53546011)(8936002)(9686003)(7696005)(52536014)(316002)(6506007)(122000001)(55016003)(6916009)(66446008)(66556008)(76116006)(66946007)(8676002)(4326008)(64756008)(83380400001)(66476007)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UzZ1R0JXYUNXd2dseFgrV3N3MVl4dS9WMmppNlVKbzZic3ROZjFDMEZXbXJQ?=
 =?utf-8?B?ZGFrMjB1RjM0WGxCU0V2R1BvUTh4VCt6VU96anBad0ZtTVFEWlpyeW5pbEZL?=
 =?utf-8?B?T3ZXUWYxV0IyRmpuRERoSGh4eFl3R1NLNTJPQU1xWnVaaGpjeU1WanlVNTJH?=
 =?utf-8?B?MHhrWlRtNlduNnFKV1JGaWV0NEN5Z1FyQ2IzUnA5QkdQdElBNU9LSnR4OWNZ?=
 =?utf-8?B?alQ0Rmo4endnbUNVNVE2VzlGOWxIUHQ5WVdHeXB5RUZiWjhUeFR3WVlMSzNj?=
 =?utf-8?B?RWQ3Wm4rdGZFMUx1Vk10U0RqM1FtNkNxMjVGOFE2OG95MVd5aWxyZzRlcE16?=
 =?utf-8?B?MDdGLzlWVlVZcktLMXBXZTMybGZ2MGlBSENweTQwaVg5U1lhUG1JK2tVQ1RC?=
 =?utf-8?B?VnYydjhqR0d0eDlUN1dROFZVVnJFaVpaUnJDaUptb3U2R3R5dXlTL1JBSWRz?=
 =?utf-8?B?UEkxMkV3cnRLQUpLc1NrNzNCZVY4RWxwTHkwSXFLTCtGM1FheVRGQTZ6MG5S?=
 =?utf-8?B?WVRYUVJlbG1yNjdaV0VEclMrcG8vU0N4VHplYnJPSUVTRWdHYStCdCtlQnFz?=
 =?utf-8?B?TzZDNWR1TUtJaEhiNWpPQjViM0J0RXozWDhoN1Qyc3lNRHp6YnYxWVA3dCsx?=
 =?utf-8?B?bEs0bDhONVBpY1NwS2gzdlh2bHBLZ29CQkRxNGFYQVhpN2I4TDhDWkFwU013?=
 =?utf-8?B?V0xnSENNMlRVSm5NK3dTNFpza05nQzkwY1pZMjFRdTQrcWptenVIQUlJTEQz?=
 =?utf-8?B?QTlkZHlxV2lNNCtuS0FIdVVaQTdWbWM1UCtMQkgzTXRaeURkOEVjdXRIY2k0?=
 =?utf-8?B?RG1jQ1lORURKOFlIekNrOW8wWDVrNFBoVmNIeUVjY29PL2Z2L3plVGNhNUpy?=
 =?utf-8?B?QmQ3WDRuR0E0YVI4eWVhZ2VNR3Uxbkxzb05FTU82RUU4Y212c0t1Zll4NURC?=
 =?utf-8?B?M0Rrck9OYzg2ZWl6aU9hR2dkNUxuYkNDVnMwREpiaDYrZnhvM3J2cUpIWmRm?=
 =?utf-8?B?OUcrcko3WE1LV1YxUlh6aHV4TXNLaGFpZ3hDcUI5UzBEWS9QL05wNjA3VXpE?=
 =?utf-8?B?ZTdqZTFQY241SGZrMENMeG1qZm56cE8rdW1jTXpDdFBTQjhZYnZFRUpnNHVi?=
 =?utf-8?B?ZEduV1BZTUhXSHlMa2VRRklDY05EblBRRDFSWEY1TVAyYmtUaEV4YnNGNUhi?=
 =?utf-8?B?SUdQNVlrRGxmMzg2QnI3THo3ZHhsLzA4TEJpd3ZyR01GZllMNnlQN3VYdDZ1?=
 =?utf-8?B?OE9VVVFmOFc3N0Z4eUxWZnV6Z05BcTNYZU9tS2VOT1dxRVBRK040SUNpcllj?=
 =?utf-8?B?OVkwKzFwL1FUZjJhdnFoSEFsc0licXh5L1ZvTzVYclB1M0gyQlNDeDdrR0Vo?=
 =?utf-8?B?SWhaUVhuY0N3aE9LYmFTZWxteDFBN3I2NHNTWk51S0taLzltUjdRalBQVDBw?=
 =?utf-8?B?NktOdldwM2lkKzJZRnYvUEtxcFBhUWJlQ2xSSmZQODMrYkM2dzVsL0F0aHgr?=
 =?utf-8?B?WUdHQ0d1bG52dDM3ZDRlYnpQRXhDUmtMMjlqTzdmZnZCczlRWWlFakdxbFYr?=
 =?utf-8?B?UEZHSmRaMEVUM2dUZlJPSWJjcm03OGtOMyszZkU4NlI1a243UTZGcUxBYzY2?=
 =?utf-8?B?czBlUEtBemJWTkt5ZzlNMWJSTkQ4NUVrL09PSFIyNTV3QTlXZFFTVXNEN0lD?=
 =?utf-8?B?alBCSWFVa0tSUEhrRWRyTDgySGFNU1c2VjRVRVh0WjZXU0R0VDFJdFZvSGJH?=
 =?utf-8?B?VDZuMHFwckpBalR0RXFwOWZoNUdyZDB6TkRhb3JZNWZaWW9iaE9nRXowNmlt?=
 =?utf-8?B?WXFlTDh3eWdXZjg0ejlMa1hITm9LYmZTTElZVVhHNmh5TzBSWFNJaCs4eE9I?=
 =?utf-8?B?dUZmS1M2SndmYmRidVhvSVdpYngvOExUUzBLVTZYNUplSHgyY2p6MmFxdUhF?=
 =?utf-8?B?SnN0cC8xVkQvcFRnd0FmTXYwa0tpcW5iWGlBdmVFQXF4Qk92b25HdTJzZS9t?=
 =?utf-8?B?Z3QycFdOZ3JBSE5SeklYaStuVUJtWVkvbzlXWENMTDNKRGY4WVVOTWVxVmJi?=
 =?utf-8?B?Z05mMHFNOFBDTUtsMzRpV3hZbEtOQURKK1dvelhRalIySmRsalUyQ1FJa3Ji?=
 =?utf-8?Q?fhOQ6OuLyEPvZ3bLkp+8lCH2x?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1149b402-1493-4c5a-a05e-08da6cbc8cb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2022 15:03:49.6686
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 +tWRAMg0YVNGUoM5zkugcmgXiUUahhNmO5w1b9xQ8dJOW1yV6JD625k6mWz4QK+3ZjGhHsSLhR0FwzmaJTvFUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR15MB1217
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Jul 2022 15:03:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57630

SGkgS2hlbSwNClRoYXQncyBvcmlnaW5hbGx5IHdoYXQgSSBoYWQsIGJ1dCBmb3Igc29tZSByZWFz
b24gSSBoYWRuJ3QgcHV0IGluIHRoZSB1c2VyYWRkIGxpbmUuIEknbSBhc3N1bWluZyB0aGF0IHRo
ZW4gYmVjYXVzZSB0aGlzIGlzIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGltYWdlIGdlbmVyYXRp
b24sIEkgY2FuIHRoZW4gdXNlIHRoZSBuZXcgdXNlciBpbiBhbnkgb3RoZXIgcmVjaXBlLiBJcyB0
aGVyZSBhbnl0aGluZyB0aGF0IEkgbmVlZCB0byBkbyB0byBpbmhlcml0IHRoZSBuZXcgdXNlciwg
b3IgaXMgaXQganVzdCB0aGVyZT8NCg0KVGhhbmtzLA0KR3JlZw0KDQo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+DQo+IFNl
bnQ6IEZyaWRheSwgSnVseSAyMiwgMjAyMiAxNzozOA0KPiBUbzogR3JlZyBXaWxzb24tTGluZGJl
cmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiBDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBBZGRpbmcgYW5kIHVzaW5nIHVzZXIgaW4gbW9y
ZSB0aGFuIG9uZSByZWNpcGUNCj4gDQo+IE9uIEZyaSwgSnVsIDIyLCAyMDIyIGF0IDU6MjMgUE0g
R3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPGd3aWxzb25Ac2FrdXJhdXMuY29tPiB3cm90ZToNCj4g
Pg0KPiA+IEhlbGxvIGxpc3QsDQo+ID4NCj4gPiBJ4oCZbSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBo
b3cgdGhlIGV4dHJhdXNlciBhbmQgYWRkdXNlciBwYWNrYWdlcyBhcmUgdXNlZA0KPiBhbmQgaW50
ZXJhY3QgaW4ga2lya3N0b25lLg0KPiA+DQo+ID4NCj4gPg0KPiA+IEkgbmVlZCB0byBhZGQgYSB1
c2VyIGFuZCBJIHdvdWxkIGxpa2UgdG8gYWxzbyB1c2UgdGhpcyB1c2VyIGluIGFub3RoZXIgcmVj
aXBlLg0KPiBUaGlzIGhhZCBiZWVuIHdvcmtpbmcgaW4gb3VyIHByZXZpb3VzIGJ1aWxkcyB1c2lu
ZyB2ZXJzaW9uIG9mIFlvY3RvIHVwIHRvDQo+IGhhcmRub3QuIFdlIGFyZSBpbiB0aGUgcHJvY2Vz
cyBvZiB1cGRhdGluZyB0byBraXJrc3RvbmUgYW5kIHRoZSB1c2VyIHN0dWZmDQo+IGhhcyBub3cg
YnJva2VuIGFuZCBJIGFtIG5vdCBtYWtpbmcgYW55IHNlbnNlIG91dCBvZiB0aGUgZG9jdW1lbnRh
dGlvbi4NCj4gPg0KPiA+DQo+ID4NCj4gPiBIb3cgZG8gSSBjcmVhdGUgYSB1c2VyIGluIG9uZSBy
ZWNpcGUgYW5kIHRoZW4gdXNlIHRoYXQgdXNlciBpbiBhbm90aGVyDQo+IHJlY2lwZT8gQ2FuIEkg
ZXZlbiBkbyB0aGF0LCBvciBkbyBJIG5lZWQgdG8gY3JlYXRlIHRoZSB1c2VyIGluIG1vcmUgdGhh
biBvbmUNCj4gcmVjaXBlIHdpdGggYSBoYXJkIGNvZGVkIFVJRCwgR0lEPw0KPiA+DQo+ID4NCj4g
DQo+IHlvdSBjYW4gZG8gaXQgaW4gaW1hZ2UgcmVjaXBlDQo+IA0KPiBpbmhlcml0IGV4dHJhdXNl
cnMNCj4gDQo+IElNQUdFX0ZFQVRVUkVTOnJlbW92ZSA9ICJkZWJ1Zy10d2Vha3MiDQo+IA0KPiBF
WFRSQV9VU0VSU19QQVJBTVMgKz0gIlwNCj4gICAgIHVzZXJhZGQgc2NyaWJibGVkZWVkb287IFwN
Cj4gICAgIHVzZXJtb2QgLXAgJyQob3BlbnNzbCBwYXNzd2QgLTYgZGlkZGxlRG9vNSknIHNjcmli
YmxlZGVlZG9vOyBcDQo+ICAgICB1c2VybW9kIC1hIC1HIGFkbSBzY3JpYmJsZWRlZWRvbzsgXA0K
PiAgICAgdXNlcm1vZCAtYSAtRyB2aWRlbyBzY3JpYmJsZWRlZWRvbzsgXA0KPiAgICAgdXNlcm1v
ZCAtYSAtRyBhdWRpbyBzY3JpYmJsZWRlZWRvbzsgXA0KPiAgICAgdXNlcm1vZCAtYSAtRyBzeXN0
ZW1kLWpvdXJuYWwgc2NyaWJibGVkZWVkb287IFwgIg0KPiANCj4gSFRIDQo+IA0KPiAtS2hlbQ0K
PiANCj4gDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+DQo+ID4gR3JlZyBXaWxzb24tTEluZGJlcmcN
Cj4gPg0KPiA+DQo+ID4NCj4gPg0KPiA+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+ID4gTGlu
a3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+ID4gWW91
IGF1dG9tYXRpY2FsbHkgZm9sbG93IGFueSB0b3BpY3MgeW91IHN0YXJ0IG9yIHJlcGx5IHRvLg0K
PiA+IFZpZXcvUmVwbHkgT25saW5lICgjNTc2MjgpOg0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTc2MjgNCj4gPiBNdXRlIFRoaXMgVG9waWM6IGh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC85MjU1NzA3MC8xOTk3OTE0DQo+ID4gR3Jv
dXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gPiBVbnN1YnNj
cmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWINCj4gPiBb
cmFqLmtoZW1AZ21haWwuY29tXQ0KPiA+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+ID4NCg==

