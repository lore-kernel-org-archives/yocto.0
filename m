Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web09.1501.1610565921274245545
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 11:25:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=bdU+6r8V;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610565921; x=1768245921;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=KzYEpDtiGmjD8DYv8rSWyhnkJjtqxGBigsxpaBamZB4=;
  b=bdU+6r8VTX1gF5JhBzWySHgo3cwjsjZK4+F3fLpuIKemLxFh11NoZNzH
   kfo8BhE130Ag57NrvXVsgrZDKrmJVGKRAZFFTqel7+qYEry3rjm/4IMjH
   9n/e5TWWw/Y1ye3A5PWCpoGt+eOT6jn0GKhNaTkcLzfWuBR6h7TLElmDU
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3ADw65nBxHXmRnTsLXCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0uoeL/ad9pjvdHbS+e9qxAeQG9mCu7Qc0KGP6vuoGTRZp8rY7zZaKN0EfiRGoP?=
 =?us-ascii?q?1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU2nZkJ6?=
 =?us-ascii?q?KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq8objZF+Jqs/xRfFv2ZEdu?=
 =?us-ascii?q?pLzm9sOV6fggzw68it8JNh6Shcp+4t+8tdWqjmYqo0SqBVAi47OG4v/s3rshfD?=
 =?us-ascii?q?TQqL5nQCV2gdjwRFDQvY4hzkR5n9qiT1uPZz1ymcJs32UKs7WS++4KdxSR/nkz?=
 =?us-ascii?q?kIOjgk+2zKkMNwjaZboBW8pxxjxoPffY+YOOZicq7bYNgXXnRKUNpPWCNdA4O8?=
 =?us-ascii?q?d4oPAPQHPeZEtIn2ul8CoQKjCQWwGO/jzzlFjWL006InyeQsCQHI0hI9EdISvn?=
 =?us-ascii?q?rar9v1O6UTUe+pw6fHwi7Ob+9N1jf/9ITEbgwtrPOKULltccTR004vFwbdg1me?=
 =?us-ascii?q?roLlODWV1v8TvGeF9OpsTf+khXM7qw5vvDig2MEsgZTXi4kIzlzL+zh3zIM7Kd?=
 =?us-ascii?q?alT0N7esKkH4VOty6EMYt6WMYiQ2ZuuCYh1LIJp4W7cTMRx5s92RHfcPyGc5OU?=
 =?us-ascii?q?4h39UeaROi10i25ieLK6nhu/91WrxeLgWMeuyllKsjZFncfWtnALzxHf98aJRu?=
 =?us-ascii?q?Z580u/xzqC0xze5+VaLU03lqfVJZAvzqAsm5cOrUnNES/4lUH0gaGYaEkp5uil?=
 =?us-ascii?q?5/rob7j7qZGRM415hwfjOaogncy/BP43MgkIX2WD+eW806Hs/VH+QLVSlP02la?=
 =?us-ascii?q?vZv47GKsQHvKK5BBVV0okl5h2iDDmmyMwVkWQbIF5fdh+KjZLlN0/QLP34F/uy?=
 =?us-ascii?q?glShnC92y/zaJLHsDZrAImLMnbv7YLpw60hRwxcpw99F/ZJbELQBLer2Wk/2qd?=
 =?us-ascii?q?PXEAc0Mxexw+b7ENV90Z4eWX6XDq+ZLqzStViI6/ozI+iDfoAVvjP9K+Mh6vLy?=
 =?us-ascii?q?kXM1hUIRcbOv3ZQNcny3Be5pLFuCYXvsmdcBDXkFvg8lTODwlFKCVjtTa26zX6?=
 =?us-ascii?q?I6+D47FJqrAZrfSoy3jrGM3j23EoNIam1GEFyBEHfle52BW/gWaSKSJsFhkiYD?=
 =?us-ascii?q?VbikU4Ihzg2uuxHky7V5KOrY4CgYtZXl1Nhu+eLciwoy+CdvAMuHzW6NVGF1nn?=
 =?us-ascii?q?gURzAo2aB/ulZxxUuE0ah9m/BYD8Bc5+tVUgcmMp7R1+x7C9fuVQLdedeEU1Km?=
 =?us-ascii?q?QtS9ATEtVdI92d8PY0FhFNW+iRDDxzCqA7gXl7OVGJM07rjQ33/rJ8ZymD760/?=
 =?us-ascii?q?wCj1QjCvFGNyXynKd9sQvTCovhnECQlqLsfqMZin3j7mCGmCCru0dDXQNrFe3+?=
 =?us-ascii?q?QX0Ba02ehpy523iDBff6EqgqLAZHj8uFLLBHZ8bBh1xLX+b4JNnbeCS6nGLmVk?=
 =?us-ascii?q?XA/a+FcIe/IzZV5y7aEkVR1llLpXs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BgAAClSP9f/0HhJQpiHQEBAQEJARIBB?=
 =?us-ascii?q?QUBQIE9BgELAYMggTgKhDWRQgOKHJAkFIFoCwEBAQEBAQEBAQgBGAcQBAEBhEo?=
 =?us-ascii?q?CF4FWJjYHDgIQAQEGAQEBAQEGBAGGUQyCOCkBgxEBAQEDAQEiEUUMBAIBCBEEA?=
 =?us-ascii?q?QEBAgImAgICHwcKFQgIAQEEDgUIgx+CVQMOrjN2gTKFWIJmDYIkgQ4qAYZzgQq?=
 =?us-ascii?q?FNIIDPoQqPoIbQgQBgScBEgGDOYJgBIM8XwJ1bpA2gyWkTFgHA4J3iSuLQoFXh?=
 =?us-ascii?q?RQrhFqTSoo+oiePFIQgAgQCBAUCFoFdCIEScHCDOQlHFwINlyaFRHQCATQCBgE?=
 =?us-ascii?q?JAQEDCY1lgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2BgAAClSP9f/0HhJQpiHQEBAQEJARIBBQUBQIE9BgELAYM?=
 =?us-ascii?q?ggTgKhDWRQgOKHJAkFIFoCwEBAQEBAQEBAQgBGAcQBAEBhEoCF4FWJjYHDgIQA?=
 =?us-ascii?q?QEGAQEBAQEGBAGGUQyCOCkBgxEBAQEDAQEiEUUMBAIBCBEEAQEBAgImAgICHwc?=
 =?us-ascii?q?KFQgIAQEEDgUIgx+CVQMOrjN2gTKFWIJmDYIkgQ4qAYZzgQqFNIIDPoQqPoIbQ?=
 =?us-ascii?q?gQBgScBEgGDOYJgBIM8XwJ1bpA2gyWkTFgHA4J3iSuLQoFXhRQrhFqTSoo+oie?=
 =?us-ascii?q?PFIQgAgQCBAUCFoFdCIEScHCDOQlHFwINlyaFRHQCATQCBgEJAQEDCY1lgREBA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.79,345,1602547200"; 
   d="scan'208";a="477302968"
X-IronPort-AV: E=Sophos;i="5.79,345,1602547200"; 
   d="scan'208";a="95824515"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkAAMtERA
Date: Wed, 13 Jan 2021 19:24:54 +0000
In-Reply-To: <MADEUP.1659CD13328A69B6.15401@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.1659E12CA6DF916F.12087@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpLaGVtOg0KDQpJIGFtIGhhdmluZyBpc3N1ZXMgYXR0ZW1wdGluZyB0byByZXNvbHZlIHRoaXMg
aXNzdWUuLi4gDQpJIGFtIHNlZWluZyBpdCBpbiBteSBib290bG9hZGVyLi4uDQoNCkNhbiB5b3Ug
cG9zc2libHkgcG9pbnQgbWUgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbiA/DQoNClRoYW5rcy4NClN0
ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2Yg
TW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU2VudDog
V2VkbmVzZGF5LCBKYW51YXJ5IDEzLCAyMDIxIDg6MTcgQU0NClRvOiBLaGVtIFJhaiA8cmFqLmto
ZW1AZ21haWwuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6
IFJlOiBbeW9jdG9dICN5b2N0byAja2VybmVsDQoNCioqKiBXQVJOSU5HICoqKg0KRVhURVJOQUwg
RU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6
YXRpb24uDQoNCg0KSSBhbSB1c2luZyBzeXN2aW5pdC4uLg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogTW9uc2VlcywgU3RldmVuIEMgKFVTKSANClNlbnQ6IFdlZG5lc2RheSwg
SmFudWFyeSAxMywgMjAyMSA3OjE1IEFNDQpUbzogJ0toZW0gUmFqJyA8cmFqLmtoZW1AZ21haWwu
Y29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJFOiBbeW9j
dG9dICN5b2N0byAja2VybmVsDQoNCg0KV2hlbiBJIGRvIHRoaXMgSSBhbSBzZWVpbmcgIk5vdGhp
bmcgUFJPVklERVMgJ2luaXQtc3lzdGVtLWhlbHBlcnMnLCwsDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPiANClNlbnQ6IFR1
ZXNkYXksIEphbnVhcnkgMTIsIDIwMjEgNjoxMyBQTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChV
UykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dICN5b2N0byAja2VybmVsDQoNCioqKiBX
QVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJv
bSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoNCg0KT24gVHVlLCBKYW4gMTIsIDIwMjEgYXQg
MTI6MDkgUE0gTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8c3RldmVuLm1vbnNlZXM9YmFlc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+DQo+DQo+DQo+IFdvcmtpbmcgb24gemV1cyAzLjAuNCwgZm9yIGFhcmNoNjQNCj4N
Cj4NCj4NCj4gSSAgaGF2ZSBhIHN0YXJ0dXAgc2NyaXB0IG1ha2luZyB1c2Ugb2Yg4oCcc2Vydmlj
ZeKAnSBIb3cgZG8gSSBwcm9wZXJseSBjb25maWd1cmUgaW4gc3VwcG9ydCBmb3IgdGhlIOKAnHNl
cnZpY2XigJ0gY29tbWFuZCA/DQo+DQo+IEkgZG8gbm90IGhhdmUgYW4gZXJyb3Igd2hlbiB3b3Jr
aW5nIHVuZGVyIHJvY2tvLg0KPg0KPg0KPg0KPiBUaGUgZXJyb3Igc2VlbiBpcyA6ICAgIC9ldGMv
cmM1LmQvUzE1bW91bnRuZnMuc2g6IGxpbmUgNzA6IHNlcnZpY2U6IGNvbW1hbmQgbm90IGZvdW5k
DQo+DQo+DQo+DQo+IFVzYWdlOiBAIGxpbmUgNzA6ICDigJxzZXJ2aWNlIHJwY2JpbmQgc3RhdHVz
ID4vZGV2L251bGzigJ0NCj4NCj4NCg0KcGVyaGFwcyBqdXN0IGFkZCBpbml0LXN5c3RlbS1oZWxw
ZXJzIHRvIElNQUdFX0lOU1RBTEwNCg0KPg0KPiBUaGFua3MsDQo+DQo+IFN0ZXZlDQo+DQo+DQo+
IA0KPg0K
