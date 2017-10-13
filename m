Return-Path: <john.ernberg@actia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5255EE00CD1; Thu, 12 Oct 2017 22:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Oct 2017 22:11:11 PDT
Received: from mail.actia.se (mail.actia.se [195.67.112.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DFDE00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 22:11:11 -0700 (PDT)
Received: from S036ANL.actianordic.se (192.168.16.117) by
	S036ANL.actianordic.se (192.168.16.117) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1261.35; Fri, 13 Oct 2017 06:56:06 +0200
Received: from S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69]) by
	S036ANL.actianordic.se ([fe80::e13e:1feb:4ea6:ec69%3]) with mapi id
	15.01.1261.035; Fri, 13 Oct 2017 06:56:06 +0200
From: John Ernberg <john.ernberg@actia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How do I patch binutils for the SDK
Thread-Index: AdNDIo91RybcvaSHQsqlC1MIT5L0pQAoIEgAAACzkIAAAjw0gA==
Date: Fri, 13 Oct 2017 04:56:06 +0000
Message-ID: <dcfc7cfa-81bf-3964-7b8c-76e96309bb9f@actia.se>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
	<20171013033200.vkrdd6jiq2lqaooj@apollo>
	<88F50DD804AA49FF97B3133B16A414D3@PAULD>
In-Reply-To: <88F50DD804AA49FF97B3133B16A414D3@PAULD>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.15.7]
MIME-Version: 1.0
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 05:11:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5255A9E4EAFABF4E8F449F12E167D764@actia.se>
Content-Transfer-Encoding: base64

T24gMTAvMTMvMjAxNyAwNTo1MiBBTSwgUGF1bCBELiBEZVJvY2NvIHdyb3RlOg0KPj4gRnJvbTog
S2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+Pg0KPj4gWW91IGNhbiBhcHBs
eSB0aGUgcGF0Y2ggdG8gYWxsIGJpbnV0aWxzIHZhcmlhbnRzLCBpdHMgZmluZS4NCj4+IFNlbmQg
YSBwYXRjaCBvciBpZiB5b3UNCj4+IHdhbnQsIGZpbGUgYSB0aWNrZXQgaW4gYnVnemlsbGEgYW5k
IHdlIHdpbGwgdGFrZSBjYXJlLg0KPiBZb2N0bydzIEJ1Z3ppbGxhIGlzbid0IHJlY29nbml6aW5n
IG15IHBhc3N3b3JkLCBhbmQgd2hlbiBpdCBzYXlzIHRoYXQgaXQncw0KPiBlbWFpbGVkIG1lIGEg
cGFzc3dvcmQgY2hhbmdlIG1lc3NhZ2UsIGl0IGRvZXNuJ3Qgc2hvdyB1cC4gSG93ZXZlciwgdGhl
DQo+IGZvdXIgc21hbGwgcGF0Y2hlcyBhcmUgaW4gdGhlIFNvdXJjZXdhcmUgYmludXRpbHMtZ2Ri
IEdJVCByZXBvLCBhdCB0aGUNCj4gbGluayBJIG1lbnRpb25lZDoNCj4NCj4gaHR0cHM6Ly9zb3Vy
Y2V3YXJlLm9yZy9naXQvZ2l0d2ViLmNnaT9wPWJpbnV0aWxzLWdkYi5naXQ7aD0zOTg2NWE3ZjQy
MGFiNGMNCj4gYTRkZWM2ZWQyNzMzOTYxOGE1ZDVkYzM2Ng0KPg0KPiBKdXN0IHRvIHZlcmlmeSwg
bXkgYmludXRpbHMtY3Jvc3NzZGtfJS5iYmFwcGVuZCBmaWxlIGNvbnRhaW5zOg0KPg0KPiBGSUxF
U0VYVFJBUEFUSFNfcHJlcGVuZCA6PSAiJHtUSElTRElSfS9iaW51dGlsczoiDQo+DQo+IFNSQ19V
UkkgPSAiICAgICAgICAgICAgICAgICAgICAgICAgIFwNCkxvb2tzIGxpa2UgeW91J3JlIG92ZXJy
aWRpbmcgU1JDX1VSSSBpbnN0ZWFkIG9mIGFwcGVuZGluZyBpdC4gVHJ5IHdpdGggDQonKz0nIGlu
c3RlYWQgb2YganVzdCAnPScuDQo+ICAgICAgZmlsZTovL2dhc19hcy5oLnBhdGNoICAgICAgICAg
ICBcDQo+ICAgICAgZmlsZTovL2dhc19DaGFuZ2VMb2cucGF0Y2ggICAgICBcDQo+ICAgICAgZmls
ZTovL2dhc19pbnB1dC1zY3J1Yi5jLnBhdGNoICBcDQo+ICAgICAgZmlsZTovL2dhc19saXN0aW5n
LmMucGF0Y2ggICAgICBcDQo+ICAgICAgIg0KPg0KPiBhbmQgdGhlIHBhdGNoZXMgZnJvbSB0aGF0
IEJ1Z3ppbGxhIHBhZ2UgYXJlIGluIGEgYmludXRpbHMgZGlyZWN0b3J5LiBUaGUNCj4gZXJyb3Jz
IEkgZ2V0IGluZGljYXRlIHRoYXQgdGhlIHBhdGNoZXMgYXJlIGJlaW5nIGF0dGVtcHRlZCwgYnV0
IGFyZW4ndA0KPiBtYXRjaGluZyB1cCB3aXRoIGFueSBzb3VyY2UgZmlsZXMuDQo+DQovLyBKb2hu

