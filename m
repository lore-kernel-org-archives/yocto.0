Return-Path: <Viktor.Lenivyy@author.kiev.ua>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23240E00C1B; Fri, 28 Aug 2015 06:39:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 430BCE00AF7
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 06:39:46 -0700 (PDT)
Received: from [10.7.0.96] (helo=mail.incom.ua) by relay.incom.ua with esmtps
	(envelope-from <Viktor.Lenivyy@author.kiev.ua>) id 1ZVJsc-0002LO-23
	for yocto@yoctoproject.org; Fri, 28 Aug 2015 16:39:42 +0300
From: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to recreate rootfs image
Thread-Index: AQHQ4KHzHc0Su54xUkCv+WfUTZWhhJ4g/vQAgAA8a0CAAC89YA==
Date: Fri, 28 Aug 2015 13:32:23 +0000
Message-ID: <3a01e2ad749d46e2addcdcdec22eb968@E2013a.CORP.ICS.COM.UA>
References: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
	<5075633.xNTnaMU5g6@peggleto-mobl.ger.corp.intel.com> 
Accept-Language: uk-UA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Subject: How to recreate rootfs image
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
X-List-Received-Date: Fri, 28 Aug 2015 13:39:51 -0000
Content-Language: ru-RU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBIaSBWaWt0b3IsDQo+IA0KPiBPbiBUaHVyc2RheSAyNyBBdWd1c3QgMjAxNSAwODoyNTozOCBM
ZW5pdnl5IFZpa3RvciB3cm90ZToNCj4gPiA+IEluIHlvdXIga2VybmVsIHJlY2lwZSBhcmUgeW91
IHVzaW5nIFNSQ19VUkkgdG8gZmV0Y2ggZnJvbSBhIGdpdCANCj4gPiA+IHJlcG9zaXRvcnkgKGUu
Zy4gZ2l0Oi8vIFVSSSkgb3IgZnJvbSBhIGxvY2FsIGRpcmVjdG9yeT8NCj4gPg0KPiA+IFRoaXMg
a2VybmVsIGlzIGZldGNoZWQgZnJvbSBsb2NhbCBkaXJlY3RvcnkuDQo+ID4NCj4gPiA+IEkgZ3Vl
c3MgdGhhdCBpZiB5b3UncmUgdXNpbmcgYSBsb2NhbCBwYXRoLCB0aGVyZSBjYW4gYmUgZWl0aGVy
IA0KPiA+ID4gc29tZSB1bmNvbW1pdHRlZCBjaGFuZ2VzLCBvciBhIHN0YWxlIGdpdCBpbmRleC4N
Cj4gPg0KPiA+IE5vLCBiZWNhdXNlIGtlcm5lbCBidWlsdCBmcm9tIHNvdXJjZXMgaW4gbG9jYWwg
ZGlyZWN0b3J5IGRvZXNu4oCZdCANCj4gPiBoYXZlIOKAnC1kaXJ0eeKAnSBpbiB2ZXJzaW9uIHN0
cmluZy4NCj4gPiA+IFlvdSBjYW4gdHJ5IGp1c3QgZm9yIHRoZSBleHBlcmltZW50IHRvIGFkZCB5
b3VyIGN1cnJlbnQga2VybmVsIA0KPiA+ID4gc291cmNlcyB0byBhIHRlc3QgZ2l0IHJlcG8gYW5k
IHBvaW50IHRoZSBTUkNfVVJJIHRvIGl0LCBzbyBiaXRiYWtlIA0KPiA+ID4gY2FuIGNsb25lIHRo
ZSByZXBvIGJ5IGdpdCByZXZpc2lvbiAoU1JDUkVWID0gIiR7QVVUT1JFVn0iIHdpbGwgDQo+ID4g
PiBza2lwIHRoZSBuZWVkIHRvIHVwZGF0ZSB0aGUgcmVjaXBlIHJldmlzaW9uIGNvbnN0YW50bHkg
ZHVyaW5nIA0KPiA+ID4gZGV2ZWxvcG1lbnQpLiBUaGlzIHNob3VsZCB3b3JrIGZpbmUsIHdpdGhv
dXQgdGhlICItZGlydHkiIHZlcnNpb24gc3VmZml4Lg0KPiA+DQo+ID4gSSBjYW4gdHJ5IHRoaXMs
IGJ1dCBpdCBkb2Vzbid0IGFuc3dlciBtYWluIHF1ZXN0aW9uOg0KPiA+IGhvdyBjYW4gSSByZWNy
ZWF0ZSByb290ZnMgaW1hZ2Ugc3RhcnRpbmcgZnJvbSB0aGUgcG9pbnQgYWZ0ZXIgDQo+ID4gZmV0
Y2hpbmcgTGludXggc291cmNlcywgc28gWW9jdG/igJlzIGNvcHkgd2lsbCByZW1haW4gaW50YWN0
Pw0KPiANCj4gV2VsbCBvbmUgd2F5IHdvdWxkIGJlOg0KPiANCj4gIGJpdGJha2UgLUMgY29tcGls
ZSB2aXJ0dWFsL2tlcm5lbCA8aW1hZ2VuYW1lPg0KPiANCj4gKG5vdGUgdGhlIGNhcGl0YWwgLUMs
IG5vdCAtYykuDQo+IA0KDQpIaSwgUGF1bC4gQW5kIHRoYW5rIHlvdS4NCkxvb2tzIGxpa2UgdGhl
IG1vc3QgcmVsZXZhbnQgYW5zd2VyLg0KSU1PIHRoaXMgIi1DIiBmbGFnIGlzIHBvb3JseSBkb2N1
bWVudGVkLiBUaHVzIGlmIHlvdSBkb24ndCBrbm93IHdoYXQgaXQncyBkb2luZywgeW91IGNhbid0
IGZpZ3VyZSBvdXQgdG8gdXNlIGl0Lg0KT25seSBzb21lIGluZm8gaW4gbWFpbGxpc3RzIGZvdW5k
IGJ5IEdvb2dsZSBjYW4gZ2l2ZSBhIGNsdWUgd2hhdCAiLS1jbGVhci1zdGFtcCIgaXMgaW50ZW5k
ZWQgZm9yLg0KDQo+IEluIHRoZSBuZWFyIGZ1dHVyZSAiZGV2dG9vbCBtb2RpZnkiIHNob3VsZCBz
dXBwb3J0IHRoZSBraW5kIG9mIA0KPiB3b3JrZmxvdyB0aGF0IGl0IGxvb2tzIGxpa2UgeW91J3Jl
IGF0dGVtcHRpbmcgdG8gZ2V0ICh3aGVyZSB5b3Ugd2FudCANCj4gdG8gbW9kaWZ5IHRoZSBrZXJu
ZWwgc291cmNlcyBsb2NhbGx5IGFuZCB0aGVuIGJ1aWxkIHRoZW0gYW5kL29yIA0KPiBpbmNvcnBv
cmF0ZSB0aGVtIGluIGFuIGltYWdlKSAtIGl0IGFscmVhZHkgd29ya3Mgd2VsbCBmb3Igbm9uLWtl
cm5lbCByZWNpcGVzLg0KDQpJIHRoaW5rIHRoaXMgd29ya2Zsb3cgaXMgdXNlZnVsIGZvciBtYW55
IHRoaW5ncywgbm90IG9ubHkgZm9yIHdvcmthcm91bmQgIi1kaXJ0eSIsIGFzIGluIG15IGNhc2Uu
IEl0J3Mgbm90IHZlcnkgY29udmVuaWVudCB0byB3YWl0IGZvciBmZXRjaGluZyBzb3VyY2VzIGV2
ZXJ5IHRpbWUgeW91IGRvIHNvbWUgbGl0dGxlIG1vZGlmaWNhdGlvbi4NCldoeSB3ZSBuZWVkIHNl
cGFyYXRlIGNvbW1hbmQgaS5lLiAiZGV2dG9vbCBtb2RpZnkiIGlmIHdlIGNhbiBnbyB3aXRob3V0
IGl0Pw0K

