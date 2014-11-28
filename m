Return-Path: <Matthias.Heise@atlas-elektronik.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71D2E008EA; Fri, 28 Nov 2014 02:30:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 709C2E006EF
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 02:30:15 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail96.atlas.de (Postfix) with ESMTP id E25281090B;
	Fri, 28 Nov 2014 11:30:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at mail96.atlas.de
Received: from mail96.atlas.de ([127.0.0.1])
	by localhost (mail96.atlas.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1_0d4H-EZjAz; Fri, 28 Nov 2014 11:30:04 +0100 (CET)
Received: from mgsrv01.atlas.de (mail01.atlas.mailrelays.atlas.de
	[10.200.101.16]) by mail96.atlas.de (Postfix) with ESMTP;
	Fri, 28 Nov 2014 11:30:04 +0100 (CET)
Received: from MSSRVS3.atlas.de (mssrvs3.atlas.de [10.200.101.73])
	by mgsrv01.atlas.de (Postfix) with ESMTP id DD9F92717B;
	Fri, 28 Nov 2014 11:30:03 +0100 (CET)
Received: from MSSRVS5.atlas.de
	([fe80:0000:0000:0000:cd6c:87f4:14.12.253.152]) by MSSRVS3.atlas.de
	([10.200.101.73]) with mapi; Fri, 28 Nov 2014 11:29:53 +0100
From: <Matthias.Heise@atlas-elektronik.com>
To: <s.stirtzel@googlemail.com>
Date: Fri, 28 Nov 2014 11:29:53 +0100
Thread-Topic: [yocto] do_fetch linux hangs after defconfig/conf-fragment change
Thread-Index: AdAK82aaerJLcxhURjeTmWglzLvarwAAmXOA
Message-ID: <4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
In-Reply-To: <CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
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
X-List-Received-Date: Fri, 28 Nov 2014 10:30:22 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KPiBWb246IFNhbXVlbCBT
dGlydHplbCBbbWFpbHRvOnMuc3RpcnR6ZWxAZ29vZ2xlbWFpbC5jb21dDQo+IEdlc2VuZGV0OiBG
cmVpdGFnLCAyOC4gTm92ZW1iZXIgMjAxNCAxMTowOQ0KPiBBbjogSGVpc2UsIE1hdHRoaWFzDQo+
IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IEJldHJlZmY6IFJlOiBbeW9jdG9dIGRvX2Zl
dGNoIGxpbnV4IGhhbmdzIGFmdGVyIGRlZmNvbmZpZy9jb25mLWZyYWdtZW50DQo+IGNoYW5nZQ0K
PiANCj4gMjAxNC0xMS0yOCAxMDoyOSBHTVQrMDE6MDAgIDxNYXR0aGlhcy5IZWlzZUBhdGxhcy1l
bGVrdHJvbmlrLmNvbT46DQo+ID4gSGkgYWxsLA0KPiA+DQo+ID4NCj4gPg0KPiA+IEnigJltIHF1
aXRlIG5ldyB0byB5b2N0byBhbmQgY3VycmVudGx5IGFtIHBsYXlpbmcgYXJvdW5kIHdpdGggYWxs
IGtpbmRzDQo+ID4gb2YgYmFzaWMgZnVuY3Rpb25zIGFuZCBwcm9jZWR1cmVzIG9mIHlvY3RvIHRv
IHN0ZXAgYnkgc3RlcCBsZWFybiBhbmQNCj4gPiBnZXQgdG8ga25vdyB5b2N0byBhbmQgYml0YmFr
ZS4NCj4gPg0KPiA+IEN1cnJlbnRseSBJ4oCZbSB0cnlpbmcgdG8gc3RvcmUgdGhlIGtlcm5lbCBj
b25maWcgc2V0dGluZ3MgaW4gc29tZSB3YXkNCj4gPiBpbiBteSBsYXllciB0byBoYXZlIGl0IG1v
ZHVsYXIuIFNvIEkgcmVhZCBhYm91dCBjb25maWcgZnJhZ21lbnRzLg0KPiA+IFVuZm9ydHVuYXRl
bHkgSSBjYW7igJl0IHRlc3Qgd2hhdCBJIGRpZCBhcyB3aGVuIHJ1bm5pbmcgYml0YmFrZSB0aGUN
Cj4gPiBkb19mZXRjaCBmb3IgdGhlIGxpbnV4IHNvdXJjZSBpcyBzdGFydGVkIGFuZCBkb2VzbuKA
mXQgZW5kLiBFdmVuIHdoZW4NCj4gPiBlbmFibGluZy9kaXNhYmxpbmcgb25seSBvbmUgbGluZSBp
biB0aGUgZGVmY29uZmlnIGZpbGUsIHdoaWNoIEkgdHJpZWQNCj4gPiBhcyB0ZXN0LCB0aGlzIGhh
cHBlbnMuIFRoYXQgaXNu4oCZdCBub3JtYWwgaXMgaXQgPyBXaGF0IGNhbiBJIGRvIGFib3V0IHRo
aXMgPw0KPiA+DQo+ID4gVGhhbmsgeW91LA0KPiA+DQo+ID4gQmVzdCByZWdhcmRzLA0KPiA+DQo+
ID4gTWF0DQo+ID4NCj4gDQo+IEhpLA0KPiANCj4geW91IGNhbiBpbmNyZWFzZSB0aGUgYml0YmFr
ZSBkZWJ1ZyBsZXZlbCB3aXRoIHRoZSAiLUQiIGZsYWcsIGl0IGNhbiBiZSB1c2VkDQo+IG11bHRp
cGxlIHRpbWVzIGxpa2U6DQo+IGJpdGJha2UgLURERCA8cmVjaXBlPg0KPiANCj4gVXN1YWxseSB0
aGlzIHNob3VsZCBzaG93IGVub3VnaCBpbmZvcm1hdGlvbiB0byBzZWUgd2hhdCdzIGdvaW5nIHdy
b25nLg0KPiANCj4gDQo+IA0KPiAtLQ0KPiBSZWdhcmRzDQo+IFNhbXVlbA0KDQpUaGlzIGlzIHdo
YXQgSSBmb3VuZCA6DQoNCkRFQlVHOiBNaXJyb3IgZmV0Y2ggZmFpbHVyZSBmb3IgdXJsIGh0dHA6
Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9taXJyb3Ivc291cmNlcy9naXQyX2dpdGh1Yi5j
b20ud2FuZGJvYXJkLW9yZy5saW51eC5naXQudGFyLmd6IChvcmlnaW5hbCB1cmw6IGdpdDovL2dp
dGh1Yi5jb20vd2FuZGJvYXJkLW9yZy9saW51eC5naXQ7YnJhbmNoPXdhbmRib2FyZF9pbXhfMy4x
MC4xN18xLjAuMV9nYSkNCkRFQlVHOiBGZXRjaGVyIGZhaWx1cmU6IEZldGNoIGNvbW1hbmQgZmFp
bGVkIHdpdGggZXhpdCBjb2RlIDgsIG91dHB1dDoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9taXJyb3Ivc291cmNlcy9naXQyX2dpdGh1Yi5jb20ud2FuZGJvYXJkLW9yZy5saW51
eC5naXQudGFyLmd6Og0KMjAxNC0xMS0yOCAxMToxMTowOSBFUlJPUiA0MDQ6IE5vdCBGb3VuZC4N
Cg0KQWZ0ZXIgdGhhdCA6DQoNCkRFQlVHOiBUcnlpbmcgVXBzdHJlYW0NCi4NCi4NCi4NCg0KQW5k
IHRoZW4gaXQgaGFuZ3MgaGVyZSA6DQoNCkN1cnJlbnRseSAxIHJ1bm5pbmcgdGFza3MgKDEwMDAg
b2YgMTk4OCk6DQowOiBsaW51eC13YW5kYm9hcmQtMy4xMC4xNy1yMCBkb19mZXRjaCAocGlkIDcw
NzApDQoNCg0KVGhlIHNvdXJjZSBzZWVtcyB0byBiZSBub3QgdGhlcmUsIHdoaWNoIGlzIGEgcHJv
YmxlbSwgYnV0IEknbSBhc2tpbmcgbXlzZWxmIGFsc28gd2h5IGl0IGlzIGZldGNoZWQgYWdhaW4N
Cg0KUmVnYXJkcyANCk1hdA0K

