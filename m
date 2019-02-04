Return-Path: <Thomas.Beaman@xerox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD360E00A1A; Mon,  4 Feb 2019 11:42:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.130.31 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Feb 2019 11:42:48 PST
Received: from esa3.xerox.iphmx.com (esa3.xerox.iphmx.com [68.232.130.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F05E009EB
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 11:42:48 -0800 (PST)
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
	NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
	by ob1.xerox.iphmx.com with ESMTP/TLS/AES256-SHA256;
	04 Feb 2019 13:41:44 -0600
Received: from BL0PR11MB3524.namprd11.prod.outlook.com (20.177.206.225) by
	BL0PR11MB3459.namprd11.prod.outlook.com (10.167.240.212) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.17; Mon, 4 Feb 2019 19:41:43 +0000
Received: from BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::2cc5:58c9:9fcd:1703]) by
	BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::2cc5:58c9:9fcd:1703%2]) with mapi id 15.20.1580.019;
	Mon, 4 Feb 2019 19:41:43 +0000
From: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] sun rpc missing in thud
Thread-Index: AdS8tQy5bTm+xm/2RJCbKNG0dbQKowAC08MAAAASY8A=
Date: Mon, 4 Feb 2019 19:41:43 +0000
Message-ID: <BL0PR11MB3524E7A25BA22733189F978BEB6D0@BL0PR11MB3524.namprd11.prod.outlook.com>
References: <BL0PR11MB352483DCBFDE53F27A888120EB6D0@BL0PR11MB3524.namprd11.prod.outlook.com>
	<CAMKF1sqD3YUrR13sXYZ5H6+ZSdcVivWd9mAtXopTUyk-AmizTQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqD3YUrR13sXYZ5H6+ZSdcVivWd9mAtXopTUyk-AmizTQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Beaman@xerox.com; 
x-originating-ip: [65.207.111.225]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL0PR11MB3459;
	6:0PfyXHCKdVCnSdW0E50DJaCt6VFUnwIxh3U5DXGZPgqYT4kQUDQtjMiNqoZLsGwaxNu03+bPpamdDcIXOTLPIIOSFsRlDpFRCUEavx2QGowtxZ7asiwufUO3ziNR+HknrW2t0ZG18sAOg9kjydA4cCB646z5V4Z2KxfNGpHpH5o6KsqunCe7MnUEpjMWyVp9EdyNqU9XW+U26VmJDN9vlEmneawD4i/eqYwu//tD8Z6qz/VhNG+3yiMXDzM49yBCD7zRsWmxdevRiYTmsKJ5696TlHP6Czi6N7A5vs889I1/dSByDRffwFMsmvruyk+6deoLy9MSRSwDiXxsKiW+pjo4X0FRoDLG5dZacvtGYTTZ4lbscf62042V5ilBE/+67/IKw0VKlxddQjb4RreNjW+I9D1f2MmxdapM2+USwvw5Z1BeNyYt2HG5syEinzLMjVIx2YuqWQrTaWP5an9m3g==;
	5:DQKe2L+bJhQl/xnFtuFSlpPC6An/r4hazHeT82KZBTAKAsI+KvnQNk4LIhN/IRdeoEsIkev5zfunsCgVB8eFwUON9+0WnuVyg0NH8mb1OM0aJK9fijxq0zygJeQDTEzJfeWelS2hzbxX4UfyFZKvd5p6wxWzfrtUqVzvu2ZYJjYUZn+ekVj9XBu2nrCiGp7yfYxgbA2lDAUZNAKwROSsmw==;
	7:bjhBGJsOCCYFYllMh0XqwRGDHtcQ1zEHhUBNGB4XbExs+g05n6Lm+bbYvF8iuLY5P8Objy4GngI73TuImpBDr7/CJ/m0g5cWR1I6lC/EiGZw/jo1bvTjvwFnAvpke5Oj5V9t597BDNDt8dWEJ5wBqg==
x-ms-office365-filtering-correlation-id: 96396ae1-546a-4c90-ade6-08d68ad8caab
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR11MB3459; 
x-ms-traffictypediagnostic: BL0PR11MB3459:
x-microsoft-antispam-prvs: <BL0PR11MB34598B9CA54F30FFCA5A9335EB6D0@BL0PR11MB3459.namprd11.prod.outlook.com>
x-forefront-prvs: 0938781D02
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(39860400002)(346002)(376002)(366004)(396003)(189003)(199004)(43544003)(13464003)(54906003)(81156014)(53936002)(102836004)(186003)(53546011)(7696005)(68736007)(33656002)(76176011)(9686003)(229853002)(74316002)(6506007)(97736004)(6306002)(26005)(2906002)(256004)(6916009)(6436002)(55016002)(486006)(446003)(11346002)(3846002)(6246003)(86362001)(476003)(107886003)(6116002)(4326008)(66066001)(105586002)(25786009)(71200400001)(106356001)(99286004)(71190400001)(72206003)(7736002)(305945005)(8936002)(8676002)(478600001)(14454004)(966005)(81166006)(316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB3459;
	H:BL0PR11MB3524.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: F0pPXL4rbm21YM8XnmWsSOrxu10rPLhsHypV7FuAPWHqLofsIKhdi/E/D5yikfWa9L8wxCoCt3iP59ixIRbsDd0EwuTFQ/SlszpwWpYHlZ2beC0Fh38l/IgDhHrDrli4Bn6w5gfbI1+FCk8M/NHHyIGWS9eWI+holF0Ld/DaTHW7YcdgcC3mkMqnwa0G6garwBX/C3AZRewg3q+Gck+21H6yMAusIRqQd+gjf9LQtub7/uPig8orzSy6Sx+kzxn5bj8kYIqn075HFbP/ZZUjLLw/aV7fznR4TX2yK0Z+lnNCpAZ0y0oBjDibfm2rqGpguIig8zIvmS+OQqvqL8aqHiXZBB2nMw90ov3QxVnqf3qaC0HCWhNKrscoHYCsDR1+FXmvPK1Qg7EQ3JZtklV9mOC3eilrEGkEo0Rzv1F74ns=
MIME-Version: 1.0
X-OriginatorOrg: xerox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96396ae1-546a-4c90-ade6-08d68ad8caab
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2019 19:41:43.6501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c2a31bd-e798-488d-986b-90156ac8f29b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3459
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Beaman,
	Thomas" <Thomas.Beaman@xerox.com>
Subject: Re: sun rpc missing in thud
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
X-List-Received-Date: Mon, 04 Feb 2019 19:42:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJh
ai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogTW9uZGF5LCBGZWJydWFyeSAwNCwgMjAxOSAyOjMy
IFBNDQo+IFRvOiBCZWFtYW4sIFRob21hcyA8VGhvbWFzLkJlYW1hbkB4ZXJveC5jb20+DQo+IENj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIHN1biBycGMg
bWlzc2luZyBpbiB0aHVkDQo+IA0KPiBPbiBNb24sIEZlYiA0LCAyMDE5IGF0IDEwOjQ0IEFNIEJl
YW1hbiwgVGhvbWFzDQo+IDxUaG9tYXMuQmVhbWFuQHhlcm94LmNvbT4gd3JvdGU6DQo+ID4NCj4g
PiBIaSwNCj4gPg0KPiA+DQo+ID4NCj4gPiBJIGFtIGNvbnZlcnRpbmcgdG8gdGh1ZCBhbmQgaGF2
aW5nIHRyb3VibGUgZmlndXJpbmcgb3V0IGhvdyB0byBnZXQgc3VuIHJwYw0KPiB0byBpbnN0YWxs
IGluIG15IHN5c3Jvb3QuDQo+ID4NCj4gPg0KPiA+DQo+ID4gSSBjYW4gc2VlIHRoYXQgdGhlIHN1
biBycGMgZmlsZXMgYXJlIHN0aWxsIGluIHRoZSBnbGliYyBnaXQgIGJ1dCBJDQo+ID4gY2Fubm90
IGZpZ3VyZSB3aGF0IHJlY2lwZSBvciBvcHRpb25zIEkgbmVlZCB0byBnZXQgdGhlbSBpbmNsdWRl
ZCBpbiBteQ0KPiA+IGRpc3Ryby4gKEkgc3RpbGwgaGF2ZSBzb21lIG9sZCBsZWdhY3kgY29kZSB0
aGF0IG5lZWRzIHRoZW0pDQo+ID4NCj4gDQoNCkl0IG1heSBiZSB0ZWNobmljYWxseSBwb3NzaWJs
ZSB0byBtb3ZlIHRvIHRpLXJwYyBidXQgSSBoYXZlIGFuIG9sZCBjb2RlIGJhc2UgdGhhdCB1c2Vz
IHN1biBycGMgYW5kIG5vIG9uZSBrbm93bGVkZ2VhYmxlIGluIG1ha2luZyBjaGFuZ2VzIHRvIGl0
LiAgDQoNCkkgYW0gaGFwcHkgdG8gdXNlIGEgZ2xpYmMgYmJhcHBlbmQgIHRvIGJyaW5nIHRoZSBv
bGQgcnBjIGJ1dCB0aGF0IGlzIHRoZSBwYXJ0IEkgbmVlZCBoZWxwIHdpdGguIEkgYW0gbm90IGZh
bWlsaWFyIHdpdGggdGhpcyByZWNpcGUgYW5kIGhvdyBpdCBpcyBhbGwgcHV0IHRvZ2V0aGVyLiBX
b3VsZCB5b3UgYmUgYWJsZSB0byBoZWxwIG1lIHdpdGggYSBzYW1wbGUgYmJhcHBlbmQgZmlsZSBh
cyBhIHN0YXJ0aW5nIHBvaW50IHRvIHdvcmsgd2l0aCA/DQoNCj4gaXMgaXQgcG9zc2libGUgdG8g
bW92ZSBvdmVyIHRvIHRpLXJwYyA/IHdlIGhhdmUgbW92ZWQgYXdheSBmcm9tIGJ1aWx0LWluIGds
aWJjDQo+IHZlcnNpb24gb2YgcnBjIGFuZCByZXBsYWNlZCB0aGUgbmVlZCB3aXRoIHRpLXJwYywg
eW91IG1pZ2h0IGhhdmUgdG8gZXhwbGljaXRseQ0KPiBlbmFibGUgaXQgdmlhIGEgZ2xpYmMgYmJh
cHBlbmQgYW5kIHRha2UgY2FyZSBvZiBwYWNrYWdpbmcgYW5kIHBvdGVudGlhbA0KPiBjb25mbGN0
cyB3aXRoIHRpLXJwYy4NCj4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lv
Y3RvDQo=

