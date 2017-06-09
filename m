Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97150E00BBF; Thu,  8 Jun 2017 19:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7EA4E00B77
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 19:35:55 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 9 Jun 2017 12:35:49 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Joshua Watt <jpewhacker@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 12:35:47 +1000
Thread-Topic: [yocto] dllmap config for a Mono app
Thread-Index: AdLgYMNze4OWP4n2RJiESwoumWNtEAAZlIRA
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F079EF5D@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFC@IR-CENTRAL.corp.innerrange.com>
	<1496930927.8427.5.camel@gmail.com>
In-Reply-To: <1496930927.8427.5.camel@gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23120.004
x-tm-as-result: No--20.228800-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: dllmap config for a Mono app
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
X-List-Received-Date: Fri, 09 Jun 2017 02:36:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Sm9zaHVhIFdhdHQgd3JvdGU6DQo+IE9uIFRodSwgMjAxNy0wNi0wOCBhdCAxNjo0MSArMTAwMCwg
Q3JhaWcgTWNRdWVlbiB3cm90ZToNCj4gPiBJIGhhdmUgYSBNb25vIGFwcCB0aGF0IHVzZXMgRGxs
SW1wb3J0IHRvIGxvYWQgc29tZSBmdW5jdGlvbnMgZnJvbQ0KPiA+IGxpYnJhcmllcy4gVGhlIGFw
cCBjYW4ndCBmaW5kIHRoZSBsaWJyYXJpZXMgdW5sZXNzIEkgY3JlYXRlIGEgTW9ubw0KPiA+IGNv
bmZpZyBmaWxlIGNvbnRhaW5pbmcgZGxsbWFwIGxpbmVzIHRvIG1hcCB0aGUgbGlicmFyeSdzIHBs
YWluICJETEwiDQo+ID4gbmFtZSAoZS5nLiAiZm9vIikgdG8gdGhlIHJlYWwgbmFtZSBvZiB0aGUg
LnNvIGZpbGUgKGUuZy4NCj4gPiAibGliZm9vLnNvLjQiKS4NCj4gDQo+IEknbSBub3QgZmFtaWxp
YXIgd2l0aCBNb25vLCBpcyBsaWJmb28gYSBwbGFpbiBvbGQgbGlicmFyeSB0aGF0IGFueW9uZSBj
YW4gdXNlLCBvcg0KPiBpdCBpcyBzb21lIHNwZWNpYWwgIk1vbm8gTGlicmFyeSINCg0KSXQncyBh
IHBsYWluIG9sZCBsaWJyYXJ5LiBJdCBqdXN0IHNvIGhhcHBlbnMgdGhhdCBJIHdyb3RlIGl0LCBi
dXQgb3RoZXIgdGhhbiB0aGF0IGl0J3MgYSB0eXBpY2FsIGxpYnJhcnkuDQoNCj4gPiAqIFdoYXQg
d291bGQgYmUgYSBnb29kIHdheSBpbiB0aGUgLmJiIHJlY2lwZSB0byBhdXRvbWF0aWNhbGx5IGNy
ZWF0ZQ0KPiA+IHRoZSByZXF1aXJlZCBNb25vIGNvbmZpZyBmaWxlPyBJdCB3b3VsZCBuZWVkIHRv
IGZpbmQgdGhlICJyZWFsIiBuYW1lcw0KPiA+IG9mIHRoZSBsaWJyYXJ5IGZpbGVzIGZyb20gdGhl
IGxpYnJhcnkocykgYnVpbGQgb3V0cHV0LiBTbyBpdCB3b3VsZA0KPiA+IERFUEVORFMgb24gdGhl
IGxpYnJhcnkocykuDQo+ID4NCj4gPiAqIElzIGl0IGJldHRlciB0byBjcmVhdGUgYSBsb2NhbCBj
b25maWcgZmlsZSwgb3Igd3JpdGUgaXQgaW50bw0KPiA+IC9ldGMvbW9uby9jb25maWc/IChNeSBN
b25vIGFwcCBoYXMgdGhlIERsbEltcG9ydHMgaW4gYSBjb21waWxlZCBETEwsDQo+ID4gYW5kIHNv
IGZhciBJJ3ZlIGZvdW5kIHRoYXQgSSBuZWVkIHRvIGNyZWF0ZSBhIGxvY2FsIE15RGxsLmRsbC5j
b25maWcNCj4gPiBmaWxlOyBtYWtpbmcgYSBNeUFwcC5leGUuY29uZmlnIGZpbGUgZG9lc24ndCB3
b3JrLikNCj4gDQo+IFBhY2thZ2luZyBydWxlcyByZXF1aXJlIHRoYXQgZXZlcnkgZmlsZSBiZWxv
bmcgdG8gb25lIGFuZCBvbmx5IG9uZSBwYWNrYWdlLiBJZg0KPiB5b3VyIGFwcGxpY2F0aW9uIHdy
aXRlcyAvZXRjL21vbm8vY29uZmlnLCB5b3Ugd291bGRuJ3QgYmUgYWJsZSB0byB3cml0ZSB0aGF0
DQo+IGZpbGUgZnJvbSBhbnkgb3RoZXIgcGFja2FnZSwgaW5jbHVkaW5nIHNvbWUgb3RoZXIgTW9u
byBhcHBsaWNhdGlvbi4gVGhlDQo+IE15QXBwLmV4ZS5jb25maWcgZmlsZSAodW5mb3J0dW5hdGVs
eSkgc291bmRzIGxpa2UgdGhlIGlkZWFsIHNvbHV0aW9uLCBiZWNhdXNlDQo+IHlvdSBrbm93IHRo
YXQgbm8gb3RoZXIgcGFja2FnZSBpcyBnb2luZyB0byB0cnkgYW5kIHdyaXRlIHRoYXQgZmlsZS4g
V3JpdGluZw0KPiBNeURsbC5kbGwuY29uZmlnIHJ1bnMgaW50byB0aGUgc2FtZSBwcm9ibGVtIGFz
IC9ldGMvbW9uby9jb25maWcgKGF0IGxlYXN0IGlmDQo+IHlvdSBhcmUgdHJ5aW5nIHRvIHdyaXRl
IGl0IGZyb20geW91ciBNeUFwcCByZWNpcGUpLCBhcyBhbm90aGVyIGFwcCBtaWdodA0KPiB3YW50
IHRvIHdyaXRlIHRoZSBzYW1lIGZpbGUgYmVjYXVzZSBpdCB1c2VzIHRoZSBzYW1lIGxpYnJhcnkg
YnV0IHRoYXQgaXNuJ3QNCj4gYWxsb3dlZCBieSB0aGUgcGFja2FnaW5nIHJ1bGVzLiBJZiB5b3Ug
d2FudCB0byB3cml0ZSBNeURsbC5kbGwuY29uZmlnLCBpdCBzaG91bGQNCj4gYmUgZG9uZSBpbiB0
aGUgcmVjaXBlIHRoYXQgYWN0dWFsbHkgY3JlYXRlcyB0aGUgZGxsLg0KDQovZXRjL21vbm8vY29u
ZmlnIGlzIHRoZSAic3RhbmRhcmQiIHN5c3RlbSBmaWxlIGZvciBNb25vLCBhbmQgYW4gaW5pdGlh
bCBmaWxlIGlzIGNyZWF0ZWQgYnkgdGhlIG1vbm8gcmVjaXBlLCBzbyBNb25vIGNhbiBsb2FkIHZh
cmlvdXMgc3RhbmRhcmQgc3lzdGVtIGxpYnJhcmllcyBzdWNoIGFzIGxpYmMuc28uNi4gTW9kaWZ5
aW5nIGl0IHdvdWxkIGJlIGNvbXBhcmFibGUgdG8gbW9kaWZ5aW5nIG90aGVyIHN5c3RlbSBjb25m
aWcgZmlsZXMgc3VjaCBhcyAvZXRjL21vZHVsZXMsIHdoZXJlIGl0IHdvdWxkIGJlIGJldHRlciB0
byBhZGQgYSBmaWxlIHRvIC9ldGMvbW9kcHJvYmUuZC8uIEJ1dCB1bmZvcnR1bmF0ZWx5IE1vbm8g
ZG9lc24ndCBwcm92aWRlIGZvciBsb2FkaW5nIGNvbmZpZyBmcm9tIGZpbGVzIGluIGEgZGlyZWN0
b3J5IGxpa2UgL2V0Yy9tb25vL2NvbmZpZy5kLw0KDQpJIGd1ZXNzIEkgbmVlZCB0byB3cml0ZSB0
byBNeURsbC5kbGwuY29uZmlnIGluIHRoZSByZWNpcGUgZm9yIG15IE1vbm8gYXBwIHRoZW4uDQoN
ClRoYW5rcyBmb3IgdGhlIGFkdmljZSBvbiB0aGlzLCBtdWNoIGFwcHJlY2lhdGVkLg0KDQotLSAN
CkNyYWlnIE1jUXVlZW4NCg0K

