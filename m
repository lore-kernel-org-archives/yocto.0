Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web10.4688.1584672423673020306
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 19:47:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=yeOWRi2h;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: nwYthjYBzG1ROxtjpkeQg3Xss0phQhTZ9VbaiSCUbbPvqkqIzYIXEkP7uEs2hwBbkLquKAFINp
 EQ2PTt/FIKlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 19:46:56 -0700
IronPort-SDR: n2Ze/TYIawHWbJ9Uqq6CW8VCKLYHmDoDOmENnBYk6SUgZ7tmC7u8UWExjT+kFWzfqawcziu87K
 GWFBSk9ZIb9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,283,1580803200"; 
   d="scan'208";a="239108355"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by orsmga008.jf.intel.com with ESMTP; 19 Mar 2020 19:46:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 19:46:55 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Mar 2020 19:46:55 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Mar 2020 19:46:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 19 Mar 2020 19:46:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnuePz4u2Tq0xmVzYPGB20fp50b2ebLJet3Qb9oYGNfdsnK8e67qMJMl/Rp87hiI0PRPDiz4RaAx/1NNpW5b98sxH7qp9cjagdut/Hhbrn+xDP6rMtL9BeHgJkiMwnk7T7ej8kGQFUVlsN8hd2smRCXDsb5R0n8ZD41LO+PhLxKoGxoKdri1U0BpSgGW4NJb7BieUvCxZM9DfIr8+r9jtnaPw1RlM62Z3YobGoV8OpZoYRqX/+79TV5LEPQGTNap/2tAsrXUgT7grVtqfg/LqyahRCcV8HUbo1eTmcj3zeF0jdnMezAybYlt6uKJGcFErg8/q7D/u9elxC8QifAK5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHOoqe/fRjBxTILhBpPgVfiaPohfeZj/CNDcA53H46E=;
 b=DBOJdNELV0PCTlV5XEhh8ff+fOiOyT23sdej2fFfBCjgaK9+RhMULSckQQMpYLEtyQKgfUX6XWdoJA81cQ7K3sTGcPF7YSPF9+71OvCXfMG8lIyWL/94ko9IgZP/5y+tNCB4uE9fhHgh7xSy2neR5UFaHrJn3HkoA+4x8wTGh3CMiP43CFrH5B8OR01VCaocYDrZAOq1opcgrn8B6UO2erYaqBOx4vlTqvNTun7EXQmD/Ktlhu8cUeNDOog2pdbNaTsGkUsrDPmwsOQEW9jbN/pusEey0EO8pA1EhF55XJO1HjGKwlHDe0WTHj4ZGBUMR2qj8FQnjWEZR36Ri7n+ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHOoqe/fRjBxTILhBpPgVfiaPohfeZj/CNDcA53H46E=;
 b=yeOWRi2hMuEosIptpGTAILJgT1/Z6GPLD8xG15KM6a9ka/j6lIk6VsXcYRL2Ef5W29WC8HVgxDzTHFgwo/2pxeEzmDfNVChxM8ciPow7XUQPr5j8CXzRibZlDRJ8IKaHzHN7XiZkJh/EaGvd0FH7WUiIFpF80i0Gf9do8NZNFhM=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB2056.namprd11.prod.outlook.com (2603:10b6:903:30::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Fri, 20 Mar
 2020 02:43:17 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb%9]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 02:43:17 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: akuster808 <akuster808@gmail.com>, "pokybuild@ubuntu1804-ty-2.yocto.io"
	<pokybuild@ubuntu1804-ty-2.yocto.io>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M3.rc1)
Thread-Index: AQHV+3btrZncKwmncECtaZHainEurahP9YMAgAArOgCAAKpbwA==
Date: Fri, 20 Mar 2020 02:43:17 +0000
Message-ID: <CY4PR11MB1879702FE4FD46995A4A680FE3F50@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
 <CY4PR11MB1879A561546B4A1182FDBBA0E3F40@CY4PR11MB1879.namprd11.prod.outlook.com>
 <9eac0173-7497-5994-7ce3-136cfd2806e9@gmail.com>
In-Reply-To: <9eac0173-7497-5994-7ce3-136cfd2806e9@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [42.189.136.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92653a38-c534-4a2e-6888-08d7cc787222
x-ms-traffictypediagnostic: CY4PR11MB2056:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB2056A6BEDAC04E4D4642EA49E3F50@CY4PR11MB2056.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(346002)(136003)(376002)(396003)(39860400002)(199004)(33656002)(316002)(81166006)(8676002)(81156014)(8936002)(4326008)(15650500001)(26005)(186003)(66476007)(52536014)(66446008)(7696005)(5660300002)(6506007)(76116006)(66556008)(53546011)(64756008)(66946007)(54906003)(55016002)(110136005)(9686003)(2906002)(71200400001)(966005)(478600001)(86362001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB2056;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cGSb9FbJnWL+YiBC9yTtqqOifzqZKRQgQlyICwkdTQquuVcSBphnv27x4pzSUtRcx7G6VTGanG3Abv3ki7viL0r4AT9NHB77YfV073OSMYcaOIYKKACzNgU+fP4l+k+U4ZPrwDmWbgZJpAbpxRqbS+n+wHHvADekA3/GnioLi3/8zq3WgIiq79ij10saKd7UvDHHi4uhH6Zt3ArIe8lKSUvshYDiSbWsnTyXieocp8mUDoso5qhSECP0Gkmt/XtQS25lTE+w5wFC7N7n8EsQ1iEzZIsHLbuhFakvJ2AIwfedOEjXyugkQOgfmUW0R9RChUjYdUX9mYL43L+5jMHbKJBQcG53HIbXOWOB5YKmCbDO6l7Q8DfhZmQzMLvUXMs5ciB0LrAwU7FTfKwrSbfWk1kltlJ4xuqFVCpEdn8CThLVz3OUgTg6LUV/Ge+j4SdU31g3jmwdZ70U7liESTcKUxiv2H/WSd2tAZryCBA/Se6X6tx7A0/CZzoY6t7DLFat4vWFQ78GBuuiOAuFgK8K+w==
x-ms-exchange-antispam-messagedata: iThK7KIvJqR2lVMP4P0sB8vsalJHpXlgyv/SbLbLZs4Piv7s+YFe6uhXBhtAVKJRcpvAklC+yzScRS3dHR2hoOY629R+NUzFYOXsHgCJtWSTfJNDoIX/4ShGFXvgMA6z+UdieGPHWvlGTaFa2RcbHQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92653a38-c534-4a2e-6888-08d7cc787222
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 02:43:17.7204
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DqVXivWLAm5lCQ3wWBV9VCTuOR257lfa1Sq7N2SVPye7DjGnIxeuzyV0GFwtcsCcwMqYXTnzL3qCm7eoO7jD6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2056
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYWt1c3RlcjgwOCA8YWt1
c3RlcjgwOEBnbWFpbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgMjAgTWFyY2gsIDIwMjAgMTI6MzEg
QU0NCj4gVG86IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IHBva3li
dWlsZEB1YnVudHUxODA0LXR5LQ0KPiAyLnlvY3RvLmlvOyB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQo+IENjOiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3aW5kcml2ZXIu
Y29tOyBTYW5nYWwsIEFwb29ydg0KPiA8YXBvb3J2LnNhbmdhbEBpbnRlbC5jb20+OyBZZW9oLCBF
ZSBQZW5nIDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgQ2hhbiwNCj4gQWFyb24gQ2h1biBZZXcg
PGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsNCj4gcmljaGFyZC5wdXJkaWVAbGludXhm
b3VuZGF0aW9uLm9yZzsgc2pvbGxleS55cC5wbUBnbWFpbC5jb20NCj4gU3ViamVjdDogUmU6IFt5
b2N0b10gUUEgbm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlv
Y3RvLQ0KPiAzLjFfTTMucmMxKQ0KPiANCj4gDQo+IA0KPiBPbiAzLzE5LzIwIDY6NTcgQU0sIEph
aW4sIFNhbmdlZXRhIHdyb3RlOg0KPiA+IEhlbGxvIGFsbCwNCj4gPg0KPiA+IFRoaXMgaXMgdGhl
IGZ1bGwgcmVwb3J0IGZvciB5b2N0by0zLjFfTTMucmMxOg0KPiA+IGh0dHBzOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS95b2N0by10ZXN0cmVzdWx0cy1jb250cmliL3QNCj4g
PiByZWUvP2g9aW50ZWwteW9jdG8tdGVzdHJlc3VsdHMNCj4gPg0KPiA+ID09PT09PT0gU3VtbWFy
eSA9PT09PT09PQ0KPiA+IE5vIGhpZ2ggbWlsZXN0b25lIGRlZmVjdHMuDQo+ID4gTm8gbmV3IGRl
ZmVjdHMgYXJlIGZvdW5kIGluIHRoaXMgY3ljbGUuDQo+ID4gVmFsZ3JpbmQgcHRlc3QgZmFpbGVk
IChCVUcgaWQ6MTM4MzgpLg0KPiA+DQo+ID4gTm90ZTogRmV3IGZhaWx1cmVzIGFyZSBvYnNlcnZl
ZC4gVGhlc2UgYXJlIHNldHVwIGlzc3VlIHNpbmNlIHJ1bm5pbmcgdGVzdHMNCj4gcmVtb3RlbHks
IG5vdCByZWFsIHlvY3RvIGlzc3VlLg0KVXBkYXRlZCBzb21lIGF1dG9tYXRlZCB0ZXN0IHJlc3Vs
dHMgZm9yIG1vcmUgcHJlY2lzZSByZXN1bHRzIGZyb20gYSByZXBlYXRlZCBydW4uDQoNCj4gV2hl
cmUgYW55IHRlc3RzIHNraXBwZWQgZG8gdG8gbGFjayBvZiBwaHlzaWNhbCBhY2Nlc3MgdG8gaC93
PyBBIHF1aWNrIGxvb2sgYXQNCj4gc29tZSBvZiB0aGUgbWFudWFsIHRlc3RzIGRvIGltcGx5IHBo
eXNpY2FsIGFjY2Vzcy4NCg0KWWVzLCBza2lwIHNvbWUgbWFudWFsIHRlc3RzIHdoaWNoIGNhbid0
IHJ1biByZW1vdGVseS4NCj4gDQo+IC0gYXJtaW4NCj4gPiA9PT09PT09IEJ1Z3MgPT09PT09PT0N
Cj4gPiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEz
ODM4DQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gU2FuZ2VldGENCj4gPg0KPiA+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiA+PiBCZWhhbGYgT2YgcG9reWJ1
aWxkQHVidW50dTE4MDQtdHktMi55b2N0by5pbw0KPiA+PiBTZW50OiBNb25kYXksIDE2IE1hcmNo
LCAyMDIwIDU6NDAgUE0NCj4gPj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4g
Pj4gQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyB5aS56aGFvQHdpbmRyaXZlci5jb207IFNh
bmdhbCwgQXBvb3J2DQo+ID4+IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBl
bmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+Ow0KPiA+PiBDaGFuLCBBYXJvbiBDaHVuIFlldyA8
YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+Ow0KPiA+PiByaWNoYXJkLnB1cmRpZUBsaW51
eGZvdW5kYXRpb24ub3JnOyBha3VzdGVyODA4QGdtYWlsLmNvbTsNCj4gPj4gc2pvbGxleS55cC5w
bUBnbWFpbC5jb207IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT4NCj4g
Pj4gU3ViamVjdDogW3lvY3RvXSBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVp
bGRlciBidWlsZA0KPiA+PiAoeW9jdG8tDQo+ID4+IDMuMV9NMy5yYzEpDQo+ID4+DQo+ID4+DQo+
ID4+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTMuMV9NMy5yYzEpIHdhcyBjb21wbGV0
ZWQgb24gdGhlDQo+ID4+IGF1dG9idWlsZGVyIGFuZCBpcyBhdmFpbGFibGUgYXQ6DQo+ID4+DQo+
ID4+DQo+ID4+ICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95
b2N0by0zLjFfTTMucmMxDQo+ID4+DQo+ID4+DQo+ID4+IEJ1aWxkIGhhc2ggaW5mb3JtYXRpb246
DQo+ID4+DQo+ID4+IGJpdGJha2U6IGU2N2RmYTRhNGQwZDYzZTQ3NTI2NTVmMjUzNjc1ODJlNWE5
NWYxZGENCj4gPj4gbWV0YS1ncGx2MjogNjBiMjUxYzI1YmE4N2U5NDZhMGNhNGNkYzhkMTdiMWNi
MDkyOTJhYw0KPiA+PiBtZXRhLWludGVsOiA2MDc3M2U4NDk2MzcwZDgyMTMwOWUwMGYyYzMxMjEy
OGExMzBjMjJiDQo+ID4+IG1ldGEtbWluZ3c6IDUyNGRlNjg2MjA1YjVkNjczNjY2MWQ0NTMyZjVm
OThmZWU4NTg5YjcNCj4gPj4gb2Vjb3JlOiA2MWQ4MGIwN2JjZmE0YWRmNWYxZmViMjkwNGZlYzBh
OGQwOWM4OWY2DQo+ID4+IHBva3k6IDZmMDJjYWEzOTk4NWZiODlkOWFkNDllMWY3ODhhOWE4ZGQ2
ZTEyZDcNCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2Fn
ZSBmcm9tIHRoZSBZb2N0byBQcm9qZWN0IEF1dG9idWlsZGVyDQo+ID4+IEdpdDogZ2l0Oi8vZ2l0
LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+ID4+IEVtYWlsOiByaWNoYXJk
LnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnDQo+ID4+DQo+ID4+DQo+ID4+DQo+IA0KDQo=
