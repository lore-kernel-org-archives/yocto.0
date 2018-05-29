Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F044E00AE4; Mon, 28 May 2018 20:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF835E009AC
	for <yocto@yoctoproject.org>; Mon, 28 May 2018 20:37:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4T3aF8m027724
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 May 2018 20:36:36 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.237]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0361.001;
	Mon, 28 May 2018 20:36:05 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto
	<yocto@yoctoproject.org>
Thread-Topic: HELP: [yocto] Release Candidate Build for yocto-2.4.3.rc2 now
	available.
Thread-Index: AdP2/h+bAVbTtLiERe63nHvc0Xv1jA==
Date: Tue, 29 May 2018 03:36:04 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0F38CA91E@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.116.42]
MIME-Version: 1.0
Cc: "CHAN, AARON CHUN YEW" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: HELP: Release Candidate Build for yocto-2.4.3.rc2 now available.
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
X-List-Received-Date: Tue, 29 May 2018 03:37:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KSSBhcG9sb2dpemUgZm9yIHNlbmRpbmcgdGhpcyBwYXRjaCBmb3IgVG9h
c3RlciBmb3IgUm9jbyAyLjQuMyB2ZXJ5IGxhdGUuIEkgaGF2ZSBiZWVuIGZvY3VzZWQgb24gU3Vt
byBhbmQgSSB0aG91Z2h0IEkgaGFkIG1vcmUgdGltZS4NCg0KVGhlIFRvYXN0ZXIgZm9yIFJvY2tv
IGlzIGJyb2tlbiBvbiBIRUFELiBUaGVyZSBhcmUgdHdvIHBhdGNoZXMgdGhhdCBtYWRlIGl0IGlu
dG8gbWFzdGVyIGFuZCBTdW1vLCBidXQgbWlzc2VkIFJvY2tvLg0KDQpJIGhhdmUganVzdCBub3cg
c2VudCB0aGUgbWlzc2luZyBwYXRjaCBzZXQgdG8gImJpdGJha2UtZGV2Ii4gVGhlIGZpcnN0IHBh
dGNoIGZpeGVzIGFuIGVycm9yIHRoYXQgYnJlYWtzIHRoZSBpbml0aWFsaXphdGlvbiBvZiBUb2Fz
dGVyLiBUaGUgc2Vjb25kIHBhdGNoZXMgZml4ZXMgYSBjaGFuZ2UgaW4gYmVoYXZpb3IgZm9yIERq
YW5nbyB0aGF0IGNyZWF0ZXMgYW4gZXh0cmEgdGhyZWFkIHRoYXQgYmxvY2tzIFRvYXN0ZXIgZnJv
bSBzaHV0dGluZyBkb3duLg0KDQpQbGVhc2UgYWNjZXB0IHRoZXNlIHBhdGNoZXMgZm9yIFJvY2tv
LiBUaGV5IGFyZSBjb25maW5lZCB0byBUb2FzdGVyIGFuZCBkbyBub3QgYWZmZWN0IHRoZSByZXN0
IG9mIHRoZSByZWxlYXNlLg0KDQpUaGFua3MsDQpEYXZpZA0KDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5
b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBSaWNoYXJkIFB1cmRp
ZQ0KU2VudDogVGh1cnNkYXksIE1heSAyNCwgMjAxOCAxOjE2IEFNDQpUbzogeW9jdG8NCkNjOiBv
dGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgQ0hBTiwgQUFST04gQ0hVTiBZRVcNClN1YmplY3Q6IFt5
b2N0b10gUmVsZWFzZSBDYW5kaWRhdGUgQnVpbGQgZm9yIHlvY3RvLTIuNC4zLnJjMiBub3cgYXZh
aWxhYmxlLg0KDQpBIHJlbGVhc2UgY2FuZGlkYXRlIGJ1aWxkIGZvciB5b2N0by0yLjQuMy5yYzIg
aXMgbm93IGF2YWlsYWJsZSBhdDoNCg0KDQrCoMKgwqDCoGh0dHBzOi8vYXV0b2J1aWxkZXIueW9j
dG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuNC4zLnJjMg0KDQoNClBsZWFzZSBiZWdpbiBRQSBv
biB0aGlzIGJ1aWxkIGFzIHNvb24gYXMgcG9zc2libGUuDQoNCg0KQnVpbGQgaGFzaCBpbmZvcm1h
dGlvbjrCoA0KbWV0YS1pbnRlbCA6IGY2NmNlNTFkMDU5ZDI5MWE0NDFkODk2ODU0YmU4ZGI3MGRl
NWE1NTTCoA0KbWV0YS1xdDQgOiBlMjkwNzM4NzU5ZWYzZjM5YzllMDc5ZWFhOWI2MDZhNjIxMDdl
NWJhwqANCm1ldGEtbWluZ3cgOiAxY2M2MjBiMzhmNmYzMGEwYmRkMTgxNzgzMjk3OTk4ZmUwNzMz
ODdmwqANCm1ldGEtcXQzIDogOGVmNzI2MWEzMzFlMDg2OWEwNDYxYWIyZmI0NGUzOTk4MGNlZGMw
MsKgDQptZXRhLWdwbHYyIDogZjg3NWM2MGVjZDZmMzA3OTNiODBhNDMxYTI0MjNjNGI5OGU1MTU0
OMKgDQpwb2t5IDogN2U3ZWU2NjJmNWRlYTRkMDkwMjkzMDQ1Zjc0OTgwOTMzMjI4MDJjY8KgDQoN
ClRoaXMgaXMgYW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbSBUaGUgWW9jdG8gUHJvamVjdCBBdXRv
YnVpbGRlcg0KR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRvYnVpbGRl
cg0KLS0gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
eW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpodHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg==

