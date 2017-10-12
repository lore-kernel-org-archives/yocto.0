Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 299BFE00CD0; Wed, 11 Oct 2017 19:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE46E00CC4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 19:14:15 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v9C2EEMf002886
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Oct 2017 19:14:14 -0700 (PDT)
Received: from ALA-MBC.corp.ad.wrs.com ([169.254.1.180]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0361.001;
	Wed, 11 Oct 2017 19:14:14 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 2/2] cgl-common.inc: append SRC_URI
	for poky-cgl only
Thread-Index: AQHTQuNp0iJFAxBL8UyjCBWIsshhK6LfebxQ
Date: Thu, 12 Oct 2017 02:14:12 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B8D7306@ALA-MBC.corp.ad.wrs.com>
References: <cover.1507606063.git.jackie.huang@windriver.com>
	<22dce152bf87dfcd65f1ec6461e3a9cede222248.1507606063.git.jackie.huang@windriver.com>
	<CAJ86T=Ut-afcE4XDOttFfv9Naz_n9buiqNw3A9pN4Bs6ripo=w@mail.gmail.com>
In-Reply-To: <CAJ86T=Ut-afcE4XDOttFfv9Naz_n9buiqNw3A9pN4Bs6ripo=w@mail.gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.200]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 2/2] cgl-common.inc: append SRC_URI for poky-cgl only
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
X-List-Received-Date: Thu, 12 Oct 2017 02:14:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmUgTWNDdXJkeSBb
bWFpbHRvOmFybWNjdXJkeUBnbWFpbC5jb21dDQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDEy
LCAyMDE3IDA2OjUxDQo+IFRvOiBIdWFuZywgSmllIChKYWNraWUpDQo+IENjOiBZb2N0byBkaXNj
dXNzaW9uIGxpc3QNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW21ldGEtY2dsXVtQQVRDSCAyLzJd
IGNnbC1jb21tb24uaW5jOiBhcHBlbmQgU1JDX1VSSQ0KPiBmb3IgcG9reS1jZ2wgb25seQ0KPiAN
Cj4gT24gTW9uLCBPY3QgOSwgMjAxNyBhdCA4OjMwIFBNLCAgPGphY2tpZS5odWFuZ0B3aW5kcml2
ZXIuY29tPiB3cm90ZToNCj4gPiBGcm9tOiBKYWNraWUgSHVhbmcgPGphY2tpZS5odWFuZ0B3aW5k
cml2ZXIuY29tPg0KPiA+DQo+ID4gU29tZW9uZSBtYXkgd2FudCB0byBhZGQgbWV0YS1jZ2wtY29t
bW9uIGxheWVyIGludG8gdGhlaXINCj4gPiBkaXN0cm8gYW5kIG9ubHkgdXNlIHNvbWUgb2YgdGhl
IHBhY2thZ2VzLCBidXQgdGhlc2Uga2VybmVsDQo+ID4gZmVhdHVyZXMgd2lsbCBiZSBhbHNvIGFk
ZGVkIGJ5IHRoZSBiYmFwcGVuZCBhbmQgbWF5IGNhdXNlDQo+ID4gdW5leHBlY3RlZCBpc3N1ZSwg
c28gY2hhbmdlIHRvIGFwcGVuZCB0aGUgU1JDX1VSSSBmb3IgcG9reS1jZ2wNCj4gPiBkaXN0cm8g
b25seS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEphY2tpZSBIdWFuZyA8amFja2llLmh1YW5n
QHdpbmRyaXZlci5jb20+DQo+ID4gLS0tDQo+ID4gIG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWtl
cm5lbC9saW51eC9jZ2wtY29tbW9uLmluYyB8IDIgKy0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvbWV0YS1j
Z2wtY29tbW9uL3JlY2lwZXMta2VybmVsL2xpbnV4L2NnbC1jb21tb24uaW5jIGIvbWV0YS0NCj4g
Y2dsLWNvbW1vbi9yZWNpcGVzLWtlcm5lbC9saW51eC9jZ2wtY29tbW9uLmluYw0KPiA+IGluZGV4
IDUyY2Y3NzMuLjM2MmE3YzQgMTAwNjQ0DQo+ID4gLS0tIGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lw
ZXMta2VybmVsL2xpbnV4L2NnbC1jb21tb24uaW5jDQo+ID4gKysrIGIvbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMta2VybmVsL2xpbnV4L2NnbC1jb21tb24uaW5jDQo+ID4gQEAgLTEsNiArMSw2IEBA
DQo+ID4gIEZJTEVTRVhUUkFQQVRIU19wcmVwZW5kIDo9ICIke1RISVNESVJ9L2ZpbGVzOiINCj4g
Pg0KPiA+IC1TUkNfVVJJICs9ICJmaWxlOi8vY2ZnLzAwMDAxLXN5c3RlbXRhcC5jZmcgXA0KPiA+
ICtTUkNfVVJJX2FwcGVuZF9wb2t5LWNnbCA9ICJmaWxlOi8vY2ZnLzAwMDAxLXN5c3RlbXRhcC5j
ZmcgXA0KPiANCj4gTmVlZHMgYSBsZWFkaW5nIHNwYWNlLg0KDQpGaXhlZCBhbmQgc2VudCB2Mi4N
Cg0KVGhhbmtzLA0KSmFja2llDQoNCj4gDQo+ID4gICAgICAgICAgICAgIGZpbGU6Ly9jZmcvMDAw
MDItb3Byb2ZpbGUuY2ZnIFwNCj4gPiAgICAgICAgICAgICAgZmlsZTovL2NmZy8wMDAwMy1sdHRu
Zy5jZmcgXA0KPiA+ICAgICAgICAgICAgICBmaWxlOi8vY2ZnLzAwMDA0LWtnZGIuY2ZnIFwNCj4g
PiAtLQ0KPiA+IDIuMTEuMA0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
bGlzdGluZm8veW9jdG8NCg==

