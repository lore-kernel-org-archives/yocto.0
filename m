Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.12745.1612887325095294532
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Feb 2021 08:15:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: 3Jq9EYNmYvdkw96qNlIfUMFAqvEE/lAQyiJVKEqAg3KMu/rlDkg0np786h7LuijlqEwSbI2ooC
 GpaxKoQuA7Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="200985391"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; 
   d="scan'208";a="200985391"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 08:15:23 -0800
IronPort-SDR: E1TagwUnOQPUAw8+ilh/KZgrdBQkPweH+nI4AFo6sX++nYnFWeDp309aH3dx815yNpiYNYLEx0
 i30qRzk7a5xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; 
   d="scan'208";a="360785045"
Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
  by fmsmga007.fm.intel.com with ESMTP; 09 Feb 2021 08:15:22 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 00:15:22 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.2106.002;
 Wed, 10 Feb 2021 00:15:21 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mail@oripessach.com" <mail@oripessach.com>
Subject: Re: [yocto] Image installation problems after an upgrade to gatesgarth
Thread-Topic: [yocto] Image installation problems after an upgrade to
 gatesgarth
Thread-Index: AQHW/vf29CZexbS5bk+iWwup7Fl34apPeXqA
Date: Tue, 9 Feb 2021 16:15:21 +0000
Message-ID: <1366bbfd264be735b1951bce538296ff292e4b6c.camel@intel.com>
References: <CAJekvNSU76iCo25=bOT42P+Dt3R+r0N7RX+OuAvC+rrKYAP2pA@mail.gmail.com>
In-Reply-To: <CAJekvNSU76iCo25=bOT42P+Dt3R+r0N7RX+OuAvC+rrKYAP2pA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A00B9594D710E24382B460BFA01017BF@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDA4OjI1IC0wNzAwLCBPcmkgUGVzc2FjaCB3cm90ZToNCj4g
SGksDQo+IA0KPiBJIGhhdmUgYW4gaW1hZ2UgdGhhdCB3YXMgYnVpbGRpbmcgYW5kIHdvcmtpbmcg
ZmluZSB3aXRoIGFuIG9sZGVyDQo+IHJlbGVhc2Ugb2YgUG9reS4gVGhlIHRhcmdldCBzeXN0ZW0g
aXMgZ2VuZXJpY3g4Ni02NCwgYW5kIEknbSB0cnlpbmcNCj4gdG8gY3JlYXRlIGEgYm9vdCBVU0Ig
ZHJpdmUgdGhhdCBpbnN0YWxscyB0aGUgc3lzdGVtIG9uIHRoZSBQQyBpdA0KPiBib290cyBvbi4g
DQo+IA0KPiBMaWtlIEkgc2FpZCwgdGhpcyB3YXMgd29ya2luZyBmaW5lIGJlZm9yZS4NCj4gDQo+
IFdpdGggZ2F0ZXNnYXJ0aCwgSSdtIG9ubHkgZ2V0dGluZyB0aGUgImJvb3QiIG9wdGlvbiBpbiBn
cnViLiBJIGhhdmUgYQ0KPiBncnViLWJvb3Rjb25mIGJiYXBwZW5kIGZpbGUgdGhhdCBzZXRzIExB
QkVMUyB0byAiaW5zdGFsbCIgKHRoZSBvbmx5DQo+IG9wdGlvbiBJIHdhbnQpIGFuZCBhIGNvdXBs
ZSBvZiBiYmFwcGVuZCBmaWxlcyBtb2RpZnlpbmcgdGhlIGluaXQtDQo+IGluc3RhbGwtZWZpLnNo
IGZpbGUgaW4gaW5pdHJkc2NyaXB0cy4gSSBjYW4gc2VlIHRoYXQgdGhlIGdydWIuY2ZnDQo+IGZp
bGUgZ2VuZXJhdGVkIGR1cmluZyB0aGUgYnVpbGQgaXMgY29ycmVjdCAodW5kZXINCj4gdG1wL3dv
cmsvZ2VuZXJpY3g4Nl82NC1wb2t5LWxpbnV4L2dydWItYm9vdGNvbmYvMS4wMC0NCj4gcjAvaW1h
Z2UvYm9vdC9FRkkvQk9PVC9ncnViLmNmZykgYW5kIHlldCwgdGhlIHdpYyBpbWFnZSBvbmx5IGhh
cyB0aGUNCj4gYm9vdCBvcHRpb24uDQo+IA0KPiBIb3cgZG8gSSBnZXQgdGhlIGluc3RhbGwgZ3J1
YiBvcHRpb24gaW50byB0aGUgaW1hZ2U/DQoNCllvdSBjYW4gYnVpbGQgdGhlIGhkZGltZyBpbWFn
ZSBieSBjaGFuZ2luZyBJTUFHRV9GU1RZUEVTIHRvIGxpdmUgd2hpY2gNCmhhcyB0aGUgYm9vdCBh
bmQgaW5zdGFsbCBvcHRpb24uIEkgdGhpbmsgaXQgdXNlZCB0byBiZSBsaXZlIHVudGlsIHpldXMu
DQoNCklmIHlvdSB3YW50IHRvIHVzZSB0aGF0IGluaXQtaW5zdGFsbC1lZmkgc2NyaXB0IHdpdGgg
d2ljLCB0aGVzZSBzdGVwcw0KbWlnaHQgaGVscDoNCg0KaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0
Lm9yZy9jZ2l0L2NnaXQuY2dpL21ldGEtaW50ZWwvdHJlZS9SRUFETUUjbjIwOA0KDQoNClRoYW5r
cywNCg0KQW51ag0K
