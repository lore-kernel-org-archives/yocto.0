Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C3A0E00B8D; Sun, 18 Mar 2018 18:56:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E97CAE00873
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2018 18:56:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2J1ufHH015029
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 18 Mar 2018 18:56:41 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.201]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0361.001;
	Sun, 18 Mar 2018 18:56:28 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Khem Raj <raj.khem@gmail.com>, Kosta Zertsekel <KZertsekel@advaoptical.com>
Thread-Topic: [yocto] Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgaPW/52A///IbzCAAASyMA==
Date: Mon, 19 Mar 2018 01:56:28 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA015868FE71@ALA-MBD.corp.ad.wrs.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
	<CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com> 
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
X-List-Received-Date: Mon, 19 Mar 2018 01:56:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSHVhbmcsIEppZSAoSmFj
a2llKQ0KPiBTZW50OiBNb25kYXksIE1hcmNoIDE5LCAyMDE4IDA5OjUxDQo+IFRvOiAnS2hlbSBS
YWonOyBLb3N0YSBaZXJ0c2VrZWwNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEVuYWNo
ZSwgQ2F0YWxpbjsgWmhvdSwgTGkNCj4gU3ViamVjdDogUkU6IFt5b2N0b10gRml4ICdQQUNLQUdF
UycgaW4gbmV0LXNubXAgcmVjaXBlDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4gPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0N
Cj4gPiBTZW50OiBNb25kYXksIE1hcmNoIDE5LCAyMDE4IDA1OjU0DQo+ID4gVG86IEtvc3RhIFpl
cnRzZWtlbA0KPiA+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBIdWFuZywgSmllIChKYWNr
aWUpOyBFbmFjaGUsIENhdGFsaW47IFpob3UsIExpDQo+ID4gU3ViamVjdDogUmU6IFt5b2N0b10g
Rml4ICdQQUNLQUdFUycgaW4gbmV0LXNubXAgcmVjaXBlDQo+ID4NCj4gPiBPbiBTYXQsIE1hciAx
NywgMjAxOCBhdCAxMTo0NiBQTSwgS29zdGEgWmVydHNla2VsDQo+ID4gPEtaZXJ0c2VrZWxAYWR2
YW9wdGljYWwuY29tPiB3cm90ZToNCj4gPiA+IEhpIGd1eXMsDQo+ID4gPg0KPiA+ID4NCj4gPiA+
IEFzIGZvciBub3cgKG1hc3RlciBicmFuY2gpICdQQUNLQUdFUycgdmFyaWFibGUgaW4gbmV0LXNu
bXAgZXF1YWxzIHRvOg0KPiA+ID4NCj4gPiA+IGBgYA0KPiA+ID4NCj4gPiA+ICQgYml0YmFrZSAt
ZSBuZXQtc25tcCB8IGdyZXAgIl5QQUNLQUdFUz0iDQo+ID4gPg0KPiA+ID4gUEFDS0FHRVM9Im5l
dC1zbm1wLWRiZyBuZXQtc25tcC1zdGF0aWNkZXYgbmV0LXNubXAtZGV2IG5ldC1zbm1wLWRvYw0K
PiA+ID4gbmV0LXNubXAtbG9jYWxlICBuZXQtc25tcCBuZXQtc25tcC1saWJzIG5ldC1zbm1wLW1p
YnMgbmV0LXNubXAtc2VydmVyDQo+ID4gPiBuZXQtc25tcC1jbGllbnQgbmV0LXNubXAtc2VydmVy
LXNubXBkIG5ldC1zbm1wLXNlcnZlci1zbm1wdHJhcGQgIg0KPiA+ID4gYGBgDQo+ID4gPg0KPiA+
ID4gVGhpcyBzZWVtcyB0byBiZSB3cm9uZyBhcyBtYW55IGJ1aWx0IHBhY2thZ2VzIGZyb20gJ3Bh
Y2thZ2VzLXNwbGl0Jw0KPiA+ID4gZGlyZWN0b3J5IG9mIG5ldC1zbm1wIGFyZSBlbXB0eToNCj4g
PiA+DQo+ID4gPiBgYGANCj4gPiA+ICQgZHUgLWEgLS1tYXgtZGVwdGg9MSAuIHwgc29ydCAtbg0K
PiA+ID4gNCAgICAuL25ldC1zbm1wDQo+ID4gPiA0ICAgIC4vbmV0LXNubXAtY2xpZW50LnNobGli
ZGVwcw0KPiA+ID4gNCAgICAuL25ldC1zbm1wLWRvYw0KPiA+ID4gNCAgICAuL25ldC1zbm1wLWxp
YnMuc2hsaWJkZXBzDQo+ID4gPiA0ICAgIC4vbmV0LXNubXAtbG9jYWxlDQo+ID4gPiA0ICAgIC4v
bmV0LXNubXAtc2VydmVyDQo+ID4gPiA0ICAgIC4vbmV0LXNubXAtc2VydmVyLXNubXBkLnNobGli
ZGVwcw0KPiA+ID4gNCAgICAuL25ldC1zbm1wLXNlcnZlci1zbm1wdHJhcGQuc2hsaWJkZXBzDQo+
ID4gPiA0ICAgIC4vbmV0LXNubXAtc3RhdGljZGV2DQo+ID4gPiA0OCAgICAuL25ldC1zbm1wLXNl
cnZlci1zbm1wdHJhcGQNCj4gPiA+IDcyICAgIC4vbmV0LXNubXAtc2VydmVyLXNubXBkDQo+ID4g
PiAxMjA4ICAgIC4vbmV0LXNubXAtZGV2DQo+ID4gPiAxNDgwICAgIC4vbmV0LXNubXAtY2xpZW50
DQo+ID4gPiAxODEyICAgIC4vbmV0LXNubXAtbWlicw0KPiA+ID4gMjg3MiAgICAuL25ldC1zbm1w
LWxpYnMNCj4gPiA+IDE1MzA4ICAgIC4vbmV0LXNubXAtZGJnDQo+ID4gPiBgYGANCj4gPiA+DQo+
ID4gPiBXZWxsLCB0aGUgY3VscHJpdCBjb21taXQgaXMgNWVlYzA2MTVlNTQ4ZjU4ZWNkZmFkZmM0
NWFmNTgwNWVlYjU4ZjY5YyB3aGVyZQ0KPiA+ID4gdGhlIGJlbG93IGNoYW5nZSBoYXMgaGFwcGVu
ZWQ6DQo+ID4gPiBgYGANCj4gPiA+IC1QQUNLQUdFUyA9ICIke1BOfS1kYmcgJHtQTn0tZG9jICR7
UE59LWRldiAke1BOfS1zdGF0aWNkZXYgJHtQTn0tc3RhdGljDQo+ID4gPiAke1BOfS1saWJzIFwN
Cj4gPiA+IC0gICAgICAgICAgICAke1BOfS1taWJzICR7UE59LXNlcnZlciAke1BOfS1jbGllbnQg
JHtQTn0tc2VydmVyLXNubXBkDQo+ID4gPiAke1BOfS1zZXJ2ZXItc25tcHRyYXBkIg0KPiA+ID4g
K1BBQ0tBR0VTICs9ICIke1BOfS1saWJzICR7UE59LW1pYnMgJHtQTn0tc2VydmVyICR7UE59LWNs
aWVudA0KPiA+ID4gJHtQTn0tc2VydmVyLXNubXBkICR7UE59LXNlcnZlci1zbm1wdHJhcGQiDQo+
ID4gPiBgYGANCj4gPiA+DQo+ID4gPiBUaGlzIG5ldyAnUEFDS0FHRVMnIHZhcmlhYmxlIGlzIHdy
b25nIElNSE8sIGJlY2F1c2UgaXQgY29udGFpbnMNCj4gPiA+IHRoZSAnbmV0LXNubXAnIHBhY2th
Z2UgYW5kIG90aGVyIGVtcHR5IHBhY2thZ2VzLg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBQbGVhc2Ug
cmV2aWV3IChhbmQgYXBwbHkgaWYgb2spIHRoZSBhdHRhY2hlZCBjb21taXQgdGhhdCBmaXhlcyBp
dC4NCj4gPiA+DQo+ID4NCj4gPiBhcmUgdGhlcmUgc3BlY2lmaWMgaXNzdWUgeW91IGFyZSBzZWVp
bmcgYmVzaWRlcyB0aGUgcGFja2FnZXMgYmVpbmcgZW1wdHkgPw0KPiA+IEkgd291bGQgc3VnZ2Vz
dCB0byBhcHBseSBfcmVtb3ZlIG9wZXJhdGlvbiB0byByZW1vdmUgdGhlIGVtcHR5IHBhY2thZ2Vz
DQo+ID4gaWYgbmVlZGVkIGZyb20gUEFDS0FHRVMgdmFyaWFibGUNCj4gDQo+IEkgYWdyZWUsIEkg
ZG9uJ3QgdGhpbmsgaXQncyBhbiBpc3N1ZSB0aGF0IHRoZSBwYWNrYWdlcyBiZWluZyBlbXB0eSwg
YW5kIGFjdHVhbGx5IHRoZXkncmUgaGFuZGxlZCBwcm9wZXJseSB3aXRoOg0KPiANCj4gQUxMT1df
RU1QVFlfJHtQTn0gPSAiMSINCj4gQUxMT1dfRU1QVFlfJHtQTn0tc2VydmVyID0gIjEiDQo+IA0K
PiBSREVQRU5EU18ke1BOfSArPSAiJHtAYmIudXRpbHMuY29udGFpbnMoJ1BBQ0tBR0VDT05GSUcn
LCAncGVybCcsICduZXQtc25tcC1wZXJsLW1vZHVsZXMnLCAnJywgZCl9Ig0KPiBSREVQRU5EU18k
e1BOfSArPSAibmV0LXNubXAtY2xpZW50Ig0KPiBSREVQRU5EU18ke1BOfS1zZXJ2ZXIgKz0gIm5l
dC1zbm1wLXNlcnZlci1zbm1wZCBuZXQtc25tcC1zZXJ2ZXItc25tcHRyYXBkIg0KPiANCj4gU28g
eW91IGNhbiBhc3N1bWUgdGhhdCAibmV0LXNubXAiID0gIm5ldC1zbm1wLWNsaWVudCIgKCBwbHVz
ICduZXQtc25tcC1wZXJsLW1vZHVsZXMnIGlmICdwZXJsJyBwYWNrZ2Vjb25maWcNCj4gaXMgZW5h
YmxlZCApLCBhbmQgIm5ldC1zbm1wLXNlcnZlciIgPSAiIG5ldC1zbm1wLXNlcnZlci1zbm1wZCIg
KyAibmV0LXNubXAtc2VydmVyLXNubXB0cmFwZCAiDQoNCkFuZCBpZiB5b3UgcmVhbGx5IHdhbnQg
dG8gcmVtb3ZlIHRoZW0gd2l0aCBfcmVtb3ZlIG9wZXJhdGlvbnMsIHlvdSBtYXkgYWxzbyBuZWVk
IHRvIHJlbW92ZSB0aGUgUkRFUEVORFMuDQoNClRoYW5rcywNCkphY2tpZQ0KDQo+IA0KPiBUaGFu
a3MsDQo+IEphY2tpZQ0KPiANCj4gPg0KPiA+ID4NCj4gPiA+IFRoYW5rcywNCj4gPiA+DQo+ID4g
PiAtLS0gS29zdGEgWi4NCj4gPiA+DQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiB5b2N0byBtYWlsaW5n
IGxpc3QNCj4gPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiA+ID4NCg==

