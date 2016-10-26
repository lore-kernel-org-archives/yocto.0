Return-Path: <michael.blaettler@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F249E00D10; Tue, 25 Oct 2016 23:20:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE086E00D00
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 23:20:43 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id u9Q6KR6Y022694
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Wed, 26 Oct 2016 08:20:27 +0200
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTPS id u9Q6KQsR032111
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=OK);
	Wed, 26 Oct 2016 08:20:27 +0200
Received: from DEFTHW99ERBMSX.ww902.siemens.net (139.22.70.76) by
	DEFTHW99ERLMSX.ww902.siemens.net (139.22.70.136) with Microsoft SMTP
	Server (TLS) id 14.3.319.2; Wed, 26 Oct 2016 08:20:26 +0200
Received: from DEFTHW99EH2MSX.ww902.siemens.net ([169.254.12.168]) by
	DEFTHW99ERBMSX.ww902.siemens.net ([139.22.70.76]) with mapi id
	14.03.0319.002; Wed, 26 Oct 2016 08:20:25 +0200
From: "Blaettler, Michael" <michael.blaettler@siemens.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Thread-Topic: [yocto]  curl-native and ca-bundle
Thread-Index: AQHSL1EJgSsNZAyFR0613aYptm/akw==
Date: Wed, 26 Oct 2016 06:20:24 +0000
Message-ID: <347AAC56F29ACA4EA31B39C2109A6FE702F13188@DEFTHW99EH2MSX.ww902.siemens.net>
References: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477314859.21499.20.camel@intel.com>
	<347AAC56F29ACA4EA31B39C2109A6FE702F12C61@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477387933.21499.74.camel@intel.com>
In-Reply-To: <1477387933.21499.74.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: curl-native and ca-bundle
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
X-List-Received-Date: Wed, 26 Oct 2016 06:20:46 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGF0cmljaw0KDQpJIGp1c3QgY2hlY2tlZCB0aGUgc291cmNlIGNvZGUgb2YgY3VybC4NCg0K
SW4gYWNpbmNsdWRlLm00IG9uIGxpbmUgMjU2MCwgeW91J2xsIGZpbmQ6DQpkbmwgQ1VSTF9DSEVD
S19DQV9CVU5ETEUNCmRubCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQpkbmwgQ2hlY2sgaWYgYSBkZWZhdWx0IGNhLWJ1bmRsZSBzaG91bGQgYmUgdXNl
ZA0KZG5sDQpkbmwgcmVnYXJkaW5nIHRoZSBwYXRocyB0aGlzIHdpbGwgc2NhbjoNCmRubCAvZXRj
L3NzbC9jZXJ0cy9jYS1jZXJ0aWZpY2F0ZXMuY3J0IERlYmlhbiBzeXN0ZW1zDQpkbmwgL2V0Yy9w
a2kvdGxzL2NlcnRzL2NhLWJ1bmRsZS5jcnQgUmVkaGF0IGFuZCBNYW5kcml2YQ0KZG5sIC91c3Iv
c2hhcmUvc3NsL2NlcnRzL2NhLWJ1bmRsZS5jcnQgb2xkKGVyKSBSZWRoYXQNCmRubCAvdXNyL2xv
Y2FsL3NoYXJlL2NlcnRzL2NhLXJvb3QtbnNzLmNydCBGcmVlQlNEDQpkbmwgL2V0Yy9zc2wvY2Vy
dC5wZW0gT3BlbkJTRCwgRnJlZUJTRCAoc3ltbGluaykNCmRubCAvZXRjL3NzbC9jZXJ0cy8gKGNh
IHBhdGgpIFNVU0UNCg0KTGF0ZXIgaW4gdGhlIGZ1bmN0aW9uIHRoZXJlJ3MgYSBmb3IgbG9vcCwg
c2VhcmNoaW5nIGV2ZXJ5IHBhdGggZm9yIHRoZSBjZXJ0aWZpY2F0ZS1jaGFpbiAoaWYgLS13aXRo
LWNhLWJ1bmRsZSBpcyBub3Qgc2V0KS4NCmZvciBhIGluIC9ldGMvc3NsL2NlcnRzL2NhLWNlcnRp
ZmljYXRlcy5jcnQgXA0KICAgICAgICAgL2V0Yy9wa2kvdGxzL2NlcnRzL2NhLWJ1bmRsZS5jcnQg
XA0KICAgICAgICAgL3Vzci9zaGFyZS9zc2wvY2VydHMvY2EtYnVuZGxlLmNydCBcDQogICAgICAg
ICAvdXNyL2xvY2FsL3NoYXJlL2NlcnRzL2NhLXJvb3QtbnNzLmNydCBcDQogICAgICAgICAvZXRj
L3NzbC9jZXJ0LnBlbSBcDQogICAgICAgICAiJGNhYyI7IGRvDQogICAgaWYgdGVzdCAtZiAiJGEi
OyB0aGVuDQogICAgICAgIGNhPSIkYSINCiAgICAgICAgYnJlYWsNCiAgICBmaQ0KZG9uZQ0KDQpS
ZWdhcmRpbmcgdGhpcyBjb25maWd1cmF0aW9uIHNjcmlwdCwgcmVtb3ZpbmcgLS13aXRoLWNhLWJ1
bmRsZSBpbiBjdXJsLW5hdGl2ZSBzaG91bGQgbm90IGNhdXNlIGFueSBwcm9ibGVtcy4NCg0KS2lu
ZCByZWdhcmRzDQoNCk1pY2hhZWwNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0t
LQ0KVm9uOiBQYXRyaWNrIE9obHkgW21haWx0bzpwYXRyaWNrLm9obHlAaW50ZWwuY29tXSANCkdl
c2VuZGV0OiBEaWVuc3RhZywgMjUuIE9rdG9iZXIgMjAxNiAxMTozMg0KQW46IEJsYWV0dGxlciwg
TWljaGFlbCAoQlQgQ1BTIFImRCBaRyBGVyBJVFcpDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9y
ZzsgSXNtbyBQdXVzdGluZW47IEFuZHLDqSBEcmFzemlrDQpCZXRyZWZmOiBSZTogQVc6IFt5b2N0
b10gY3VybC1uYXRpdmUgYW5kIGNhLWJ1bmRsZQ0KDQpPbiBUdWUsIDIwMTYtMTAtMjUgYXQgMDU6
NDkgKzAwMDAsIEJsYWV0dGxlciwgTWljaGFlbCB3cm90ZToNCj4gSGkgUGF0cmljaw0KPiANCj4g
V2hhdCBkbyB5b3UgdGhpbmsgb2YgcmVtb3ZpbmcgdGhlIC0td2l0aC1jYS1idW5kbGUgYXMgYSBz
b2x1dGlvbiBmb3IgDQo+IGN1cmwtbmF0aXZlPyBPbiBteSBtYWNoaW5lIGl0IHdvcmtzIHdpdGhv
dXQgcHJvYmxlbXMuDQoNCldoYXQgcGF0aCBkb2VzIGl0IHVzZSB0aGVuPyBTb21ldGhpbmcgdGhh
dCBjb25maWd1cmUgZGV0ZXJtaW5lcyBiYXNlZCBvbiB0aGUgY3VycmVudCBtYWNoaW5lIChzb3Jy
eSwgSSdtIGxhenleV2J1c3kgcmlnaHQgbm93IGFuZCBoYXZlbid0IGNoZWNrZWQpPw0KDQpJIHN1
c3BlY3QgdGhhdCB0aGlzIHdvbid0IHdvcmsgd2hlbiBtb3ZpbmcgdGhlIHJlc3VsdGluZyBsaWIg
dGhyb3VnaCBzc3RhdGUgZnJvbSBvbmUgTGludXggZGlzdHJvIHRvIGFub3RoZXIgaWYgdGhlIGxv
Y2F0aW9uIG9mIHRoZSBidW5kbGUgZmlsZSBpcyBkaWZmZXJlbnQgb24gdGhvc2UgdHdvIGRpc3Ry
b3MuDQoNCi0tDQpCZXN0IFJlZ2FyZHMsIFBhdHJpY2sgT2hseQ0KDQpUaGUgY29udGVudCBvZiB0
aGlzIG1lc3NhZ2UgaXMgbXkgcGVyc29uYWwgb3BpbmlvbiBvbmx5IGFuZCBhbHRob3VnaCBJIGFt
IGFuIGVtcGxveWVlIG9mIEludGVsLCB0aGUgc3RhdGVtZW50cyBJIG1ha2UgaGVyZSBpbiBubyB3
YXkgcmVwcmVzZW50IEludGVsJ3MgcG9zaXRpb24gb24gdGhlIGlzc3VlLCBub3IgYW0gSSBhdXRo
b3JpemVkIHRvIHNwZWFrIG9uIGJlaGFsZiBvZiBJbnRlbCBvbiB0aGlzIG1hdHRlci4NCg0KDQoN
Cg==

