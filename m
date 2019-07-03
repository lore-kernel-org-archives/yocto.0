Return-Path: <btv1==087564a510a==cgong@trijicon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDC3AE00C81; Wed,  3 Jul 2019 12:53:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from WI11BFS.trijicon.com
	(50-253-248-89-static.hfc.comcastbusiness.net [50.253.248.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B51FE008CA
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 12:53:36 -0700 (PDT)
X-ASG-Debug-ID: 1562183615-1008250bbaa8fcb0001-yzSStA
Received: from WI102WEP.trijicon1.com (wi102wep.trijicon1.com [10.0.0.99]) by
	WI11BFS.trijicon.com with ESMTP id jub946fIAqonPiHq;
	Wed, 03 Jul 2019 15:53:35 -0400 (EDT)
X-Barracuda-Envelope-From: cgong@trijicon.com
Received: from WI102WEP.trijicon1.com (10.0.0.99) by WI102WEP.trijicon1.com
	(10.0.0.99) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Wed, 3 Jul 2019 15:53:28 -0400
Received: from WI102WEP.trijicon1.com ([::1]) by WI102WEP.trijicon1.com
	([::1]) with mapi id 15.01.1034.033; Wed, 3 Jul 2019 15:53:28 -0400
From: Chad Gong <cgong@trijicon.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Poky build errors, help is needed
X-ASG-Orig-Subj: RE: [yocto] Poky build errors, help is needed
Thread-Index: AdUw0o8Uu4i3AJLIQi68br/66gdncgAJRcUAAAOnaZAAAY0NAAACjpXwAAQCa4AAHohW4AAJ46CAAAPrqKA=
Date: Wed, 3 Jul 2019 19:53:28 +0000
Message-ID: <cfaa374acb35448ca38b96cde6bc8320@trijicon.com>
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
	<CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
	<1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
	<CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
	<9d65e7b2c1794d4ab7618a9a769b4bf9@trijicon.com>
	<CAJTo0LYxA818Q3vmOea4rRffiJR=XkSkRe3cSMPtc+7otQuo7A@mail.gmail.com>
In-Reply-To: <CAJTo0LYxA818Q3vmOea4rRffiJR=XkSkRe3cSMPtc+7otQuo7A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.224]
x-exclaimer-md-config: 74e93b01-4765-4777-9f3e-4485472e4022
MIME-Version: 1.0
X-Barracuda-Connect: wi102wep.trijicon1.com[10.0.0.99]
X-Barracuda-Start-Time: 1562183615
X-Barracuda-URL: https://wi11bsf.trijicon1.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at trijicon.com
X-Barracuda-Scan-Msg-Size: 2799
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73471
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Wed, 03 Jul 2019 19:53:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywNCg0KSSBvcGVuZWQgdGhlIGxvZy5kb19mZXRjaCBmaWxlLCBhbmQgaXQgbG9va3MgbGlr
ZSBhIGZpbGUgZ2l0Ml9naXRodWIuY29tLnRoa3VrdWsubGlibnNsLnRhci5neiB3YXMgZG93bmxv
YWRlZCBmcm9tIHRoZSBtaXJyb3Igc2l0ZSBodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5v
cmcvbWlycm9yL3NvdXJjZXMvZ2l0Ml9naXRodWIuY29tLnRoa3VrdWsubGlibnNsLnRhci5neiAu
VGhlbiBhbiBlcnJvciBoYXBwZW5lZCB3aXRoIHRhciwgYXMgc2hvd24gYmVsb3c6DQoNCnRhciAt
eHpmIC9ob21lL2NoYWQvbXlidWlsZC1jb3JlaW1hZ2VtaW5pbWFsLTI3MC0yL2Rvd25sb2Fkcy9n
aXQyX2dpdGh1Yi5jb20udGhrdWt1ay5saWJuc2wudGFyLmd6IGZhaWxlZCB3aXRoIGV4aXQgY29k
ZSAyLCBvdXRwdXQ6DQoNCmd6aXA6IHN0ZGluOiBub3QgaW4gZ3ppcCBmb3JtYXQNCnRhcjogQ2hp
bGQgcmV0dXJuZWQgc3RhdHVzIDENCnRhcjogRXJyb3IgaXMgbm90IHJlY292ZXJhYmxlOiBleGl0
aW5nIG5vdw0KDQoNCg0KDQpDaGFkIEdvbmcNCkVsZWN0cmljYWwgRW5naW5lZXINCg0KVHJpamlj
b24sIEluYy4NCg0KDQogfCBQLk8uIEJveCA5MzAwNTkNCldpeG9tLCBNaWNoaWdhbiA0ODM5MyBV
Uw0KY2dvbmdAdHJpamljb24uY29tIHwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZy
b206IEJ1cnRvbiwgUm9zcyA8cm9zcy5idXJ0b25AaW50ZWwuY29tPg0KU2VudDogV2VkbmVzZGF5
LCBKdWx5IDAzLCAyMDE5IDk6NTUgQU0NClRvOiBDaGFkIEdvbmcgPGNnb25nQHRyaWppY29uLmNv
bT4NCkNjOiBZb2N0by1tYWlsaW5nLWxpc3QgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQpTdWJq
ZWN0OiBSZTogW3lvY3RvXSBQb2t5IGJ1aWxkIGVycm9ycywgaGVscCBpcyBuZWVkZWQNCg0KQ0FV
VElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSB5b3VyIG9yZ2FuaXphdGlv
bi4gRXhlcmNpc2UgY2F1dGlvbiB3aGVuIG9wZW5pbmcgYXR0YWNobWVudHMgb3IgY2xpY2tpbmcg
bGlua3MsIGVzcGVjaWFsbHkgZnJvbSB1bmtub3duIHNlbmRlcnMuDQoNCk9uIFdlZCwgMyBKdWwg
MjAxOSBhdCAxNDoyMSwgQ2hhZCBHb25nIDxjZ29uZ0B0cmlqaWNvbi5jb20+IHdyb3RlOg0KPiBJ
IHJlLXJhbiBhbm90aGVyIGJ1aWxkIG9mIHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24uIFRoaXMgdGlt
ZSB0aGVyZSBpcyBubyBmZXRjaCBlcnJvciBmb3IgdGhlIGZpbGUgdGhhdCBmYWlsZWQgbGFzdCB0
aW1lLiBJIGxvb2tzIGVhY2ggdGltZSBJIGJ1aWxkLCBJIGdldCBkaWZmZXJlbnQgZmV0Y2ggZXJy
b3IgcmFuZG9tbHkuIEJ1dCB0aGlzIHRpbWUgdGhlIGZhaWxlZCBVUkwgaXMgZ2l0IHNob3duIGJl
bG93LCBhbmQgSSBjYW5ub3QgZXZlbiB1c2Ugd2dldCB0byBkb3dubG9hZCBpdC4NCj4NCj4gRVJS
T1I6IGxpYm5zbDItbmF0aXZlLTEuMi4wK2dpdEFVVE9JTkMrMzdjNWZmZTMwMy1yMCBkb19mZXRj
aDogRmV0Y2hlciBmYWlsdXJlIGZvciBVUkw6ICdnaXQ6Ly9naXRodWIuY29tL3Roa3VrdWsvbGli
bnNsJy4gVW5hYmxlIHRvIGZldGNoIFVSTCBmcm9tIGFueSBzb3VyY2UuDQo+DQo+ICQgd2dldCBn
aXQ6Ly9naXRodWIuY29tL3Roa3VrdWsvbGlibnNsDQo+IGdpdDovL2dpdGh1Yi5jb20vdGhrdWt1
ay9saWJuc2w6IFVuc3VwcG9ydGVkIHNjaGVtZSDigJhnaXTigJkuDQoNClllcywgd2dldCBpcyBh
IEhUVFAgZmV0Y2hlciwgbm90IGEgZ2l0IGZldGNoZXIuDQoNCkxvb2sgYXQgdGhlIGxvZy5kb19m
ZXRjaCBmb3IgbGlibnNsMi1uYXRpdmUgKHRtcC93b3JrLyovbGlibnNsMi1uYXRpdmUvMS4yLjAv
dGVtcC9sb2cuZG9fZmV0Y2guICBUaGF0IHdpbGwgdGVsbCB5b3Ugd2hhdCBpcyBmYWlsaW5nLiAg
TWF5YmUgeW91J3ZlIGEgZmlyZXdhbGwgdGhhdCBpc24ndCBhbGxvd2luZyBnaXQgb3V0Pw0KDQpS
b3NzDQoNCg0KDQpUaGlzIGVsZWN0cm9uaWMgbWVzc2FnZSBjb250YWlucyBpbmZvcm1hdGlvbiB0
aGF0IG1heSBiZQ0KY29uZmlkZW50aWFsLCBwcml2aWxlZ2VkLCBwcm9wcmlldGFyeSwgb3Igc3Vi
amVjdCB0byB0aGUgZXhwb3J0IGNvbnRyb2wgbGF3cyBvZg0KdGhlIFVuaXRlZCBTdGF0ZXMsIGlu
Y2x1ZGluZyB0aGUgQXJtcyBFeHBvcnQgQ29udHJvbCBBY3QgKDIyIFUuUy5DLiAyNTcxIGV0DQpz
ZXEuKSwgdGhlIEludGVybmF0aW9uYWwgVHJhZmZpYyBpbiBBcm1zIFJlZ3VsYXRpb25zICAoMjIg
Qy5GLlIuIFBhcnQgMTIwDQpldCBzZXEuKSwgYW5kL29yIHRoZSBFeHBvcnQgQWRtaW5pc3RyYXRp
b24gUmVndWxhdGlvbnMgKDE1IEMuRi5SLiBQYXJ0IDczMCBldA0Kc2VxLikuICBUaGlzIGluZm9y
bWF0aW9uIGlzIGludGVuZGVkIGZvciB0aGUgdXNlIG9mIHRoZSBhZGRyZXNzZWUgb25seSwgYW5k
DQppZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBhbnkgZGlzY2xvc3VyZSwg
Y29weWluZywgZGlzdHJpYnV0aW9uLA0KcHJpbnRpbmcsIG9yIGFueSBvdGhlciB1c2Ugb2YsIHRo
ZSBjb250ZW50cyBvZiB0aGlzIG1lc3NhZ2UgaXMgcHJvaGliaXRlZC4NCkFueSB0cmFuc2Zlciwg
cmV0cmFuc2Zlciwgb3IgZGlzY2xvc3VyZSBvZiB0aGlzIGRhdGEgdG8gYSBGb3JlaWduIFBlcnNv
biB3aXRob3V0DQpVbml0ZWQgU3RhdGVzIEdvdmVybm1lbnQgYXV0aG9yaXphdGlvbiBpcyBhbHNv
IHByb2hpYml0ZWQuICBJZiB5b3UgaGF2ZQ0KcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGluIGVycm9y
LCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgYW5kIGRlc3Ryb3kgdGhlDQpvcmlnaW5hbCBtZXNz
YWdlLg0K

