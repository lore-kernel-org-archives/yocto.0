Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.70])
 by mx.groups.io with SMTP id smtpd.web09.622.1630648111611810681
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 22:48:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=gsVd/Tb+;
 spf=pass (domain: optimeas.de, ip: 40.107.8.70, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nb+/PGiIUvgdYdOI/kmC9VgjWixwWzkATrzOWeZsd7od710EZculNbsf++XX3jbIGQU60epC8UAQuR7mT8E8vYnvH3h9r1eOWafCWx/fWR0fkKSY0tBH24UNIbzvAnugTQxmUiN8+23dcM+ekC3kCS4J6wPUjgSk5FyouK1PTE6iaZ7fwdkY13tihohalxbLrg3LP1gRz3YgQiP+l3DJ1ZowRlK3NWWAHmJSvAv+9yTIPJtsN754VDXRnIw0DTpjitycOyGORs95zyQfCaQydr4wXuj2fLyRgsnd8lbyz9QKQlmBWVfv8aouqOhQHudjFpwJEdZNogkskaj/2gS9OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VIlisN2lL0z9DMAxj+c8+gVyamvAufymgPKcRs+SzMs=;
 b=ckWuMZJF+dMx+BXZ+uxtHE8R/sl1kTWxgeD4j+YPmcsglUb0O0SQlGYC2FBlKz3Mu6aiHSEblUVDGo8zLjsXiBIVaGRmotZrqX4jBH3yhqLaSmTNgC7xdWUMPgYJH52TcoG55sdUF1fTuF4brhT2qOIPHVRkEJqzVTNCX+aj24jmbdIvgyXloAbUXrpmuayIsBLqS6578/2KjU3rU+xE2xaZgqc9ZGqex+Hp4+xlmIcCY5K+NRcu+CfabQZlmTwJ8oTBavYHCtizS++OAxgUG55kkGIo1+SDWrZJzP2JmwEy/QRvc3ws77BXqL5N7Yw8sDArlyKVzeYHrM0wjoaY6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VIlisN2lL0z9DMAxj+c8+gVyamvAufymgPKcRs+SzMs=;
 b=gsVd/Tb+jRZMjPBQIZdodnAoteG+Fm7DkWnxF4p3Bk21y/2GdTh/41idIxXBr+o7VeaZRgEQZMzEZU3Puz6Y7uKwKVjq5bAFR6RIXcTRfN/KGPjtrVkWy05bcHIoQlsezUSpJ+PV3iKX4V3nZiEi4hpe+42/s7tPGIVeADcguYs=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB2625.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:12e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Fri, 3 Sep
 2021 05:48:28 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 05:48:28 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Steve Sakoman <steve@sakoman.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Bug in dunfell branch because of commit "sdk: fix relocate symlink failed"?
Thread-Topic: [yocto] Bug in dunfell branch because of commit "sdk: fix
 relocate symlink failed"?
Thread-Index: Adef+bsvtxR1FwGdQnCwxf3KYliKuwACmH0AAADnEAAAH9nZ0A==
Date: Fri, 3 Sep 2021 05:48:27 +0000
Message-ID: 
 <AM0PR10MB3107BB856BCDCBB14D16394499CF9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAOSpxdYp6h9AAjMngMQvpwk+JegjS=RxHPGup7Rb5OaVX8HX1A@mail.gmail.com>
 <AM0PR10MB31076D389AF0932F57A0FD6399CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB31076D389AF0932F57A0FD6399CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac6d87f3-6b47-4eea-0f31-08d96e9e7420
x-ms-traffictypediagnostic: AM0PR10MB2625:
x-microsoft-antispam-prvs: 
 <AM0PR10MB2625A31816498909D6B2F9CF99CF9@AM0PR10MB2625.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:267;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 A/lj0uIvZuM/woEIOrgOEptmUoUQ8mrt0HHrYHOvtYCWNVk/miQhhtNdlfo262tUH0kjqHRLoU3P6SZb4MZX4fsgIGbiJstKyagXgZbAgbEu/Si8c46rlcCeYmtaK1G4YghzeDp7bbki49GJOU2ATxE6xFvNTMNnCxpN5SOSgZUUcpuxd7hixM/130xhYfYfOLbNg0J6AuN1KfUz7+I4XGPgsLRGCryFqH2zzmwIwQemqPcdN85BMVGsYs6TN7wvPb2sMPRdVn8xnFNPwxM2OYnLdzk+ehx57W2x0uDVDEEvXoh6M2ijNE0fCuVt0ouMHis/cOJxLkdkyjpuLeEFtxs15wCjOp49Pt6sw+/dzh3qtQ1j25R8O1tsjqmihwIoabVTlpOkdxZDcenoJLMB1aWzmIW35mRHX3tOIIZQJ8vmDlgAUXWpNU8HPrAUAJDLBl8UfHONL8z2MnQJIlsmo2vKZEaNdx/JC4Oo4/Mc8Lx3FQkSGiI7FAoZRbO4pzB87hXLqeQp8CmtAdEc1MOOKdUQkKsdqbqamDRH+btIL4NbCnwdO4uZYmlg8A9P/QAegzLnf6HwmUjFUFfBk/uj5TyPqGvMZFWzVlM7xNdIQ6qczRQT+za61Uuf1b1Fd8g9wPmQKi6PWn9j9mjzttvGvZYUf0WVCxV2BNR0yunjaQUKTcNcIynWmZvhRUME0kKqE4+kEiGDwmjE2u8Q1+/Q7ahdmAsne7Y33P/7KRxFUtyoc6T++lx7Gr7W6s/8ZJBvmSfLJdAa0jvmtWWzZP6JupU3LsUsPiRzVoZ+dQLbhTA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(396003)(376002)(366004)(346002)(39830400003)(33656002)(55016002)(7696005)(5660300002)(66946007)(6916009)(9686003)(478600001)(64756008)(316002)(38070700005)(71200400001)(8936002)(8676002)(86362001)(66446008)(66556008)(83380400001)(186003)(52536014)(66476007)(76116006)(2906002)(966005)(44832011)(4326008)(6506007)(53546011)(38100700002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?R0k0WmJ3d1BOaUpCUHd6dVF4TWFFRER5ZXVSU1JiSjluQVhvTEtyWlo1SkNO?=
 =?utf-8?B?WmxadGJzaWx0eE41OXhveU1JdmV6RVlQZm9pWlQ3UDJNNnBhMklWSktEMVNo?=
 =?utf-8?B?MHU5OTZSdDBNUTRjTVQvODFOYW1nK2J1Q2RvOGxRMHV2RklsbDhDN1gxQVJl?=
 =?utf-8?B?dGpDWFkrMVNqUnBQelhjY1g2VEw5dU5zV09jOFRITGNFQXFYeGhVSG1kWWhU?=
 =?utf-8?B?MzlNVjZSbGFDbFk4NGdKNWI4T2MwcVlmWVRXM21OTWJ2ekJqY0NuRVp3V3Rz?=
 =?utf-8?B?UGUxN3JtYklneHZmWGMzMTdOend2Qk1ydnhDVHJvejJNTXNHcWorSWFXNGVH?=
 =?utf-8?B?b3Z6bE9CTGt1UG5aZThmd2oxQ1duT2NRV1doRlMrYmc5OXhPMEQ0QkVvVVZh?=
 =?utf-8?B?N3k1eWdYRkIxeWxsZXZjenhwRGF1QVpuWlFML0lyd1pmTHAwenZWT1hsRHR4?=
 =?utf-8?B?SFh4aWhKTExuODZuQUxVRGRQbWV4ZmhZcXdHd2YwSFNVVnVkUmxwMXoya3lJ?=
 =?utf-8?B?WDkwNUFqUWtTQm9NTUx2WVVvNXBvQ3MxL3BLQ2V4emNYalJaVlZsQmM4bExt?=
 =?utf-8?B?ZTV5bGhZeTV4SFhXQytOOTN0eFlOTWkzRkNoVUhrSDU1dGh6L1ZkckhMWVRr?=
 =?utf-8?B?bitLd0JYeUZ2NE01aENJYXVwSVdNTGtXTm9lYVNFeEJ4bTRUUmJEeWVNTktK?=
 =?utf-8?B?a1VoNXh1dkxHYjhja2ozLzRQbjMxZ1FhZUZrOE81S0xpVy9FVlpQU09QOWJo?=
 =?utf-8?B?MUVPRlVGSTAwVlVKcElhSVRmNjhuSmZnSnMyY05Cam14WTNhNytlYnhkTEZn?=
 =?utf-8?B?ZHZwREFZcE1DWk44MnpUVXpiVEZuWC9EdHRxbVoyZ01TK0pZWE1mSTlsaGJF?=
 =?utf-8?B?V2FoZEhQUEdqdTNwb2VOUy85YzIwNm1GVW1qTmxPQXVSa2JUM3JoL29WV2RE?=
 =?utf-8?B?OURDSTdLV1ZZdSs3cGUrQW5hVXNuZU9jNWZoYVMyUERxL0xpUjF5UVRHNlA1?=
 =?utf-8?B?UEF4WDYyRXg5cFk5anpHeXJMQk5WMmM1TEh4dXpFNEVCUjg1R0p4N2FVZThu?=
 =?utf-8?B?K1p3cE1JSUk3eWx0bXBlVWl3bW05NmthOWZpSnVka05lZk51aEdvSnJjSHJl?=
 =?utf-8?B?Yk5MOHhodFMyV25yN1JPaXoya3RoRnc3SjBob1JRQ05LdktidkRQY3hsckhN?=
 =?utf-8?B?YmF2ckZvNXdoMUtxbGh5bzBqdExNanJwMS9seEhGM0NjdlF6NFZCVm5nblBE?=
 =?utf-8?B?NTRVUm5Pa0dPc2p5TTRQT3NNWVBYUFNQKzE5QlJCWmV2WVNyTlF0cy9vSXZh?=
 =?utf-8?B?eXVPM2JnT2k5eDc5dTJHSWRTZTJBSDVOdndnSWUycDJ1bDBsdEZiNEdwdzFJ?=
 =?utf-8?B?WkRXOSswNXB0TWFVaGVKUGtQclZZOFJtVW4wYVVqaERXT21iWWpmRElnMVc5?=
 =?utf-8?B?OHJvc3hSMVhEcURrT0U0QUdySGtKV21NSU1sYXEwb3JNVjNLUm4zMTJLNlRG?=
 =?utf-8?B?Q0ViK3JtMHU1NXdDbnpyMVhZNFh0MzREUW9oSXN0a0k3dnNpVjdBdTI4bkpi?=
 =?utf-8?B?TS8xNUdzbHcrSXVkekpKWVhBQ2tkVGZUQUtEQ1ZwVnU0eWVxa0ZyVFI1aTRk?=
 =?utf-8?B?SURQMTZqNUZaZEVGY3BERzlDRDRHZWVwYjg0WTJRTDZnNyszZEZvYzlmYUs3?=
 =?utf-8?B?T2JLZ1VjYldJSG5mVEJUNTUrYTB6Q3VMWklOeGE0NkpESEgvcjVSMFhqaDlD?=
 =?utf-8?B?My9TU0FFb3ZEQ0UxR3VCY3VBSW9oRkVjSFFJZFlsU1RNZUxLSGRQaDNLcTVu?=
 =?utf-8?B?MGh6WFNEdTh3clo5M05OaUJGSzFMSlFmcm81QWNZeG1MNEFrbGJxamN3TldY?=
 =?utf-8?Q?NuHMMhqZzbMoB?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ac6d87f3-6b47-4eea-0f31-08d96e9e7420
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 05:48:28.0043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: np4bCUa/v+ZfTvTybTPeCIRZG18+t6K7nwPeBv/mQp5OP1lG8jFn959H30A9jlfIU8Zn1cIgLOULwZ15PvogwA5/jm/+uSEsBGc5/yrYDq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2625
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gU3RldmUsDQoNCkNhbiB5b3UgcHVzaCB0aGUgY29tbWl0IHRvIHRoZSBkdW5mZWxsIGJy
YW5jaCwgb3IgZG8gSSBuZWVkIHRvIG9wZW4gYW4gb2ZmaWNpYWwgYnVnIHNvbWV3aGVyZSwgb3Ig
d2hhdCBpcyB0aGUgY29ycmVjdCBwcm9jZWR1cmU/DQoNCkJlc3QgcmVnYXJkcywNCk1hdHRoaWFz
DQoNCi0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NClZvbjogTWF0dGhpYXMgS2xl
aW4gDQpHZXNlbmRldDogRG9ubmVyc3RhZywgMi4gU2VwdGVtYmVyIDIwMjEgMTY6MzYNCkFuOiBT
dGV2ZSBTYWtvbWFuIDxzdGV2ZUBzYWtvbWFuLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnDQpCZXRyZWZmOiBBVzogW3lvY3RvXSBCdWcgaW4gZHVuZmVsbCBicmFuY2ggYmVj
YXVzZSBvZiBjb21taXQgInNkazogZml4IHJlbG9jYXRlIHN5bWxpbmsgZmFpbGVkIj8NCg0KSGVs
bG8gU3RldmUsDQoNCnllcywgdGhhdCBjb21taXQgcmVzb2x2ZXMgdGhlIGlzc3VlLg0KDQpCZXN0
IHJlZ2FyZHMsDQpNYXR0aGlhcw0KDQotLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0t
DQpWb246IFN0ZXZlIFNha29tYW4gPHN0ZXZlQHNha29tYW4uY29tPg0KR2VzZW5kZXQ6IERvbm5l
cnN0YWcsIDIuIFNlcHRlbWJlciAyMDIxIDE2OjA5DQpBbjogTWF0dGhpYXMgS2xlaW4gPG1hdHRo
aWFzLmtsZWluQG9wdGltZWFzLmRlPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
CkJldHJlZmY6IFJlOiBbeW9jdG9dIEJ1ZyBpbiBkdW5mZWxsIGJyYW5jaCBiZWNhdXNlIG9mIGNv
bW1pdCAic2RrOiBmaXggcmVsb2NhdGUgc3ltbGluayBmYWlsZWQiPw0KDQpPbiBUaHUsIFNlcCAy
LCAyMDIxIGF0IDI6NTUgQU0gTWF0dGhpYXMgS2xlaW4gPG1hdHRoaWFzLmtsZWluQG9wdGltZWFz
LmRlPiB3cm90ZToNCj4NCj4gSGVsbG8sDQo+DQo+IHRoZSBmb2xsb3dpbmcgY29tbWl0IG5lZWRz
IHRoZSB2YXJpYWJsZSBTREtfQlVJTERfUEFUSCB3aGljaCBkb2Vzbid0IA0KPiBzZWVtIHRvIGV4
aXN0IGluIHRoZSBkdW5mZWxsIGJyYW5jaDoNCj4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9y
Zy9jZ2l0L2NnaXQuY2dpL3Bva3kvY29tbWl0L21ldGEvZmlsZXMvdG9vbA0KPiBjaGFpbi1zaGFy
LXJlbG9jYXRlLnNoP2g9ZHVuZmVsbCZpZD1kNmY0MGJlMjliZjU2YTgzNWY1ODI1NjkyYTIyMzY1
ZjA0DQo+IGFlYjZjMyBUaGlzIGxlYWRzIHRvIGNvdW50bGVzcyBtZXNzYWdlcyBiZWluZyBkaXNw
bGF5ZWQgZHVyaW5nIHRoZQ0KPiBpbnN0YWxsYXRpb246DQo+DQo+IHNlZDogLWUgZXhwcmVzc2lv
biAjMSwgY2hhciAwOiBubyBwcmV2aW91cyByZWd1bGFyIGV4cHJlc3Npb24NCg0KSXQgYXBwZWFy
cyB0aGF0IGR1bmZlbGwgYWxzbyBzaG91bGQgaGF2ZToNCmh0dHBzOi8vZ2l0Lm9wZW5lbWJlZGRl
ZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUvY29tbWl0Lz9pZD1iYzRlZTU0NTM1NjBkY2VmYzRhNGVj
YzU2NTdkZjVjYzE2NjZlMTUzDQoNCkNvdWxkIHlvdSBzZWUgaWYgdGhpcyByZXNvbHZlcyB0aGUg
aXNzdWU/DQoNClN0ZXZlDQoNCj4gU2hvdWxkbid0IHRoZSBwcm9jZXNzIGJlIGFib3J0ZWQgd2l0
aCBhbiBlcnJvciBtZXNzYWdlIGF0IHRoZSBmaXJzdCBwcm9ibGVtPw0KPg0KPiBNYW55IGdyZWV0
aW5ncywNCj4gTWF0dGhpYXMNCj4NCj4NCj4gDQo+DQo=
