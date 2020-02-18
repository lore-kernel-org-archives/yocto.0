Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.137])
 by mx.groups.io with SMTP id smtpd.web12.4378.1582034813700724197
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 06:06:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=kzDCXZFJ;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.20.137, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijTqCDVz1p+yRNIm1djhJ169QPXa6vsW1Nqjp5SQkuhSmz7Lu3Wxvdcwd6se3yQLssXKVFsDGoe29cVWQfmn90/TqDSpFFYy8t+YIR4E9tkbiO20xySjWge3/kHnZUGgF5NCROAyINSc1O03lz8K6+qs7pH5lnEiBFtQSiSbMKR3SaXWYpJmm4EUOpQs9SW8a7vvH1UpJ3x4k2/acutS0rheB/xw8erLg3piX5gmZLe9HhFOKyfS2H+k4gTnqUTzLSVZ0dnkXcKvxpvGqH4q/W0gM7el8w4lOHqA0oAvUi9GPjpqSUhr076P+I8wprg84EtuBxUGMqnlaO0hlsholg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+bzeHyTz8rS51UXB1egemT2+craWdbCOo9cNj8WEKs=;
 b=bD1BAA7niKoaZwK3uaUqgRCzkM70cHraDds/YqBhYGZf+j7F56ZA3/VQ5PD0Z0vbI4ZLFrEUmoQ3Z3WB1RBo395TuVelACIRRuYpaSuh5eRlz8WhHEn7zJADsck4ziI1hIJp10F4XXjv1o6gDeEPs9oEE/IDkeo/j5glh0r6Kd9yHZBHq5Oo/Dr87mHCC1jd4z9BXi8uXuPJVjjgB2qqE2SNlL5ONAQbqWibafWM+MNXNbUNeB6cXRQNXEVvD8Ppmy6Dq7nNad6YNGx5IReJEFOSaT6B4iyptSFUczucm7Y5EUUGelFO0IEd5glplkfLjbgeUq2asZjnZeD2eJhi/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+bzeHyTz8rS51UXB1egemT2+craWdbCOo9cNj8WEKs=;
 b=kzDCXZFJzBv/4h7sF8pPfssyidszbFkU/QnWw5Zi4hDY/+qyinMHUuHs9CEhmbV4XcBvOAdcaEcOr6dShB+CcNA9lzivOXEiqFdQENF1iYgmYvX2K/eHxVwvSPM+roqRm1O5ZsirGi0BC02/8LEcLk/K1MNP3Az7kEXOB3PrLe8=
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com (52.134.81.153) by
 AM0PR03MB5921.eurprd03.prod.outlook.com (10.255.28.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Tue, 18 Feb 2020 14:06:51 +0000
Received: from AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::7cac:cd3b:c3f6:25f8]) by AM0PR03MB3714.eurprd03.prod.outlook.com
 ([fe80::7cac:cd3b:c3f6:25f8%6]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 14:06:51 +0000
From: "Hans-Ulrich Schlieben" <hu.schlieben@codewrights.de>
To: =?utf-8?B?RW5yaWNvIErDtnJucw==?= <ejo@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rauc@pengutronix.de" <rauc@pengutronix.de>
Subject: Re: Private: Re: [yocto] #yocto update the kernel with a rauc bundle
Thread-Topic: Private: Re: [yocto] #yocto update the kernel with a rauc bundle
Thread-Index: AQHV4c19cLI7xr3bDUG1EIRtnr+ID6gYEoaAgAgJ6uWAAOLqcA==
Date: Tue, 18 Feb 2020 14:06:50 +0000
Message-ID: 
 <AM0PR03MB3714AE8A8592D7A0E7853B83FE110@AM0PR03MB3714.eurprd03.prod.outlook.com>
References: <f52c462f-8f88-f953-7383-18633de010ff@pengutronix.de>
 <21810.1581944282288454644@lists.yoctoproject.org>
 <8178103e-c35d-461d-c485-d6b64753641b@pengutronix.de>
In-Reply-To: <8178103e-c35d-461d-c485-d6b64753641b@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [193.158.100.19]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66798480-2a4b-4378-b5d3-08d7b47bcd0c
x-ms-traffictypediagnostic: AM0PR03MB5921:
x-microsoft-antispam-prvs: 
 <AM0PR03MB592193802DCACEDE2ED8211AFE110@AM0PR03MB5921.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(346002)(366004)(199004)(189003)(6916009)(81156014)(8676002)(86362001)(7696005)(8936002)(71200400001)(4326008)(81166006)(6506007)(2906002)(76116006)(54906003)(508600001)(55016002)(5660300002)(186003)(33656002)(26005)(66476007)(66556008)(66446008)(64756008)(9686003)(52536014)(66946007)(966005)(45080400002)(15650500001)(53546011)(66574012);DIR:OUT;SFP:1102;SCL:1;SRVR:AM0PR03MB5921;H:AM0PR03MB3714.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +fDtj3wRhWQeoEE+yoVxf+cCZJBeI/Ni8cUgQd2opyE8yP+Q9ykCJSJqxSEKpUhfXF62F6/ZLjcffwqpeI5TSAEKMw1G1uLaTM8AkSUYSYKS2FFdIdPerJiOawfeGpNhuJVCMjfgsJR63bvmKofXu3hKW2OUDd9et/UIYG7XTFVJb+0Bj+yBYyn16QQZscXRY3ZQPsvRMdMNW/oVJilOqsqpELy7Y0ie2an/D8kI042Sp5P/Exfih26n2Nqmqq2gilF2wGw8HISRdjh68hEPpQYcZL/PJkVmJIYxxxBVSaySnS91pn0M8VdqJP1//t6mSjnJvppV2dINt+KQQkkd+N2GeZzxN9Ry7PsQj8OGZBD7qS4cJrUsqYEOhcNomYJksk02SfRAWTKiBCuALSCpJ0D+U33eNjE8b4Aa4hBN2tPxL7Up7IclrEgbPWXVniABcKjchBuG0/3U/KG2JB1Wpivfin0hIY0GcHdEfFQpCEeCWECxantkf8neNIjT5BGN9DhBNKtph3f+qNUJy+CMcw==
x-ms-exchange-antispam-messagedata: 
 aZ36K0SR5T22PLrtfrpAXYR8K1Yb8TcUt0o3DF7/QH2DFny5dQEyXe8NnUo58dbOcU5txIYdvaYwEty1BoqLSNbPEdmhC8Y1s0CiEwZuJLj9OS2qwAYp5wOQ0zs8IB/Q5MGgeWrRHTU6CRgPl/g0kw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 66798480-2a4b-4378-b5d3-08d7b47bcd0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 14:06:51.0094
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j85DcvubpIFksZQ/vW3+k2hvR7UdoOm5jNjoZgFgNJyygrOWjOXWDo77tGzLVQBwYj9kP4mr9beKFyB5WF8TslbSV+T5vFaAfc7uzFkGer4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB5921
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRW5yaWNvLA0KDQpJIGp1c3QgYW5zd2VyZWQgeW91ciBmaXJzdCBtYWlsIG9uIHRoZSB3ZWJz
aXRlIGFuZCB0aG91Z2h0IHRoYXQgd2lsbCBhdXRvbWF0aWNhbGx5IHJlcGx5IHRvIGFsbC4gQWRk
ZWQgYWxsIGxpc3RzIG5vdywgaG9wZSB0aGVzZSBhcmUgY29ycmVjdC4NCg0KVGhhbmtzIHRvIHlv
dSBJIGZvdW5kIHRoZSBjdXN0b20gYXV0b21vdW50IGluIHRoZSBwcm92aWRlcnMgcmVjaXBlcy4g
VGhpcyBtb3VudHMgL2Rldi9tbWMwLjAgdG8gL21udC9tbWMuDQpBZnRlciB0aGUgbW91bnQgaXQg
c2VlbXMgdGhhdCBvbmx5IHdoZW4gSSBpbnN0YWxsIGEgbmV3IGltYWdlIHRoZSBiYXJlYm94IG1v
dW50IC9kZXYvbW1jMC4wIHRvIC9tbnQvbW1jMC4wIHdvcmtzLiANClJhdWMgLyBiYXJlYm94IHNl
ZW1zIHNvbWV0aGluZyB0byBjaGFuZ2UgYWZ0ZXIgYSBidW5kbGUgdXBkYXRlIHdoZXJlYXMgbW91
bnQgL2Rldi9tbWMwLjAgdG8gL21udC9tbWMwLjAgZmFpbHMgYW5kIHRoZSBmaWxlcyBhcmUgb25s
eSB2aXNpYmxlIGluIC9tbnQvbW1jLg0KDQovbW50L21tYyB3b3JrcyBpbiBib3RoIGNhc2VzIHNv
IEkgaGF2ZSBub3cgDQovbW50L21tYy9ib290Li4uIGZvciBzeXN0ZW0wIGFuZA0KL21udC9tbWMw
LjEvYm9vdC4uLiBmb3Igc3lzdGVtMQ0KDQpCZXN0IHJlZ2FyZHMNCg0KaHUNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEVucmljbyBKw7ZybnMgPGVqb0BwZW5ndXRyb25peC5k
ZT4gDQpTZW50OiBUdWVzZGF5LCAxOCBGZWJydWFyeSAyMDIwIDAxOjEyDQpUbzogSGFucy1VbHJp
Y2ggU2NobGllYmVuIDxodS5zY2hsaWViZW5AY29kZXdyaWdodHMuZGU+DQpTdWJqZWN0OiBSZTog
UHJpdmF0ZTogUmU6IFt5b2N0b10gI3lvY3RvIHVwZGF0ZSB0aGUga2VybmVsIHdpdGggYSByYXVj
IGJ1bmRsZQ0KDQpIaSBodSwNCg0KcGxlYXNlIGtlZXAgYXQgbGVhc3QgYW55IGxpc3QgaW4gQ0Mg
c28gdGhhdCBvdGhlcnMgY2FuIGJlbmVmaXQgZnJvbSB0aGlzIGRpc2N1c3Npb24sIHRvbyAoQm90
aCBSQVVDIGFuZCBiYXJlYm94IE1MIHdvdWxkIGZpdCBoZXJlKS4gSXQgYWxzbyBpbmNyZWFzZXMg
dGhlIHJhbmdlIGFuZCB0aHVzIHBvdGVudGlhbCBwZW9wbGUgdGhhdCBtYXkgaGVscCBoZXJlLg0K
DQpBbSAxNy4wMi4yMCB1bSAxMzo1OCBzY2hyaWViIEhhbnMtVWxyaWNoIFNjaGxpZWJlbjoNCj4g
SGkgRW5yaWNvLA0KPiANCj4gdGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBoZWxwIHdpdGgg
SU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIA0KPiBrZXJuZWwtaW1hZ2Uga2VybmVsLWRldmljZXRy
ZWUiDQo+IHRoYXQgZGlkIHRoZSB0cmljay4NCj4gDQo+IFdoYXQgaSBkbyBub3QgdW5kZXJzdGFu
ZCBpcyBob3cgYmFyZWJveCBoYW5kbGVzIHRoZSBtb3VudCBuYW1lcyBmb3IgbXkgDQo+IHR3byBh
bHRlcm5hdGUgYm9vdCBwYXJ0aXRpb25zLg0KPiBUaGUgYm9vdCBvbiB0aGUgZmlyc3QgcGFydGl0
aW9uIHdvcmtzIG9ubHkgdW5kZXIgL21udC9tbWMvOg0KPiANCj4gZ2xvYmFsLmJvb3RtLmltYWdl
PSIvbW50L21tYy9ib290L3pJbWFnZSINCj4gZ2xvYmFsLmJvb3RtLm9mdHJlZT0iL21udC9tbWMv
Ym9vdC9pbXg2cS1waHl0ZWMta3NwMDY2My5kdGIiDQo+IGdsb2JhbC5saW51eC5ib290YXJncy5k
eW4ucm9vdD0icm9vdD0vZGV2L21tY2JsazBwMQ0KPiByb290ZmxhZ3M9J2RhdGE9am91cm5hbCcg
d2Q9NjAgaXB2Ni5kaXNhYmxlPTEiDQo+IA0KPiB3aGVyZWFzIHRoZSBzZWNvbmQgd29ya3Mgd2l0
aCAvbW50L21tYzEvOg0KPiBnbG9iYWwuYm9vdG0uaW1hZ2U9Ii9tbnQvbW1jMC4xL2Jvb3Qveklt
YWdlIg0KPiBnbG9iYWwuYm9vdG0ub2Z0cmVlPSIvbW50L21tYzAuMS9ib290L2lteDZxLXBoeXRl
Yy1rc3AwNjYzLmR0YiINCj4gZ2xvYmFsLmxpbnV4LmJvb3RhcmdzLmR5bi5yb290PSJyb290PS9k
ZXYvbW1jYmxrMHAyDQo+IHJvb3RmbGFncz0nZGF0YT1qb3VybmFsJyB3ZD02MCBpcHY2LmRpc2Fi
bGU9MSINCj4gDQo+IEluIGJhcmVib3ggaSBzZWUgYm90aCByb290IGZpbGVzeXN0ZW1zIHVuZGVy
IC9tbnQvbW1jMC4wIGFuZCANCj4gL21udC9tbWMwLjEvLg0KPiANCj4gV2hlbiBpIHRyeSB0byBo
YXZlIGEgc3ltbWV0cmljYWwgY29uZmlndXJhdGlvbiBhbmQgcmVuYW1lIC9tbWMvIGludG8gDQo+
IC9tbWMwLjAvIGJvb3Qgb24gbW1jMC4wIGRvZXMgbm90IHdvcmsgYmVjYXVzZSBpdCBzdGlsbCBt
b3VudHMgdGhlIA0KPiBmaXJzdCBwYXJ0aXRpb24gYXIgL21udC9tbWMvLg0KDQpXaGljaCB2ZXJz
aW9uIG9mIGJhcmVib3g/DQoNCkl0IHNob3VsZCBiZSBzdWZmaWNpZW50IHRvIGVpdGhlciBzYXkN
Cg0KICBib290IG1tYzAuMA0KDQpvcg0KDQogIGJvb3QgbW1jMC4xDQoNCmFuZCBiYXJlYm94IHdp
bGwgYXV0b21hdGljYWxseSBtb3VudCB0aGUgcGFydGl0aW9uLCBsb29rIGZvciBhIGJvb3RzcGVj
IGZpbGUgdW5kZXIgL2xvYWRlci9lbnRyaWVzIGFuZCBhc3NlbWJsZSB0aGUgcmVxdWlyZWQgYm9v
dCBvcHRpb25zIGFuZCBrZXJuZWwgY29tbWFuZCBsaW5lIGF1dG9tYXRpY2FsbHkuDQoNCj4gV2hh
dCB0ZWxscyBiYXJlYm94IHRvIG1vdW50IGR1cmluZyBib290IG1tYyBhbmQgbW1jMC4xIGluc3Rl
YWQgb2YgDQo+IG1tYzAuMCBhbmQgbW1jMC4xPw0KDQpJcyB0aGVyZSBhbnkgY3VzdG9tIGF1dG9t
b3VudCB1bml0IGxvY2F0ZWQgaW4geW91IGJ1aWx0LWluIGVudiBwcm9iYWJseT8NCg0KDQpCZXN0
IHJlZ2FyZHMsIEVucmljbw0KDQotLSANClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IEVucmljbyBKw7ZybnMgICAgICAgICAgICAgICAgfA0KSW5kdXN0cmlhbCBM
aW51eCBTb2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly9ldXIwNC5zYWZlbGlua3Mu
cHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZ3d3cucGVuZ3V0cm9uaXgu
ZGUlMkYmYW1wO2RhdGE9MDElN0MwMSU3Q2h1LnNjaGxpZWJlbiU0MGNvZGV3cmlnaHRzLmRlJTdD
NjAyMGJjMDFlMDA0NDFkNjM0OTMwOGQ3YjQwNzI2ZDclN0MwOTc0YWY5YjM1MmI0MzdjYjYwNmU5
ZjI0MmMwYzIyNyU3QzAmYW1wO3NkYXRhPWRjVHlkTDZkODlYM3RCRWVCYUZsek1xSjYlMkZwRmtH
cnpOUlE2YXRrcExSayUzRCZhbXA7cmVzZXJ2ZWQ9MCAgfA0KUGVpbmVyIFN0ci4gNi04LCAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy01MDgwIHwNCkFt
dHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEy
MS0yMDY5MTctNTU1NSB8DQo=
