Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C16EEE0091D; Mon,  1 Dec 2014 00:35:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.156.172.86 listed in list.dnswl.org]
Received: from mail96.atlas.de (mail96.atlas.de [194.156.172.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C930E0084A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 00:35:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id 45599105FB;
	Mon,  1 Dec 2014 09:35:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FnFtl9qH1Q2a; Mon,  1 Dec 2014 09:35:19 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Mon,  1 Dec 2014 09:35:19 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id 3572C2716A;
	Mon,  1 Dec 2014 09:35:19 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Mon, 1 Dec 2014 09:35:19 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <s.stirtzel@googlemail.com>
Date: Mon, 1 Dec 2014 09:35:18 +0100
Thread-Topic: [yocto] do_fetch linux hangs after defconfig/conf-fragment change
Thread-Index: AdALDpwvR/EkGNPrRJWRozMl8VHUCwCMrXew
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6A@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
	<CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A69@MSSRVS5.atlas.de>
	<CAGiJk9efNDb9DurbgV892bwM69tn3jH52UpDj15RZbKT8OZuog@mail.gmail.com>
In-Reply-To: <CAGiJk9efNDb9DurbgV892bwM69tn3jH52UpDj15RZbKT8OZuog@mail.gmail.com>
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
X-List-Received-Date: Mon, 01 Dec 2014 08:35:37 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KPiBWb246IFNhbXVlbCBT
dGlydHplbCBbbWFpbHRvOnMuc3RpcnR6ZWxAZ29vZ2xlbWFpbC5jb21dDQo+IEdlc2VuZGV0OiBG
cmVpdGFnLCAyOC4gTm92ZW1iZXIgMjAxNCAxNDoyNA0KPiBBbjogSGVpc2UsIE1hdHRoaWFzDQo+
IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IEJldHJlZmY6IFJlOiBbeW9jdG9dIGRvX2Zl
dGNoIGxpbnV4IGhhbmdzIGFmdGVyIGRlZmNvbmZpZy9jb25mLWZyYWdtZW50DQo+IGNoYW5nZQ0K
PiANCj4gMjAxNC0xMS0yOCAxNDowOSBHTVQrMDE6MDAgIDxNYXR0aGlhcy5IZWlzZUBhdGxhcy1l
bGVrdHJvbmlrLmNvbT46DQo+ID4NCj4gPiBJIG1hZGUgdGhlIGdpdCBzZXR0aW5nIHRvIHJlcGxh
Y2UgZ2l0Oi8vIHdpdGggaHR0cHM6Ly8gd2hpY2ggYXQgbGVhc3Qgd29ya2VkDQo+IG9uY2UgLi4u
DQo+ID4gQnV0IHdoZW4gdHJ5aW5nIHRvIGNsb25lIGFzIHlvdSBzdWdnZXN0ZWQgSSdtIGFza2Vk
IGZvciB1c2VybmFtZSBhbmQNCj4gcGFzc3dvcmQgZm9yIGdpdGh1Yi5jb20gIT8NCj4gPg0KPiAN
Cj4gU3RyYW5nZSwgaXQgd29ya3MgZm9yIG1lLi4uIHRha2VzIHNvbWUgdGltZSBidXQgZG9lc24n
dCBhc2sgZm9yDQo+IHVzZXJuYW1lL3Bhc3N3b3JkLg0KPiANCj4gDQo+IA0KPiANCj4gLS0NCj4g
UmVnYXJkcw0KPiBTYW11ZWwNCg0KSSBleGVjdXRlZCAiYml0YmFrZSAtYyBjbGVhbiBsaW51eF93
YW5kYm9hcmQiIGFuZCByZXRyaWVkLCB0aGVuIGl0IHdvcmtlZCBhZ2Fpbi4gQnV0IHN0aWxsIGZv
ciBtZSB0aGUgcXVlc3Rpb24gaXMgb3BlbiB3aHkgdGhlIHNvdXJjZXMgYXJlIHJlLWZldGNoZWQg
b25seSBiZWNhdXNlIEkgZW5hYmxlL2Rpc2FibGUga2VybmVsIG9wdGlvbnMgKGluIG1lbnVjb25m
aWcpLiBTaG91bGRuJ3QgdGhpcyBiZSBqdXN0IGEgbWF0dGVyIG9mIHJlLWNvbXBpbGluZyA/DQo=

