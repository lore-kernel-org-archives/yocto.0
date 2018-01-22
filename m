Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9958E00DAB; Mon, 22 Jan 2018 14:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 30409 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Jan 2018 14:05:47 PST
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0122.outbound.protection.outlook.com [104.47.0.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0FBBE0083E
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 14:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Enea.onmicrosoft.com; 
	s=selector1-enea-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=cVJJ5vsPMdd0vmX3rcNguJxFEHEKPc8aD2nNJQO+G9k=;
	b=gXnMlukeyxu+UhmQ4ilyJfMzovXtlF1LXxb8/O9A37iPKQIDNzOBM4QcNHYp9XFz9rhEbN2Pp9Bv4XRyyIKB0RV2WTr3qfbhG5C8G4SdFWdnUfa7gQoestby6ufiW9jgu5TK8/OzNbrq7pUBt76acMqh+W/OFMdWvh4DZeh02hg=
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com (10.167.215.151) by
	AM5PR0701MB2388.eurprd07.prod.outlook.com (10.169.152.150) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.444.5;
	Mon, 22 Jan 2018 14:33:03 +0000
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::c1b4:b5ac:e04b:e25d]) by
	AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::c1b4:b5ac:e04b:e25d%14]) with mapi id 15.20.0444.008;
	Mon, 22 Jan 2018 14:33:02 +0000
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: dev-pkgs not installed in Extensible SDK
Thread-Index: AQHTk43oBLwXK6pwcka6PmKYrEG9ZA==
Date: Mon, 22 Jan 2018 14:33:02 +0000
Message-ID: <1516631581.10186.2.camel@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Adrian.Dudau@enea.com; 
x-originating-ip: [192.36.1.252]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0701MB2388;
	7:PxdGCf5L+Koo7LSbeLAkm7JSFZU+wiM8K5FDcXozZdLvGRGHgc7/OYVkIh1qDiEdqDsvNIXOX5eAgpi9nOGxId74TbDH9JcGY763LpfSe7YlBN7GLT5LYTIdJmERNfkjp0bzuH5M88nYLLu0fWHeea0cSCuCXLiEHmpW7MaAZjpnYI+jF13E/h2eVBimAimVLzr/Ebm5WUd57Fm5/gQIeKsPxUo3Hrcu/PHOtUTS6XCeq5+/kg9CuGONevL2fnTe;
	20:9lH423RzOUPy3+rX1h+MMTLP5MkJ0W7p8h+rSvPwvb8IKapUumnbHWo1L65FQGUqCu7UbIjHO3VKOEgZrpidCyl/QuL+PfbIqGssHAgz4gmHqe9GisYAA/tW8h5StkDeWam8TRGIoqptPZvTAc6IyD79CqXO8PDAHnJbdxmUXOs=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10019020)(346002)(39840400004)(39380400002)(396003)(366004)(376002)(189003)(199004)(6116002)(25786009)(8936002)(14454004)(66066001)(2351001)(72206003)(478600001)(106356001)(5660300001)(3846002)(6916009)(6506007)(5250100002)(2501003)(97736004)(102836004)(8676002)(99286004)(81166006)(1730700003)(3660700001)(316002)(86362001)(7736002)(5640700003)(6436002)(6486002)(105586002)(68736007)(6512007)(2900100001)(53936002)(26005)(551544002)(81156014)(103116003)(3280700002)(305945005)(2906002)(36756003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0701MB2388;
	H:AM5PR0701MB1780.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
x-ms-office365-filtering-correlation-id: f17e3b29-469b-4397-476c-08d561a50b20
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534125)(4602075)(4627221)(201703031133081)(201702281549075)(2017052603307)(7153060)(7193020);
	SRVR:AM5PR0701MB2388; 
x-ms-traffictypediagnostic: AM5PR0701MB2388:
x-microsoft-antispam-prvs: <AM5PR0701MB23886C093B3559F93404907DE4EC0@AM5PR0701MB2388.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(278428928389397);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231023)(2400081)(944501161)(6041288)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011);
	SRVR:AM5PR0701MB2388; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AM5PR0701MB2388; 
x-forefront-prvs: 0560A2214D
received-spf: None (protection.outlook.com: enea.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 6SHNLuN4kP5drqAWxm2r5ZXUPdO24ZGhD1/9P+uKbyjStTbIWCuXs93e58t4csw0CF3abmLgB1pU3kL5udokAg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: enea.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f17e3b29-469b-4397-476c-08d561a50b20
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2018 14:33:02.5706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8cdaed89-c47e-40b8-90b5-f28ad2c3fdca
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0701MB2388
Subject: dev-pkgs not installed in Extensible SDK
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
X-List-Received-Date: Mon, 22 Jan 2018 22:05:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3018351FCAE3249835AA8F6D6ED3735@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

QWRkaW5nIGRldi1wa2dzIHRvIFNES0lNQUdFX0ZFQVRVUkVTIEkgZXhwZWN0ZWQgdGhhdCB0aGUg
LWRldiBwYWNrYWdlcw0Kd291bGQgYmUgaW5zdGFsbGVkIGluIHRoZSBzeXNyb290IGluIHRoZSBl
U0RLLCBidXQgaXQgc2VlbXMgdGhhdCBpcw0KdmFsaWQgb25seSBmb3IgdGhlIHN0YW5kYXJkIFNE
Sy4NCg0KSSBoYXZlIG15IG93biBpbWFnZSB0aGF0IGluaGVyaXRzIGNvcmUtaW1hZ2Ugd2l0aCB2
YXJpb3VzIGFkZGl0aW9ucy4gSW4NCnRoZSBzdGFuZGFyZCBTREssIHRoZSBkZWJ1ZyBmb2xkZXIg
dW5kZXIgcnBpX3N0YW5kYXJkL3N5c3Jvb3RzL2FhcmNoNjQtDQplbmVhLWxpbnV4L3Vzci9zcmMv
ZGVidWcgc2hvd3MgbGlrZSB0aGlzOg0KYWNswqDCoMKgwqDCoMKgwqDCoMKgwqBleHBhdMKgwqDC
oMKgwqDCoMKgwqBsZXNzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpYnRpcnBjwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbWFrZcKgwqDCoMKgwqDCoA0KwqDCoMKgwqDCoMKgwqBycGNiaW5kDQphdGvC
oMKgwqDCoMKgwqDCoMKgwqDCoGZpbGXCoMKgwqDCoMKgwqDCoMKgwqBsaWJhaW/CoMKgwqDCoMKg
wqDCoMKgwqBsaWJ0b29swqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtaW5nZXR0ecKgwqANCsKg
wqDCoMKgwqDCoMKgcnBtDQphdHRywqDCoMKgwqDCoMKgwqDCoMKgZmluZHV0aWxzwqDCoMKgwqBs
aWJhcmNoaXZlwqDCoMKgwqDCoGxpYnVuaXN0cmluZ8KgwqDCoMKgwqDCoMKgwqBtcGZywqDCoMKg
wqDCoMKgDQrCoMKgwqDCoMKgwqDCoHJzeW5jDQpiYWJlbHRyYWNlwqDCoMKgZm9udGNvbmZpZ8Kg
wqDCoGxpYmFzc3VhbsKgwqDCoMKgwqDCoGxpYnVyY3XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oG5jdXJzZXPCoMKgwqANCsKgwqDCoMKgwqDCoMKgc2hhZG93DQpiYXNlLQ0KcGFzc3dkwqDCoGZy
ZWV0eXBlwqDCoMKgwqDCoGxpYmNhcMKgwqDCoMKgwqDCoMKgwqDCoGxpYngxMcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBuZXR0bGXCoMKgwqDCoMKgwqDCoMKgwqANCsKgwqBzaGFyZWQtbWlt
ZS1pbmZvDQpiYXNowqDCoMKgwqDCoMKgwqDCoMKgZnVzZcKgwqDCoMKgwqDCoMKgwqDCoGxpYmNo
ZWNrwqDCoMKgwqDCoMKgwqBsaWJ4YXXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmZzLQ0K
dXRpbHPCoMKgwqDCoMKgwqDCoMKgc2xhbmcNCmJjwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdjYy0N
CnJ1bnRpbWXCoMKgbGliY29tcHPCoMKgwqDCoMKgwqDCoGxpYnhjYsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBuc3BywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzcWxpdGUzDQpibGt0cmFj
ZcKgwqDCoMKgwqBnZGJtwqDCoMKgwqDCoMKgwqDCoMKgbGliZG5mwqDCoMKgwqDCoMKgwqDCoMKg
bGlieGNvbXBvc2l0ZcKgwqDCoMKgwqDCoMKgbnNzwqDCoMKgwqDCoMKgwqANCsKgwqDCoMKgwqDC
oMKgc3RyYWNlDQpidXN5Ym94wqDCoMKgwqDCoMKgZ2RrLQ0KcGl4YnVmwqDCoMKgbGliZXZlbnTC
oMKgwqDCoMKgwqDCoGxpYnhjdXJzb3LCoMKgwqDCoMKgwqDCoMKgwqDCoG9wZW5zc2jCoMKgwqDC
oMKgwqDCoMKgwqDCoHN5c3RlbWQNCmJ6aXAywqDCoMKgwqDCoMKgwqDCoGdldHRleHTCoMKgwqDC
oMKgwqBsaWJmZmnCoMKgwqDCoMKgwqDCoMKgwqBsaWJ4ZGFtYWdlwqDCoMKgwqDCoMKgwqDCoMKg
wqBvcGVuc3NswqDCoMKgDQrCoMKgwqDCoMKgwqDCoHN5c3RlbXRhcA0KY2Fpcm/CoMKgwqDCoMKg
wqDCoMKgZ2xpYi0NCjIuMMKgwqDCoMKgwqBsaWJnY2PCoMKgwqDCoMKgwqDCoMKgwqBsaWJ4ZG1j
cMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBhbmdvwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdGNm
LWFnZW50DQpjY2FjaGXCoMKgwqDCoMKgwqDCoGdsaWJjwqDCoMKgwqDCoMKgwqDCoGxpYmdwZy0N
CmVycm9ywqDCoMKgbGlieGV4dMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGF0Y2jCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB0Y2wNCmNvcmV1dGlsc8KgwqDCoMKgZ21wwqDCoMKgwqDCoMKgwqDC
oMKgwqBsaWJpZG7CoMKgwqDCoMKgwqDCoMKgwqBsaWJ4Zml4ZXPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcGNpdXRpbHPCoMKgDQrCoMKgwqDCoMKgwqDCoHRjcC13cmFwcGVycw0KY3VybMKgwqDCoMKg
wqDCoMKgwqDCoGdudXRsc8KgwqDCoMKgwqDCoMKgbGlianBlZy0NCnR1cmJvwqDCoGxpYnhmdMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwZXJswqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0
cmFjZS1jbWQNCmRiwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdwZ21lwqDCoMKgwqDCoMKgwqDCoGxp
Ym1wY8KgwqDCoMKgwqDCoMKgwqDCoGxpYnhtbDLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBp
eG1hbsKgwqDCoMKgDQrCoMKgwqDCoMKgwqDCoHV0aWwtbGludXgNCmRidXPCoMKgwqDCoMKgwqDC
oMKgwqBndGsrwqDCoMKgwqDCoMKgwqDCoMKgbGlibmZzaWRtYXDCoMKgwqDCoGxpYnhtbC1wYXJz
ZXItDQpwZXJswqDCoHBrZ2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqB4eg0KZGhjcMKgwqDCoMKgwqDC
oMKgwqDCoGhhcmZidXp6wqDCoMKgwqDCoGxpYm5swqDCoMKgwqDCoMKgwqDCoMKgwqBsaWJ4cmFu
ZHLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcG9wdMKgwqDCoMKgwqDCoA0KwqDCoMKgwqDCoMKgwqB6
bGliDQpkaWZmc3RhdMKgwqDCoMKgwqBqc29uLWPCoMKgwqDCoMKgwqDCoGxpYnBjcmXCoMKgwqDC
oMKgwqDCoMKgbGlieHJlbmRlcsKgwqDCoMKgwqDCoMKgwqDCoMKgcG93ZXJ0b3ANCmRpZmZ1dGls
c8KgwqDCoMKga2JkwqDCoMKgwqDCoMKgwqDCoMKgwqBsaWJwbmfCoMKgwqDCoMKgwqDCoMKgwqBs
dHRuZy10b29sc8KgwqDCoMKgwqDCoMKgwqDCoHB5dGhvbjMNCmUyZnNwcm9nc8KgwqDCoMKga21v
ZMKgwqDCoMKgwqDCoMKgwqDCoGxpYnJlcG/CoMKgwqDCoMKgwqDCoMKgbHR0bmctdXN0wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHB5dGhvbjMtDQpweWdwZ21lDQplbGZ1dGlsc8KgwqDCoMKgwqBsYXRl
bmN5dG9wwqDCoMKgbGlic29sdsKgwqDCoMKgwqDCoMKgwqBtNMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJlYWRsaW5lDQoNCg0KSW4gdGhlIGV4dGVuc2libGUgU0RLLCBJIG9u
bHkgaGF2ZSB0aGlzIHVuZGVyIHJwaS9zeXNyb290cy9hYXJjaDY0LQ0KZW5lYS1saW51eC91c3Iv
c3JjL2RlYnVnOg0KYmFzaMKgwqBiY8KgwqBnbGliY8KgwqBuY3Vyc2VzDQoNCg0KSSB0cmllZCBi
dWlsZGluZyBib3RoIFNES3MgYmFzZWQgb24gYSB2YW5pbGxhIGNvcmUtaW1hZ2UtbWluaW1hbCwg
YW5kDQp0aGUgc3RhbmRhcmQgU0RLIGhhcyB0aGUgc291cmNlcyBpbnN0YWxsZWQgYXMgZXhwZWN0
ZWQsIGJ1dCB0aGUgZXh0IFNESw0KaGFzIG5vIGRlYnVnIGZvbGRlciBjb250YWluaW5nIHNvdXJj
ZXMuIEkgdHJpZWQNCg0KSSB0cmllZCBsb29raW5nIGludG8gdGhlIHBvcHVsYXRlX3NkayogY2xh
c3NlcywgYnV0IHRoZSBjb2RlIHRoZXJlIGlzDQp2ZXJ5IGhhcmQgdG8gdW5kZXJzdGFuZCBhdCBh
IGZpcnN0IHZpZXcuIFNvIEkgZ3Vlc3MgcXVlc3Rpb24gaXM6IElzDQp0aGlzIGludGVuZGVkIGJ5
IGRlc2lnbiBvciBpcyBpdCBhIGJ1Zz8gSWYgaW50ZW5kZWQsIHdoYXQgaXMgdGhlDQpkZXZlbG9w
bWVudCB3b3JrbGZvdyBmb3IgYSB1c2VyIHdhbnRpbmcgdG8gcmVtb3RlIGRlYnVnIGFwcGxpY2F0
aW9ucw0KdXNpbmcgc2hhcmVkIGxpYnJhcmllcz8NCg0KQmVzdCByZWdhcmRzLA0KLS1BZHJpYW4=

