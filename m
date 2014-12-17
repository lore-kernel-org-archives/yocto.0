Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF3EFE008A7; Wed, 17 Dec 2014 05:41:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.128.52 listed in list.dnswl.org]
Received: from g2t2353.austin.hp.com (g2t2353.austin.hp.com [15.217.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0DAFE00872
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 05:41:12 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2353.austin.hp.com (Postfix) with ESMTPS id AA528A5;
	Wed, 17 Dec 2014 13:41:11 +0000 (UTC)
Received: from G1W5783.americas.hpqcorp.net (16.193.26.1) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 17 Dec 2014 13:40:05 +0000
Received: from G2W2442.americas.hpqcorp.net ([169.254.7.29]) by
	G1W5783.americas.hpqcorp.net ([16.193.26.1]) with mapi id
	14.03.0169.001; Wed, 17 Dec 2014 13:40:05 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Package Feature compile/runtime dependency
Thread-Index: AQHQGXDERreo7BDVnkCNND95NsLcXJyTygdg
Date: Wed, 17 Dec 2014 13:40:05 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8054957F5@G2W2442.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
	<CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
	<95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
	<20141212151844.GF18879@ad.chargestorm.se>
	<95CF81BBD42FB348A182716C4D4310A80548C63D@G1W3650.americas.hpqcorp.net>
	<CAJTo0Lb5Kk_B-BkZXM0mmAtazjoWXA15sbJfVNAJJM2Q_h6+7w@mail.gmail.com>
In-Reply-To: <CAJTo0Lb5Kk_B-BkZXM0mmAtazjoWXA15sbJfVNAJJM2Q_h6+7w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Wed, 17 Dec 2014 13:41:16 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHNpemUgb2YgdGhlIHJlc3VsdGluZyBpbWFnZSBvZiBwb2t5LXRpbnkgKyBzeXN0ZW1kIGlz
IGEgbG90IHNtYWxsZXIgdGhhbiBwb2t5IGl0c2VsZiwgZXZlbiB3aXRoIHRoZSBzeXN0ZW1kIGtl
cm5lbC9nbGliYyByZXF1aXJlbWVudCBzZXQgaW4uICBUaGUgcG9reSBkaXN0cm8gYWxzbyBwdWxs
cyBhIGxvdCBtb3JlIHBhY2thZ2UgaW50byB0aGUgbWl4IHRoYXQgSSBkbyBub3QgbmVlZCBmb3Ig
bXkgdGFza3MuICBJIGNvdWxkIGdvIGFuZCBkaXNhYmxlIHRob3NlLCBidXQgdGhhdCBpcyBhY3R1
YWxseSB3aGF0IHBva3ktdGlueSBhbHNvIGRvZXMgZm9yIG1lIGFscmVhZHkuDQoNClBva3ktdGlu
eSBhbGxvdyBtZSB0byBnbyBmcm9tIHNtYWxsIHRvIG15IG5lZWRzIGluc3RlYWQgb2YgdGhlIHJl
dmVyc2Ugd2hpY2ggaXMgaGFyZGVyIHRvIGFjaGlldmUgYXMgSSB3b3VsZCBuZWVkIHRvIGhhdmUg
YSBmdWxsIHVuZGVyc3RhbmRpbmcgb24gaG93IHRoZSBkZXBlbmRlbmNpZXMgd29ya3MgdG8gc2F2
ZSBzcGFjZSwgd2hlcmUgdGhlIG90aGVyIHdheSBJIG5lZWQgdG8gbGVhcm4gaG93IHRvIGdldCB3
aGVyZSBJIHdhbnQgYnV0IG5vIG1vcmUuDQoNCkF0IGxlYXN0IGluIG15IG9waW5pb24sIGJ1aWxk
aW5nIHdpdGggcG9reS10aW55IGdpdmVzIG1lIGN1cnJlbnRseSBhcm91bmQgMTUwMCBidWlsZCB0
YXNrcywgd2hlcmUgcG9reSBwdWxscyBvdmVyIDI1MDAsIHRoaXMgc2hvd3MgaG93IG11Y2ggbW9y
ZSBzdHVmZiAiUG9reSIgcHVsbHMgaW4sIG5vPw0KDQotLQ0KWWFubmljayBLb2VobGVyDQoNCkRl
wqA6IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpFbnZvecOp
wqA6IERlY2VtYmVyLTE2LTE0IDM6NDIgUE0NCsOAwqA6IEtvZWhsZXIsIFlhbm5pY2sgKEhQIE5l
dHdvcmtpbmcpDQpDY8KgOiBBbmRlcnMgRGFyYW5kZXI7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Ck9iamV0wqA6IFJlOiBbeW9jdG9dIFBhY2thZ2UgRmVhdHVyZSBjb21waWxlL3J1bnRpbWUgZGVw
ZW5kZW5jeQ0KDQoNCk9uIDEyIERlY2VtYmVyIDIwMTQgYXQgMTU6NDQsIEtvZWhsZXIsIFlhbm5p
Y2sgKEhQIE5ldHdvcmtpbmcpIDx5YW5uaWNrLmtvZWhsZXJAaHAuY29tPiB3cm90ZToNCk15IGhv
cGUsIHdhcyB0aGF0IHNvbWVob3csIGFkZGluZyBzeXN0ZW1kIHRvIERJU1RST19GRUFUVVJFIHdv
dWxkIG5vdCBvbmx5IGFkZCB0aGUgcGFja2FnZXMgSSBuZWVkLCBidXQgYWxzbyBhZGQgZmVhdHVy
ZSB0byBzb21lIHBhY2thZ2UgbGlrZSB0aGUga2VybmVsL2xpYmMgdGhhdCBhcmUgcmVxdWlyZWQg
Ynkgc3VjaCBhZGRpdGlvbi4NCg0KTm8sIERJU1RST19GRUFUVVJFUyBkb24ndCBjaGFuZ2UgaG93
IGVnIGxpYmMgYW5kIHRoZSBrZXJuZWwgYXJlIGJ1aWx0LsKgIFRoYXQgc2FpZCBpZiB5b3UncmUg
YnVpbGRpbmcgc3lzdGVtZCwgd2h5IGFyZSB5b3UgdXNpbmcgcG9reS10aW55P8KgIEkgZG91YnQg
eW91J2xsIHNlZSBtdWNoIGdhaW4gZnJvbSBwb2t5LXRpbnkgKyBhbGwgdGhlIHBpZWNlcyB0byBt
YWtlIHN5c3RlbWQgd29yayBhbmQgcGxhaW4gcG9reSAob3IgdGhlIGRlZmF1bHQgZGlzdHJvIGNv
bmZpZ3VyYXRpb24pLg0KDQpSb3NzDQo=

