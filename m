Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99073E00C9F; Mon, 28 Aug 2017 19:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16018E00C99
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 19:39:01 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Tue, 29 Aug 2017 12:38:58 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Aug 2017 12:38:56 +1000
Thread-Topic: [yocto] Python module and build_ext args
Thread-Index: AdMdXQNEjfh8vJQ0TRyR6DmwaftuSQDEo1Ng
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F08641D1@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
	<CAMKF1soq1xM+HM+tBX3ear57EU0P8N5MMSJxgOy3+ixyt2GPOA@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864194@IR-CENTRAL.corp.innerrange.com>
	<CAMKF1soW30WKkrHtcNcgLM5A22oLO-irncSnBFjJFw999PjtdQ@mail.gmail.com>
In-Reply-To: <CAMKF1soW30WKkrHtcNcgLM5A22oLO-irncSnBFjJFw999PjtdQ@mail.gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23286.007
x-tm-as-result: No--18.479400-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module and build_ext args
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
X-List-Received-Date: Tue, 29 Aug 2017 02:39:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2hlbSBSYWogd3JvdGU6DQo+IE9uIFRodSwgQXVnIDI0LCAyMDE3IGF0IDk6NDIgUE0sIENyYWln
IE1jUXVlZW4NCj4gPGNyYWlnLm1jcXVlZW5AaW5uZXJyYW5nZS5jb20+IHdyb3RlOg0KPiA+IEto
ZW0gUmFqIHdyb3RlOg0KPiA+IE9uIFRodSwgQXVnIDI0LCAyMDE3IGF0IDY6NDggUE0gQ3JhaWcg
TWNRdWVlbg0KPiA+IDxjcmFpZy5tY3F1ZWVuQGlubmVycmFuZ2UuY29tPg0KPiA+IHdyb3RlOg0K
PiA+DQo+ID4gSSB3cm90ZToNCj4gPj4gSSdtIHRyeWluZyB0byBtYWtlIGEgcmVjaXBlIGZvciBw
eXRob24zLXV2bG9vcCwgdXNpbmcgc2V0dXB0b29sczMuDQo+ID4+DQo+ID4+IFRoZSBQeXRob24g
MyB1dmxvb3AgbW9kdWxlIGRlcGVuZHMgb24gbGlidXYuIEl0IGJ1bmRsZXMgYSB2ZXJzaW9uIG9m
DQo+ID4+IGxpYnV2LCBhbmQgc2V0dXAucHkgdHJpZXMgdG8gYnVpbGQgaXQsIGJ1dCBpdCBkb2Vz
bid0IHdvcmsgd2VsbCBmb3INCj4gPj4gY3Jvc3MtY29tcGlsYXRpb24uDQo+ID4+IEhvd2V2ZXIs
IGl0IGFsc28gcHJvdmlkZXMgYSBidWlsZF9leHQgcGFyYW1ldGVyICItLXVzZS1zeXN0ZW0tbGli
dXYiLA0KPiA+PiB3aGljaCBzZWVtcyB0byB3b3JrIHdoZW4gSSB0cnkgcnVubmluZyBpdCBtYW51
YWxseSBpbiBkZXZzaGVsbC4gKEkNCj4gPj4gaGF2ZSBtYWRlIGEgc3VpdGFibGUgcmVjaXBlIGZv
ciBsaWJ1diBhbmQgYWRkZWQgbGlidXYgdG8gREVQRU5EUy4pDQo+ID4+DQo+ID4+IEhvdyBjYW4g
SSBzcGVjaWZ5IHRoZSAiLS11c2Utc3lzdGVtLWxpYnV2IiBwYXJhbWV0ZXIgZm9yIGJ1aWxkX2V4
dCBpbg0KPiA+PiB0aGUgcHl0aG9uMy11dmxvb3AgcmVjaXBlPyBJIHNlZSBhIHJlZmVyZW5jZSB0
bw0KPiA+PiBESVNUVVRJTFNfQlVJTERfRVhUX0FSR1MsIGJ1dCBpdCBkb2Vzbid0IHNlZW0gdG8g
YmUgZnVuY3Rpb25hbC4NCj4gPg0KPiA+DQo+ID4gSSBzZWUgRElTVFVUSUxTX0JVSUxEX0VYVF9B
UkdTIHdhcyBzdWJtaXR0ZWQgaW4gdGhpcyBwYXRjaDoNCj4gPiBodHRwczovL3BhdGNod29yay5v
cGVuZW1iZWRkZWQub3JnL3BhdGNoLzY2MDcxLw0KPiA+DQo+ID4gSG93ZXZlciwgaW4gdGhlIFlv
Y3RvIHBva3kgcmVwb3NpdG9yeSwgSSBzZWUgY29tbWl0DQo+ID4gMDIyMWFmMGY0ZWU5ZThiZmI4
Nzk2ODQxYmRmODA2ZTM4YmM2MDBjNiB3aGljaCBhcHBlYXJzIHRvIGJlIGENCj4gYnJva2VuDQo+
ID4gdmVyc2lvbiBvZiB0aGUgYWJvdmUgcGF0Y2ggd2l0aCB0aGUgc2VwYXJhdGUgYnVpbGRfZXh0
IHN0ZXAgbm90DQo+ID4gYWN0dWFsbHkgZXhlY3V0ZWQgd2l0aCB0aGUgRElTVFVUSUxTX0JVSUxE
X0VYVF9BUkdTIHBhcmFtZXRlcnMuDQo+ID4NCj4gPg0KPiA+DQo+ID4gWW91IGRpZCBub3QgZXhw
bGFpbiBicm9rZW4gaW4gd2hpY2ggc2Vuc2UgPw0KPiA+DQo+ID4NCj4gPg0KPiA+IEl0IGlzIGJy
b2tlbiBpbiB0aGUgc2Vuc2UgdGhhdDogVGhlIHNlcGFyYXRlIGJ1aWxkX2V4dCBzdGVwIGlzIG5v
dA0KPiA+IGFjdHVhbGx5IGV4ZWN1dGVkIHdpdGggdGhlIERJU1RVVElMU19CVUlMRF9FWFRfQVJH
UyBwYXJhbWV0ZXJzLiBUaGUNCj4gPiBvcmlnaW5hbCBwYXRjaCBzdWJtaXNzaW9uIGNvbnRhaW5l
ZDoNCj4gPg0KPiA+DQo+ID4NCj4gPiAgICAgICAgICAgU1RBR0lOR19JTkNESVI9JHtTVEFHSU5H
X0lOQ0RJUn0gXA0KPiA+DQo+ID4gICAgICAgICAgIFNUQUdJTkdfTElCRElSPSR7U1RBR0lOR19M
SUJESVJ9IFwNCj4gPg0KPiA+ICAgICAgICAgICBCVUlMRF9TWVM9JHtCVUlMRF9TWVN9IEhPU1Rf
U1lTPSR7SE9TVF9TWVN9IFwNCj4gPg0KPiA+IC0gICAgICAgICAke1NUQUdJTkdfQklORElSX05B
VElWRX0vJHtQWVRIT05fUE59LW5hdGl2ZS8ke1BZVEhPTl9QTn0NCj4gc2V0dXAucHkNCj4gPiBi
dWlsZCAke0RJU1RVVElMU19CVUlMRF9BUkdTfSB8fCBcDQo+ID4NCj4gPiArICAgICAgICAgJHtT
VEFHSU5HX0JJTkRJUl9OQVRJVkV9LyR7UFlUSE9OX1BOfS1uYXRpdmUvJHtQWVRIT05fUE59DQo+
ID4gKyBzZXR1cC5weQ0KPiA+IFwNCj4gPg0KPiA+ICsgICAgICAgICBidWlsZF9leHQgLS1pbmNs
dWRlLWRpcnMNCj4gPiAke1NUQUdJTkdfSU5DRElSfS8ke1BZVEhPTl9ESVJ9JHtQWVRIT05fQUJJ
fSBcDQo+ID4NCj4gPiArICAgICAgICAgLS1saWJyYXJ5LWRpcnMgJHtTVEFHSU5HX0xJQkNESVJ9
LyR7UFlUSE9OX0RJUn0gXA0KPiA+DQo+ID4gKyAgICAgICAgICR7RElTVFVUSUxTX0JVSUxEX0VY
VF9BUkdTfSBcDQo+ID4NCj4gPiArICAgICAgICAgYnVpbGQgJHtESVNUVVRJTFNfQlVJTERfQVJH
U30gfHwgXA0KPiA+DQo+ID4gKyAgICAgICAgICR7U1RBR0lOR19CSU5ESVJfTkFUSVZFfS8ke1BZ
VEhPTl9QTn0tbmF0aXZlLyR7UFlUSE9OX1BOfQ0KPiA+ICsgc2V0dXAucHkNCj4gPiBidWlsZF9l
eHQgJHtESVNUVVRJTFNfQlVJTERfQVJHU30gfHwgXA0KPiA+DQo+ID4gICAgICAgICAgIGJiZmF0
YWwgIiR7UFlUSE9OX1BOfSBzZXR1cC5weSBidWlsZF9leHQgZXhlY3V0aW9uIGZhaWxlZC4iDQo+
ID4NCj4gPiB9DQo+ID4NCj4gPg0KPiA+DQo+ID4gSG93ZXZlciB0aGF0IHBhcnQgb2YgdGhlIHBh
dGNoIGlzIG5vdCBwcmVzZW50IGluIGNvbW1pdA0KPiA+IDAyMjFhZjBmNGVlOWU4YmZiODc5Njg0
MWJkZjgwNmUzOGJjNjAwYzYuDQo+ID4NCj4gDQo+IElJUkMgdGhlcmUgd2VyZSBzb21lIGJyZWFr
YWdlcyB3aXRoIHRoaXMgYnV0IGl0IHdhcyBsb25nIHRpbWUgYWdvLiBDYW4geW91DQo+IGFwcHkg
dGhpcyBjaGFuZ2UgYW5kIHRlc3QgaXQgb3V0ID8NCg0KSSB0cmllZCBhcHBseWluZyB0aGUgY2hh
bmdlIG1hbnVhbGx5LiBUaGUgWW9jdG8gZG9fY29tcGlsZSBzdGVwIHN1Y2NlZWRlZC4gQnV0IHRo
ZW4gdGhlIGRvX2luc3RhbGwgc3RlcCBzdGlsbCBmYWlsZWQuIEl0IHNlZW1zIHRoYXQgdGhlIGRv
X2luc3RhbGwgc3RlcCAod2hpY2ggcnVucyBzZXR1cC5weSBpbnN0YWxsKSBzdGlsbCBydW5zIHRo
ZSBzZXR1cC5weSBidWlsZF9leHQgc3RlcCBhIHNlY29uZCB0aW1lLCB3aXRob3V0IHRoZSBleHRy
YSBvcHRpb24gSSB3YXMgdHJ5aW5nIHRvIHVzZS4NCg0KSSdtIG5vdCBmYW1pbGlhciBlbm91Z2gg
d2l0aCB0aGUgd29ya2luZyBvZiBweXRob24zIHNldHVwLnB5IHRvIGtub3cgd2h5IHRoZSBpbnN0
YWxsIHN0ZXAgcmUtcnVucyB0aGUgYnVpbGRfZXh0IHN0ZXAgYSBzZWNvbmQgdGltZS4NCg0KLS0g
DQpDcmFpZyBNY1F1ZWVuDQoNCg==

