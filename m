Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09873E013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 08:48:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Mar 2012 08:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124853440"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 29 Mar 2012 08:48:14 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 29 Mar 2012 16:47:13 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.39]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.241]) with mapi id
	14.01.0355.002; Thu, 29 Mar 2012 16:47:12 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: [yocto] Deleting layers in Hob
Thread-Index: AQHNDcM0stXJPE3ib0acn1+NqwbvHA==
Date: Thu, 29 Mar 2012 15:47:11 +0000
Message-ID: <CB9A41ED.BC99%belen.barros.pena@intel.com>
In-Reply-To: <1333022410.27152.1.camel@dongxiao-osel>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.128.247]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Giulia Piu <giulia@closertag.com>
Subject: Re: Deleting layers in Hob
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 15:48:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AA17DFC015822A46B32B951C2165FF50@intel.com>
Content-Transfer-Encoding: base64

R3JlYXQhIENhcmUgdG8gdGVsbCB1cyBhIGJpdCBhYm91dCBpdCwgb3Igd2lsbCB3ZSBoYXZlIHRv
IGhvbGQgb3VyIGJyZWF0aA0KdW50aWwgeW91IHN1Ym1pdCB0aGUgcGF0Y2hlcz8gOykNCg0KQmVs
ZW4NCg0KT24gMjkvMDMvMjAxMiAxMzowMCwgIlh1LCBEb25neGlhbyIgPGRvbmd4aWFvLnh1QGlu
dGVsLmNvbT4gd3JvdGU6DQoNCj5PbiBUaHUsIDIwMTItMDMtMjkgYXQgMTk6MDUgKzA4MDAsIEJh
cnJvcyBQZW5hLCBCZWxlbiB3cm90ZToNCj4+IEhpIGFsbCwNCj4+IA0KPj4gRG8gd2UgaGF2ZSBl
bm91Z2ggaW5mb3JtYXRpb24gdG8gbWFrZSBhIGRlY2lzaW9uIGFib3V0IHRoZSBtZXRhLXlvY3Rv
DQo+PiBsYXllcj8gSSBkb24ndCB1bmRlcnN0YW5kIGFsbCB0aGUgdGVjaG5pY2FsIGRldGFpbHMs
IGJ1dCBJIGFtIGluY2xpbmVkDQo+PnRvDQo+PiBtYWtlIGl0IG5vbi1kZWxldGFibGUgaW4gSG9i
IChpLmUuIGl0IGlzIG5vdCBwb3NzaWJsZSB0byBkZWxldGUgdGhpcw0KPj5sYXllcg0KPj4gaW4g
SG9iKS4NCj4NCj5UaGUgbGF5ZXIgaXMgcmVtb3ZhYmxlIGluIEhvYiwgc2luY2UgbWFueSBwZW9w
bGUgYXJlIGp1c3QgdXNpbmcgb2UtY29yZQ0KPndpdGhvdXQgbWV0YS15b2N0byBsYXllci4NCj4N
Cj5JIGhhdmUgcGF0Y2hlcyB0byBzb2x2ZSB0aGUgZGVsZXRpb24gb2YgbWV0YS15b2N0byBsYXll
ciwgYW5kIHdpbGwgc2VuZA0KPml0IG91dCBzb29uLg0KPg0KPlRoYW5rcywNCj5Eb25neGlhbw0K
Pg0KPj4gDQo+PiBXaGF0IGRvIHlvdSB0aGluaz8NCj4+IA0KPj4gQmVsZW4NCj4+IA0KPj4gT24g
MjcvMDMvMjAxMiAxNzo1NiwgIkpvc2h1YSBMb2NrIiA8am9zaEBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOg0KPj4gDQo+PiA+T24gMjcvMDMvMTIgMDA6MTksIEx1LCBMaWFuaGFvIHdyb3RlOg0KPj4g
Pj4NCj4+ID4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4gPj4+IEZyb206IHlvY3Rv
LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZw0KPj4gPj4+W21haWx0bzp5b2N0by1ib3VuY2VzQHlv
Y3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBYdSwgRG9uZ3hpYW8NCj4+ID4+PiBTZW50OiBU
dWVzZGF5LCBNYXJjaCAyNywgMjAxMiAyOjQ5IFBNDQo+PiA+Pj4gVG86IHlvY3RvDQo+PiA+Pj4g
U3ViamVjdDogW3lvY3RvXSBEZWxldGluZyBsYXllcnMgaW4gSG9iDQo+PiA+Pj4NCj4+ID4+PiBX
aGVuIHVzaW5nIEhvYiBpbiBZb2N0byBQcm9qZWN0LCBJIGZvdW5kIGEgaXNzdWUgd2hlbiBkZWxl
dGluZw0KPj5sYXllcnMuDQo+PiA+Pj5JDQo+PiA+Pj4gdGhpbmsgSSBldmVyIHJhaXNlZCB0aGlz
IHByb2JsZW0gYmVmb3JlLg0KPj4gPj4+DQo+PiA+Pj4gTGV0IG1lIGJyaWVmbHkgaW50cm9kdWNl
IGhvdyBsYXllciByZW1vdmFsIHdvcmtzIGluIEhvYi4gV2hlbiB1c2VyDQo+PiA+Pj4gY2hhbmdl
cyBhIGxheWVyLCBpdCB3aWxsIGZvbGxvd2luZyB0aGUgYmVsb3cgc3RlcHMNCj4+ID4+PiAxKSBp
bml0IHRoZSBjb29rZXIuDQo+PiA+Pj4gMikgc2V0IG5ldyBsYXllcnMgdG8gY29va2VyLg0KPj4g
Pj4+IDMpIHBhcnNlIGNvbmZpZ3VyYXRpb24gZmlsZXMuDQo+PiA+Pj4gNCkgZ2V0IGF2YWlsYWJs
ZSBtYWNoaW5lcywgZGlzdHJvcywgU0RLcywgZXRjLg0KPj4gPj4+DQo+PiA+Pj4gQXMgd2Uga25v
dywgaWYgd2Ugc291cmNlIG9lLWluaXQtYnVpbGQtZW52IGluIFlvY3RvIHByb2plY3QNCj4+ID4+
PmVudmlyb25tZW50LA0KPj4gPj4+IHdlIHdpbGwgaGF2ZSBESVNUUk89InBva3kiIHNldCBpbiBs
b2NhbC5jb25mIGJ5IGRlZmF1bHQsIHdoZXJlIHRoZQ0KPj4gPj4+ICJwb2t5IiBESVNUUk8gY29t
ZXMgZnJvbSB0aGUgbWV0YS15b2N0byBsYXllci4gSWYgdXNlciBkZWxldGVzDQo+PiA+Pj4gbWV0
YS15b2N0byBpbiBIb2IsIGFuZCB0aGVuIGVycm9yIHdpbGwgaGFwcGVuIHdoZW4gYml0YmFrZSBw
YXJzaW5nDQo+PnRoZQ0KPj4gPj4+IGxvY2FsLmNvbmYsIHNpbmNlIGl0IGNvdWxkIG5vdCBmaW5k
IHdoZXJlIHRoZSAicG9reSIgRElTVFJPIGlzDQo+PmRlZmluZWQuDQo+PiA+Pj4NCj4+ID4+PiBF
dmVuIGlmIHdlIGFyZSBhYmxlIHRvIHN1Y2Nlc3NmdWxseSByZW1vdmVkIHRoZSBtZXRhLXlvY3Rv
IGxheWVyIGJ5DQo+PiA+Pj4gcmVtb3ZpbmcgdGhlIERJU1RSTyBkZWZpbml0aW9uIGluIGxvY2Fs
LmNvbmYsIHN5c3RlbSB3aWxsIHJlcG9ydA0KPj4gPj4+YW5vdGhlcg0KPj4gPj4+IGlzc3VlIHRo
YXQ6DQo+PiA+Pj4NCj4+ID4+PiBZb3VyIGNvbmZpZ3VyYXRpb24gaXMgdXNpbmcgc3RhbXAgZmls
ZXMgaW5jbHVkaW5nIHRoZSBzc3RhdGUgaGFzaA0KPj5idXQNCj4+ID4+PiB5b3VyIGJ1aWxkIGRp
cmVjdG9yeSB3YXMgYnVpbHQgd2l0aCBzdGFtcCBmaWxlcyB0aGF0IGRvIG5vdCBpbmNsdWRlDQo+
PiA+Pj4gdGhpcy4NCj4+ID4+PiBUbyBjb250aW51ZSwgZWl0aGVyIHJlYnVpbGQgb3Igc3dpdGNo
IGJhY2sgdG8gdGhlIE9FQmFzaWMgc2lnbmF0dXJlDQo+PiA+Pj4gaGFuZGxlciB3aXRoIEJCX1NJ
R05BVFVSRV9IQU5ETEVSID0gJ09FQmFzaWMnLg0KPj4gPj4+DQo+PiA+Pj4gVGhpcyBpcyBiZWNh
dXNlIEJCX1NJR05BVFVSRV9IQU5ETEVSID0gIk9FQmFzaWMiIGlzIGFsc28gZGVmaW5lZCBpbg0K
Pj4gPj4+IG1ldGEteW9jdG8gbGF5ZXIgKHBva3kuY29uZikuDQo+PiA+Pg0KPj4gPj4gTWV0YS15
b2N0byBpcyB1c2luZyBPRUJhc2ljSGFzaCBhcyBkZWZhdWx0IHNpZ25hdHVyZQ0KPj4gPj5oYW5k
bGVyKEFCSV9WRVJTSU9OPTgsIHNlZSAke1RNUERJUn0vYWJpX3ZlcnNpb24pLCB3aGlsZSBvZS1j
b3JlIGlzDQo+PiA+PnN0aWxsIHVzaW5nIHRoZSBPRUJhc2ljKEFCSV9WRVJTSU9OPTcpLiBUaGlz
IG1lYW5zIHRoZSBvZS1jb3JlIGNhbiBub3QNCj4+ID4+cmV1c2UgdGhlIHN0YW1wIGZpbGVzIGdl
bmVyYXRlZCBieSBtZXRhLXlvY3RvLg0KPj4gPg0KPj4gPkNvdWxkIHdlIHdvcmthcm91bmQgdGhl
IGluY29tcGF0aWJpbGl0eSBieSBzZXR0aW5nIEJCX1NJR05BVFVSRV9IQU5ETEVSDQo+PiA+PSAi
T0VCYXNpYyIgc29tZXdoZXJlIGluIG1ldGEtaG9iPw0KPj4gPg0KPj4gPkNoZWVycywNCj4+ID5K
b3NodWENCj4+ID4tLSANCj4+ID5Kb3NodWEgJ+i0vuipoScgTG9jaw0KPj4gPiAgICAgICAgIFlv
Y3RvIFByb2plY3QgIkpvaGFubmVzIGZhY3RvdHVtIg0KPj4gPiAgICAgICAgIEludGVsIE9wZW4g
U291cmNlIFRlY2hub2xvZ3kgQ2VudHJlDQo+PiA+X19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+ID55b2N0byBtYWlsaW5nIGxpc3QNCj4+ID55b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+PiA+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQo+PiANCj4NCj4NCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9uIChV
SykgTGltaXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9m
ZmljZTogUGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcKClRo
aXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1h
dGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55
IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQu
IElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRo
ZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgo=


