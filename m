Received: from JPN01-TY1-obe.outbound.protection.outlook.com (JPN01-TY1-obe.outbound.protection.outlook.com [40.107.140.120])
 by mx.groups.io with SMTP id smtpd.web10.792.1574667308577335922
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Nov 2019 23:35:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@renesasgroup.onmicrosoft.com header.s=selector2-renesasgroup-onmicrosoft-com header.b=YPsfZoYi;
 spf=pass (domain: renesas.com, ip: 40.107.140.120, mailfrom: stephen.lawrence@renesas.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CE70gw299baorV4/vBkKniHiLeKTr7KglBvivxflYyxrrjhdQY//W/B8kL+lx7EisI39bLoVrFCvy+shqgsbrEB0VKByLEjV6XSjHN3X0ijaB/RAomxWj3Ncoye7HxZSR5R9BZsNR4kAkBX8Z5dm6pfEvqbzK8XW2ZIonE6DkFTxHkUYIZRHIjqG7A6MnxP43Jrg4kBf3ZvaBlWDdK8vGGQXpZnbiI4hc1zDJEM3imfjlsuKGSW8T98LPSUY6Knxy+q47Hzpm42C9yd2qGFMRVJqM5PD8+6ZjZe40mwj/p0CIZ8SNElYjFrXYNhaOIqVgnOqkiK62bbcDKxDduKvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kEfC0BhfWq2lqmPZLTtjkXv6Bh4euZjyXYB8H2Ko3p8=;
 b=nktIihmsF03t5S1/gqnjpyjGFWj+tGgi/7RBkwGKABMaFY9h9wrkQm53gugQ33fZ/3wqBB23H7V3N52LATHbZYIyUJpYelq3ulzNUgLbOcDpPW7OWC4D2bIAJGrc9kL8ebc7uHmgKnV/C2zZmm6oElEz1WuIK6zapo7NCAcZ3g9WlSG1cKR8uHoVjuA7jmS9Z5vCo8eNEkvucpRyzjX7MbxdUDI9PoG7w8emZ5SGrBHUwd2XJquu2RUuJ/K0/3jfCrg/pBmwLWnIbSqVxpHRsNpK727J184j8K2bY/Rl3v5Ggl2cRLWHRppAtXZUTSg9qg2n1FYzo2ChuqOw5U00sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kEfC0BhfWq2lqmPZLTtjkXv6Bh4euZjyXYB8H2Ko3p8=;
 b=YPsfZoYiFgNuVbBpRs/DRcQbBxVwmFKLBef9AeNycUhHAFA0UDvuI3jNgmKqS93/kKn8o9c+7LUowAdPpFuDS0Vofep5mxPTVTxDgf7gdc9TI6PFzN3uBG1zkzH8mDIvarR8bzQ0ER5LDfLJ69UjNRiEVy7MiD+qanuVKUtTnRw=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.177.12) by
 TYAPR01MB3840.jpnprd01.prod.outlook.com (20.178.138.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Mon, 25 Nov 2019 07:35:06 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
 ([fe80::9c3f:d3fb:ef6e:5f05]) by TYAPR01MB2031.jpnprd01.prod.outlook.com
 ([fe80::9c3f:d3fb:ef6e:5f05%4]) with mapi id 15.20.2474.022; Mon, 25 Nov 2019
 07:35:06 +0000
From: "Stephen Lawrence" <stephen.lawrence@renesas.com>
To: "aaron.chun.yew.chan@intel.com" <aaron.chun.yew.chan@intel.com>, Anibal
 Limon <anibal.limon@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [RFC] Yocto Autobuilder and LAVA Integration
Thread-Topic: [yocto] [RFC] Yocto Autobuilder and LAVA Integration
Thread-Index: AQHUd9bxZiLKOOeFGku4+/lZBuNDjaVH7moAglN8zQCAAgo1gIAAXKEg
Date: Mon, 25 Nov 2019 07:35:05 +0000
Message-ID: 
 <TYAPR01MB203104BB8D1C28FD3C64DD2C924A0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: 
 <CA+_Aqivq7XN8Q_fu43EFwhWs377vduoR9D5gVGBqS7gJgzKxNw@mail.gmail.com>
 <446afa92a1440c604e2074ab70f506fe3e46a0d5.camel@linuxfoundation.org>
 <AA9B40170ABA1047B45E714CB2B866B7069B514E@PGSMSX103.gar.corp.intel.com>
 <CA+_Aqis35mG154_4Jzhk_o0txdri=otjfqq678nBSpRNEx-xUA@mail.gmail.com>
 <CA+_AqivQ-4E+AMaSr07sPM8EqkwfMkiKYn4=m3jsSVQ_iESnBw@mail.gmail.com>
 <MN2PR11MB449328BB3D241C45B5578F90ED4A0@MN2PR11MB4493.namprd11.prod.outlook.com>
In-Reply-To: 
 <MN2PR11MB449328BB3D241C45B5578F90ED4A0@MN2PR11MB4493.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [87.74.75.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 14e34b5e-40cb-4144-5a42-08d77179fdde
x-ms-traffictypediagnostic: TYAPR01MB3840:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: 
 <TYAPR01MB3840BA09AA6B24DCEB006DDE924A0@TYAPR01MB3840.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(346002)(376002)(396003)(366004)(136003)(199004)(189003)(11346002)(71190400001)(6506007)(478600001)(6306002)(446003)(256004)(71200400001)(2906002)(14454004)(44832011)(102836004)(9686003)(14444005)(4744005)(52536014)(66066001)(8936002)(99286004)(110136005)(7736002)(186003)(6246003)(305945005)(66446008)(4326008)(81166006)(81156014)(64756008)(26005)(5660300002)(3846002)(966005)(316002)(74316002)(66556008)(66476007)(76176011)(55016002)(7696005)(229853002)(66946007)(6436002)(25786009)(76116006)(86362001)(8676002)(2501003)(33656002)(6116002);DIR:OUT;SFP:1102;SCL:1;SRVR:TYAPR01MB3840;H:TYAPR01MB2031.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FSYNOjM5wA7+Aam3Tg3bKJR8KacbqCAZCtw3Q7q2KpuA+DAnFd5QbpQ1veRXZkZBgFFFpadLj1ildsbBLKtrB3XyYv5Ar2VG4OAbKQarQYJFDaC+6x/755RvyU7EardCdgzbRkeBHx1EJDK8kw9275SNYlORQD1bizOJ2AwJwAZW50R74onko2Olvh4OOK4XxbSi8yB8ylj7XYycYhmmpRojofOQXugVLeYplM8Rc20GdAby2RQsXd3OaggxF2Bc85qcTsKsgYw/O+9be1KvKG2vHUOin6XRAjizqg3fvPH28r5FxkwHYt9k3spMBjFh7MUKWCqRT+g8tpGIYhsGti2gC5nk89ns3jN2QV+Hy7CpgHasSf0qKcmFe9EOx9O0eRRog6cllI9kGMqBA6EO1PngMS3ENEQT1+bUWIX/vrbWqGnFjA+euHt9tX8n5wBcdDjNVB19KElLUGY6Lu8i37u88h67zhLAFrK4ta5vKfs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e34b5e-40cb-4144-5a42-08d77179fdde
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 07:35:05.9414
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jOeByZyoqzCo2Zktzb5Bc2buLA+nlg9QmuCqHPAu4BupBv7ToxW9eZ67o/Tniql08SkKLAy0VE8lFEgJDZQXFj/BlAF0CC31d15K3I6fLiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3840
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj5Gcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55
b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgQWFyb24gQ2hhbiB2aWEgTGlzdHMuWW9jdG9w
cm9qZWN0Lk9yZw0KPlNlbnQ6IDI1IE5vdmVtYmVyIDIwMTkgMDE6NDkNCj5UbzogQW5pYmFsIExp
bW9uIDxhbmliYWwubGltb25AbGluYXJvLm9yZz4NCj5DYzogeW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPlN1YmplY3Q6IFJlOiBbeW9jdG9dIFtSRkNdIFlvY3RvIEF1dG9idWlsZGVyIGFu
ZCBMQVZBIEludGVncmF0aW9uDQoNCj5PbiBhbm90aGVyIGFwcHJvYWNoIHlvdSBjYW4gYnJpbmcg
dXAgeW91ciBvd24gTEFWQSBzZXJ2ZXIgdGhydSBEb2NrZXIgLSBodHRwczovL2h1Yi5kb2NrZXIu
Y29tL3IvbGF2YXNvZnR3YXJlL2xhdmEtc2VydmVyDQo+V2UgaGFkIGFsc28gZXhwbG9yZSB0aGlz
IG9wdGlvbiBpbiB0aGUgcGFzdCBhbmQgaXRzIHdvcmtpbmcgZm9yIHVzLiBUaGlzIHdheSB5b3Ug
Y2FuIGhhdmUgYWNjZXNzIGNvbnRyb2wgYW5kIG1pbml0dXJlIGJvYXJkIGZhcm0gd2hpY2ggeW91
DQo+Y2FuIHJ1biB0ZXN0cyBvbiwgaWYgd2UgZG8gbm90IGhhdmUgdGhlIGhhcmR3YXJlIHdoaWNo
IHlvdSByZXF1aXJlIHlvdSBtYXkgc3RpbGwgbmVlZCB0byBoYXZlIGFjY2VzcyB0byBzdGFnaW5n
IGxpbmFybyBMQVZBIHNlcnZlci4NCg0KSW4gdGhlIGNhc2Ugb2YgdGhlIERvY2tlciByb3V0ZSB0
aGVyZSBpcyBhbm90aGVyIG9wdGlvbi4gS2VybmVsQ0kgbWFpbnRhaW4gbGF2YS1kb2NrZXIgWzFd
IGZvciB0aGUgY3JlYXRpb24gb2YgTWFzdGVyIGFuZCBXb3JrZXIgaW5zdGFuY2VzIHZpYSBEb2Nr
ZXIuIEl0IHdvcmtzIGFuZCBpdHMgYWN0aXZlbHkgbWFpbnRhaW5lZC4NCg0KWzFdIGh0dHBzOi8v
Z2l0aHViLmNvbS9rZXJuZWxjaS9sYXZhLWRvY2tlciANCg0KUmVnYXJkcw0KDQpTdGV2ZQ0KDQo=
