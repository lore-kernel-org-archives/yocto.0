Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DBEE0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 04:06:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Mar 2012 04:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124757165"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 29 Mar 2012 04:05:57 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 29 Mar 2012 12:05:33 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.39]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.241]) with mapi id
	14.01.0355.002; Thu, 29 Mar 2012 12:05:32 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Deleting layers in Hob
Thread-Index: AQHNDZvastXJPE3ib0acn1+NqwbvHA==
Date: Thu, 29 Mar 2012 11:05:30 +0000
Message-ID: <CB99FFF9.B950%belen.barros.pena@intel.com>
In-Reply-To: <4F71F122.5070802@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.199.86]
MIME-Version: 1.0
Cc: Giulia Piu <giulia@closertag.com>
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
X-List-Received-Date: Thu, 29 Mar 2012 11:06:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <964C1374797DFB48A8CEBC9216C1722B@intel.com>
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpEbyB3ZSBoYXZlIGVub3VnaCBpbmZvcm1hdGlvbiB0byBtYWtlIGEgZGVjaXNp
b24gYWJvdXQgdGhlIG1ldGEteW9jdG8NCmxheWVyPyBJIGRvbid0IHVuZGVyc3RhbmQgYWxsIHRo
ZSB0ZWNobmljYWwgZGV0YWlscywgYnV0IEkgYW0gaW5jbGluZWQgdG8NCm1ha2UgaXQgbm9uLWRl
bGV0YWJsZSBpbiBIb2IgKGkuZS4gaXQgaXMgbm90IHBvc3NpYmxlIHRvIGRlbGV0ZSB0aGlzIGxh
eWVyDQppbiBIb2IpLg0KDQpXaGF0IGRvIHlvdSB0aGluaz8NCg0KQmVsZW4NCg0KT24gMjcvMDMv
MjAxMiAxNzo1NiwgIkpvc2h1YSBMb2NrIiA8am9zaEBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0K
DQo+T24gMjcvMDMvMTIgMDA6MTksIEx1LCBMaWFuaGFvIHdyb3RlOg0KPj4NCj4+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+IEZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0
Lm9yZw0KPj4+W21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFs
ZiBPZiBYdSwgRG9uZ3hpYW8NCj4+PiBTZW50OiBUdWVzZGF5LCBNYXJjaCAyNywgMjAxMiAyOjQ5
IFBNDQo+Pj4gVG86IHlvY3RvDQo+Pj4gU3ViamVjdDogW3lvY3RvXSBEZWxldGluZyBsYXllcnMg
aW4gSG9iDQo+Pj4NCj4+PiBXaGVuIHVzaW5nIEhvYiBpbiBZb2N0byBQcm9qZWN0LCBJIGZvdW5k
IGEgaXNzdWUgd2hlbiBkZWxldGluZyBsYXllcnMuDQo+Pj5JDQo+Pj4gdGhpbmsgSSBldmVyIHJh
aXNlZCB0aGlzIHByb2JsZW0gYmVmb3JlLg0KPj4+DQo+Pj4gTGV0IG1lIGJyaWVmbHkgaW50cm9k
dWNlIGhvdyBsYXllciByZW1vdmFsIHdvcmtzIGluIEhvYi4gV2hlbiB1c2VyDQo+Pj4gY2hhbmdl
cyBhIGxheWVyLCBpdCB3aWxsIGZvbGxvd2luZyB0aGUgYmVsb3cgc3RlcHMNCj4+PiAxKSBpbml0
IHRoZSBjb29rZXIuDQo+Pj4gMikgc2V0IG5ldyBsYXllcnMgdG8gY29va2VyLg0KPj4+IDMpIHBh
cnNlIGNvbmZpZ3VyYXRpb24gZmlsZXMuDQo+Pj4gNCkgZ2V0IGF2YWlsYWJsZSBtYWNoaW5lcywg
ZGlzdHJvcywgU0RLcywgZXRjLg0KPj4+DQo+Pj4gQXMgd2Uga25vdywgaWYgd2Ugc291cmNlIG9l
LWluaXQtYnVpbGQtZW52IGluIFlvY3RvIHByb2plY3QNCj4+PmVudmlyb25tZW50LA0KPj4+IHdl
IHdpbGwgaGF2ZSBESVNUUk89InBva3kiIHNldCBpbiBsb2NhbC5jb25mIGJ5IGRlZmF1bHQsIHdo
ZXJlIHRoZQ0KPj4+ICJwb2t5IiBESVNUUk8gY29tZXMgZnJvbSB0aGUgbWV0YS15b2N0byBsYXll
ci4gSWYgdXNlciBkZWxldGVzDQo+Pj4gbWV0YS15b2N0byBpbiBIb2IsIGFuZCB0aGVuIGVycm9y
IHdpbGwgaGFwcGVuIHdoZW4gYml0YmFrZSBwYXJzaW5nIHRoZQ0KPj4+IGxvY2FsLmNvbmYsIHNp
bmNlIGl0IGNvdWxkIG5vdCBmaW5kIHdoZXJlIHRoZSAicG9reSIgRElTVFJPIGlzIGRlZmluZWQu
DQo+Pj4NCj4+PiBFdmVuIGlmIHdlIGFyZSBhYmxlIHRvIHN1Y2Nlc3NmdWxseSByZW1vdmVkIHRo
ZSBtZXRhLXlvY3RvIGxheWVyIGJ5DQo+Pj4gcmVtb3ZpbmcgdGhlIERJU1RSTyBkZWZpbml0aW9u
IGluIGxvY2FsLmNvbmYsIHN5c3RlbSB3aWxsIHJlcG9ydA0KPj4+YW5vdGhlcg0KPj4+IGlzc3Vl
IHRoYXQ6DQo+Pj4NCj4+PiBZb3VyIGNvbmZpZ3VyYXRpb24gaXMgdXNpbmcgc3RhbXAgZmlsZXMg
aW5jbHVkaW5nIHRoZSBzc3RhdGUgaGFzaCBidXQNCj4+PiB5b3VyIGJ1aWxkIGRpcmVjdG9yeSB3
YXMgYnVpbHQgd2l0aCBzdGFtcCBmaWxlcyB0aGF0IGRvIG5vdCBpbmNsdWRlDQo+Pj4gdGhpcy4N
Cj4+PiBUbyBjb250aW51ZSwgZWl0aGVyIHJlYnVpbGQgb3Igc3dpdGNoIGJhY2sgdG8gdGhlIE9F
QmFzaWMgc2lnbmF0dXJlDQo+Pj4gaGFuZGxlciB3aXRoIEJCX1NJR05BVFVSRV9IQU5ETEVSID0g
J09FQmFzaWMnLg0KPj4+DQo+Pj4gVGhpcyBpcyBiZWNhdXNlIEJCX1NJR05BVFVSRV9IQU5ETEVS
ID0gIk9FQmFzaWMiIGlzIGFsc28gZGVmaW5lZCBpbg0KPj4+IG1ldGEteW9jdG8gbGF5ZXIgKHBv
a3kuY29uZikuDQo+Pg0KPj4gTWV0YS15b2N0byBpcyB1c2luZyBPRUJhc2ljSGFzaCBhcyBkZWZh
dWx0IHNpZ25hdHVyZQ0KPj5oYW5kbGVyKEFCSV9WRVJTSU9OPTgsIHNlZSAke1RNUERJUn0vYWJp
X3ZlcnNpb24pLCB3aGlsZSBvZS1jb3JlIGlzDQo+PnN0aWxsIHVzaW5nIHRoZSBPRUJhc2ljKEFC
SV9WRVJTSU9OPTcpLiBUaGlzIG1lYW5zIHRoZSBvZS1jb3JlIGNhbiBub3QNCj4+cmV1c2UgdGhl
IHN0YW1wIGZpbGVzIGdlbmVyYXRlZCBieSBtZXRhLXlvY3RvLg0KPg0KPkNvdWxkIHdlIHdvcmth
cm91bmQgdGhlIGluY29tcGF0aWJpbGl0eSBieSBzZXR0aW5nIEJCX1NJR05BVFVSRV9IQU5ETEVS
DQo+PSAiT0VCYXNpYyIgc29tZXdoZXJlIGluIG1ldGEtaG9iPw0KPg0KPkNoZWVycywNCj5Kb3No
dWENCj4tLSANCj5Kb3NodWEgJ+i0vuipoScgTG9jaw0KPiAgICAgICAgIFlvY3RvIFByb2plY3Qg
IkpvaGFubmVzIGZhY3RvdHVtIg0KPiAgICAgICAgIEludGVsIE9wZW4gU291cmNlIFRlY2hub2xv
Z3kgQ2VudHJlDQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj55b2N0byBtYWlsaW5nIGxpc3QNCj55b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+aHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQoNCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJ
bnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQKUmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5n
bGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQg
Tm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250
YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBz
dHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50
LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K


