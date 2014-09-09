Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FEC4E007A0; Tue,  9 Sep 2014 04:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4679 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Sep 2014 04:59:07 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0107.outbound.protection.outlook.com [157.56.110.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5665CE00781
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 04:59:07 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.0.1024.12; Tue, 9 Sep 2014 10:25:58 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) with Microsoft
	SMTP Server (TLS) id 15.0.1024.12; Tue, 9 Sep 2014 10:25:57 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.227]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.227]) with mapi id
	15.00.1024.012; Tue, 9 Sep 2014 10:25:57 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] is there a list of yocto-supported dev kits somewhere?
Thread-Index: AQHPwpMnOzf/+oVDAU6tun0xYJr8p5vlpSUAgAAEhACAAHTuAIABUz2AgABKxgCAAANOAIAABdAAgAEre4CACaIn4IAGCpMAgAAFSvA=
Date: Tue, 9 Sep 2014 10:25:56 +0000
Message-ID: <2031ebaa345645e4af6d634f7d7ed131@BLUPR05MB037.namprd05.prod.outlook.com>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
	<alpine.LFD.2.11.1408291157030.10554@localhost>
	<5400A8C8.4050605@gmail.com>
	<alpine.LFD.2.11.1408300610240.10330@localhost>
	<d146424575834e06b8e11657f0c89d50@BLUPR05MB037.namprd05.prod.outlook.com>
	<alpine.LFD.2.11.1409090536210.25504@localhost>
In-Reply-To: <alpine.LFD.2.11.1409090536210.25504@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 001DD7E70080B6001DD934
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [24.33.89.57]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;UriScan:;
x-forefront-prvs: 0329B15C8A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019018)(6009001)(189002)(13464003)(51704005)(377454003)(199003)(24454002)(15395725005)(110136001)(101416001)(77982001)(76576001)(107046002)(83072002)(105586002)(15202345003)(85852003)(106356001)(4396001)(106116001)(21056001)(93886004)(87936001)(33646002)(83322001)(85306004)(90102001)(19580395003)(108616004)(19580405001)(16601075003)(74316001)(79102001)(2656002)(86362001)(77096002)(46102001)(99396002)(50986999)(54356999)(76176999)(95666004)(99286002)(92566001)(74662001)(15975445006)(74502001)(97736003)(76482001)(31966008)(81542001)(81342001)(66066001)(20776003)(80022001)(64706001)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB037;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"nicolas.ferre@atmel.com" <nicolas.ferre@atmel.com>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Tue, 09 Sep 2014 11:59:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9iZXJ0LA0KDQpJJ20gY29weWluZyBOaWNvbGFzIEZlcnJlIGZyb20gQXRtZWwsIHRoZSBtYWlu
IG1haW50YWluZXIgb2YgdGhlaXIgbWV0YSBsYXllciwgaW4gY2FzZSBhbnl0aGluZyBJIHNheSBu
ZWVkcyBjb3JyZWN0aW9uLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IFJvYmVydCBQLiBKLiBEYXkgW21haWx0bzpycGpkYXlAY3Jhc2hjb3Vyc2UuY2FdDQo+IFNlbnQ6
IFR1ZXNkYXksIFNlcHRlbWJlciAwOSwgMjAxNCA1OjM3IEFNDQo+IFRvOiBCcnlhbiBFdmVuc29u
DQo+IENjOiBTdmVuIEViZW5mZWxkOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6
IFJFOiBbeW9jdG9dIGlzIHRoZXJlIGEgbGlzdCBvZiB5b2N0by1zdXBwb3J0ZWQgZGV2IGtpdHMg
c29tZXdoZXJlPw0KPiANCj4gT24gRnJpLCA1IFNlcCAyMDE0LCBCcnlhbiBFdmVuc29uIHdyb3Rl
Og0KPiANCj4gPiBSb2JlcnQsDQo+ID4NCj4gPiBBdG1lbCBoYXMgdGhlaXIgb3duIGJvYXJkIHN1
cHBvcnQgbGF5ZXIgdGhhdCB0aGV5IGhhdmUgbm90IHN1Ym1pdHRlZA0KPiA+IGFzIGFuIG9mZmlj
aWFsIFlvY3RvIFByb2plY3QgQlNQLiAgVGhlaXIgbGF5ZXIgc3VwcG9ydHMgdGhlaXINCj4gPiBB
VDkxU0FNOXg1LUVLIHNlcmllcyBhbmQgdGhlaXIgU0FNQTVEMyBzZXJpZXMgZXZhbHVhdGlvbiBr
aXRzLg0KPiA+IEkndmUgYmVlbiB1c2luZyB0aGVpciBBVDkxU0FNOUcyNS1FSyBraXQgZm9yIG15
IHJlZmVyZW5jZSBkZXNpZ24uDQo+ID4gU2luY2UgQXRtZWwgZG9lc24ndCBoYXZlIGEgQlNQIHRo
YXQgaXMgb2ZmaWNpYWxseSBzdXBwb3J0ZWQgYnkgdGhlDQo+ID4gWW9jdG8gUHJvamVjdCwgSSdt
IG5vdCBzdXJlIHdoZXRoZXIgaXQgYmVsb25ncyB3aXRoIHlvdXIgbGlzdCBvciBub3QuDQo+IA0K
PiAgIHNvcnJ5IGZvciB0aGUgZGVsYXksIHdhcyBlbWJlZGRlZCAocHVuIGludGVuZGVkIDotKSBp
biBhbm90aGVyIHByb2plY3QuIGkNCj4gZG9uJ3QgdGhpbmsgaXQncyBuZWNlc3NhcnkgZm9yIGEg
bGF5ZXIgdG8gYmUgYW4gIm9mZmljaWFsIg0KPiB5b2N0byBsYXllciwgc28gbXVjaCBhcyBpdCBq
dXN0IG5lZWRzIHRvIHdvcmsgb3V0IG9mIHRoZSBib3ggZm9yIGEgZGV2IGtpdC4NCj4gDQo+ICAg
c28gaWYgeW91J3ZlIHVzZWQgdGhpcyBsYXllciBhbmQgaXQgd29ya3MganVzdCBmaW5lLCBpJ2xs
IGFkZCBpdCB0byBteSBsaXN0LiBqdXN0DQo+IHBvaW50IG1lIGF0IHRoZSByZWxldmFudCBpbmZv
Lg0KPiANCg0KQXRtZWwncyBsYXllciBpcyBhdCBodHRwczovL2dpdGh1Yi5jb20vbGludXg0c2Ft
L21ldGEtYXRtZWwuICBUaGVpciBtYWluIHN1cHBvcnQgd2lraSBpcyBsb2NhdGVkIGF0IGh0dHA6
Ly93d3cuYXQ5MS5jb20vbGludXg0c2FtL2Jpbi92aWV3L0xpbnV4NFNBTS8sIHdpdGggdGhlIFlv
Y3RvLXNwZWNpZmljIG1hdGVyaWFsIGxvY2F0ZWQgYXQgaHR0cDovL3d3dy5hdDkxLmNvbS9saW51
eDRzYW0vYmluL3ZpZXcvTGludXg0U0FNL1lvY3RvUHJvamVjdC4gIExldCBtZSBrbm93IGlmIHlv
dSB3ZXJlIGxvb2tpbmcgZm9yIHNvbWUgbW9yZSBpbmZvcm1hdGlvbiBmb3IgdGhpcyBsaXN0DQoN
ClJlZ2FyZHMsDQpCcnlhbiAgIA0KDQo+IHJkYXkNCj4gDQo+IC0tDQo+IA0KPiA9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ID09PT09
PT09PT09PT09DQo+IFJvYmVydCBQLiBKLiBEYXkgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBPdHRhd2EsIE9udGFyaW8sIENBTkFEQQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICBo
dHRwOi8vY3Jhc2hjb3Vyc2UuY2ENCj4gDQo+IFR3aXR0ZXI6ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaHR0cDovL3R3aXR0ZXIuY29tL3JwamRheQ0KPiBMaW5rZWRJbjog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaHR0cDovL2NhLmxpbmtlZGluLmNvbS9pbi9y
cGpkYXkNCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQ0KPiA9PT09PT09PT09PT09PQ0KDQo=

