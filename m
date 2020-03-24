Received: from mx2.kistler.com (mx2.kistler.com [91.223.79.45])
 by mx.groups.io with SMTP id smtpd.web12.2677.1585044035467921407
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 03:00:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: kistler.com, ip: 91.223.79.45, mailfrom: vladimir.motyka@kistler.com)
IronPort-SDR: 67LoSaugvyVr20fNI8j3hUviX9dXTP1dsq6tyrsKkRYt4sWXYPMrQwVlZzLoWnTKvAIGC1nNxo
 Wb9UCHHp4//Q==
X-IronPort-AV: E=Sophos;i="5.72,300,1580770800"; 
   d="scan'208";a="4449781"
Received: from kihagsepp01.int.kistler.com (HELO sl-win-seppm-1.int.kistler.com) ([192.168.52.67])
  by mx2.kistler.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Mar 2020 11:00:32 +0100
Received: from mx1.kistler.com (kihagciip01.int.kistler.com [192.168.52.57])
	by sl-win-seppm-1.int.kistler.com (Postfix) with ESMTPS
	for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 11:00:32 +0100 (CET)
IronPort-SDR: 3Dlk9V2NVJXfRnKhfoJjv/gQFqp3+CmgpU3ofu1zOcX99BZUA4DUwQ1+AzLKOc3YOGGfnF12sj
 /f/QhAvMeyWw==
X-IronPort-AV: E=Sophos;i="5.72,300,1580770800"; 
   d="scan'208";a="25027537"
Received: from sw-win-exch-1.int.kistler.com ([192.168.100.95])
  by mx1.kistler.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 24 Mar 2020 11:00:32 +0100
Received: from SW-WIN-EXCH-1.int.kistler.com (192.168.100.95) by
 SW-WIN-EXCH-1.int.kistler.com (192.168.100.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 24 Mar 2020 11:00:31 +0100
Received: from SW-WIN-EXCH-1.int.kistler.com ([fe80::2d73:29d7:2604:10b9]) by
 SW-WIN-EXCH-1.int.kistler.com ([fe80::2d73:29d7:2604:10b9%4]) with mapi id
 15.01.1847.003; Tue, 24 Mar 2020 11:00:31 +0100
From: vladimir.motyka@kistler.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Building FIT images with different initramfs images
Thread-Topic: Building FIT images with different initramfs images
Thread-Index: AdYBwv+lH2MB7JocRcuk7kgulVygnA==
Date: Tue, 24 Mar 2020 10:00:31 +0000
Message-ID: <cfa2c0f18911496e8d3ebb61287a0e81@kistler.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.89]
x-c2processedorg: 78a97207-3cfa-406d-a777-069c09c1300a
MIME-Version: 1.0
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgd2FudCB0byBhc2sgaWYgdGhlcmUgaXMgc29tZSBiZXN0IHByYWN0aWNlIG9y
IHJlY29tbWVuZGF0aW9uIG9uIGhvdyB0byBidWlsZCBtdWx0aXBsZSBGSVQgaW1hZ2VzIHdpdGgg
ZGlmZmVyZW50IGluaXRyYW1mcyBpbWFnZS4gV2UgbmVlZCBtb3JlIEZJVCBpbWFnZXMgd2l0aCBh
IGRpZmZlcmVudCBzZXQgb2YgcGFja2FnZXMgdG8gc3VwcG9ydCBkaWZmZXJlbnQgdXNlIGNhc2Vz
KGRldmVsb3BtZW50IGltYWdlLCBwcm9kdWN0aW9uIHRlc3QgaW1hZ2UsIGV0Yy4pLg0KDQpBcyB0
aGUgSU5JVFJBTUZTX0lNQUdFIHZhcmlhYmxlIGlzIHNldCBpbiB0aGUgbWFjaGluZSBjb25maWd1
cmF0aW9uLCB3ZSBkZWZpbmVkIG1vcmUgbWFjaGluZXMgd2l0aCBkaWZmZXJlbnQgSU5JVFJBTUZT
X0lNQUdFIHZhbHVlLiBJIHRoaW5rIHRoaXMgaXMgYWJ1c2luZyBvZiBtYWNoaW5lIGNvbmZpZ3Vy
YXRpb24uDQoNCkkgZm91bmQgYSBzaW1pbGFyIHF1ZXN0aW9uIGhlcmUgb24gdGhlIG1haWxpbmcg
bGlzdCAoaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9waXBlcm1haWwveW9jdG8vMjAxNy1B
dWd1c3QvMDM3Njc2Lmh0bWwpLCB3aGVyZSBDaHJpc3RpYW4gZGVzY3JpYmVzIGhpcyBzb2x1dGlv
biAtIGFkanVzdGluZyBrZXJuZWwuYmJjbGFzcyBhbmQga2VybmVsLWZpdGltYWdlLmJiY2xhc3Mg
YW5kIGNyZWF0aW5nIGEgbmV3IHZhcmlhYmxlIElOSVRSQU1GU19JTUFHRVMuIEhvd2V2ZXIsIGl0
IHdhc24ndCBpbnRlZ3JhdGVkIGludG8gWVAuDQoNClRvIHN1bW1hcml6ZSwgaXMgdGhlcmUgYSBi
ZXR0ZXIvcmVjb21tZW5kZWQgc29sdXRpb24gZm9yIGJ1aWxkaW5nIG11bHRpcGxlIEZJVCBpbWFn
ZXMgd2l0aCBkaWZmZXJlbnQgaW5pdHJhbWZzIGltYWdlLCB0aGVuIGFidXNpbmcgdGhlIE1BQ0hJ
TkUgY29uZmlndXJhdGlvbiwgb3IgYWRqdXN0aW5nIGtlcm5lbC5iYmNsYXNzIGFuZCBrZXJuZWwt
Zml0aW1hZ2UuYmJjbGFzcyBieSBteXNlbGY/DQoNClRoYW5rIFlvdSBhbmQgQmVzdCBSZWdhcmRz
LA0KVmxhZG8gTW90eWthDQoNCkNvbmZpZGVudGlhbGl0eSBOb3RpY2U6IFRoaXMgZS1tYWlsIGlz
IHByaXZpbGVnZWQgYW5kIGNvbmZpZGVudGlhbCBhbmQgZm9yIHRoZSB1c2Ugb2YgdGhlIGFkZHJl
c3NlZSBvbmx5LiBTaG91bGQgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3Ig
cGxlYXNlIG5vdGlmeSB1cyBieSByZXBseWluZyBkaXJlY3RseSB0byB0aGUgc2VuZGVyIG9yIGJ5
IHNlbmRpbmcgYSBtZXNzYWdlIHRvIGluZm9Aa2lzdGxlci5jb20uIFVuYXV0aG9yaXNlZCBkaXNz
ZW1pbmF0aW9uLCBkaXNjbG9zdXJlIG9yIGNvcHlpbmcgb2YgdGhlIGNvbnRlbnRzIG9mIHRoaXMg
ZS1tYWlsLCBvciBhbnkgc2ltaWxhciBhY3Rpb24sIGlzIHByb2hpYml0ZWQuDQo=
