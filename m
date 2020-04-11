Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.1832.1586589990329179371
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Apr 2020 00:26:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ATGIRqU4;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: 8UNtv7p9DTytSfb5AEjG8UQVx4tRPdNjNZ5PtjgKBq03hg/6YdJw83Eq1dADFEb+j33cM/y2Hi
 BVdQhIwDczLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Apr 2020 00:26:29 -0700
IronPort-SDR: UtYtqw81NzLyZaSb524y1phyotCw6Uok9i4joYDe3tZ9R+9JQIhLflypsmvSL15pgnDE27bXrj
 d/FAHP1pNcbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,370,1580803200"; 
   d="scan'208";a="252406641"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga003.jf.intel.com with ESMTP; 11 Apr 2020 00:26:29 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 11 Apr 2020 00:26:28 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 11 Apr 2020 00:26:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Sat, 11 Apr 2020 00:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K861QTlTf15RV43gtX+5V5Huxn+jO6B56np6zohD2NOQHAH/B/DGYihNLp07qArIjs3xpLMVl9s5OjqJlDJGFKlrhKiW1cBDclAdiEDArp7Ham/MvPgiqPTi15GgycC3Q22j90nDal+elliV1drwesEAH4gOPev5a0M2USQ9UwG+BBT0MH/VQGsp2t992gUNwwJywfUs1dvfplDS3Sl9oAa5sBDALBdYODMics6YShYuAwYR/AIGiuYUZCE4uYoakI/wmubDQESekc7B6myKNGonf2T/7CamvUKKCFKHOtZMurmalSrsl9qPgYVJG3SFicGDTe6ZVufYNkM67nmc7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VRPLl/qStxXr9J9tyy2BFuSUwdQpfvgClVCf/XQPMI=;
 b=ks++HCeTRCmVOukwCPA4hncO86mlRgN7zoV1M4SNSoKPypkedf/uWu1FGMd0ELoYGmz61yIvtnfBeWZJC775Wns+9An55Ov375uBrHbG+DhxOHvg/9MAoxR7njbCxQXO4ltsJgn2swj3riNIHMaDF31LNNuhGM9qAY1UtzmTU2gtj/g2vFXrW8n+Gpl/fUJr2wM4uaXHMf+KgAKFy3AiUeZl9dU7NHwVAJbtinuw4yLXubGktM38IRWuyTwbfrMLbE0jgD5jRwgmy1zHD5tDUvEPKNZ11Ls5Vs8ynXcHI25F49lnUlksWkrRnkPeYUyB8DDATDn1jaToA2c5UATgEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VRPLl/qStxXr9J9tyy2BFuSUwdQpfvgClVCf/XQPMI=;
 b=ATGIRqU4hZ5zYG9Jmf4aGPi2JfXQyGGz5uhCegAHUJ7Sq6CyJDeVWIqLTFS38791fJlLtJNy1TUGSkMAmecA9T2CrJmN0uszlwGwvHTgcget3a6+xoGRi+qmxP7Vlr34o3X7LeHQifzhXBuWtkMmYMjfyotasfGxhRyLIYmNyyM=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1527.namprd11.prod.outlook.com (2603:10b6:910:c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Sat, 11 Apr
 2020 07:26:26 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb%9]) with mapi id 15.20.2878.021; Sat, 11 Apr 2020
 07:26:26 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)
Thread-Topic: QA notification for completed autobuilder build (yocto-3.1.rc2)
Thread-Index: AQHWDaidT5v2YNGIhEC5K0WlzLYZMahziWiQ
Date: Sat, 11 Apr 2020 07:26:26 +0000
Message-ID: <CY4PR11MB1879762D12519AEC68852879E3DF0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200408040108.BA881414AB8@localhost>
 <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
In-Reply-To: <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [60.49.56.187]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b70654c9-c069-49b8-84c3-08d7dde9a51b
x-ms-traffictypediagnostic: CY4PR11MB1527:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB15272155C07FD761B90B014CE3DF0@CY4PR11MB1527.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03706074BC
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1879.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(136003)(366004)(39860400002)(376002)(346002)(396003)(81156014)(66446008)(8936002)(7696005)(76116006)(64756008)(66946007)(66476007)(8676002)(66556008)(15650500001)(55016002)(33656002)(71200400001)(86362001)(966005)(478600001)(110136005)(316002)(26005)(54906003)(52536014)(2906002)(5660300002)(186003)(4326008)(9686003)(53546011)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5pR4i2oO7bx9xQWcVyKIh8amMuAGYtpyn9ExiAVX1MdeHhHuw47sJYlQhzblYL8304L2Uvu0nGyPzDHujvYKICuJZN0mSjPtd7SVXmzI+dyCcoDl7Mq+XmZ3zV+40NI7D6fcYagSHXHS7TLgYdjYniaYfKibT/Qq0wkblijJBvSWu0kTphDBvO4bPlsLfv4jypc2KOLibY8i/VJwHG9hG6RT+dK41WAjwcnsH+t5O4dpcTNu4Rft6E01urRPTZZc5ziMbcynKd5LSL1bpaaXzDxQ+bBU/cVnQIMg3+fHOgY5vgjhnbEnFsW+X5jw0p+Dwa3RsvZgmDFp3IkIQX+CpC1Cu1Jfs5IbdA2G8HZ82PO5935LI8mdZSUUbZnS0U6g+XuzxddOgm+o1uARahp/F/yAT6BcMeN3/MY0X1qycqRu4W1nv4BUpQTM+Y2KZrERuzYL+xROyb06mcDum4ePIhf/ls9gtZaXWloRJWVvN0Sa1Q4/gR7fFFyYC+tRG5Sgs+1SWJ5PKQGOXBbFZpDN+w==
x-ms-exchange-antispam-messagedata: hzz1BuNt3EqRAzyuerDP3Poo2rFLLeLDrk6XeO9mKYup4khbjxWNoWl0PT33ltyZ7M1iDIiiUimzEeS3I8POZYo6RuBqGy7fphEzubPn6Cyy2arKKygx6E9KvotxWsEtMxF85A1xOhT9PKCHdMfUTA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b70654c9-c069-49b8-84c3-08d7dde9a51b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2020 07:26:26.1837
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yHcjwAql90J0wSAWaJzyY3i06AI2nSpS4pJr5zXl+EZOK3q4/spDKlN2k8Qm7M7V06cS2eqrIEjrbbv5mW94Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1527
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgeW9jdG8tMy4xLnJjMjog
IA0KaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL3lvY3RvLXRlc3Ry
ZXN1bHRzLWNvbnRyaWIvdHJlZS8/aD1pbnRlbC15b2N0by10ZXN0cmVzdWx0cw0KDQo9PT09PT09
IFN1bW1hcnkgPT09PT09PT0NCk5vIGhpZ2ggbWlsZXN0b25lIGRlZmVjdHMuICANCk5vIG5ldyBk
ZWZlY3RzIGFyZSBmb3VuZCBpbiB0aGlzIGN5Y2xlLg0KDQpOb3RlOiBGZXcgZmFpbHVyZXMgYXJl
IG9ic2VydmVkLiBUaGVzZSBhcmUgc2V0dXAgaXNzdWUgc2luY2UgcnVubmluZyB0ZXN0cyByZW1v
dGVseSwgbm90IHJlYWwgeW9jdG8gaXNzdWUuDQoNClRoYW5rcywNClNhbmdlZXRhDQoNCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJkaWUgPHJpY2hhcmQu
cHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+IFNlbnQ6IFdlZG5lc2RheSwgOCBBcHJpbCwg
MjAyMCA5OjIxIFBNDQo+IFRvOiBwb2t5YnVpbGRAbG9jYWxob3N0LnlvY3RvcHJvamVjdC5vcmc7
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IG90YXZpb0Bvc3N5c3RlbXMuY29t
LmJyOyB5aS56aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+IDxhcG9vcnYuc2Fu
Z2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBD
aGFuLA0KPiBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBh
a3VzdGVyODA4QGdtYWlsLmNvbTsNCj4gc2pvbGxleS55cC5wbUBnbWFpbC5jb207IEphaW4sIFNh
bmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFFBIG5vdGlm
aWNhdGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVyIGJ1aWxkICh5b2N0by0zLjEucmMyKQ0K
PiANCj4gT24gV2VkLCAyMDIwLTA0LTA4IGF0IDA0OjAxICswMDAwLCBwb2t5YnVpbGRAbG9jYWxo
b3N0LnlvY3RvcHJvamVjdC5vcmcNCj4gd3JvdGU6DQo+ID4gQSBidWlsZCBmbGFnZ2VkIGZvciBR
QSAoeW9jdG8tMy4xLnJjMikgd2FzIGNvbXBsZXRlZCBvbiB0aGUNCj4gPiBhdXRvYnVpbGRlciBh
bmQgaXMgYXZhaWxhYmxlIGF0Og0KPiA+DQo+ID4NCj4gPiAgICAgaHR0cHM6Ly9hdXRvYnVpbGRl
ci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMy4xLnJjMg0KPiA+DQo+ID4NCj4gPiBCdWls
ZCBoYXNoIGluZm9ybWF0aW9uOg0KPiA+DQo+ID4gYml0YmFrZTogNDYxOGRhMjA5NDE4OWU0ZDgx
NGI3ZDY1NjcyY2I2NWM4NmMwNjI2YQ0KPiA+IG1ldGEtZ3BsdjI6IDYwYjI1MWMyNWJhODdlOTQ2
YTBjYTRjZGM4ZDE3YjFjYjA5MjkyYWMNCj4gPiBtZXRhLWludGVsOiBiZDUzOWVhOTYyZWUyODVl
YjcxMDUzNTgzZTNjMTdmYTE2NmZjNjEwDQo+ID4gbWV0YS1taW5ndzogNTI0ZGU2ODYyMDViNWQ2
NzM2NjYxZDQ1MzJmNWY5OGZlZTg1ODliNw0KPiA+IG9lY29yZTogMTc5NWYzMGQ4YWI3M2QzNTcx
MGNhOTkwNjRjNTExOTBkYzg0ODUzZQ0KPiA+IHBva3k6IDVkNDdjZGY0NDhiNmNmZjViYjdjYzVi
MGJhMDQyNmI4MjM1ZWM0NzgNCj4gPg0KPiA+DQo+IA0KPiBUaGVyZSB3ZXJlIHR3byBmYWlsdXJl
cyBpbiB0aGlzIGJ1aWxkIGR1ZSB0byBjb2xsZWN0LXJlc3VsdHMgZmFpbGluZy4gSSBmaXhlZCB0
aGUNCj4gbWlzc2luZyBkZXBlbmRlbmN5IG9uIHRoYXQgYXV0b2J1aWxkZXIgd29ya2VyICh0aGVy
ZSB3YXMgYWxyZWFkeSBhbiBvcGVuIGJ1Zw0KPiBidXQgaXQgd2Fzbid0IGZpeGVkIHlldCkgYW5k
IHJlcmFuIHRoZSBjb2xsZWN0aW9ucyBzY3JpcHRzIHNvIHRoZSByZXN1bHRzIHdlcmUNCj4gYWRk
ZWQgYW5kIGhhbmRsZWQuDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJkDQoNCg==
