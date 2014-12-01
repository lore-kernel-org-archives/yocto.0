Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92285E00478; Mon,  1 Dec 2014 05:39:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0133.outbound.protection.outlook.com [157.56.110.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E6C4E0030B
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 05:39:11 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.1.26.15; Mon, 1 Dec 2014 13:23:50 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.174]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.174]) with mapi id
	15.01.0026.003; Mon, 1 Dec 2014 13:23:50 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Chris Tapp <opensource@keylevel.com>, ChenQi <Qi.Chen@windriver.com>
Thread-Topic: [yocto] Adding firmware to initramfs
Thread-Index: AQHQCwgwCKUin9L9aE6BpILBhdMbFpx40xoAgAD8D4CAAOsHQA==
Date: Mon, 1 Dec 2014 13:23:50 +0000
Message-ID: <a351f7a6a92a475a909a8ea4ab0b2476@BLUPR05MB037.namprd05.prod.outlook.com>
References: <98D134EE-9E05-4289-BA83-F0369DA15620@keylevel.com>
	<547AD016.4040204@windriver.com>
	<C53FDC9B-3F58-4C3A-9F59-C7D198EE7423@keylevel.com>
In-Reply-To: <C53FDC9B-3F58-4C3A-9F59-C7D198EE7423@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 001D56B70089F0001D5804
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB038;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB038;
x-forefront-prvs: 0412A98A59
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(199003)(189002)(479174003)(377454003)(51704005)(24454002)(13464003)(74316001)(54356999)(105586002)(76176999)(20776003)(64706001)(66066001)(86362001)(120916001)(40100003)(92566001)(15975445006)(122556002)(106116001)(106356001)(50986999)(21056001)(77096004)(19580405001)(19580395003)(97736003)(87936001)(2656002)(108616004)(101416001)(46102003)(33646002)(15974865002)(99286002)(95666004)(62966003)(77156002)(31966008)(107046002)(99396003)(76576001)(4396001)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding firmware to initramfs
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
X-List-Received-Date: Mon, 01 Dec 2014 13:39:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hyaXMsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tDQo+IGJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZ10gT24gQmVoYWxmIE9mIENocmlzIFRhcHANCj4gU2VudDogU3VuZGF5LCBOb3ZlbWJl
ciAzMCwgMjAxNCA2OjA5IFBNDQo+IFRvOiBDaGVuUWkNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gQWRkaW5nIGZpcm13YXJlIHRvIGluaXRyYW1m
cw0KPiANCj4gDQo+IE9uIDMwIE5vdiAyMDE0LCBhdCAwODowNiwgQ2hlblFpIDxRaS5DaGVuQHdp
bmRyaXZlci5jb20+IHdyb3RlOg0KPiANCj4gPiBDcmVhdGUgYSBiYmFwcGVuZCBmaWxlIGZvciBj
b3JlLWltYWdlLW1pbmltYWwtaW5pdHJhbWZzLCBhbmQgYWRkIHRoZQ0KPiBmb2xsb3dpbmcgbGlu
ZSB0byB0aGUgYmJhcHBlbmQgZmlsZS4NCj4gPg0KPiA+IFBBQ0tBR0VfSU5TVEFMTCArPSAibGlu
dXgtZmlybXdhcmUiDQo+IA0KPiBUaGFua3MsIFBBQ0tBR0VfSU5TVEFMTCB3b3JrcyBncmVhdCA6
LSkNCj4gDQo+IEkndmUgZ29uZSB3aXRoIHRoZSBmb2xsb3dpbmcgaW4gbXkgbG9jYWwuY29uZjoN
Cj4gDQo+ICAgIFBBQ0tBR0VfSU5TVEFMTF9hcHBlbmRfcG4tY29yZS1pbWFnZS1taW5pbWFsLWlu
aXRyYW1mcyA9ICIgbGludXgtDQo+IGZpcm13YXJlIg0KPiANCg0KRm9yIGZ1dHVyZSBtYW5hZ2Vt
ZW50LCB5b3UgbWF5IGJlIGJldHRlciBvZmYgdXNpbmcgYSAuYmJhcHBlbmQgZm9yIHRoZSBpbWFn
ZSBpbnN0ZWFkIG9mIGFkZGluZyB0aGlzIHRvIHlvdXIgbG9jYWwuY29uZi4gIElmIHlvdSBoYXZl
IHlvdXIgb3duIGxheWVyIGluIHdoaWNoIHlvdSBoYXZlIHlvdXIgb3duIHJlY2lwZXMsIHBsYWNp
bmcgYSAuYmJhcHBlbmQgZm9yIHRoZSBpbWFnZSBpbiB0aGlzIGxheWVyIG1ha2VzIGl0IGVhc3kg
dG8ga2VlcCB0cmFjayBvZiBldmVyeXRoaW5nIHlvdSBjaGFuZ2VkIHRvIGN1c3RvbWl6ZSB0aGUg
aW1hZ2UuICBJZiB5b3UgbmVlZCB0byBzdGFydCBhIG5ldyBidWlsZCBzZXR1cCBmcm9tIHNjcmF0
Y2ggKG5ldyBkZXZlbG9wZXIgc3RhcnRzIHdvcmtpbmcgb24gdGhlIHByb2plY3QsIGhhcmQgZHJp
dmUgY3Jhc2hlcywgZXRjLikgeW91IGNhbiBnZXQgYSBjb3B5IG9mIHlvdXIgbGF5ZXIgYW5kIGhh
dmUgYWxsIHlvdXIgaW1hZ2UgY3VzdG9taXphdGlvbnMgcmVhZHkuDQoNClNwZWNpZmljYWxseSBm
b3IgeW91ciBjYXNlLCBhZGRpbmcgdGhlIGZpbGUgcmVjaXBlcy1jb3JlL2ltYWdlcy9jb3JlLWlt
YWdlLW1pbmltYWwtaW5pdHJhbWZzLmJiYXBwZW5kIHRvIHlvdXIgbGF5ZXIgd2l0aCB0aGUgY29u
dGVudHM6DQoNClBBQ0tBR0VfSU5TVEFMTCArPSAibGludXgtZmlybXdhcmUiDQoNCnNob3VsZCBn
ZXQgeW91IHRoZSBzYW1lIHJlc3VsdHMgYnV0IGJlIGVhc2llciB0byBtYWludGFpbi4NCg0KUmVn
YXJkcywNCkJyeWFuDQoNCj4gPg0KPiA+IE9uIDExLzI4LzIwMTQgMDg6MzcgUE0sIENocmlzIFRh
cHAgd3JvdGU6DQo+ID4+IEknbSBuZXR3b3JrIGJvb3RpbmcgYSBzeXN0ZW0gdXNpbmcgaVBYRS4g
VGhlIHByb2Nlc3MgdXNlcyBhIGNvcmUtaW1hZ2UtDQo+IG1pbmltYWwtaW5pdHJhbWZzIGltYWdl
IHRvIHNlbGVjdCB0aGUgZmluYWwgcm9vdGZzIHRoYXQgZ2V0cyBsb2FkZWQuDQo+ID4+DQo+ID4+
IFRoaXMgZ2VuZXJhbGx5IHdvcmtzIGZpbmUsIGJ1dCBJIG5lZWQgdG8gYmUgYWJsZSB0byBpbnN0
YWxsIGxpbnV4LWZpcm13YXJlIGluDQo+IHRoZSBpbml0cmFtZnMgaW1hZ2UgKHNwZWNpZmljYWxs
eSBmb3IgdGhlIE5JQyB0aGF0IGdldHMgdXNlZCB0byBsb2FkIHRoZSBmaW5hbA0KPiByb290ZnMp
Lg0KPiA+Pg0KPiA+PiBIb3cgZG8gSSBnZXQgbGludXgtZmlybXdhcmUgdG8gaW5zdGFsbCBpbiBj
b3JlLWltYWdlLW1pbmltYWwtaW5pdHJhbWZzPw0KPiBJJ3ZlIHRyaWVkIGFkZGluZyB0aGUgZm9s
bG93aW5nIGludG8gbG9jYWwuY29uZiwgYnV0IHdpdGggbm8gbHVjazoNCj4gPj4NCj4gPj4gTUFD
SElORV9FU1NFTlRJQUxfRVhUUkFfUkRFUEVORFMgKz0gImxpbnV4LWZpcm13YXJlIg0KPiA+PiBJ
TUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgbGludXgtZmlybXdhcmUiDQo+ID4+IENPUkVfSU1BR0Vf
RVhUUkFfSU5TVEFMTCArPSAiIGxpbnV4LWZpcm13YXJlIg0KPiANCj4gLS0NCj4gDQo+IENocmlz
IFRhcHANCj4gb3BlbnNvdXJjZUBrZXlsZXZlbC5jb20NCj4gd3d3LmtleWxldmVsLmNvbQ0KPiAN
Cj4gLS0tLQ0KPiBZb3UgY2FuIHRlbGwgeW91J3JlIGdldHRpbmcgb2xkZXIgd2hlbiB5b3VyIGNh
ciBpbnN1cmFuY2UgZ2V0cyByZWFsIGNoZWFwIQ0KPiANCj4gLS0NCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2xpc3RpbmZvL3lvY3RvDQo=

