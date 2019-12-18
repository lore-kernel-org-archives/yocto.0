Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6858.1576646350771609719
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 21:19:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=qYt8zQms;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: sangeeta.jain@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D341E0122F; Tue, 17 Dec 2019 21:19:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8688E01227
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 21:19:09 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Dec 2019 21:19:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,328,1571727600"; 
   d="scan'208";a="298274248"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga001.jf.intel.com with ESMTP; 17 Dec 2019 21:19:07 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Dec 2019 21:19:07 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Dec 2019 21:19:07 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Dec 2019 21:19:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 17 Dec 2019 21:19:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F82TDntUbYcFMQii/w7Dr8KgCsX4tA9iuN2TKYRoHdqCn90v1CWibgb885km+JlAQUMOILOhagvk6ERkNascIoI/QWFgBQXk4hOsSqLi0h2F6kzDhXu1DXCBS8w3rWni+1qgv/GgHzkVtZKvvyXICounLzjH6nrM7dhhtsXATgWU+fLQVcXFM5uijsX0Ux8n+/OKAmsMlchlwLr2weqAECvcppyOyKgqhe0Jd85RrBSryoYq8fzEnOYvypmi3kb9OX02ratgEKm4UCRDTczeii083v5IOOzq3sLMY18iVgUKb3vRik+I/3eaZNMrV+UZX5RHXm1ocv8V36ijDaMn2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/eb0E6g5DS7LBpz8QU4O5c/bHV0EcfnIU6WpzQ78YXY=;
 b=bhti0LphftMdZJ2EtR5dd0hauthhdu7KASMJfmM65NTohaciBA9MJT9FEjsJ3L90fsrGlCdEYYJ8a2c0hefQprSzVAPsXycnqYj1VkRjSJDaXuM1F4YPPSA6o104sufs/VhAuVstcWXc0HGJZA9OYxzTOgN1ASltqrR2DpeXbaHU3YqABUvfQru8bFAwt/yQy5kPAM3auIiQm0rjA7KilN9Yf2W5T04mh6H0PskIR2Bxx/3hmOZ2g3pMqM6QwXYIlkLygcg0cAiwGizNHam0po8BFpJb+0oEYZ4I9s+YBPXKh8PKpp6f5wHwNr3a2UrgRm0qJ1LrBW3QfVMKG53AhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/eb0E6g5DS7LBpz8QU4O5c/bHV0EcfnIU6WpzQ78YXY=;
 b=qYt8zQmsOQu4lqp+Y8tLYemG6KoSl+ATN2518SoY8RIz7QNoAecAr+6LqH2vd7OrzPa5LKqEsNme93X+WYuCrLcxHlQRwvTM9Zyi9wPMbarpqK2xYJ4ZCd6stBmQm6a7O/C/xXIGqXioVCrIGmd+Bhw3EcNk/BweFnE4nvRoXUM=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1445.namprd11.prod.outlook.com (10.172.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Wed, 18 Dec 2019 05:18:50 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558%5]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 05:18:50 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA Cycle report for build (yocto-3.1_M1.rc8)
Thread-Topic: QA Cycle report for build (yocto-3.1_M1.rc8)
Thread-Index: AQHVtVk7ejR+08/MvkeUFcrw7PNrV6e/WkMA
Date: Wed, 18 Dec 2019 05:18:50 +0000
Message-ID: <CY4PR11MB187929B7B3EFA4FCD481283CE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
 <b909f574-7cb4-0e89-d49d-4a34da778786@gmail.com>
In-Reply-To: <b909f574-7cb4-0e89-d49d-4a34da778786@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzdkM2JlYTktZTIyNC00OGViLTgyZDMtMzc1YWY2ZDBjOWMzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidDJLREJkTHhpTEhCbU9qcHdSamhTM01GME1PSktlRDRTbHR5RHJjVmd3WVczTWtrTG9lZFwvMWNcL09LN09HaVZJIn0=
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ce10582-2fed-4d1f-6672-08d78379c49f
x-ms-traffictypediagnostic: CY4PR11MB1445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1445E15FDB5878B6778DDEDAE3530@CY4PR11MB1445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(136003)(366004)(376002)(39860400002)(346002)(199004)(13464003)(189003)(53754006)(54906003)(66946007)(81166006)(5660300002)(81156014)(478600001)(8936002)(316002)(110136005)(7696005)(66556008)(52536014)(76116006)(66446008)(186003)(966005)(86362001)(33656002)(6506007)(53546011)(55016002)(4326008)(2906002)(9686003)(26005)(66476007)(71200400001)(8676002)(64756008);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1445;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:3;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oMqDtoDWh7NVAjNdEFmXKGeWAHh1e8Le7noIaLgQ1xAmHtJ25z7PIfAGa/zmso9zKn/uIB59FM/kYqXpZRbKW5VNepa0OZbgN9lIe2v6iF+CStE9IOSH0wgD69iQGcG9bl2IkhXnA2yHgZfMFnF0SS3lFjrC7kOpOQepxU8jnr+xBiaUpYf8e4H9JoBSNofo64Hpt+zTYOXDkv9k+v2NfNRPPRsMhlN+cFoRovNsw31NTQnt/Gkwq82kB22YjL3dlagOX2tPz7W8rHyvN8RggkkGgINtTo9J6O2WIcaGk70eIrMKj0bTHcYiRXGBd1a/qIzWsY8jUbzaQZKtb9PYDlc0kFJH/MtMqIWN2Vi83C7u6wkhHUQmKr0YQLy0QNdg8C5eUResX40U5s0L9UaVK9wbk815zREsfP3aBZ8JcpwF1A4nEkX1ueqfjHfB1J6fnK/9ns44JWThIkfz84i7LMX7r+UvniK+TorB5QSLYsCDjGUsXAkFHHAKDmSNC+cpI54ARLVNkuBgOWW38K0fuUnZsPdjSzEk8/gCxjKqTxFOpm5cqaO9jiRcAYgGV1Nq
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ce10582-2fed-4d1f-6672-08d78379c49f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 05:18:50.7547
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZBoHVaASyufBnH2+3TREUsdILNFJ5VpIX1iffRXE6mSvhx00VIgxB9hYpjICOQUnOMTGJhZC/11E0tCGl/mYGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1445
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYWt1c3RlcjgwOCA8YWt1
c3RlcjgwOEBnbWFpbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgMTggRGVjZW1iZXIsIDIwMTkg
MTI6MTEgUE0NCj4gVG86IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyB5
aS56aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+IDxhcG9vcnYuc2FuZ2FsQGlu
dGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBDaGFuLA0K
PiBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+Ow0KPiByaWNo
YXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnOyBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbQ0K
PiBTdWJqZWN0OiBSZTogUUEgQ3ljbGUgcmVwb3J0IGZvciBidWlsZCAoeW9jdG8tMy4xX00xLnJj
OCkNCj4gDQo+IA0KPiANCj4gT24gMTIvMTcvMTkgNzozMiBQTSwgSmFpbiwgU2FuZ2VldGEgd3Jv
dGU6DQo+ID4gSGVsbG8gYWxsLA0KPiA+DQo+ID4gVGhpcyBpcyB0aGUgZnVsbCByZXBvcnQgZm9y
IDMuMV9NMS5yYzg6DQo+ID4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQu
Y2dpL3lvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWIvdA0KPiA+IHJlZS8/aD1pbnRlbC15b2N0by10
ZXN0cmVzdWx0cw0KPiANCj4gVGhhbmtzLg0KPiANCj4gPg0KPiA+DQo+ID4gPT09PT09PSBTdW1t
YXJ5ID09PT09PT09DQo+ID4gTm8gaGlnaCBtaWxlc3RvbmUgZGVmZWN0cy4NCj4gPiBObyBuZXcg
ZGVmZWN0cyBhcmUgZm91bmQgaW4gdGhpcyBjeWNsZS4NCj4gPiBnbGliIGFuZCB2YWxncmluZCBw
dGVzdCBmYWlsZWQgKEJVRyBpZDoxMzcxMykuDQo+IA0KPiBJIGJlbGlldmUgdGhlIHZhbGdyaWQg
ZmFpbHVyZSBpcyBhIGtub3duIGlzc3VlOg0KPiANCj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3By
b2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMzY2Ng0KDQpZZXMsIHRoaXMgaXMgdGhlIHNhbWUg
aXNzdWUgd2hpY2ggaXMgcHJlc2VudCBpbiB0aGlzIGJ1aWxkIGFzIHdlbGwuDQoNCj4gDQo+IC0g
YXJtaW4NCj4gPg0KPiA+ID09PT09PT0gQnVncyA9PT09PT09PQ0KPiA+IGh0dHBzOi8vYnVnemls
bGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTM3MTMNCj4gPg0KPiA+DQo+ID4g
VGhhbmtzLA0KPiA+IFNhbmdlZXRhDQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc+IE9uDQo+ID4+IEJlaGFsZiBPZiBwb2t5YnVpbGRAdWJ1bnR1MTgwNC10eS0x
LnlvY3RvLmlvDQo+ID4+IFNlbnQ6IEZyaWRheSwgMTMgRGVjZW1iZXIsIDIwMTkgMzoxNSBQTQ0K
PiA+PiBUbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+PiBDYzogb3RhdmlvQG9zc3lzdGVt
cy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4gPj4gPGFw
b29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVs
LmNvbT47DQo+ID4+IENoYW4sIEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGlu
dGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0DQo+ID4+IDxjaGluLmh1YXQuYW5nQGludGVsLmNvbT47
IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7DQo+ID4+IGFrdXN0ZXI4MDhAZ21h
aWwuY29tOyBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgSmFpbiwgU2FuZ2VldGENCj4gPj4gPHNh
bmdlZXRhLmphaW5AaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBbeW9jdG9dIFFBIG5vdGlmaWNh
dGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVyIGJ1aWxkDQo+ID4+ICh5b2N0by0NCj4gPj4g
My4xX00xLnJjOCkNCj4gPj4NCj4gPj4NCj4gPj4gQSBidWlsZCBmbGFnZ2VkIGZvciBRQSAoeW9j
dG8tMy4xX00xLnJjOCkgd2FzIGNvbXBsZXRlZCBvbiB0aGUNCj4gPj4gYXV0b2J1aWxkZXIgYW5k
IGlzIGF2YWlsYWJsZSBhdDoNCj4gPj4NCj4gPj4NCj4gPj4gICAgIGh0dHBzOi8vYXV0b2J1aWxk
ZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTMuMV9NMS5yYzgNCj4gPj4NCj4gPj4NCj4g
Pj4gQnVpbGQgaGFzaCBpbmZvcm1hdGlvbjoNCj4gPj4NCj4gPj4gYml0YmFrZTogOTlkNDYxMDdj
Y2ZjZWM1NzYyMzhkMzJjZmU3OTAzNDQwODU3MDM4ZA0KPiA+PiBtZXRhLWdwbHYyOiBhNjdhNWZk
MTYwZjk3MTI5YTZhZmQ2NWYxMDdjZDJjYmRmZWM0MWU3DQo+ID4+IG1ldGEtaW50ZWw6IGUxYjM3
M2YzY2JiOWFjZDcxZWZlODRkNzgyNjc1MDI1ZDU5YjYwMzUNCj4gPj4gbWV0YS1taW5ndzogMTI2
ZWZkYWQyNDNlMWEzYmVhZDViNjk1ZGY2NjU2ZTk0MzUzZGQ0Ng0KPiA+PiBvZWNvcmU6IDBmMDRl
ODFjNzk3ZDVkMzM3ZWNlNGU4NjM4YTZiNzFjNzViYzBhMDANCj4gPj4gcG9reTogMWFiZmZjNTQy
YTA1NzFmMGQxNTEyYjkyYzFhNTlkMTM4Y2YzZWE2YQ0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBU
aGlzIGlzIGFuIGF1dG9tYXRlZCBtZXNzYWdlIGZyb20gdGhlIFlvY3RvIFByb2plY3QgQXV0b2J1
aWxkZXINCj4gPj4gR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRvYnVp
bGRlcjINCj4gPj4gRW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4g
Pj4NCj4gPj4NCj4gPj4NCg0K
