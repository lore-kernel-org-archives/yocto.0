Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCE0EE008ED; Mon,  3 Nov 2014 07:09:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE66CE00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 07:09:46 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjgGAGqZV1SHCzIm/2dsb2JhbABcgmsjgSwEgwLSUQIcgQUWAQEBAQEBfIQCAQEBAQIBEhERRQUHBAIBCA0IAQICAgYdAwICAjAUARABAQQOBQgaiBYJAah7ilGULwEBAQEBAQEBAQEBAQEBAQEBAQEBAReBLY8yFhsHgnc2gR4FkhqUBY4yggAegVpsgUiBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="90357700"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	03 Nov 2014 10:09:45 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 10:09:46 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Mon, 3 Nov 2014 10:09:45 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Another sstate rebuild issue, badly need help
	understanding sstate
Thread-Index: Ac/3ZHenwuDsNv5FQjOB/ZYFOtnF4wAPTCAAAApuzVA=
Date: Mon, 3 Nov 2014 15:09:43 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798411585F0@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
	<1415027190.5111.17.camel@ted>
In-Reply-To: <1415027190.5111.17.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 15:09:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNo
YXJkIFB1cmRpZSBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+
IFNlbnQ6IE5vdmVtYmVyIDAzLCAyMDE0IDEwOjA2IEFNDQo+IA0KPiBPbiBNb24sIDIwMTQtMTEt
MDMgYXQgMTI6NTMgKzAwMDAsIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIHdyb3RlOg0KPiA+IEkg
aGF2ZSBhIHZhcmlhYmxlIOKAnFJFVl9UT09MU+KAnSBkZWZpbmVkIGluIGRpc3Ryby9jb25mL3Nv
bWVuYW1lLmNvbmYgaW4NCj4gPiBhIGN1c3RvbSBkaXN0cm8gbGF5ZXIgZnJvbSBhIGdpdCByZXBv
Lg0KPiA+DQo+ID4gVGhpcyB2YXJpYWJsZSBpcyBhc3NpZ25lZCB0byBTUkNSRVYgaW4gYSBudW1i
ZXIgb2YgcmVjaXBlcyAoU1JDUkVWID0NCj4gPiDigJwke1JFVl9UT09MU33igJ0pIGZvciBwYWNr
YWdlcyBpbmNsdWRlZCBpbiBteSBpbWFnZXMgYW5kIFNES3MuDQo+IA0KPiBDYW4geW91IGRlc2Ny
aWJlIGhvdyB0aGUgdmFsdWUgb2YgUkVWX1RPT0xTIGlzIHNldD8gSXMgaXQganVzdCBhc3NpZ25l
ZA0KPiBzb21lIHZhbHVlIG9yIGRvbmUgd2l0aCBzb21lIGNvZGU/DQo+IA0KDQpSRVZfVE9PTFMg
PSAiPHNvbWUgZ2l0IGNvbW1pdCBoYXNoIHN0cmluZz4iDQoNCj4gRG9lcyBjbGVhcmluZyB0aGUg
Yml0YmFrZSBjYWNoZSBtYWtlIHRoaW5ncyByZWJ1aWxkIGFzIGV4cGVjdGVkIChtdg0KPiB0bXAv
Y2FjaGUgdG1wL2NhY2hlLW9sZCkgPw0KPiANCg0KSSBkaWQgYSBjbGVhbnNzdGF0ZSBvbiB0aGUg
YWZmZWN0ZWQgcGFja2FnZXMgYW5kIHRoZXkgcmVidWlsZCBhcyBleHBlY3RlZC4NCg0KTVYNCg==

