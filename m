Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1449.1579806980583557033
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:16:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C7C1E015F8; Thu, 23 Jan 2020 11:16:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.57 listed in list.dnswl.org]
Received: from 23pmail.ess.barracuda.com (23pmail.ess.barracuda.com [209.222.82.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C008E0134C
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 11:16:19 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx12.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256 bits=256 verify=NO); Thu, 23 Jan 2020 19:16:16 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 23
 Jan 2020 11:15:44 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Thu, 23 Jan 2020 11:15:44 -0800
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
CC: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] generate initramfs for raspberry pi
Thread-Topic: [yocto] generate initramfs for raspberry pi
Thread-Index: AdXSGhPvXo6b8fM0Tbq1um18IL8inQAR704AABA378A=
Date: Thu, 23 Jan 2020 19:15:44 +0000
Message-ID: <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com>
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
 <CAMKF1srtxG+Uwav_gkrg5gbK4pNz0fJ-UNcGHQh7MSgLN1hb2A@mail.gmail.com>
In-Reply-To: <CAMKF1srtxG+Uwav_gkrg5gbK4pNz0fJ-UNcGHQh7MSgLN1hb2A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1579806975-893022-20374-47373-2
X-BESS-VER: 2019.1_20200122.0617
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.221859 [from 
	cloudscan9-244.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgS2VtLA0KSSBoYWQgZmlndXJlZCBvdXQgeW91ciBzdWdnZXN0aW9ucywgbXkgcHJvYmxlbSBp
cyBob3cgZG8gSSBnZW5lcmF0ZSB0aGUgIjx5b3VyLWltYWdlPiIgaW1hZ2UgaW46DQoNCklOSVRS
QU1GU19JTUFHRV9ycGkgPSAiPHlvdXItaW1hZ2U+Ig0KDQpJIG5lZWQgYSByZWNpcGUgZm9yIHRo
ZSBpbWFnZSBhbmQgYSB3YXkgdG8gZ2V0IFlvY3RvIHRvIGJ1aWxkIGl0IHdoZW4gSSBidWlsZCB0
aGUgcmVzdCBvZiBteSBpbWFnZS4gTWF5YmUgc3BlY2lmeWluZyB0aGUgbmFtZSB3aWxsIGJ1aWxk
IGl0LCBidXQgSSBzdGlsbCBuZWVkIGEgcmVjaXBlIGZvciB0aGUgaW1hZ2UuDQoNClJlZ2FyZHMs
DQpHcmVnDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBLaGVtIFJhaiA8cmFq
LmtoZW1AZ21haWwuY29tPiANClNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDIzLCAyMDIwIDEwOjU2
IEFNDQpUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KQ2M6
IFlvY3RvIGxpc3QgZGlzY3Vzc2lvbiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NClN1YmplY3Q6
IFJlOiBbeW9jdG9dIGdlbmVyYXRlIGluaXRyYW1mcyBmb3IgcmFzcGJlcnJ5IHBpDQoNCk9uIFRo
dSwgSmFuIDIzLCAyMDIwIGF0IDEwOjQ0IEFNIEdyZWcgV2lsc29uLUxpbmRiZXJnIDxnd2lsc29u
QHNha3VyYXVzLmNvbT4gd3JvdGU6DQo+DQo+IEhlbGxvIExpc3QsDQo+DQo+IEkgaGF2ZSBub3Qg
YmVlbiBhYmxlIHRvIGZpZ3VyZSBvdXQgaG93IHRvIGdlbmVyYXRlIGFuIGluaXRyYW1mcyBpbWFn
ZSBmb3IgYSByYXNwYmVycnkgcGkgYnVpbGQgb2YgeW9jdG8uIEnigJl2ZSBzZWFyY2hlZCBpdCB3
ZWIgYW5kIGhhdmUgbm90IGZvdW5kIGFueXRoaW5nIHRoYXQgbWVudGlvbnMgZ2VuZXJhdGluZyB0
aGUgYWN0dWFsIGltYWdlLCBsb3RzIG9mIGhpdHMgb24gaG93IHRvIGNvbmZpZ3VyZSB1c2luZyB0
aGUgaW5pdHJhbWZzLCBidXQgbm90IG9uIGdlbmVyYXRpbmcgaXQuIElzIHRoZXJlIGEgc3RhbmRh
cmQgcmVjaXBlIGZvciBhIHJhc3BiZXJyeSBwaSBpbml0cmFtZnMgYW5kIGhvdyB3b3VsZCBJIGVu
YWJsZSBpdHMgZ2VuZXJhdGlvbiwgb3IgbWF5YmUgSeKAmW0ganVzdCBiZWluZyBjbHVlbGVzcy4N
Cj4NCj4NCj4NCj4gSeKAmW0gcnVubmluZyBvbiBhIGJvb3QycXQgYnVpbGQgb2YgeW9jdG8gYmFz
ZWQgb24gUXQgdjUuMTQuMCB0aGF0IHVzZXMgd2FycmlvciBhbmQgSeKAmW0gdGFyZ2V0aW5nIGFu
IFJQaSA0IHVzaW5nIHUtYm9vdC4NCj4NCj4NCj4NCj4gQW55IGhlbHAgd291bGQgYmUgZ3JlYXRs
eSBhcHByZWNpYXRlZC4NCj4NCnRyeSBzb21ldGhpbmcgbGlrZSBiZWxvdyBpbiBsb2NhbC5jb25m
DQoNCklOSVRSQU1GU19JTUFHRV9CVU5ETEVfcnBpID0gIjEiDQpJTklUUkFNRlNfSU1BR0VfcnBp
ID0gIjx5b3VyLWltYWdlPiINCiMgRW5sYXJnZSBib290IHBhcnRpdGlvbiB0byAxR2lCDQpCT09U
X1NQQUNFID0gIjEwNzM3NDEiDQpJTklUUkFNRlNfTUFYU0laRSA9ICIzMTU0MDAiDQpJTUFHRV9G
U1RZUEVTX3BuLSR7SU5JVFJBTUZTX0lNQUdFfSA9ICIke0lOSVRSQU1GU19GU1RZUEVTfSINCg0K
Pg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+DQo+IEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+DQo+IA0K
