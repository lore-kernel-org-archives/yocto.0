Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AE57E00B57; Thu,  8 Jun 2017 07:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF10E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 07:31:48 -0700 (PDT)
Received: from 1dIyTS-0005Pw-VW by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1dIyTT-0005QT-T3; Thu, 08 Jun 2017 07:31:46 -0700
Received: by emcmailer; Thu, 08 Jun 2017 07:31:46 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1dIyTS-0005Pw-VW; Thu, 08 Jun 2017 07:31:46 -0700
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0319.002; Thu, 8 Jun 2017 16:31:46 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "jackie.huang@windriver.com" <jackie.huang@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/4] resource-agents: update to 4.0.1
	and several fixes
Thread-Index: AQHS4GP0CbNDFn2ItkugM5Nx5Chhog==
Date: Thu, 8 Jun 2017 14:31:46 +0000
Message-ID: <1496932302.1730.8.camel@enea.com>
References: <cover.1496391537.git.jackie.huang@windriver.com>
In-Reply-To: <cover.1496391537.git.jackie.huang@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.45]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: [meta-cgl][PATCH 0/4] resource-agents: update to 4.0.1 and several fixes
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
X-List-Received-Date: Thu, 08 Jun 2017 14:31:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AD759BCDE6E47E46A451EEF24FB9B549@enea.com>
Content-Transfer-Encoding: base64

T24gZnJlLCAyMDE3LTA2LTAyIGF0IDE2OjIxICswODAwLCBqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbSB3cm90ZToNCj4gRnJvbTogSmFja2llIEh1YW5nIDxqYWNraWUuaHVhbmdAd2luZHJpdmVy
LmNvbT4NCj4gDQo+IC0tDQo+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQNCj4g
YzBhZmE3MDZlOWNkYjY1MGMwZThiYjc5ZjUwMzc0MzYzMjM1MGIwMDoNCj4gDQo+IMKgIGNvcmUt
aW1hZ2UtY2dsOiBSZW1vdmUgUk9PVEZTX1BLR01BTkFHRV9CT09UU1RSQVAgKDIwMTctMDUtMjQN
Cj4gMTQ6MTk6MTMgKzAyMDApDQo+IA0KPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBnaXQgcmVwb3Np
dG9yeSBhdDoNCj4gDQo+IMKgIGh0dHBzOi8vZ2l0aHViLmNvbS9qYWNraWVoam0vbWV0YS1jZ2wu
Z2l0IGpodWFuZzAvdXBfcmVzb3VyY2UtDQo+IGFnZW50c18xNzA2MDJfMA0KPiDCoCBodHRwczov
L2dpdGh1Yi5jb20vL3RyZWUvamh1YW5nMC91cF9yZXNvdXJjZS1hZ2VudHNfMTcwNjAyXzANCj4g
DQo+IEphY2tpZSBIdWFuZyAoNCk6DQo+IMKgIHJlc291cmNlLWFnZW50czogZml4IGRlcGVuZGVu
Y2llcw0KPiDCoCByZXNvdXJjZS1hZ2VudHM6IGZpeCBpbnN0YWxsLXNoIG5vdCBmb3VuZA0KPiDC
oCByZXNvdXJjZS1hZ2VudHM6IGZpeCBidWlsZHMgZXJyb3Igd2hlbiBTICE9IEINCj4gwqAgcmVz
b3VyY2UtYWdlbnRzOiB1cGRhdGUgdG8gdmVyc2lvbiA0LjAuMQ0KPiANCj4gwqAuLi4vcmVzb3Vy
Y2UtYWdlbnRzL2ZpeC1pbnN0YWxsLXNoLW5vdC1mb3VuZC5wYXRjaCB8IDYwDQo+ICsrKysrKysr
KysrKysrKysrKysrKysNCj4gwqAuLi51aWxkcy13aGVuLXNyY2Rpci1hbmQtYnVpbGRkaXItYXJl
LXNlcGVyYS5wYXRjaCB8IDM5DQo+ICsrKysrKysrKysrKysrDQo+IMKgLi4uY2UtYWdlbnRzXzMu
OS43LmJiID0+IHJlc291cmNlLWFnZW50c180LjAuMS5iYn0gfCAyMCArKysrKystLQ0KPiDCoDMg
ZmlsZXMgY2hhbmdlZCwgMTE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IMKgY3Jl
YXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291
cmNlLQ0KPiBhZ2VudHMvcmVzb3VyY2UtYWdlbnRzL2ZpeC1pbnN0YWxsLXNoLW5vdC1mb3VuZC5w
YXRjaA0KPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBtZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wv
Y2x1c3Rlci1yZXNvdXJjZS0NCj4gYWdlbnRzL3Jlc291cmNlLWFnZW50cy9mcy5zaC1maXgtYnVp
bGRzLXdoZW4tc3JjZGlyLWFuZC1idWlsZGRpci1hcmUtDQo+IHNlcGVyYS5wYXRjaA0KPiDCoHJl
bmFtZSBtZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS0NCj4gYWdl
bnRzL3tyZXNvdXJjZS1hZ2VudHNfMy45LjcuYmIgPT4gcmVzb3VyY2UtYWdlbnRzXzQuMC4xLmJi
fSAoODIlKQ0KPiANCj4gLS3CoA0KPiAyLjExLjANCj4gDQoNClNhbWUgaGVyZSwgcGF0Y2hzZXQg
aXMgb2sgYnV0IHlvdSBuZWVkIHRvIHJlYmFzZSBvbiB0b3Agb2YgbWFzdGVyDQpsYXRlc3QuDQoN
CkJlc3QgcmVnYXJkcywNCi0tQWRyaWFu

