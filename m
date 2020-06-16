Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web11.4317.1592284372788022167
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jun 2020 22:12:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=h+GedWmW;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: X0lYNjQVGXkbhswMc2HkaiAXriIm+ukuLLYKl+xhicpNuwp+DTD5a+31NtlRxnBZPYG/avBYET
 Thwa+uBCaY6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2020 22:12:52 -0700
IronPort-SDR: zUarvxeXINVyGgYo61xxHRxQLhEAM+cXYX9jNlHZFJy3wTyFsX+Drk/z10XDHqTHwR+mK0F07d
 6t5C3PObmwZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,517,1583222400"; 
   d="scan'208";a="273019180"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by orsmga003.jf.intel.com with ESMTP; 15 Jun 2020 22:12:51 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 22:12:51 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 22:12:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 15 Jun 2020 22:12:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AvaAjoIqgqNqqDYk+kGOoOObZp89V5ynlZD8FGbU01C5Y/MF/wJ3rsp8l6WcFxt4PLwbo9JQXwoFmCpOFWk9vXJmFSYQmkg/xnRXWdSx7cevWBe6YQ96WPLosebdcItVNJSInFIccipkG+8lZRSJKEnkKHV7IGwxBD5Jo2r5SpUc9StFetLapRzzpL841yU1TKB13hyeefAIpYmbEx7ScqPCtoMm4xmToLuv76/7X5t33StlY6nodxz8eTa6zK7wyq9F7FAC/H1Jypv+/ZD0uUfHDkz6yTwkWLjBrEKctbayWQbgEydMEvWvyhHFBdL2Ef9XSKFHYgyVyWQR5x811Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wn3hcY4/pwxtAtx1iFy0+kuK6F09XdaHUvJ0QCRnL/M=;
 b=NRn/fb1JEY1zeL9kjsFkzhKzOz78gel47ocogtpJCVv9ANYnkuxQMxCai6onuxvH36VYbJDOafOvni+Qc57a2W6rvmpApuozHOU6hy9lkZ/bFM2/w2Zvdxr8BjattmxwfMsjtgl6eumIz1k8QyxtUGxIPOxTr2KA/ehIO2q2vTGqOWOY57/wDgdQ8GCzNQzEeB9t8xIdEfhbOAVOboe5stu7FQ0dp7fvVjgIPNCpTUzhtdHDqJPvz6hp5FbwcuGVDmgq7RtSq3Y+3rQ9m7GUmP+a2Sts2pMfz02pbvvzb3aELqJI0rgGanfDtTEsXyqDHHEH09mA7zkmhAPcRYeMTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wn3hcY4/pwxtAtx1iFy0+kuK6F09XdaHUvJ0QCRnL/M=;
 b=h+GedWmWxVeE4LJ/dmAjOkEwDapZhzDksA3vRN3a79gQcslP9wQ6MkcehvRJs7O0pnkXpRdJU3YQudwliVtkl2RXQ3cUm1o4JG5TDlTR/5dKm4DQmX1pVYrwnPwd0ux+LKWz3MhSCat6qe1A/eiGajMLyhTli2Z+wJ/KDNKG6sM=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3352.namprd11.prod.outlook.com (2603:10b6:a03:1d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Tue, 16 Jun
 2020 05:12:48 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614%7]) with mapi id 15.20.3088.029; Tue, 16 Jun 2020
 05:12:48 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	"Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.1.rc2)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.1.1.rc2)
Thread-Index: AQHWQ5zF8CnKt96DdUOhHw3F0gAajw==
Date: Tue, 16 Jun 2020 05:12:47 +0000
Message-ID: <BYAPR11MB3624C3C3D61B81F18C31133AE39D0@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200609150522.826B64F8FF3@localhost>
In-Reply-To: <20200609150522.826B64F8FF3@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [192.198.147.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3947493-c2d2-4466-c915-08d811b3e936
x-ms-traffictypediagnostic: BYAPR11MB3352:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB33525E8A4C198CC3291236CAE39D0@BYAPR11MB3352.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r0LpiadWVU8wj5+hXWlXQrMPqg4G4068fL6clHE5rSZRajVf8Kmw40oZOxG+qZ/011TFa7OZNT/EYXV3CSyJ1N+kW7ZVZ5kiWujDIcyiT3H6PqcIFVb/3pw4Koyx65ARkQgj5aC7BcbM6QwZz23N3Vuza0PaqOp+ly9dEsrXjoJWEkyacSJ/wSme1xG1SSbPUdfGwAPE2n4pNGnl1PDHjj5izhH53+hdqVPU7U/7CpNZNaZmy0VELw6KxuR52esuRYnaWh5XqBzwE+9FlFWSbjJV5iiLf5T8+QLaT1RDpgOuQIn/QGkzSRqGV2F8vj3nC7aw/qinTsognXddNPopNXuVNlqyCSkFGwupVPhtZq6WTyALPVCB3lq85M1tONjByovtcCVpHh58/NjbECcrLg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(366004)(346002)(376002)(39860400002)(396003)(6506007)(55016002)(53546011)(9686003)(7696005)(4326008)(66446008)(66556008)(76116006)(66476007)(66946007)(64756008)(478600001)(54906003)(8936002)(2906002)(8676002)(86362001)(966005)(83380400001)(71200400001)(5660300002)(6916009)(15650500001)(316002)(107886003)(26005)(52536014)(33656002)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: t2+2Y6xHhRFwSfjwHnzaUVVG4HEdAxkYf5wxLNZhH1l0TkaesQIt3J/UZxNW0R4IZOC9UoO1+oXU+4VJAaffYWYiCxKAS+2NlltQSTJA4lsZo4P2okpizRhLKrDetJKn8Ws9uAJpnMV86xSR1c6UrJ/1KCw2MvVOWvcKu9c1elfKIpJYBmw415RmlN0F2bSTaU9a9MkFNJNqMduNx/Jnxt2AYrdAAzNH6Li3dZF9h7TogBp7nmmLt+tbBuFKA9vBzBjB8LTHUzYcst+xBL/wYiXWNJMwxpfg0WqTA4A9UBJXwywFmBboOVHC8STizhNSb8/nS6edFf17ZYBFJp2ql53Aq4YxoHd2ZMUu5Yk2h7Rhu9RB34Dsov2DqBXEZ91nIC7rUl/HNVxkGdlrZ4m+wEj8nqxKmT+IbBE3ezYRxD+7mKx2uriXQPDC+71vEBgqJ5dj7iLCAfC5dfSDfx1hdiML09bhd7E06s+2XkGUOUyZbalAmxCOA+zUlfEVgmM9
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d3947493-c2d2-4466-c915-08d811b3e936
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 05:12:48.1115
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q5p9LY6rh4V0cdvog7UigXvGoTcSbgyxwRt3wleg1KcLWB3XzM0Rd8MTn/wiYb8RnmF7twx4uYxXsZ0rH7jFcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3352
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQWxsLA0KDQpUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgeW9jdG8tMy4xLjEucmMy
OiAgDQpodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kveW9jdG8tdGVz
dHJlc3VsdHMtY29udHJpYi90cmVlLz9oPWludGVsLXlvY3RvLXRlc3RyZXN1bHRzDQoNCj09PT09
PT0gU3VtbWFyeSA9PT09PT09PQ0KTm8gaGlnaCBtaWxlc3RvbmUgZGVmZWN0cy4gIA0KTm8gbmV3
IGRlZmVjdHMgYXJlIGZvdW5kIGluIHRoaXMgY3ljbGUuDQoNClRoYW5rcywNClNhbmdlZXRhDQoN
Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogcG9reWJ1aWxkQGxvY2FsaG9z
dC55b2N0b3Byb2plY3Qub3JnDQo+IDxwb2t5YnVpbGRAbG9jYWxob3N0LnlvY3RvcHJvamVjdC5v
cmc+DQo+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSwgMjAyMCAxMTowNSBQTQ0KPiBUbzogeW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlp
LnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9vcnYNCj4gPGFwb29ydi5zYW5nYWxAaW50
ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sDQo+
IEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47DQo+IHJpY2hh
cmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7IGFrdXN0ZXI4MDhAZ21haWwuY29tOw0KPiBz
am9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVp
bGRlciBidWlsZCAoeW9jdG8tMy4xLjEucmMyKQ0KPiANCj4gDQo+IEEgYnVpbGQgZmxhZ2dlZCBm
b3IgUUEgKHlvY3RvLTMuMS4xLnJjMikgd2FzIGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXIg
YW5kIGlzDQo+IGF2YWlsYWJsZSBhdDoNCj4gDQo+IA0KPiAgICAgaHR0cHM6Ly9hdXRvYnVpbGRl
ci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMy4xLjEucmMyDQo+IA0KPiANCj4gQnVpbGQg
aGFzaCBpbmZvcm1hdGlvbjoNCj4gDQo+IGJpdGJha2U6IDZjYzA5ZmEzMzEzMWY3MWEzZmQwZTMz
NmZmMDdhNDE4NmI0MWJmOGYNCj4gbWV0YS1ncGx2MjogNjBiMjUxYzI1YmE4N2U5NDZhMGNhNGNk
YzhkMTdiMWNiMDkyOTJhYw0KPiBtZXRhLWludGVsOiAzN2JmMjM3NjZkNDE4MTBmMGViODZiNGNi
ZTNkNWYyYzkwMGJiNTNjDQo+IG1ldGEtbWluZ3c6IDUyNGRlNjg2MjA1YjVkNjczNjY2MWQ0NTMy
ZjVmOThmZWU4NTg5YjcNCj4gb2Vjb3JlOiA2ZmE5NjdmMTk0ZWRkMzE0YzkwMjZjODBmOGQ5MzM2
MGFjNmQ5ZWZhDQo+IHBva3k6IGZlYmJlMjk0NGMwYzRhMDRiODVmYTk4ZmRjMjYxMTg2MTE1OTU0
ZDgNCj4gDQo+IA0KPiANCj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2FnZSBmcm9tIHRoZSBZ
b2N0byBQcm9qZWN0IEF1dG9idWlsZGVyDQo+IEdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5v
cmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+IEVtYWlsOiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5k
YXRpb24ub3JnDQo+IA0KPiANCj4gDQoNCg==
