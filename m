Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB09AE00BBD; Thu,  8 Nov 2018 23:38:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A3B3E00A54
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 23:38:20 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Nov 2018 23:38:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,482,1534834800"; d="scan'208";a="87897966"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by orsmga007.jf.intel.com with ESMTP; 08 Nov 2018 23:38:18 -0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.31]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.169]) with mapi id
	14.03.0415.000; Fri, 9 Nov 2018 15:38:18 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "Qi.Chen@windriver.com" <Qi.Chen@windriver.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [patchtest-oe][PATCH] test_patch_cve.py: fix cve tag
	checking logic
Thread-Index: AQHUdniRpDtuD0mI8EyUnx4uJIfGwqVGi00A
Date: Fri, 9 Nov 2018 07:38:17 +0000
Message-ID: <b60807217de927095931fde0d71c01524b2c4f36.camel@intel.com>
References: <1541138580-15360-1-git-send-email-Qi.Chen@windriver.com>
	<6b62c08ad4adc471b983b226f0fd8acea0857236.camel@linuxfoundation.org>
In-Reply-To: <6b62c08ad4adc471b983b226f0fd8acea0857236.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.21.114]
MIME-Version: 1.0
Subject: Re: [patchtest-oe][PATCH] test_patch_cve.py: fix cve tag checking logic
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Nov 2018 07:38:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA8471F98DAE5242BFFADB13B989CD38@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE4LTExLTA3IGF0IDA5OjAxICswMDAwLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToN
Cj4gT24gRnJpLCAyMDE4LTExLTAyIGF0IDE0OjAzICswODAwLCBDaGVuIFFpIHdyb3RlOg0KPiA+
IFRoZSBjdXJyZW50IGxvZ2ljIGZvciBjaGVja2luZyBjdmUgdGFnIGlzIG5vdCBjb3JyZWN0LiBJ
dCBlcnJvcnMNCj4gPiBvdXQgaWYgYW5kIG9ubHkgaWYgdGhlIHBhdGNoIGNvbnRhaW5zIGEgbGlu
ZSB3aGljaCBiZWdpbnMgd2l0aA0KPiA+IENWRS1ZWVlZLVhYWFggYW5kIGNvbnRhaW5zIG5vdGhp
bmcgZWxzZS4NCj4gPiANCj4gPiBJdCB3aWxsIG5vdCBlcnJvciBvdXQgaWYgdGhlIHBhdGNoIGNv
bnRhaW5zIG5vIENWRSBpbmZvcm1hdGlvbiwgbm9yDQo+ID4gd2lsbCBpdCBlcnJvciBvdXQgaWYg
dGhlIHBhdGNoIGNvbnRhaW5zIGxpbmUgbGlrZSBiZWxvdy4NCj4gPiANCj4gPiAnRml4IENWRS1Z
WVlZLVhYWFgnDQo+ID4gDQo+ID4gSSBjYW4gc2VlIHRoYXQgdGhlIGN2ZSB0YWcgY2hlY2tpbmcg
bG9naWMgdHJpZXMgdG8gZW5zdXJlIHRoZSBwYXRjaA0KPiA+IGNvbnRhaW5zIHNvbWV0aGluZyBs
aWtlICdDVkU6IENWRS1ZWVlZLVhYWFgnLiBTbyBmaXggdG8gaW1wbGVtZW50DQo+ID4gc3VjaA0K
PiA+IGxvZ2ljLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4gUWkgPFFpLkNoZW5Ad2lu
ZHJpdmVyLmNvbT4NCj4gPiAtLS0NCj4gPiAgdGVzdHMvdGVzdF9wYXRjaF9jdmUucHkgfCAxNSAr
KysrKysrKy0tLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkNCj4gDQo+IFRoYW5rcywgZ29vZCBmaW5kLg0KPiANCj4gSSd2ZSBtZXJnZWQg
dGhpcyBhbmQgSSBiZWxpZXZlIHRoZSBpbnN0YW5jZSBzaG91bGQgaGF2ZSBpdCBhcHBsaWVkDQo+
IG5vdw0KPiB0b28uDQo+IA0KDQpOb3Qgc3VyZSBpZiB0aGlzIGlzIHJlbGF0ZWQgYnV0IGl0IGxv
b2tzIGxpa2UgdGhlIHRlc3RzIGFyZW4ndCBydW5uaW5nDQphdCBhbGwgbm93IC4uLg0KDQoNCmh0
dHBzOi8vcGF0Y2h3b3JrLm9wZW5lbWJlZGRlZC5vcmcvcHJvamVjdC9vZS1jb3JlL3Nlcmllcy8/
b3JkZXJpbmc9LWxhc3RfdXBkYXRlZA0KDQpUaGFua3MsDQoNCkFudWoNCg==

