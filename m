Return-Path: <Jonas.Maas@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12F72E00843; Sun, 17 Jun 2018 23:25:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B426E006B4
	for <yocto@yoctoproject.org>; Sun, 17 Jun 2018 23:25:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id CCB8410BEC0;
	Mon, 18 Jun 2018 08:25:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQVBtTzaHud4; Mon, 18 Jun 2018 08:25:29 +0200 (CEST)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS;
	Mon, 18 Jun 2018 08:25:29 +0200 (CEST)
Received: from VISTREX4.vi.vector.int ([169.254.2.20]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0382.000;
	Mon, 18 Jun 2018 08:25:29 +0200
From: "Maas, Jonas" <Jonas.Maas@vector.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Yocto not fetching unzip
Thread-Index: AQHUBPTdSi0E86+w0kOkX6A9rZzMtqRlkAhQ
Date: Mon, 18 Jun 2018 06:25:28 +0000
Message-ID: <592B3CB7FFBCEC488DD878913E3292C08EF19656@vistrex4.vi.vector.int>
References: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
	<CAJ86T=Vkb2sTh0PX2KqTMJxfK8p0xOAZeRaYpToG=dXKvnS_vQ@mail.gmail.com>
In-Reply-To: <CAJ86T=Vkb2sTh0PX2KqTMJxfK8p0xOAZeRaYpToG=dXKvnS_vQ@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.72.40]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 57906BC9-DEC5-4B1E-A9C0-8F17EE729436
x-g-data-mailsecurity-for-exchange-processedonrouted: True
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Jun 2018 02:06:25 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto not fetching unzip
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
X-List-Received-Date: Mon, 18 Jun 2018 06:25:35 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VW56aXAgaXMgYSBuYXRpdmUgcmVjaXBlIGFuZCBkb2VzIG5vdCBzZWVtIHRvIGJlIGluY2x1ZGVk
IGluIGFueSBpbWFnZS4gU28gSSBndWVzcyB0aGlzIGlzIGp1c3QgdGhlIHdheSBZb2N0byBpcyBk
ZWFsaW5nIHdpdGggbmF0aXZlIHJlY2lwZXMuDQpTbyBJJ2xsIGhhdmUgdG8gc3RpY2sgd2l0aCB0
aGUgbWFudWFsIGZldGNoaW5nLg0KVGhhbmtzIQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogQW5kcmUgTWNDdXJkeSBbbWFpbHRvOmFybWNjdXJkeUBnbWFpbC5jb21dIA0KU2Vu
dDogU2F0dXJkYXksIEp1bmUgMTYsIDIwMTggMTI6MDUgQU0NClRvOiBNYWFzLCBKb25hcyA8Sm9u
YXMuTWFhc0B2ZWN0b3IuY29tPg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6
IFJlOiBbeW9jdG9dIFlvY3RvIG5vdCBmZXRjaGluZyB1bnppcA0KDQpPbiBNb24sIEp1biAxMSwg
MjAxOCBhdCA2OjMzIEFNLCBNYWFzLCBKb25hcyA8Sm9uYXMuTWFhc0B2ZWN0b3IuY29tPiB3cm90
ZToNCj4gSGVsbG8gZXZlcnlvbmUsDQo+DQo+IEkgYW0gZXhwZXJpZW5jaW5nIGFuIGlzc3VlIHdp
dGggeW9jdG8tMi4xLjI6DQo+DQo+IEkgYW0gdHJ5aW5nIHRvIHByZWZldGNoIGFsbCBuZWVkZWQg
c291cmNlcyBmb3IgYSBjZXJ0YWluIGltYWdlLCBsZXTigJlzIA0KPiBzYXkg4oCcbXktaW1hZ2Xi
gJ0sIGJ5IGNhbGxpbmc6DQo+DQo+ICQgYml0YmFrZSAtYyBmZXRjaGFsbCBteS1pbWFnZQ0KPg0K
PiBOZXh0IEkgYW0gYXJjaGl2aW5nIHRoZSB3aG9sZSBZb2N0byBzeXN0ZW0gKGluY2x1ZGluZyB0
aGUgZG93bmxvYWRzDQo+IGRpcmVjdG9yeSkgdG8gYSB0YXIuZ3ogZmlsZSBhbmQgdW5wYWNrIGl0
IG9uIGFub3RoZXIgc3lzdGVtLg0KPg0KPiBOb3cgd2hlbiBJIHNldCBCQl9OT19ORVRXT1JLPeKA
nTHigJ0gaW4gdGhlIGxvY2FsLmNvbmYgYW5kIHRyeSB0byBidWlsZCANCj4gdXNpbmcNCj4NCj4g
JCBiaXRiYWtlIG15LWltYWdlDQo+DQo+IHRoZSBwYWNrYWdlIOKAnHVuemlw4oCdIGlzIG1pc3Np
bmcuIEkgY2FuIGZldGNoIGl0IG1hbnVhbGx5IGJ5IHRlbXBvcmFyaWx5IA0KPiBzd2l0Y2hpbmcg
dG8gb25saW5lIGJ1aWxkIGFuIGNhbGxpbmcNCj4NCj4gJCBiaXRiYWtlIC1jIGZldGNoIHVuemlw
DQo+DQo+IEhvd2V2ZXIgSSB3YW50IHRvIGJlIGFibGUgdG8gYnVpbGQgY29tcGxldGVseSBmcm9t
IHRoZSBnZW5lcmF0ZWQgdGFyLmd6Lg0KPg0KPiBJcyB0aGlzIGEgYnVnIGluIFlvY3RvIG9yIGlu
dGVuZGVkIGJlaGF2aW9yPyBJZiBpdCBpcyBpbnRlbmRlZDogSXMgDQo+IHRoZXJlIGEgcHJvcGVy
IHNldHRpbmcgdG8gc29sdmUgdGhpcyBvciBkbyBJIGhhdmUgdG8gZmV0Y2ggdW56aXAgDQo+IG1h
bnVhbGx5IGJldm9yIHBhY2tpbmcgdGhlIGFyY2hpdmU/DQoNCllvdSBkb24ndCBtZW50aW9uIGhv
dyB5b3UgYXJlIHVzaW5nIHVuemlwLg0KDQpJZiB5b3UgYXJlIGluY2x1ZGluZyB1bnppcCBpbiB5
b3VyIGltYWdlIHRoZW4gZmFpbGluZyB0byBkb3dubG9hZCBpdCBkdXJpbmcgZmV0Y2hhbGwgaXMg
dW5leHBlY3RlZCBhbmQgc291bmRzIGxpa2UgYSBidWcuDQoNCklmIHlvdSdyZSBub3QgaW5jbHVk
aW5nIHVuemlwIGluIHlvdXIgaW1hZ2UgYnV0IGluc3RlYWQgeW91ciBidWlsZCBhY3R1YWxseSBk
ZXBlbmRzIG9uIHVuemlwLW5hdGl2ZSAoaWUgYSB0b29sIHRvIHJ1biBvbiB0aGUgaG9zdCBhbmQg
bmVlZGVkIGFzIGEgYnVpbGQgZGVwZW5kZW5jeSBpZiBhIHJlY2lwZSB5b3UgYnVpbGQgY29udGFp
bnMgLnppcCBvciAuamFyIGZpbGVzIGluIFNSQ19VUkkpIHRoZW4gSSdtIG5vdCBzdXJlIHdoYXQg
dGhlIGV4cGVjdGF0aW9uIGlzLiBJZiBmZXRjaGFsbCBkb2Vzbid0IGRvd25sb2FkIHRoZXNlIGlu
ZGlyZWN0IC1uYXRpdmUgZGVwZW5kZW5jaWVzIHRoZW4gaXQgbWlnaHQganVzdCBiZSB0aGUgd2F5
IGl0IGlzLiBJZiBzbywgdGhlbiBtYW51YWxseSBydW5uaW5nICJiaXRiYWtlIC1jIGZldGNoIHVu
emlwLW5hdGl2ZSIgbWlnaHQgYmUgYW4gYXBwcm9wcmlhdGUgc29sdXRpb24uDQo=

