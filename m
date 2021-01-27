Received: from mail.altilink.com (mail.altilink.com [149.202.244.16])
 by mx.groups.io with SMTP id smtpd.web12.7012.1611752005658847483
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 04:53:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: airmont.com, ip: 149.202.244.16, mailfrom: francois.goudal@airmont.com)
Received: from S34974.EX34974.lan (2001:41d0:117:dd00::95ca:f410) by
 S34974.EX34974.lan (2001:41d0:117:dd00::95ca:f410) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
 15.1.2044.4; Wed, 27 Jan 2021 13:53:24 +0100
Received: from S34974.EX34974.lan ([fe80::b896:64b1:da0f:28d2]) by
 S34974.EX34974.lan ([fe80::b896:64b1:da0f:28d2%14]) with mapi id
 15.01.2044.012; Wed, 27 Jan 2021 13:53:24 +0100
From: =?UTF-8?B?RnJhbsOnb2lzIEdPVURBTA==?= <francois.goudal@airmont.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Issue with packaging a systemd-nspawn container and have it autostart
Thread-Topic: Issue with packaging a systemd-nspawn container and have it
 autostart
Thread-Index: AQHW9KtlwHoLi8ai+Ei7RERs8g2nDw==
Date: Wed, 27 Jan 2021 12:53:24 +0000
Message-ID: <8FF2C941-7A4E-4488-8271-E3AEC6D27EBA@contoso.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [195.25.222.129]
MIME-Version: 1.0
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B7C758E82DE8F4695DA7CEB8839F95F@EX34974.lan>
Content-Transfer-Encoding: base64

SGVsbG8sDQpJIGFtIHRyeWluZyB0byBjcmVhdGUgYSByZWNpcGUgZm9yIGEgcGFja2FnZSB0aGF0
IGNvbnRhaW5zIGEgd2hvbGUgc3lzdGVtZC1uc3Bhd24gY29udGFpbmVyIChhIHJvb3RmcyB0aGF0
IGdvZXMgaW50byAvdmFyL2xpYi9tYWNoaW5lcy9teWNvbnRhaW5lcikgYW5kIGEgc3lzdGVtIG5z
cGF3biBjb25maWcgZmlsZSB0aGF0IGdvZXMgaW50byAvZXRjL3N5c3RlbWQvbnNwYXduL215Y29u
dGFpbmVyLm5zcGF3bi4NCg0KTm93LCBJ4oCZZCBsaWtlIHRoaXMgcmVjaXBlIHRvIG1ha2UgdGhl
IGNvbnRhaW5lciBzdGFydCBhdXRvbWF0aWNhbGx5Lg0KDQpUaGlzIG1lYW5zIGVuYWJsaW5nIHRo
ZSBzZXJ2aWNlIGNhbGxlZCBzeXN0ZW1kLW5zcGF3bkBteWNvbnRhaW5lci5zZXJ2aWNlDQoNClNv
LCBJ4oCZdmUgdHJpZWQgdG8gYWRkIHRoZSBmb2xsb3dpbmcgdHdvIGxpbmVzIHRvIG15IGJiIGZp
bGU6DQoNCmluaGVyaXQgc3lzdGVtZA0KU1lTVEVNRF9TRVJWSUNFXyR7UE59ID0gInN5c3RlbWQt
bnNwYXduQGFpcm1vbnQtZ3cuc2VydmljZSINCg0KQnV0IHRoaXMgZmFpbHMgd2hlbiBJIGJ1aWxk
IHRoZSByZWNpcGU6DQoNCkVSUk9SOiBteWNvbnRhaW5lci0xLjAtcjAgZG9fcGFja2FnZTogU1lT
VEVNRF9TRVJWSUNFX215Y29udGFpbmVyIHZhbHVlIHN5c3RlbWQtbnNwYXduQG15Y29udGFpbmVy
LnNlcnZpY2UgZG9lcyBub3QgZXhpc3QNCg0KSSBndWVzcyBpdCBjb21wbGFpbnMgYmVjYXVzZSBt
eSBvd24gcGFja2FnZSBkb2VzbuKAmXQgaGF2ZSBhIGZpbGUgY2FsbGVkIHN5c3RlbWQtbnNwYXdu
QG15Y29udGFpbmVyLnNlcnZpY2UgYnV0IGJ5IGRlZmluaXRpb24sIGl0IHdvbuKAmXQgaGF2ZSBv
bmUuIFNvIHdoYXQgY291bGQgYmUgdGhlIHJpZ2h0IHdheSBvZiBkb2luZyB0aGlzID8NCg0KDQo=
