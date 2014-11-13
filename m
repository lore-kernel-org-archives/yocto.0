Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 255F2E008CC; Thu, 13 Nov 2014 06:19:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.117 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0117.outbound.protection.outlook.com [157.56.110.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D17CCE00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 06:19:09 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) with Microsoft
	SMTP Server (TLS) id 15.1.16.15; Thu, 13 Nov 2014 14:19:04 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.98]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.98]) with mapi id
	15.01.0016.006; Thu, 13 Nov 2014 14:19:04 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: autobuilder: How to set PREMIRRORS?
Thread-Index: Ac//SnMU4cyS3XABQce6M1Hid22YVg==
Date: Thu, 13 Nov 2014 14:19:04 +0000
Message-ID: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 005B3D010087C0005B3E4E
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB037;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB037;
x-forefront-prvs: 0394259C80
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(164054003)(199003)(2501002)(21056001)(86362001)(99396003)(97736003)(120916001)(87936001)(2656002)(46102003)(19580395003)(101416001)(4396001)(15975445006)(54356999)(62966003)(77096003)(77156002)(50986999)(450100001)(66066001)(20776003)(64706001)(15202345003)(74316001)(33646002)(108616004)(99286002)(110136001)(95666004)(107886001)(2351001)(107046002)(229853001)(40100003)(106356001)(105586002)(76576001)(122556002)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB037;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:3; A:3; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: autobuilder: How to set PREMIRRORS?
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
X-List-Received-Date: Thu, 13 Nov 2014 14:19:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIG15IGF1dG9idWlsZGVyLCBJIGFtIHNldHRpbmcgdXAgYSBsb2NhbCBtaXJyb3IgdG8gaG9s
ZCBzb3VyY2VzIGZvciBwYWNrYWdlcyB0aGF0IGhhdmUgYmVlbiB1bnJlbGlhYmxlIGZvciBkb3du
bG9hZC4gIEZvciBteSBkYXktdG8tZGF5IHdvcmssIEkgaGF2ZSBzZXR1cCB0aGUgUFJFTUlSUk9S
UyBpbiBteSBsb2NhbC5jb25mIGFzIHN1Z2dlc3RlZCBpbiB0aGUgbGF0ZXN0IFlvY3RvIG1hbnVh
bCBhbmQgaXQgaGFzIGJlZW4gd29ya2luZyBmaW5lLiAgSSBhbSB0cnlpbmcgdG8gZ2V0IG15IGF1
dG9idWlsZGVyIHRvIHVzZSB0aGUgUFJFTUlSUk9SUyBhbmQgSSBhbSBoYXZpbmcgaXNzdWVzIHNp
bmNlIHRoZSBhdXRvYnVpbGRlciBkb2VzIG5vdCBtb2RpZnkgbG9jYWwuY29uZi4gIEkgaGF2ZSBv
bmUgcGFja2FnZSB0aGF0IGF0IHRoaXMgdGltZSBpcyBvbmx5IGF2YWlsYWJsZSBhdCBvdXIgbG9j
YWwgbWlycm9yLCBzbyB0ZXN0aW5nIGhhcyBhdCBsZWFzdCBiZWVuIGVhc3kuDQoNCkkgaGF2ZSB0
cmllZCBhZGRpbmcgdGhlIFBSRU1JUlJPUlMgdG8gdGhlIEJ1aWxkU2V0dGluZ3Mgc2VjdGlvbiBv
ZiBhdXRvYnVpbGRlci5jb25mIGFzIGZvbGxvd3M6DQpQUkVNSVJST1JTID0gJ2dpdDovLy4qLy4q
IGh0dHA6Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvIFxuIFwNCglmdHA6
Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoIC9taXJyb3Ivc291cmNlcy8gXG4g
XA0KCWh0dHA6Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21pcnJvci9zb3Vy
Y2VzLyBcbiBcDQoJaHR0cHM6Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21p
cnJvci9zb3VyY2VzLyBcbicNCg0KTXkgc2V0dGluZ3Mgc2hvd2VkIHVwIG9uIHRoZSBpbml0aWFs
IGxpc3Qgb2YgZW52aXJvbm1lbnQgdmFyaWFibGVzIGJ1dCB0aGUgc3lzdGVtIGJ1dCB0aGUgYnVp
bGQgZGlkIG5vdCBmZXRjaCBzb3VyY2UgZnJvbSBvdXIgbG9jYWwgbWlycm9yLiAgSSB0aGVuIHRy
aWVkIGFkZGluZyBhIFBSRU1JUlJPUlMgc3RyaW5nIGluIHRoZSBDcmVhdGVBdXRvQ29uZiBzdGVw
IGZvciBhIGJ1aWxkIGFzIGZvbGxvd3M6DQoNCidQUkVNSVJST1JTJyA6IFsnZ2l0Oi8vLiovLiog
aHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8gXG4nLA0KICAgICAn
ZnRwOi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aCAvbWlycm9yL3NvdXJjZXMv
IFxuJywNCiAgICAgJ2h0dHA6Ly8uKi8uKiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21p
cnJvci9zb3VyY2VzLyBcbicsDQogICAgICdodHRwczovLy4qLy4qIGh0dHA6Ly9vdXIvbG9jYWwv
bWlycm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvIFxuJ10NCg0KQnV0IFBSRU1JUlJPUlMgcmVtYWlu
ZWQgZW1wdHkgaW4gdGhlIGdlbmVyYXRlZCBhdXRvLmNvbmYuICBJIGhhdmUgbm90IHB1bGxlZCBp
biB1cGRhdGVzIGZvciBhdXRvYnVpbGRlciBmb3IgYSBmZXcgbW9udGhzLCBidXQgSSBkb24ndCBz
ZWUgYW55IGNoYW5nZXMgaW4gdGhlIGxvZ3MgdGhhdCBsb29rIGxpa2UgYXJlIHJlbGF0ZWQgdG8g
dGhlIFBSRU1JUlJPUlMgdmFyaWFibGUuDQoNCklzIHRoZXJlIGEgd2F5IHRvIGFkZCBQUkVNSVJS
T1JTIHRvIGEgYnVpbGQncyBjb25maWd1cmF0aW9uPyAgSWYgc28sIGhvdyBkbyB5b3UgZG8gaXQ/
DQoNClRoYW5rcywNCkJyeWFuDQo=

