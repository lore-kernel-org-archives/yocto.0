Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49AC3E00D68; Mon, 10 Jun 2019 23:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63DC4E00D54
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 23:30:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jun 2019 23:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,578,1557212400"; d="scan'208";a="183692089"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2019 23:29:58 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.239]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.27]) with mapi id
	14.03.0415.000; Tue, 11 Jun 2019 14:29:48 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "zhe.he@windriver.com"
	<zhe.he@windriver.com>
Thread-Topic: [yocto][meta-dpdk][PATCH] dpdk: mk: disable warning for packed
	member pointer
Thread-Index: AQHVIALaFWg8zuOIxESrLwsX/2hOl6aVd/6A
Date: Tue, 11 Jun 2019 06:29:48 +0000
Message-ID: <dba13bde0e9e8eff94bbb42e8fccc0afb693b95c.camel@intel.com>
References: <1560222410-414851-1-git-send-email-zhe.he@windriver.com>
In-Reply-To: <1560222410-414851-1-git-send-email-zhe.he@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.141.205]
MIME-Version: 1.0
Subject: Re: [meta-dpdk][PATCH] dpdk: mk: disable warning for packed member pointer
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
X-List-Received-Date: Tue, 11 Jun 2019 06:30:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B92A5BDD52054A48BECC93E368BEF9D2@intel.com>
Content-Transfer-Encoding: base64

VGhhbmtzLCBJIGhhdmUgaW5jbHVkZWQgdGhpcyBmb3IgMTguMTEgYXMgd2VsbCBhbmQgbWVyZ2Vk
Lg0KDQpUaGFua3MsDQoNCkFudWoNCg0KT24gVHVlLCAyMDE5LTA2LTExIGF0IDExOjA2ICswODAw
LCB6aGUuaGVAd2luZHJpdmVyLmNvbSB3cm90ZToNCj4gRnJvbTogSGUgWmhlIDx6aGUuaGVAd2lu
ZHJpdmVyLmNvbT4NCj4gDQo+IEJhY2twb3J0IGEgcGF0Y2ggZnJvbSB1cHN0cmVhbSB0byBmaXgg
dGhlIGZvbGxvd2luZyBidWlsZCBmYWlsdXJlLg0KPiANCj4geDg2XzY0LW5hdGl2ZS1saW51eGFw
cC1nY2MvaW5jbHVkZS9ydGVfZXRoZXIuaDoxNzg6MjogZXJyb3I6DQo+IGNvbnZlcnRpbmcgYSBw
YWNrZWQgJ2NvbnN0IHN0cnVjdCBldGhlcl9hZGRyJyBwb2ludGVyIChhbGlnbm1lbnQgMSkNCj4g
dG8gYSAndW5hbGlnbmVkX3VpbnQxNl90JyB7YWthICdjb25zdCBzaG9ydA0KPiAgdW5zaWduZWQg
aW50J30gcG9pbnRlciAoYWxpZ25tZW50IDIpIG1heSByZXN1bHQgaW4gYW4gdW5hbGlnbmVkDQo+
IHBvaW50ZXIgdmFsdWUgWy1XZXJyb3I9YWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyXQ0KPiA+ICAg
MTc4IHwgIGNvbnN0IHVuYWxpZ25lZF91aW50MTZfdCAqZWFfd29yZHMgPSAoY29uc3QNCj4gPiB1
bmFsaWduZWRfdWludDE2X3QgKillYTsNCj4gPiAgICAgICB8ICBefn5+fg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSGUgWmhlIDx6aGUuaGVAd2luZHJpdmVyLmNvbT4NCj4gLS0tDQo+ICAuLi5kaXNh
YmxlLXdhcm5pbmctZm9yLXBhY2tlZC1tZW1iZXItcG9pbnRlci5wYXRjaCB8IDQ4DQo+ICsrKysr
KysrKysrKysrKysrKysrKysNCj4gIHJlY2lwZXMtZXh0ZW5kZWQvZHBkay9kcGRrXzE3LjExLjMu
YmIgICAgICAgICAgICAgIHwgIDEgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25z
KCspDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1leHRlbmRlZC9kcGRrL2RwZGsvZHBk
ay0xNy4xMS1tay1kaXNhYmxlLQ0KPiB3YXJuaW5nLWZvci1wYWNrZWQtbWVtYmVyLXBvaW50ZXIu
cGF0Y2gNCj4gDQo+IGRpZmYgLS1naXQgYS9yZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBkay9kcGRr
LTE3LjExLW1rLWRpc2FibGUtDQo+IHdhcm5pbmctZm9yLXBhY2tlZC1tZW1iZXItcG9pbnRlci5w
YXRjaCBiL3JlY2lwZXMtDQo+IGV4dGVuZGVkL2RwZGsvZHBkay9kcGRrLTE3LjExLW1rLWRpc2Fi
bGUtd2FybmluZy1mb3ItcGFja2VkLW1lbWJlci0NCj4gcG9pbnRlci5wYXRjaA0KPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi43MGE4ZGVjDQo+IC0tLSAvZGV2L251bGwN
Cj4gKysrIGIvcmVjaXBlcy1leHRlbmRlZC9kcGRrL2RwZGsvZHBkay0xNy4xMS1tay1kaXNhYmxl
LXdhcm5pbmctZm9yLQ0KPiBwYWNrZWQtbWVtYmVyLXBvaW50ZXIucGF0Y2gNCj4gQEAgLTAsMCAr
MSw0OCBAQA0KPiArRnJvbSBhMzg1OTcyYzM2NzVkZDJiNDc5MmFiNWIzY2Y3YTUzNmU2Zjk4NDZj
IE1vbiBTZXAgMTcgMDA6MDA6MDANCj4gMjAwMQ0KPiArRnJvbTogUmVzaG1hIFBhdHRhbiA8cmVz
aG1hLnBhdHRhbkBpbnRlbC5jb20+DQo+ICtEYXRlOiBUaHUsIDIgTWF5IDIwMTkgMTA6MzM6MzQg
KzAxMDANCj4gK1N1YmplY3Q6IFtQQVRDSF0gbWs6IGRpc2FibGUgd2FybmluZyBmb3IgcGFja2Vk
IG1lbWJlciBwb2ludGVyDQo+ICtNSU1FLVZlcnNpb246IDEuMA0KPiArQ29udGVudC1UeXBlOiB0
ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04DQo+ICtDb250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4
Yml0DQo+ICsNCj4gK2djYyA5IG9uIEZlZG9yYSAzMCBnaXZlcyBhbiBlcnJvcg0KPiArInRha2lu
ZyBhZGRyZXNzIG9mIHBhY2tlZCBtZW1iZXIgbWF5IHJlc3VsdCBpbiBhbg0KPiArdW5hbGlnbmVk
IHBvaW50ZXIgdmFsdWUiIHdhcm5pbmdzLg0KPiArDQo+ICtGb3IgY2xhbmcgYnVpbGRzIHRoaXMg
d2FybmluZyBpcyBhbHJlYWR5IGRpc2FibGVkLA0KPiArc28gZGlzYWJsZSAiLVdhZGRyZXNzLW9m
LXBhY2tlZC1tZW1iZXIiIGZvciBnY2MgYnVpbGRzDQo+ICthbHNvLg0KPiArDQo+ICtTbmlwcGV0
IG9mIGJ1aWxkIGVycm9yOg0KPiArbGliL2xpYnJ0ZV9lYWwvbGludXgvZWFsL2VhbF9tZW1hbGxv
Yy5jOiBJbiBmdW5jdGlvbg0KPiDigJhhbGxvY19zZWdfd2Fsa+KAmToNCj4gK2xpYi9saWJydGVf
ZWFsL2xpbnV4L2VhbC9lYWxfbWVtYWxsb2MuYzo3Njg6MTI6IGVycm9yOg0KPiArdGFraW5nIGFk
ZHJlc3Mgb2YgcGFja2VkIG1lbWJlciBvZiDigJhzdHJ1Y3QgcnRlX21lbV9jb25maWfigJkgbWF5
DQo+IHJlc3VsdA0KPiAraW4gYW4gdW5hbGlnbmVkIHBvaW50ZXIgdmFsdWUgWy1XZXJyb3I9YWRk
cmVzcy1vZi1wYWNrZWQtbWVtYmVyXQ0KPiArICA3NjggfCAgY3VyX21zbCA9ICZtY2ZnLT5tZW1z
ZWdzW21zbF9pZHhdOw0KPiArICAgICAgfCAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+DQo+ICsNCj4gK1NpZ25lZC1vZmYtYnk6IFJlc2htYSBQYXR0YW4gPHJlc2htYS5wYXR0YW5A
aW50ZWwuY29tPg0KPiArVGVzdGVkLWJ5OiBEYXZpZCBNYXJjaGFuZCA8ZGF2aWQubWFyY2hhbmRA
cmVkaGF0LmNvbT4NCj4gK1Vwc3RyZWFtLVN0YXR1czogQmFja3BvcnQNCj4gK1NpZ25lZC1vZmYt
Ynk6IEhlIFpoZSA8emhlLmhlQHdpbmRyaXZlci5jb20+DQo+ICstLS0NCj4gKyBtay90b29sY2hh
aW4vZ2NjL3J0ZS52YXJzLm1rIHwgMyArKysNCj4gKyAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspDQo+ICsNCj4gK2RpZmYgLS1naXQgYS9tay90b29sY2hhaW4vZ2NjL3J0ZS52YXJzLm1r
DQo+IGIvbWsvdG9vbGNoYWluL2djYy9ydGUudmFycy5taw0KPiAraW5kZXggZDhiOTlmYS4uYjg1
MmZjZiAxMDA2NDQNCj4gKy0tLSBhL21rL3Rvb2xjaGFpbi9nY2MvcnRlLnZhcnMubWsNCj4gKysr
KyBiL21rL3Rvb2xjaGFpbi9nY2MvcnRlLnZhcnMubWsNCj4gK0BAIC04Nyw1ICs4Nyw4IEBAIFdF
UlJPUl9GTEFHUyArPSAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoPTINCj4gKyBXRVJST1JfRkxBR1Mg
Kz0gLVduby1mb3JtYXQtdHJ1bmNhdGlvbg0KPiArIGVuZGlmDQo+ICsgDQo+ICsrIyBkaXNhYmxl
IHBhY2tlZCBtZW1iZXIgdW5hbGlnbiB3YXJuaW5ncw0KPiArK1dFUlJPUl9GTEFHUyArPSAtV25v
LWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlcg0KPiArKw0KPiArIGV4cG9ydCBDQyBBUyBBUiBMRCBP
QkpDT1BZIE9CSkRVTVAgU1RSSVAgUkVBREVMRg0KPiArIGV4cG9ydCBUT09MQ0hBSU5fQ0ZMQUdT
IFRPT0xDSEFJTl9MREZMQUdTIFRPT0xDSEFJTl9BU0ZMQUdTDQo+ICstLSANCj4gKzIuNy40DQo+
ICsNCj4gZGlmZiAtLWdpdCBhL3JlY2lwZXMtZXh0ZW5kZWQvZHBkay9kcGRrXzE3LjExLjMuYmIg
Yi9yZWNpcGVzLQ0KPiBleHRlbmRlZC9kcGRrL2RwZGtfMTcuMTEuMy5iYg0KPiBpbmRleCA3ZmM4
OWQyLi5hZjQyYWQ4IDEwMDY0NA0KPiAtLS0gYS9yZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBka18x
Ny4xMS4zLmJiDQo+ICsrKyBiL3JlY2lwZXMtZXh0ZW5kZWQvZHBkay9kcGRrXzE3LjExLjMuYmIN
Cj4gQEAgLTEyLDQgKzEyLDUgQEAgU1JDX1VSSSArPSAiXA0KPiAgICAgICAgICBmaWxlOi8vZHBk
ay0xNi4wNy1kcGRrLWZpeC1mb3ItcGFyZWxsZWwtbWFrZS1pc3N1ZS5wYXRjaCBcDQo+ICAgICAg
ICAgIGZpbGU6Ly9kcGRrLTE3LjAyLWRwZGstZml4LWluc3RhbGxhdGlvbi13YXJuaW5nLWFuZC0N
Cj4gaXNzdWUucGF0Y2ggXA0KPiAgICAgICAgICBmaWxlOi8vZHBkay0xNy4xMS1GaXgtc3RybmNw
eS1lcnJvci1mb3ItR0NDOC5wYXRjaCBcDQo+ICsgICAgICAgIGZpbGU6Ly9kcGRrLTE3LjExLW1r
LWRpc2FibGUtd2FybmluZy1mb3ItcGFja2VkLW1lbWJlci0NCj4gcG9pbnRlci5wYXRjaCBcDQo+
ICAiDQoNCg==

