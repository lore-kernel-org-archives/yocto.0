Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E682EE00C33; Thu,  8 Jun 2017 18:12:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B366E00BC8
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:12:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v591CYDa002182
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 8 Jun 2017 18:12:34 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([fe80::d894:a649:cd4c:89b7]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Thu, 8 Jun 2017 18:12:33 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/4] resource-agents: update to 4.0.1
	and several fixes
Thread-Index: AQHS4GP0CbNDFn2ItkugM5Nx5ChhoqIbuf6g
Date: Fri, 9 Jun 2017 01:12:33 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B7E2696@ALA-MBD.corp.ad.wrs.com>
References: <cover.1496391537.git.jackie.huang@windriver.com>
	<1496932302.1730.8.camel@enea.com>
In-Reply-To: <1496932302.1730.8.camel@enea.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.230]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 0/4] resource-agents: update to 4.0.1 and several fixes
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
X-List-Received-Date: Fri, 09 Jun 2017 01:12:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQWRyaWFuIER1ZGF1IFtt
YWlsdG86QWRyaWFuLkR1ZGF1QGVuZWEuY29tXQ0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSAwOCwg
MjAxNyAyMjozMg0KPiBUbzogSHVhbmcsIEppZSAoSmFja2llKTsgeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDAvNF0gcmVzb3Vy
Y2UtYWdlbnRzOiB1cGRhdGUgdG8gNC4wLjENCj4gYW5kIHNldmVyYWwgZml4ZXMNCj4gDQo+IE9u
IGZyZSwgMjAxNy0wNi0wMiBhdCAxNjoyMSArMDgwMCwgamFja2llLmh1YW5nQHdpbmRyaXZlci5j
b20gd3JvdGU6DQo+ID4gRnJvbTogSmFja2llIEh1YW5nIDxqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbT4NCj4gPg0KPiA+IC0tDQo+ID4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1p
dA0KPiA+IGMwYWZhNzA2ZTljZGI2NTBjMGU4YmI3OWY1MDM3NDM2MzIzNTBiMDA6DQo+ID4NCj4g
PiDCoCBjb3JlLWltYWdlLWNnbDogUmVtb3ZlIFJPT1RGU19QS0dNQU5BR0VfQk9PVFNUUkFQICgy
MDE3LTA1LTI0DQo+ID4gMTQ6MTk6MTMgKzAyMDApDQo+ID4NCj4gPiBhcmUgYXZhaWxhYmxlIGlu
IHRoZSBnaXQgcmVwb3NpdG9yeSBhdDoNCj4gPg0KPiA+IMKgIGh0dHBzOi8vZ2l0aHViLmNvbS9q
YWNraWVoam0vbWV0YS1jZ2wuZ2l0IGpodWFuZzAvdXBfcmVzb3VyY2UtDQo+ID4gYWdlbnRzXzE3
MDYwMl8wDQo+ID4gwqAgaHR0cHM6Ly9naXRodWIuY29tLy90cmVlL2podWFuZzAvdXBfcmVzb3Vy
Y2UtYWdlbnRzXzE3MDYwMl8wDQo+ID4NCj4gPiBKYWNraWUgSHVhbmcgKDQpOg0KPiA+IMKgIHJl
c291cmNlLWFnZW50czogZml4IGRlcGVuZGVuY2llcw0KPiA+IMKgIHJlc291cmNlLWFnZW50czog
Zml4IGluc3RhbGwtc2ggbm90IGZvdW5kDQo+ID4gwqAgcmVzb3VyY2UtYWdlbnRzOiBmaXggYnVp
bGRzIGVycm9yIHdoZW4gUyAhPSBCDQo+ID4gwqAgcmVzb3VyY2UtYWdlbnRzOiB1cGRhdGUgdG8g
dmVyc2lvbiA0LjAuMQ0KPiA+DQo+ID4gwqAuLi4vcmVzb3VyY2UtYWdlbnRzL2ZpeC1pbnN0YWxs
LXNoLW5vdC1mb3VuZC5wYXRjaCB8IDYwDQo+ID4gKysrKysrKysrKysrKysrKysrKysrKw0KPiA+
IMKgLi4udWlsZHMtd2hlbi1zcmNkaXItYW5kLWJ1aWxkZGlyLWFyZS1zZXBlcmEucGF0Y2ggfCAz
OQ0KPiA+ICsrKysrKysrKysrKysrDQo+ID4gwqAuLi5jZS1hZ2VudHNfMy45LjcuYmIgPT4gcmVz
b3VyY2UtYWdlbnRzXzQuMC4xLmJifSB8IDIwICsrKysrKy0tDQo+ID4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDExNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IMKgY3JlYXRlIG1vZGUg
MTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLQ0KPiA+
IGFnZW50cy9yZXNvdXJjZS1hZ2VudHMvZml4LWluc3RhbGwtc2gtbm90LWZvdW5kLnBhdGNoDQo+
ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0
ZXItcmVzb3VyY2UtDQo+ID4gYWdlbnRzL3Jlc291cmNlLWFnZW50cy9mcy5zaC1maXgtYnVpbGRz
LXdoZW4tc3JjZGlyLWFuZC1idWlsZGRpci1hcmUtDQo+ID4gc2VwZXJhLnBhdGNoDQo+ID4gwqBy
ZW5hbWUgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVzb3VyY2UtDQo+ID4g
YWdlbnRzL3tyZXNvdXJjZS1hZ2VudHNfMy45LjcuYmIgPT4gcmVzb3VyY2UtYWdlbnRzXzQuMC4x
LmJifSAoODIlKQ0KPiA+DQo+ID4gLS0NCj4gPiAyLjExLjANCj4gPg0KPiANCj4gU2FtZSBoZXJl
LCBwYXRjaHNldCBpcyBvayBidXQgeW91IG5lZWQgdG8gcmViYXNlIG9uIHRvcCBvZiBtYXN0ZXIN
Cj4gbGF0ZXN0Lg0KDQpSZWJhc2VkIGFuZCByZS1zZW50IGFzIHYyLg0KDQpUaGFua3MsDQpKYWNr
aWUNCg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLUFkcmlhbg0K

