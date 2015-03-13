Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D09E0086D; Fri, 13 Mar 2015 05:49:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2354.austin.hp.com (g2t2354.austin.hp.com [15.217.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A74E00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 05:49:32 -0700 (PDT)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2354.austin.hp.com (Postfix) with ESMTPS id E36DBB1;
	Fri, 13 Mar 2015 12:49:31 +0000 (UTC)
Received: from G2W4312.americas.hpqcorp.net (16.197.24.214) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 13 Mar 2015 12:48:40 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G2W4312.americas.hpqcorp.net ([16.197.24.214]) with mapi id
	14.03.0169.001; Fri, 13 Mar 2015 12:48:40 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] running task only for native but not target?
Thread-Index: AQHQXYQA+FZlLvuOWEG/RZGNBQ31G50aXDFg
Date: Fri, 13 Mar 2015 12:48:40 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8069053D9@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
	<4649620.1oiO9F2Se0@peggleto-mobl5.ger.corp.intel.com>
	<95CF81BBD42FB348A182716C4D4310A8069053A4@G2W2533.americas.hpqcorp.net>
	<CAJTo0LZA64bXZd-KxdN7n43oOzhj9f4wUFVR_s9GtgSVCavgQg@mail.gmail.com>
In-Reply-To: <CAJTo0LZA64bXZd-KxdN7n43oOzhj9f4wUFVR_s9GtgSVCavgQg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: running task only for native but not target?
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
X-List-Received-Date: Fri, 13 Mar 2015 12:49:36 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBiZWxpZXZlIHRoaXMgaXMgdGhlIGFjdHVhbCBzb2x1dGlvbiBJIGFtIHVzaW5nLCB0aGUgdGFz
a3MgYXJlIGFsd2F5cyBleGVjdXRlZCBidXQgbXkgaW5zdGFsbCBzdGVwcyBkaWZmZXIgYW5kIG9u
bHkgaW5zdGFsbCB0aGUgYXBwcm9wcmlhdGUgZmlsZSwgd2hpY2ggaW4gdHVybiBJIGJlbGlldmUg
Z2VuZXJhdGUgYXBwcm9wcmlhdGUgcGFja2FnZXMuICBUaGF0IHdvcmtzIHRvbywgYnV0IEkgZG8g
bm90IHdhbnQgdG8gZ2V0IGludG8gaXNzdWVzIHdoZXJlIHRoZSBidWlsZCBvbiB0aGUgdGFyZ2V0
IGZhaWxzIGR1ZSB0byBhcmNoIGlzc3VlIGFuZCBoYXZpbmcgdG8gcHVsbCB1bm5lY2Vzc2FyeSBk
ZXBlbmRlbmN5IHBhY2thZ2VzIG9uIG15IHRhcmdldCBhbmQgbG9zdCBjcHUgY3ljbGUuICBCdXQg
aXQgd291bGQgc3RpbGwgd29yaywgd2hpY2ggaXMgd2h5IEkgYW0gdXNpbmcgaXQgYnV0IGxvb2tp
bmcgZm9yIGFuIGFsdGVybmF0aXZlLg0KIA0KWWFubmljayBLb2VobGVyDQoNCkRlwqA6IEJ1cnRv
biwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpFbnZvecOpwqA6IE1hcmNo
LTEzLTE1IDc6NTEgQU0NCsOAwqA6IEtvZWhsZXIsIFlhbm5pY2sgKEhQIE5ldHdvcmtpbmcpDQpD
Y8KgOiBQYXVsIEVnZ2xldG9uOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpPYmpldMKgOiBSZTog
W3lvY3RvXSBydW5uaW5nIHRhc2sgb25seSBmb3IgbmF0aXZlIGJ1dCBub3QgdGFyZ2V0Pw0KDQoN
Ck9uIDEzIE1hcmNoIDIwMTUgYXQgMTE6NDYsIEtvZWhsZXIsIFlhbm5pY2sgKEhQIE5ldHdvcmtp
bmcpIDx5YW5uaWNrLmtvZWhsZXJAaHAuY29tPiB3cm90ZToNCsKgIFRoYW5rcywgeWVzIHRoYXQg
aXMgbGlrZWx5IHRvIHdvcmssIEkgd2lsbCB0cnkgaXQuwqAgSSB3YXMgbG9va2luZyBmb3IgYSBt
b3JlIFlvY3RvLWxpa2Ugc29sdXRpb24gdXNpbmcgdGhlIG92ZXJyaWRpbmcgc3R1ZmYgYnV0IGl0
IHNlZW1zIHRoZSBvdmVycmlkaW5nIGRvZXNuJ3QgYXBwbHkgaW4gdGhpcyBwYXJ0aWN1bGFyIHNp
dHVhdGlvbi4NCg0KQW4gYWx0ZXJuYXRpdmUgc29sdXRpb24gd291bGQgYmUgdG8gYnVpbGQgZXZl
cnl0aGluZyBhbGwgdGhlIHRpbWUsIGFuZCBwYWNrYWdlIGNvcnJlY3RseSBzbyB0aGF0IHlvdSBk
b24ndCBpbnN0YWxsIHVucmVxdWlyZWQgYmluYXJpZXMgb24gdGhlIHRhcmdldC4NCg0KUm9zc8Kg
DQo=

