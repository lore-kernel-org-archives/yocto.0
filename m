Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0FE8A4C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 04:05:56 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2010 02:05:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,354,1283756400"; d="scan'208";a="618492866"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2010 02:05:49 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 17:05:41 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 20 Oct 2010 17:05:41 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 20 Oct 2010 17:05:39 +0800
Thread-Topic: [yocto] [PULL] at: Non root install patch is not necessary
	(Bug 246)
Thread-Index: ActvhY6RJX6rTSDBRSyxokQ+ciXqcQAr0khg
Message-ID: <749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
	<1287489755.1720.1284.camel@rex>
In-Reply-To: <1287489755.1720.1284.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] at: Non root install patch is not necessary (Bug 246)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 09:05:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCiAgIEkgaGF2ZSByZS1maXhlZCB0aGlzIGJ1ZywgcGxlYXNlIGNoZWNrIGl0
LCB0aGFuayB5b3V+DQoNCiBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvYXQvYXRfMy4xLjEyLmJiICAg
ICAgICAgICAgICAgICB8ICAgIDIgDQogbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2F0L2ZpbGVzL25v
bnJvb3RpbnN0YWxsLnBhdGNoICAgfCAgIDc1IC0tLS0tLS0tLS0tLS0tLS0tLQ0KIG1ldGEvcmVj
aXBlcy1leHRlbmRlZC9hdC9maWxlcy9ub25zdHJpcGJpbmFyaWVzLnBhdGNoIHwgICAyMSArKysr
Kw0KIDMgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0pDQoN
Ck1laSBMZWkgKDEpOg0KICAgICAgYXQ6IHJlbW92ZSBub25yb290aW5zdGFsbCBwYXRjaCBhbmQg
bW9kaWZ5IHJlbGV2YW50IGZpbGVzDQoNClB1bGwgVVJMOiBodHRwOi8vZ2l0LnBva3lsaW51eC5v
cmcvY2dpdC5jZ2kvcG9reS1jb250cmliL2xvZy8/aD1sbWVpMy9kaXN0cm8NCg0KY29tbWl0IDRj
YzU0ZWE4N2M1MTY3YWYwZGEyMDdlNWNlYTg1NmQxNmUyYjg4ZjYNCkF1dGhvcjogTWVpIExlaSA8
bGVpLm1laUBpbnRlbC5jb20+DQpEYXRlOiAgIFdlZCBPY3QgMjAgMTY6MjA6MzYgMjAxMCArMDgw
MA0KDQogICAgYXQ6IHJlbW92ZSBub25yb290aW5zdGFsbCBwYXRjaCBhbmQgbW9kaWZ5IHJlbGV2
YW50IGZpbGVzDQogICAgDQogICAgcmVtb3ZlIG5vbnJvb3RpbnN0YWxsIHBhdGNoLCBhbmQgdXNl
IGEgcGF0Y2ggbmFtZWQgbm9uc3RyaXBiaW5hcmllcyB0byBtb2RpZnkgdGhlIC9hdC0zLjEuMTAu
Mi9NYWtlZmlsZS5pbiwgc28gaXQgY2FuIGFsc28gaGFuZGxlcyBzdHJpcHBpbmcgb2YgdGhlIGJp
bmFyaWVzLg0KICAgIA0KICAgIEZpeCBbQlVHSUQgIzI0Nl0NCiAgICANCiAgICBTaWduZWQtb2Zm
LWJ5OiBNZWkgTGVpIDxsZWkubWVpQGludGVsLmNvbT4NCg0KDQoNClRoYW5rcw0KTGVpIA0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUmljaGFyZCBQdXJkaWUgW21haWx0bzpy
cHVyZGllQGxpbnV4LmludGVsLmNvbV0gDQpTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDE5LCAyMDEw
IDg6MDMgUE0NClRvOiBNZWksIExlaQ0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1Ympl
Y3Q6IFJlOiBbeW9jdG9dIFtQVUxMXSBhdDogTm9uIHJvb3QgaW5zdGFsbCBwYXRjaCBpcyBub3Qg
bmVjZXNzYXJ5IChCdWcgMjQ2KQ0KDQpPbiBUdWUsIDIwMTAtMTAtMTkgYXQgMTc6MDcgKzA4MDAs
IE1laSwgTGVpIHdyb3RlOg0KPiBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvYXQvYXRfMy4xLjEyLmJi
ICAgICAgICAgICAgICAgfCAgICAxDQo+ICBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvYXQvZmlsZXMv
bm9ucm9vdGluc3RhbGwucGF0Y2ggfCAgIDc1IC0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDc2IGRlbGV0aW9ucygtKQ0KPiANCj4gTWVpIExlaSAoMSk6DQo+ICAgICAg
IGF0OiBOb24gcm9vdCBpbnN0YWxsIHBhdGNoIGlzIG5vdCBuZWNlc3NhcnkgKEJ1ZyAyNDYpIFB1
bGwgVVJMOiANCj4gDQo+IGh0dHA6Ly9naXQucG9reWxpbnV4Lm9yZy9jZ2l0LmNnaS9wb2t5LWNv
bnRyaWIvbG9nLz9oPWxtZWkzL2Rpc3Rybw0KPiANCj4gY29tbWl0IDIyYTE0OTE0ODJiZGQwYjhm
ZTFiYWMzZjg5YTJiNGRhZDBhOTRhOGMNCj4gQXV0aG9yOiBNZWkgTGVpIDxsZWkubWVpQGludGVs
LmNvbT4NCj4gRGF0ZTogICBUdWUgT2N0IDE5IDE0OjIzOjUxIDIwMTAgKzA4MDANCj4gDQo+ICAg
IGF0OiBOb24gcm9vdCBpbnN0YWxsIHBhdGNoIGlzIG5vdCBuZWNlc3NhcnkgKEJ1ZyAyNDYpDQo+
IA0KPiAgICBSZW1vdmVkIG5vbnJvb3RpbnN0YWxsIHBhdGNoIGFuZCBtb2RpZmllZCB0aGUgZmls
ZSB3aGljaCB1c2VkIHRoaXMgcGF0Y2gNCj4gDQo+ICAgIEZpeCBbQlVHSUQgIzI0Nl0NCj4gDQo+
ICAgIFNpZ25lZC1vZmYtYnk6IE1laSBMZWkgPGxlaS5tZWlAaW50ZWwuY29tPg0KDQpUaGlzIGNo
YW5nZSBpbGx1c3RyYXRlcyBhIHByb2JsZW0gd2UgbmVlZCB0byBiZSB2ZXJ5IGNhcmVmdWwgdG8g
d2F0Y2gNCmZvciB3aGVuIGRvaW5nIHRoaXMuIFRoZSBwYXRjaCB5b3UndmUgcmVtb3ZlZCBub3Qg
b25seSBoYW5kbGVzIHJvb3QNCmluc3RhbGwgYnV0IGFsc28gaGFuZGxlcyBzdHJpcHBpbmcgb2Yg
dGhlIGJpbmFyaWVzLg0KDQpOb3RlIHRoaXMgYml0Og0KDQotK2lmZXEgKCQoSVJPT1QpLCkNCi0g
Y2hvd24gJChEQUVNT05fVVNFUk5BTUUpOiQoREFFTU9OX0dST1VQTkFNRSkgJChJUk9PVCkkKExG
SUxFKQ0KLS0gdGVzdCAtZiAkKElST09UKSQoZXRjZGlyKS9hdC5hbGxvdyB8fCB0ZXN0IC1mICQo
SVJPT1QpJChldGNkaXIpL2F0LmRlbnkgfHwgJChJTlNUQUxMKSAtbyByb290IC1nICQoREFFTU9O
X0dST1VQTkFNRSkgLW0gNjQwIGF0LmRlbnkgJChJUk9PVCkkKGV0Y2RpcikvDQotLSAkKElOU1RB
TEwpIC1nICQoREFFTU9OX0dST1VQTkFNRSkgLW8gJChEQUVNT05fVVNFUk5BTUUpIC1tIDY3NTUg
LXMgYXQgJChJUk9PVCkkKGJpbmRpcikNCi0rZW5kaWYNCi0rIHRlc3QgLWYgJChJUk9PVCkkKGV0
Y2RpcikvYXQuYWxsb3cgfHwgdGVzdCAtZiAkKElST09UKSQoZXRjZGlyKS9hdC5kZW55IHx8ICQo
SU5TVEFMTCkgJChJTlNUQUxMT1dOKSAtbSA2MDAgYXQuZGVueSAkKElST09UKSQoZXRjZGlyKS8N
Ci0rICQoSU5TVEFMTCkgJChJTlNUQUxMT1dOKSAtbSA0NzU1IGF0ICQoSVJPT1QpJChiaW5kaXIp
DQoNClRoZSAtcyBvcHRpb24gaXMgcmVtb3ZlZCBmcm9tIHRoZSBpbnN0YWxsIGNvbW1hbmQuDQoN
CldoaWxzdCB3ZSBjYW4gcmVtb3ZlIHRoZSB1c2VyIG93bmVyc2hpcCBwYXJ0IG9mIHRoZSBwYXRj
aCwgdGhlIC1zIG9wdGlvbg0KbmVlZHMgdG8gcmVtYWluIHByZXNlbnQgYXMgd2UgZXhwZWN0IHVu
c3RyaXBwZWQgYmluYXJpZXMgdG8gYmUNCmluc3RhbGxlZC4NCg0KUmVnYXJkcywNCg0KUmljaGFy
ZA0KDQoNCg==

