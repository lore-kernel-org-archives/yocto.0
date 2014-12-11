Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1AE8E00521; Thu, 11 Dec 2014 09:11:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 947 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Dec 2014 09:11:48 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0127.outbound.protection.outlook.com [65.55.169.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F9D2E00521;
	Thu, 11 Dec 2014 09:11:48 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.1.31.17; Thu, 11 Dec 2014 16:55:58 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.210]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.210]) with mapi id
	15.01.0031.000; Thu, 11 Dec 2014 16:55:58 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"elizabeth.flanagan@intel.com" <elizabeth.flanagan@intel.com>,
	"michael@yoctoproject.org" <michael@yoctoproject.org>
Thread-Topic: [yocto-autobuilder][GIT PULL] autobuilder: Build history
	modifications
Thread-Index: AdAVYlo7X+VKCUBXTTuaBI7+IcqnZg==
Date: Thu, 11 Dec 2014 16:55:57 +0000
Message-ID: <BLUPR05MB037FA0F1CAC302C613E98F3BB630@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB038;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB038;
x-forefront-prvs: 0422860ED4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(377424004)(189002)(101416001)(122556002)(40100003)(54206007)(99396003)(120916001)(33656002)(54356999)(50986999)(97736003)(54606007)(99286002)(21056001)(106356001)(74316001)(2501002)(105586002)(46102003)(2201001)(92566001)(77156002)(62966003)(86362001)(107046002)(4396001)(229853001)(19580395003)(102836002)(87936001)(2656002)(68736005)(15975445007)(20776003)(64706001)(31966008)(76576001)(66066001)(7059030);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: [yocto-autobuilder][GIT PULL] autobuilder: Build history modifications
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
X-List-Received-Date: Thu, 11 Dec 2014 17:11:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QmVsb3cgaXMgYSBwdWxsIHJlcXVlc3QgZm9yIHNvbWUgZml4ZXMgaW4gZW5hYmxpbmcgYnVpbGQg
aGlzdG9yeSBpbiB0aGUgYXV0b2J1aWxkZXIuDQpJJ20gdXNpbmcgYSBwdWxsIHJlcXVlc3QgdGhp
cyB0aW1lIGFzIG9uZSBsaW5lIGluIHRoZSBzZWNvbmQgY29tbWl0IGlzIGxvbmcgZW5vdWdoDQp0
aGF0IGl0IG1pZ2h0IGdldCB0cnVuY2F0ZWQgaW4gZS1tYWlsLg0KDQpUaGUgZmlyc3QgY29tbWl0
IHdhcyBuZWVkZWQgaW4gbXkgdGVzdGluZyB0byBlbmFibGUgYnVpbGQgaGlzdG9yeS4gIEJlZm9y
ZSB0aGlzDQpjb21taXQsIHRoZSBidWlsZHNldCBuZWVkZWQgdG8gYmUgdXNpbmcgcG9reS9tYXN0
ZXIgdG8gZW5hYmxlIGJ1aWxkIGhpc3RvcnkgZm9yDQp0aGF0IGJ1aWxkc2V0LiAgVGhlIHNlY29u
ZCBwYXRjaCBhZGRzIGRvY3VtZW50YXRpb24gb24gaG93IHRvIHNldHVwIGJ1aWxkDQpoaXN0b3J5
Lg0KDQpSZWdhcmRzLA0KQnJ5YW4NCg0KVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1p
dCBlODE4M2RlNmZmNzFkYjIzYTNiMDRjZGRkZTVhZTQyMTJhZTRlNjc3Og0KDQogIERvY3VtZW50
YXRpb246IERvY3VtZW50IEdpdFBvbGxlciBjaGFuZ2Vzb3VyY2UgKDIwMTQtMTItMDggMTU6NDU6
MTggLTA4MDApDQoNCmFyZSBhdmFpbGFibGUgaW4gdGhlIGdpdCByZXBvc2l0b3J5IGF0Og0KDQog
IGh0dHBzOi8vZ2l0aHViLmNvbS9ldmVuc29uYnJ5YW4veW9jdG8tYXV0b2J1aWxkZXIuZ2l0IGV2
ZW5zb25icnlhbi9jb250cmliDQoNCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBmZjE2
ZWFjYjQ0MDdkNTRjODgxOGM5YmFlY2MwMDBiZmRmNjgwYWFkOg0KDQogIERvY3VtZW50YXRpb246
IEFkZCBidWlsZCBoaXN0b3J5IGRvY3VtZW50YXRpb24gKDIwMTQtMTItMTEgMTA6Mzc6NTggLTA1
MDApDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCkJyeWFuIEV2ZW5zb24gKDIpOg0KICAgICAgQ3JlYXRlQXV0b0NvbmYu
cHk6IE1vZGlmeSBidWlsZCBoaXN0b3J5IGluY2x1c2lvbg0KICAgICAgRG9jdW1lbnRhdGlvbjog
QWRkIGJ1aWxkIGhpc3RvcnkgZG9jdW1lbnRhdGlvbg0KDQogZG9jcy9Zb2N0b0F1dG9idWlsZGVy
RGV2ZWxvcGVyc0RvY3VtZW50Lmh0bWwgICAgICAgfCAgICA2ICsrKystLQ0KIC4uLi9hdXRvYnVp
bGRlci9idWlsZHN0ZXBzL0NyZWF0ZUF1dG9Db25mLnB5ICAgICAgIHwgICAgMiArLQ0KIDIgZmls
ZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0K

