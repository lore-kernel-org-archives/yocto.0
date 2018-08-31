Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6D4E009AA; Fri, 31 Aug 2018 06:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-03.luxoft.com (oro-edge-03.luxoft.com [109.166.244.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD4F1E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 06:09:11 -0700 (PDT)
Received: from oro-exch-02.luxoft.com (172.25.192.33) by
	oro-edge-03.luxoft.com (172.30.19.23) with Microsoft SMTP Server (TLS)
	id 14.3.382.0; Fri, 31 Aug 2018 16:09:08 +0300
Received: from oro-exch-03.luxoft.com (172.25.192.31) by
	oro-exch-02.luxoft.com (172.25.192.33) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
	15.1.1466.3; Fri, 31 Aug 2018 16:09:09 +0300
Received: from oro-exch-03.luxoft.com ([fe80::4935:509f:bc19:9ace]) by
	oro-exch-03.luxoft.com ([fe80::4935:509f:bc19:9ace%13]) with mapi id
	15.01.1466.003; Fri, 31 Aug 2018 16:09:15 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Disabling building PTESTs in a bbappend
Thread-Index: AQHUQSvR+FAY2Rq3jEia79PoJf72RA==
Date: Fri, 31 Aug 2018 13:09:15 +0000
Message-ID: <e941ec4d-4888-a7e3-fff1-89dcdcfb0831@luxoft.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.19.68]
MIME-Version: 1.0
Subject: Disabling building PTESTs in a bbappend
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
X-List-Received-Date: Fri, 31 Aug 2018 13:09:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F86E0D664D908D42B5923C9F86D2695B@luxoft.com>
Content-Transfer-Encoding: base64

SGkgdGhlcmUhDQogIHRoZSBhcHBhcm1vciByZWNpcGUgZnJvbSB0aGUgbWV0YS1zZWN1cml0eSBs
YXllciBmYWlscyB0byBidWlsZCBpbg0Kcm9ja28gZHVlIHRvIGFuIGVycm9yIHdoZW4gYnVpbGRp
bmcgdGhlIHRlc3RzOyBJIHRyaWVkIHVwZGF0aW5nIHRvIHRoZQ0KbGF0ZXN0IGFwcGFybW9yIHZl
cnNpb24sIGp1c3QgdG8gZmluZCBvdXQgdGhhdCB0aGUgdGVzdHMgZmFpbCB0byBidWlsZA0KaW4g
c29tZSBvdGhlciBwbGFjZSAodGhlIHRlc3RzIGluY2x1ZGUgc3lzL2lvLmggLS0gd2hpY2ggcGFj
a2FnZSBzaG91bGQNCnNoaXAgdGhpcyBmaWxlPykuLi4NCg0KQXQgdGhlIGVuZCBJIHRoaW5rIHRo
YXQgdGhlIGZhc3Rlc3Qgd2F5IGZvciBtZSB0byBnZXQgYXBwYXJtb3IgdG8gYnVpbGQNCmlzIHRv
IGRpc2FibGUgYnVpbGRpbmcgdGhlIHRlc3RzLiBCdXQgSSBjYW5ub3QgZmluZCBhbnkgaW5mbyBv
biBob3cgaXQNCmNvdWxkIGJlIGRvbmUgaW4gYSAuYmJhcHBlbmQgZmlsZS4NCg0KSSB0cmllZA0K
DQogICAgUFRFU1RfRU5BQkxFRF9hcHBhcm1vciA9ICcwJw0KDQpidXQgdGhhdCBkb2Vzbid0IHNl
ZW0gdG8gd29yay4gU3VnZ2VzdGlvbnM/DQoNCk1lYW53aGlsZSwgd2hlcmUgZG9lcyBvbmUgZmls
ZSBidWdzIGFnYWluc3QgdGhlIG1ldGEtc2VjdXJpdHkgbGF5ZXI/DQoNCkNpYW8sDQogIEFsYmVy
dG8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCg0KVGhpcyBlLW1haWwgYW5k
IGFueSBhdHRhY2htZW50KHMpIGFyZSBpbnRlbmRlZCBvbmx5IGZvciB0aGUgcmVjaXBpZW50KHMp
IG5hbWVkIGFib3ZlIGFuZCBvdGhlcnMgd2hvIGhhdmUgYmVlbiBzcGVjaWZpY2FsbHkgYXV0aG9y
aXplZCB0byByZWNlaXZlIHRoZW0uIFRoZXkgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9y
bWF0aW9uLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2UgZG8g
bm90IHJlYWQgdGhpcyBlbWFpbCBvciBpdHMgYXR0YWNobWVudChzKS4gRnVydGhlcm1vcmUsIHlv
dSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc3NlbWluYXRpb24sIGRpc3RyaWJ1dGlv
biBvciBjb3B5aW5nIG9mIHRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBpcyBzdHJp
Y3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJv
ciwgcGxlYXNlIGltbWVkaWF0ZWx5IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJlcGx5aW5nIHRvIHRo
aXMgZS1tYWlsIGFuZCB0aGVuIGRlbGV0ZSB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQo
cykgb3IgY29waWVzIHRoZXJlb2YgZnJvbSB5b3VyIHN5c3RlbS4gVGhhbmsgeW91Lg0K

