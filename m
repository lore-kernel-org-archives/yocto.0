Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B76E00928; Mon, 23 Oct 2017 13:31:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.150.235 listed in list.dnswl.org]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E0FDE00708
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 13:31:46 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx27.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Mon, 23 Oct 2017 20:31:41 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 23 Oct 2017 13:31:39 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 23 Oct 2017 13:31:39 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Andrea Adami <andrea.adami@gmail.com>
Thread-Topic: [yocto] Problem with populate_sdk
Thread-Index: AQHTSQVi8LeK/WvtBEi7bRUf6L68KKLw+ZKAgADv20A=
Date: Mon, 23 Oct 2017 20:31:39 +0000
Message-ID: <fd2f7a350be54f15b16885e6bc261a8b@sakuraus.com>
References: <7e4405635662496696c940f21d8591a7@sakuraus.com>
	<CAAQYJAu4e4WCUAP55pPUpU-7mZ5ixq8AAEtHpGv7zqEjj2xipQ@mail.gmail.com>
In-Reply-To: <CAAQYJAu4e4WCUAP55pPUpU-7mZ5ixq8AAEtHpGv7zqEjj2xipQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1508790700-637137-14021-876318-1
X-BESS-VER: 2017.12-r1710102214
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.186231
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with populate_sdk
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
X-List-Received-Date: Mon, 23 Oct 2017 20:31:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQW5kcmVhLA0KSSBhZGRlZCB0aGUgZGJnLXBrZ3MgdG8gdGhlIElNQUdFX0ZFQVRVUkVTIGJ1
dCBpdCBkaWRuJ3Qgc2VlbSB0byBtYWtlIGEgZGlmZmVyZW5jZSBpbiB3aGF0IHdhcyBpbmNsdWRl
ZCwgc3RpbGwgbm8gLmEgZmlsZSBpbiB0aGUgU1lTUk9PVC4NClJlZ2FyZHMsDQpHcmVnDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmVhIEFkYW1pIFttYWlsdG86
YW5kcmVhLmFkYW1pQGdtYWlsLmNvbV0NCj4gU2VudDogU3VuZGF5LCBPY3RvYmVyIDIyLCAyMDE3
IDQ6MTIgUE0NCj4gVG86IEdyZWcgV2lsc29uLUxpbmRiZXJnIDxHV2lsc29uQHNha3VyYXVzLmNv
bT4NCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10g
UHJvYmxlbSB3aXRoIHBvcHVsYXRlX3Nkaw0KPiANCj4gT24gVGh1LCBPY3QgMTksIDIwMTcgYXQg
ODoyNiBQTSwgR3JlZyBXaWxzb24tTGluZGJlcmcNCj4gPEdXaWxzb25Ac2FrdXJhdXMuY29tPiB3
cm90ZToNCj4gPiBJJ20gdHJ5aW5nIHRvIGJ1aWxkIGFuIFNESyBmb3IgYSBSYXNwYmVycnkgUGkz
LCBhbmQgSSBnb3QgYSBwcm9ibGVtDQo+ID4gd2l0aCB0aGUgZmlsZXMgZnJvbSBvbmUgb2YgbXkg
Y3VzdG9tIHJlY2lwZXMuDQo+ID4NCj4gPg0KPiA+IEluIG15IHJlY2lwZSBJIGhhdmU6DQo+ID4N
Cj4gPiBGSUxFU18ke1BOfS1kZXYgPSAibGliL2xpYiR7UE59LmEgbGliL2xpYiR7UE59X3VuaXgu
YSBsaWIvcGtnY29uZmlnDQo+ID4gaW5jbHVkZS9jYW5mZXN0aXZhbC8qLmgiDQo+ID4NCj4gPg0K
PiA+IFRoZSAqLmEgZmlsZXMgZ2V0IHB1dCBpbnRvIHN0YXRpY2RldiBub3QgZGV2IGluIHRoZSBw
YWNrYWdlIHNwbGl0Lg0KPiA+DQo+ID4NCj4gPiBJbiBteSBpbWFnZSByZWNpcGUgSSd2ZSBhZGRl
ZDoNCj4gPg0KPiA+IElNQUdFX0ZFQVRVUkVTICs9ICJkZXYtcGtncyAgc3RhdGljZGV2LXBrZ3Mi
DQo+ID4NCj4gPiBJIGdldCBhbGwgb2YgdGhlIGxpYnJhcmllcyBpbiBteSBpbWFnZS4gSW4gdGhl
IFNESyBJIGRvbid0IGdldCB0aGUgKi5hDQo+ID4gbGlicmFyaWVzIGZyb20gdGhlIHN0YXRpY2Rl
diwgSSBkbyBnZXQgdGhlIGhlYWRlciBmaWxlcyB3aGljaCB3ZXJlIHB1dA0KPiA+IGludG8gZGV2
Lg0KPiA+DQo+ID4NCj4gPiBTbywgYXQgdGhpcyBwb2ludCBJJ20gYSBiaXQgY29uZnVzZWQsIGV2
ZW4gdGhvdWdoIEkgaW5jbHVkZSBib3RoIHRoZQ0KPiA+IGRldiAmIHN0YXRpY2RldiBJIGFtIG9u
bHkgZ2V0dGluZyB0aGUgZGV2IGZpbGVzIGluIHRoZSBTREsuIEFuZCwgYWxzbywNCj4gPiB3aHkg
YXJlIHRoZSAqLmEgbGlicyBiZWluZyBwdXQgaW50byBzdGF0aWNkZXYgaW4gdGhlIGZpcnN0IHBs
YWNlPw0KPiA+DQo+ID4NCj4gDQo+IEhpLA0KPiB0aGVzZSBkZWZhdWx0cyBhcmUgZGVmaW5lZCBp
biBtZXRhL2NvbmYvYml0YmFrZS5jb25mOg0KPiANCj4gUEFDS0FHRVMgPSAiJHtQTn0tZGJnICR7
UE59LXN0YXRpY2RldiAke1BOfS1kZXYgJHtQTn0tZG9jICR7UE59LWxvY2FsZQ0KPiAke1BBQ0tB
R0VfQkVGT1JFX1BOfSAke1BOfSINCj4gDQo+IFRoaXMgbWVhbnMgdGhhdCBzdGF0aWNkZXYgcGFj
a2FnZSBpcyBjcmVhdGVkIGJlZm9yZSBkZXYgcGFja2FnZSwganVzdCBhZnRlcg0KPiBkYmcuDQo+
IA0KPiBhbmQNCj4gDQo+IEZJTEVTXyR7UE59LXN0YXRpY2RldiA9ICIke2xpYmRpcn0vKi5hICR7
YmFzZV9saWJkaXJ9LyouYSAke2xpYmRpcn0vJHtCUE59LyouYSINCj4gDQo+IGluZGljYXRlcyB0
aGF0IHRoZSAuYSBmaWxlcyBpbiB0aGVzZSBkaXJzIGJlbG9uZ3MgdG8gdGhlIHN0YXRpY2RldiBw
YWNrYWdlLg0KPiANCj4gTm93LCBJIGd1ZXNzIHlvdSBzaG91bGQgdHJ5Og0KPiANCj4gIFNES0lN
QUdFX0ZFQVRVUkVTID0gImRldi1wa2dzIGRiZy1wa2dzIHN0YXRpY2Rldi1wa2dzIg0KPiANCj4g
U2UgaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL3BpcGVybWFpbC95b2N0by8yMDE0LQ0K
PiBTZXB0ZW1iZXIvMDIxNjQ1Lmh0bWwNCj4gDQo+IENoZWVycw0KPiBBbmRyZWENCj4gDQo+IA0K
PiA+IFJlZ2FyZHMsIEdyZWcNCj4gPg0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxpbmcgbGlzdA0K
PiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvbGlzdGluZm8veW9jdG8NCj4gPg0K

