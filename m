Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB6C4E00830; Mon, 17 Nov 2014 06:22:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.140 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0140.outbound.protection.outlook.com [157.56.110.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13062E0072A
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 06:22:47 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) with Microsoft
	SMTP Server (TLS) id 15.1.16.15; Mon, 17 Nov 2014 14:08:26 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.98]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.98]) with mapi id
	15.01.0016.006; Mon, 17 Nov 2014 14:08:26 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "elizabeth.flanagan@intel.com"
	<elizabeth.flanagan@intel.com>
Thread-Topic: autobuilder: How to set PREMIRRORS?
Thread-Index: Ac//SnMU4cyS3XABQce6M1Hid22YVgDIzViQ
Date: Mon, 17 Nov 2014 14:08:26 +0000
Message-ID: <40cfd0ca83f94c9eb826ab2573d41453@BLUPR05MB037.namprd05.prod.outlook.com>
References: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
In-Reply-To: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 003EA026008836003EA173
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB040;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB040;
x-forefront-prvs: 03982FDC1D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(199003)(189002)(2501002)(19580395003)(2201001)(76176999)(105586002)(106356001)(77156002)(54356999)(77096003)(62966003)(50986999)(92566001)(86362001)(76576001)(99286002)(108616004)(97736003)(95666004)(87936001)(107886001)(107046002)(2656002)(101416001)(21056001)(122556002)(74316001)(64706001)(66066001)(46102003)(33646002)(99396003)(4396001)(15202345003)(31966008)(120916001)(40100003)(15975445006)(20776003)(7059030)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB040;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
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
X-List-Received-Date: Mon, 17 Nov 2014 14:22:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpBZnRlciBsb29raW5nIHRocm91Z2ggdGhlIGF1dG9idWlsZGVyIGNvZGUsIEkgZG9u
J3Qgc2VlIGFueXdoZXJlIGluIHdoaWNoIFBSRU1JUlJPUlMgY2FuIGJlIHNldCBhbmQgdXNlZC4g
IEkgc2VlIGluIENyZWF0ZUF1dG9Db25mLnB5IHRoYXQgUFJFTUlSUk9SUyBpcyBhbHdheXMgc2V0
IHRvICIiLiAgSSBkb24ndCB0aGluayBpdCdkIGJlIHRoYXQgZGlmZmljdWx0IHRvIGFkZCBQUkVN
SVJST1JTIGFzIGEgQ3JlYXRlQXV0b0NvbmYgcGFyYW1ldGVyIGZvciB0aGUgYnVpbGRzZXRzLiAg
SSBjYW4gd29yayBvbiB0aGUgY2hhbmdlIGFuZCBzdWJtaXQgdGhlIHBhdGNoLiAgQnV0IGJlZm9y
ZSBJIHN0YXJ0IEkgaGF2ZSBhIGZldyBxdWVzdGlvbnM6DQoNCjEuIEkgcGxhbiBvbiBpbXBsZW1l
bnRpbmcgdGhlIFBSRU1JUlJPUlMgcGFyYW1ldGVyIGFzIGFuIGFycmF5LCBzaW1pbGFyIHRvICds
YXllcmRpcnMnIGZvciBDcmVhdGVCQkxheWVyc0NvbmYuICBGb3IgZXhhbXBsZToNCg0KeydDcmVh
dGVBdXRvQ29uZicgOiB7J1BSRU1JUlJPUlMnIDogWydnaXQ6Ly8uKi8uKiBodHRwOi8vb3VyL2xv
Y2FsL21pcnJvci9wYXRoL21pcnJvci9zb3VyY2VzLyAnLA0KCSdmdHA6Ly8uKi8uKiBodHRwOi8v
b3VyL2xvY2FsL21pcnJvci9wYXRoIC9taXJyb3Ivc291cmNlcy8gJywNCgknaHR0cDovLy4qLy4q
IGh0dHA6Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvICcsDQoJJ2h0dHBz
Oi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8gJ119
DQoNCndvdWxkIGFkZCB0aGUgZm9sbG93aW5nIHRvIGF1dG8uY29uZjoNCg0KIFBSRU1JUlJPUlMg
PSAnZ2l0Oi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNl
cy8gIFwNCiAJZnRwOi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aCAvbWlycm9y
L3NvdXJjZXMvICBcDQogCWh0dHA6Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRo
L21pcnJvci9zb3VyY2VzLyAgXA0KIAlodHRwczovLy4qLy4qIGh0dHA6Ly9vdXIvbG9jYWwvbWly
cm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvICcNCg0KRG9lcyB0aGlzIHNvdW5kIHJlYXNvbmFibGUs
IG9yIHdvdWxkIGEgZGlmZmVyZW50IHBhcmFtZXRlciBmb3JtYXQgYmUgcHJlZmVycmVkPw0KDQoy
LiBTaG91bGQgdGhlIGZpbmFsIHRleHQgaW4gYXV0by5jb25mIGJlICdQUkVNSVJST1JTID0nIG9y
ICdQUkVNSVJST1JTICs9Jz8gIFNpbmNlIHRoZXJlIGlzIG5vIG90aGVyIHdheSB0byBhZGQgdG8g
UFJFTUlSUk9SUyB0aGF0IEkgY2FuIHNlZSwgSSBkb24ndCBrbm93IGlmIGl0IG1hdHRlcnMgb3Ig
bm90Lg0KDQozLiBJIHNlZSB0aGVyZSBpcyBub3cgYW4gaHRtbCBkb2N1bWVudCBmb3IgYXV0b2J1
aWxkZXIuICBTaG91bGQgYW55IGFkZGl0aW9ucyBzdGlsbCBiZSBkb2N1bWVudGVkIGluIFJFQURN
RS1ORVctQVVUT0JVSUxERVIgb3IgaXMgdGhhdCBmaWxlIGJlaW5nIGFiYW5kb25lZD8NCg0KVGhh
bmtzLA0KQnJ5YW4NCg==

