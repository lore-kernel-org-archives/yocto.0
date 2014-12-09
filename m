Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DDCCE00931; Tue,  9 Dec 2014 05:26:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.110.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0102.outbound.protection.outlook.com [157.56.110.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED01FE0090E
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 05:26:33 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) with Microsoft
	SMTP Server (TLS) id 15.1.31.17; Tue, 9 Dec 2014 13:26:30 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.110]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.110]) with mapi id
	15.01.0031.000; Tue, 9 Dec 2014 13:26:30 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [autobuilder][PATCH 0/2] GitPoller changesource improvements
Thread-Index: AQHQEJ/rWzyO627/c0eHKBDxnD50H5yGbhAAgADW25A=
Date: Tue, 9 Dec 2014 13:26:30 +0000
Message-ID: <BLUPR05MB037FF40669BF4F3CC924C3DBB650@BLUPR05MB037.namprd05.prod.outlook.com>
References: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
	<CAPhnLPCyfRZ+SPG0pPJxs=20LqwWzoWxnRTwXRkM6zBZtj5Qnw@mail.gmail.com>
In-Reply-To: <CAPhnLPCyfRZ+SPG0pPJxs=20LqwWzoWxnRTwXRkM6zBZtj5Qnw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 000C840D008AD8000C855A
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB040;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB040;
x-forefront-prvs: 0420213CCD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(13464003)(52604005)(51704005)(377454003)(24454002)(189002)(41574002)(54606007)(97736003)(106356001)(2656002)(64706001)(66066001)(74316001)(120916001)(107046002)(77156002)(62966003)(19580395003)(21056001)(54206007)(54356999)(101416001)(20776003)(86362001)(575784001)(105586002)(102836002)(68736005)(4396001)(92566001)(46102003)(87936001)(19580405001)(110136001)(40100003)(50986999)(122556002)(76176999)(33656002)(76576001)(99286002)(31966008)(106116001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB040;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	California L Sullivan <california.l.sullivan@intel.com>
Subject: Re: [autobuilder][PATCH 0/2] GitPoller changesource improvements
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
X-List-Received-Date: Tue, 09 Dec 2014 13:26:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RWxpemFiZXRoLA0KDQpUaGFua3MgZm9yIHB1bGxpbmcgaW4gbXkgY29tbWl0cywgYnV0IGl0IGlz
IGluY29tcGxldGUuICBUaGUgdG9wIHR3byBjb21taXRzIGZyb20gdGhlIHN1bGxpY2FsL2NvbnRy
aWIgYnJhbmNoIGFyZSBuZWVkZWQgYmVmb3JlIHRoZSBHaXRQb2xsZXIgY2hhbmdlc291cmNlIHdp
bGwgd29yay4gIFNwZWNpZmljYWxseSwgdGhleSBhcmUgY29tbWl0cyBlY2YxYjg3MTZkN2U2OTVh
ODg5NzZiYmE3NDdhZjVjNWJiZTAwMDdmIGFuZCBjMGFhYzVjNDE1Nzk3YWFjNWMyMDRiMmI3MGVl
NWE4OTZkNzZmZmRjLiAgT25jZSB0aGVzZSBhcmUgaW4gcGxhY2UgdGhlIEdpdFBvbGxlciBjaGFu
Z2Vzb3VyY2Ugc2hvdWxkIHdvcmsuDQoNClJlZ2FyZHMsDQpCcnlhbg0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEZsYW5hZ2FuLCBFbGl6YWJldGggW21haWx0bzplbGl6
YWJldGguZmxhbmFnYW5AaW50ZWwuY29tXQ0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDA4LCAy
MDE0IDc6MzMgUE0NCj4gVG86IEJyeWFuIEV2ZW5zb24NCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmc7IENhbGlmb3JuaWEgTCBTdWxsaXZhbg0KPiBTdWJqZWN0OiBSZTogW2F1dG9idWlsZGVy
XVtQQVRDSCAwLzJdIEdpdFBvbGxlciBjaGFuZ2Vzb3VyY2UgaW1wcm92ZW1lbnRzDQo+IA0KPiBQ
dWxsZWQgaW50byBtYXN0ZXIsIHRoYW5rcyENCj4gDQo+IC1iDQo+IA0KPiBPbiBGcmksIERlYyA1
LCAyMDE0IGF0IDM6MjYgUE0sIEJyeWFuIEV2ZW5zb24gPGJldmVuc29uQG1lbGlua2NvcnAuY29t
Pg0KPiB3cm90ZToNCj4gPiBUaGVzZSBhcmUgZml4ZXMgb24gdG9wIG9mIENhbGlmb3JuaWEgU3Vs
bGl2YW4ncyB3b3JrIGZvciBhZGRpbmcgdGhlDQo+ID4gR2l0UG9sbGVyIGNoYW5nZXNvdXJjZS4g
IFdpdGggbXkgdGVzdGluZywgSSB3YXMgdW5hYmxlIHRvIGdldCB0aGUNCj4gPiBHaXRQb2xsZXIg
Y2hhbmdlc291cmNlIHRvIHdvcmsgdW50aWwgSSBhZGRlZCB0aGUgZmlyc3QgcGF0Y2guICBUaGUN
Cj4gPiBzZWNvbmQgcGF0Y2ggZG9jdW1lbnRzIGhvdyB0byB1c2UgdGhlIEdpdFBvbGxlciBjaGFu
Z2Vzb3VyY2UuDQo+ID4NCj4gPiBBcHBsaWVzIG9uIHRvcCBvZiBIRUFEIG9mIGdpdDovL2dpdC55
b2N0b3Byb2plY3Qub3JnL3lvY3RvLWF1dG9idWlsZGVyDQo+ID4gYnJhbmNoIHN1bGxpY2FsL2Nv
bnRyaWINCj4gPg0KPiA+IEJyeWFuIEV2ZW5zb24gKDIpOg0KPiA+ICAgQXV0b2J1aWxkZXIucHk6
IEltcG9ydCBnaXRwb2xsZXIgbW9kdWxlDQo+ID4gICBEb2N1bWVudGF0aW9uOiBEb2N1bWVudCBH
aXRQb2xsZXIgY2hhbmdlc291cmNlDQo+ID4NCj4gPiAgUkVBRE1FLU5FVy1BVVRPQlVJTERFUiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDM1ICsrKysrKysrKysrKysrKystLS0tDQo+
ID4gIGRvY3MvWW9jdG9BdXRvYnVpbGRlckRldmVsb3BlcnNEb2N1bWVudC5odG1sICAgICAgIHwg
ICAyNg0KPiArKysrKysrKysrKysrLS0NCj4gPiAgLi4uL3NpdGUtcGFja2FnZXMvYXV0b2J1aWxk
ZXIvQXV0b2J1aWxkZXIucHkgICAgICAgfCAgICAxICsNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1
NCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gLS0NCj4gPiAxLjcuOS41
DQo+ID4NCj4gDQo+IA0KPiANCj4gLS0NCj4gRWxpemFiZXRoIEZsYW5hZ2FuDQo+IFlvY3RvIFBy
b2plY3QNCj4gQnVpbGQgYW5kIFJlbGVhc2UNCg==

