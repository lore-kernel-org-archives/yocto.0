Return-Path: <carlos.bejar-colonia@philips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EFA3E01110; Mon, 25 Jun 2018 22:38:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.3.138 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18024 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Jun 2018 22:38:26 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr30138.outbound.protection.outlook.com [40.107.3.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 873B7E010EF
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2018 22:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philips.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lAL7O4b4ASWx+ypWE+f23Iwv9YZVvggP2JwZth4aiW8=;
	b=A7l/a9CRvRigB2E8cd1bywDUDAx3c+JUMMpQZmVkxrtXScg8vMA6vpYu8VXEdu1NUennY8qa7aTxcfSswpygRfiwKadxqMNvWBqVLWcpfRcvSteHzVZl8Ym37WMr9t7eEt55cIixyqaPHtPlsn02gFSO0WF3Ocme+IdwCZH9XnU=
Received: from HE1P122MB0090.EURP122.PROD.OUTLOOK.COM (129.75.166.25) by
	HE1P122MB0076.EURP122.PROD.OUTLOOK.COM (129.75.166.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.884.23; Mon, 25 Jun 2018 20:02:01 +0000
Received: from HE1P122MB0090.EURP122.PROD.OUTLOOK.COM
	([fe80::d44a:d85f:383b:e2fa]) by HE1P122MB0090.EURP122.PROD.OUTLOOK.COM
	([fe80::d44a:d85f:383b:e2fa%14]) with mapi id 15.20.0884.023;
	Mon, 25 Jun 2018 20:02:01 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Rocko: how to remove python3 from target's rootfs
Thread-Index: AdQJqPWdu7UrvZT8Svq1h37yr+AFPQAlU/WAAJ9DblA=
Date: Mon, 25 Jun 2018 20:02:01 +0000
Message-ID: <HE1P122MB0090C3849A14E569035E95CFD64A0@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
References: <HE1P122MB0090894C688B6F014F3ABE50D6760@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
	<CAMKF1srp7ONCyBNnt3y72uG1dcfRe+tKeg5H_M09WD=5Je6DwQ@mail.gmail.com>
In-Reply-To: <CAMKF1srp7ONCyBNnt3y72uG1dcfRe+tKeg5H_M09WD=5Je6DwQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=carlos.bejar-colonia@philips.com; 
x-originating-ip: [192.101.81.235]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1P122MB0076;
	7:TH5GdtW1iquqqOzJWlUax1WRFfz1qxqvYO/6j8B9GB11OBl/Szb92IbGOVIYZncO+kuBwWyL/B/RVpupo447GxR/yUBIYP82tl/GVzvlPx0AGJRKOssfSO7j0AY3OdTYGcNUK3xIWMNiRwzlZfuOQX9TgG7Qpp/OJpmgfup688m61uvCcQ1uU0D0IU4H/zQh6wYJvo1jcdoYEY+Ray2v0KzW4EYFbqKA4u1XCd4VoPoanKC6m/zjYtB9EJR31aqy
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 144d1291-238f-4a1d-050d-08d5dad6842f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(223705240517415)(260087099026482); BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989117)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:HE1P122MB0076; 
x-ms-traffictypediagnostic: HE1P122MB0076:
x-microsoft-antispam-prvs: <HE1P122MB00761092DFCC8F1B444FEF15D64A0@HE1P122MB0076.EURP122.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(189930954265078)(223705240517415)(85827821059158)(45079756050767)(260087099026482);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(10201501046)(6055026)(149027)(150027)(6041310)(20161123558120)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:HE1P122MB0076; BCL:0; PCL:0; RULEID:; SRVR:HE1P122MB0076; 
x-forefront-prvs: 0714841678
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(346002)(376002)(136003)(366004)(396003)(39860400002)(374574003)(55904004)(13464003)(189003)(199004)(6116002)(186003)(966005)(26005)(14454004)(25786009)(68736007)(229853002)(3846002)(53936002)(4326008)(478600001)(33656002)(14444005)(6246003)(45080400002)(2900100001)(39060400002)(5250100002)(76176011)(7696005)(99286004)(102836004)(7736002)(6506007)(53546011)(5660300001)(6916009)(575784001)(55016002)(446003)(476003)(6436002)(486006)(2906002)(74316002)(305945005)(86362001)(8936002)(11346002)(66066001)(106356001)(97736004)(6306002)(105586002)(9686003)(8676002)(81156014)(81166006)(316002)(256004)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1P122MB0076;
	H:HE1P122MB0090.EURP122.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: philips.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 3UGnm8ztAqaVf6AcFF0tsdCxh0axj8x3fNjCxVxzzCOntWnulNvW/XZv8LTkNUgg3m9UQiNBEmiAtaR9eeKjt3KURWZyWPW1pMY4XBiXj/Kgc2v1DtxkZ5ad1J7Bi84sB8+t0NAEktj+ECTPtL6gDkvQMKe+/OoqQrdwliweziOO0ZADI/78xjLiHtfDa+5TQf0iFFVQEUakKGaKKpWTddfuj7jCk1J7XlyWPWnEcx8xUK+wqUS6q3vapW+rm7ci9cmEMsh7xxOEEFHojshck2R8SePrCjEKvyETwmenAJQdwuaCWooliSLWXNtdnHVRo3mvXn1oF4TgSe76SiM11HZXPJivpHrOsyKyuZW+hlo=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: philips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 144d1291-238f-4a1d-050d-08d5dad6842f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2018 20:02:01.6917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P122MB0076
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Rocko: how to remove python3 from target's rootfs
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
X-List-Received-Date: Tue, 26 Jun 2018 05:38:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TG9va3MgbGlrZSB0aGUgZGhjcCBkZXBlbmRlbmN5IGlzIGV4cGxpY2l0OiBkaGNwLT5iaW5kLT5w
eXRob24zDQpyZWNpcGVzLWNvbm5lY3Rpdml0eS9kaGNwL2RoY3AuaW5jDQoJREVQRU5EUyA9ICJv
cGVuc3NsIGJpbmQiDQpyZWNpcGVzLWNvbm5lY3Rpdml0eS9iaW5kL2JpbmRfOS4xMC41LVAzLmJi
DQoJUkRFUEVORFNfJHtQTn0gPSAicHl0aG9uMy1jb3JlIg0KDQpJbiB0aGUgYnVpbGQgYXJlYTog
ZGhjcC80LjMuNi1yMC9wYWNrYWdlcy1zcGxpdC9kaGNwLWNsaWVudC5zaGxpYmRlcHMNCglkaGNw
LWxpYnMgKD49IDQuMy42KQ0KCWJpbmQgKD49IDkuMTAuNS1QMykNCglnbGliYyAoPj0gMi4yNikN
Cg0KRG9lcyBpdCBtZWFuIHRoYXQgcHl0aG9uMyBjYW5ub3QgYmUgcmVtb3ZlZCBmcm9tIHRhcmdl
dCByb290ZnM/DQoNCk9uIHRoZSBvdGhlciBoYW5kLCBJIHNlZSB0aGlzIGZpbGUgaW4gcm9vdGZz
OiAvdXNyL3NiaW4vZG5zc2VjLWNoZWNrZHMsIHdoaWNoIHJlcXVpcmVzIHB5dGhvbjMgKCMhIC91
c3IvYmluL3B5dGhvbjMpLg0KSSBiZWxpZXZlIHRoaXMgZmlsZSBnZXRzIGluc3RhbGxlZCBmcm9t
IGJpbmRfOS4xMC41LVAzLmJiDQoNCmRvX2luc3RhbGxfYXBwZW5kKCkgew0KICAgICAgICBzZWQg
LWkgLWUgJzFzLCMhLipweXRob24zLCMhIC91c3IvYmluL3B5dGhvbjMsJyAke0R9JHtzYmluZGly
fS9kbnNzZWMtY292ZXJhZ2UgJHtEfSR7c2JpbmRpcn0vZG5zc2VjLWNoZWNrZHMNCn0NCg0KSG93
IGNhbiBJIG1vdmUgdGhpcyBmaWxlIHRvIGEgZGlmZmVyZW50IHBhY2thZ2U/DQoNClRoYW5rcywN
CkNhcmxvcw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogPHJh
ai5raGVtQGdtYWlsLmNvbT4gDQpTZW50OiBGcmlkYXksIEp1bmUgMjIsIDIwMTggMTE6MzMgQU0N
ClRvOiBCZWphci1Db2xvbmlhLCBDYXJsb3MgPGNhcmxvcy5iZWphci1jb2xvbmlhQHBoaWxpcHMu
Y29tPg0KQ2M6IFlvY3RvIFByb2plY3QgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQpTdWJqZWN0
OiBSZTogW3lvY3RvXSBSb2NrbzogaG93IHRvIHJlbW92ZSBweXRob24zIGZyb20gdGFyZ2V0J3Mg
cm9vdGZzDQoNCk9uIEZyaSwgSnVuIDIyLCAyMDE4IGF0IDg6MTcgQU0gQmVqYXItQ29sb25pYSwg
Q2FybG9zIDxjYXJsb3MuYmVqYXItY29sb25pYUBwaGlsaXBzLmNvbT4gd3JvdGU6DQo+DQo+IEhl
bGxvIFlvY3RvIFRlYW0sDQo+DQo+DQo+DQo+IEnigJl2ZSB1cGdyYWRlZCBteSBZb2N0byBzeXN0
ZW0gZnJvbSBNb3J0eSB0byBSb2NrbyBhbmQgSeKAmXZlIG5vdGljZWQgDQo+IHRoYXQgcHl0aG9u
MyBnZXRzIGluc3RhbGxlZCBpbiB0aGUgcm9vdGZzLCB3aGljaCBJIGRvbuKAmXQgd2FudCAoaXQg
DQo+IHRha2VzIGEgbG90IGRpc2sgc3BhY2UpDQo+DQo+IEnigJl2ZSBub3RpY2VkIHRoYXQgd2hl
biBJIGFkZCBkaGNwLWNsaWVudCBwYWNrYWdlIHRvIHRoZSByb290ZnMgKENPUkVfSU1BR0VfRVhU
UkFfSU5TVEFMTCArPSAiZGhjcC1jbGllbnQiKSwgcHl0aG9uMyBnZXRzIGluc3RhbGxlZCBhcyB3
ZWxsLg0KPg0KPiBIb3dldmVyLCB3aXRoIE1vcnR5LCBweXRob24zIGRvZXMgbm90IGdldCBpbnN0
YWxsZWQgaW4gdGhlIHJvb3RmcyBhZnRlciBhZGRpbmcgZGhjcC1jbGllbnQgcGFrYWdlLg0KPg0K
Pg0KPg0KPiBQcm9iYWJseSBzb21lb25lIGhhcyBhbHJlYWR5IGRvbmUgdGhpcywgYnV0IEkgd2Fz
IG5vdCBhYmxlIHRvIGZpZ3VyZSBpdCBvdXQuIEkgdHJpZWQ6IElNQUdFX0lOU1RBTExfcmVtb3Zl
ICs9ICJweXRob24zLWNvcmUiLCBkaWRu4oCZdCBoZWxwLg0KPg0KPiBBbnkgaGludHMgb24gaG93
IHRvIHJlbW92ZSBweXRob24zIGZyb20gdGhlIHRhcmdldOKAmXMgcm9vdGZzICh3aXRob3V0IHJl
bW92aW5nIGRoY3AtY2xpZW50KT8NCg0Kd2hlbiB0aGVyZSBhcmUgc2NyaXB0cyBpbiBwYWNrYWdl
cyB3aGljaCByZXF1aXJlcyBhIGNlcnRhaW4ga2luZCBvZiBpbnRlcnByZXRlciBlLmcuIHBlcmwu
IHB5dGhvbi4gYmFzaCwgc2ggZXRjLiBzeXN0ZW0gY2FuIGF1dG9kZXRlY3QgdGhhdCBpZiBpbnRl
cnByZXRlciBpcyBzcGVjaWZpZWQgaW4gZmlyc3QgbGluZSBvZiBzY3JpcHQgYW5kIGFkZCB0aGUg
YXBwcm9wcmlhdGUgcnVudGltZSBkZXBlbmRlbmN5LCBzaW5jZSB0aGlzIHNjcmlwdCBvdGhlcndp
c2Ugd2lsbCBiZSB1c2VsZXNzIG9uIHRhcmdldC4NCg0KSSBzdXNwZWN0IGJ1aWxkIGZvciBkaGNw
IGlzIGFkZGluZyBzdWNoIGEgZmlsZSBpbnRvIGRoY3AtY2xpZW50IHBhY2thZ2Ugd2hpY2ggbWln
aHQgYmUgcmVzdWx0aW5nIGluIHRoaXMgaW1wbGljaXQgZGVwLg0KDQpTbyBwbGVhc2UgY2hlY2sg
aXQgaW4gdGhlIGJ1aWxkIGFyZWEgZm9yIGRoY3AgZXNwZWNpYWxseSB1bmRlciBwYWNrYWdlcy1z
cGxpdC9kaGNwLWNsaWVudA0KDQpmb3IgYW55IHN1Y2ggc2NyaXB0cy4NCg0KaWYgdGhlcmUgYXJl
IGFueSBhbmQgeW91IGZpbmQgdGhhdCB0aGVzZSBzY3JpcHRzIGFyZSBub3QgcmVxdWlyZWQgZm9y
IG5vcm1hbCBmdW5jdGlvbmluZyBvZiBkaGNwLWNsaWVudCBvbiB0YXJnZXQgdGhlbiBtb3ZlIHRo
aXMgc2NyaXB0IG91dCBpbnRvIGFub3RoZXIgcGFja2FnZSB3aGVyZSBpdCBtaWdodCBiZSBtb3Jl
IGFwcHJvcHJpYXRlLCB0aGF0IGNhbiBlbGltaW5hdGUgdGhpcyByZGVwDQo+DQo+DQo+DQo+IFRo
YW5rcywNCj4NCj4gQ2FybG9zDQo+DQo+DQo+DQo+DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IFRoZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBtZXNz
YWdlIG1heSBiZSBjb25maWRlbnRpYWwgYW5kIGxlZ2FsbHkgcHJvdGVjdGVkIHVuZGVyIGFwcGxp
Y2FibGUgbGF3LiBUaGUgbWVzc2FnZSBpcyBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBhZGRyZXNz
ZWUocykuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHlvdSBhcmUgaGVy
ZWJ5IG5vdGlmaWVkIHRoYXQgYW55IHVzZSwgZm9yd2FyZGluZywgZGlzc2VtaW5hdGlvbiwgb3Ig
cmVwcm9kdWN0aW9uIG9mIHRoaXMgbWVzc2FnZSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkIGFuZCBt
YXkgYmUgdW5sYXdmdWwuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBs
ZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYnkgcmV0dXJuIGUtbWFpbCBhbmQgZGVzdHJveSBhbGwg
Y29waWVzIG9mIHRoZSBvcmlnaW5hbCBtZXNzYWdlLg0KPiAtLQ0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4g
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2VtZWEwMS5zYWZlbGlua3MucHJvdGVj
dGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzDQo+IHRzLnlvY3RvcHJvamVj
dC5vcmclMkZsaXN0aW5mbyUyRnlvY3RvJmRhdGE9MDIlN0MwMSU3Q2Nhcmxvcy5iZWphci1jb2wN
Cj4gb25pYSU0MHBoaWxpcHMuY29tJTdDNjFkZjdiZTk0OTU0NGRiODdkZDYwOGQ1ZDg1NTczYjgl
N0MxYTQwN2EyZDc2NzU0ZA0KPiAxNzg2OTJiM2FjMjg1MzA2ZTQlN0MwJTdDMCU3QzYzNjY1Mjc4
Mzg3NjI4MjE3MSZzZGF0YT11ZnNSQmdVVHBSJTJGa21YDQo+IG5GQ2VNSzBEYlMyN3VYOUw4ejE1
WTBTM1olMkJjdDAlM0QmcmVzZXJ2ZWQ9MA0K

