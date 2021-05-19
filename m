Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.7690.1621404495583186801
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 23:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: G+8dnkZhYRFMfbo4rTDjwrYWkYiMkzrMIVORL0UUE+gFAcpzCLzhYsla6utk9eQGLSEMMlILl0
 cgHTvqjJl3GQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="198947636"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; 
   d="scan'208";a="198947636"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2021 23:08:13 -0700
IronPort-SDR: uAULbzuZfhgB8HV29qe/UiwVzB69jG/Cq5EpApGJ4GX4QfKUp46OtiTZAI1gA4j33TmHHJRTsU
 c1IAnZJ5r8CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; 
   d="scan'208";a="411589936"
Received: from kmsmsx602.gar.corp.intel.com ([172.21.219.142])
  by orsmga002.jf.intel.com with ESMTP; 18 May 2021 23:08:11 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx602.gar.corp.intel.com (172.21.219.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 14:08:10 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Wed, 19 May 2021 14:08:10 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>, Zbigniew Bodek <zbigniew.bodek@huawei.com>
CC: Wojciech Zmuda <zmuda.w@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
Thread-Topic: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set
 default preferred version to 2.6.0-rc1
Thread-Index: AQHXS+GG3FN+pLtvWEyOGtJ6/3TkW6ro08kAgACSYPOAAOtHMA==
Date: Wed, 19 May 2021 06:08:10 +0000
Message-ID: <cb054588e7434b3bb6f04077a4313ea3@intel.com>
References: <20210518122927.2554655-1-zmuda.w@gmail.com>
 <20210518122927.2554655-3-zmuda.w@gmail.com>
 <CAPoiz9wP6+k5BOiuqhZ5UjKC+ZAFuqgFj7beGzPXRvLch=oW_A@mail.gmail.com>
 <916c2b8e69224dba9179edff271c659d@huawei.com>
 <CAPoiz9w0hm_L_KZH+eM4bnPDdJzkt+ETwuteCPyfW4PAmoChsg@mail.gmail.com>
In-Reply-To: <CAPoiz9w0hm_L_KZH+eM4bnPDdJzkt+ETwuteCPyfW4PAmoChsg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24NCj4gQmVoYWxm
IE9mIEpvbiBNYXNvbg0KPiBTZW50OiBXZWRuZXNkYXksIE1heSAxOSwgMjAyMSAxMjowMCBBTQ0K
PiBUbzogWmJpZ25pZXcgQm9kZWsgPHpiaWduaWV3LmJvZGVrQGh1YXdlaS5jb20+DQo+IENjOiBX
b2pjaWVjaCBabXVkYSA8em11ZGEud0BnbWFpbC5jb20+OyB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXplcGh5cl1bUEFUQ0ggMi8yXSB6
ZXBoeXIta2VybmVsLXNyYy5pbmM6IHNldA0KPiBkZWZhdWx0IHByZWZlcnJlZCB2ZXJzaW9uIHRv
IDIuNi4wLXJjMQ0KPiANCj4gT24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgMTE6MjQgQU0gWmJpZ25p
ZXcgQm9kZWsNCj4gPHpiaWduaWV3LmJvZGVrQGh1YXdlaS5jb20+IHdyb3RlOg0KPiA+DQo+ID4g
SGVsbG8gSm9uLA0KPiA+DQo+ID4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnQuIEkgd2lsbCB0cnkg
dG8gYW5zd2VyLg0KPiA+IFRoaXMgY2hhbmdlIGlzIHRvIGluY2x1ZGUgZm9sbG93aW5nIGJ1ZyBm
aXg6DQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3plcGh5cnByb2plY3QtcnRvcy96ZXBoeXIvcHVs
bC8zMzI1MQ0KPiA+IEkgY2FuIGFsc28gc2VlIHdlJ3ZlIGhhZCBtdWx0aXBsZSBSQyB2ZXJzaW9u
cyBpbiB0aGUgcGFzdCBidXQgaW4gcHJpbmNpcGxlLCBJJ20NCj4gbm90IGFnYWluc3QgeW91ciBz
dWdnZXN0aW9uIHRvIGhhdmUgbWFzdGVyLW5leHQsIGV0Yy4gU28gd2hlcmUgc2hvdWxkIHdlIGdv
DQo+IGZyb20gaGVyZT8NCj4gDQo+IE15IHJlY29tbWVuZGF0aW9uIHdvdWxkIGJlIHRvIHB1bGwg
dGhhdCBwYXRjaCBvdXQgYW5kIGFwcGx5IGl0IGRpcmVjdGx5IG9uDQo+IHRvcCBvZiB2Mi41LjAg
KGFzc3VtaW5nIHRoYXQgaXMgZmVhc2libGUpLiAgTWF5YmUgZXZlbiBhc2tpbmcgdGhlIHVwc3Ry
ZWFtDQo+IHplcGh5ciBwcm9qZWN0IHRvIHBvcnQgdGhpcyB0byB2Mi41LjAgYW5kIG1ha2UgaXQN
Cj4gdjIuNS4xIHdvdWxkIGJlIHRoZSBvcHRpbWFsIHNvbHV0aW9uLg0KDQpbTmF2ZWVuXSAgV2Ug
Y2FuIHdhaXQgZm9yIHN0YWJsZSByZWxlYXNlLiBJZiBpdCBpcyB1cmdlbnQsIHdlIGNhbiBjYXJy
eSBwYXRjaGVzIGZvciBidWcgZml4ZXMsICBpbiBjYXNlIHVwc3RyZWFtIGRvZXMgbm90IGdpdmUg
ZG90IHJlbGVhc2UgIQ0KDQo+IEFzIGZhciBhcyBhIG1hc3Rlci1uZXh0IGJyYW5jaCwgdGhhdCB3
b3VsZCBiZSB1cCB0byBOYXZlZW4uDQo+IA0KPiA+DQo+ID4gS2luZCByZWdhcmRzDQo+ID4gWmJp
Z25pZXcNCj4gPg0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSm9u
IE1hc29uIFttYWlsdG86amRtYXNvbkBrdWR6dS51c10NCj4gPiBTZW50OiAxOCBNYXksIDIwMjEg
MTc6MTcNCj4gPiBUbzogV29qY2llY2ggWm11ZGEgPHptdWRhLndAZ21haWwuY29tPg0KPiA+IENj
OiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnOyBaYmlnbmlldyBCb2Rlaw0KPiA+IDx6Ymln
bmlldy5ib2Rla0BodWF3ZWkuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXpl
cGh5cl1bUEFUQ0ggMi8yXSB6ZXBoeXIta2VybmVsLXNyYy5pbmM6DQo+ID4gc2V0IGRlZmF1bHQg
cHJlZmVycmVkIHZlcnNpb24gdG8gMi42LjAtcmMxDQo+ID4NCj4gPiBPbiBUdWUsIE1heSAxOCwg
MjAyMSBhdCA4OjMwIEFNIFdvamNpZWNoIFptdWRhIDx6bXVkYS53QGdtYWlsLmNvbT4NCj4gd3Jv
dGU6DQo+ID4gPg0KPiA+ID4gRnJvbTogWmJpZ25pZXcgQm9kZWsgPHpiaWduaWV3LmJvZGVrQGh1
YXdlaS5jb20+DQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcgQm9kZWsgPHpi
aWduaWV3LmJvZGVrQGh1YXdlaS5jb20+DQo+ID4NCj4gPiBEbyB3ZSByZWFsbHkgd2FudCB0byBo
YXZlIFplcGh5ciBvbiBhIHJlbGVhc2UgY2FuZGlkYXRlPyAgSU1ITywgd2UNCj4gc2hvdWxkIG5l
dmVyIGJlIGRvaW5nIHRoaXMsIGFzIHdlIHNob3VsZCB3YW50IHRoZSBrZXJuZWwgaW4gbWV0YS16
ZXBoeXIgdG8NCj4gYmUgYXMgc3RhYmxlIGFzIHBvc3NpYmxlLiAgSWYgdGhpcyBpcyByZWFsbHkg
ZGVzaXJlZCwgcGVyaGFwcyBhIG1hc3Rlci1uZXh0DQo+IGJyYW5jaCBmb3IgdGhpbmdzIGxpa2Ug
dGhpcy4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBKb24NCj4gPg0KPiA+ID4gLS0tDQo+ID4gPiAg
cmVjaXBlcy1rZXJuZWwvemVwaHlyLWtlcm5lbC96ZXBoeXIta2VybmVsLXNyYy5pbmMgfCAyICst
DQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+
ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL3JlY2lwZXMta2VybmVsL3plcGh5ci1rZXJuZWwvemVw
aHlyLWtlcm5lbC1zcmMuaW5jDQo+ID4gPiBiL3JlY2lwZXMta2VybmVsL3plcGh5ci1rZXJuZWwv
emVwaHlyLWtlcm5lbC1zcmMuaW5jDQo+ID4gPiBpbmRleCA1ZWU0MGQ0Li45ZmMwOGJhIDEwMDY0
NA0KPiA+ID4gLS0tIGEvcmVjaXBlcy1rZXJuZWwvemVwaHlyLWtlcm5lbC96ZXBoeXIta2VybmVs
LXNyYy5pbmMNCj4gPiA+ICsrKyBiL3JlY2lwZXMta2VybmVsL3plcGh5ci1rZXJuZWwvemVwaHly
LWtlcm5lbC1zcmMuaW5jDQo+ID4gPiBAQCAtMiw3ICsyLDcgQEAgTElDRU5TRSA9ICJBcGFjaGUt
Mi4wIg0KPiA+ID4gIExJQ19GSUxFU19DSEtTVU0gPQ0KPiAiZmlsZTovL0xJQ0VOU0U7bWQ1PWZh
ODE4YTI1OWNiZWQ3Y2U4YmMyYTIyZDM1YTQ2NGZjIg0KPiA+ID4NCj4gPiA+ICAjIERlZmF1bHQg
dG8gYSBzdGFibGUgdmVyc2lvbg0KPiA+ID4gLVBSRUZFUlJFRF9WRVJTSU9OX3plcGh5ci1rZXJu
ZWwgPz89ICIyLjUuMCINCj4gPiA+ICtQUkVGRVJSRURfVkVSU0lPTl96ZXBoeXIta2VybmVsID8/
PSAiMi42LjAtcmMxIg0KPiA+ID4gIGluY2x1ZGUgemVwaHlyLWtlcm5lbC1zcmMtJHtQUkVGRVJS
RURfVkVSU0lPTl96ZXBoeXIta2VybmVsfS5pbmMNCj4gPiA+DQo+ID4gPiAgaW5oZXJpdCBjbWFr
ZQ0KPiA+ID4gLS0NCj4gPiA+IDIuMjUuMQ0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4NCg==
