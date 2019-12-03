Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1003.1575397276232020169
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 10:21:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IViVS6FV;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: vineela.tummalapalli@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C490DE010A6; Tue,  3 Dec 2019 10:21:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C34CE0049C;
	Tue,  3 Dec 2019 10:21:14 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Dec 2019 10:21:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,274,1571727600"; 
   d="scan'208";a="361281383"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by orsmga004.jf.intel.com with ESMTP; 03 Dec 2019 10:21:13 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 10:21:12 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 3 Dec 2019 10:21:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7ntZ5Vx7vSAZ7EbNcV6jaXwr6cNd19znOB9wuWsCqYNe3xUjOEYilbiPbflGmwK77YuYnSPEikbR2+S6FdbDAGtZi8wC63EeG+cmM4WaLfWr560+tSQFBebd+cUZ1+rJD/On8hRrBMgQbPVcHPnbLvc2qly5vACTFa3p3RcY5+SMLtfGlTxyx1NfLo3W6x+lCBwRSkGgTgEjxhopasqfZ+7dF/3rxCDT56dNleP6avKyXVejcoxPOTM5FjaESyvPUTTqXzYh5NPP1UgsICfP1cKEb0AIQfpTfrnUhIBhbAS97U8XJh4S7VpSeJ+pCQuITuHZ0li4wit+Sqnwye8Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Foac+5fS3sVgPqxr3VVYdNL37Q9Jgb0T4HsnTvBu2uE=;
 b=fo4QXewhAfLVGc4Wfw3zHU+CQsVtIH5TV+3y594XAL9eOd/uUhmtBUwoFPbgYUldwNyx+2PTs/SYeBcV0wSW7pOmbc7xOJOFICzr3BKgiDURkxYkrchl3nridLAUgSh6xAUS7Jy9FnDZJ6aXJkIVWgeZkcgBRBAGpFCwB2YlEIoHoOumkUdI54nAG9kFmKZmxfUYVZwl9kG9EhIQ1B6LCzaXxgv6wB4wm30Z2JDHlZwPHSRWEgsUrOTeYAVpoVD550XXv2RnVfFdjO6SDtrRXGUKYLmUSodxWv7+ouSVO3KD50gG+plypBOnNA5G88qQ4aIsRwzEQZoGPJkKb4/ChQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Foac+5fS3sVgPqxr3VVYdNL37Q9Jgb0T4HsnTvBu2uE=;
 b=IViVS6FVSEAy+6/c2TAxhQRe9Nh6566Cx9z++0R7VB7iASlO2MSgOGEWd9ih6Hqf1OrVmDBCfWRklNlsp/tIAXmSMekE6cEn7QJZegtzveA5qIcxRttMd0Xuq83Qn3IO6fOKr5GSihVityCgDfYZXmSQDL7UKV26JGeOtW5SinM=
Received: from BN8PR11MB3809.namprd11.prod.outlook.com (20.178.221.91) by
 BN8PR11MB3586.namprd11.prod.outlook.com (20.178.219.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Tue, 3 Dec 2019 18:21:10 +0000
Received: from BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::f01a:8c50:2f6f:e49d]) by BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::f01a:8c50:2f6f:e49d%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 18:21:10 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, Yocto TSC
	<tsc@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA cycle report for yocto-3.0.1.rc3
Thread-Topic: [yocto] QA cycle report for yocto-3.0.1.rc3
Thread-Index: AQHVqgIJB071Edwq7UCkVq45GekqcKeouJzA
Date: Tue, 3 Dec 2019 18:21:10 +0000
Message-ID: <BN8PR11MB380968CAE9002D1C6FFFF1B688420@BN8PR11MB3809.namprd11.prod.outlook.com>
References: <CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <7c2a2254b38a1ddc3d67560c8f7d942f7cfd7612.camel@linuxfoundation.org>
	 <675f23b0-b16d-1cb9-881d-7d0ad2675673@intel.com>
 <afe16fd52f8d0b3a620da954b27524bcecaab2cd.camel@linuxfoundation.org>
In-Reply-To: <afe16fd52f8d0b3a620da954b27524bcecaab2cd.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGExZDc5NzUtMWMyZC00NTFjLWE4Y2QtMGQ0OWUwZTAzYWU2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid3crT1NPQmdCMkpEdG9QUmFwcTcrZ2FCVjFTaFVTMTRaeUlEek1UOGZJaTA3V1JNbytVNmhaeGRNV0JVcHdnMCJ9
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 693120a2-870b-40a7-c5d1-08d7781d92c6
x-ms-traffictypediagnostic: BN8PR11MB3586:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR11MB35861A107C93AFB69484BB2C88420@BN8PR11MB3586.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(396003)(346002)(376002)(136003)(39860400002)(189003)(199004)(13464003)(8936002)(33656002)(8676002)(81156014)(3846002)(81166006)(4326008)(2501003)(6436002)(55016002)(6306002)(74316002)(6246003)(305945005)(7736002)(229853002)(9686003)(66556008)(66946007)(66476007)(76176011)(76116006)(26005)(53546011)(86362001)(102836004)(99286004)(6506007)(110136005)(7696005)(54906003)(316002)(186003)(25786009)(6116002)(52536014)(64756008)(478600001)(446003)(71190400001)(966005)(2906002)(66446008)(11346002)(71200400001)(14454004)(5660300002)(256004);DIR:OUT;SFP:1102;SCL:1;SRVR:BN8PR11MB3586;H:BN8PR11MB3809.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nDcqrVhpX0HPnUKYcr4WzgCP3bQdupQNjZJk11Qw68khQEYvfsuHQtymg3M/JkhYz7GKQx3uAN/Lgo+a23yBcjKbqS78UxJlL6rdPY4vgxbGg03D5RKt9Uxfv1bfdhxHl/ZsIu+3ZR9qryxj9zOjYmSEDAJ3y1FMHonaxebCFEGrrkdW5mX+3mdV5YPap6X296FdG/IMYq6q3CSsQOSJng1a6riBVYksTxoVIXhJuxQVaG7n623llRCoiFTcpS45lb47rMGmpSl6Q9urQlTOrpImQfOe4hhTp6TmvcZuQUyKGB5aGFF7mk3rHeUFn4eklolDzAqF2pgTqvXlzmh+0jGiIk69usZl3NzAFqh+1WNuISVIGZdWJVHZs6Bjlht9ZrdLLpwyD4zwdf2YLve+ubwDxaqyIk95LtHaz+sZdvjIJ6sVS4SjeRlsUR5ZMjC1gtDTQJfIYUDoSu02f2CEGh9lHJYmibK+rQUHJaMeMV6AAPdMQCp3ZGX7Af7SOttQ7le8ykVVkmtdhD1bOCr/1g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 693120a2-870b-40a7-c5d1-08d7781d92c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 18:21:10.5550
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2766E7qsqXEpW8oOYOo0PAgwn1O9aTWPavvisoUCwQizvEbX61tGvELV3VuSgzDY8EJqdv6AwYFOR7aZVROMMsMGwiQo6pt86cBDYLlnFlo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3586
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGFsbC4NCkkgV2lsbCBzdGFydCB0aGUgcmVsZWFzZSBwcm9jZXNzLg0KDQpUaGFu
a3MsDQpWaW5lZWxhDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBC
ZWhhbGYgT2YgUmljaGFyZCBQdXJkaWUNClNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDMsIDIwMTkg
MTA6NTAgQU0NClRvOiBCdXJ0b24sIFJvc3MgPHJvc3MuYnVydG9uQGludGVsLmNvbT47IEphaW4s
IFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmc7IFlvY3RvIFRTQyA8dHNjQHlvY3RvcHJvamVjdC5vcmc+OyBUdW1tYWxhcGFsbGksIFZpbmVl
bGEgPHZpbmVlbGEudHVtbWFsYXBhbGxpQGludGVsLmNvbT4NCkNjOiBvdGF2aW9Ab3NzeXN0ZW1z
LmNvbS5icjsgeWkuemhhb0B3aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFwb29ydiA8YXBvb3J2LnNh
bmdhbEBpbnRlbC5jb20+OyBZZW9oLCBFZSBQZW5nIDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsg
Q2hhbiwgQWFyb24gQ2h1biBZZXcgPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsgYWt1
c3RlcjgwOEBnbWFpbC5jb207IHNqb2xsZXkueXAucG1AZ21haWwuY29tDQpTdWJqZWN0OiBSZTog
W3lvY3RvXSBRQSBjeWNsZSByZXBvcnQgZm9yIHlvY3RvLTMuMC4xLnJjMw0KDQpPbiBUdWUsIDIw
MTktMTItMDMgYXQgMTc6MDcgKzAwMDAsIFJvc3MgQnVydG9uIHdyb3RlOg0KPiBPbiAwMy8xMi8y
MDE5IDE1OjE1LCBSaWNoYXJkIFB1cmRpZSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMTktMTItMDMg
YXQgMDc6MTUgKzAwMDAsIEphaW4sIFNhbmdlZXRhIHdyb3RlOg0KPiA+ID4gVGhpcyBpcyB0aGUg
ZnVsbCByZXBvcnQgZm9yIDMuMC4xIFJDMzoNCj4gPiA+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVj
dC5vcmcvY2dpdC9jZ2l0LmNnaS95b2N0by10ZXN0cmVzdWx0cy1jb250cg0KPiA+ID4gaWIvdHJl
ZS8/aD1pbnRlbC15b2N0by10ZXN0cmVzdWx0cw0KPiA+ID4gDQo+ID4gPiA9PT09PT09IFN1bW1h
cnkgPT09PT09PT0NCj4gPiA+IE5vIGhpZ2ggbWlsZXN0b25lIGRlZmVjdHMuDQo+ID4gPiBObyBu
ZXcgZGVmZWN0cyBhcmUgZm91bmQgaW4gdGhpcyBjeWNsZS4NCj4gPiA+IHZhbGdyaW5kIHB0ZXN0
IGZhaWxlZCAoQlVHIGlkOjEzNjY2KS4NCj4gPiA+IA0KPiA+ID4gPT09PT09PSBCdWdzID09PT09
PT09DQo+ID4gPiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dp
P2lkPTEzNjY2DQo+ID4gDQo+ID4gVGhhbmtzIQ0KPiA+IA0KPiA+IExvb2tpbmcgYXQgdGhlIGJ1
ZywgaXQgc2VlbXMgb25seSBvbmUgb2YgdGhlIHRlc3RzIHdpdGhpbiB0aGUgcHRlc3QgDQo+ID4g
cmVncmVzc2VkLiBXaGlsc3QgdGhhdCBkb2VzIG5lZWQgbG9va2luZyBpbnRvLCBJJ2Qgc2F5IGl0
IGlzbid0IGEgDQo+ID4gcmVsZWFzZSBibG9ja2VyIGFuZCBJJ2QgcHJvcG9zZSB3ZSByZWxlYXNl
IDMuMC4xIHJjMy4NCj4gPiANCj4gPiBXaGF0IGRvZXMgdGhlIHJlc3Qgb2YgdGhlIFRTQyBzYXk/
DQo+IA0KPiBBZ3JlZWQuICBTaGlwIGl0IQ0KDQpXZSBhbHNvIGhhdmUgdmVyYmFsIGFwcHJvdmFs
IGZyb20gRGVueXMgYW5kIEtoZW0sIHdlIHRhbGtlZCBhYm91dCB0aGlzLCBzbyB3ZSdyZSBnb29k
IHRvIHJlbGVhc2UuDQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQo=
