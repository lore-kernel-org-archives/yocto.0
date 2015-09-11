Return-Path: <rcalhoun@shotspotter.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65270E00D58; Fri, 11 Sep 2015 09:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2074 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Sep 2015 09:01:42 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0086.outbound.protection.outlook.com [65.55.169.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB991E00C76
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 09:01:42 -0700 (PDT)
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com (10.160.64.139) by
	BY2PR0401MB0903.namprd04.prod.outlook.com (10.160.64.14) with Microsoft
	SMTP Server (TLS) id 15.1.268.17; Fri, 11 Sep 2015 15:27:05 +0000
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) by
	BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) with
	mapi id 15.01.0268.017; Fri, 11 Sep 2015 15:27:05 +0000
From: Robert Calhoun <rcalhoun@shotspotter.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issues with yocto and kernel option CONFIG_MULTIUSER
Thread-Index: AQHQ7KZQ8GlhSZmI+US3oawHLkHElQ==
Date: Fri, 11 Sep 2015 15:27:05 +0000
Message-ID: <E5E9AD0D-4DA6-416F-A1DD-FE02122EA393@shotspotter.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/0.0.0.150807
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rcalhoun@shotspotter.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [208.66.210.19]
x-microsoft-exchange-diagnostics: 1; BY2PR0401MB0903;
	5:P1VgJHrDAZ4Av1NTVWy3PwFzlQW5T073jJbCrtJluVCyomLYOY/WOKiNqw+xFxtosb/uD7V3MdJfXE1dQ7DYk8Zc0WRdHkVcSmdILlGmPkHsGSU4UJk9nGkWx31xYTo8p4PwzARoxAchpoKhSMKxeg==;
	24:Rbj7VbERZHRIIIow30qcz0tA+TOZsKIddYpQtV2WqFqsQ7d1TVX+fY7CuTBiOktyBsIc/Nov7eSSwQdDakcBkpkI+G9ZqHQIHtvWY7BFE4I=;
	20:qoCMSgj7fESH5Wpnscretls1eNs3791CQ1T6tBH926xjPwuMBfCRpYqK+aJATilh2z8QhSJP/iJ+LISMvjmIeg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0401MB0903;
x-microsoft-antispam-prvs: <BY2PR0401MB090324B425A575FCC76400E5CE500@BY2PR0401MB0903.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(8121501046)(3002001);
	SRVR:BY2PR0401MB0903; BCL:0; PCL:0; RULEID:;
	SRVR:BY2PR0401MB0903; 
x-forefront-prvs: 06968FD8C4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(189002)(199003)(77156002)(450100001)(46102003)(62966003)(2501003)(99286002)(105586002)(33656002)(15975445007)(50986999)(54356999)(101416001)(11100500001)(5001960100002)(68736005)(5007970100001)(77096005)(102836002)(5004730100002)(189998001)(110136002)(107886002)(5001860100001)(86362001)(5002640100001)(92566002)(10400500002)(4001540100001)(83716003)(229853001)(19580395003)(81156007)(2351001)(122556002)(4001350100001)(64706001)(97736004)(5001830100001)(66066001)(82746002)(83506001)(106116001)(40100003)(106356001)(36756003)(87936001)(2900100001)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0401MB0903;
	H:BY2PR0401MB0902.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: shotspotter.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2015 15:27:05.0882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 375a7f95-52d1-443a-aa60-167b2aefb8af
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0401MB0903
Subject: Issues with yocto and kernel option CONFIG_MULTIUSER
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
X-List-Received-Date: Fri, 11 Sep 2015 16:01:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C1E885E3A34614EA5A26DBD18D82876@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

QSBuZXcga2VybmVsIGZlYXR1cmUsIENPTkZJR19NVUxUSVVTRVIsIHdhcyBhZGRlZCB0byB0aGUg
bGludXgga2VybmVsIGluIDQuMToNCg0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9jZ2l0L2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9MjgxMzg5M2Y4YjE5N2Ex
NGYxZTFkZGIwNGQ5OWJjZTQ2ODE3Yzg0YQ0KDQpUaGlzIGFkdmFuY2VkIGtlcm5lbCBvcHRpb24g
ZGVmYXVsdHMgdG8g4oCceSIsIHNlZToNCg0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9jZ2l0L2xp
bnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvaW5pdC9LY29uZmlnP2lkPXJl
ZnMvdGFncy92NC4yDQoNClRoaXMga2VybmVsIG9wdGlvbiBpcyBwb3RlbnRpYWxseSBoZWxwZnVs
IHRvIGVtYmVkZGVkIHN5c3RlbSBkZXZlbG9wZXJzIGJlY2F1c2UgaXQgZW5hYmxlcyBhIHNtYWxs
ZXIga2VybmVsLiANCg0KSG93ZXZlciBpbiB0aGUgc2hvcnQgdGVybSBpdCBjYXVzZXMgc2V2ZXJh
bCBwcm9ibGVtcyB0aGF0IGFyZSBvbmx5IGFwcGFyZW50bHkgYXQgcnVudGltZSwgbW9zdCBzZXJp
b3VzbHkgdGhhdCBkcm9wYmVhciBsb2dpbnMgZmFpbCBhdCBydW50aW1lIHdpdGggIkV4aXQgKHJv
b3QpOiBGYWlsZWQgdG8gc2V0IGV1aWTigJ0uIE51bWVyb3VzIGJ1c3lib3ggY29tbWFuZHMgYWxz
byBmYWlsLCBzZWUNCg0KaHR0cDovL2xpc3RzLmJ1c3lib3gubmV0L3BpcGVybWFpbC9idXN5Ym94
LzIwMTUtTWF5LzA4MjkxMC5odG1sDQoNCkkgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZSBiZWNhdXNl
IHlvY3Rv4oCZcyBrZXJuZWxfY29uZmlnbWUoKSBzdGVwIHVzZXMgdGhlIOKAnGFsbG5vY29uZmln
4oCdIHVwZ3JhZGUgb3B0aW9uIHJhdGhlciB0aGFuIHRoZSDigJxvbGRub2NvbmZpZ+KAnSBvcHRp
b24sIGFuZCBkb19rZXJuZWxfY29uZmlnbWUoKSBydW5zIGJlZm9yZSBkb19jb25maWd1cmUoKS4g
U2lsZW50IHVwZ3JhZGVzIHNob3VsZCBiZSBkb25lIHdpdGgg4oCcb2xkbm9jb25maWfigJ0uIEkg
aGF2ZSBmaWxlZCBhIGJ1ZyBvbiB0aGlzOg0KDQpodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVj
dC5vcmcvc2hvd19idWcuY2dpP2lkPTgyODkNCiANCg0KSSBrbm93IHRoZSBsYXRlc3QgeW9jdG8t
c3VwcG9ydGVkIGtlcm5lbCBpcyAzLjE5LCBidXQgd2FudGVkIHRvIGdpdmUgdXNlcnMgd2hvIGFy
ZSBidWlsZGluZyBuZXdlciBrZXJuZWxzIGEgaGVhZHMtdXAgYWJvdXQgdGhlIENPTkZJR19NVUxU
SVVTRVIgY2hhbmdlIHRvIGF2b2lkIHVuZXhwZWN0ZWQgc3NoIGxvY2tvdXQuDQoNClJvYiBDYWxo
b3VuDQoNCg0K

