Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED9DE00294
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 09:48:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Nov 2012 09:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,693,1344236400"; d="scan'208";a="243011898"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2012 09:47:48 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 1 Nov 2012 09:47:45 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.155]) with mapi id
	14.01.0355.002; Thu, 1 Nov 2012 09:47:44 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "Burton, Ross"
	<ross.burton@intel.com>
Thread-Topic: [PATCH 0/4] misc fixes for 1.3 meta-intel release
Thread-Index: AQHNtw7nbBzCMjJM30i7KDgF6QZRHJfT/QQAgAABBACAAFzXgIAAASQAgADW3zA=
Date: Thu, 1 Nov 2012 16:47:43 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D911592@ORSMSX106.amr.corp.intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
	<CAJTo0LYZwOa2twSCABHYHcqaTg_hdR-pkG--dCcKdd2Sb6NL0A@mail.gmail.com>
	<CAJTo0LaGuVd+30ZR6SvyiwY0qLSDdg2s9aUR__eU-k68=vvEQQ@mail.gmail.com>
	<1351717072.1762.38.camel@empanada>
In-Reply-To: <1351717072.1762.38.camel@empanada>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Nov 2012 16:48:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFphbnVzc2ksIFRvbQ0KPiBT
ZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMzEsIDIwMTIgMTo1OCBQTQ0KPiBUbzogQnVydG9uLCBS
b3NzDQo+IENjOiBLYW1ibGUsIE5pdGluIEE7IEhhcnQsIERhcnJlbjsgeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNF0gbWlzYyBmaXhlcyBmb3IgMS4zIG1l
dGEtaW50ZWwgcmVsZWFzZQ0KPiANCj4gT24gV2VkLCAyMDEyLTEwLTMxIGF0IDIwOjUzICswMDAw
LCBCdXJ0b24sIFJvc3Mgd3JvdGU6DQo+ID4gT24gMzEgT2N0b2JlciAyMDEyIDE1OjIxLCBCdXJ0
b24sIFJvc3MgPHJvc3MuYnVydG9uQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiBPbiAzMSBPY3Rv
YmVyIDIwMTIgMTU6MTcsIFRvbSBaYW51c3NpIDx0b20uemFudXNzaUBpbnRlbC5jb20+IHdyb3Rl
Og0KPiA+ID4+IFRoYXQganVzdCBsZWF2ZXMgY2VkYXJ0cmFpbCBiZWZvcmUgd2UgY2FuIHB1bGwg
dGhpcyBpbi4NCj4gPiA+DQo+ID4gPiBUaGF0J3Mgb2RkLCBJIHdhcyBqdXN0IGFib3V0IHRvIHdy
aXRlIGEgbWFpbC4gIE15IGN1cnJlbnQgaW1hZ2VzIGFyZQ0KPiA+ID4gYnJva2VuIGFzIHRoZXkg
YXJlIGJhc2VkIG9uIG1hc3RlciB3aGljaCBoYXMgYSBkdWZmIHVkZXYuICBJJ2xsIGRvIGENCj4g
PiA+IHJlYnVpbGQgYWdhaW5zdCBkYW5ueSBidXQgdGhhdCBtaWdodCBub3QgaGFwcGVuIHByb21w
dGx5Lg0KPiA+DQo+ID4gSnVzdCB0ZXN0ZWQgb24gQ2VkYXIgVHJhaWwsIGdvb2Qgb2xkIFNpbnRl
bCBwbGF5cyBmaW5lIGF0IDQlIENQVS4NCj4gPg0KPiANCj4gT0ssIHNvdW5kcyBsaWtlIGl0IHdv
cmtzIGV2ZXJ5d2hlcmUsIHNvIGNhbiBiZSBwdWxsZWQgaW4sIGJ1dC4uLg0KPiANCj4gTml0aW4s
IGRpZCB5b3UgbmVlZCB0byByZWZyZXNoIHRoaXMgcGF0Y2hzZXQgdG8gLjE4IG9yIHNob3VsZCBJ
IHB1bGwgdGhpcyBpbiBhbmQNCj4gcHVsbCBpbiBhIC4xOCB1cGRhdGUgbGF0ZXI/DQo+IA0KDQpU
b20sDQogICAgVGhlIHBhdGNoIHNldCBpcyBub3QgYXQgdGhlIGxhdGVzdCB2ZXJzaW9ucyBvZiBs
aWJ2YSBjb21wb25lbnRzLg0KTml0aW4NCg0KDQo+IFRvbQ0KPiANCj4gDQo+ID4gUm9zcw0KPiAN
Cg0K

