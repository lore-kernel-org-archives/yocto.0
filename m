Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.188009.1598239415963034685
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Aug 2020 20:23:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: IJx/GMW/TkZjNbnX4CBeWU8wZWmtNtAYjhOgjqKAkV+Frtf0OcvJbmxWWrc7cu25AVWH7DHE1u
 G3ZpYfmVSdjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153244123"
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; 
   d="scan'208";a="153244123"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2020 20:23:35 -0700
IronPort-SDR: GyX/ujdbBOrdr0GXywVQJJ5KxF3fjddGqfkH5ieoyeGV+zO/srG2nups/L7gDSqfHco6pXQWw2
 vWnGW0t9sw2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; 
   d="scan'208";a="402131720"
Received: from pgsmsx603.gar.corp.intel.com ([10.108.199.138])
  by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2020 20:23:34 -0700
Received: from pgsmsx603.gar.corp.intel.com (10.108.199.138) by
 pgsmsx603.gar.corp.intel.com (10.108.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Aug 2020 11:23:33 +0800
Received: from pgsmsx105.gar.corp.intel.com (10.221.44.96) by
 pgsmsx603.gar.corp.intel.com (10.108.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Aug 2020 11:23:33 +0800
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.97]) by
 PGSMSX105.gar.corp.intel.com ([169.254.4.108]) with mapi id 14.03.0439.000;
 Mon, 24 Aug 2020 11:23:33 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [PATCH 0/3] yocto-bsp/poky: kernel updates and default
Thread-Topic: [yocto] [PATCH 0/3] yocto-bsp/poky: kernel updates and default
Thread-Index: AQHWd+5se8uWA558hk+rnPZiOsBOzalGFeiA
Date: Mon, 24 Aug 2020 03:23:32 +0000
Message-ID: <7c55666a460654d83b53caba996e787981d9f4ff.camel@intel.com>
References: <cover.1598036643.git.bruce.ashfield@gmail.com>
In-Reply-To: <cover.1598036643.git.bruce.ashfield@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.145.178]
MIME-Version: 1.0
Return-Path: anuj.mittal@intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <36E8FA34B9D5C946A7A16B7A5101CE7B@intel.com>
Content-Transfer-Encoding: base64

SGkgQnJ1Y2UsDQoNCk9uIEZyaSwgMjAyMC0wOC0yMSBhdCAxNTowNyAtMDQwMCwgQnJ1Y2UgQXNo
ZmllbGQgd3JvdGU6DQo+IEZyb206IEJydWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEBnbWFp
bC5jb20+DQo+IA0KPiBSaWNoYXJkLA0KPiANCj4gU2ltaWxhciB0byBvZS1jb3JlLCB0aGVzZSBh
cmUgdGhlIHBhdGNoZXMgSSdtIGNhcnJ5aW5nIHRvIHVwZGF0ZSB0aGUNCj4gcmVmZXJlbmNlIEJT
UHMgdG8gdGhlIGxhdGVzdCA1LjQgKHdlIHN0aWxsIG5lZWQgYSA1LjggYmJhcHBlbmQgYW5kDQo+
IGNvbmZpcm1lZCBib290aW5nKSwgYXMgd2VsbCBhcyBhIHN3aXRjaCB0byA1LjggYXMgdGhlIGRl
ZmF1bHQuDQo+IA0KPiBUaGF0IGJlaW5nIHNhaWQsIEknbSBub3Qgc3VyZSBvZiB0aGUgd2F5IHlv
dSdkIGxpa2UgdGhlIGRlZmF1bHQNCj4ga2VybmVsDQo+IHNldCB0byBkaWZmZXJlbnRpYXRlIGJl
dHdlZW4gdGhlIHJlZmVyZW5jZSBCU1BzIGFuZCBxZW11LiBTbw0KPiBjdXJyZW50bHksDQo+IEkg
anVzdCBoYXZlIHRoZSBzaW5nbGUgcHJlZmVycmVkIHZlcnNpb24gc2V0Lg0KPiANCg0KU2hvdWxk
IHdlIGFsc28gdXBkYXRlIFBSRUZFUlJFRF9WRVJTSU9OIGZvciBsaW51eC15b2N0by10aW55IGZv
ciBwb2t5LQ0KdGlueSBESVNUUk8/IEl0IGlzIGN1cnJlbnRseSBwb2ludGluZyB0byA1LjAgLi4u
DQoNClRoYW5rcywNCg0KQW51ag0KDQoNCj4gQ2hlZXJzLA0KPiANCj4gQnJ1Y2UNCj4gDQo+IFRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQNCj4gYzlkMGJiNDIxYTJmN2M2NzgzZjJj
MmJiZjQ3Yzk1ZGE1NTM3OTg1ZDoNCj4gDQo+ICAgbGludXgteW9jdG8vNS44OiB1cGRhdGUgdG8g
djUuOC4yICgyMDIwLTA4LTIxIDE0OjU1OjA1IC0wNDAwKQ0KPiANCj4gYXJlIGF2YWlsYWJsZSBp
biB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6DQo+IA0KPiAgIGdpdDovL2dpdC55b2N0b3Byb2plY3Qu
b3JnL3Bva3ktY29udHJpYiB6ZWRkL2tlcm5lbC15b2N0bw0KPiAgIA0KPiBodHRwOi8vZ2l0Lnlv
Y3RvcHJvamVjdC5vcmcvY2dpdC5jZ2kvcG9reS1jb250cmliL2xvZy8/aD16ZWRkL2tlcm5lbC15
b2N0bw0KPiANCj4gQnJ1Y2UgQXNoZmllbGQgKDMpOg0KPiAgIHBva3k6IHNldCBwcmVmZXJyZWQg
dmVyc2lvbiBmb3IgbGludXgteW9jdG8gdG8gYmUgdjUuOA0KPiAgIHlvY3RvLWJzcDogdXBkYXRl
IHRvIHY1LjQuNTYNCj4gICB5b2N0by1ic3A6IHVwZGF0ZSB0byB2NS40LjU4DQo+IA0KPiAgbWV0
YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZiAgICAgICAgICAgICAgICAgIHwgIDIgKy0NCj4g
IC4uLi9saW51eC9saW51eC15b2N0b181LjQuYmJhcHBlbmQgICAgICAgICAgICAgICB8IDE2ICsr
KysrKysrLS0tLQ0KPiAtLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
OSBkZWxldGlvbnMoLSkNCj4gDQo+IA0K
