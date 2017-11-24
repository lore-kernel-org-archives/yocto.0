Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51DAAE00D14; Fri, 24 Nov 2017 06:30:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.48.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97439E00D0B
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 06:30:36 -0800 (PST)
Received: from G4W9120.americas.hpqcorp.net (g4w9120.houston.hp.com
	[16.210.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 9B44070;
	Fri, 24 Nov 2017 14:30:35 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) by
	G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 24 Nov 2017 14:30:31 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP
	Server (TLS) id 15.0.1178.4 via Frontend Transport;
	Fri, 24 Nov 2017 14:30:30 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.19) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.260.4; Fri, 24 Nov 2017 14:30:28 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0260.005;
	Fri, 24 Nov 2017 14:30:28 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Executing ptest using image test ?
Thread-Index: AQHTZMiqZG31xrUXyU68T7yj05pCKKMje2aAgAAS7BCAAAasgIAAAtQQ
Date: Fri, 24 Nov 2017 14:30:28 +0000
Message-ID: <CS1PR8401MB0840DD361F33937D9BD9DA71ED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
	<CS1PR8401MB0840B4C7DC656142180276BFED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<fb1def6f-9c04-dbfe-d15d-682a559e8cde@linux.intel.com>
In-Reply-To: <fb1def6f-9c04-dbfe-d15d-682a559e8cde@linux.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0839;
	6:lById4oqjlQTzEOFDCSdS30MHmdJWfirfppaZ/I1B9myy9BoVCQ4CZ1V/8oti1BM46lTbdOUeDVGH/hRiE0TY3nLO+BZPQ2YQUeEz+sw7s+l6UPyKj+6oOummTlwvVivRO4XRkSzMDGSNavMSFNUXQ2uozmpUWdaEyVvyM+cZuzTUxt39Gn0/0S4NzPR8lYZLhB+SXZIAAXaHjFpwDAw6u0keFX27BVvXBDwz0IGlYGWh/GWdaHvmCfEbLhhmRhFXOWJzI9wqUkJ7H/Yt8yRDzKwbwaCqwAXKxEFIyAOrGTPeaYSWbB4zatVm5jbQPfUfqPNzXP0PUUxX+c/0TUaU1kwVqUWy2eoMV5jtbsht7Q=;
	5:hahRoYnVR0X9k/SMdVrNfg+Uo3LqDRnZ8O+qoOdr6VFoKyInI2iUGAFDkNMLhmAWMemJggKiSueFqEvCdIFhzuWK89jTb9/o28J8obvg5urubFH9LwvHQOKB8thKQvujDM2CqVB+CaiE9m0xO/SjKAqTLueCgTeuRF9slefrbsM=;
	24:ZlRfzNow/TnwmMFDxUdOSlIkLhfOC6IKIYtkahyP39DsgPFyTKjvxdOVgmNIbD2RzASMbN4mOFJeXw3LewoLu9sWYbNL0OXBLf2CSOhLY2Q=;
	7:++C4IM/swMI806xtCCNwbfSHFegDsjIppsqmCC5aG1yHKBTWdAn/SJWRsnxpjLv73G7QZEHidDmpzkynG4pNE5tEQ656PslNxA1yRRX8IwFoc7g2XTGJ/A8ODV9+eGLFtksTWtH9qC997LQ953FiyU4lA/P/LFlwNVeJo3fveqo1YEcoJ35gaKSMshhF/ro56zJy2ouYMBRCu5XjVn9AwtmextkYtUNp3rJEg6Y6EG3LSEsyzZdekZT1+iuTJv9v
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(48565401081)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(2017052603199);
	SRVR:CS1PR8401MB0839; 
x-ms-traffictypediagnostic: CS1PR8401MB0839:
x-ms-office365-filtering-correlation-id: a3c4f4aa-4706-4a0f-470c-08d53347e915
x-microsoft-antispam-prvs: <CS1PR8401MB0839C527FBB750F1EC17E5F6ED260@CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(21532816269658)(222181515654134)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(3231022)(10201501046)(3002001)(93006095)(93001095)(6055026)(6041248)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123562025)(20161123564025)(20161123558100)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0839; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0839; 
x-forefront-prvs: 05015EB482
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(366004)(346002)(39860400002)(376002)(24454002)(189002)(199003)(55784002)(51914003)(76176999)(54356999)(316002)(50986999)(6306002)(97736004)(2950100002)(53936002)(9686003)(53546010)(110136005)(101416001)(74316002)(2900100001)(7736002)(305945005)(6116002)(2906002)(5250100002)(99286004)(25786009)(3846002)(189998001)(102836003)(66066001)(81166006)(68736007)(81156014)(3280700002)(478600001)(3660700001)(6246003)(106356001)(105586002)(93886005)(33656002)(966005)(86362001)(229853002)(8936002)(6436002)(2501003)(8676002)(6506006)(55016002)(14454004)(7696005)(5660300001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0839;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a3c4f4aa-4706-4a0f-470c-08d53347e915
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2017 14:30:28.7567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0839
X-OriginatorOrg: hpe.com
Subject: Re: Executing ptest using image test ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Nov 2017 14:30:37 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGEhDQoNCkkgd2FzIG5vdCB1c2luZyAtYyB0ZXN0aW1hZ2UsIGFuZCBJIGFsc28gdGhpbmsgdGhl
IERJU1RST19GRUFUVVJFIG1heSBiZSBpbmNvcnJlY3RseSBzZXQgaW4gbXkgY2FzZSwgSSB3aWxs
IHRyeSB0aGF0LCB0aGFua3MgZm9yIHRoZSBwb2ludGVyLg0KDQotLQ0KWWFubmljayBLb2VobGVy
DQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDogQWxleGFuZGVyIEthbmF2aW4g
W21haWx0bzphbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb21dIA0KRW52b3nDqcKgOiAy
NCBub3ZlbWJyZSAyMDE3IDA5OjIwDQrDgMKgOiBLb2VobGVyLCBZYW5uaWNrIDx5YW5uaWNrLmtv
ZWhsZXJAaHBlLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCk9iamV0wqA6IFJlOiBbeW9j
dG9dIEV4ZWN1dGluZyBwdGVzdCB1c2luZyBpbWFnZSB0ZXN0ID8NCg0KT24gMTEvMjQvMjAxNyAw
Mzo1OSBQTSwgS29laGxlciwgWWFubmljayB3cm90ZToNCg0KPiBJIGhhZCBwcmV0dHkgbXVjaCBk
b25lIGFsbCB0aGF0IGlzIGRvY3VtZW50ZWQgdW5kZXIgNC4yMSBvZiB0aGlzIA0KPiBkb2N1bWVu
dGF0aW9uLiAgSSBjYW4gZXhlY3V0ZSBteSB0ZXN0IHdpdGhpbiB0aGUgaW1hZ2UgdXNpbmcgDQo+
ICJwdGVzdF9ydW5uZXIiIGFuZCBJIHNlZSBpdCBQQVNTL0ZBSUwgYWNjb3JkaW5nIHRvIG15IHRl
c3QncyBjb250ZW50Lg0KPiBTbyB0aGF0J3MgZ3JlYXQsIGJ1dCB0aGUgcHJvYmxlbSB3aXRoIHRo
aXMgaXMgc3RpbGwgdGhhdCBJIG5lZWQgdG8gDQo+IG1hbnVhbGx5IGludm9rZSBxZW11IGFuZCBp
bml0aWF0ZSB0aGUgcHRlc3QtcnVubmVyIHNjcmlwdC4gIEkgd291bGQgDQo+IGxpa2UgdGhhdCB0
byBvY2N1cnMgZnJvbSB3aXRoaW4gdGhlIHRlc3RpbWFnZSB1c2luZyBJbWFnZSB0ZXN0IGFzIA0K
PiBkZXNjcmliZSB1bmRlciBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL0ltYWdl
X3Rlc3RzLiAgWWV0IGl0IA0KPiBzZWVtcyB0aGF0IHRvIGdldCBpbWFnZSB0ZXN0IHN1cHBvcnQg
SSBuZWVkIHRvIHdyaXRlIGFkZGl0aW9uYWwgcHl0aG9uIA0KPiB0ZXN0IHNjcmlwdHMgd2hpY2gg
SSBmZWVsIGlzIGV4Y2Vzc2l2ZSBhbmQgc2luY2UgdGhvc2Ugc2NyaXB0cyBhcmUgbm90IA0KPiBz
dG9yZSB3aXRoaW4gdGhlIHJlY2lwZSBmb2xkZXIsIEkgZmVlbCB0aG9zZSB0ZXN0IGFyZSBtb3Jl
IE1BQ0hJTkUgDQo+IHRlc3RpbmcgdGhhbiBwYWNrYWdlIHRlc3RpbmcuDQo+IA0KPiBJIHdvdWxk
IGxpa2UgdG8gdXNlIDEgcHl0aG9uIHRlc3QgdG8gZXhlY3V0ZSBhbmQgcmVwb3J0IHRoZSByZXN1
bHQgb2YgDQo+IG9uZSBvciBtb3JlIHB0ZXN0LCBpbiB0aGUgc2FtZSBhdXRvbWF0aWMgd2F5IGlt
YWdlIHRlc3QgZG9lcy4gIEkgDQo+IGNhbm5vdCBzZWUgb3IgY29ubmVjdCB0aGUgZG90IGJldHdl
ZW4gcHRlc3QgYW5kIGltYWdlIHRlc3QgYnkgcmVhZGluZyANCj4gYW5kIHJlLXJlYWRpbmcgc2Vj
dGlvbiA0LjIxLg0KDQpSaWdodCwgSSBzZWUuIFRoZSB1bmF0dGVuZGVkIHJ1bnRpbWUgZXhlY3V0
aW9uIG9mIHB0ZXN0cyBzaG91bGQgYmUgcGVyZm9ybWVkIGJ5IG1ldGEvbGliL29lcWEvcnVudGlt
ZS9jYXNlcy9wdGVzdC5weSwgSSBkb24ndCBhdCB0aGUgbW9tZW50IHJlbWVtYmVyIGhvdyB0aGUg
cGllY2VzIGZpdCB0b2dldGhlciBleGFjdGx5IHNvIHRoYXQgaXQgcnVucywgYnV0IEkgdGhpbmsg
aWYgeW91IGZvbGxvdyB3aGF0IGl0IHNheXMgWzFdIGFuZCBydW4gYml0YmFrZSAtYyB0ZXN0aW1h
Z2UgPGltYWdlPiB0aGVuIGl0IHNob3VsZCB3b3JrLg0KDQpbMV0NCiAgICAgQHNraXBJZk5vdEZl
YXR1cmUoJ3B0ZXN0JywgJ1Rlc3QgcmVxdWlyZXMgcHRlc3QgdG8gYmUgaW4gDQpESVNUUk9fRkVB
VFVSRVMnKQ0KICAgICBAc2tpcElmTm90RmVhdHVyZSgncHRlc3QtcGtncycsICdUZXN0IHJlcXVp
cmVzIHB0ZXN0LXBrZ3MgdG8gYmUgaW4gDQpJTUFHRV9GRUFUVVJFUycpDQoNCg0KQWxleA0K

