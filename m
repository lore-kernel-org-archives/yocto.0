Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34860E008E4; Thu, 29 Mar 2018 06:33:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0136.outbound.protection.outlook.com [104.47.2.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0187FE008BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 06:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=YX0DtkRP9Jm/LHpTQ1IubSwcGpM4g0d22vuSsQXVF2E=;
	b=fkXXGlwx5CgXtOpRLJvJV5CLFPjSQ2GwpV7fdz7eS3tNv2U8jbMhs6FFNlopSpY6qDYklIOO3hDbes0m5vJUrMwKtNM34cREwFDx61V+iENGKsavsMqvLMKorCcyd2B6AJsGCWgnYhqjtysCgGmGDOhqjMq9s8+LuNbII5jCRGg=
Received: from AM5P192MB0132.EURP192.PROD.OUTLOOK.COM (10.175.13.8) by
	AM5P192MB0035.EURP192.PROD.OUTLOOK.COM (10.175.12.17) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.631.10; Thu, 29 Mar 2018 06:00:02 +0000
Received: from AM5P192MB0132.EURP192.PROD.OUTLOOK.COM
	([fe80::408f:a4be:d7d:3482]) by AM5P192MB0132.EURP192.PROD.OUTLOOK.COM
	([fe80::408f:a4be:d7d:3482%7]) with mapi id 15.20.0631.010;
	Thu, 29 Mar 2018 06:00:02 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] defconfig file (or fragment files) not used
Thread-Index: AdPGsRgiBH7nQ9LET1GPBu0dtVUh0QAQafmAAAwZjCA=
Date: Thu, 29 Mar 2018 06:00:02 +0000
Message-ID: <AM5P192MB0132927EBF4A922322C970F28DA20@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
In-Reply-To: <8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5P192MB0035;
	7:JIqNIqkviHS0RD1eBnSA1lD+QnQ8xGKhaNiXkWL58PG6oahpF8a+V0ud4N64WvLJFWYELQinWSEey66Gki9mfEkDUVvdw0kwza/JpJ0PR4kSw1xek1p5RSpCR+PfwEyiGGziTAHsDR8zCZC2ZmYgbN2moRH/kdwvcHpQEPjk0aRICrupgXsMuPc1seSiShj0JKb13dLeyBXdElj5OCwurOTfivXI4kxMC1MjLs+cni8hZ9+veTyqrq2z6DcBW7tY
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 3d8aa556-0c9e-464b-dead-08d5953a5041
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5P192MB0035; 
x-ms-traffictypediagnostic: AM5P192MB0035:
x-microsoft-antispam-prvs: <AM5P192MB0035B90D54264EAA8F75B6C18DA20@AM5P192MB0035.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(3231221)(944501327)(52105095)(93006095)(93001095)(10201501046)(6041310)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:AM5P192MB0035; BCL:0; PCL:0; RULEID:; SRVR:AM5P192MB0035; 
x-forefront-prvs: 0626C21B10
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(346002)(376002)(366004)(396003)(39830400003)(189003)(199004)(486005)(7736002)(81166006)(26005)(66066001)(186003)(305945005)(110136005)(33656002)(97736004)(14454004)(81156014)(8676002)(8936002)(446003)(11346002)(476003)(486005)(74316002)(2906002)(59450400001)(229853002)(3660700001)(3280700002)(5660300001)(102836004)(316002)(25786009)(6116002)(105586002)(5250100002)(39060400002)(2501003)(53936002)(478600001)(6506007)(6246003)(6306002)(2900100001)(86362001)(3846002)(9686003)(99286004)(106356001)(55016002)(68736007)(6436002)(7696005)(76176011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5P192MB0035;
	H:AM5P192MB0132.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: vCkr+bX7UFiYlSOFjHW0BddhuhlYoINR/xo388EZZwkGFkpvQkgw7hxM/8IqKgaykFbkPZ+IzRDAkIy+t/Cp9ey3tjuI1cPs9ku+cjp2BfyuD0KwGU8yw5azH2vGzXIyF1zoAc5JyG1bERzJeaTHnXLykqM0QLjaRFqu96J2DbOiMTGLD8sjedS9HTxuThyU1h/yPXqUPtbszEM0wCo3njR5/MVXa9AFT1Q75qx7zerCI7dwhn/pOtW4m1LMVdtCFQfs4weyEr+mG8skut35ZNRWz8X2fLw5Rv3sYh78c9c8i/xi7sPmwyXIvqy7bbE8Hww+VRROVpn7dYHNt2fFKQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d8aa556-0c9e-464b-dead-08d5953a5041
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2018 06:00:02.9498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0035
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Thu, 29 Mar 2018 13:33:58 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pk9uIDMvMjgvMTggOToyNyBBTSwgVmluY2VudCBEYWFuZW4gd3JvdGU6DQo+PiBIaSwNCj4+IA0K
Pj4gSSB3YW50IHRvIGFkZCBDQU4gZHJpdmVyIHN1cHBvcnQgdG8gdGhlIGtlcm5lbC4gSGVyZSBp
cyB0aGUgcHJvY2VkdXJlIA0KPj4gSQ0KPj4gZm9sbG93ZWQ6DQo+PiANCj4+ICAxLiBHZW5lcmF0
ZSBhIC5jb25maWcgZmlsZQ0KPj4gIDIuIENvcHkgaXQgdG8gbWV0YS1teVdvcmsvcmVjaXBlcy1r
ZXJuZWwvbGludXgvZmlsZXMvZGVmY29uZmlnDQo+PiAgMy4gVXBkYXRlIGl0OiBzZXQgYXQgdGhl
IGVuZCB0aGUgY29uZmlnIHRvIGVuYWJsZSBDQU4gYXMgZm9sbG93cw0KPj4gDQo+PiAjIENBTiBC
dXMNCj4+IA0KPj4gQ09ORklHX05FVD15DQo+PiANCj4+IENPTkZJR19DQU49eQ0KPj4gDQo+PiBD
T05GSUdfQ0FOX1JBVz15DQo+PiANCj4+IENPTkZJR19DQU5fQkNNPXkNCj4+IA0KPj4gQ09ORklH
X0NBTl9HVz15DQo+PiANCj4+ICMNCj4+IA0KPj4gIyBDQU4gRGV2aWNlIERyaXZlcnMNCj4+IA0K
Pj4gIw0KPj4gDQo+PiBDT05GSUdfQ0FOX1ZDQU49eQ0KPj4gDQo+PiAjIENPTkZJR19DQU5fU0xD
QU4gaXMgbm90IHNldA0KPj4gDQo+PiBDT05GSUdfQ0FOX0RFVj15DQo+PiANCj4+ICMgQ09ORklH
X0NBTl9DQUxDX0JJVFRJTUlORyBpcyBub3Qgc2V0DQo+PiANCj4+ICMgQ09ORklHX0NBTl9MRURT
IGlzIG5vdCBzZXQNCj4+IA0KPj4gIyBDT05GSUdfQ0FOX1NKQTEwMDAgaXMgbm90IHNldA0KPj4g
DQo+PiAgNC4gVXBkYXRlIHRoZSBsaW51eC15b2N0b18lLmJiYXBwZW5kIGZpbGUgYXMgZm9sbG93
cw0KPj4gDQo+PiBTVU1NQVJZID0gIlJlY2lwZSB0byBjb25maWd1cmUga2VybmVsIGFzIHJlcXVp
cmVkIg0KPj4gDQo+PiBMSUNFTlNFID0gIkNMT1NFRCINCj4+IA0KPj4gaW5oZXJpdCBrZXJuZWwt
eW9jdG8NCj4+IA0KPj4gRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vZmls
ZXM6Ig0KPj4gDQo+PiBTUkNfVVJJICs9IGZpbGU6Ly9kZWZjb25maWcNCj4+IA0KPj4gIDUuIFJl
cXVlc3QgcmVidWlsdDoNCj4+IA0KPj4gYml0YmFrZSBsaW51eC15b2N0by1ydCAtYyBjbGVhbnNz
dGF0ZQ0KPj4gDQo+PiBiaXRiYWtlIC1rIGxpbnV4LXlvY3RvLXJ0DQo+PiANCj4+IE9uY2UgdGhl
IGltYWdlIHN0YXJ0ZWQgKHdpdGggcWVtdSksIEkgY2hlY2sgaWYgdGhlIENBTiBpcyBlbmFibGVk
IA0KPj4gKHVzaW5nIHpjYXQgL3Byb2MvY29uZmlnLmd6IHwgZ3JlcCBDQU4pIGFuZCBJIGFsd2F5
cyBnZXQg4oCcQ0FOIG5vdCBzZXTigJ0NCj4+IA0KPj4gSSBhbHNvIHRyaWVkIHVzaW5nIGZyYWdt
ZW50IGFuZCBJIGdvdCB0aGUgc2FtZSByZXN1bHQg4pi5DQo+PiANCj4+IEFjY29yZGluZyB0aGUg
dXNlciBtYW51YWwsIGl0IHNlZW1zIHRvIG1lIEnigJltIGRvaW5nIHRoZSByaWdodCB0aGluayEN
Cj4+IA0KPj4gRG9lcyBzb21lb25lIGtub3cgd2h5IG15IGRlZmNvbmZpZyBmaWxlIGlzIG5vdCB0
YWtlbiBpbnRvIGFjY291bnQgPw0KPj4gDQo+DQo+SWYgeW91IGFyZSB1c2luZyBsaW51eC15b2N0
byBmb3IgeW91ciBrZXJuZWwgcHJvdmlkZXIgdGhlbiBJIHdvdWxkciByZWNvbW1lbmQgdGhhdCB5
b3UgbG9vayBpbnRvIGRldmVsb3BlciBtYW51YWwuDQo+DQo+eW91IHNob3VsZCBsb29rIGludG8g
dXNpbmcgY29uZmlnIGZyYWdtZW50cyB0byBtb2RpZnkgdGhlIG5lZWRlZCANCj5vcHRpb25zIGUu
Zy4gc2VlIA0KPmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy9sYXRlc3Qva2VybmVs
LWRldi9rZXJuZWwtZGV2Lmh0bWwjY2hhDQo+bmdpbmctdGhlLWNvbmZpZ3VyYXRpb24NCg0KSSBk
b24ndCB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4uIFRoYXQncyB3aGF0IEknbSBkb2luZy4gSSBm
b2xsb3dlZCB0aGUgcHJvY2VkdXJlIGRlc2NyaWJlZCBpbiB0aGUgbGluayB5b3UgcHJvdmlkZS4u
LiBDYW4gdSBleHBsYWluID8NCg0KVGhhbmtzDQoNClZpbmNlbnQNCg==

