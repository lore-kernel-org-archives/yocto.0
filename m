Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1089FE00978; Thu, 13 Aug 2015 07:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [210.160.252.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Aug 2015 07:37:29 PDT
Received: from relmlie2.idc.renesas.com (relmlor3.renesas.com
	[210.160.252.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5027AE0096A
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 07:37:28 -0700 (PDT)
Received: from unknown (HELO relmlir2.idc.renesas.com) ([10.200.68.152])
	by relmlie2.idc.renesas.com with ESMTP; 13 Aug 2015 23:32:24 +0900
Received: from relmlac1.idc.renesas.com (relmlac1.idc.renesas.com
	[10.200.69.21])
	by relmlir2.idc.renesas.com (Postfix) with ESMTP id 464B342A14;
	Thu, 13 Aug 2015 23:32:24 +0900 (JST)
Received: by relmlac1.idc.renesas.com (Postfix, from userid 0)
	id 348618002E; Thu, 13 Aug 2015 23:32:24 +0900 (JST)
Received: from relmlac1.idc.renesas.com (localhost [127.0.0.1])
	by relmlac1.idc.renesas.com (Postfix) with ESMTP id 268398002D;
	Thu, 13 Aug 2015 23:32:24 +0900 (JST)
Received: from relmlii1.idc.renesas.com [10.200.68.65] 
	by relmlac1.idc.renesas.com with ESMTP id ZAW08418;
	Thu, 13 Aug 2015 23:32:24 +0900
X-IronPort-AV: E=Sophos;i="5.15,670,1432566000"; d="scan'208";a="192258789"
Received: from mail-hk2apc01lp0216.outbound.protection.outlook.com (HELO
	APC01-HK2-obe.outbound.protection.outlook.com) ([65.55.88.216])
	by relmlii1.idc.renesas.com with ESMTP/TLS/AES256-SHA;
	13 Aug 2015 23:32:23 +0900
Received: from TY1PR06MB0733.apcprd06.prod.outlook.com (10.163.245.143) by
	TY1PR06MB1006.apcprd06.prod.outlook.com (10.164.99.28) with Microsoft
	SMTP Server (TLS) id 15.1.231.21; Thu, 13 Aug 2015 14:32:20 +0000
Received: from TY1PR06MB0733.apcprd06.prod.outlook.com ([10.163.245.143]) by
	TY1PR06MB0733.apcprd06.prod.outlook.com ([10.163.245.143]) with mapi id
	15.01.0225.018; Thu, 13 Aug 2015 14:32:20 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Nikolay Dimitrov <picmaster@mail.bg>, Paul Sherwood
	<paul.sherwood@codethink.co.uk>
Thread-Topic: [yocto] How to submit patches upstream for repos at
	git.yoctoproject.org (eg meta-renesas)
Thread-Index: AQHQ1dHy6z5DM/B89Eiq4F224TB6E54J+w+Q
Date: Thu, 13 Aug 2015 14:32:19 +0000
Message-ID: <TY1PR06MB0733208D9718362D63E275DE927D0@TY1PR06MB0733.apcprd06.prod.outlook.com>
References: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
	<55CC8E62.7070102@mail.bg>
	<0071ba1f11fafdd0812214d3da8ce4b4@codethink.co.uk>
	<55CCA583.4090107@mail.bg>
In-Reply-To: <55CCA583.4090107@mail.bg>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-microsoft-exchange-diagnostics: 1; TY1PR06MB1006;
	5:z5PFqH6MCWGLB3IPvOag0tY93NRyBCy9Qqta+enaQC/vd3OXxTuijBOkCnyilpTt4vfzu11L0Q5M2wgcNoZvXrkWbbgzd32uWhfg5+2Vmz9f47yKjNCMDu68Er3pnswUmb2ZFcEp5W78v27MvNTuhg==;
	24:nCWaWvv8LFU3H8/jVlLVDvtzc8YvvPQyUYfE6e8yvln14LsXQG45aXM2nbGNJa0EcEoQGDGxyWrI3/j2ujlgwcq9A3BLR1ghVklMzDo3TMo=;
	20:g3wuT9eo4wwCOyfb0y2LzQxuvlhuGSs1aVzGzqYrIDDOvFagjtLrLnGVPEr0P8d9wfIjIK/08acVcG2ABy/B9XWqaTM7XUk5Q9mwuXvnatdPrfxFGuWt3YIUBRFh8tM+Llh8h0tREY0ougpyxxM906E4ExUsWM+CpTHb/nQl0lg=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:TY1PR06MB1006;
x-microsoft-antispam-prvs: <TY1PR06MB1006265A986EEC49CD2F34A5927D0@TY1PR06MB1006.apcprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:TY1PR06MB1006; BCL:0;
	PCL:0; RULEID:; SRVR:TY1PR06MB1006; 
x-forefront-prvs: 0667289FF8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(189002)(199003)(19580405001)(74316001)(92566002)(76576001)(5001830100001)(5001860100001)(2656002)(106356001)(106116001)(4001540100001)(97736004)(93886004)(46102003)(81156007)(5001770100001)(5001920100001)(64706001)(86362001)(66066001)(10400500002)(40100003)(122556002)(19580395003)(5003600100002)(87936001)(189998001)(33656002)(77096005)(2900100001)(2950100001)(68736005)(15975445007)(102836002)(62966003)(77156002)(5001960100002)(107886002)(101416001)(5002640100001)(76176999)(54356999)(105586002)(50986999)(4001430100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TY1PR06MB1006;
	H:TY1PR06MB0733.apcprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2015 14:32:19.9390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR06MB1006
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Takeshi Saito <takeshi.saito.xv@renesas.com>,
	YOSHIYUKI ITO <yoshiyuki.ito.ub@renesas.com>,
	"automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Re: How to submit patches upstream for repos at git.yoctoproject.org (eg meta-renesas)
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
X-List-Received-Date: Thu, 13 Aug 2015 14:37:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrb2xheSBEaW1p
dHJvdiBbbWFpbHRvOnBpY21hc3RlckBtYWlsLmJnXQ0KPiBTZW50OiAxMyBBdWd1c3QgMjAxNSAx
NToxMQ0KPiBUbzogUGF1bCBTaGVyd29vZCA8cGF1bC5zaGVyd29vZEBjb2RldGhpbmsuY28udWs+
DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBhdXRvbW90aXZlLWRpc2N1c3Npb25zQGxp
c3RzLmxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+IFN0ZXBoZW4gTGF3cmVuY2UgPHN0ZXBoZW4ubGF3
cmVuY2VAcmVuZXNhcy5jb20+OyBUYWtlc2hpIFNhaXRvDQo+IDx0YWtlc2hpLnNhaXRvLnh2QHJl
bmVzYXMuY29tPjsgTm9idWhpcm8gSXdhbWF0c3UoUmV0aXJlZCkNCj4gPG5vYnVoaXJvLml3YW1h
dHN1LnlqQHJlbmVzYXMuY29tPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBIb3cgdG8gc3VibWl0
IHBhdGNoZXMgdXBzdHJlYW0gZm9yIHJlcG9zIGF0DQo+IGdpdC55b2N0b3Byb2plY3Qub3JnIChl
ZyBtZXRhLXJlbmVzYXMpDQo+IA0KDQpbc25pcF0NCg0KPiA+IFVuZGVyc3Rvb2QsIHRoYW5rIHlv
dS4gU28gaW4gdGhpcyBjYXNlLCBmb3IgcGF0Y2hlcyB0byBtZXRhLXJlbmVzYXMsDQo+ID4gc2hv
dWxkIHdlIGVtYWlsIHRoZW0gdG8gdGhpcyBsaXN0LCBvciBhbm90aGVyIGxpc3QsIG9yIHNlbmQg
ZGlyZWN0bHkgdG8NCj4gPiB0aGUgbWFpbnRhaW5lciwgb3IgaXMgdGhlcmUgYW5vdGhlciBtZWNo
YW5pc20gZXN0YWJsaXNoZWQ/DQo+IA0KPiBVc3VhbGx5IEkgd291bGQgYWR2aWNlIHRvIHNlbmQg
dGhlIHBhdGNoZXMgdG8gYSBSZW5lc2FzLXNwZWNpZmljIE1MLA0KPiBidXQgSSBjb3VsZG4ndCBm
aW5kIGl0IGluIHRoZSBPRSBsYXllcnMgaW5kZXgsIHNvIGl0IHdvdWxkIGJlIGJlc3QgdG8NCj4g
YXNrIHRoZSBSZW5lc2FzIHRlYW0uDQo+IA0KPiBAU3RlcGhlbiwgVGFrZXNoaSwgTm9idWhpcm86
IENhbiB5b3UgcGxlYXNlIGFkdmljZSB3aGljaCBpcyB0aGUgcHJvcGVyDQo+IE1MIGZvciBzZW5k
aW5nIG1ldGEtcmVuZXNhcyBwYXRjaGVzPyBUaGFua3MuDQoNClRoZSBNQUlOVEFJTkVSUyBmaWxl
IFsxXSBzYXlzIGVtYWlsIEdlbml2aSBicmFuY2ggY2hhbmdlcyBkaXJlY3RseSB0byBtZSA6KS4N
Ckhvd2V2ZXIgaW4gdGhlIGNhc2Ugb2YgQUdMIEkgcmVjYWxsIHRoZSBBR0wgbWVldGluZyBtaW51
dGVzIHNheWluZyB0aGV5IHdlcmUNCmdvaW5nIHRvIHN0YXJ0IHdpdGggYSBsb2NhbCBicmFuY2gu
IEkgZG9uJ3Qga25vdyB0aGUgcmVhc29uaW5nLCBwZXJoYXBzIHRvIGZhY2lsaXRhdGUgDQp0aGUg
YWdncmVzc2l2ZSAgdGltZXNjYWxlIGZvciB0aGUgZmlyc3QgcmVsZWFzZSBiZWZvcmUgcHJvY2Vz
c2VzIGJlZCBkb3duIG9yIA0KYXJlIGFncmVlZC4gU28gdGhhdCBhcHBlYXJzIHRvIGJlIHRoZSBz
aG9ydCB0ZXJtIHVwc3RyZWFtLiBDYW4gdGhlIGF0dGVuZGVlcw0Kc2hhcmUgdGhlIGRldGFpbD8N
Cg0KSW4gdGhlIG1lZGl1bSB0ZXJtIGEgc2hhcmVkIHNvdXJjZSB3b3VsZCBzaW1wbGlmeSBidXQg
dGhlIHV0aWxpdHkgb2YgdGhhdCB3aWxsIGRlcGVuZA0KbGFyZ2VseSBvbiB0aGUgZXh0ZW50IHRv
IHdoaWNoIHZlcnNpb24gcm9hZG1hcHMgY2FuIGJlIGFsaWduZWQgZm9yIGJvdGggYWxsaWFuY2Vz
DQplbHNlIHRoZXJlIHdpbGwganVzdCBiZSBzZXBhcmF0ZSBicmFuY2hlcyBhbnl3YXkuDQogDQpb
MV0gaHR0cHM6Ly9naXRodWIuY29tL3NsYXdyL21ldGEtcmVuZXNhcy9ibG9iL2dlbml2aS03LjAt
YnNwLTEuOC4wL01BSU5UQUlORVJTDQoNClJlZ2FyZHMNCg0KU3RldmUNCg0K

