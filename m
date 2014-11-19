Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB6A1E008FB; Wed, 19 Nov 2014 07:12:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0109.outbound.protection.outlook.com [157.56.110.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E1E5E008F2
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 07:12:14 -0800 (PST)
Received: from BY2PR05MB048.namprd05.prod.outlook.com (10.242.34.156) by
	BY2PR05MB048.namprd05.prod.outlook.com (10.242.34.156) with Microsoft
	SMTP Server (TLS) id 15.1.16.15; Wed, 19 Nov 2014 15:12:09 +0000
Received: from BY2PR05MB048.namprd05.prod.outlook.com ([169.254.9.224]) by
	BY2PR05MB048.namprd05.prod.outlook.com ([169.254.9.152]) with mapi id
	15.01.0016.006; Wed, 19 Nov 2014 15:12:09 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"elizabeth.flanagan@intel.com" <elizabeth.flanagan@intel.com>
Thread-Topic: autobuilder: How to set PREMIRRORS?
Thread-Index: Ac//SnMU4cyS3XABQce6M1Hid22YVgDIzViQAGcGIQA=
Date: Wed, 19 Nov 2014 15:12:08 +0000
Message-ID: <7686657984f84a938af3bdb15ef65992@BY2PR05MB048.namprd05.prod.outlook.com>
References: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
	<40cfd0ca83f94c9eb826ab2573d41453@BLUPR05MB037.namprd05.prod.outlook.com>
In-Reply-To: <40cfd0ca83f94c9eb826ab2573d41453@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 007C98C700886C007C9A14
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BY2PR05MB048;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BY2PR05MB048;
x-forefront-prvs: 04004D94E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(51704005)(189002)(377454003)(199003)(13464003)(62966003)(66066001)(74316001)(20776003)(107046002)(64706001)(95666004)(40100003)(106356001)(120916001)(97736003)(105586002)(99396003)(46102003)(77156002)(122556002)(77096003)(33646002)(76576001)(107886001)(99286002)(31966008)(2656002)(21056001)(92566001)(101416001)(19580405001)(50986999)(54356999)(19580395003)(76176999)(87936001)(86362001)(15202345003)(2501002)(108616004)(4396001)(15975445006)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR05MB048;
	H:BY2PR05MB048.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Re: autobuilder: How to set PREMIRRORS?
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
X-List-Received-Date: Wed, 19 Nov 2014 15:12:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpJJ20gZ2V0dGluZyBjbG9zZSB0byBpbXBsZW1lbnRpbmcgdGhpcyBmZWF0dXJlLCBi
dXQgSSdtIGhhdmluZyBzb21lIGlzc3VlcyBnZXR0aW5nIGF1dG8uY29uZiBmb3JtYXR0ZWQgY29y
cmVjdGx5LiAgU2VlIGJlbG93Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IEJyeWFuIEV2ZW5zb24NCj4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciAxNywgMjAxNCA5OjA4
IEFNDQo+IFRvOiBCcnlhbiBFdmVuc29uOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBlbGl6YWJl
dGguZmxhbmFnYW5AaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJFOiBhdXRvYnVpbGRlcjogSG93IHRv
IHNldCBQUkVNSVJST1JTPw0KPiANCj4gQWxsLA0KPiANCj4gQWZ0ZXIgbG9va2luZyB0aHJvdWdo
IHRoZSBhdXRvYnVpbGRlciBjb2RlLCBJIGRvbid0IHNlZSBhbnl3aGVyZSBpbiB3aGljaA0KPiBQ
UkVNSVJST1JTIGNhbiBiZSBzZXQgYW5kIHVzZWQuICBJIHNlZSBpbiBDcmVhdGVBdXRvQ29uZi5w
eSB0aGF0DQo+IFBSRU1JUlJPUlMgaXMgYWx3YXlzIHNldCB0byAiIi4gIEkgZG9uJ3QgdGhpbmsg
aXQnZCBiZSB0aGF0IGRpZmZpY3VsdCB0byBhZGQNCj4gUFJFTUlSUk9SUyBhcyBhIENyZWF0ZUF1
dG9Db25mIHBhcmFtZXRlciBmb3IgdGhlIGJ1aWxkc2V0cy4gIEkgY2FuIHdvcmsNCj4gb24gdGhl
IGNoYW5nZSBhbmQgc3VibWl0IHRoZSBwYXRjaC4gIEJ1dCBiZWZvcmUgSSBzdGFydCBJIGhhdmUg
YSBmZXcNCj4gcXVlc3Rpb25zOg0KPiANCj4gMS4gSSBwbGFuIG9uIGltcGxlbWVudGluZyB0aGUg
UFJFTUlSUk9SUyBwYXJhbWV0ZXIgYXMgYW4gYXJyYXksIHNpbWlsYXIgdG8NCj4gJ2xheWVyZGly
cycgZm9yIENyZWF0ZUJCTGF5ZXJzQ29uZi4gIEZvciBleGFtcGxlOg0KPiANCj4geydDcmVhdGVB
dXRvQ29uZicgOiB7J1BSRU1JUlJPUlMnIDogWydnaXQ6Ly8uKi8uKg0KPiBodHRwOi8vb3VyL2xv
Y2FsL21pcnJvci9wYXRoL21pcnJvci9zb3VyY2VzLyAnLA0KPiAJJ2Z0cDovLy4qLy4qIGh0dHA6
Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGggL21pcnJvci9zb3VyY2VzLyAnLA0KPiAJJ2h0dHA6Ly8u
Ki8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21pcnJvci9zb3VyY2VzLyAnLA0KPiAJ
J2h0dHBzOi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNl
cy8gJ119DQo+IA0KPiB3b3VsZCBhZGQgdGhlIGZvbGxvd2luZyB0byBhdXRvLmNvbmY6DQo+IA0K
PiAgUFJFTUlSUk9SUyA9ICdnaXQ6Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRo
L21pcnJvci9zb3VyY2VzLyAgXA0KPiAgCWZ0cDovLy4qLy4qIGh0dHA6Ly9vdXIvbG9jYWwvbWly
cm9yL3BhdGggL21pcnJvci9zb3VyY2VzLyAgXA0KPiAgCWh0dHA6Ly8uKi8uKiBodHRwOi8vb3Vy
L2xvY2FsL21pcnJvci9wYXRoL21pcnJvci9zb3VyY2VzLyAgXA0KPiAgCWh0dHBzOi8vLiovLiog
aHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8gJw0KPiANCj4gRG9l
cyB0aGlzIHNvdW5kIHJlYXNvbmFibGUsIG9yIHdvdWxkIGEgZGlmZmVyZW50IHBhcmFtZXRlciBm
b3JtYXQgYmUNCj4gcHJlZmVycmVkPw0KDQpJIGFtIHRyeWluZyB0byBhZGQgYSBzaW5nbGUgUFJF
TUlSUk9SIHVzaW5nIHRoZSBzeW50YXggSSBzcGVjaWZpZWQgYWJvdmUuICBBdCB0aGlzIHRpbWUg
aXQgaXMgZ2V0dGluZyBpbnNlcnRlZCBpbiBhdXRvLmNvbmYuICBIb3dldmVyLCB0aGUgc3lzdGVt
IGlzIGdvaW5nIGludG8gYW4gaW5maW5pdGUgbG9vcCBidWlsZGluZyB0aGUgUFJFTUlSUk9SIHBh
dGguICBUaGUgYWRkZWQgY29udGVudCB0byBhdXRvLmNvbmYgYXQgdGhpcyB0aW1lIGxvb2tzIGxp
a2U6DQoNClBSRU1JUlJPUlMgPSAiIFwgDQpodHRwOi8vLiouKiBodHRwOi8vc2VydmVyLnJlcG8u
bG9jYWwvbWlycm9yL3NvdXJjZXMvIFxuIFwgDQoiDQoNCkFuZCBmcm9tIGxvb2tpbmcgYXQgbG9n
LmRvX2ZldGNoIGZvciB0aGUgcGFja2FnZSB0aGF0IGF0dGVtcHRzIHRvIHVzZSB0aGUgUFJFTUlS
Uk9SLCB0aGUgbG9nIGlzIGZpbGxlZCB3aXRoICJzZXJ2ZXIucmVwby5sb2NhbHNlcnZlci5yZXBv
LmxvY2Fsc2VydmVyLnJlcG8ubG9jYWwiIHJlcGVhdGluZy4gIEFueSB0aXBzIG9uIGhvdyBQUkVN
SVJST1JTIHNob3VsZCBiZSBidWlsdD8NCg0KSGVyZSdzIHdoYXQgSSBoYXZlIHNvIGZhciBpbiBD
cmVhdGVBdXRvQ29uZi5weToNCg0KICAgICAgICAgICAgc2VsZi5QUkVNSVJST1JTPSIiDQogICAg
ICAgICAgICBmb3V0ID0gZm91dCArICdQUkVNSVJST1JTID0gIiBcIFxuJw0KICAgICAgICAgICAg
aWYgbGlzdChzZWxmLlBSRU1JUlJPUlMpOg0KICAgICAgICAgICAgICAgIGZvciBwcmVtaXJyb3Ig
aW4gc2VsZi5QUkVNSVJST1JTOg0KICAgICAgICAgICAgICAgICAgICBmb3V0ID0gZm91dCArIHBy
ZW1pcnJvciArICcgXFxcXG4gXCBcbicNCiAgICAgICAgICAgIGZvdXQgPSBmb3V0ICsgJyIgXG4n
DQoNCkFueSB0aXBzIG9uIGhvdyB0byBjaGFuZ2UgdGhpbmdzIHNvIFBSRU1JUlJPUlMgaXMgY29y
cmVjdGx5IHBhcnNlZD8NCg0KVGhhbmtzLA0KQnJ5YW4NCg0K

