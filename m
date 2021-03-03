Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.51])
 by mx.groups.io with SMTP id smtpd.web09.8462.1614786088396340381
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 07:41:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=UqvjBqOH;
 spf=pass (domain: spinetix.com, ip: 40.107.3.51, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPfww53x5tqOsF8xTHY8/nNkCaCKq7NzvRxFvTvqiEV4Kkg1z92ivawtNMLjEBwYPodblhAgZe/TvTz3+3PxySFifmDqEhBRYWVjbkK0UFXfOlfewksuoxSnuoB2U3BDa3sOCIjIUKcI3eV3kwBXQnPI8nRP8KOwUQ1XyBaoAjPIpcX3TCmlCljSMx+bwExd/sOpPP8zxwS4XGWa4eEglndjl/8bnIhmBQT2GCcV9Dwr7RGIivKIIcAr7zEn6z8OdcE3UtSnJ6wE4W7mp8UMgpf8Y7LPtQyJsZDX04cjpzYYB1gY2OutXWcoQHleUy00nZmMbp3CgGJeE31Qp94sTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46ZN+utxoZA3y13Jpy3aUfLBXZn17zv6vbONjaDxvwA=;
 b=BdWkMorT03RMxkQbqqFPLsx1yG4Zn8UpYoAzQg1MTcGKKxU24e9GrCA7yDR6Zffm16+CoItZbfmxpm94TrZASrpPNvUpOVe3G8SCvHl3KMpkO+xqtMbxq64rZoGia0PynL7hHFmaKdZcM04KIc+oM4sR31bg8a34BzDQYDTLS54I5nxCnZGgcOOtJsl5q3P89++UZf+NeMpuJqsZ/U0lhWwHj6pQGGj7bGOB+Xt/Mvax7L9rCl6IUGb529jfmrwKb9L38DFNfE13KbYeTJlB8QMX8Kc7lheZpKQ4xpFufltM1DZIPmepaOxuhWUlOHR3+OzQqh6Tfy3J+V+wvr1fmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46ZN+utxoZA3y13Jpy3aUfLBXZn17zv6vbONjaDxvwA=;
 b=UqvjBqOHUcVHav1yI71odvBZZGAuWm+SPTRMn409w7FvqTfYxU4RMI7hsINGHl3BZhNFzOAaiCvwT9iWa7PVsTk1+E5BNIfxef4lM/sjj5zv9+zkujW6XKVT4LgIee9yoALqc0URwoOtx8lBtF1LwlVsC639y166A3Br9WpWvvs=
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 (2603:10a6:6:e::19) by DB8PR01MB6154.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:38::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Wed, 3 Mar
 2021 15:41:25 +0000
Received: from DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::a979:e5e4:3b20:ba6b]) by
 DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
 ([fe80::a979:e5e4:3b20:ba6b%7]) with mapi id 15.20.3890.028; Wed, 3 Mar 2021
 15:41:25 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "steve@sakoman.com"
	<steve@sakoman.com>
CC: "rustyhowell@gmail.com" <rustyhowell@gmail.com>, "Yocto
	(yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Reducing the perl footprint on my image
Thread-Topic: [yocto] Reducing the perl footprint on my image
Thread-Index: AQHXD4DYwW2rk20amUy6hmRihCyyMapxH+XOgAAH7BCAAARdgIABOnJA
Date: Wed, 3 Mar 2021 15:41:25 +0000
Message-ID: 
 <DB6PR0102MB2630A6DFC638783F955A74F388989@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
	 <16689EFE3DC0BB92.17298@lists.yoctoproject.org>
	 <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
	 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
In-Reply-To: 
 <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=spinetix.com;
x-originating-ip: [178.198.240.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 967adf8d-25a9-4679-28d7-08d8de5acdd2
x-ms-traffictypediagnostic: DB8PR01MB6154:
x-microsoft-antispam-prvs: 
 <DB8PR01MB615436111E89CC76FEB912A588989@DB8PR01MB6154.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 v+G4kuA0x87Swr5magiYU1kKIhizD/Rz7Tz2s+ttORVLLB8cZRiY/JrTlQdv8P/Q4bJ73ixwZdNSVxcmhQfZNzRRNMyIDez6+kkse+3ca6b+hvieydnEkVegxW/FnYoNbzmGkHzm/2W5tBY0eiRU8rsEfP8TfvgycIwFS1p+79nA5JoXPAz0JYEL5z6ksg7zbD9Z8FQZ0W9sXtLVEpu7Fpp7KgGh5HzW4TvbLhzLrl2GkXKyw/bmfA06YOiz2Jmg+NI3tlkueYX2WX+mOVF6MnqhYulSW79pRa09wqlmoabd7FW+Su1J11r2lZS6YGkYkKUo8xkVr9kdUbYRWWy3Jl47r92iK10sneVGS2hD7+8xaCZHO4IdXIb84FN9KBFH9rS31Byoi75UYan5hfw+tULRMof1JPbc7DON1L8BLSuHwrFB5aIJwt5IbjI8MRwhfE+UFGcoZPqly9HHEA1M3WTm3IkKNB5/yaLnL7GnuS1AwDZIcnxDDGRECvO3YBs4xr1zSW9/3dVGa6beUSN5Lg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0102MB2630.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(396003)(39830400003)(346002)(110136005)(478600001)(71200400001)(66946007)(54906003)(8936002)(66556008)(76116006)(9686003)(26005)(8676002)(83380400001)(7696005)(6506007)(66476007)(52536014)(186003)(53546011)(64756008)(66446008)(316002)(86362001)(33656002)(5660300002)(55016002)(2906002)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?K0VDVm4zNmoyT051bE1sb213d0lpeE1NT0lyZ1N1NmtsazZIaUd0KzBVZ0Nh?=
 =?utf-8?B?dFA5NlM0TXN5U20vbFBQaThuOWZDSkNiY1puUVJ5RmtiMWVHbFZENlRtU1Jv?=
 =?utf-8?B?ZXJTVmlpUWozK24zbU9VamxXUVFoRFNEVzJUcWQycUkzWlhiaFRoK3h4QWVU?=
 =?utf-8?B?bnNMUDIzeUR1THpiZnlMdXQyS0o5NWZGMWRwbnEwS2IzblQrUFBydTk4am5U?=
 =?utf-8?B?SkdCOUxEQnJMaVl5K1VCMm4wcFhsM3A2TGdObzNnRXJWa2Q4MVhnRUN0Yzcw?=
 =?utf-8?B?WnhkaUJqbzUvWEJ5TVRmbk5Vd2xIUktoN2h2ZlhBVmJHWlpLOGtoQTUzeWp5?=
 =?utf-8?B?Qm05WG54czgwWjdtLzVseFdGK2JWNTk3NWQxK2VXOFRMMXQ5bldjZzYzRGpH?=
 =?utf-8?B?WUhZbUpJWjZxbkNBSjB5QnRVckhBa3hxazBxQlNabWoxR1ZGWXZpcHE4NUFZ?=
 =?utf-8?B?bkt6RldsSWcxUjdpd0xrU21jR3NudWtTM2k2K2VvMjN1d2hVclN3dzlaYU9B?=
 =?utf-8?B?Z3ZCQUNBcHluYU05clBuOW5SQ3IwcFB6VmYrTFkzVExUUUFxeFhINWErQUt0?=
 =?utf-8?B?Q2V0N0pidXVOVWxzdmZKdVl0ekc3S1liTVZCcXVYYzY3TlByM1BObFZaaElj?=
 =?utf-8?B?MHNRVzVKNU1GOVRubldIWlZNeGpmZUJUUSszb09heS9jU3VMYWJ3YkpwMkdB?=
 =?utf-8?B?bjN6RzJEZDZuTE9xWkhkSGowV0RudUJyK0VNVzJyWTFJaXVRL1lNUkhDekZi?=
 =?utf-8?B?d1dMVDlBbURjWEdicExTOU5GcVFBMUgrcUVBWERGeXpJcWhmVmhBS0NxSCt3?=
 =?utf-8?B?amlrMjArTHpySGx5NEFUdHMrMmFsUkFjR0hYUFQ0elVvbDBuSWhISnd0S3o5?=
 =?utf-8?B?YnREYXpQMFBMYWxDK0FNbEhxb1VPZkozaE5uOEF2YnBkbWN2cW5YWkJiTmVk?=
 =?utf-8?B?Yk90Qk9BMHlqR3VWK0FKZTRoa3BTRXFMMFdLUHh4UkdueFpUemtoVGZrOWlz?=
 =?utf-8?B?SGtBSkFIWUV2MStrSmpialNCd2xCWFBYbDMxWG40Ynh3N2ljSkYrQmNvQklC?=
 =?utf-8?B?akE4T2VRMVZHSFZucWYweVJsWE1oazlRSHBtdXhpMWlQN1IxUWtyeEQxUHZq?=
 =?utf-8?B?NXF6QUNyOUEydnI2cjBpT3BOUVhrTlFQd2NLeW1iRU9URVFnNW1XVGVnQXZy?=
 =?utf-8?B?STVpV1oxclAxZ3RuY2xCTHRTRHVpd3MySVFvaWQ4MmsrTEtnbjBOZVpPNVhH?=
 =?utf-8?B?K0pCY0dQWkc3QVZ2NHNTQmpjSENoV2NoNGIzRmtuL210YUg4K04wNURZN1Zo?=
 =?utf-8?B?Rk1jQm1HdTFQOW56b1U1WkJJU3hTaHNlQWFXdU41UzFVbUFxbXBRd3FSTHdt?=
 =?utf-8?B?U0xWY01reUd5WVRiZGVlWmcyaldVWkpuL2lhTDhwWS9ZWmZMYndVZmRLZmtq?=
 =?utf-8?B?SFhxL2tJYlNxOGd6emtKY2RzZTNhaUVHRHNnWGFrS0RFR0owTlNJc0R4Z29u?=
 =?utf-8?B?dkcrRWc1b1QrZW1YN1dCbm9SWFpDQkRRa1ptelIzWUwycllCS0g5ZGs1Rlht?=
 =?utf-8?B?RVRadHdCSFFsNk9RSmp3bUJPSVlDbi9LdnFPNzhkTXFlRnRHdlRVd3VPeDRP?=
 =?utf-8?B?MElFbU93SnpvMjFkR1NDc2xvUjljdnRTRGZVa3ZqWC8wWmpJMGN5Qi9lc1lF?=
 =?utf-8?B?MkJGUE1DMEJEVm5VNVdSZVBjZEE5amIxL3BzZk5vRzdVTjJibXRURkx0MXpQ?=
 =?utf-8?Q?UvTcgGcXeMPXwAOkMXsxxbSb8ofOF8j+s9g5VDW?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0102MB2630.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 967adf8d-25a9-4679-28d7-08d8de5acdd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2021 15:41:25.2971
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e2+f7e/DHfG4nRAKgyayQIeIaE2xB5nJMI2uHQkP7IC1MW+jalwOaDXTLcBRLVzH81k6uYmV2D5rw7+aV8kiH4yveWUAX4knISvepvAVN90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR01MB6154
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogMDIgTWFyY2ggMjAyMSAy
MTo1MA0KPiBUbzogRGllZ28gU2FudGEgQ3J1eiA8RGllZ28uU2FudGFDcnV6QHNwaW5ldGl4LmNv
bT47DQo+IHN0ZXZlQHNha29tYW4uY29tDQo+IENjOiBydXN0eWhvd2VsbEBnbWFpbC5jb207IFlv
Y3RvICh5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnKQ0KPiA8eW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZz4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gUmVkdWNpbmcgdGhlIHBlcmwgZm9v
dHByaW50IG9uIG15IGltYWdlDQo+IA0KWy4uLl0NCj4gPiBTbyBJIGxvY2FsbHkgZXh0ZW5kZWQg
dGhlIHJwbSByZWNpcGUgdG8gc3BsaXQgdGhvc2UgdG9vbHMgaW50byBycG0tYnVpbGQsDQo+ID4g
cnBtLXNpZ24gYW5kIHJwbS1hcmNoaXZlIGFuZCBza2lwIHRob3NlIHBhY2thZ2VzIGluIHRoZSBp
bWFnZS4gSSBzaG91bGQNCj4gPiBwcm9iYWJseSBzZW5kIHBhdGNoZXMgZm9yIHRoYXQgdG8gb2Ut
Y29yZS4gSXMgdGhhdCBzb21ldGhpbmcgdGhhdCBjb3VsZA0KPiA+IGJlIGFjY2VwdGVkPw0KPiAN
Cj4gTm90IHN1cmUgdGhleSBuZWVkIHRvIGdvIHRvIHNlcGFyYXRlIHBhY2thZ2VzIGJ1dCBtb3Zp
bmcgdGhvc2UNCj4gdGhyZWUgdG8gc29tZSBraW5kIG9mICJidWlsZCIgcGFja2FnZSB3b3VsZCBt
YWtlIGEgbG90IG9mIHNlbnNlDQo+IHRvIG1lIGF0IGxlYXN0Lg0KDQpJJ2xsIGJlIHNlbmRpbmcg
YSBwYXRjaCB0byBzcGxpdCBpdCB0aGVuLiBIYXZpbmcgdGhlIHNpZ24gYW5kIGFyY2hpdmUgaW4g
c2VwYXJhdGUgcGFja2FnZXMgYWxsb3dzIHRvIHNraXAgdGhlaXIgZGVwZW5kZW5jaWVzIGluIGlt
YWdlcyB0b28sIGFuZCB0aGV5IGFyZSBub3QgcmVhbGx5IHJlbGF0ZWQgdG8gdGhlIHJwbSBidWls
ZCBwYXJ0IGFuZCB0aGUgY29tcGxleGl0eSBkZWx0YSBpcyBtaW5pbWFsOyB1c3VhbGx5IHRoZXJl
IGlzIG5vIG5lZWQgdG8gaGF2ZSBycG0tc2lnbiBpbiBhIHRhcmdldCBpbWFnZSBub3IgcnBtMmFy
Y2hpdmUgaWYgdGhlIGFyY2hpdmUgUEFDS0FHRUNPTkZJRyBpcyBlbmFibGVkLiANCg0KQmVzdCwN
CkRpZWdvDQoNCi0tIA0KRGllZ28gU2FudGEgQ3J1eiwgUGhEDQpUZWNobm9sb2d5IEFyY2hpdGVj
dA0Kc3BpbmV0aXguY29tDQoNCiANCg==
