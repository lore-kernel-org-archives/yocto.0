Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.103])
 by mx.groups.io with SMTP id smtpd.web11.13088.1582124637511830027
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 07:03:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=ZOG9/qHB;
 spf=pass (domain: microsoft.com, ip: 40.107.21.103, mailfrom: peter.morrow@microsoft.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HY/pz6U0ulU73IRk6wgNEF5lxirTer9Zehd1SvYBvF1iltShEyi1TcoyUrWbfNTslhf2p2dF2DxROVo+DepDvIUMEAf22SMjz4LA89iY7gMLb5WlmGLXZrFT4CXP2/0x70j/Nu2mFsdyDTfWT33qWw3beRYGu7zO0fT0KP2H7VKJOUyvOIIuSV0ufoPiTouOK5WOLeXFwYxmOufFRsnTAx9kWlVtB0/B2u6IQ/EC/DBrOUUFkYLogJYV0gQ4m/iVyrSn1EEM9AmFRKAdQemfCb+HACkIY/iypc30nqCTthVY7Hm4gMiOoP8Mu6J1ctj26nqk6wmW8F/jZvBEs7WOIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3B8OIjhwJfaNYdqlNN41Y9yGkao4Vu2UmKahYGevlYg=;
 b=DWv4xNZ4E5/AnPFyOld6rsozqw7OppHGicLBkeLioVh6PDlL5ymnt3xZfkiW7OWjRzpGA1wnUSjJdG8vqVC3x/deoKxRK3vQLz0FSmQonvvV+2+BwJOKxzN8L6c27y4VG3eiQdLM5wjQcmd5RfUUhIN0rpFlHACBaveGLdsNhSNhP7Hyp8S+30nLBeJNDJEpc3npwuZpXDHXaW9D9WQAoyolpQuKVhALg6uHvRZT7s+GCmuCTOa+ZKobUeWEhBS18vYFCfStM82heYEdPFuOIhFJIzhYvxWlHcVOUAu5xLifLz+RxdfgMRQNZvJpEcZdSbeCZx0Sh0O0oqL8EU29ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3B8OIjhwJfaNYdqlNN41Y9yGkao4Vu2UmKahYGevlYg=;
 b=ZOG9/qHBq6327a1hhxv6ErnhLhIEN3DqDkW+FxHMcnxeTXb/VAT++ISYu9mWuTWRjeWeIsdSDrABZViDmq11CF87BD3jj1eolm26jZZbQelcD/U+Y8c0gA9VkX+Uayzo22Au+wzil8xPn1thKo61i47myw0hnFbO7Olg2Inv1K4=
Received: from AM6PR83MB0229.EURPRD83.prod.outlook.com (52.135.181.148) by
 AM6PR83MB0245.EURPRD83.prod.outlook.com (52.135.181.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.2; Wed, 19 Feb 2020 15:03:54 +0000
Received: from AM6PR83MB0229.EURPRD83.prod.outlook.com
 ([fe80::21f5:43b0:d188:93e7]) by AM6PR83MB0229.EURPRD83.prod.outlook.com
 ([fe80::21f5:43b0:d188:93e7%13]) with mapi id 15.20.2772.004; Wed, 19 Feb
 2020 15:03:54 +0000
From: "Peter Morrow" <peter.morrow@microsoft.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"maciej.pijanowski@3mdeb.com" <maciej.pijanowski@3mdeb.com>
Subject: Re: [yocto] package QA & missing runtime dependency alerting (thud)
Thread-Topic: [yocto] package QA & missing runtime dependency alerting (thud)
Thread-Index: AQHV5yMvqZ3i4i8JeUydlpgUTAYkvKgiizQAgAASZIA=
Date: Wed, 19 Feb 2020 15:03:53 +0000
Message-ID: <f8179a84ccb4971832670d63e36ac825065a7854.camel@microsoft.com>
References: <657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com>
	 <21588212-fd68-abcd-4350-36972fd33f54@3mdeb.com>
In-Reply-To: <21588212-fd68-abcd-4350-36972fd33f54@3mdeb.com>
Reply-To: Peter Morrow <Peter.Morrow@microsoft.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Morrow@microsoft.com; 
x-originating-ip: [88.215.3.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9f0dfed2-d84a-4de9-4b77-08d7b54cefdc
x-ms-traffictypediagnostic: AM6PR83MB0245:
x-microsoft-antispam-prvs: 
 <AM6PR83MB024596390935E6D42EDCC13D83100@AM6PR83MB0245.EURPRD83.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(199004)(189003)(316002)(66476007)(110136005)(81156014)(81166006)(66446008)(8936002)(76116006)(36756003)(66556008)(64756008)(15650500001)(8676002)(91956017)(66946007)(86362001)(71200400001)(26005)(2906002)(6506007)(53546011)(6512007)(10290500003)(3450700001)(186003)(5660300002)(966005)(478600001)(2616005)(6486002);DIR:OUT;SFP:1102;SCL:1;SRVR:AM6PR83MB0245;H:AM6PR83MB0229.EURPRD83.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3zrXt0GUrvr4wH2zDB308HuLwptEn2yDnX66ViaFJgLB4px8MbozRNWmZNF+fYBrHOp6hsKg/ePHY6C/ySgEyMPzZcKRdTn0/7q6HiZKY1Q4XstDe5uN++CIED/8e/dQfzASlTO+4NGcDX2BMNbjj2KDVIQi3NfPIHK4Tm6tKQbtmMeG+oC+B403b5aXWNAPJ0nzJbs2rCOaXW1CeEh4DD8GUfT6HtR0FJCywRNMt7g8uFrta2STS8g1F3+wEarxC0xKWsf+j1f7vy7SXYu6QoUUFSUH7AyCijv0jAUvWSotzZaYEq/W0FZarSwe3U7d7WM/OKhMi2Wai2BAzEVOrwmrJo6D5hR0MHlNtyq3swj8JterBHcKaL4E41xWA7DdG2o7R9ZcM+1r4e0tnQjSV+6x6A2CT2mE8RIWDzAaDgRaOCx5eTkk4p5kyWuY9rfSsIIjTW1S3UAMOb1R/QfcbD0m/BT890mwOeMEWCPTEdTuNIGNZdrGtyqy2sgfXW6fRswDLylYWSuOL2mcfuhH6w==
x-ms-exchange-antispam-messagedata: 
 7JagmPkGVnmdPiq2WojPj/p0IRzPiwcObyFIPLli13RqShinOQo9qbHEvug4BdbYRP14QdF8pnxZ8xjMGQiZecuoCk4SK8cH/PwS7GL2fBoyUritrkSiU+CvyTnZaBYVPAdl+0WE6N+PCeJYKRGL1A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f0dfed2-d84a-4de9-4b77-08d7b54cefdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 15:03:53.9999
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4PrEIPhSpIVu+atwu6gBGq8kho6vuZBdCfjmbugtXPvCzDnGDwdady8ZH1BbBe0F6QnRhu0VeHon/ggMwLKVaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR83MB0245
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B9823A5C12B867458A7501414EED3EDA@EURPRD83.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDIwLTAyLTE5IGF0IDE0OjU5ICswMTAwLCBNYWNpZWogUGlqYW5vd3NraSB2aWEN
Ckxpc3RzLllvY3RvcHJvamVjdC5Pcmcgd3JvdGU6DQo+IA0KPiANCj4gT24gMTkuMDIuMjAyMCAx
Mzo1MCwgUGV0ZXIgTW9ycm93IHZpYSBMaXN0cy5Zb2N0b3Byb2plY3QuT3JnIHdyb3RlOg0KPiAN
Cj4gPiBIZWxsbywNCj4gPiANCj4gPiBXZSBvY2Nhc2lvbmFsbHkgc2VlIG91ciBidWlsZCBmYWls
IGR1ZSB0byBwYWNrYWdlIFFBIGlzc3VlcywNCj4gPiBzcGVjaWZpY2FsbHk6DQo+ID4gDQo+ID4g
RVJST1I6IGdhd2stNC4yLjEtcjAgZG9fcGFja2FnZV9xYTogUUEgSXNzdWU6DQo+ID4gL3Vzci9s
aWIvZ2F3ay9wdGVzdC90ZXN0L2ZjYWxsX2V4aXQuYXdrIGNvbnRhaW5lZCBpbiBwYWNrYWdlIGdh
d2stDQo+ID4gcHRlc3QgDQo+ID4gcmVxdWlyZXMgL2Jpbi9hd2ssIGJ1dCBubyBwcm92aWRlcnMg
Zm91bmQgaW4gUkRFUEVORFNfZ2F3ay1wdGVzdD8NCj4gPiBbZmlsZS1yZGVwc10sIA0KPiA+IA0K
PiA+IEknbSB3b25kZXJpbmcgaG93IHlvY3RvIGhhcyBtYWRlIHRoZSBkZWNpc2lvbiB0aGF0ICIv
YmluL2F3ayIgaXMgYQ0KPiA+IHJ1bnRpbWUgZGVwZW5kZW5jeSBmb3IgZ2F3ay1wdGVzdCAoaXQg
aXMsIHNvIHRoaXMgaXMgZ29vZCkuICBEb2VzDQo+ID4geW9jdG8gcmVhZCAvdXNyL2xpYi9nYXdr
L3B0ZXN0L3Rlc3QvZmNhbGxfZXhpdC5hd2sgbG9va2luZyBmb3INCj4gPiBhbnl0aGluZw0KPiA+
IHRoYXQgbWF0Y2hlcyBvbiBhIHNoYmFuZyB0aGVuIGFsZXJ0IHVzIHRvIHRoaXMgYXMgYSBtaXNz
aW5nDQo+ID4gUkRFUEVORFM/DQo+ICBZZXMsIGl0IGRvZXMgbG9vayBhdCB0aGUgc2hlYWJhbmdz
IG9mIHRoZSBzY3JpcHRzLiBQbGVhc2UgcmVmZXIgdG8NCj4gdGhlIG1hbnVhbA0KPiBhbmQgdGhl
IGluc2FuZS5iYmNsYXNzIGltZXBsZW1lbnRhdGlvbg0KPiBodHRwczovL3d3dy55b2N0b3Byb2pl
Y3Qub3JnL2RvY3MvbGF0ZXN0L21lZ2EtbWFudWFsL21lZ2EtbWFudWFsLmh0bWwjcmVmLWNsYXNz
ZXMtaW5zYW5lDQoNClRoYW5rcyBNYWNpZWosDQoNCkknbSB3b25kZXJpbmcgYWxzbyBhYm91dCB0
aGUgc3BlY2lmaWMgZmFpbHVyZSBJJ20gc2VlaW5nIGhlcmUsIGkuZS4NCmdhd2stcHRlc3QgUkRF
UEVORFMgb24gL2Jpbi9hd2suICBMb29raW5nIGF0IHRoZSByZWNpcGUgZm9yIGdhd2sgaW4NCnRo
dWQgSSBzZWU6DQoNCmluaGVyaXQgYXV0b3Rvb2xzIGdldHRleHQgdGV4aW5mbyB1cGRhdGUtYWx0
ZXJuYXRpdmVzDQoNCkZJTEVTXyR7UE59ICs9ICIke2RhdGFkaXJ9L2F3ayINCkZJTEVTXyR7UE59
LWRldiArPSAiJHtsaWJkaXJ9LyR7QlBOfS8qLmxhIg0KDQpBTFRFUk5BVElWRV8ke1BOfSA9ICJh
d2siDQpBTFRFUk5BVElWRV9UQVJHRVRbYXdrXSA9ICIke2JpbmRpcn0vZ2F3ayINCkFMVEVSTkFU
SVZFX1BSSU9SSVRZID0gIjEwMCINCg0KZG9faW5zdGFsbF9hcHBlbmQoKSB7DQogICAgIyByZW1v
dmUgdGhlIGxpbmsgc2luY2Ugd2UgZG9uJ3QgcGFja2FnZSBpdA0KICAgIHJtICR7RH0ke2JpbmRp
cn0vYXdrDQp9DQoNClNvIGF3ayBpcyBhbiBhbHRlcm5hdGl2ZSBmb3IgZ2F3ay4gIEluIHRoZSB2
ZXJzaW9uIG9mIHlvY3RvIEknbSB1c2luZw0KKHRodWQpIHRoZSBwdGVzdC5iYmNsYXNzIGRvZXMg
bm90IGFkZCBhIGRlcGVuZGVuY3kgb24gdGhlIHBhY2thZ2UgdGhhdA0KaXMgYmVpbmcgdGVzdGVk
ICh0aGlzIGFwcGVhcnMgZml4ZWQgaW4gbW9yZSByZWNlbnQgdmVyc2lvbnMgb2YgeW9jdG8pLg0K
VGh1cyBJIGFkZGVkIHRoZSBkZXBlbmRlbmN5IG9uIGdhd2sgZnJvbSBnYXdrLXB0ZXN0IGluIGEg
YmJhcHBlbmQgZmlsZQ0KZm9yIGdhd2sgKHRvIGZpeCBvdGhlciBwYWNrYWdlIFFBIGlzc3Vlcyk6
DQoNClJERVBFTkRTXyR7UE59LXB0ZXN0ICs9ICIgZ2F3ayINCg0KU28gdGhlIHF1ZXN0aW9uIHRo
ZW4gYmVjb21lcyBhcmUgYWx0ZXJuYXRpdmVzIGFsc28gaG9ub3VyZWQgaW4gdGhlDQpmaWxlLXJk
ZXBzIGNoZWNrIG9mIHRoZSBpbnNhbmUgYmJjbGFzcz8gIEkuZS4gaWYgYSBmaWxlLXJkZXBzIGNo
ZWNrDQpmaW5kcyAvYmluL2F3ayBpbiBhIGZpbGUsIHNpbmNlICJhd2siIGlzIG5vdCBleHBsaWNp
dGx5IGluIHRoZSBSREVQRU5EUw0KbGlzdCAoYnV0IGdhd2sgaXMpIGlzIHRoaXMgZmxhZ2dlZCBh
cyBhIGZhbHNlIHBvc2l0aXZlPw0KDQpJJ2QgcHJlZmVyIG5vdCB0byBhZGQgSU5TQU5FX1NLSVBf
JHtQTn0gPSAiZmlsZS1yZGVwcyIgZm9yIGdhd2sgaWYNCnBvc3NpYmxlLg0KDQpUaGFua3MsDQpQ
ZXRlci4NCg0KPiA+IEkgdGhpbmsgdGhpcyBpcyB3aGF0IGlzIGhhcHBlbmluZyBidXQgY2Fubm90
IHNlZSB0aGlzIGluIHRoZQ0KPiA+IGRvY3VtZW50YXRpb24gZXJyb3IuICBTb21ldGhpbmcgdG8g
YmFjayB0aGlzIGh1bmNoIHVwOg0KPiA+IA0KPiA+IGh0dHA6Ly9saXN0cy5vcGVuZW1iZWRkZWQu
b3JnL3BpcGVybWFpbC9vcGVuZW1iZWRkZWQtY29yZS8yMDE2LU5vdmVtYmVyLzEyODQxOS5odG1s
DQo+ID4gDQo+ID4gDQo+ID4gSSdtIGFib3V0IHRvIHNlbmQgcGF0Y2hlcyB1cHN0cmVhbSB0byBn
YXdrIHRvIHJlbW92ZSBzb21lIG1vcmUNCj4gPiBzaGJhbmdzDQo+ID4gZnJvbSBhd2sgc2NyaXB0
cyBhbmQgdGh1cyB3b3VsZCBsaWtlIHRvIGNoZWNrIHRoZSB5b2N0byBiZWhhdmlvdXINCj4gPiBi
ZWZvcmUgSSBkbyBzby4NCj4gPiANCj4gPiBUaGFua3MsDQo+ID4gUGV0ZXIuDQo+ID4gDQo+ID4g
DQo+ID4gDQo+ID4gDQo+ID4gDQo+IA0KPiAtLSANCj4gTWFjaWVqIFBpamFub3dza2kNCj4gRW1i
ZWRkZWQgU3lzdGVtcyBFbmdpbmVlcg0KPiBHUEc6IDk5NjNDMzZBQUMzQjJCNDYNCj4gaHR0cHM6
Ly8zbWRlYi5jb20NCj4gIHwgQDNtZGViX2NvbQ0KPiANCj4gDQoNCg==
