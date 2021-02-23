Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11440.1614094286408777589
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 07:31:27 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 198.145.29.25, mailfrom: anuj.mittal@intel.com)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AC18B38C0966
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 15:31:25 +0000 (UTC)
IronPort-SDR: lcrwhHhWOnd21kCm/zxKdVLBJvrCjnSPB3j3d06m0gfobvezU6RZz4pdlLcyeDoWIWdgqn/zAF
 DQwEEe53VYRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="181400836"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; 
   d="scan'208";a="181400836"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 07:31:24 -0800
IronPort-SDR: HGVKUtECzypjBlgBbZnLjVgDwRTlfq7h5JZTztSiNLpPhrVOzYSzp3euQBZS+sucKvclGTUiYx
 TA6+hq05yyvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; 
   d="scan'208";a="423663721"
Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
  by fmsmga004.fm.intel.com with ESMTP; 23 Feb 2021 07:31:23 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 23:31:22 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.2106.002;
 Tue, 23 Feb 2021 23:31:22 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"pderocco@ix.netcom.com" <pderocco@ix.netcom.com>
Subject: Re: [yocto] Trouble booting basic x86 image
Thread-Topic: [yocto] Trouble booting basic x86 image
Thread-Index: AdcJwnNSs+ODUT99Rz65vrfWqD4+k///5tyA
Date: Tue, 23 Feb 2021 15:31:22 +0000
Message-ID: <2b38ddaaf31df09528d577470349c67c33819b36.camel@intel.com>
References: <712700BE27414926A00727DE5BDD7EB6@PAULD>
In-Reply-To: <712700BE27414926A00727DE5BDD7EB6@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <88E017D90F241F48AE24F76417B9FC39@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDIxLTAyLTIzIGF0IDAxOjAxIC0wODAwLCBQYXVsIEQuIERlUm9jY28gd3JvdGU6
DQo+IFlvY3RvIEdhdGVzZ2FydGgsIHVzaW5nIG1ldGEtaW50ZWwgdG8gYnVpbGQgY29yZS1pbWFn
ZS1taW5pbWFsDQo+IEludGVsIEQyNzAwTVVEIG1pbmktSVRYIG1vYm8gd2l0aCBEMjcwMCBBdG9t
DQo+IE9yZGluYXJ5IFVTQiAyLjAgZmxhc2ggZHJpdmUNCj4gDQo+IEkgZm9sbG93ZWQgdGhlIGlu
c3RydWN0aW9ucyBpbiB0aGUgbWV0YS1pbnRlbCBSRUFETUUsIGFuZCBoYWQgbm8NCj4gcHJvYmxl
bXMNCj4gYnVpbGRpbmcgdGhlIGludGVsLWNvcmUyLTMyIGFuZCBpbnRlbC1jb3JlaTctNjQgbWFj
aGluZXMsIGFzIHdlbGwgYXMNCj4gdGhlDQo+IGxhdHRlciB3aXRoIGFuIHgzMiB0dW5lLiBCdXQg
d2hlbmV2ZXIgSSB0cnkgdG8gYm9vdCBhbnkgb2YgdGhlbSwgSQ0KPiBnZXQgdGhlDQo+IGZvbGxv
d2luZyBzdHVmZiBmcm9tIHRoZSBrZXJuZWw6DQo+IA0KPiB1c2IgMS02OiBuZXcgaGlnaC1zcGVl
ZCBVU0IgZGV2aWNlIG51bWJlciA0IHVzaW5nIGVoY2ktcGNpDQo+IHVzYi1zdG9yYWdlIDEtNjox
LjA6IFVTQiBNYXNzIFN0b3JhZ2UgZGV2aWNlIGRldGVjdGVkDQo+IHVzYi1zdG9yYWdlIDEtNjox
LjA6wqAgUXVpcmtzIG1hdGNoIGZvciB2aWQgMDkwYyBwaWQgMTAwMDogNDAwDQo+IHNjc2kgaG9z
dDQ6IHVzYi1zdG9yYWdlIDEtNjoxLjANCj4gc2NzaSA0OjA6MDowOiBEaXJlY3QtQWNjZXNzwqDC
oMKgwqAgRkxBU0jCoMKgwqAgRHJpdmUgU01fVVNCMjDCoMKgIDExMDAgUFE6IDANCj4gQU5TSTog
NA0KPiBzZCA0OjA6MDowOiBBdHRhY2hlZCBzY3NpIGdlbmVyaWMgc2cwIHR5cGUgMA0KPiBzZCA0
OjA6MDowOiBbc2RhXSAzOTMyMTYwIDUxMi1ieXRlIGxvZ2ljYWwgYmxvY2tzOiAoMi4wMSBHQi8x
Ljg4IEdpQikNCj4gc2QgNDowOjA6MDogW3NkYV0gV3JpdGUgUHJvdGVjdCBpcyBvZmYNCj4gc2Qg
NDowOjA6MDogW3NkYV0gTm8gQ2FjaGluZyBtb2RlIHBhZ2UgZm91bmQNCj4gc2QgNDowOjA6MDog
W3NkYV0gQXNzdW1lIGRyaXZlIGNhY2hlOiB3cml0ZSB0aHJvdWdoDQo+IMKgc2RhOg0KPiBzZCA0
OjA6MDowOiBbc2RhXSBBdHRhY2hlZCBTQ1NJIHJlbW92YWJsZSBkaXNrDQo+IChjb3VudGRvd24g
ZnJvbSAyNyB0byAwKQ0KPiBNb3VudGVkIGZpbGVzeXN0ZW1zDQo+IEF2YWlsYWJsZSBibG9jayBk
ZXZpY2VzDQo+IG1ham9yIG1pbm9ywqAgI2Jsb2Nrc8KgIG5hbWUNCj4gwqDCoCAxwqDCoMKgwqDC
oMKgwqAgMMKgwqDCoMKgwqDCoCA0MDk2IHJhbTANCj4gwqDCoMKgIC4uLiAob3RoZXJzIGVkaXRl
ZCBvdXQpDQo+IMKgwqAgMcKgwqDCoMKgwqDCoCAxNcKgwqDCoMKgwqDCoCA0MDk2IHJhbTE1DQo+
IMKgwqAgOMKgwqDCoMKgwqDCoMKgIDDCoMKgwqAgMTk2NjA4MCBzZGENCj4gQ2Fubm90IGZpbmQg
cm9vdGZzLmltZyBmaWxlIGluIC9ydW4vbWVkaWEvKiAsIGRyb3BwaW5nIHRvIGEgc2hlbGwNCg0K
SXQgbG9va3MgbGlrZSB5b3UgYXJlIHVzaW5nIHRoZSBsaXZlIG9wdGlvbiBpbiBoZGRpbWcgaW1h
Z2U/IENhbiB5b3UNCnRyeSBhZGRpbmcgInJvb3R3YWl0IiB0byBrZXJuZWwgcGFyYW1ldGVycyBh
bmQgc2VlIGlmIHRoYXQgd29ya3M/DQoNCk5vdCBzdXJlIHdoeSBpdCdzIG5vdCBkcm9wcGluZyB0
byBzaGVsbCwgYnV0IG1heSBiZSB0cnkgYWRkaW5nIGV4cGxpY2l0DQpjYWxsIHRvIC9iaW4vc2gg
aW4gbWV0YS9yZWNpcGVzLWNvcmUvaW5pdHJkc2NyaXB0cy9maWxlcy9pbml0LWxpdmUuc2gNCmJl
Zm9yZSB0aGlzIHBvaW50IHRvIG1ha2Ugc3VyZSB0aGUgbWVkaWEgaXMgYWN0dWFsbHkgbW91bnRl
ZCBhdCB0aGF0DQpwb2ludC4NCg0KQWxzbywgaGF2ZSB5b3UgdHJpZWQgd2ljIGltYWdlIHRvIHNl
ZSBpZiB0aGF0IHdvcmtzPw0KDQpUaGFua3MsDQoNCkFudWoNCg==
