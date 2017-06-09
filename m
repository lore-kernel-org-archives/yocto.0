Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B1DE00C06; Thu,  8 Jun 2017 17:54:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2601E00B53
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 17:54:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v590sMUq007197
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 Jun 2017 17:54:23 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([fe80::d894:a649:cd4c:89b7]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0294.000;
	Thu, 8 Jun 2017 17:54:22 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Thread-Topic: [yocto] [meta-cgl][PATCH] poky-cgl: avoid installing multiple
	syslogs
Thread-Index: AQHS4E7lPzMbnJ+CmUOt4DiL9NQR+KIbtJig
Date: Fri, 9 Jun 2017 00:54:21 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B7E262E@ALA-MBD.corp.ad.wrs.com>
References: <20170602075946.31648-1-jackie.huang@windriver.com>
	<1496923261.1730.5.camel@enea.com>
In-Reply-To: <1496923261.1730.5.camel@enea.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.230]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] poky-cgl: avoid installing multiple syslogs
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
X-List-Received-Date: Fri, 09 Jun 2017 00:54:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWRyaWFuIER1ZGF1IFtt
YWlsdG86QWRyaWFuLkR1ZGF1QGVuZWEuY29tXQ0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAwOCwg
MjAxNyAyMDowMQ0KPiBUbzogSHVhbmcsIEppZSAoSmFja2llKTsgeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIXSBwb2t5LWNnbDog
YXZvaWQgaW5zdGFsbGluZyBtdWx0aXBsZQ0KPiBzeXNsb2dzDQo+IA0KPiBPbiBmcmUsIDIwMTct
MDYtMDIgYXQgMTU6NTkgKzA4MDAsIGphY2tpZS5odWFuZ0B3aW5kcml2ZXIuY29tIHdyb3RlOg0K
PiA+IEZyb206IEphY2tpZSBIdWFuZyA8amFja2llLmh1YW5nQHdpbmRyaXZlci5jb20+DQo+ID4N
Cj4gPiBkb19yb290ZnMgZmFpbHMgaWYgbXVsdGlwbGUgc3lzbG9ncyBhcmUgaW5zdGFsbGVkOg0K
PiA+ID4NCj4gPiA+IEVycm9yOiBwYWNrYWdlIHN5c2xvZy1uZy0zLjguMS1yMC5pNTg2IGNvbmZs
aWN0cyB3aXRoIHN5c2tsb2dkDQo+ID4gPiBwcm92aWRlZA0KPiA+IMKgIGJ5IHN5c2tsb2dkLTEu
NS4xLXIwLmk1ODYNCj4gPg0KPiA+IGNvcmUtaW1hZ2UtY2dsIHJlcXVpcmVzIHBhY2thZ2Vncm91
cC1jb3JlLWZ1bGwtY21kbGluZSB3aGljaCBkZXBlbmRzDQo+ID4gb24gVklSVFVBTC1SVU5USU1F
X3N5c2xvZyAoZGVmYXVsdCB0byBzeXNrbG9nZCksIHNvIHNldCB0aGUNCj4gPiBWSVJUVUFMLVJV
TlRJTUVfc3lzbG9nIGluIGRpc3RybyBjb25mIGFuZCBubyBuZWVkIHRvIGRlcGVuZHMNCj4gPiBv
biBhbnkgc3lzbG9nIGluIHBhY2thZ2Vncm91cC1jZ2wtYXBwbGljYXRpb25zLCB0aGVuIHdlIGVu
c3VyZQ0KPiA+IHRoYXQgb25seSBvbmUgc3lzbG9nIGlzIGluc3RhbGxlZCB0byBhdm9pZCBjb25m
bGljdHMuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNraWUgSHVhbmcgPGphY2tpZS5odWFu
Z0B3aW5kcml2ZXIuY29tPg0KPiA+IC0tLQ0KPiA+IMKgbWV0YS1jZ2wtY29tbW9uL2NvbmYvZGlz
dHJvL3Bva3ktY2dsLmNvbmbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHwgNA0KPiA+ICsrKysNCj4gPiDCoG1ldGEtY2dsLWNvbW1vbi9wYWNrYWdlZ3JvdXBzL3Bh
Y2thZ2Vncm91cC1jZ2wtYXBwbGljYXRpb25zLmJiIHwgMg0KPiA+IC0tDQo+ID4gwqAyIGZpbGVz
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9tZXRhLWNnbC1jb21tb24vY29uZi9kaXN0cm8vcG9reS1jZ2wuY29uZiBiL21ldGEt
Y2dsLQ0KPiA+IGNvbW1vbi9jb25mL2Rpc3Ryby9wb2t5LWNnbC5jb25mDQo+ID4gaW5kZXggOTBj
YzgyYi4uNjlmNjIwMCAxMDA2NDQNCj4gPiAtLS0gYS9tZXRhLWNnbC1jb21tb24vY29uZi9kaXN0
cm8vcG9reS1jZ2wuY29uZg0KPiA+ICsrKyBiL21ldGEtY2dsLWNvbW1vbi9jb25mL2Rpc3Ryby9w
b2t5LWNnbC5jb25mDQo+ID4gQEAgLTUsMyArNSw3IEBAIERJU1RSTyA9ICJwb2t5LWNnbCINCj4g
Pg0KPiA+IMKgSU1BR0VfQ0xBU1NFUyArPSAiaW1hZ2VfdHlwZXNfdWJvb3QiDQo+ID4gwqBQUkVG
RVJSRURfUFJPVklERVJfdmlydHVhbC9yZWZwb2xpY3k9InJlZnBvbGljeS10YXJnZXRlZCINCj4g
PiArDQo+ID4gKyMgd2Ugd2FudCB0byB1c2UgcnN5c2xvZyBhcyB0aGUgZGVmYXVsdCBzeXNsb2cs
IGJ1dCBpdCdzIEdQTHYzLCBzbw0KPiA+IG5lZWQgdGhpcw0KPiA+ICsjIGNoZWNrIHRvIHN3aXRj
aCB0byBzeXNsb2ctbmcgaWYgR0xQdjMgaXMgYmxhY2tsaXN0ZWQuDQo+ID4gK1ZJUlRVQUwtUlVO
VElNRV9zeXNsb2cgPz0gIiR7QGJiLnV0aWxzLmNvbnRhaW5zKCdJTkNPTVBBVElCTEVfTElDRU5T
DQo+ID4gRScsICdHUEx2MycsICdzeXNsb2ctbmcnLCAncnN5c2xvZycsIGQpfSINCj4gPiBkaWZm
IC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3BhY2thZ2Vncm91cHMvcGFja2FnZWdyb3VwLWNnbC0N
Cj4gPiBhcHBsaWNhdGlvbnMuYmIgYi9tZXRhLWNnbC1jb21tb24vcGFja2FnZWdyb3Vwcy9wYWNr
YWdlZ3JvdXAtY2dsLQ0KPiA+IGFwcGxpY2F0aW9ucy5iYg0KPiA+IGluZGV4IGI1NjZlMmQuLmJl
MzYwNzUgMTAwNjQ0DQo+ID4gLS0tIGEvbWV0YS1jZ2wtY29tbW9uL3BhY2thZ2Vncm91cHMvcGFj
a2FnZWdyb3VwLWNnbC1hcHBsaWNhdGlvbnMuYmINCj4gPiArKysgYi9tZXRhLWNnbC1jb21tb24v
cGFja2FnZWdyb3Vwcy9wYWNrYWdlZ3JvdXAtY2dsLWFwcGxpY2F0aW9ucy5iYg0KPiA+IEBAIC00
MCw3ICs0MCw2IEBAIFJERVBFTkRTXyR7UE59ID0gIiBcDQo+ID4gwqDCoMKgwqDCoHF1b3RhIFwN
Cj4gPiDCoMKgwqDCoMKgc21hcnRtb250b29scyBcDQo+ID4gwqDCoMKgwqDCoG1vbml0IFwNCj4g
PiAtwqDCoMKgwqBzeXNsb2ctbmcgXA0KPiA+IMKgwqDCoMKgwqBvY2ZzMi10b29scyBcDQo+ID4g
wqDCoMKgwqDCoGxvZ2NoZWNrIFwNCj4gPiDCoMKgwqDCoMKgc2FtaGFpbi1jbGllbnQgXA0KPiA+
IEBAIC00OCw3ICs0Nyw2IEBAIFJERVBFTkRTXyR7UE59ID0gIiBcDQo+ID4gwqDCoMKgwqDCoGF1
ZGl0IFwNCj4gPiDCoMKgwqDCoMKgcGFtLXBhc3N3ZHFjIFwNCj4gPiDCoMKgwqDCoMKgbGlicGFt
IFwNCj4gPiAtwqDCoMKgwqByc3lzbG9nIFwNCj4gPiDCoMKgwqDCoMKgbWFrZWR1bXBmaWxlIFwN
Cj4gPiDCoMKgwqDCoMKgIg0KPiA+DQo+ID4gLS0NCj4gPiAyLjExLjANCj4gPg0KPiANCj4gUGF0
Y2ggwqAgZ29vZCBidXQgZG9lc24ndCBhcHBseS4gUGxlYXNlIHJlYmFzZSBvbiBvcmlnaW4vbWFz
dGVyIGFuZCBzZW5kDQo+IGFnYWluLg0KDQpSZWJhc2VkIGFuZCByZS1zZW50IGFzIHYyLg0KDQpU
aGFua3MsDQpKYWNraWUNCg0KPiANCj4gYmVzdCByZWdhcmRzDQo+IC0tQWRyaWFuDQo=

