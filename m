Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0658BE00BE6; Thu,  8 Jun 2017 05:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 240 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Jun 2017 05:05:03 PDT
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FFD0E00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:05:03 -0700 (PDT)
Received: from 1dIw7Z-00048l-Vb by out11c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1dIw7Z-00049s-WA; Thu, 08 Jun 2017 05:01:01 -0700
Received: by emcmailer; Thu, 08 Jun 2017 05:01:01 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11c.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1dIw7Z-00048l-Vb; Thu, 08 Jun 2017 05:01:01 -0700
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0319.002; Thu, 8 Jun 2017 14:01:01 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "jackie.huang@windriver.com" <jackie.huang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] poky-cgl: avoid installing multiple
	syslogs
Thread-Index: AQHS4E7lPzMbnJ+CmUOt4DiL9NQR+A==
Date: Thu, 8 Jun 2017 12:01:01 +0000
Message-ID: <1496923261.1730.5.camel@enea.com>
References: <20170602075946.31648-1-jackie.huang@windriver.com>
In-Reply-To: <20170602075946.31648-1-jackie.huang@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.45]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
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
X-List-Received-Date: Thu, 08 Jun 2017 12:05:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D16FEF0A64B30449E553C22AF1B6097@enea.com>
Content-Transfer-Encoding: base64

T24gZnJlLCAyMDE3LTA2LTAyIGF0IDE1OjU5ICswODAwLCBqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbSB3cm90ZToNCj4gRnJvbTogSmFja2llIEh1YW5nIDxqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbT4NCj4gDQo+IGRvX3Jvb3RmcyBmYWlscyBpZiBtdWx0aXBsZSBzeXNsb2dzIGFyZSBpbnN0
YWxsZWQ6DQo+ID4gDQo+ID4gRXJyb3I6IHBhY2thZ2Ugc3lzbG9nLW5nLTMuOC4xLXIwLmk1ODYg
Y29uZmxpY3RzIHdpdGggc3lza2xvZ2QNCj4gPiBwcm92aWRlZA0KPiDCoCBieSBzeXNrbG9nZC0x
LjUuMS1yMC5pNTg2DQo+IA0KPiBjb3JlLWltYWdlLWNnbCByZXF1aXJlcyBwYWNrYWdlZ3JvdXAt
Y29yZS1mdWxsLWNtZGxpbmUgd2hpY2ggZGVwZW5kcw0KPiBvbiBWSVJUVUFMLVJVTlRJTUVfc3lz
bG9nIChkZWZhdWx0IHRvIHN5c2tsb2dkKSwgc28gc2V0IHRoZQ0KPiBWSVJUVUFMLVJVTlRJTUVf
c3lzbG9nIGluIGRpc3RybyBjb25mIGFuZCBubyBuZWVkIHRvIGRlcGVuZHMNCj4gb24gYW55IHN5
c2xvZyBpbiBwYWNrYWdlZ3JvdXAtY2dsLWFwcGxpY2F0aW9ucywgdGhlbiB3ZSBlbnN1cmUNCj4g
dGhhdCBvbmx5IG9uZSBzeXNsb2cgaXMgaW5zdGFsbGVkIHRvIGF2b2lkIGNvbmZsaWN0cy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEphY2tpZSBIdWFuZyA8amFja2llLmh1YW5nQHdpbmRyaXZlci5j
b20+DQo+IC0tLQ0KPiDCoG1ldGEtY2dsLWNvbW1vbi9jb25mL2Rpc3Ryby9wb2t5LWNnbC5jb25m
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB8IDQNCj4gKysrKw0K
PiDCoG1ldGEtY2dsLWNvbW1vbi9wYWNrYWdlZ3JvdXBzL3BhY2thZ2Vncm91cC1jZ2wtYXBwbGlj
YXRpb25zLmJiIHwgMg0KPiAtLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEtY2dsLWNvbW1vbi9jb25m
L2Rpc3Ryby9wb2t5LWNnbC5jb25mIGIvbWV0YS1jZ2wtDQo+IGNvbW1vbi9jb25mL2Rpc3Ryby9w
b2t5LWNnbC5jb25mDQo+IGluZGV4IDkwY2M4MmIuLjY5ZjYyMDAgMTAwNjQ0DQo+IC0tLSBhL21l
dGEtY2dsLWNvbW1vbi9jb25mL2Rpc3Ryby9wb2t5LWNnbC5jb25mDQo+ICsrKyBiL21ldGEtY2ds
LWNvbW1vbi9jb25mL2Rpc3Ryby9wb2t5LWNnbC5jb25mDQo+IEBAIC01LDMgKzUsNyBAQCBESVNU
Uk8gPSAicG9reS1jZ2wiDQo+IMKgDQo+IMKgSU1BR0VfQ0xBU1NFUyArPSAiaW1hZ2VfdHlwZXNf
dWJvb3QiDQo+IMKgUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwvcmVmcG9saWN5PSJyZWZwb2xp
Y3ktdGFyZ2V0ZWQiDQo+ICsNCj4gKyMgd2Ugd2FudCB0byB1c2UgcnN5c2xvZyBhcyB0aGUgZGVm
YXVsdCBzeXNsb2csIGJ1dCBpdCdzIEdQTHYzLCBzbw0KPiBuZWVkIHRoaXMNCj4gKyMgY2hlY2sg
dG8gc3dpdGNoIHRvIHN5c2xvZy1uZyBpZiBHTFB2MyBpcyBibGFja2xpc3RlZC4NCj4gK1ZJUlRV
QUwtUlVOVElNRV9zeXNsb2cgPz0gIiR7QGJiLnV0aWxzLmNvbnRhaW5zKCdJTkNPTVBBVElCTEVf
TElDRU5TDQo+IEUnLCAnR1BMdjMnLCAnc3lzbG9nLW5nJywgJ3JzeXNsb2cnLCBkKX0iDQo+IGRp
ZmYgLS1naXQgYS9tZXRhLWNnbC1jb21tb24vcGFja2FnZWdyb3Vwcy9wYWNrYWdlZ3JvdXAtY2ds
LQ0KPiBhcHBsaWNhdGlvbnMuYmIgYi9tZXRhLWNnbC1jb21tb24vcGFja2FnZWdyb3Vwcy9wYWNr
YWdlZ3JvdXAtY2dsLQ0KPiBhcHBsaWNhdGlvbnMuYmINCj4gaW5kZXggYjU2NmUyZC4uYmUzNjA3
NSAxMDA2NDQNCj4gLS0tIGEvbWV0YS1jZ2wtY29tbW9uL3BhY2thZ2Vncm91cHMvcGFja2FnZWdy
b3VwLWNnbC1hcHBsaWNhdGlvbnMuYmINCj4gKysrIGIvbWV0YS1jZ2wtY29tbW9uL3BhY2thZ2Vn
cm91cHMvcGFja2FnZWdyb3VwLWNnbC1hcHBsaWNhdGlvbnMuYmINCj4gQEAgLTQwLDcgKzQwLDYg
QEAgUkRFUEVORFNfJHtQTn0gPSAiIFwNCj4gwqDCoMKgwqDCoHF1b3RhIFwNCj4gwqDCoMKgwqDC
oHNtYXJ0bW9udG9vbHMgXA0KPiDCoMKgwqDCoMKgbW9uaXQgXA0KPiAtwqDCoMKgwqBzeXNsb2ct
bmcgXA0KPiDCoMKgwqDCoMKgb2NmczItdG9vbHMgXA0KPiDCoMKgwqDCoMKgbG9nY2hlY2sgXA0K
PiDCoMKgwqDCoMKgc2FtaGFpbi1jbGllbnQgXA0KPiBAQCAtNDgsNyArNDcsNiBAQCBSREVQRU5E
U18ke1BOfSA9ICIgXA0KPiDCoMKgwqDCoMKgYXVkaXQgXA0KPiDCoMKgwqDCoMKgcGFtLXBhc3N3
ZHFjIFwNCj4gwqDCoMKgwqDCoGxpYnBhbSBcDQo+IC3CoMKgwqDCoHJzeXNsb2cgXA0KPiDCoMKg
wqDCoMKgbWFrZWR1bXBmaWxlIFwNCj4gwqDCoMKgwqDCoCINCj4gwqANCj4gLS3CoA0KPiAyLjEx
LjANCj4gDQoNClBhdGNoIMKgIGdvb2QgYnV0IGRvZXNuJ3QgYXBwbHkuIFBsZWFzZSByZWJhc2Ug
b24gb3JpZ2luL21hc3RlciBhbmQgc2VuZA0KYWdhaW4uDQoNCmJlc3QgcmVnYXJkcw0KLS1BZHJp
YW4=

