Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web09.208.1626395435312257162
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 17:30:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=kGCiIdzy;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: rebecca.swee.fun.chang@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="190331253"
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; 
   d="scan'208";a="190331253"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2021 17:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; 
   d="scan'208";a="630910305"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by orsmga005.jf.intel.com with ESMTP; 15 Jul 2021 17:30:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 17:30:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 15 Jul 2021 17:30:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 15 Jul 2021 17:30:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlyhBTZLDSPSh5+pTZIQa3kTMlurEyfopco1X1mNQGZCSexp+Asz0vTseNCfHrh1xk55g3JYY9RfxSQR66BSVBQ3+u0V8zxcNvWT5VuEFF6jSvhXwVQJd7XHw59ZayoenaVBgdwQEvKvEXylCgFVBRKIaZJ/icFRpm3sNv9y+bT0exkGYolCYzCMCK0ABvXqjvJLFdHddcqSDC9aeFqRQvL8J6YT1AODjb5Ky/r6/EaPq0KeSfQWOcZUk/2NjPZoA4r4obyqNI93aBsU97Lm68jPmXlyibHkMOR81h72ET9j0oR08A76GqFzPoT7OHX45heneC92gRAfMxs1OE/llw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jnf8Hdgl/uLn2PAm9M6IPYIHmTR4qpYwgkudRMgfjOU=;
 b=QF6RxSFk7d1LaPfZYEqXFUP+g1HdSEWp5+/wzp7250nqm8gKY+vZRh5nd1O0x7eDdRrRDEUKyrZU2bLJ51KSuuGXgmUfT1IiKC2Nt8AoweS96sK3OJtc2mAbFIx4MZIJBson7+SQ6yvxWP/d90zzFxLhBOaepBHClBJeSSX4a+YDkO9BWYUqy/Rm7eRZUlfPxpPqU507HZrTz9iiXCoGNflbJkjfechT40Bl4prhppaNrifY6w7nbuQmz04O8dYo6IELz3Ulf8VnBQ3rSkXdeq5c6kL0j/BTG5604suzGBIlnHekf6jfjSafUEwtMKI2D+TpavNBuPxMJdk146t4jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jnf8Hdgl/uLn2PAm9M6IPYIHmTR4qpYwgkudRMgfjOU=;
 b=kGCiIdzyg/o/nEzh3oymZqmJ/xV3UQMvUXMmXGyr3dviQopgCi0BDOooMwbh8nC/HLMpSoh93RqmuKLVOCe1p/uOD7y2825AIzgCODw5Zibc06t/HnjsAynJafnu2rRuK6uK8LN+ehooVNY1ZQCyVL9c5fvfbcDtXxjKy+DmYng=
Received: from DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) by
 DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.23; Fri, 16 Jul 2021 00:30:27 +0000
Received: from DM8PR11MB5576.namprd11.prod.outlook.com
 ([fe80::e522:cd29:d862:9561]) by DM8PR11MB5576.namprd11.prod.outlook.com
 ([fe80::e522:cd29:d862:9561%3]) with mapi id 15.20.4331.024; Fri, 16 Jul 2021
 00:30:27 +0000
From: "Rebecca Chang Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: Simon Glass <sjg@chromium.org>, Tom Rini <trini@konsulko.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] binman support in u-boot
Thread-Topic: [yocto] binman support in u-boot
Thread-Index: AddzrzC5NN7AIrPsTqOZ88CEjqFJDAApCFsAACYE1wABO5FJ8A==
Date: Fri, 16 Jul 2021 00:30:27 +0000
Message-ID: <DM8PR11MB5576F6358306F3660595729D8A119@DM8PR11MB5576.namprd11.prod.outlook.com>
References: <DM8PR11MB557610453677EA7EFDE372EB8A199@DM8PR11MB5576.namprd11.prod.outlook.com>
 <20210708234524.GE9516@bill-the-cat>
 <CAPnjgZ0ACWCFizG3ha3a9xKXTDiDE6tQj-aR4P+qPAsE7bwaFw@mail.gmail.com>
In-Reply-To: <CAPnjgZ0ACWCFizG3ha3a9xKXTDiDE6tQj-aR4P+qPAsE7bwaFw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9db72fa-1a17-42b4-8c0e-08d947f0e922
x-ms-traffictypediagnostic: DM8PR11MB5637:
x-microsoft-antispam-prvs: <DM8PR11MB5637F9E0690DB201B66997638A119@DM8PR11MB5637.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rTL079uxYRGmEViLOqd8ImqYm8+qQHFtK94n1a4HE/14c7sJx/4WpSmIzY8uyXQthkduT3L9wZDCOFr1xVHdrTcJYDqmawomr3BzQpI7in1UOE74wzf8RF+nBPXH6uTR/szQj8d3jIFZ3LXBKMK3DTDGysSex61KwTuVkNCzaAUY4eeLpb6Zu7OOHP+iT9V41tCRJ6gec9DTFzKxbkRgxvdGuHr2N3NMm9DPPBxBvc9BrpOt5lkpSd0pyCur2aVdlhGc0KqK/p/p9WSgttSt6dd1ZGEEJaCPg84ZTmkSnogjhaqqhBHIeoDI9OWUf7G4KKFD93CD2j9L+M3bftFjRXOnt4poWDSf86aDxcQYdYIOoirSpmagJ+munl97IhKvXGSXeQ9A0h8zi1jJu3mYMRyDjoecXga9k+uEn+IoX4YC/7IH4pCWAQNOb8IUYW1QZMkK8HT8qVwts/T0yTNE6HLZDk2Q1zzojHyN+W+X7fiZibOZJz3gg8WKpTjWIt9Rqu+Oq3sUyL6Be2o4X2ZrlfrI1zgslDiSdBEgchQ0Gg2PdcCjhWFj3q7zCXFek4v/Nsf7MenB20y8R6/TvJP+RiHaDQsZmC/3cBj0rSC8i3AjhSK8ww5wq9VJNscqW6OZsx9iZ5K1Z9Ls4xWN2oZZt/ZHZ0SjFDiSY9Xga5AlXMHu/bR3jgX4ou/FgJ4svigvC1hV7OBCvO+16P1K9hBL4SffSg2eXLoyrzVdBgxXhHzwP6tAp8NttVLJUP3lxg4wg3fcAkeFI3c0sLFW90ZhRA6WskNzMT5ADlKT1Tewq1s=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5576.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(86362001)(55236004)(38100700002)(9686003)(53546011)(478600001)(26005)(4326008)(966005)(6506007)(122000001)(83380400001)(2906002)(33656002)(7696005)(110136005)(71200400001)(66556008)(76116006)(64756008)(66446008)(66946007)(66476007)(8936002)(55016002)(186003)(52536014)(5660300002)(8676002)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmZ0TlpFU1lrVlVhSkdDUlF2dDg3dkF0aGttWTFCTXFhbVBHU3N4YXg0YmlO?=
 =?utf-8?B?c0NDcjZJR0xhNjVtcTlhN0Z1Tm04dVhZUmVCc0cyRThYSTd2L2xaSitteXRj?=
 =?utf-8?B?WE1EdFFIYWhUWm5zcDhkWTVUN3JiWHBmcitHTjNLS3BoeFFGZ1RIYjhsMXJD?=
 =?utf-8?B?M2J3NVZZSEQ3RG9Ja3FZUHoyV284STBmOEpqcjhRckhzdHYrWGltLzhiRTJn?=
 =?utf-8?B?VjBWMzdOZkRkaFJuSVpkUXpIbmxHZVh4MXRVTzNITUM2WWdnbFYrVnpvSllP?=
 =?utf-8?B?OGJRMGYvcXZPaDBXNTNsZW5BMVY0VGFyOXAvT2c3Mlc0Y2F2UEY4RUlDNGhx?=
 =?utf-8?B?VGZZWGU4TWZ0cFJHSFJPaGcxT1ZYWDVGcGp1NXlTWkVsZ2IrZnhUaW9UUXBI?=
 =?utf-8?B?NUtlanlLaTJnQVlMK0NvVzNneUEwK0kzVVlIcm5IS2J2SFZkczZGVmJkaHpL?=
 =?utf-8?B?SVh1a0QyUHhrandvMFpSQ2pXVHQ5c1daN01FVzByK1FwQk40K3Q3NnhtMmVv?=
 =?utf-8?B?SkZQWUhDOWY1VFNrbzhKbU9NWFM2RDlYYTJpRVo4bzgyTm8zSnZJSVdIK0Jx?=
 =?utf-8?B?c0dvMlRIbVZlbWlCWEtoY0d1ZVZOZ1UxNUtjempUZlJWWDIyalJ5bHkvV2tW?=
 =?utf-8?B?Y1pHR1RaTklvUW9VSXhxUllGMGxvcE5DUXBkYkhDZm8rWTFQdnZwa0loOGR3?=
 =?utf-8?B?QjhzNjVlSHV4dkZRc1lqSG5ZY0ZaNm1CYUgwR1ZNL0hhNmhTT3phRm9BcmN1?=
 =?utf-8?B?UzFZa0F0M0EwOXpiZmhoQW5JOElLQ0xlaHhzZEZSNEltV0gwZ0FzL1ZPdjVH?=
 =?utf-8?B?SGpqbnJ3Z096MXFBWStET2M1WTNJZXJTYVJPZy84RVJUTHhPMXIyRGFtMmtY?=
 =?utf-8?B?WXRDUmJsY0I0RzhqQkh6SnlrSGFoTmo3UFgrVFFoUlo2bURuMUhMNGpXTFQw?=
 =?utf-8?B?K1RqRHdXWUtMdjlmUXBKRXFTT0FYdkNlbEJFTFRkQm53NjV0cHExLzFIK2My?=
 =?utf-8?B?bFdaSG9jS1Y0ckYwVElTck1sRXBuZUU0OTkvKzVOYWZITlpLWWIxVE5jRGJn?=
 =?utf-8?B?Q1ZHeDZjT241SDZ3aHhLMjhIbGJQbE9LZTlqdGxIb3NFT29IT2wwK1RYTmpC?=
 =?utf-8?B?TmpYMERhZzhLV3AxdjdYekJ2UDNZemx4ODRhUElyK1RjemdXazIyRVlIRlM0?=
 =?utf-8?B?NHRnUTRWdzZ3Rk9INk5xRnJid1RFVnZHVjhleHJHZ05YbTMwM1NoMlRHbE9l?=
 =?utf-8?B?QU8rak5iY3FYYThyV2hYMmd2ZlJ3bEhTbkVuUDRLNGNwVVZoTTR4QWhoMVB3?=
 =?utf-8?B?OHExT3ptcituSmlXcyt2UDFvYnZFMndTZnZFWEp4SmJQVUk1VmI3aWo5Wnpn?=
 =?utf-8?B?SFdBM1JTcFVLTllPQ3A4RXowZldPUFp4SnNRdStWQjUvNnJKbFZaRVRySG1p?=
 =?utf-8?B?Ylh2Vml2OUYzTzA5b1VWandpY3dXUmhEcmduUitKU1laa0xUR0V5clNZRmdU?=
 =?utf-8?B?V0dhTGhkVjBMVU5iekFqYncxU241cDVKaUZXcytMcVRsc2FBQnU4NzRmVlZa?=
 =?utf-8?B?Z1NJaytIQ2J1U2E0RWtLeDlhendEOG9Sa2lLTkY0RzNsa21UdGZkWWN4ekww?=
 =?utf-8?B?eVR5NkVSU29zNmF2dzJzWmlIYzZkYWJGcks5dTYyRzYrN1ZFMmw5UVVSQWZT?=
 =?utf-8?B?NEk1bno5TTBXbW1CL3JHZ0xEVTZ6TUV5ZFpsdld4ampBSFFzMG54dzVhRDA3?=
 =?utf-8?Q?8cMN9hazucFoBpzzg4zjOGJT4CS246SqVc0ieTm?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9db72fa-1a17-42b4-8c0e-08d947f0e922
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2021 00:30:27.7559
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MKePImb1zrVELWGFS6A5ZzFB0HoVExDd1kqiopVDnn0aLId15xKl5erzX7Wz7nRDK/TsZj2jdQBD2DVbyOIpgixG/6VPvvqdyuitU1kBjqg0croyG03f+SNJp+4W2qiF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5637
Return-Path: rebecca.swee.fun.chang@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgcG9pbnRlci4gSSByZWFsaXplZCB0aGUgZHRjIHdhcyBjb21waWxlZCB3
aXRoIE5PX1BZVEhPTj0xIGZsYWcuIFdpbGwgc3RhcnQgd29yayBmcm9tIHRoYXQgcGF0aC4NCg0K
UmVnYXJkcywNClJlYmVjY2ENCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9t
OiBTaW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4NCj4gU2VudDogU2F0dXJkYXksIEp1bHkg
MTAsIDIwMjEgMTo1NCBBTQ0KPiBUbzogVG9tIFJpbmkgPHRyaW5pQGtvbnN1bGtvLmNvbT4NCj4g
Q2M6IENoYW5nLCBSZWJlY2NhIFN3ZWUgRnVuIDxyZWJlY2NhLnN3ZWUuZnVuLmNoYW5nQGludGVs
LmNvbT47DQo+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5
b2N0b10gYmlubWFuIHN1cHBvcnQgaW4gdS1ib290DQo+IA0KPiBIaSwNCj4gDQo+IE9uIFRodSwg
OCBKdWwgMjAyMSBhdCAxNzo0NSwgVG9tIFJpbmkgPHRyaW5pQGtvbnN1bGtvLmNvbT4gd3JvdGU6
DQo+ID4NCj4gPiBPbiBUaHUsIEp1bCAwOCwgMjAyMSBhdCAwNDoxMDozMkFNICswMDAwLCBSZWJl
Y2NhIENoYW5nIFN3ZWUgRnVuDQo+IHdyb3RlOg0KPiA+DQo+ID4gPiBIaSwNCj4gPiA+DQo+ID4g
PiBJIHdhcyBoYXZpbmcgYSBiYmFwcGVuZCBmb3IgdWJvb3QgdjIwMjEuMDQgdGhhdCBjYWxscyBi
aW5tYW4gY29tbWFuZA0KPiBmcm9tIHUtYm9vdCBzb3VyY2UgdHJlZSBidXQgaXQgZG9lc24ndCBz
ZWVtcyB0byB3b3JrIHdpdGggYml0YmFrZSB3aXRoIGFuIGVycm9yDQo+IG9mIHVua25vd24gbG9j
YXRpb24gb2YgbGliZmR0Lg0KPiA+ID4gSSBoYXZlIGFkZGVkIGRlcGVuZGVuY3kgdG8gZHRjLW5h
dGl2ZSBvciBkaWQgSSBtaXNzZWQgYW55dGhpbmc/IElzIHRoZXJlDQo+IGFueSBwbGFuIHRvIGVu
YWJsZSBiaW5tYW4gc3VwcG9ydCB3aXRoaW4gdS1ib290LXRvb2xzIHJlY2lwZT8NCj4gPiA+DQo+
ID4gPiB8IHJ1bm5pbmcgYnVpbGQNCj4gPiA+IHwgcnVubmluZyBidWlsZF9weQ0KPiA+ID4gfCBw
YWNrYWdlIGluaXQgZmlsZSAnX19pbml0X18ucHknIG5vdCBmb3VuZCAob3Igbm90IGEgcmVndWxh
ciBmaWxlKQ0KPiA+ID4gfCBwYWNrYWdlIGluaXQgZmlsZSAnZXR5cGUvX19pbml0X18ucHknIG5v
dCBmb3VuZCAob3Igbm90IGEgcmVndWxhcg0KPiA+ID4gfCBmaWxlKSBwYWNrYWdlIGluaXQgZmls
ZSAnX19pbml0X18ucHknIG5vdCBmb3VuZCAob3Igbm90IGEgcmVndWxhcg0KPiA+ID4gfCBmaWxl
KSBwYWNrYWdlIGluaXQgZmlsZSAnZXR5cGUvX19pbml0X18ucHknIG5vdCBmb3VuZCAob3Igbm90
IGENCj4gPiA+IHwgcmVndWxhciBmaWxlKSBydW5uaW5nIGJ1aWxkX3NjcmlwdHMNCj4gPiA+IHwg
YmlubWFuOiBjYW5ub3QgaW1wb3J0IG5hbWUgJ1FVSUVUX05PVEZPVU5EJyBmcm9tICdsaWJmZHQn
ICh1bmtub3duDQo+ID4gPiB8IGxvY2F0aW9uKQ0KPiA+ID4gfCBXQVJOSU5HOiAvYnVpbGQveW9j
dG8tc3RhYmxlL2FnaWxleC1nc3JkLXJvb3Rmcy90bXAvd29yay9hZ2lsZXgtcG9reS0NCj4gbGlu
dXgvdS1ib290LXNvY2ZwZ2EvMV92MjAyMS4wNCtnaXRBVVRPSU5DKzM5NmVlMjcxZjItDQo+IHIw
L3RlbXAvcnVuLmRvX2NvbXBpbGUuODU3OToxNTggZXhpdCAxIGZyb20gJy4vdG9vbHMvYmlubWFu
L2Jpbm1hbiBidWlsZCAtdQ0KPiAtZCAvYnVpbGQveW9jdG8tc3RhYmxlL2FnaWxleC1nc3JkLXJv
b3Rmcy90bXAvd29yay9hZ2lsZXgtcG9reS1saW51eC91LWJvb3QtDQo+IHNvY2ZwZ2EvMV92MjAy
MS4wNCtnaXRBVVRPSU5DKzM5NmVlMjcxZjItcjAvYnVpbGQvJHtjb25maWd9L3UtYm9vdC5kdGIN
Cj4gLU8gLiAtaSB1LWJvb3QnDQo+ID4gPiB8IFdBUk5JTkc6IEJhY2t0cmFjZSAoQkIgZ2VuZXJh
dGVkIHNjcmlwdCk6DQo+ID4gPiB8ICAgICAgICMxOiBkb19jb21waWxlLCAvYnVpbGQveW9jdG8t
c3RhYmxlL2FnaWxleC1nc3JkLQ0KPiByb290ZnMvdG1wL3dvcmsvYWdpbGV4LXBva3ktbGludXgv
dS1ib290LQ0KPiBzb2NmcGdhLzFfdjIwMjEuMDQrZ2l0QVVUT0lOQyszOTZlZTI3MWYyLQ0KPiBy
MC90ZW1wL3J1bi5kb19jb21waWxlLjg1NzksIGxpbmUgMTU4DQo+ID4gPiB8ICAgICAgICMyOiBt
YWluLA0KPiA+ID4gfCAvYnVpbGQveW9jdG8tc3RhYmxlL2FnaWxleC1nc3JkLXJvb3Rmcy90bXAv
d29yay9hZ2lsZXgtcG9reS1saW51eC8NCj4gPiA+IHwgdS1ib290LXNvY2ZwZ2EvMV92MjAyMS4w
NCtnaXRBVVRPSU5DKzM5NmVlMjcxZjItDQo+IHIwL3RlbXAvcnVuLmRvX2NvbQ0KPiA+ID4gfCBw
aWxlLjg1NzksIGxpbmUgMTg0DQo+ID4gPiB8DQo+ID4gPiB8IEJhY2t0cmFjZSAobWV0YWRhdGEt
cmVsYXRpdmUgbG9jYXRpb25zKToNCj4gPiA+IHwgICAgICAgIzE6IGRvX2NvbXBpbGUsIGF1dG9n
ZW5lcmF0ZWQsIGxpbmUgNw0KPiA+ID4gRVJST1I6IFRhc2sgKC9idWlsZC95b2N0by1zdGFibGUv
YWdpbGV4LWdzcmQtcm9vdGZzLy4uL21ldGEtaW50ZWwtDQo+IGZwZ2EvcmVjaXBlcy1ic3AvdS1i
b290L3UtYm9vdC1zb2NmcGdhX3YyMDIxLjA0LmJiOmRvX2NvbXBpbGUpIGZhaWxlZCB3aXRoDQo+
IGV4aXQgY29kZSAnMScNCj4gPiA+IE5PVEU6IFRhc2tzIFN1bW1hcnk6IEF0dGVtcHRlZCAyMTE0
IHRhc2tzIG9mIHdoaWNoIDIxMTEgZGlkbid0IG5lZWQNCj4gdG8gYmUgcmVydW4gYW5kIDEgZmFp
bGVkLg0KPiA+ID4NCj4gPiA+IGJiYXBwZW5kOg0KPiA+ID4gREVQRU5EUyArPSAiYmMtbmF0aXZl
IGR0Yy1uYXRpdmUgcHl0aG9uMy1zZXR1cHRvb2xzLW5hdGl2ZSBzd2lnLW5hdGl2ZSINCj4gPiA+
DQo+ID4gPiAjIFRoaXMgaXMgcmVxdWlyZSBzbyB0aGF0IHRvb2xzL2Jpbm1hbi9zZXR1cC5weSBp
cyBkaXNjb3ZlcmFibGUNCj4gPiA+IGR1cmluZyB0aGUgYnVpbGQgRElTVFVUSUxTX1NFVFVQX1BB
VEggPSAiJHtTfS90b29scy9iaW5tYW4iDQo+ID4gPiBkaXN0dXRpbHMzX2RvX2NvbXBpbGUoKSB7
DQo+ID4gPiAgICAgICAgIGNkICR7RElTVFVUSUxTX1NFVFVQX1BBVEh9DQo+ID4gPiAgICAgICAg
IE5PX0ZFVENIX0JVSUxEPTEgXA0KPiA+ID4gICAgICAgICBTVEFHSU5HX0lOQ0RJUj0ke1NUQUdJ
TkdfSU5DRElSfSBcDQo+ID4gPiAgICAgICAgIFNUQUdJTkdfTElCRElSPSR7U1RBR0lOR19MSUJE
SVJ9IFwNCj4gPiA+ICAgICAgICAgJHtTVEFHSU5HX0JJTkRJUl9OQVRJVkV9LyR7UFlUSE9OX1BO
fS1uYXRpdmUvJHtQWVRIT05fUE59DQo+IHNldHVwLnB5IFwNCj4gPiA+ICAgICAgICAgYnVpbGQg
LS1idWlsZC1iYXNlPSR7Qn0gJHtESVNUVVRJTFNfQlVJTERfQVJHU30gfHwgXA0KPiA+ID4gICAg
ICAgICBiYmZhdGFsX2xvZyAiJyR7UFlUSE9OX1BOfSBzZXR1cC5weSBidWlsZA0KPiAke0RJU1RV
VElMU19CVUlMRF9BUkdTfScgZXhlY3V0aW9uIGZhaWxlZC4iDQo+ID4gPiB9DQo+ID4gPg0KPiA+
ID4gZG9fY29tcGlsZV9hcHBlbmQoKSB7DQo+ID4gPiAgICAgICAgICAgICAgICAgY3AgJHtERVBM
T1lfRElSX0lNQUdFfS9ibDMxLmJpbiAke0J9LyR7Y29uZmlnfS9ibDMxLmJpbg0KPiA+ID4gICAg
ICAgICAgICAgICAgIGNkICR7U30NCj4gPiA+ICAgICAgICAgICAgICAgICAuL3Rvb2xzL2Jpbm1h
bi9iaW5tYW4gYnVpbGQgLXUgLWQNCj4gPiA+ICR7Qn0vJHtjb25maWd9L3UtYm9vdC5kdGIgLU8g
LiAtaSB1LWJvb3QgfQ0KPiA+DQo+ID4gT2ZmLWhhbmQsIEkgc3VzcGVjdCBpdCBtaWdodCBiZSBh
IGxpdHRsZSB0cmlja3kgdG8gdXNlIGJpbm1hbiBvdXRzaWRlDQo+ID4gb2YgdGhlIFUtQm9vdCBj
b250ZXh0IGRpcmVjdGx5LiAgU2ltb24sIGFueSB0aG91Z2h0cz8NCj4gDQo+IEl0IGlzIGJlaW5n
IHVzZWQgaW4gYSBmZXcgb3RoZXIgZW52aXJvbm1lbnRzIC0gZ2l0bGFiIGFuZCBwb3J0YWdlL2dl
bnRvby4NCj4gDQo+IEhlcmUgZm9yIGV4YW1wbGUgaXMgYSBkb2NrZXJmaWxlIHRoYXQgYnVpbGRz
IGl0LiBXaHkgZG9lcyBEb2NrZXJmaWxlIHVzZSBhIGNhcGl0YWwNCj4gRD8NCj4gDQo+IGh0dHBz
Oi8vZ2l0bGFiLmNvbS96ZXBoeXItZWMvZ2l0bGFiLWNpLXJ1bm5lci8tL2Jsb2IvbWFzdGVyL0Rv
Y2tlcmZpbGUNCj4gDQo+IFRoaXMgZXJyb3IgImJpbm1hbjogY2Fubm90IGltcG9ydCBuYW1lICdR
VUlFVF9OT1RGT1VORCcgZnJvbSAnbGliZmR0Jw0KPiAodW5rbm93biBsb2NhdGlvbikiDQo+IA0K
PiBhY3R1YWxseSBtZWFucyB0aGF0IHB5bGliZmR0IGlzIG5vdCBmb3VuZC4gWW91IG5lZWQgdG8g
YnVpbGQgZHRjIHdpdGggUHl0aG9uDQo+IHN1cHBvcnQuIElmIHRoYXQgaXMgeW91ciAnZHRjLW5h
dGl2ZScgcGFja2FnZSwgdGhlbiBtYWtlIHN1cmUgaXQgZG9lcyB0aGUgUHl0aG9uDQo+IHBhcnQg
YWxzby4NCj4gDQo+IFJlZ2FyZHMsDQo+IFNpbW9uDQo=
