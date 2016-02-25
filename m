Return-Path: <j.gueytat@cdssoft.studiel.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAECAE00C95; Thu, 25 Feb 2016 05:19:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [5.135.56.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.studiel.fr (mail.studiel.fr [5.135.56.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38371E00C87
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 05:19:24 -0800 (PST)
Received: from server.exchange.local ([10.151.0.118]) by server.exchange.local
	([10.151.0.118]) with mapi id 14.02.0247.003;
	Thu, 25 Feb 2016 14:19:22 +0100
From: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
To: 'Maciej Borzecki' <maciej.borzecki@open-rnd.pl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] : git tag and PV variable
Thread-Index: AQHRbxkcHYxgPGib3EWx2C7fOId66p87SncAgAAjr4CAAVHg4A==
Date: Thu, 25 Feb 2016 13:19:22 +0000
Message-ID: <EC7BC1CD2E085743BB2AE634252C39C171AA49@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C171A8EE@server.exchange.local>
	<CAMKF1srvkpRBAQHfuPPTLdFtZEaRHNDeL39kWP-RqEWqJFcHbg@mail.gmail.com>
	<56CDD400.8090805@linux.intel.com>
	<842448969.279694.ea828785-f98d-49f8-b462-023ff7545478.open-xchange@poczta.nazwa.pl>
In-Reply-To: <842448969.279694.ea828785-f98d-49f8-b462-023ff7545478.open-xchange@poczta.nazwa.pl>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.218.87.184]
MIME-Version: 1.0
Subject: Re: : git tag and PV variable
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
X-List-Received-Date: Thu, 25 Feb 2016 13:19:29 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGVyZmVjdCBJJ2xsIGdpdmUgaXQgYSB0cnkhIDopDQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUt
LS0tLQ0KRGXCoDogTWFjaWVqIEJvcnplY2tpIFttYWlsdG86bWFjaWVqLmJvcnplY2tpQG9wZW4t
cm5kLnBsXSANCkVudm95w6nCoDogbWVyY3JlZGkgMjQgZsOpdnJpZXIgMjAxNiAxOToxMA0Kw4DC
oDogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgR1VFWVRBVCBKdWxpZW4NCk9iamV0wqA6IFJlOiBb
eW9jdG9dIDogZ2l0IHRhZyBhbmQgUFYgdmFyaWFibGUNCg0KDQo+IERuaWEgMjQgbHV0eSAyMDE2
IG8gMTc6MDIgQWxleGFuZGVyIEthbmF2aW4gDQo+IDxhbGV4YW5kZXIua2FuYXZpbkBsaW51eC5p
bnRlbC5jb20+IG5hcGlzYcWCKGEpOg0KPg0KPg0KPiBPbiAwMi8yNC8yMDE2IDA1OjM1IFBNLCBL
aGVtIFJhaiB3cm90ZToNCj4gPg0KPiA+IEkgaGF2ZSB0aGlzIGNvbW1hbmQgaW4gbXkgcW1ha2Ug
cHJvIGZpbGVzOl9fX18NCj4gPg0KPiA+IFZFUlNJT04gPSAkJHN5c3RlbShnaXQgZGVzY3JpYmUg
LS1hYmJyZXY9MCAtLXRhZ3MpX19fXw0KPiA+DQo+ID4gX18gX18NCj4gPg0KPiA+IEkgd291bGQg
bGlrZSB0byBoYXZlIHRoZSBwYWNrYWdlIG1hbmFnZXIgZm9sbG93IHRoZSB0YWcgDQo+ID4gdmVy
c2lvbmluZy5fX19fDQo+ID4NCj4gPiBfXyBfXw0KPiA+DQo+ID4gV2hpY2ggbWVhbnMgSSB3b3Vs
ZCBsaWtlIHRvIGhhdmUgc29tZXRoaW5nIGxpa2U6X19fXw0KPiA+DQo+ID4gUFYgPSAiZ2l0IGRl
c2NyaWJlIC0tYWJicmV2PTAgLS10YWdzIl9fX18NCj4gPg0KPiA+IFNSQ19VUkkgPSAiJHtTVFVE
SUVMX0dJVH0vY29yZS5naXQ7cHJvdG9jb2w9ZmlsZTt0YWc9JHtQVn0iX19fXw0KPiA+DQo+ID4g
X18gX18NCj4gPg0KPiA+IEl0IGRvZXMgbm90IHdvcmsgZm9yIHN1cmUuIFdoYXQgaXMgdGhlIGNv
cnJlY3Qgd2F5IHRvIGRvIHRoaXMgPw0KPiA+DQo+ID4NCj4gPiDigItTUkNfVVJJIGlzIHJlcXVp
cmVkIGJ5IGZldGNoZXIgYW5kIHRoZXJlIGlzIG5vdGhpbmcgdG8gZ2l0IGRlc2NyaWJlIA0KPiA+
IGJlZm9yZSBpdCBpcyBmZXRjaGVkLuKAiyBzbyB0aGF0cyB5b3VyIHByb2JsZW0uDQo+DQo+IEl0
J3MgcG9zc2libGUgaG93ZXZlciB0byB3cml0ZSBhbiBleHRlcm5hbCBzY3JpcHQgdGhhdCB1cGRh
dGVzIHRoZSBQViANCj4gdmVyc2lvbiBpbiB0aGUgcmVjaXBlLCBidXQgaXQgbmVlZHMgdG8gYmUg
cnVuIG91dHNpZGUgb2YgYml0YmFrZS4NCj4NCg0KSSBhY3R1YWxseSB3cm90ZSBhIGNsYXNzIGZv
ciB0aGlzIHRoYXQgd29ya3Mgd2l0aCBleHRlcm5hbHNyYyBnaXQgcGFja2FnZXMuIFRoZSBpZGVh
IHdhcyB0byByZXBsaWNhdGUgdGhlIGZ1bmN0aW9uYWxpdHkgb2YgZ2l0cGtndiBidXQgZm9yIGV4
dGVybmFsIHNvdXJjZXMuIFRoZSBjb2RlIGlzIGhlcmU6DQpodHRwczovL2dpdGh1Yi5jb20vb3Bl
bi1ybmQvbWV0YS1vcGVucm5kL2Jsb2IvbWFzdGVyL2NsYXNzZXMvZXh0ZXJuYWxnaXRzcmMuYmJj
bGFzcw0KDQpZb3UganVzdCBgaW5oZXJpdCBleHRlcm5hbGdpdHNyY2AgYW5kIGl0IHdpbGwgc2V0
IEVYVEVSTkFMU1JDX0dJVF9TUkNSRVYgYW5kIEVYVEVSTkFMU1JDX0dJVFBLR1YuDQoNCi0tDQpN
YWNpZWogQm9yesSZY2tpDQpTZW5pb3IgU29mdHdhcmUgRW5naW5lZXIgYXQgT3Blbi1SbkQgU3Au
IHogby5vLg0Kd3d3Lm9wZW4tcm5kLnBsLCBGYWNlYm9vaywgVHdpdHRlcg0K

