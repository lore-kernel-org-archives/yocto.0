Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11E8CE008F6; Thu, 22 Jan 2015 00:31:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from esa4.emerson-outbound.iphmx.com
	(esa4.emerson-outbound.iphmx.com [68.232.143.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 419A7E0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:31:18 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.09,447,1418061600"; 
   d="scan'208";a="893014"
Received: from usstlz-pinfez08.extemr.org ([144.191.128.192])
	by esa4.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	22 Jan 2015 14:31:19 +0600
Received: from USSTLZ-PMSG006.emrsn.org (10.16.72.188) by
	USSTLZ-PINFEZ08.extemr.org (10.16.8.81) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 22 Jan 2015 08:31:16 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.242]) by
	USSTLZ-PMSG006.emrsn.org ([169.254.1.21]) with mapi id 14.03.0158.001;
	Thu, 22 Jan 2015 08:31:16 +0000
From: <Neil.Wu@Emerson.com>
To: <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] The problem of do_rootfs_append
Thread-Index: AQHQNhxDAip2PdL4rU+PGIcTN8Ev4ZzLzhqQ
Date: Thu, 22 Jan 2015 08:31:15 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522763E2A4@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
	<CAP71Wjw4VgvQH0rZt6q7BmG_Gs5MFO8+KeB87=VeTCt3E2xvGw@mail.gmail.com>
In-Reply-To: <CAP71Wjw4VgvQH0rZt6q7BmG_Gs5MFO8+KeB87=VeTCt3E2xvGw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The problem of do_rootfs_append
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
X-List-Received-Date: Thu, 22 Jan 2015 08:31:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIG5pY28NClRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4NCkJ1dCBJIGZvdW5kIHRoYXQgdGhl
cmUgYXJlIG90aGVycyB1c2UgZG9fcm9vdGZzX2FwcGVuZCgpIHdoZW4gc2VhcmNoaW5nIG9uIHRo
ZSBJbnRlcm5ldC4NCklmIEkgd2FudCB0byByZW1vdmUgdGhlIGRpcmVjdG9yeSBpbiBkb19yb290
ZnMoKSB0YXNrLCBob3cgY2FuIEkgdG8gZG8gaXQgPw0KDQpUYW5rcyANCk5laWwNCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE5pY29sYXMgRGVjaGVzbmUgW21haWx0bzpuaWNv
bGFzLmRlY2hlc25lQGxpbmFyby5vcmddIA0KU2VudDogVGh1cnNkYXksIEphbnVhcnkgMjIsIDIw
MTUgNDoyMCBQTQ0KVG86IFd1LCBOZWlsIFtDTElNQVRFL1JTL0NOXQ0KQ2M6IFlvY3RvIGxpc3Qg
ZGlzY3Vzc2lvbg0KU3ViamVjdDogUmU6IFt5b2N0b10gVGhlIHByb2JsZW0gb2YgZG9fcm9vdGZz
X2FwcGVuZA0KDQpPbiBUaHUsIEphbiAyMiwgMjAxNSBhdCA5OjEzIEFNLCAgPE5laWwuV3VAZW1l
cnNvbi5jb20+IHdyb3RlOg0KPiBIaSwgYWxsDQo+IEknbSBidWlsZGluZyBzcGVjaWZpYyByb290
ZnMgaW1hZ2UuIEFkZCB0aGUgZG9fcm9vdGZzX2FwcGVuZCgpIHRhc2sgIGluIGNvcmUtaW1hZ2Ut
c3BlY2lmaWMuYmIsDQo+IGNvcmUtaW1hZ2Utc3BlY2lmaWMuYmI6DQo+DQo+IFNVTU1BUlkgPSAi
Y3JlYWV0IHRoZSBjdXN0b21lciByb290ZnMiDQo+IHJlcXVpcmUgJHtUT1BESVJ9Ly4uL21ldGEv
cmVjaXBlcy1jb3JlL2ltYWdlcy9jb3JlLWltYWdlLW1pbmltYWwuYmINCj4gSU1BR0VfSU5TVEFM
TCA9ICJyZWFkbGluZS1kZXYgbGludXgtbGliYy1oZWFkZXJzLWRldiBqc29uLWdsaWIgYnVzeWJv
eC11ZGhjcGMgIg0KPiBkb19yb290ZnNfYXBwZW5kKCkgew0KPiAgICAgICAgIGNwIC1yZiAke0lN
QUdFX1JPT1RGU30vZGF0YS9ldGMvICR7SU1BR0VfUk9PVEZTfS9ldGMvDQo+ICAgICAgICAgcm0g
LXJmICR7SU1BR0VfUk9PVEZTfS9kYXRhL2V0Yy8NCj4gfQ0KPg0KPiBJdCBhbHdheXMgbWVldCB0
aGUgZXJyb3IgYXMgZm9sbG93czoNCj4gRVJST1I6IEV4cGFuc2lvbkVycm9yIGR1cmluZyBwYXJz
aW5nIC9ob21lL2VjdHJzL3Bva3kvbWV0YS1lbWVyc29uLWVjb3N5cy9yZWNpcGVzLWNvcmUvaW1h
Z2VzL2NvcmUtaW1hZ2UtZWNvc3lzLmJiOiBGYWlsdXJlIGV4cGFuZGluZyB2YXJpYWJsZSBkb19y
b290ZnM6IEluZGVudGF0aW9uRXJyb3I6IHVuZXhwZWN0ZWQgaW5kZW50ICg8c3RyaW5nPiwgbGlu
ZSAxNCkNCj4NCj4gSSdtIHBsZWFzYW50IHJlY2VpdmUgeW91ciByZXBseS4gSWYgeW91IGtub3cg
aG93IHRvIHNvbHZlIGl0ICwgcGxlYXNlIGhlbHAgbWUgLg0KPiBUaGFuayB5b3UgdmVyeSBtdWNo
Lg0KDQpkb19yb290ZnMoKSBpbiBhIFB5dGhvbiBmdW5jdGlvbiwgbm90IFNoZWxsIGluIGltYWdl
LmJiY2xhc3MsIHNvIHdoaWxlDQpJIGhhdmUgbmV2ZXIgdHJpZWQgdGhhdCBzcGVjaWZpY2FsbHks
IGkgZ3Vlc3MgeW91IGNhbm5vdCBhcHBlbmQgYQ0KU2hlbGwgc25pcHBlZCBpbiB0aGF0IGNhc2Uu
DQoNCmNoZWVycw0Kbmljbw0K

