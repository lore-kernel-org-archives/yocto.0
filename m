Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web10.1291.1591852604138484446
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 22:16:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=F03y20T8;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: xPUFzu/CmMNKCPTvVS/0c1kmbWepIuSUn3Z2YdSKUkgZ0bMS90vb2HFPAU2pOy+tnFyUzM7WF/
 897vFtbQ2bQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2020 22:16:43 -0700
IronPort-SDR: oBDtBkT30A46tZz9/gJ6yTvgC+ZPD4kq9o/OW3t+M/R2frpWqYoYKQUBLeyfQdDUY+AFzpwDWB
 QYr0xyg2OevQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,498,1583222400"; 
   d="scan'208";a="418991047"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
  by orsmga004.jf.intel.com with ESMTP; 10 Jun 2020 22:16:42 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 22:16:42 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.54) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 22:16:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvwtHYgm21DSHr4Pj0tvna88wPZ8ERaifc4Ut3gg9Zp0GikT2hhco5S3UPMYZeUwZ1KjNEFH525OavrDUIrtdnw6E5sLRkxOKqri9tgXykyInzr/ulWgBXMs0G97xnUL+wFx3lEGZaAzXvjgeCMUg90dUqtAQVJuyhh7HVu25ngWMfg1jn9zrZaonr7MKWUBXfc8CXNZHgKt6uiPtKxvAf7n0J8aSHV4AVoRTwgI+d/hL9jp9d6i+nfcgj+MbJh6hZtZynU0pfUvZUM6N6bNznd+YlBSUOgeiZ0IL49QGgo87TWt9EyWX3p4MQ7TwfEO1mk7GltoP9P/vxKWY4+bYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r6j0zuaIApFt4hWSyuAPZU3AF4DOTOEUTmo4sVqEahE=;
 b=Cbo2OBeSFTyQsAu78K2S2XluLTBHw1PTA1/WE1Y9LlralT0OVJLlxNnPu/4GjpxQ1h0qFxU/u97c6Vhr55OBiVJ/wTS9/38U0T7cR+YlcpoOVem+u+1IQoPG3XUYkkpEjLHUQ/IOo6u6ZaiEK/XbVPodX5n/3ondt9s0d6/oW6WWbgjGb1LSib5resPz/6XcFmJ4vtpL9qQy/6CQSA1GUQnENyNYeixRlwUsUjL1oTLrqUG7cyAc1niTnHj187VCY5W/2LJ31ro2CJIMo3jpmiYN+ODO9xRAGxDwN/v1Re9bBhvx0nYziDEwfvWi9Zrd4/6sm5wTT8tySmULed2lZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r6j0zuaIApFt4hWSyuAPZU3AF4DOTOEUTmo4sVqEahE=;
 b=F03y20T8ibHvEnP0XBPx1bFz797KYv5sf1Xxfw3CQBiOFu2Y1nJSki3VqT3VR5g9VFuW0Cj4X5fTG56PQcOs2IkYSVW+xDH7y3izAK7mhW3Hl5sBMD7gHqiTk+PHfzvJpel2VM9usTQL/UAv11ztHx584BcY3uOPgqmxP3pk2MI=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3816.namprd11.prod.outlook.com (2603:10b6:a03:f8::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 11 Jun
 2020 05:16:41 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::e9a8:bb82:5c7e:3151]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::e9a8:bb82:5c7e:3151%5]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 05:16:41 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "pokybuild@localhost.yoctoproject.org"
	<pokybuild@localhost.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.1.rc2)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.1.1.rc2)
Thread-Index: AQHWP6978CnKt96DdUOhHw3F0gAajw==
Date: Thu, 11 Jun 2020 05:16:40 +0000
Message-ID: <BYAPR11MB362486E077EAEFFBA2F13211E3800@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200609150522.826B64F8FF3@localhost>
In-Reply-To: <20200609150522.826B64F8FF3@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: localhost.yoctoproject.org; dkim=none (message not
 signed) header.d=none;localhost.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [175.139.89.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed9f0b5a-838f-4c66-6954-08d80dc69ff9
x-ms-traffictypediagnostic: BYAPR11MB3816:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3816D1B736ACD9648EDB4A97E3800@BYAPR11MB3816.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2aqoIHS212WqikAv63+qUZRgZx05IlKm54gPBC4SIiQUNBVR1IGNh31FZq21J5+8FJFxSF7Gyh2zgRcXZckE92pK7d3t9SzarY1GuXqpZWFxKSgpnn7Z3IuyNxyiHbcUnkIV0O/0cyMcFhR2lRgnB9/Diu7UQd1GIiT+K9bBRpxo6nW37+KBBpynOcEn230F+HtJOPfBoM9SU+mthWzFo24RKxsFbJ/6HYkqBQnDsSczRrqcbyCUAES5bObFE+dbZy0Zofay51NI5qJsAxZ0bSPdGLWS441WbQTm098ZP0aP2lsOW6vOveFOnp+FqooUXXzBZNy3rABMbL5m8tLlN5QAv1qZpeni5AeV6HdA9GQd8JORa6c3CIZ2McvoYOCjpc5RlN15DmEOC6LTnwldJA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(376002)(346002)(136003)(396003)(366004)(9686003)(15650500001)(55016002)(110136005)(66476007)(66556008)(316002)(8936002)(55236004)(26005)(54906003)(64756008)(2906002)(71200400001)(4326008)(66446008)(33656002)(66946007)(53546011)(6506007)(7696005)(478600001)(76116006)(83380400001)(52536014)(86362001)(966005)(5660300002)(186003)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: bi4WNi9j2NSOlizhFP+feVNDVQxFWj6Rjm63t9UjGZEnCA+S2+nenDBMb12394PF+7r0scYrkqJA3a7xklNdYrj9LMsSj0af8CBL9s/pbhxvQT/UoV9ASx9Lbdcp2MPTx+YzbNniUnf0ja72rwKPSk8VVDzv8BHTmy9VtfzLSEb9cWkch1C8wiWJ5A7/T9WeZP8Rl8f3w931lHNf+vmPWVoaQJS9Tf7xKIxtsSYYkGlIeK8OTqmtY5N1k/MxwOEbvmMxFSC9gM2nk0yd7XMU7CF0NNR6WUpPhnOm4Q7+vSjVAXxiwrIJAz6ZvxYIB+/qJebg/MYxF0UM4Ta+W52YPnuyXmz9t25lKFtxjLUK1NxN8ggZ/BzCm2I0or4qiA+GIhZtf5c+1YvEPsrusrrnAaEYiVvsDYvgNuF4sU6RzXXxpGyulad4kjYZ4/E4mhzSLAV+LMdvToguSyi9qR7zpIu+gkaNpioqzPwaA7cZH4g=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9f0b5a-838f-4c66-6954-08d80dc69ff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 05:16:40.9424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8t59wTdCrYQJBkZAax6Gk8XZrVrBWrZ74MGFibMtk5Egc66Irsq4WpYgm5M+jd4YVJW9cg5VWW6p75FLBcEJQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3816
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IHJ1bm5pbmcgUUEgZXhlY3V0aW9u
IGZvciBZUCBidWlsZCB5b2N0by0zLjEuMS5yYzIuDQpXZSBhcmUgcGxhbm5pbmcgdG8gZXhlY3V0
ZSBmb2xsb3dpbmcgdGVzdHMgZm9yIHRoaXMgY3ljbGU6DQoNCk9FUUEtbWFudWFsIHRlc3RzIGZv
ciBmb2xsb3dpbmcgbW9kdWxlOg0KMS4gT0UtQ29yZQ0KMi4gQlNQLWh3DQoNClJ1bnRpbWUgYXV0
byB0ZXN0IGZvciBmb2xsb3dpbmcgcGxhdGZvcm1zOg0KMS4gTWlubm93VHVyYm90IDMyLWJpdA0K
Mi4gQ29mZmVlIExha2UNCjMuIE5VQyA3DQo0LiBOVUMgNg0KNS4gRWRnZXJvdXRlcg0KNi4gQmVh
Z2xlYm9uZQ0KDQpFVEEgZm9yIGNvbXBsZXRpb24gaXMgbmV4dCBUdWVzZGF5LCBKdW5lIDE2Lg0K
DQpUaGFua3MsDQpTYW5nZWV0YQ0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogcG9reWJ1aWxkQGxvY2FsaG9zdC55b2N0b3Byb2plY3Qub3JnDQo+IDxwb2t5YnVpbGRA
bG9jYWxob3N0LnlvY3RvcHJvamVjdC5vcmc+DQo+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSwgMjAy
MCAxMTowNSBQTQ0KPiBUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBDYzogb3Rh
dmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBBcG9v
cnYNCj4gPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55
ZW9oQGludGVsLmNvbT47IENoYW4sDQo+IEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5j
aGFuQGludGVsLmNvbT47DQo+IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7IGFr
dXN0ZXI4MDhAZ21haWwuY29tOw0KPiBzam9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgSmFpbiwgU2Fu
Z2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBRQSBub3RpZmljYXRp
b24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tMy4xLjEucmMyKQ0KPiAN
Cj4gDQo+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTMuMS4xLnJjMikgd2FzIGNvbXBs
ZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXIgYW5kIGlzDQo+IGF2YWlsYWJsZSBhdDoNCj4gDQo+IA0K
PiAgICAgaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMy4x
LjEucmMyDQo+IA0KPiANCj4gQnVpbGQgaGFzaCBpbmZvcm1hdGlvbjoNCj4gDQo+IGJpdGJha2U6
IDZjYzA5ZmEzMzEzMWY3MWEzZmQwZTMzNmZmMDdhNDE4NmI0MWJmOGYNCj4gbWV0YS1ncGx2Mjog
NjBiMjUxYzI1YmE4N2U5NDZhMGNhNGNkYzhkMTdiMWNiMDkyOTJhYw0KPiBtZXRhLWludGVsOiAz
N2JmMjM3NjZkNDE4MTBmMGViODZiNGNiZTNkNWYyYzkwMGJiNTNjDQo+IG1ldGEtbWluZ3c6IDUy
NGRlNjg2MjA1YjVkNjczNjY2MWQ0NTMyZjVmOThmZWU4NTg5YjcNCj4gb2Vjb3JlOiA2ZmE5Njdm
MTk0ZWRkMzE0YzkwMjZjODBmOGQ5MzM2MGFjNmQ5ZWZhDQo+IHBva3k6IGZlYmJlMjk0NGMwYzRh
MDRiODVmYTk4ZmRjMjYxMTg2MTE1OTU0ZDgNCj4gDQo+IA0KPiANCj4gVGhpcyBpcyBhbiBhdXRv
bWF0ZWQgbWVzc2FnZSBmcm9tIHRoZSBZb2N0byBQcm9qZWN0IEF1dG9idWlsZGVyDQo+IEdpdDog
Z2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+IEVtYWlsOiBy
aWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnDQo+IA0KPiANCj4gDQoNCg==
