Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858E2E0043F
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 06:58:57 -0800 (PST)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Wed, 5 Feb 2014 09:58:49 -0500
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Wed, 5 Feb 2014 09:58:43 -0500
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Wed, 5 Feb 2014 09:58:42 -0500
From: Brian Karcz <briank@RUSSOUND.COM>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Parallel builds with common shared state cache
Thread-Index: Ac8hz87nxbjCIzVqQQeZCw+gouI1MQA2W5iAAApLA9A=
Date: Wed, 5 Feb 2014 14:58:42 +0000
Message-ID: <e474eb1be01d499e9acdd2a4842941ce@HERMES.RUSSOUND.com>
References: <1ebdbe80eed846bea559f9b0988acd37@HERMES.RUSSOUND.com>
	<CAJTo0LY+bAU5n2VyXuhBepdKfK400t5D0g8RhqOCYcKbhzKHDQ@mail.gmail.com>
In-Reply-To: <CAJTo0LY+bAU5n2VyXuhBepdKfK400t5D0g8RhqOCYcKbhzKHDQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.60]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFnrNqsTGxcLFwMCnuzjwU5DBvMb/09ktNrSvZbKYsLSVyYEpgCGKNTMvKb8igTXjzuMGtoL7nhVP21eyNzDec+1i5OIQEljKKHHzy04mCGcHo8TZPd+AHE4OZgFTiStfG1kgbEWJC/cawGw2AXWJF3unsILYIgJaEmdfP2aGqZ88owXMFhZwluics4IZosZFYsGOjVC2lcTXed/YQWwWARWJrTM+gu3iFXCS6P3ylBniiE5GiTlz54M1cAoEShw9shCsiFFATOL7qTVQx4lL3HoyH8yWEBCQWLLnPDOErSTRe/sdVNxHYuXOGcwQCwQlTs58wgIRN5PY+2AJVI2exO6DXawQdqDE25ONQHEOINtU4ur7YIiwrcSeGROhws4S827UQ4StJK6dnwrVqS2x/dU+KFtHYtO1VVCb5CX+37vPAjNmwuVlUFfKSpy+tohtAqP6LKSQnoUU0rOQPDkLyQMLGFlWMQp7uAb5ugbrBYUGB/uH+rnoJefnbmKEJoQdjH9v2B9ilORgUhLljfH/FCTEl5SfUpmRWJwRX1Sak1p8iFGCg0dJhFc2ACjHW1yQmFucmQ6TkuHgUJLgfQPSJliUmp5akZaZU5JaBJE+xSgpJc4rANInANKXUZoHl7vEKColzMvuBZTjKUgtys0sgYjfYhTmeMgkxJKXn5cqBXQiAxBoML5iFOdgVBLmfQeyiCczrwTuhFdA1zEBXbfO9T3IdSWJCCmpBsaYhru5Xhu4cmYdCTD+s0bD3XiiuQGb2HOj/7kv/ql0qLFEFVR9DMqSq7HO9n/xyiz81arYhoU6e1rsw/ZzBuxVz5GU3L6gevmVdK41D6/PWCMmOju05NFb+R3Jt143+U8ITf5x+nqF8u/X2/UzLXyc0+Z6J82cz9okmrDqzNdJNZd1fEVCbymxFGckGmoxFxUnAgAuvTKIfgMAAA==
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Parallel builds with common shared state cache
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
X-List-Received-Date: Wed, 05 Feb 2014 14:59:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9zcywNCg0KSSdtIHN1cmUgdGhlIGZhY3QgdGhhdCB3ZSBhcmUgc3RpbGwgb24gRWRpc29u
IGRvZXNuJ3QgaW5jcmVhc2UgdGhlIG9kZHMgdGhhdCBhbnkgcG90ZW50aWFsIGxvY2sgcHJvdGVj
dGlvbiBpcyBpbiBwbGFjZSBvbiB0aGUgY2FjaGUuIE11Y2ggbGlrZSB5b3VyIGV4cGVyaWVuY2Vz
LCBJIGhhdmVuJ3Qgc2VlbiBhbnl0aGluZyBhZHZlcnNlIHdpdGggb3VyIHByZXZpb3VzIGJ1aWxk
cywgYnV0IHRoZSBjb25maWd1cmF0aW9uIHNlZW1lZCBvZGQgYW5kIHdpdGggcG90ZW50aWFsIHRv
IGhhdmUgcHJvYmxlbXMuIEkgZmlndXJlZCBzaW5jZSBJIHdhcyBpbiB0aGUgcHJvY2VzcyBvZiB3
b3JraW5nIG9uIHRoZSBidWlsZCBzeXN0ZW0gYW5kIHRoaXMgd2FzIHJpZ2h0IGluIG15IGZhY2Us
IEknZCBzZWVrIG91dCBzb21lIGlucHV0IG9uIHRoZSBjb25maWd1cmF0aW9uJ3MgdmFsaWRpdHku
DQoNClRoYW5rcywNCkJyaWFuDQoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXSANClNlbnQ6IFdl
ZG5lc2RheSwgRmVicnVhcnkgMDUsIDIwMTQgOTozNCBBTQ0KVG86IEJyaWFuIEthcmN6DQpDYzog
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gUGFyYWxsZWwgYnVp
bGRzIHdpdGggY29tbW9uIHNoYXJlZCBzdGF0ZSBjYWNoZQ0KDQpPbiA0IEZlYnJ1YXJ5IDIwMTQg
MTg6MDMsIEJyaWFuIEthcmN6IDxicmlhbmtAcnVzc291bmQuY29tPiB3cm90ZToNCj4gSeKAmW0g
Y3VyaW91cyBpcyB0aGVyZSBhcmUgYW55IGlzc3VlcyB3aXRoIHVzaW5nIGEgY29tbW9uIHNoYXJl
ZCBzdGF0ZSANCj4gY2FjaGUgZGlyZWN0b3J5LCBvdXRzaWRlIHRoZSBidWlsZCBkaXJlY3Rvcnks
IGZvciBtdWx0aXBsZSBkaWZmZXJlbnQgDQo+IGltYWdlIGJ1aWxkcyB0aGF0IGFsc28gbWlnaHQg
YmUgcnVubmluZyBpbiBwYXJhbGxlbCB0byBlYWNoIG90aGVyPyBJ4oCZbSANCj4gaW4gdGhlIHBy
b2Nlc3Mgb2Ygc2V0dGluZyB1cCBhIG5ldyBidWlsZCBzZXJ2ZXIgYW5kIHdhbnRlZCB0byBtYWtl
IA0KPiBzdXJlIHRoaXMgd2FzbuKAmXQgYW4gaW52YWxpZCBjb25maWd1cmF0aW9uIGJlZm9yZSBw
cm9jZWVkaW5nLg0KDQpJJ20gbm90IHBvc2l0aXZlIHRoYXQgdGhlcmUgYXJlIGxvY2tzIGFyb3Vu
ZCB0aGUgc3N0YXRlIGNhY2hlIChhbHRob3VnaCB0aGVyZSBhcmd1YWJseSBzaG91bGQgYmUgaWYg
dGhlcmUgaXNuJ3QpLCBidXQgdGhlIHdvcnN0LWNhc2Ugc2NlbmFyaW8gaXMgdGhhdCBvbmUgYnVp
bGQgdHJpZXMgdG8gZXh0cmFjdCBhIHBhcnRpYWwgc3N0YXRlIGFyY2hpdmUsIGZhaWxzIGJlY2F1
c2UgaXQncyB0cnVuY2F0ZWQsIGFuZCBkb2VzIHRoZSBidWlsZCBpdHNlbGYuICBJdCdzIHByb2Jh
Ymx5IHNhZmUgZW5vdWdoOiBteSBwZXJzb25hbCBBQiBzaGFyZXMgYSBzc3RhdGUgYmV0d2VlbiBp
dHMgb3duIGJ1aWxkZXJzIGFuZCBteSBvd24gYnVpbGRzIHdpdGhvdXQgYW55IGlzc3Vlcy4NCg0K
Um9zcw0K

