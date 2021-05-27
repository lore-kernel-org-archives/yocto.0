Received: from mail.altilink.com (mail.altilink.com [149.202.244.16])
 by mx.groups.io with SMTP id smtpd.web11.7276.1622125026340649063
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 07:17:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: airmont.com, ip: 149.202.244.16, mailfrom: francois.goudal@airmont.com)
Received: from S34974.EX34974.lan (2001:41d0:117:dd00::95ca:f410) by
 S34974.EX34974.lan (2001:41d0:117:dd00::95ca:f410) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
 15.1.2176.14; Thu, 27 May 2021 16:17:03 +0200
Received: from S34974.EX34974.lan ([fe80::b896:64b1:da0f:28d2]) by
 S34974.EX34974.lan ([fe80::b896:64b1:da0f:28d2%14]) with mapi id
 15.01.2176.014; Thu, 27 May 2021 16:17:03 +0200
From: =?UTF-8?B?RnJhbsOnb2lzIEdPVURBTA==?= <francois.goudal@airmont.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Making a recipe that enables a systemd service it doesn't provide
Thread-Topic: Making a recipe that enables a systemd service it doesn't
 provide
Thread-Index: AQHXUwL3M+fwmHQKxk2qhbWdvIKTUg==
Date: Thu, 27 May 2021 14:17:03 +0000
Message-ID: <4DC83B72-2CFE-4F0B-B5A8-9100C502535E@airmont.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.46.21021202
x-originating-ip: [195.25.222.129]
MIME-Version: 1.0
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF33F272E743724E86D39D3E69CE1D34@EX34974.lan>
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgYW0gc3RydWdnbGluZyB3aXRoIHNvbWV0aGluZyBJIGNvdWxkbuKAmXQgZmlu
ZCBhbnkgc29sdXRpb24gZm9yIHNvIGZhci4NCg0KSSBhbSB0cnlpbmcgdG8gbWFrZSBhIHZlcnkg
c2ltcGxlIHJlY2lwZSB0aGF0IGRvZXMgdGhpczoNCi0gRHJvcCBhbiBvcGVudnBuIGNvbmZpZ3Vy
YXRpb24gZmlsZSBpbiAvZXRjL29wZW52cG4vdGVzdC5jb25mDQotIE1ha2UgdGhlIHN5c3RlbWQg
c2VydmljZSBvcGVudnBuQHRlc3Quc2VydmljZSBlbmFibGVkIGJ5IGRlZmF1bHQNCg0KVGhlIHJl
Y2lwZSBpdHNlbGYgZGVwZW5kcyBvbiBvcGVudnBuLCBhbmQgc28sIGl0IGRvZXNu4oCZdCwgYnkg
aXRzZWxmLCBwcm92aWRlIHRoZSBvcGVudnBuQC5zZXJ2aWNlICwgd2hpY2ggY29tZXMgd2l0aCBv
cGVudnBuLg0KDQpEcm9wcGluZyB0aGUgb3BlbnZwbiBjb25maWd1cmF0aW9uIGZpbGUgaW4gdGhl
IHJvb3RmcyBpcyBlYXN5LCBidXQgSSBjYW7igJl0IG1hbmFnZSB0byBtYWtlIHRoZSByZWNpcGUg
dG8gZW5hYmxlIHRoZSBzZXJ2aWNlLg0KSeKAmXZlIHRyaWVkIGFkZGluZyB0aGlzIHRvIG15IHJl
Y2lwZToNCg0KaW5oZXJpdCBzeXN0ZW1kDQpTWVNURU1EX0FVVE9fRU5BQkxFID0gImVuYWJsZSIN
ClNZU1RFTURfU0VSVklDRV8ke1BOfSA9ICJvcGVudnBuQHRlc3Quc2VydmljZSINCg0KQnV0IGJp
dGJha2UgZmFpbHMgb24gdGhpcyByZWNpcGUgd2l0aCB0aGUgbWVzc2FnZSBiZWxvdzoNCg0KRVJS
T1I6IHRlc3Qtb3BlbnZwbi1jb25maWctMS4wLXIwIGRvX3BhY2thZ2U6IFNZU1RFTURfU0VSVklD
RV90ZXN0LW9wZW52cG4tY29uZmlnIHZhbHVlIG9wZW52cG5AdGVzdC5zZXJ2aWNlIGRvZXMgbm90
IGV4aXN0DQoNCkkgYmVsaWV2ZSB0aGlzIGlzIGNhdXNlZCBieSB0aGUgZmFjdCB0aGF0IHRoZSBz
ZXJ2aWNlIGZpbGUgaXMgbm90IHBhcnQgb2YgdGhlIGZpbGVzIGluc3RhbGxlZCBieSB0aGUgcmVj
aXBlIGl0c2VsZiwgYnV0IGl0IGlzIG5vdCBtZWFudCB0byBiZSBhbnl3YXkuDQoNCklzIHRoZXJl
IGEgKGNsZWFuKSB3YXkgdG8gYWNoaWV2ZSB0aGlzID8NCg0KVGhhbmtzIGluIGFkdmFuY2UNCg0K
DQoNCg==
