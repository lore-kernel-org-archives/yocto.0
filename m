Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CA29E00B8D; Sun, 18 Mar 2018 18:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882E2E00857
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 18:51:22 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2J1pFX7015020
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 18 Mar 2018 18:51:15 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.201]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0361.001;
	Sun, 18 Mar 2018 18:51:15 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Khem Raj <raj.khem@gmail.com>, Kosta Zertsekel <KZertsekel@advaoptical.com>
Thread-Topic: [yocto] Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgaPW/52A///IbzA=
Date: Mon, 19 Mar 2018 01:51:14 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA015868FE2E@ALA-MBD.corp.ad.wrs.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
	<CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
In-Reply-To: <CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.181]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhou,
	Li" <Li.Zhou@windriver.com>, "Enache,
	Catalin" <Catalin.Enache@windriver.com>
Subject: Re: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Mon, 19 Mar 2018 01:51:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogW21haWx0
bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMTksIDIwMTggMDU6
NTQNCj4gVG86IEtvc3RhIFplcnRzZWtlbA0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsg
SHVhbmcsIEppZSAoSmFja2llKTsgRW5hY2hlLCBDYXRhbGluOyBaaG91LCBMaQ0KPiBTdWJqZWN0
OiBSZTogW3lvY3RvXSBGaXggJ1BBQ0tBR0VTJyBpbiBuZXQtc25tcCByZWNpcGUNCj4gDQo+IE9u
IFNhdCwgTWFyIDE3LCAyMDE4IGF0IDExOjQ2IFBNLCBLb3N0YSBaZXJ0c2VrZWwNCj4gPEtaZXJ0
c2VrZWxAYWR2YW9wdGljYWwuY29tPiB3cm90ZToNCj4gPiBIaSBndXlzLA0KPiA+DQo+ID4NCj4g
PiBBcyBmb3Igbm93IChtYXN0ZXIgYnJhbmNoKSAnUEFDS0FHRVMnIHZhcmlhYmxlIGluIG5ldC1z
bm1wIGVxdWFscyB0bzoNCj4gPg0KPiA+IGBgYA0KPiA+DQo+ID4gJCBiaXRiYWtlIC1lIG5ldC1z
bm1wIHwgZ3JlcCAiXlBBQ0tBR0VTPSINCj4gPg0KPiA+IFBBQ0tBR0VTPSJuZXQtc25tcC1kYmcg
bmV0LXNubXAtc3RhdGljZGV2IG5ldC1zbm1wLWRldiBuZXQtc25tcC1kb2MNCj4gPiBuZXQtc25t
cC1sb2NhbGUgIG5ldC1zbm1wIG5ldC1zbm1wLWxpYnMgbmV0LXNubXAtbWlicyBuZXQtc25tcC1z
ZXJ2ZXINCj4gPiBuZXQtc25tcC1jbGllbnQgbmV0LXNubXAtc2VydmVyLXNubXBkIG5ldC1zbm1w
LXNlcnZlci1zbm1wdHJhcGQgIg0KPiA+IGBgYA0KPiA+DQo+ID4gVGhpcyBzZWVtcyB0byBiZSB3
cm9uZyBhcyBtYW55IGJ1aWx0IHBhY2thZ2VzIGZyb20gJ3BhY2thZ2VzLXNwbGl0Jw0KPiA+IGRp
cmVjdG9yeSBvZiBuZXQtc25tcCBhcmUgZW1wdHk6DQo+ID4NCj4gPiBgYGANCj4gPiAkIGR1IC1h
IC0tbWF4LWRlcHRoPTEgLiB8IHNvcnQgLW4NCj4gPiA0ICAgIC4vbmV0LXNubXANCj4gPiA0ICAg
IC4vbmV0LXNubXAtY2xpZW50LnNobGliZGVwcw0KPiA+IDQgICAgLi9uZXQtc25tcC1kb2MNCj4g
PiA0ICAgIC4vbmV0LXNubXAtbGlicy5zaGxpYmRlcHMNCj4gPiA0ICAgIC4vbmV0LXNubXAtbG9j
YWxlDQo+ID4gNCAgICAuL25ldC1zbm1wLXNlcnZlcg0KPiA+IDQgICAgLi9uZXQtc25tcC1zZXJ2
ZXItc25tcGQuc2hsaWJkZXBzDQo+ID4gNCAgICAuL25ldC1zbm1wLXNlcnZlci1zbm1wdHJhcGQu
c2hsaWJkZXBzDQo+ID4gNCAgICAuL25ldC1zbm1wLXN0YXRpY2Rldg0KPiA+IDQ4ICAgIC4vbmV0
LXNubXAtc2VydmVyLXNubXB0cmFwZA0KPiA+IDcyICAgIC4vbmV0LXNubXAtc2VydmVyLXNubXBk
DQo+ID4gMTIwOCAgICAuL25ldC1zbm1wLWRldg0KPiA+IDE0ODAgICAgLi9uZXQtc25tcC1jbGll
bnQNCj4gPiAxODEyICAgIC4vbmV0LXNubXAtbWlicw0KPiA+IDI4NzIgICAgLi9uZXQtc25tcC1s
aWJzDQo+ID4gMTUzMDggICAgLi9uZXQtc25tcC1kYmcNCj4gPiBgYGANCj4gPg0KPiA+IFdlbGws
IHRoZSBjdWxwcml0IGNvbW1pdCBpcyA1ZWVjMDYxNWU1NDhmNThlY2RmYWRmYzQ1YWY1ODA1ZWVi
NThmNjljIHdoZXJlDQo+ID4gdGhlIGJlbG93IGNoYW5nZSBoYXMgaGFwcGVuZWQ6DQo+ID4gYGBg
DQo+ID4gLVBBQ0tBR0VTID0gIiR7UE59LWRiZyAke1BOfS1kb2MgJHtQTn0tZGV2ICR7UE59LXN0
YXRpY2RldiAke1BOfS1zdGF0aWMNCj4gPiAke1BOfS1saWJzIFwNCj4gPiAtICAgICAgICAgICAg
JHtQTn0tbWlicyAke1BOfS1zZXJ2ZXIgJHtQTn0tY2xpZW50ICR7UE59LXNlcnZlci1zbm1wZA0K
PiA+ICR7UE59LXNlcnZlci1zbm1wdHJhcGQiDQo+ID4gK1BBQ0tBR0VTICs9ICIke1BOfS1saWJz
ICR7UE59LW1pYnMgJHtQTn0tc2VydmVyICR7UE59LWNsaWVudA0KPiA+ICR7UE59LXNlcnZlci1z
bm1wZCAke1BOfS1zZXJ2ZXItc25tcHRyYXBkIg0KPiA+IGBgYA0KPiA+DQo+ID4gVGhpcyBuZXcg
J1BBQ0tBR0VTJyB2YXJpYWJsZSBpcyB3cm9uZyBJTUhPLCBiZWNhdXNlIGl0IGNvbnRhaW5zDQo+
ID4gdGhlICduZXQtc25tcCcgcGFja2FnZSBhbmQgb3RoZXIgZW1wdHkgcGFja2FnZXMuDQo+ID4N
Cj4gPg0KPiA+IFBsZWFzZSByZXZpZXcgKGFuZCBhcHBseSBpZiBvaykgdGhlIGF0dGFjaGVkIGNv
bW1pdCB0aGF0IGZpeGVzIGl0Lg0KPiA+DQo+IA0KPiBhcmUgdGhlcmUgc3BlY2lmaWMgaXNzdWUg
eW91IGFyZSBzZWVpbmcgYmVzaWRlcyB0aGUgcGFja2FnZXMgYmVpbmcgZW1wdHkgPw0KPiBJIHdv
dWxkIHN1Z2dlc3QgdG8gYXBwbHkgX3JlbW92ZSBvcGVyYXRpb24gdG8gcmVtb3ZlIHRoZSBlbXB0
eSBwYWNrYWdlcw0KPiBpZiBuZWVkZWQgZnJvbSBQQUNLQUdFUyB2YXJpYWJsZQ0KDQpJIGFncmVl
LCBJIGRvbid0IHRoaW5rIGl0J3MgYW4gaXNzdWUgdGhhdCB0aGUgcGFja2FnZXMgYmVpbmcgZW1w
dHksIGFuZCBhY3R1YWxseSB0aGV5J3JlIGhhbmRsZWQgcHJvcGVybHkgd2l0aDoNCg0KQUxMT1df
RU1QVFlfJHtQTn0gPSAiMSINCkFMTE9XX0VNUFRZXyR7UE59LXNlcnZlciA9ICIxIg0KDQpSREVQ
RU5EU18ke1BOfSArPSAiJHtAYmIudXRpbHMuY29udGFpbnMoJ1BBQ0tBR0VDT05GSUcnLCAncGVy
bCcsICduZXQtc25tcC1wZXJsLW1vZHVsZXMnLCAnJywgZCl9Ig0KUkRFUEVORFNfJHtQTn0gKz0g
Im5ldC1zbm1wLWNsaWVudCINClJERVBFTkRTXyR7UE59LXNlcnZlciArPSAibmV0LXNubXAtc2Vy
dmVyLXNubXBkIG5ldC1zbm1wLXNlcnZlci1zbm1wdHJhcGQiDQoNClNvIHlvdSBjYW4gYXNzdW1l
IHRoYXQgIm5ldC1zbm1wIiA9ICJuZXQtc25tcC1jbGllbnQiICggcGx1cyAnbmV0LXNubXAtcGVy
bC1tb2R1bGVzJyBpZiAncGVybCcgcGFja2dlY29uZmlnIA0KaXMgZW5hYmxlZCApLCBhbmQgIm5l
dC1zbm1wLXNlcnZlciIgPSAiIG5ldC1zbm1wLXNlcnZlci1zbm1wZCIgKyAibmV0LXNubXAtc2Vy
dmVyLXNubXB0cmFwZCAiDQoNClRoYW5rcywNCkphY2tpZQ0KDQo+IA0KPiA+DQo+ID4gVGhhbmtz
LA0KPiA+DQo+ID4gLS0tIEtvc3RhIFouDQo+ID4NCj4gPg0KPiA+IC0tDQo+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5n
IGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0
b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+ID4NCg==

