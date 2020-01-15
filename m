Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.121])
 by mx.groups.io with SMTP id smtpd.web10.6821.1579094815754984458
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 05:26:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@codewrights.onmicrosoft.com header.s=selector2-codewrights-onmicrosoft-com header.b=B2juCLWX;
 spf=permerror, err=syntax error for token:  (domain: codewrights.de, ip: 40.107.20.121, mailfrom: hu.schlieben@codewrights.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTFW4Jo1CTzBL6qin5UsJIiELRw0+skkM2jrNct9NlhiJfcToz5xFqHztOp7MnbtxR/NfNGmi594ej83bZcBsx/gCFTxtUqKW9drYJ82v/FI3nWfqyDFUnN0wwVe0a3r5+iQC7aNH2CeyeNgTncdPHBjzG5t+galo8+DqHEHio2yKFGIO6r9KiAsmrhVQ0B1ukkcqdc+pRyB10GyHZP24/MrHF/prSOIwf5XCkDnXDTCi9gG+mDkEPKpAGx77bhoQx7/myRdi/ffGtkRWxjSTthJ5S9LtMYMerJwmcDbEJ3tkGSdS+vwA1vir5a3sY1sQT4wAW2sbkBrQ+CQ9U0apg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VtCUD9vKyGXgCCRnQXgS4E4+d0h8YZk0AZ1jwJDyE8k=;
 b=dWRpRFmNEOZrbB48ZSqF4AH+oEb/dHfJ6Y+oysROT9TQD76O/gt6P3eW/Zh9A/Ukn+Eo/OmMqQMQh6iGV3KRwooMqj2UgiYPODlRB1gaTMMH7+4DJtmzCttWOvYSPpoAqY1IAeMCRXGEDJ+kYHsxCMivISKrJIq4Z8QQP/nqTWoWDCUoj1P/hJqOLGZ9RkltlG5/a0JOgoETpsa8Bc+24bUGcw5i/e4QNQny8pRpD/bN3hEosu5gkvLKTNXf7XrkX3cY7rWNdz7eFDyYrU4npmf1QL4EqidhkyEZYIFDSj+yzElNM8OjknrZtKWoROYDmU8l4rPfAnz4aYF5PXnGXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=codewrights.de; dmarc=pass action=none
 header.from=codewrights.de; dkim=pass header.d=codewrights.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codewrights.onmicrosoft.com; s=selector2-codewrights-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VtCUD9vKyGXgCCRnQXgS4E4+d0h8YZk0AZ1jwJDyE8k=;
 b=B2juCLWXLuB18LmFII9F8bsfHZEo/1rLQy/N+tnbwsyw7PQVUdHuzlequKZr/AUgme+Ig55ithwLznS93OM3WlCwEFAmTAFZTxw5upIcXdmo6HJXM5cV6bPExweecaoBz32oBMlqBxcZLtPHAgFUcsS/o/S+anOFQVHCR2FQxIg=
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com (20.179.250.218) by
 DB8PR03MB5787.eurprd03.prod.outlook.com (20.179.250.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 13:26:53 +0000
Received: from DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5]) by DB8PR03MB5498.eurprd03.prod.outlook.com
 ([fe80::c08c:9e5e:7d97:9af5%3]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 13:26:53 +0000
From: hu.schlieben@codewrights.de
To: Enrico Joerns <ejo@pengutronix.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Topic: [yocto] #yocto bootchooser: Cannot get state 'state'
Thread-Index: AQHVy5zDappxekgkwkum1XN2BadeWqfrsOsAgAABYsA=
Date: Wed, 15 Jan 2020 13:26:53 +0000
Message-ID: 
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
In-Reply-To: <1579093362.13056.13.camel@pengutronix.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hu.schlieben@codewrights.de; 
x-originating-ip: [62.154.199.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a04b179-82f9-41e4-74c9-08d799be9618
x-ms-traffictypediagnostic: DB8PR03MB5787:
x-microsoft-antispam-prvs: 
 <DB8PR03MB5787DD3458AC5F5268F711A8FE370@DB8PR03MB5787.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(396003)(346002)(39830400003)(376002)(136003)(366004)(199004)(189003)(110136005)(8676002)(7696005)(81156014)(81166006)(71200400001)(66446008)(52536014)(76116006)(66946007)(66556008)(66476007)(508600001)(64756008)(316002)(4326008)(5660300002)(26005)(55016002)(9686003)(186003)(6506007)(2906002)(8936002)(86362001)(53546011)(33656002);DIR:OUT;SFP:1102;SCL:1;SRVR:DB8PR03MB5787;H:DB8PR03MB5498.eurprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: codewrights.de does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FAXNjX0L8S0i7DU319eWfOXEKui9bJ8GidtI4xIH5Ajf4NiyXDoRd+0FvNmPAT698jHPqDaJSd/qYmwTwNpUE53ky0mKcvrIM3M6ZCudeV7AnAJZciQdghu8Y/JlUfl/qsXNrvgLCna+irx902txbHrmsFN8CFDZuTNW+sLRebCK2yNSl4Eqk6PpIFDIPKmp6Ds+5DyBzsu9srJv5MZIBkMPdn5DNPyyWMuKKhyClLtqumD2MVdgry/MiFU3J8sIxNR1RqzyiQ27svkcxQvvPAc0OfY6vWZV0ZuX8zfUNsIyA5G2IGjQCTeFNT5OhCP0gASv1Kw54n2AEvOGiWqi4vnXQ8b2KGJbbJrmKZaxHgrSO2DoE8grKW4msvzLuiVXqIlid2ggxugMmebvf+3IoXVYlQgSOIxseX5KeK6UkkQqNPIUzGa0BkZxMXTW0xPu
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: codewrights.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a04b179-82f9-41e4-74c9-08d799be9618
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:26:53.5486
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0974af9b-352b-437c-b606-e9f242c0c227
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3acgyymBv7ULPA+L3avZnCYR91BWP8O6uxKzY0w5Uv3Q4u5k1N5KHHQife0XI9i/C7Kfett/77xVF7xtnS76Q5wIiuMqP9JPEw5cP5P0wm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR03MB5787
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRW5yaWNvLA0KDQp0aGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGhlbHAuIA0KSSdtIHVz
aW5nIGJhcmVib3hfMjAxOS4wMS4wLXBoeTQtcjcuMCBub3cuIEluIHRodWQgSSB1c2VkIGJhcmVi
b3hfMjAxNy4xMi4wDQpUaGUgaW1hZ2UgaXMgYnVpbHQgdXNpbmcgbXkgb3duIGltcyBsYXllciB3
aGljaCBkZXBlbmRzIG9uIGNvcmUtaW1hZ2UtbWluaW1hbA0KTEFZRVJERVBFTkRTX2ltcy1sYXll
ciA9ICJjb3JlLWltYWdlLW1pbmltYWwgb3BlbmVtYmVkZGVkLWxheWVyIHBoeXRlYy1sYXllciIN
Ckl0cyB1c2luZyB0aGUgbWV0YS1waHl0ZWMgTGF5ZXIgYW5kIGEgY3VzdG9tIGxheWVyIGZyb20g
cGh5dGVjIG5hbWVkIG1ldGEta3NwMDY2My4NCkZvcmdvdCB0byBtZW50aW9uIHRoYXQgcmF1YyBp
cyB1c2VkIHRvbywgd2hpY2ggbW92ZWQgZnJvbSAxLjEgdG8gbm93IDEuMi4NCkp1c3QgY2hhbmdl
ZCB0aGUgTEFZRVJTRVJJRVNfQ09NUEFUIHRvICJ6ZXVzIiBoZXJlIHRvIGNoZWNrIHdoZXRoZXIg
eW9jdG8gemV1cyB3b3Jrcy4NCg0KSXMgdGhlcmUgc29tZSBpbmZvIHdoYXQgdG8gY2hhbmdlIGlu
IHRoZSBkZXZpY2V0cmVlIGFuZCBzbyBvbiB3aGVuIG1vdmluZyB0byB3YXJyaW9yL3pldXM/DQpJ
biB0aHVkIHRoaXMgd29ya2VkLg0KDQpUaGFuayB5b3UNClJlZ2FyZHMNCg0KaHUNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBFbnJpY28gSm9lcm5zIDxlam9AcGVuZ3V0
cm9uaXguZGU+IA0KPiBTZW50OiBXZWRuZXNkYXksIDE1IEphbnVhcnkgMjAyMCAxNDowMw0KPiBU
bzogSGFucy1VbHJpY2ggU2NobGllYmVuIDxodS5zY2hsaWViZW5AY29kZXdyaWdodHMuZGU+OyB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvIGJvb3RjaG9vc2VyOiBDYW5ub3Qg
Z2V0IHN0YXRlICdzdGF0ZScNCj4gDQo+IEhpLA0KPiANCj4gdGhpcyBpcyBtYWlubHkgYSBiYXJl
Ym94LXJlbGF0ZWQgcXVlc3Rpb24sIHRodXMgSSdkIHN1Z2dlc3QgYXNraW5nIGl0IG9uIHRoZSBi
YXJlYm94IE1MLg0KPiANCj4gW2NjLWluZyBiYXJlYm94IG1haWxpbmcgbGlzdF0NCj4gDQo+IE9u
IFdlZCwgMjAyMC0wMS0xNSBhdCAwNDoxMCAtMDgwMCwgaHUuc2NobGllYmVuQGNvZGV3cmlnaHRz
LmRlIHdyb3RlOg0KPiA+IEhpLA0KPiA+IA0KPiA+IGJvb3RpbmcgdGhlIG5ldyB5b2N0byB6ZXVz
IHN5c3RlbSBtYW51YWxseSBieSAiYm9vdCBtbWMiIHdvcmtzIGZpbmUgDQo+ID4gYnV0IGRlZmF1
bHQgYm9vdGNob29zZXIgZmFpbHMgd2l0aDoNCj4gPiANCj4gPiBib290Y2hvb3NlcjogQ2Fubm90
IGdldCBzdGF0ZSAnc3RhdGUnDQo+ID4gTm90aGluZyBib290YWJsZSBmb3VuZCBvbiAnYm9vdGNo
b29zZXInDQo+ID4gTm90aGluZyBib290YWJsZSBmb3VuZA0KPiANCj4gTG9va3MgbGlrZSB0aGUg
c3RhdGUgbm9kZSBpcyBtaXNzaW5nIGluIHlvdXIgZGV2aWNlIHRyZWUuDQo+IFdoaWNoIHZlcnNp
b24gb2YgYmFyZWJveCBkbyB5b3UgdXNlPw0KPiBBbmQgZnJvbSB3aGljaCBsYXllciAvIHJlY2lw
ZT8NCj4gDQo+ID4gQnVpbGRpbmcgdGhlICJzYW1lIiBpbWFnZSBpbiB5b2N0byB0aHVkIHdvcmtz
IGZpbmUuIFRoZSBib290IHZhcmlhYmxlcyANCj4gPiBhcmU6DQo+ID4gDQo+ID4gKiBCT09UX3N5
c3RlbTBfLmRlZmF1bHQ6IDMNCj4gPiAqIEJPT1Rfc3lzdGVtMV8uZGVmYXVsdDogMw0KPiA+ICog
YWxsb3dfY29sb3I6IDANCj4gPiAqIGF1dG9ib290X3RpbWVvdXQ6IDMNCj4gPiAqIGJvb3QuZGVm
YXVsdDogYm9vdGNob29zZXINCj4gPiAgIGJvb3Qud2F0Y2hkb2dfdGltZW91dDogMA0KPiA+ICAg
Ym9vdGNob29zZXIuZGVmYXVsdF9hdHRlbXB0czogMw0KPiA+ICAgYm9vdGNob29zZXIuZGVmYXVs
dF9wcmlvcml0eTogMQ0KPiA+ICAgYm9vdGNob29zZXIuZGlzYWJsZV9vbl96ZXJvX2F0dGVtcHRz
OiAwDQo+ID4gICBib290Y2hvb3Nlci5yZXNldF9hdHRlbXB0czogIChsaXN0OiAicG93ZXItb24i
LCAiYWxsLXplcm8iKQ0KPiA+ICAgYm9vdGNob29zZXIucmVzZXRfcHJpb3JpdGllczoNCj4gPiAg
IGJvb3RjaG9vc2VyLnJldHJ5OiAwDQo+ID4gKiBib290Y2hvb3Nlci5zdGF0ZV9wcmVmaXg6IHN0
YXRlLmJvb3RzdGF0ZQ0KPiA+ICogYm9vdGNob29zZXIuc3lzdGVtMC5ib290OiBtbWMNCj4gPiAq
IGJvb3RjaG9vc2VyLnN5c3RlbTAuZGVmYXVsdF9hdHRlbXB0czogMw0KPiA+ICogYm9vdGNob29z
ZXIuc3lzdGVtMC5kZWZhdWx0X3ByaW9yaXR5OiAyMA0KPiA+ICogYm9vdGNob29zZXIuc3lzdGVt
MS5ib290OiBtbWMxDQo+ID4gKiBib290Y2hvb3Nlci5zeXN0ZW0xLmRlZmF1bHRfYXR0ZW1wdHM6
IDMNCj4gPiAqIGJvb3RjaG9vc2VyLnN5c3RlbTEuZGVmYXVsdF9wcmlvcml0eTogMjENCj4gPiAq
IGJvb3RjaG9vc2VyLnRhcmdldHM6IHN5c3RlbTAgc3lzdGVtMQ0KPiA+ICAgYm9vdG0uYXBwZW5k
cm9vdDogMA0KPiA+IC4uLg0KPiA+IA0KPiANCj4gUmVnYXJkcywgRW5yaWNvDQoNCg==
