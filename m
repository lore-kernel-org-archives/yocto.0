Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A92E00BFF; Mon, 23 Sep 2019 00:51:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B286E00929
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 00:51:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2019 00:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="203073086"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2019 00:51:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 23 Sep 2019 00:51:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
	fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Mon, 23 Sep 2019 00:51:38 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
	(version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
	via Frontend Transport; Mon, 23 Sep 2019 00:51:38 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.52) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Mon, 23 Sep 2019 00:51:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=ne3/pj4VpA/7dk43ql+APVTLXZczDQmq+kTYqdjQc+twWyET1JYBY7XUD/KYhkBK91c62bUCiTIHxfw7rtcvrKm7luemO/4FTAgiebUwjmT5hM3HuDMFWI3JbYewn9B4JtXP05CnLBQ0zr03q/6U+hGPvd78OOkIPdatCInC0HJvqVT1pzI2mWhA19+Ua6W0gCRpkah30zHdU23MyfcqAWQY+mFMbUi8tzmciLWk6FLmMi9KSMrYNk2MxXma1D0WLk7U1Qa1OpvXFRhtQ6x0KzPVnyVRCwAo66kPubqmrKcST+WF14c3kBA1e63Xb67ykGlw0X+O9Ry2CSrAEc7dKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7FcyKmhXpN5P36Clpz+/AaSlKKUIGaJiUmxMUh02VxI=;
	b=dX7p6fooP5vOYvZm2y49zGt/7D9uP6BhPDumYjQf0vW/N8xgJI4uE19aV4XlwfVtK+HeOH3GsMl63D5QSaZF0qYoieGtqfibe5qAe1KZSork5AtILZ7GvFGbP/XmHA36W9AWPfCvmdhFMKrtbguMtDdmmlOwVycAyxCSBPUrUsNJgq8Hvg1P2homImBMWKq8M+r8Jx09jrJi+XG8q04LK32DsxZdqGZ22FSeJEl43MzUTIBT2O68ocR+pW6TTHy6Va1D27zSRqoR+yugG2Z2fMdLzx/9griUEr3VsQchcxXmPFJIdeSNcz0Kmf3TvDY9lHLReMQ3BKAMxVzxK7WmIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7FcyKmhXpN5P36Clpz+/AaSlKKUIGaJiUmxMUh02VxI=;
	b=qr61YdE5FfuwR5HWkexaM5zkT2UD338v1Ak8vGZuwU0sjmpluBzqBPeMxlFmDsTNVgQiYgvGt2lkumg4gH2DH3jRfzLZK7dX6TX9s8DcSsdBzwCRQpMj63mE+Nf3GVyPutBaeI8XAJUtodB9NiZShatCDvxHZzBC/aBgXgqC51E=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1477.namprd11.prod.outlook.com (10.172.69.148) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2284.20; Mon, 23 Sep 2019 07:51:20 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f%11]) with mapi id 15.20.2284.023;
	Mon, 23 Sep 2019 07:51:20 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M3.rc1)
Thread-Index: AQHVb3CAjH+B0RA2wUCbQT8/rReVaKc4lTwAgAADKMCAAC8k4IAAH1wAgAABIbA=
Date: Mon, 23 Sep 2019 07:51:20 +0000
Message-ID: <CY4PR11MB1879C3E780B57570D25627F7E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20190920050052.0C767E00D8F@yocto-www.yoctoproject.org>
	<9DDD2658D1FE414E99172D2DB1E4D0434823F10E@PGSMSX109.gar.corp.intel.com>
	<CY4PR11MB187921D82C8A26CC9E25CF65E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
	<CY4PR11MB187994BFF9D0605ADCB50754E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
	<726da48bae7285caade355afd47c57208dfd6742.camel@linuxfoundation.org>
In-Reply-To: <726da48bae7285caade355afd47c57208dfd6742.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzQ2ZjEyNzctMTVmZS00MjhkLTg0NGQtMTk4MjlmOGZlOGZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNGNiejlZVDNcL0h4Y3ljWGJFMjFKWlFNZkNDc1RQem03RUttTHRrOXB1cElOZ1wvNE8yU0tmeTJGVFwvRUY5MHdsVyJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1735529-3f48-4cc9-98ec-08d73ffad2f3
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4PR11MB1477; 
x-ms-traffictypediagnostic: CY4PR11MB1477:
x-ms-exchange-purlcount: 1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB14774163FB1D2DEE849E54FCE3850@CY4PR11MB1477.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(376002)(136003)(39860400002)(366004)(199004)(189003)(13464003)(14444005)(256004)(478600001)(229853002)(6246003)(81166006)(81156014)(2501003)(8676002)(9686003)(8936002)(6306002)(6436002)(55016002)(25786009)(486006)(305945005)(476003)(11346002)(14454004)(446003)(110136005)(966005)(54906003)(7736002)(316002)(74316002)(5660300002)(99286004)(66066001)(76176011)(102836004)(6506007)(6636002)(186003)(26005)(33656002)(4326008)(7696005)(15650500001)(2906002)(71200400001)(71190400001)(52536014)(86362001)(66556008)(3846002)(66476007)(66946007)(66446008)(76116006)(64756008)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1477;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GA2oEAEB1rr5c02dt96Vqzz5NT7e2fTowzymPYV4DxYmYNW/LR1tNdTKREXKXidkVVp+eG3BKZuX0xtPDQV0fzM/nv5tjqnJ5DHrgCwhX2I42b1wJyu+u84584MYZGsOS48bVJSTOxINZJGnW2WcCrbvODl8qVI+ehzR0/tuc+HsXHR4JTgizzbL3bgoW+PwPjQxOl+XSSRJrpHfrP3nGfysOSyUAlAPmW3Q6JWVxSPqPhNcPD9waTS6oqgNXUfwZ7+tr7246NcMFvmL/rLEpHlmyXfuOJahiCH/Y/fWjeM7x/zjOiRzF2EiYYFUxPgcz8AnZLWnLUIsT5Wrl7HD6g313ZO1/ASF613TmLOoJbJLHUQyaX8kqBI3TB6JNZZCTEFdwLPQpeGf1bd+231DyAM0916cg+xkREh1bRYG1nE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1735529-3f48-4cc9-98ec-08d73ffad2f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 07:51:20.8668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JXWEJevpFNo9cWQs/5JL7TxnSh60l3taP7nIl+rZJF2IyiP5sAxJfWRjMHO0zRV8jrFCi1MGPW7gph9IPZ2hAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1477
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M3.rc1)
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
X-List-Received-Date: Mon, 23 Sep 2019 07:51:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiByaWNoYXJkLnB1cmRpZUBsaW51
eGZvdW5kYXRpb24ub3JnIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KPlNl
bnQ6IE1vbmRheSwgMjMgU2VwdGVtYmVyLCAyMDE5IDM6NDYgUE0NCj5UbzogSmFpbiwgU2FuZ2Vl
dGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsNCj5U
dW1tYWxhcGFsbGksIFZpbmVlbGEgPHZpbmVlbGEudHVtbWFsYXBhbGxpQGludGVsLmNvbT4NCj5D
Yzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2Fs
LCBBcG9vcnYNCj48YXBvb3J2LnNhbmdhbEBpbnRlbC5jb20+OyBZZW9oLCBFZSBQZW5nIDxlZS5w
ZW5nLnllb2hAaW50ZWwuY29tPjsgQ2hhbiwNCj5BYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55
ZXcuY2hhbkBpbnRlbC5jb20+OyBBbmcsIENoaW4gSHVhdA0KPjxjaGluLmh1YXQuYW5nQGludGVs
LmNvbT47IGFrdXN0ZXI4MDhAZ21haWwuY29tOyBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0KPlN1
YmplY3Q6IFJlOiBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWls
ZCAoeW9jdG8tMi44X00zLnJjMSkNCj4NCj5PbiBNb24sIDIwMTktMDktMjMgYXQgMDc6MzcgKzAw
MDAsIEphaW4sIFNhbmdlZXRhIHdyb3RlOg0KPj4gSGkgUmljaGFyZCwNCj4+DQo+PiBMU0Igc3Vw
cG9ydCB3YXMgZXhwZWN0ZWQgdG8gYmUgcmVtb3ZlZCBmcm9tIGJ1aWxkICd5b2N0by0yLjhfTTMu
cmMxJw0KPj4gb253YXJkcywgYnV0IGxpbmsgb24gQUIgc3RpbGwgcG9pbnRzIHRvIExTQiBpbWFn
ZXMuDQo+PiBUaGUgaW1hZ2VzIHByZXNlbnQgaW5zaWRlDQo+PiBodHRwczovL2F1dG9idWlsZGVy
LnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0NCj4yLjhfTTMucmMxL21hY2hpbmVzL2dlbmVy
aWN4ODYtNjQtbHNiLw0KPj4gICBhcmUgYnVpbHQgd2l0aCBzeXN0ZW1kIGFzIGluaXQgbWFuYWdl
ci4NCj4+DQo+PiBDYW4geW91IHBsZWFzZSBjb25maXJtIGlmIHRoZXNlIGFyZSBhbHRjZmcgaW1h
Z2VzIGFuZCB0aGUgbGluayBuYW1lDQo+PiBuZWVkcyB0byB1cGRhdGVkPw0KPg0KPldlbGwgc3Bv
dHRlZCENCj4NCj5JIGNhbiBjb25maXJtIHRoZXNlIGFyZSBhbHRjZmcgaW1hZ2VzIHdoaWNoIGhh
dmUgc3lzdGVtZCBhcyB0aGUgaW5pdCBtYW5hZ2VyLg0KPg0KPkZvciBiYWNrd2FyZHMgY29tcGF0
aWJpbGl0eSB0aGUgYXV0b2J1aWxkZXIgdGFyZ2V0IG5hbWVzIGRpZG4ndCBjaGFuZ2UgYnV0IHRo
ZQ0KPmNvbmZpZ3VyYXRpb24gdGhleSdyZSBidWlsdCB3aXRoIGRpZC4gSSBoYWRuJ3QgcmVhbGlz
ZWQgdGhpcyB3b3VsZCBiZSB2aXNpYmxlIGluIHRoZQ0KPnJlbGVhc2Ugc28gd2UgbWF5IG5lZWQg
dG8gdGhpbmsgYWJvdXQgdGhhdCBmb3INCj5NNCBidXQgdGhleSBhcmUgYWx0Y2ZnIGltYWdlcy4N
Cj4NCg0KVGhhbmtzIGZvciBjb25maXJtYXRpb24uIFdlIHdpbGwgaW5jbHVkZSB0aGVtIGluIHRl
c3QgY292ZXJhZ2UuDQo+W0FkZGVkIFZpbmVlbGEgdG8gY2M6XQ0KPg0KPkNoZWVycywNCj4NCj5S
aWNoYXJkDQoNClRoYW5rcywNClNhbmdlZXRhDQoNCg==

