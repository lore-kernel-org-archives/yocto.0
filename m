Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58781E00970; Fri, 28 Nov 2014 05:09:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D085E0082F
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 05:09:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id AD4EB10123;
	Fri, 28 Nov 2014 14:09:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLBEerOErUQg; Fri, 28 Nov 2014 14:09:12 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Fri, 28 Nov 2014 14:09:12 +0100 (CET)
Received: from MSSRVS1.atlas.de (mssrvs1.atlas.de [10.200.101.71])
	by mgsrv01.atlas.de (Postfix) with ESMTP id D8ADA27169;
	Fri, 28 Nov 2014 14:09:11 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS1.atlas.de
	([10.200.101.71]) with mapi; Fri, 28 Nov 2014 14:09:12 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <s.stirtzel@googlemail.com>
Date: Fri, 28 Nov 2014 14:09:11 +0100
Thread-Topic: [yocto] do_fetch linux hangs after defconfig/conf-fragment change
Thread-Index: AdALC2vVEpNi12MLTRi+O/AFJGWNIwAALZYw
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A69@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
	<CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
In-Reply-To: <CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
Accept-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Fri, 28 Nov 2014 13:09:29 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KPiBWb246IFNhbXVlbCBT
dGlydHplbCBbbWFpbHRvOnMuc3RpcnR6ZWxAZ29vZ2xlbWFpbC5jb21dDQo+IEdlc2VuZGV0OiBG
cmVpdGFnLCAyOC4gTm92ZW1iZXIgMjAxNCAxMzo1NQ0KPiBBbjogSGVpc2UsIE1hdHRoaWFzDQo+
IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IEJldHJlZmY6IFJlOiBbeW9jdG9dIGRvX2Zl
dGNoIGxpbnV4IGhhbmdzIGFmdGVyIGRlZmNvbmZpZy9jb25mLWZyYWdtZW50DQo+IGNoYW5nZQ0K
PiANCj4gMjAxNC0xMS0yOCAxMToyOSBHTVQrMDE6MDAgIDxNYXR0aGlhcy5IZWlzZUBhdGxhcy1l
bGVrdHJvbmlrLmNvbT46DQo+IA0KPiA+DQo+ID4gVGhpcyBpcyB3aGF0IEkgZm91bmQgOg0KPiA+
DQo+ID4gREVCVUc6IE1pcnJvciBmZXRjaCBmYWlsdXJlIGZvciB1cmwNCj4gPg0KPiBodHRwOi8v
ZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvbWlycm9yL3NvdXJjZXMvZ2l0Ml9naXRodWIuY29t
LndhbmRiDQo+ID4gb2FyZC1vcmcubGludXguZ2l0LnRhci5neiAob3JpZ2luYWwgdXJsOg0KPiA+
IGdpdDovL2dpdGh1Yi5jb20vd2FuZGJvYXJkLQ0KPiBvcmcvbGludXguZ2l0O2JyYW5jaD13YW5k
Ym9hcmRfaW14XzMuMTAuMTdfDQo+ID4gMS4wLjFfZ2EpDQo+ID4gREVCVUc6IEZldGNoZXIgZmFp
bHVyZTogRmV0Y2ggY29tbWFuZCBmYWlsZWQgd2l0aCBleGl0IGNvZGUgOCwgb3V0cHV0Og0KPiA+
DQo+IGh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9taXJyb3Ivc291cmNlcy9naXQy
X2dpdGh1Yi5jb20ud2FuZGINCj4gb2FyZC1vcmcubGludXguZ2l0LnRhci5nejoNCj4gPiAyMDE0
LTExLTI4IDExOjExOjA5IEVSUk9SIDQwNDogTm90IEZvdW5kLg0KPiA+DQo+ID4gQWZ0ZXIgdGhh
dCA6DQo+ID4NCj4gPiBERUJVRzogVHJ5aW5nIFVwc3RyZWFtDQo+ID4gLg0KPiA+IC4NCj4gPiAu
DQo+ID4NCj4gPiBBbmQgdGhlbiBpdCBoYW5ncyBoZXJlIDoNCj4gPg0KPiA+IEN1cnJlbnRseSAx
IHJ1bm5pbmcgdGFza3MgKDEwMDAgb2YgMTk4OCk6DQo+ID4gMDogbGludXgtd2FuZGJvYXJkLTMu
MTAuMTctcjAgZG9fZmV0Y2ggKHBpZCA3MDcwKQ0KPiA+DQo+ID4NCj4gPiBUaGUgc291cmNlIHNl
ZW1zIHRvIGJlIG5vdCB0aGVyZSwgd2hpY2ggaXMgYSBwcm9ibGVtLCBidXQgSSdtIGFza2luZw0K
PiA+IG15c2VsZiBhbHNvIHdoeSBpdCBpcyBmZXRjaGVkIGFnYWluDQo+ID4NCj4gDQo+IEl0J3Mg
b25seSBhIHdhcm5pbmcgaWYgYSBtaXJyb3IgcmVwb3J0cyBlcnJvciA0MDQuDQo+IExvb2tzIGxp
a2UgeW91ciBjb21wYW55IGZpcmV3YWxsIGJsb2NrcyBvdXRnb2luZyBjb25uZWN0aW9ucyBmb3Ig
dGhlIGdpdA0KPiBwcm90b2NvbCAoVENQLVBvcnQgOTQxOCkuDQo+IA0KPiBDYW4geW91IG1hbnVh
bGx5IGNsb25lIHRoZSBnaXQgcmVwb3NpdG9yeSBpbiB5b3VyIGNvbnNvbGU/DQo+IEUuZy4gZ2l0
IGNsb25lIGdpdDovL2dpdGh1Yi5jb20vd2FuZGJvYXJkLW9yZy9saW51eC5naXQNCj4gDQo+IA0K
PiAtLQ0KPiBSZWdhcmRzDQo+IFNhbXVlbA0KDQpJIG1hZGUgdGhlIGdpdCBzZXR0aW5nIHRvIHJl
cGxhY2UgZ2l0Oi8vIHdpdGggaHR0cHM6Ly8gd2hpY2ggYXQgbGVhc3Qgd29ya2VkIG9uY2UgLi4u
DQpCdXQgd2hlbiB0cnlpbmcgdG8gY2xvbmUgYXMgeW91IHN1Z2dlc3RlZCBJJ20gYXNrZWQgZm9y
IHVzZXJuYW1lIGFuZCBwYXNzd29yZCBmb3IgZ2l0aHViLmNvbSAhPw0KDQpSZWdhcmRzIA0KTWF0
DQo=

