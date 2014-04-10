Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1956E00BE2
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 06:36:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Apr 2014 06:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="417351894"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2014 06:36:31 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 10 Apr 2014 14:36:30 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.78]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.180]) with mapi id
	14.03.0123.003; Thu, 10 Apr 2014 14:36:30 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "denis@denix.org" <denis@denix.org>
Thread-Topic: [yocto] [meta-yocto][PATCH 1/2] beaglebone.conf: configuration
	updates
Thread-Index: AQHPVMHgoWK1Bi2OXkuahsdYJAPmqA==
Date: Thu, 10 Apr 2014 13:36:29 +0000
Message-ID: <1397137009.21633.6.camel@firebird.rb.intel.com>
References: <1397116933-20764-1-git-send-email-denis@denix.org>
In-Reply-To: <1397116933-20764-1-git-send-email-denis@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.160]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"denys@ti.com" <denys@ti.com>
Subject: Re: [meta-yocto][PATCH 1/2] beaglebone.conf: configuration updates
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
X-List-Received-Date: Thu, 10 Apr 2014 13:36:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D9194BEB46E0F44BA5710C6422ECF21C@intel.com>
Content-Transfer-Encoding: base64

SGkgRGVueXMsDQoNCldpdGggdGhpcyBwYXRjaCBhcHBsaWVkIGFuZCB0aGUgdXBkYXRlZCBSRUFE
TUUgSSBjYW4gYm9vdCBhIEJlYWdsZWJvbmUNCkJsYWNrIChyZXYgQTYpIHdpdGggYSBkZWZhdWx0
IHlvY3RvIGltYWdlL2NvbmZpZyAoSSd2ZSB1c2VkDQpjb3JlLWltYWdlLXNhdG8tc2RrIEZXSVcp
LiBFdmVyeXRoaW5nIHNlZW1zIGZpbmUsIEkgcmFuIGEgYnVuY2ggb2YgdGVzdHMNCm9uIHRoZSBp
bWFnZSwgZXhjZXB0IGZvciBYIC0gaXQgZG9lc24ndCBzdGFydCA6KC4NCkkndmUgYnVpbHQgd2l0
aCBmYmRldiBhbmQgb21hcGZiIHRvby4NCg0KWCBsb2cgZm9yIGZiZGV2OiANCmh0dHA6Ly9wYXN0
ZWJpbi5jb20vc3FOYzM1VTANCg0KZm9yIG9tYXBmYjoNCmh0dHA6Ly9wYXN0ZWJpbi5jb20vZk1r
ek1XOFUNCg0KSXMgdGhlcmUgYW55dGhpbmcgZWxzZSB0aGF0IG5lZWRzIHRvIGNoYW5nZWQvYWRk
ZWQ/IEkgY291bGQgYWRkIGENCnhvcmcuY29uZiBvbiB0aGUgaW1hZ2UgdG9vLCBidXQgdGhlbiBp
dCBiZWF0cyB0aGUgcG9pbnQuLi4NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCg0KT24gVGh1LCAyMDE0
LTA0LTEwIGF0IDA0OjAyIC0wNDAwLCBEZW55cyBEbXl0cml5ZW5rbyB3cm90ZToNCj4gRnJvbTog
RGVueXMgRG15dHJpeWVua28gPGRlbnlzQHRpLmNvbT4NCj4gDQo+ICogVXNlIGZiZGV2IHZpZGVv
IGRyaXZlciBmb3IgeHNlcnZlci14b3JnDQo+ICogUmVjb21tZW5kIGluc3RhbGxpbmcgZGV2aWNl
IHRyZWUgRFRCIGZpbGVzIGludG8gcm9vdGZzIC9ib290IGRpcmVjdG9yeQ0KPiAqIFN3aXRjaCBi
YWNrIHRvIHVJbWFnZSBrZXJuZWwgZm9ybWF0IGZyb20gekltYWdlLCBhcyBVLWJvb3Qgd2FzIG5v
dCB1cGRhdGVkDQo+ICAgLSBkZWZhdWx0IGhhcyBjaGFuZ2VkIHRvIHpJbWFnZSBpbiBuZXdlciBV
LWJvb3QgMjAxMy4xMCssIGJ1dCB3ZSB1c2UgMjAxMy4wNw0KPiAqIENvcnJlY3QgY29weS9wYXN0
ZSB0eXBvIGluIHNlcmlhbCBjb25zb2xlDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBEZW55cyBEbXl0
cml5ZW5rbyA8ZGVueXNAdGkuY29tPg0KPiAtLS0NCj4gIG1ldGEteW9jdG8tYnNwL2NvbmYvbWFj
aGluZS9iZWFnbGVib25lLmNvbmYgfCAxMCArKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEt
eW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLmNvbmYgYi9tZXRhLXlvY3RvLWJzcC9j
b25mL21hY2hpbmUvYmVhZ2xlYm9uZS5jb25mDQo+IGluZGV4IGYyZWYwY2YuLjQyNjM3MTUgMTAw
NjQ0DQo+IC0tLSBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLmNvbmYN
Cj4gKysrIGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUuY29uZg0KPiBA
QCAtNiwxMSArNiwxMCBAQCBQUkVGRVJSRURfUFJPVklERVJfdmlydHVhbC94c2VydmVyID89ICJ4
c2VydmVyLXhvcmciDQo+ICBYU0VSVkVSID89ICJ4c2VydmVyLXhvcmcgXA0KPiAgICAgICAgICAg
ICB4Zjg2LWlucHV0LWV2ZGV2IFwNCj4gICAgICAgICAgICAgeGY4Ni1pbnB1dC1tb3VzZSBcDQo+
IC0gICAgICAgICAgIHhmODYtdmlkZW8tb21hcGZiIFwNCj4gKyAgICAgICAgICAgeGY4Ni12aWRl
by1mYmRldiBcDQo+ICAgICAgICAgICAgIHhmODYtaW5wdXQta2V5Ym9hcmQiDQo+ICANCj4gLSMg
U2hpcCBhbGwga2VybmVsIG1vZHVsZXMgYnkgZGVmYXVsdA0KPiAtTUFDSElORV9FWFRSQV9SUkVD
T01NRU5EUyA9ICIga2VybmVsLW1vZHVsZXMiDQo+ICtNQUNISU5FX0VYVFJBX1JSRUNPTU1FTkRT
ID0gIiBrZXJuZWwtbW9kdWxlcyBrZXJuZWwtZGV2aWNldHJlZSINCj4gIA0KPiAgRVhUUkFfSU1B
R0VERVBFTkRTICs9ICJ1LWJvb3QiDQo+ICANCj4gQEAgLTIwLDEzICsxOSwxNCBAQCBpbmNsdWRl
IGNvbmYvbWFjaGluZS9pbmNsdWRlL3R1bmUtY29ydGV4YTguaW5jDQo+ICBJTUFHRV9GU1RZUEVT
ICs9ICJ0YXIuYnoyIGpmZnMyIg0KPiAgRVhUUkFfSU1BR0VDTURfamZmczIgPSAiLWxucCAiDQo+
ICANCj4gLVNFUklBTF9DT05TT0xFID0gIjExNTIwMCB0dHlPMiINCj4gK1NFUklBTF9DT05TT0xF
ID0gIjExNTIwMCB0dHlPMCINCj4gIA0KPiAgUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2Vy
bmVsID89ICJsaW51eC15b2N0byINCj4gIFBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4LXlvY3RvID89
ICIzLjE0JSINCj4gIA0KPiAtS0VSTkVMX0lNQUdFVFlQRSA9ICJ6SW1hZ2UiDQo+ICtLRVJORUxf
SU1BR0VUWVBFID0gInVJbWFnZSINCj4gIEtFUk5FTF9ERVZJQ0VUUkVFID0gImFtMzM1eC1ib25l
LmR0YiBhbTMzNXgtYm9uZWJsYWNrLmR0YiINCj4gK0tFUk5FTF9FWFRSQV9BUkdTICs9ICJMT0FE
QUREUj0ke1VCT09UX0VOVFJZUE9JTlR9Ig0KPiAgDQo+ICBTUExfQklOQVJZID0gIk1MTyINCj4g
IFVCT09UX1NVRkZJWCA9ICJpbWciDQo+IC0tIA0KPiAxLjkuMQ0KPiANCg0K

