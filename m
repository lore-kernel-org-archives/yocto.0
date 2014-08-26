Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA173E006DB; Tue, 26 Aug 2014 14:10:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF064E00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 14:10:45 -0700 (PDT)
Received: from [10.92.64.53] (helo=ssa-syr-dimstar3.saabusa.com)
	by smtpmail.saabsensis.com with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XMO0p-0003wX-Vs; Tue, 26 Aug 2014 17:10:43 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar3.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XMO0Z-0000uS-8E; Tue, 26 Aug 2014 17:10:27 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Tue, 26 Aug 2014 17:10:27 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Using uboot to boot a large uimage
Thread-Index: AQHPwV1VjnRg0o+DokKkufwcyPW8j5vjkgUA///PCLA=
Date: Tue, 26 Aug 2014 21:10:26 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3CA85D@corpmail01.corp.sensis.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
	<20140825053448.GD1014@haswell>
	<36A43B0E1E88D84791516F9D44BC48331B3CA7E5@corpmail01.corp.sensis.com>
	<20140826200348.GG18989@haswell>
In-Reply-To: <20140826200348.GG18989@haswell>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1XMO0Z-0000uS-8E
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.604, required 5,
	autolearn=not spam, AWL 0.30, BAYES_00 -1.90)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using uboot to boot a large uimage
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
X-List-Received-Date: Tue, 26 Aug 2014 21:10:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVyZSBpcyB3aGF0IEkgYW0gc2VlaW5nIHdpdGggY29yZS1pbWFnZS1taW5pbWFsDQoNCjMyNjEy
MDI0IGJ5dGVzIHJlYWQgaW4gMTEyNDQgbXMgKDIuOCBNaUIvcykNCjE4MTc5IGJ5dGVzIHJlYWQg
aW4gMzAgbXMgKDU5MC44IEtpQi9zKQ0KIyMgQm9vdGluZyBrZXJuZWwgZnJvbSBMZWdhY3kgSW1h
Z2UgYXQgMDAxMDAwMDAgLi4uDQogICBJbWFnZSBOYW1lOiAgIExpbnV4LTMuMTIuMA0KICAgSW1h
Z2UgVHlwZTogICBBUk0gTGludXggS2VybmVsIEltYWdlICh1bmNvbXByZXNzZWQpDQogICBEYXRh
IFNpemU6ICAgIDMyNjExOTYwIEJ5dGVzID0gMzEuMSBNaUINCiAgIExvYWQgQWRkcmVzczogMDAw
MDgwMDANCiAgIEVudHJ5IFBvaW50OiAgMDAwMDgwMDANCiMjIEZsYXR0ZW5lZCBEZXZpY2UgVHJl
ZSBibG9iIGF0IDAwMDAwMTAwDQogICBCb290aW5nIHVzaW5nIHRoZSBmZHQgYmxvYiBhdCAweDAw
MDAwMTAwDQogICBMb2FkaW5nIEtlcm5lbCBJbWFnZSAuLi4gT0sNCk9LDQogICBMb2FkaW5nIERl
dmljZSBUcmVlIHRvIDAzZmY4MDAwLCBlbmQgMDNmZmY3MDIgLi4uIE9LDQoNClN0YXJ0aW5nIGtl
cm5lbCAuLi4NCg0KDQpJZiBJIG1ha2UgdGhlIHVCb290IGltYWdlIH4zIE1CIGp1c3QgdXNpbmcg
Y29yZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcywgSSBnZXQgZGlmZmVyZW50IHJlc3VsdHMuIEhl
cmUgYXJlIHRoZSByZWxldmFudCBwYXJ0IG9mIG15IHVib290IGNvbmZpZ3VyYXRpb246DQoNCg0K
ZmR0YWRkcj0weDAwMDAwMTAwDQpmZHRpbWFnZT0vYm9vdC9zb2NmcGdhX21pdHlzb201Y3N4LmR0
Yg0KZmR0aW1hZ2VzaXplPTB4MjAwMA0KbW1jYm9vdD1zZXRlbnYgYm9vdGFyZ3MgY29uc29sZT10
dHlTMCwxMTUyMDAgcm9vdD0ke21tY3Jvb3R9IHJ3IHJvb3R3YWl0O2Jvb3RtICR7bG9hZGFkZHJ9
IC0gJHtmZHRhZGRyfQ0KbW1jbG9hZD1tbWMgcmVzY2FuOyR7bW1jbG9hZGNtZH0gbW1jIDA6JHtt
bWNsb2FkcGFydH0gJHtsb2FkYWRkcn0gJHtib290aW1hZ2V9OyR7bW1jbG9hZGNtZH0gbW1jIDA6
JHttbWNsb2FkcGFydH0gJHtmZHRhZGRyfSAke2ZkdGltYWdlfQ0KbW1jbG9hZGNtZD1leHQybG9h
ZA0KbW1jbG9hZHBhcnQ9Mg0KbW1jcm9vdD0vZGV2L21tY2JsazBwMg0KDQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpOaWNrIENyYXN0DQpBc3NvY2lhdGUgU29mdHdh
cmUgRW5naW5lZXINClNhYWIgU2Vuc2lzIENvcnBvcmF0aW9uDQpQaG9uZTogMzE1LTQ0NS01NzAz
DQpFbWFpbDogTmljaG9sYXMuQ3Jhc3RAc2FhYnNlbnNpcy5jb20NCg0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21d
IA0KU2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDE0IDQ6MDEgUE0NClRvOiBDcmFzdCwgTmlj
aG9sYXMNCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBV
c2luZyB1Ym9vdCB0byBib290IGEgbGFyZ2UgdWltYWdlDQoNCk9uIDE0LTA4LTI2IDE4OjQxOjIy
LCBDcmFzdCwgTmljaG9sYXMgd3JvdGU6DQo+IEkgYW0gY3VycmVudGx5IGF0dGVtcHRpbmcgdG8g
Ym9vdCB3aXRoIGFuIGluaXRyYW1mcyBidWlsdCBpbnRvIG15IHVpbWFnZSB1c2luZyB1Ym9vdC4g
DQo+IA0KPiBIb3dldmVyLCBJIGNhbm5vdCBnZXQgaXQgdG8gYm9vdCBjb3JyZWN0bHkuIElmIEkg
bWFrZSB0aGUgdWltYWdlIHRvdGFsbHkgYmFyZS1ib25lcywgYW5kIGp1c3QgdXNlIGNvcmUtaW1h
Z2UtbWluaW1hbC1pbml0cmFtZnMsIHRoZW4gaXQgaGFuZ3MgaHVyaW5nIGluaXQgYXQgdGhlIHdh
aXRpbmcgZm9yIGRldmljZXMuLi4gcHJpbnRvdXQuIEdvaW5nIGFuZCBndXR0aW5nIHRoZSBpbml0
IHNjcmlwdCwgSSBjYW4gZ2V0IHRvIHNpbmdsZSB1c2VyIG1vZGUgYW5kIGl0IGxvb2tzIGxpa2Ug
dGhlIGZpbGVzeXN0ZW0gaXMgdGhlcmUuDQo+IA0KPiBJIHdhbnQgYSBtb3JlIGZ1bGwgc3lzdGVt
LCBzbyBJIGluY2x1ZGVkIGNvcmUtaW1hZ2UtYm9vdCBhbmQgY29yZS1pbWFnZS1iYXNpYy4gSSBm
aWd1cmVkIHRoaXMgd291bGQgaW5pdGlhbGl6ZSBiZXR0ZXIuIFdoZW4gSSBkbyB0aGlzLCBteSB1
SW1hZ2UganVtcHMgdXAgdG8gfjUwTUIuIFUtYm9vdCB0aGVuIGhhbmdzIGF0ICJzdGFydGluZyBr
ZXJuZWwuLi4iDQo+IA0KDQpjb3JlLWltYWdlLW1pbmltYWwgc2hvdWxkIGJvb3QgeW91IGludG8g
c2hlbGwgY29uc29sZS4gVGhhdCBzaG91bGQgaGF2ZSBiZWVuIGVub3VnaA0KDQo+IEkgZG9uJ3Qg
dGhpbmsgdGhhdCB0aGUgdWltYWdlIGlzIGNsb2JiZXJpbmcgdGhlIGRldmljZSB0cmVlLCBiZWNh
dXNlIHRoZSBkZXZpY2UgdHJlZSBpcyBsb2FkZWQgYXQgMHgxMDAsIGFuZCB0aGUgdWltYWdlIGlz
IGxvYWRlZCBhdCAweDgwMDAuIA0KPiANCg0KbWFrZSBzdXJlIHRoYXQgbWVtb3J5IGlzIG5vdCBv
dmVybGFwcGluZyBhbmQgaXMgaW5pdGlhaXplZA0KDQotDQpUaGlzIG1lc3NhZ2UgaXMgaW50ZW5k
ZWQgb25seSBmb3IgdGhlIGFkZHJlc3NlZSBhbmQgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhh
dCBpcyBjb21wYW55IGNvbmZpZGVudGlhbCBvciBwcml2aWxlZ2VkLiAgQW55IHRlY2huaWNhbCBk
YXRhIGluIHRoaXMgbWVzc2FnZSBtYXkgYmUgZXhwb3J0ZWQgb25seSBpbiBhY2NvcmRhbmNlIHdp
dGggdGhlIFUuUy4gSW50ZXJuYXRpb25hbCBUcmFmZmljIGluIEFybXMgUmVndWxhdGlvbnMgKDIy
IENGUiBQYXJ0cyAxMjAtMTMwKSBvciB0aGUgRXhwb3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRp
b25zICgxNSBDRlIgUGFydHMgNzMwLTc3NCkuIFVuYXV0aG9yaXplZCB1c2UgaXMgc3RyaWN0bHkg
cHJvaGliaXRlZCBhbmQgbWF5IGJlIHVubGF3ZnVsLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5k
ZWQgcmVjaXBpZW50LCBvciB0aGUgcGVyc29uIHJlc3BvbnNpYmxlIGZvciBkZWxpdmVyaW5nIHRv
IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHlvdSBzaG91bGQgbm90IHJlYWQsIGNvcHksIGRpc2Ns
b3NlIG9yIG90aGVyd2lzZSB1c2UgdGhpcyBtZXNzYWdlLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0
aGlzIGVtYWlsIGluIGVycm9yLCBwbGVhc2UgZGVsZXRlIGl0LCBhbmQgYWR2aXNlIHRoZSBzZW5k
ZXIgaW1tZWRpYXRlbHkuIA0KLSAgICAgICAgICA=

