Return-Path: <hernan_gutierrez@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238D1E00CB6; Wed, 11 Oct 2017 23:07:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3560 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Oct 2017 23:07:28 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0100.outbound.protection.outlook.com [104.47.42.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C4CE00CA6
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 23:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HP.onmicrosoft.com;
	s=selector1-hp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Ds4mhBsAo3W+q4GW5OQ4hZw+NdRSjeRjuXggiMjP6IU=;
	b=OJcZd+X/xQpOcSx4toKmSXircWaLf188fqF/tmAtNZOlEEDyj+dcq6ypKInIQp+z9lA1/qVn5aw9pe/IgDJpgkTYloL9NTIIyU1yfgL+kBFUav1kNOhxLtrL9wZwnEPhLi12dFnrm9+APOOaoQHIiWCazm0iZyk1htHCTP5bKg8=
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.144) by
	TU4PR8401MB1037.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.141) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 12 Oct 2017 03:33:53 +0000
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b]) by
	TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b%18]) with mapi id 15.20.0077.020;
	Thu, 12 Oct 2017 03:33:53 +0000
From: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to use two recipes to satisfy different PROVIDES --
	gpu support
Thread-Index: AdNC22ZV8TpVY/p+Rj+GscF2Iu86HQAGiESAAAUnmjA=
Date: Thu, 12 Oct 2017 03:33:53 +0000
Message-ID: <TU4PR8401MB1040E74F1B4A2945C4F846A9994B0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
	<CAMKF1sox3ztaxD5NRMHKemO0WMWgiZ7C+EEECXhdpa9N_tSSgA@mail.gmail.com>
In-Reply-To: <CAMKF1sox3ztaxD5NRMHKemO0WMWgiZ7C+EEECXhdpa9N_tSSgA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hernan_gutierrez@hp.com; 
x-originating-ip: [174.27.101.12]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB1037;
	6:+B6sZ+DcJAyz6O51Y9qR7HQmQEvaCS/RUnGf9yUZQQnaOsEeeDek3FIUENvyG3Pyk4ezM1/Ja7I9p3K4VeUM9euCtxxrRA48RJ5aPuZa6c6f7H8y/HT1ZJHWB1YE2jertgsrPRJGDLsj6STct1EzJdrId3+BaAnlrCJBZbQJqFgsEECoVzHcvP+ckCSO9/Nsi/1N9KnyKd+iGy4+3Y802ywBJUNWzMMEMK8RZDk4sY4nG0s01xqL87UhF0J3MZ4oRjmdDyOuVbnycQIaAZAQwuxruuGgAYwsIwiCv0qrzo30zj3AScZwixm3B4hI/FlWwbB1pju1xX7/SMTvb8vG7Q==;
	5:+Bix4rUdxQhW4hb8I6XoMUCEVnTmJcHHZU4oe5OsV0iPXk7eZ0Dslaif5tvlrim1PWPraTduLEuXbB5UWs3k6kjXCigcCAYiIRSkPufgwG6yx4aYf60hULTb+Xy7Ogxb5slLTOAhbe82kp1BkB94LQ==;
	24:841mIVlxxiIjLFTYVL8X6jmvSHFMVu94tBzNAk4GVSjnPTyiZrPu5d8Hj4GtUpJr36QQ7FFVsdPu+CbSB4D8x1PNYdsx/h+koGaHL/PFkCk=;
	7:lJIVNHFz9pp2XBFPAtKAs7atX9aIMRvBItnYmI53X6isXjNQY4nufujXDqB93/leQRi4bc4NiVNuA+XrHcXy+KhRXZzcp6XRbhMb2ar/lb+/X3Eil3nsg3EUpdFaC7MSxP2+UqmVO1RcunyPeoT8xMFpS+EmFrYRsWvyX9rz7jnpqIzc0cVpeqW0wintTqvgVn3YpkGBcYA61uV1Oh9vvsNvKKPPgBCKX0ppnd7LzoM=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 1e5b2bdb-c195-498b-e90c-08d511221004
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:TU4PR8401MB1037; 
x-ms-traffictypediagnostic: TU4PR8401MB1037:
x-exchange-antispam-report-test: UriScan:(166708455590820)(73583498263828);
x-microsoft-antispam-prvs: <TU4PR8401MB103760B555C45460419BB1D8994B0@TU4PR8401MB1037.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123562025)(20161123560025)(20161123564025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR8401MB1037; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR8401MB1037; 
x-forefront-prvs: 04583CED1A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(346002)(376002)(51914003)(13464003)(189002)(377454003)(199003)(6602003)(24454002)(55016002)(229853002)(2900100001)(6506006)(74316002)(14454004)(2906002)(316002)(305945005)(6306002)(5660300001)(6246003)(86362001)(9686003)(189998001)(25786009)(478600001)(966005)(53546010)(81156014)(4326008)(7736002)(8936002)(68736007)(97736004)(6916009)(6116002)(102836003)(101416001)(76176999)(50986999)(54356999)(33656002)(53936002)(7696004)(8676002)(6436002)(3280700002)(3660700001)(66066001)(2950100002)(39060400002)(5250100002)(81166006)(105586002)(3846002)(106356001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB1037;
	H:TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2017 03:33:53.6391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1037
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to use two recipes to satisfy different PROVIDES -- gpu support
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
X-List-Received-Date: Thu, 12 Oct 2017 06:07:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmFqLA0KDQpUaGFua3MgZm9yIHRoZSByZXNwb25zZS4NCg0KSXMgdGhlcmUgYW4gZXhhbXBsZSBv
ZiB3aGF0IHlvdSBtZW50aW9uZWQgYmVsb3cgd2hpY2ggaXMgb3BlbiBzb3VyY2U/DQoNClNvIGZh
ciBteSB0d28gcmVmZXJlbmNlcyBoYXZlIGJlZW4gRnJlZXNjYWxlIGFuZCBNYWxpLiBJIGZvdW5k
IG1hbGkgbXVjaCBzaW1wbGVyIHRoYW4gRnJlZXNjYWxlLCBob3dldmVyIE1hbGkgR1BVIGRvZXNu
J3QgcmVhbGx5IGhhdmUgYSByZWZhY3RvciBvZiBtZXNhLCB0aGV5IG9ubHkgZG8gYSBzaW1wbGUg
YmJhcHBlbmQgdG8gbWVzYSB3aXRoIA0KdGhlIFBST1ZJREVTX3JlbW92ZSBzdGF0ZW1lbnQgSSBz
dGF0ZWQgaW4gbXkgb3JpZ2luYWwgbm90ZS4NCg0KRm9yIHJlZmVyZW5jZSBoZXJlOiAgaHR0cHM6
Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9tZXRhLW1hbGkNCg0KLS1IZXJuYW4NCg0KDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWou
a2hlbUBnbWFpbC5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAxMSwgMjAxNyA3OjAx
IFBNDQo+IFRvOiBHdXRpZXJyZXosIEhlcm5hbiBJbGRlZm9uc28gKEJvaXNlIFImRCwgRlcpDQo+
IDxoZXJuYW5fZ3V0aWVycmV6QGhwLmNvbT4NCj4gQ2M6IHlvY3RvIDx5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBIb3cgdG8gdXNlIHR3byByZWNpcGVzIHRv
IHNhdGlzZnkgZGlmZmVyZW50IFBST1ZJREVTIC0tDQo+IGdwdSBzdXBwb3J0DQo+IA0KPiBPbiBX
ZWQsIE9jdCAxMSwgMjAxNyBhdCAzOjE1IFBNLCBHdXRpZXJyZXosIEhlcm5hbiBJbGRlZm9uc28g
KEJvaXNlIFImRCwNCj4gRlcpIDxoZXJuYW5fZ3V0aWVycmV6QGhwLmNvbT4gd3JvdGU6DQo+ID4g
SGksDQo+ID4NCj4gPiBXZSBoYXZlIGEgR1BVIGluIG91ciBzeXN0ZW0uIFdlIGNyZWF0ZWQgYSBy
ZWNpcGUgdG8gc2F0aXNmeSBhbGwgdGhlDQo+IGRlcGVuZGVuY2llcyBmb3IgY29yZS1pbWFnZS13
ZXN0b24gKHZpcnR1YWwvZWdsLCB2aXJ0dWFsL2xpYmdsLCBldGMuKSwgZXhjZXB0DQo+IHZpcnR1
YWwvbWVzYSwgd2hpY2ggaXMgbm90IHByb3ZpZGVkIGJ5IG91ciBHUFUgcmVjaXBlLg0KPiA+DQo+
ID4gV2hlbiBvbmUgYnVpbGRzIGNvcmUtaW1hZ2Utd2VzdG9uLCB0aGUgaW1hZ2UgcmVxdWlyZXMg
bWVzYSB0byBidWlsZCBhcw0KPiB3ZWxsLg0KPiA+DQo+ID4gT3VyIGFwcHJvYWNoIHRvIHNhdGlz
ZnkgZGVwZW5kZW5jaWVzIGlzIHZlcnkgc2ltaWxhciB0byB3aGF0IEZyZWVzY2FsZSBhbmQNCj4g
b3RoZXIgdmVuZG9ycyB3aXRoIE1hbGkgR1BVIHN1cHBvcnQgdXNlLCB3aGljaCBpcyB0aHJvdWdo
IHRoZSBmb2xsb3dpbmcNCj4gc3RhdGVtZW50czoNCj4gPg0KPiA+IFBSRUZFUlJFRF9QUk9WSURF
Ul92aXJ0dWFsL2VnbCA9ICJteS1ncHUtcmVjaXBlIg0KPiA+IFBSRUZFUlJFRF9QUk9WSURFUl92
aXJ0dWFsL2xpYmdsZXMxID0gIiBteS1ncHUtcmVjaXBlICINCj4gPiBQUkVGRVJSRURfUFJPVklE
RVJfdmlydHVhbC9saWJnbGVzMiA9ICIgbXktZ3B1LXJlY2lwZSAiDQo+ID4gUFJFRkVSUkVEX1BS
T1ZJREVSX3ZpcnR1YWwvbGliZ2wgPSAibXktZ3B1LXJlY2lwZSINCj4gPiBQUkVGRVJSRURfUFJP
VklERVJfdmlydHVhbC9tZXNhID0gIm1lc2EiDQo+ID4NCj4gPiBUaGUgd2F5IHRvIHJlbW92ZSBt
ZXNhIHN1cHBvcnQgZm9yIHZpcnR1YWwvZWdsLCB2aXJ0dWFsL2xpYmdsZXMxLCBldGMuIGlzIGJ5
DQo+IGFkZGluZyBhIG1lc2FfJS5iYmFwcGVuZCB3aGVyZSBpdCBzdGF0ZXMgZXhwbGljaXRseSB0
byByZW1vdmUgdGhvc2UNCj4gcHJvdmlkZXMgZnJvbSBtZXNhIHJlY2lwZS4NCj4gPg0KPiA+IGUu
Zy4NCj4gPiBQUk9WSURFU19yZW1vdmUgPSAidmlydHVhbC9saWJnbGVzMSB2aXJ0dWFsL2xpYmds
ZXMyIHZpcnR1YWwvbGlib3BlbnZnDQo+IHZpcnR1YWwvZWdsIg0KPiA+DQo+ID4NCj4gPiBUaGUg
cHJvYmxlbSBJIGFtIHJ1bm5pbmcgaW50byBpcyB0aGF0IGJpdGJha2UgY29tcGxhaW5zIHN0YXRp
bmcgdGhhdA0KPiA+IHZpcnR1YWwvbWVzYSBpcyBub3Qgc2F0aXNmaWVkIChOb3RoaW5nIFBST1ZJ
REVTICd2aXJ0dWFsL21lc2EnKQ0KPiA+DQo+ID4gV2hlbiBJIGRvIGJpdGJha2UtbGF5ZXJzIHNo
b3ctcmVjaXBlcywgSSBzZWUgdGhhdCBtZXNhIHJlY2lwZSBpcyBza2lwcGVkDQo+IGJlY2F1c2Ug
aXQgZ2F2ZSBwcmlvcml0eSB0byBteS1ncHUtcmVjaXBlLg0KPiA+DQo+ID4gSG93IGNhbiB0d28g
cmVjaXBlcyBiZSB1c2VkIGFuZCBsZXQgYml0YmFrZSBzYXRpc2Z5IHBhcnRzIG9mIGVhY2ggcmVj
aXBlPw0KPiA+DQo+ID4gQW55IGhpbnRzIHdpbGwgYmUgYXBwcmVjaWF0ZWQuDQo+IA0KPiB0aGVy
ZSBpcyBubyBlYXN5IHdheSB0byBjb250cm9sIHByb3ZpZGVycyBvbmNlIGEgcmVjaXBlIGlzIHB1
bGxlZCBpbi4NCj4geW91IGNhbiByZWZhY3RvciBtZXNhIHJlY2lwZSBsaWtlIHdlIGhhdmUgZG9u
ZSBmb3IgbWVzYSBhbmQgbWVzYS1nbCB3aGljaA0KPiB3aWxsIG1lYW4gYWRkaW5nIGEgYW5vdGhl
ciByZWNpcGUgd2hpY2gganVzdCBidWlsZHMgdGhlIG5lZWRlZCBwb3J0aW9ucyBvZg0KPiBtZXNh
IGluIGVhY2ggcmVjaXBlLCBpZiB5b3VyIEdQVSBkcml2ZXIgcHJvdmlkZXMgZXZlcnl0aGluZyB5
b3UgbmVlZCB0byBydW4NCj4gd2VzdG9uLCB0aGVuIHlvdSBjYW4gbGV0IGl0IHByb3ZpZGUgZXZl
cnl0aGluZyB0aGF0IG1lc2EgcHJvdmlkZXMgYW5kDQo+IGJpdGJha2Ugd29udCBwaWNrIHVwIG1l
c2EgYXQgYWxsLg0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPg0KPiA+IC0tSGVybmFuDQo+ID4g
LS0NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiA+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiBo
dHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg==

