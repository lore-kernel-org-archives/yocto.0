Return-Path: <Viktor.Lenivyy@author.kiev.ua>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920EEE00C77; Fri, 28 Aug 2015 08:06:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.164.133.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay.incom.ua (relay.incom.ua [46.164.133.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CEB6E00C1C
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 08:06:28 -0700 (PDT)
Received: from [10.7.0.95] (helo=mail.incom.ua) by relay.incom.ua with esmtps
	(envelope-from <Viktor.Lenivyy@author.kiev.ua>)
	id 1ZVLEW-0004Ak-J6; Fri, 28 Aug 2015 18:06:24 +0300
From: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto]  How to recreate rootfs image
Thread-Index: AQHQ4ZjmWQ7MyesDhEOnJBEMmc7brp4hgbzA
Date: Fri, 28 Aug 2015 15:06:24 +0000
Message-ID: <66421f31460c46a69a78ed5d8ba19e6d@E2013a.CORP.ICS.COM.UA>
References: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
	<5075633.xNTnaMU5g6@peggleto-mobl.ger.corp.intel.com>
	<3a01e2ad749d46e2addcdcdec22eb968@E2013a.CORP.ICS.COM.UA>
	<7748623.B9dvoC9P17@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <7748623.B9dvoC9P17@peggleto-mobl.ger.corp.intel.com>
Accept-Language: uk-UA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Fri, 28 Aug 2015 15:06:33 -0000
Content-Language: ru-RU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBUaGUgYXNzdW1wdGlvbiBpcyB0aGF0IHlvdSB3b3VsZG4ndCBub3JtYWxseSBiZSBmZXRjaGlu
ZyB0aGUgc291cmNlIGZyb20gYQ0KPiBsb2NhbCBwYXRoIGFzIHlvdSBhcmUsIHlvdSB3b3VsZCBm
ZXRjaCBpdCBmcm9tIHNvbWUgcmVwb3NpdG9yeSAodGhvdWdoIHRoYXQNCj4gcmVwb3NpdG9yeSBt
YXkgYmUgaW50ZXJuYWwgdG8geW91ciBvcmdhbmlzYXRpb24pLiBBdCBzb21lIHBvaW50IHlvdSBy
dW4NCj4gImRldnRvb2wgbW9kaWZ5IiB3aGljaCBpcyBlZmZlY3RpdmVseSBhIHdheSBvZiBzYXlp
bmcgIkkgd2FudCB0byBzdGFydCB3b3JraW5nIG9uDQo+IHRoZSBzb3VyY2UgZm9yIHRoaXMgcGFy
dGljdWxhciByZWNpcGUgaW4gdGhpcyBsb2NhdGlvbiIgLSBhdCB3aGljaCBwb2ludCBlaXRoZXIN
Cj4geW91J3JlIHNwZWNpZnlpbmcgYW4gZXhpc3Rpbmcgc291cmNlIGNoZWNrb3V0IHRoYXQgeW91
J3ZlIHByZXBhcmVkLCBvciB5b3UNCj4gc3BlY2lmeSAteCBhbmQgaXQgcHJlcGFyZXMgaXQgZm9y
IHlvdS4gSGF2aW5nIHJ1biB0aGF0LCB0aGUgZmV0Y2gvdW5wYWNrIHRhc2tzIGFyZQ0KPiBkaXNh
YmxlZCwgYW5kIHRoZSBzcGVjaWZpZWQgZXh0ZXJuYWwgc291cmNlIHRyZWUgd2lsbCBiZSB1c2Vk
IGluIHRoZSBidWlsZC4NCj4gQWRkaXRpb25hbGx5LCB0aGF0IGV4dGVybmFsIHNvdXJjZSB0cmVl
IGlzIHlvdXJzIHRvIGtlZXAgc2hvdWxkIHlvdSB3aXNoIC0gaXQgd2lsbA0KPiBuZXZlciBiZSBk
ZWxldGVkIGJ5IHRoZSBidWlsZCBzeXN0ZW07IHRoZSBzYW1lICpjYW5ub3QqIGJlIHNhaWQgb2Yg
dGhlIGJ1aWxkDQo+IHN5c3RlbSdzIHRlbXBvcmFyeSBzb3VyY2UgY2hlY2tvdXQgdW5kZXIgdG1w
L3dvcmsgLSB5b3VyIHdvcmsgaW4gcHJvZ3Jlc3MNCj4gY2FuIGJlIGxvc3QgaW4gYW4gaW5zdGFu
dCBpZiB5b3UgcnVuIC1jIGNsZWFuIG9yIGhhdmUgcm1fd29yayBlbmFibGVkLiBUaGVyZQ0KPiBy
ZWFsbHkgYXJlIHR3byBkaWZmZXJlbnQgbW9kZXMgaGVyZSAtIG5vcm1hbCBidWlsZCwgd2hlcmUg
eW91IHdhbnQgdGhlIHNvdXJjZXMNCj4gYXMgYW55b25lIGVsc2UgYnVpbGRpbmcgdGhlIHN5c3Rl
bSB3b3VsZCBmZXRjaCwgYW5kIGRldmVsb3BtZW50LCB3aGVyZSB5b3UNCj4gd2FudCB5b3VyIG93
biBzb3VyY2VzIHRoYXQgeW91IGFyZSBpbiBjb250cm9sIG9mLg0KPiANClRoYW5rIHlvdSBmb3Ig
ZGV0YWlsZWQgYW5zd2VyLCBQYXVsLiBJdCBuZWVkcyB0byBiZSBhZGRlZCB0byBkb2N1bWVudGF0
aW9uLg0K

