Received: from heian.cn.fujitsu.com (heian.cn.fujitsu.com [183.91.158.132])
 by mx.groups.io with SMTP id smtpd.web11.1829.1591063525678675759
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 19:05:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 183.91.158.132, mailfrom: lixm.fnst@cn.fujitsu.com)
X-IronPort-AV: E=Sophos;i="5.73,462,1583164800"; 
   d="scan'208";a="93618565"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 02 Jun 2020 10:05:20 +0800
Received: from G08CNEXMBPEKD05.g08.fujitsu.local (unknown [10.167.33.204])
	by cn.fujitsu.com (Postfix) with ESMTP id B5B7E4CE032B;
	Tue,  2 Jun 2020 10:05:19 +0800 (CST)
Received: from G08CNEXMBPEKD05.g08.fujitsu.local (10.167.33.204) by
 G08CNEXMBPEKD05.g08.fujitsu.local (10.167.33.204) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 2 Jun 2020 10:05:18 +0800
Received: from G08CNEXMBPEKD05.g08.fujitsu.local ([fe80::90ed:382f:828d:5124])
 by G08CNEXMBPEKD05.g08.fujitsu.local ([fe80::90ed:382f:828d:5124%14]) with
 mapi id 15.00.1497.006; Tue, 2 Jun 2020 10:05:18 +0800
From: "Li, Xiaoming" <lixm.fnst@cn.fujitsu.com>
To: Sangeeta Jain <sangeeta.jain@intel.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBRQSBjb21wbGV0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlvY3RvLTIuNy40LnJjMik=?=
Thread-Topic: QA completion for completed autobuilder build (yocto-2.7.4.rc2)
Thread-Index: AdY35btkDB8TuKqMTXW+3mqug3znTwAnD2UQ
Date: Tue, 2 Jun 2020 02:05:18 +0000
Message-ID: <8963d43382ec4edb9adf4e127d8bc509@G08CNEXMBPEKD05.g08.fujitsu.local>
References: <BY5PR11MB40371DDE5C07A6FE3BA2F211E38A0@BY5PR11MB4037.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB40371DDE5C07A6FE3BA2F211E38A0@BY5PR11MB4037.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.167.218.89]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: B5B7E4CE032B.A9485
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixm.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGmjrFNhbmdlZXRhDQoNCkFyZSB5b3VyIHRlc3QgY2FzZSBhbmQgdGVzdCBz
dGVwcyBvcGVuIHNvdXJjZSA/DQpJZiB5ZXMsIHdoZXJlIGNhbiBJIGdldCBp
dCA/IFRoYW5rcyBhIGxvdC4NCg0KQmVzdA0KTGkNCg0KPiAtLS0tLdPKvP7U
rbz+LS0tLS0NCj4gt6K8/sjLOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIFttYWlsdG86eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZ10gtPoN
Cj4gse0gU2FuZ2VldGEgSmFpbg0KPiC3osvNyrG85DogMjAyMMTqNtTCMcjV
IDE1OjI2DQo+IMrVvP7IyzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KPiCzrcvNOiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3
aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFwb29ydg0KPiA8YXBvb3J2LnNhbmdh
bEBpbnRlbC5jb20+OyBDaGFuLCBBYXJvbiBDaHVuIFlldw0KPiA8YWFyb24u
Y2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyByaWNoYXJkLnB1cmRpZUBsaW51
eGZvdW5kYXRpb24ub3JnOw0KPiBha3VzdGVyODA4QGdtYWlsLmNvbTsgc2pv
bGxleS55cC5wbUBnbWFpbC5jb207IFR1bW1hbGFwYWxsaSwgVmluZWVsYQ0K
PiA8dmluZWVsYS50dW1tYWxhcGFsbGlAaW50ZWwuY29tPg0KPiDW98ziOiBb
eW9jdG9dIFFBIGNvbXBsZXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRl
ciBidWlsZCAoeW9jdG8tMi43LjQucmMyKQ0KPiANCj4gSGVsbG8gYWxsLA0K
PiANCj4gVGhpcyBpcyB0aGUgZnVsbCByZXBvcnQgZm9yIHlvY3RvLTIuNy40
LnJjMjoNCj4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2Nn
aXQuY2dpL3lvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWIvdHJlZS8/aD1pbnRl
DQo+IGwteW9jdG8tdGVzdHJlc3VsdHMNCj4gDQo+ID09PT09PT0gU3VtbWFy
eSA9PT09PT09PQ0KPiBObyBoaWdoIG1pbGVzdG9uZSBkZWZlY3RzLg0KPiBO
byBuZXcgZGVmZWN0cyBhcmUgZm91bmQgaW4gdGhpcyBjeWNsZS4NCj4gDQo+
IE5vdGU6IEZldyBmYWlsdXJlcyBhcmUgb2JzZXJ2ZWQuIFRoZXNlIGFyZSBz
ZXR1cCBpc3N1ZXMsIG5vdCByZWFsIHlvY3RvIGlzc3VlLg0KPiANCj4gVGhh
bmtzLA0KPiBTYW5nZWV0YQ0KPiANCj4gDQoNCgoK
