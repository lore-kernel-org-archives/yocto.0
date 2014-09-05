Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E68B6E0078E; Fri,  5 Sep 2014 06:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.239 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0239.outbound.protection.outlook.com [207.46.163.239])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514E6E0034C
	for <yocto@yoctoproject.org>; Fri,  5 Sep 2014 06:35:43 -0700 (PDT)
Received: from BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) by
	BLUPR05MB530.namprd05.prod.outlook.com (10.141.29.147) with Microsoft
	SMTP Server (TLS) id 15.0.1019.16; Fri, 5 Sep 2014 13:35:39 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) with Microsoft
	SMTP Server (TLS) id 15.0.1019.16; Fri, 5 Sep 2014 13:35:33 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.161]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.161]) with mapi id
	15.00.1019.015; Fri, 5 Sep 2014 13:35:32 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Sven Ebenfeld
	<sven.ebenfeld@gmail.com>
Thread-Topic: [yocto] is there a list of yocto-supported dev kits somewhere?
Thread-Index: AQHPwpMnOzf/+oVDAU6tun0xYJr8p5vlpSUAgAAEhACAAHTuAIABUz2AgABKxgCAAANOAIAABdAAgAEre4CACaIn4A==
Date: Fri, 5 Sep 2014 13:35:32 +0000
Message-ID: <d146424575834e06b8e11657f0c89d50@BLUPR05MB037.namprd05.prod.outlook.com>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
	<alpine.LFD.2.11.1408291157030.10554@localhost>	<5400A8C8.4050605@gmail.com>
	<alpine.LFD.2.11.1408300610240.10330@localhost>
In-Reply-To: <alpine.LFD.2.11.1408300610240.10330@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 003043B400803C00304501
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;UriScan:;
x-forefront-prvs: 0325F6C77B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(189002)(199003)(51704005)(377454003)(13464003)(2656002)(80022001)(66066001)(81542001)(101416001)(81342001)(15975445006)(76576001)(77096002)(108616004)(87936001)(92566001)(93886004)(85306004)(4396001)(86362001)(16799955002)(85852003)(83072002)(21056001)(19580405001)(83322001)(64706001)(20776003)(16601075003)(33646002)(19580395003)(15202345003)(79102001)(99286002)(15395725005)(95666004)(106116001)(106356001)(90102001)(105586002)(74316001)(74662001)(31966008)(74502001)(76482001)(50986999)(77982001)(54356999)(76176999)(99396002)(46102001)(107046002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:BLUPR05MB040;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 05 Sep 2014 13:35:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9iZXJ0LA0KDQpBdG1lbCBoYXMgdGhlaXIgb3duIGJvYXJkIHN1cHBvcnQgbGF5ZXIgdGhhdCB0
aGV5IGhhdmUgbm90IHN1Ym1pdHRlZCBhcyBhbiBvZmZpY2lhbCBZb2N0byBQcm9qZWN0IEJTUC4g
IFRoZWlyIGxheWVyIHN1cHBvcnRzIHRoZWlyIEFUOTFTQU05eDUtRUsgc2VyaWVzIGFuZCB0aGVp
ciBTQU1BNUQzIHNlcmllcyBldmFsdWF0aW9uIGtpdHMuICBJJ3ZlIGJlZW4gdXNpbmcgdGhlaXIg
QVQ5MVNBTTlHMjUtRUsga2l0IGZvciBteSByZWZlcmVuY2UgZGVzaWduLiAgU2luY2UgQXRtZWwg
ZG9lc24ndCBoYXZlIGEgQlNQIHRoYXQgaXMgb2ZmaWNpYWxseSBzdXBwb3J0ZWQgYnkgdGhlIFlv
Y3RvIFByb2plY3QsIEknbSBub3Qgc3VyZSB3aGV0aGVyIGl0IGJlbG9uZ3Mgd2l0aCB5b3VyIGxp
c3Qgb3Igbm90Lg0KDQpSZWdhcmRzLA0KQnJ5YW4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiBGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0
by0NCj4gYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgUm9iZXJ0IFAuIEou
IERheQ0KPiBTZW50OiBTYXR1cmRheSwgQXVndXN0IDMwLCAyMDE0IDY6MTQgQU0NCj4gVG86IFN2
ZW4gRWJlbmZlbGQNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFt5b2N0b10gaXMgdGhlcmUgYSBsaXN0IG9mIHlvY3RvLXN1cHBvcnRlZCBkZXYga2l0cyBzb21l
d2hlcmU/DQo+IA0KPiANCj4gICB0b29rIG9ubHkgYSBmZXcgbWludXRlcywgaGVyZSdzIG15IGZp
cnN0IHBhc3MgYXQgYSBzaG9ydCBsaXN0IG9mIGFmZm9yZGFibGUgYW5kDQo+IFlQLWNvbXBhdGli
bGUoPykgZGV2IGtpdHM6DQo+IA0KPiBodHRwOi8vd3d3LmNyYXNoY291cnNlLmNhL3dpa2kvaW5k
ZXgucGhwL1lvY3RvX1Byb2plY3RfZGV2X2tpdHMNCj4gDQo+IG5vdCB0cnlpbmcgdG8gYmUgY29t
cGxldGUsIGp1c3QgdGhlIG9uZXMgaSBjb3VsZCB0aGluayBvZiBvZmYgdGhlIHRvcCBvZiBteQ0K
PiBoZWFkIHRoYXQgcmVwcmVzZW50IHNvbWUgdmFyaWV0eS4gdGhvdWdodHM/IHBlcmhhcHMgdGhl
IGludGVsIGFuZCBmcmVlc2NhbGUNCj4gcGVvcGxlIGNvdWxkIHN1Z2dlc3Qgb3RoZXIgcG9zc2li
aWxpdGllcy4NCj4gDQo+IHJkYXkNCj4gDQo+IC0tDQo+IA0KPiA9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ID09PT09PT09PT09PT09
DQo+IFJvYmVydCBQLiBKLiBEYXkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBPdHRh
d2EsIE9udGFyaW8sIENBTkFEQQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICBodHRwOi8vY3Jh
c2hjb3Vyc2UuY2ENCj4gDQo+IFR3aXR0ZXI6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaHR0cDovL3R3aXR0ZXIuY29tL3JwamRheQ0KPiBMaW5rZWRJbjogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaHR0cDovL2NhLmxpbmtlZGluLmNvbS9pbi9ycGpkYXkNCj4g
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPiA9PT09PT09PT09PT09PQ0KPiANCj4gLS0NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZv
L3lvY3RvDQo=

