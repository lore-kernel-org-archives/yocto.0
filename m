Return-Path: <Viktor.Lenivyy@author.kiev.ua>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CE38E00985; Wed, 26 Aug 2015 10:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.164.133.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay.incom.ua (relay.incom.ua [46.164.133.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F136BE00474
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 10:12:25 -0700 (PDT)
Received: from [10.7.0.95] (helo=mail.incom.ua) by relay.incom.ua with esmtps
	(envelope-from <Viktor.Lenivyy@author.kiev.ua>) id 1ZUeFJ-000Gjr-L1
	for yocto@yoctoproject.org; Wed, 26 Aug 2015 20:12:21 +0300
From: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to recreate rootfs image
Thread-Index: AdDgGXlt5Znij9bETGSEsrN5W6D86P//0A6A//+/sBD//34IwA==
Date: Wed, 26 Aug 2015 17:12:20 +0000
Message-ID: <1c7f82d0d8884768b0906a80047289dd@E2013a.CORP.ICS.COM.UA>
References: <ad28bcb1a9ca4653ac92686fe92a4ae3@E2013a.CORP.ICS.COM.UA>
	<CAMKF1sq9a3CFqG7T8hZBEn=gWhHuhJqY2J5S2kEn1fKSR-eSSA@mail.gmail.com> 
Accept-Language: uk-UA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Subject: FW: How to recreate rootfs image
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
X-List-Received-Date: Wed, 26 Aug 2015 17:12:27 -0000
Content-Language: ru-RU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+PiBkaXJ0eXBhY2thZ2UgaXMgdGhlIG9uZSB3aGljaCB5b3Ugd2FudCB0byByZWJ1aWxkIGFu
ZCByZWRlcGxveSBpbiB0aGUNCj4gPg0KPiA+PiByb290ZnMuIElmIHRoZSBwYWNrYWdlIHNvdXJj
ZSBpcyBsb2NhbCwgY2xlYW5hbGwgd29uJ3QgZG8gYmlnIGhhcm0sDQo+ID4+IGJ1dA0KPiA+DQo+
ID4+IG90aGVyd2lzZSB5b3UncmUgY29ycmVjdCwgaXQgd2lsbCBjbGVhbiB0aGUgc291cmNlcy4g
WW91IGNhbiB1c2UNCj4gPg0KPiA+PiAiY2xlYW4iIGluc3RlYWQuDQo+ID4NCj4gPg0KPiA+PiBS
ZWdhcmRzLA0KPiA+DQo+ID4+IE5pa29sYXkNCj4gPg0KPiA+DQo+ID4gSSBkb27igJl0IGtub3cg
ZXhhY3RseSB3aGljaCBwYWNrYWdlIEkgbmVlZCB0byByZWJ1aWxkLCBidXQgSSBndWVzcyBpdOKA
mXMNCj4gPiBrZXJuZWwtbW9kdWxlcyBhcyBtb2R1bGVzIGZvbGRlciBoYXZlIHdyb25nIHZlcnNp
b24uDQo+ID4NCj4gPiBBZnRlcg0KPiA+DQo+ID4gYml0YmFrZSAtYyBjbGVhbiBrZXJuZWwtbW9k
dWxlcyBhbHRlcmEtaW1hZ2UtbWluaW1hbA0KPiA+DQo+ID4NCj4gPiB0aGVyZSBpcyBhbiBlcnJv
cjoNCj4gPg0KPiA+IOKApg0KPiA+DQo+ID4gRVJST1I6IE5vdGhpbmcgUFJPVklERVMgJ2tlcm5l
bC1tb2R1bGVzJw0KPiANCj4ga2VybmVsIG1vZHVsZXMgYXJlIHBhcnQgb2YgdmlydHVhbC9rZXJu
ZWwgc28geW91IG5lZWQgdG8gY2xlYW4gdmlydHVhbC9rZXJuZWwNCj4gaWYgdGhhdHMgd2hhdCB0
aGUgaXNzdWUgaXMNCg0KVGhpcyBjb21tYW5kIGRpZCB3aGF0IEkgd2FzIHRyeWluZyB0byBhdm9p
ZDogcmVtb3ZlIFlvY3RvJ3MgY29weSBvZiBrZXJuZWwgc291cmNlcy4gQnV0IHN0YXJ0aW5nIHF1
ZXN0aW9ucyBzdGlsbCBleGlzdC4NCg==

