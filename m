Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A24DEE00927; Wed, 22 Jul 2015 08:04:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 38A7AE008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 08:04:32 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0224.002; Wed, 22 Jul 2015 17:04:31 +0200
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Aws Ismail <aws.ismail@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-cgl] Any plans about adding pcs and/or crmsh as bb
	recipes ?
Thread-Index: AQHQw++kCg++mxdURkK0w/WEhKS7e53nlsYw
Date: Wed, 22 Jul 2015 15:04:30 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D8CCCCE@SESTOEX04.enea.se>
References: <CAMHMu0PcDgin-XO_U5qQJ0mf8tf+mZ6hm4_DgMXhFTDhfZ=3XQ@mail.gmail.com>
In-Reply-To: <CAMHMu0PcDgin-XO_U5qQJ0mf8tf+mZ6hm4_DgMXhFTDhfZ=3XQ@mail.gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.208]
MIME-Version: 1.0
Subject: Re: [meta-cgl] Any plans about adding pcs and/or crmsh as bb recipes ?
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
X-List-Received-Date: Wed, 22 Jul 2015 15:04:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHRoZSBtb21lbnQgd2UgYXJlIGNvbmNlbnRyYXRpb24gb24gbWVldGluZyB0aGUgUDEgcmVx
dWlyZW1lbnRzIGZvciBDR0wuDQpJZiB5b3Ugd291bGQgbGlrZSB0byBhZGQgeW91ciBjb250cmli
dXRpb24gdG8gdGhpcyBsYXllciB5b3UgYXJlIG1vcmUgdGhhbiB3ZWxjb21lZC4NCkFsc28gaWYg
eW91IHdvdWxkIGxpa2UsIHdlIGNvdWxkIGFsc28gcHJvdmlkZSB0aGUgaGVscCBhbmQgZ3VpZGFu
Y2UgbmVjZXNzYXJ5IGZvciBkb2luZyB0aGlzLg0KDQoNCkFsZXggVi4NCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IEF3cyBJc21haWwgW21haWx0bzphd3MuaXNtYWlsQGdtYWls
LmNvbV0gDQpTZW50OiBUdWVzZGF5LCBKdWx5IDIxLCAyMDE1IDEwOjU4IFBNDQpUbzogeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KQ2M6IEFsZXhhbmRydSBWYWR1dmENClN1YmplY3Q6IFttZXRhLWNn
bF0gQW55IHBsYW5zIGFib3V0IGFkZGluZyBwY3MgYW5kL29yIGNybXNoIGFzIGJiIHJlY2lwZXMg
Pw0KDQpIaSwNCg0KQXJlIHRoZXJlIGFueSBwbGFucyB3aXRoIHJlZ2FyZHMgdG8gYWRkaW5nIHRo
ZSBwY3MgY2xpIHV0aWxpdHkgYW5kL29yIHRoZSBjcm1zaCB1dGlsaXR5IHRvIHRoZSBtZXRhLWNn
bCBsYXllciBpbiB0aGUgZnV0dXJlID8NCg0KSSBoYXZlIHNlYXJjaGVkIHRoZSBsYXllciBpbmRl
eCBidXQgY2FuJ3QgZmluZCBhIG1lbnRpb24gb2YgdGhvc2UuDQpCdWlsZGluZyBwYWNlbWFrZXIv
Y29yb3N5bmMgZnJvbSB0aGUgbWV0YS1jZ2wgbGF5ZXIgZG9lcyBub3QgcHJvdmlkZSB0aG9zZSB1
dGlsaXRpZXMgZWl0aGVyLg0KDQpSZWdhcmRzLA0KDQpBSVwNCg==

