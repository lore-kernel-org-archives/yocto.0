Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D1CE006B5; Mon, 25 Aug 2014 12:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB15E004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 12:34:19 -0700 (PDT)
Received: from [10.92.64.53] (helo=ssa-syr-dimstar3.saabusa.com)
	by smtpmail.saabsensis.com with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XM01x-0004nk-BY; Mon, 25 Aug 2014 15:34:17 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar3.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XM01R-0006Q1-9l; Mon, 25 Aug 2014 15:33:45 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Mon, 25 Aug 2014 15:33:45 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Bundling initramfs with uImage
Thread-Index: Ac+9fRl4kmW1Cg/bSwmxVZiqNWsIBgCyrZoAABTh0JA=
Date: Mon, 25 Aug 2014 19:33:44 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3CA501@corpmail01.corp.sensis.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
	<20140825053448.GD1014@haswell>
In-Reply-To: <20140825053448.GD1014@haswell>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1XM01R-0006Q1-9l
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.589, required 5,
	autolearn=not spam, AWL 0.31, BAYES_00 -1.90)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bundling initramfs with uImage
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
X-List-Received-Date: Mon, 25 Aug 2014 19:34:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLA0KDQpUaGlzIHNlZW1zIGxpa2UgYSBjbGVhbiB3YXkgdG8gZG8gd2hhdCBJIHdhbnQg
dG8gZG8uIFNvIHRoaXMgbWVhbnMgd2hlbmV2ZXIgSSBkbyBhIGJ1aWxkLCBpdCB3aWxsIA0KDQox
LikgQnVpbGQgdGhlIGtlcm5lbA0KMi4pIEJ1aWxkIHRoZSBmaWxlc3lzdGVtIChpbml0cmFtZnMp
DQozLikgUmVidWlsZCB0aGUga2VybmVsIHdpdGggdGhlIGJ1bmRsZWQgaW50cmFtZnMNCg0KQ29y
cmVjdD8NCg0KLU5pY2sNCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KTmljayBDcmFzdA0KQXNzb2NpYXRlIFNvZnR3YXJlIEVuZ2luZWVyDQpTYWFiIFNlbnNpcyBD
b3Jwb3JhdGlvbg0KUGhvbmU6IDMxNS00NDUtNTcwMw0KRW1haWw6IE5pY2hvbGFzLkNyYXN0QHNh
YWJzZW5zaXMuY29tDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0g
UmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSANClNlbnQ6IE1vbmRheSwgQXVndXN0IDI1
LCAyMDE0IDE6MzIgQU0NClRvOiBDcmFzdCwgTmljaG9sYXMNCkNjOiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBCdW5kbGluZyBpbml0cmFtZnMgd2l0aCB1SW1h
Z2UNCg0KT24gMTQtMDgtMjEgMjA6MTg6NDEsIENyYXN0LCBOaWNob2xhcyB3cm90ZToNCj4gQWxs
LA0KPiANCj4gSSBhbSBjdXJyZW50bHkgd29ya2luZyBpbiBhbiBlbWJlZGRlZCBlbnZpcm9ubWVu
dCwgc3RydWdnbGluZyB0byBnZXQgdGhlIGVudGlyZSBzeXN0ZW0gcnVubmluZyBpbiBSQU0sIHNv
IHRoYXQgZXZlcnl0aGluZyBpcyBmcmVzaCBhZnRlciBhIHJlYm9vdC4gSSBjYW4gY3VycmVudGx5
IHVzZSB0aGUgaW5pdHJhbWZzLWxpdmUtYm9vdCBmdW5jdGlvbmFsaXR5IHRvIGdlbmVyYXRlIGEg
LmNwaW8uZ3ogZmlsZSwgYnV0IEkgYW0gbG9zdCBvbiBob3cgdG8gZ2V0IHRoaXMgdG8gJ2J1bmRs
ZScgd2l0aCB0aGUgdUltYWdlLiBUaGUgdUltYWdlIHdpbGwgYmUgc3RvcmVkIG9uIGFuIFNEIGNh
cmQgYW5kIHdlIGFyZSB1c2luZyB1LWJvb3QuDQo+IA0KPiBJIHNlZSBtZW50aW9ucyBvZiB0aGUg
Q09ORklHX0lOSVRSQU1GU19TT1VSQ0Uga2VybmVsIG9wdGlvbiwgYnV0IEkgYW0gdW5zdXJlIGlm
IEkgbmVlZCB0byBjaGFuZ2UgdGhpcy4NCj4gDQo+IENhbiBzb21lb25lIGhlbHAgbWU/IEkndmUg
YmVlbiBnb29nbGluZyBhbGwgZGF5IGFuZCBoYXZlbid0IGdvdHRlbiBtdWNoIGZ1cnRoZXIuDQoN
CmlmIHlvdSBhZGQgDQoNCklOSVRSQU1GU19JTUFHRV9CVU5ETEUgPSAiMSINCklOSVRSQU1GU19J
TUFHRSA9ICI8bmFtZSBvZiB5b3VyIGluaXRyYW1mcy1pbWFnZT4iDQoNCmluIHlvdSBsb2NhbC5j
b25mIHRoYXQgc2hvdWxkIGhlbHAgaXQgdG8gY3JlYXRlIHVJbWFnZSB3aXRoIGV2ZXJ5dGhpbmcg
aW4gaXQuDQoNCi1LaGVtDQoNCi0NClRoaXMgbWVzc2FnZSBpcyBpbnRlbmRlZCBvbmx5IGZvciB0
aGUgYWRkcmVzc2VlIGFuZCBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIGNvbXBhbnkg
Y29uZmlkZW50aWFsIG9yIHByaXZpbGVnZWQuICBBbnkgdGVjaG5pY2FsIGRhdGEgaW4gdGhpcyBt
ZXNzYWdlIG1heSBiZSBleHBvcnRlZCBvbmx5IGluIGFjY29yZGFuY2Ugd2l0aCB0aGUgVS5TLiBJ
bnRlcm5hdGlvbmFsIFRyYWZmaWMgaW4gQXJtcyBSZWd1bGF0aW9ucyAoMjIgQ0ZSIFBhcnRzIDEy
MC0xMzApIG9yIHRoZSBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgKDE1IENGUiBQ
YXJ0cyA3MzAtNzc0KS4gVW5hdXRob3JpemVkIHVzZSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkIGFu
ZCBtYXkgYmUgdW5sYXdmdWwuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQs
IG9yIHRoZSBwZXJzb24gcmVzcG9uc2libGUgZm9yIGRlbGl2ZXJpbmcgdG8gdGhlIGludGVuZGVk
IHJlY2lwaWVudCwgeW91IHNob3VsZCBub3QgcmVhZCwgY29weSwgZGlzY2xvc2Ugb3Igb3RoZXJ3
aXNlIHVzZSB0aGlzIG1lc3NhZ2UuIElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4g
ZXJyb3IsIHBsZWFzZSBkZWxldGUgaXQsIGFuZCBhZHZpc2UgdGhlIHNlbmRlciBpbW1lZGlhdGVs
eS4gDQotICAgICAgICAgIA==

