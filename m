Return-Path: <Noor_Ahsan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8FECE0096C; Mon, 27 Jul 2015 00:17:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08031E00474
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 00:17:28 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-04.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1ZJcf9-00048A-UP from Noor_Ahsan@mentor.com 
	for yocto@yoctoproject.org; Mon, 27 Jul 2015 00:17:28 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.194]) by
	SVR-IES-FEM-04.mgc.mentorg.com ([137.202.0.110]) with mapi id
	14.03.0224.002; Mon, 27 Jul 2015 08:17:27 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: "Usman, Fahad" <Fahad_Usman@mentor.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Using wic from a Bitbake task
Thread-Index: AQHQx8f+xOXV9dEqykOcgsdXKZFnBp3u6GKg
Date: Mon, 27 Jul 2015 07:17:26 +0000
Message-ID: <365E1805BC95084CBE82381A0B86999401095B2F10@EU-MBX-01.mgc.mentorg.com>
References: <55B517E5.5080708@mentor.com>
In-Reply-To: <55B517E5.5080708@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
Cc: "Khandavilli, Arun" <Arun_Khandavalli@mentor.com>, "Larson,
	Chris" <Chris_Larson@mentor.com>
Subject: Re: Using wic from a Bitbake task
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
X-List-Received-Date: Mon, 27 Jul 2015 07:17:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpXaWxsIGl0IGJlIHZhbHVhYmxlIHRvIGNyZWF0ZSBhbm90aGVyIG9wdGlv
biAod2hpY2ggYXNzdW1lIHRoYXQgYml0YmFrZSBpcyBydW5uaW5nIGFuZCBnZXQgdmFsdWVzIGZy
b20gdmFyaWFibGVzIGRpcmVjdGx5KSBmb3Igd2ljIHdoaWNoIHdlIGNhbiBpbnZva2UgZnJvbSB0
aGUgaW1hZ2UgcmVjaXBlIGFzIHBhcnQgb2YgaW1hZ2UgY3JlYXRpb24gcHJvY2Vzcy4NCg0KTm9v
ciAgDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBVc21hbiwgRmFoYWQgDQpT
ZW50OiBTdW5kYXksIEp1bHkgMjYsIDIwMTUgMTA6MjUgUE0NClRvOiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnDQpDYzogQWhzYW4sIE5vb3I7IEtoYW5kYXZpbGxpLCBBcnVuDQpTdWJqZWN0OiBVc2lu
ZyB3aWMgZnJvbSBhIEJpdGJha2UgdGFzaw0KDQpIZWxsbywNCklzIGl0IHBvc3NpYmxlIHRvIGlu
dm9rZSAnd2ljIGNyZWF0ZScgY29tbWFuZCBmcm9tIGEgYml0YmFrZSB0YXNrLiBBcyBjdXJyZW50
bHkgaXQgaXMgaW1wbGVtZW50ZWQgdG8gYmUgcnVuIGFzIGEgc3RhbmRhbG9uZSB0b29sIGFuZCBp
ZiB3ZSBpbnZva2UgaXQgZnJvbSBhIHRhc2ssIHRoZSAnYml0YmFrZSAtZScgY29tbWFuZCBmYWls
cywgc2luY2UgbW9yZSB0aGFuIG9uZSBpbnN0YW5jZXMgb2YgYml0YmFrZSBjYW5ub3QgYmUgcnVu
IGZyb20gYSBzaW5nbGUgYnVpbGQgZGlyZWN0b3J5Lg0KDQpXZSB3YW50IHRvIGVtaXQgYW4gU0Qg
Y2FyZCBpbWFnZSBhcyBwYXJ0IG9mIGJ1aWxkIGFydGlmYWN0cyB3aGVuIGFuIGltYWdlIHJlY2lw
ZSBpcyBidWlsdC4gQW5kIHdlIGRvbid0IHdhbnQgdG8gdXNlIHRoZSBib290LWRpcmVjdGRpc2su
YmJjbGFzcyBhcyBpdCdzIGdvaW5nIHRvIGJlIGRlcHJlY2F0ZWQgaW4gZmF2b3VyIG9mIHdpYy4N
Cg0KVGhhbmtzLA0KRmFoYWQgVXNtYW4uDQo=

