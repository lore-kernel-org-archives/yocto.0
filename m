Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42FCFC4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 14:40:32 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.73])
 by mx.groups.io with SMTP id smtpd.web10.17043.1706798423976500643
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 06:40:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=RI8/pZce;
 spf=pass (domain: siemens.com, ip: 40.107.15.73, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUFP3UiLotimHyCNpbS8IyXPTOzMbvWk9LtjrZE5OnRtK40+KpRNQvGDWgOoT27C7Dov+He+kNoQlc3viZAnBxO9n+Xkg1soGQdNsDc/eB/PZiwhE7n1Kl7ZorObUn/fjHdP+x3HxlUJML3zFXrjA8+DOCivOeXs1ztRKQZevBS0QJ4W0XxeyUs6D11bg+5H32W0k2QPVsihgVeXvlC7d2pcpzTbNxAQ2Jofvv1yygboCIracXVMs4IjEZzlWWjzDd2u4v8BqxBwWFMjPpPrS5ZHCWQAZ9W824GBgGEZnVNREEz/iWBWMHfSZVDG13r2YLxS6sBztx7u+v8pkOEYCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOpB5WQEsqqA6NJ8zfwnN7M1rpuab8l+q4gy77vQVf4=;
 b=DaD2irigrkfC1ZAIar3o+kaQTA4kp7mzqrpvapeKsFaXDh4lMspQLjIUPb6A2TjFjyzPaIEDRk7Mq88/cXb5TuCQuGX3P2E8y762qT/c/O55TYNyz2NDSwf1ffPe9/PQ92zYUuxNpJq3Rsj9AyMtvHr5llrI7JJp/TmbYBu6os6Enfd2jj1k1kkeeMIPH786uSh0yeVT5aOEvc3K1fQbBkRSLGfycs0fuApAlJs07h+9JzTg5EeW88N5cLG1m5DCc49gnTaiAyhfWC9nWWlddPx2Ylfki5vXVhs2s0+4VWVqFUAVAFrP7HLigBcreTcPhTpbfqXN8xGB3kwXfnp9hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOpB5WQEsqqA6NJ8zfwnN7M1rpuab8l+q4gy77vQVf4=;
 b=RI8/pZceWvJSTKJDRgDyhMBFCC+fGXmD5EUb9IgzPw0mwcgLRPOxGEFpTC09ZqY4JZY3drSRWKTlbOmUhz4WRpLw+aNSW0JPoZGYdWUrXme5REYYZ9IyzHplnwZSN7FSSRU1Jhwsl0+p0Z7DIv0TcGuxfszBo/1Lpi9R0kXOE+46Vc68ekADs8spqHrszdW/qttN39m1m0goDfMVdUbnHpPvlqaK6JQ7W4VNB2u7/ro4l1DWCuB1caXmlTMfugFCbucPNlPCdvNaS2NtCjQDjR65FlyhUT/D6M5OlieMGCqtITmI2IgS6a40W9UD7SWE3x5/hQCnNDXlvEPOocALpw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PAWPR10MB7272.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:2e1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.23; Thu, 1 Feb
 2024 14:40:21 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c496:afda:bc34:6b5e%7]) with mapi id 15.20.7228.029; Thu, 1 Feb 2024
 14:40:21 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "timotheus.giuliani@philips.com" <timotheus.giuliani@philips.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Is there a way to speed up the initial fetch task?
Thread-Topic: [yocto] Is there a way to speed up the initial fetch task?
Thread-Index: AQHaVQrnkqEmGmL2rEi+QtkBlBHCrLD1bbQAgAAFxACAAAFTkIAAGPAAgAABEJA=
Date: Thu, 1 Feb 2024 14:40:20 +0000
Message-ID: 
 <AS1PR10MB5697BA96299AA44E63238E81FD432@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AS1PR10MB5697C9EF397AFF4B3DFBB18DFD432@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
 <13858.1706798132024059859@lists.yoctoproject.org>
In-Reply-To: <13858.1706798132024059859@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=901b29fe-10fc-4e77-9984-43f93e7149fe;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-02-01T14:39:20Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PAWPR10MB7272:EE_
x-ms-office365-filtering-correlation-id: 7b615ab0-7cfb-413c-b25b-08dc2333b791
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ffjmaiM4sYKnrx5Co1xcrxix0/h5FxiMTcFzKF+egqBV/r1oURSDazr87lDzFkvDYB5+YCeAw/Q/zWJDCWJpnySr3Ej/DVltFvy9NgV9PVUYvT3NRBMZ3XD3gEH8rpbbeQG4cyTsHCnLU/mn0rUP2Y0MrPLm50KAK083UnRswmM+dNfUDWvBcqul8qo76/cDwE5YwQRXS+7ySBFXi3NQLoSp350rB0DGmTsPPoMspjk7m5DpMSEUnle2GzyK3pKavVzr/GcmY8xxdgCE8qi+IyXnJBMafKnuBVIkwjqeg979wwKV+Nn61qsAnsAjxgjl6xSlBguT9r/qexPa7zS6n+0Sm+yZZeIAvFakx1iKUJQ1GiPSFw8FvbSq6qp4dgXRGwB3mmtmsO3n/dm8T7EGAuyiZu3UnYT4rf3s8AggUzcN53iimlXofryTv5P8n5IgbPRuas8gEXJ7zAKIdsc5Cxv5eMzYqMlMCtERg5I5Yf12dmQ7CVCWpcOaQl9VzGUP2QXzkgmFyv240236cLL6SB5l90feRi6ABfDpg1VW/36LwlWmnOiT6dHF54vzlJyE5oeG0jRF93d+GiElAT+VcWhdmzIuBPygurhH72npzuRF4USgvEZGsbhMf2tmb6pG7XQX6unoAvc/Dlyk02wt0w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(346002)(396003)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(26005)(478600001)(6506007)(53546011)(41300700001)(7696005)(71200400001)(8676002)(66476007)(9686003)(4326008)(8936002)(52536014)(66446008)(316002)(66946007)(66556008)(296002)(6916009)(82960400001)(55016003)(64756008)(122000001)(2906002)(4744005)(5660300002)(33656002)(38100700002)(86362001)(38070700009)(76116006)(43043002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dkI2czZibUFJY3MrdmZnejZSY1JpeGlMRDhvY1pzazJvd3lPbkwxUmFFdFpM?=
 =?utf-8?B?V0lyVHA1d0Jtc0IrNkE5QVJhN2lRaE1kNmg5NW11aG5YRk1EMkJQcUlIWjVl?=
 =?utf-8?B?ZTA3ZUR4WXFKd0Y1WWo1RmV6NkQ2YW0zYlE2dk5CWlk1b2dzaVh5TTUzNzg0?=
 =?utf-8?B?Zkp4aElXazlFQTkzTUxjQk53QWh5dEU0VFQwWHM3Q3ZjK0hkNXRwcmN1cURk?=
 =?utf-8?B?QmRmTmExVk4xOFFkZ1UxNlE2U01JWkZTMUZXN1pVMVAydzlVZGVNZ1V2dEwv?=
 =?utf-8?B?WENTbjJEMVZZMU9WZEFjdW1VM1ZKOEcyN01lZ0xtdWI2akJMVVUzSWV2KzIw?=
 =?utf-8?B?NWFXa08wblY1blRuOUNYZTRSTEw0QVhNTUwzcW9SQVM4MmVFbmtsVURGNlYr?=
 =?utf-8?B?K1QyRllvYUFuQVFEVklQbXJOeTB1OWEzdVdtYUJsa2wzb2ZSaDlZc0xrRDJi?=
 =?utf-8?B?aTNjdkc3Ums4VEZrR05XSTEveko4WHhZckNRa2EwdWdUTmY0eFh2NlVPcFMx?=
 =?utf-8?B?d1VIVk5Dc2loM3NwdWtIbi9XbytqTG5iZDdTSkFWdld4RUN6QWJVVmdMQU04?=
 =?utf-8?B?bklEdUp4SFF5QXZIY1Ewekdjc25ySzlQQmF5bnhIWnprNnFLaUpMbDF3SXhH?=
 =?utf-8?B?VmtrMHczZ2N6bExNaEw4YzAzbXR5OHB1MklvV0hUUDNqVTBFZXIwV3RTOVBp?=
 =?utf-8?B?UHkxMzVXZ1crdGU5MTJlYkNRUG0ycXRmUDZ4L0ZPWm5IRlB0dVJqUm1DdWIy?=
 =?utf-8?B?L09mOXB1QUpHQWRaaVBrdGZXbE1TdXo5aWd6M3NjY0xtNVMvbnozS2NwRUk5?=
 =?utf-8?B?RjJUSnNIR3Y5cjJKeGQ4akhGY2FvZ3JmM1FoUHNvRnNnQVhhUXhDL0ZhR1VT?=
 =?utf-8?B?eW9RTjdXY200QUpoU3JJYTRuaGRrUVo5NmZ2NmJDSjlreU9kZmFDVnVSaHlI?=
 =?utf-8?B?SURnTXJScDJyT1I4UG03TTlZczU3MStjOUdzaFhKTnZmN0FQY1hsNVdWa2Zu?=
 =?utf-8?B?SkJGWVAxWFQraEFzN2dSSk90Y21RZ2NCakRhUUFVYWVrVFI2L0VRRkdJTG42?=
 =?utf-8?B?TXFIcnljWGp0aHhqNkJrRWpENUQrWit1aHJ4OGs0UUJKd0NDU0swYjZwdWxn?=
 =?utf-8?B?SHpLQVo5QzdHQk55QzB6dHdoNkJENkZrQ05VMFQ3bUM1OW9PcnVwUUhETllo?=
 =?utf-8?B?MGdpY1RVaWRGVnpRWEZzVVlkVkd6b1NTM1MwSzRZcWtNZDRkM1J2dGZwSG5K?=
 =?utf-8?B?LzRqK2I3aWxxSTJnK0FHQWxERFdaQWY5bnEzc0lrZE5Rc0wvZVcxQjdZeTRu?=
 =?utf-8?B?emE2ZmhaSnI5NWZscDEzMGIzYVlkT2ZiUW42d0RyNi9CWXNGWjZLa2hoYVZ2?=
 =?utf-8?B?R1llL0t3Z3BTeFo3bUkrTUVMdWU0a0gyL2F0OHlXUkZMZFFPa05MdmdLUytO?=
 =?utf-8?B?b0phckRFenlJaVRrRnZMUjNTZ2hmZVZ4dDVJRjNLZVU2ME1zOHI4dTc4NEtG?=
 =?utf-8?B?QWV2SEJTVUJ3dWhxcmkzM0tjaGFVRGxDWHhqZFZ5VVdjR05zM1R6VU9rSUxp?=
 =?utf-8?B?TEFGRjBWMFFUMy9WM2M1TEZybDdBV2JZQVFlRDc3VzdSV1FtRENybnU5dUNJ?=
 =?utf-8?B?eG1yWEUyZGlPQnpVWlBKbGNHYjZKMlVQbk5DRTd6YXg3eHdoMkdpTVE4R3VP?=
 =?utf-8?B?Q2NwaWRSLzZWWWhRdUVVclE2cy9XYVZzemVNSFNick9LdGk4eFFpWDh3ZGlx?=
 =?utf-8?B?R0g2c3laSVJjNFhSTUo2WUN1WE1hNXkwUzZqeEQ3Y2lQeGNHaFVSSTBmVHI1?=
 =?utf-8?B?aVdVdHpuK0F1ZFpoZ3VIZjBVZFEzRGNKY2c4VU9ubGFBcElJZEhjQk9ZTkk4?=
 =?utf-8?B?VkV5ZGhqK0J5bDNrTGJGZGFUaWN5QWtQYXRFL2dqK21LWmZ5UDRkR0VnbzhB?=
 =?utf-8?B?Z2dCSUFwL3ZkN2RoVVJHcHM2N0t5S3p0YTh4ekV0dVNETGo1VW9Zc01Wb2o3?=
 =?utf-8?B?NFgzb0VuK3BJZWFzL0hDTlVhTk1jaHV5SXI3N05hTzQ4V0tqR3RqcjBMYVRR?=
 =?utf-8?B?ZytMYkduaTNaUEplY3oyTm1LZHgxc095SVJYbUoyZ3VrYzBSNkNXUko1YlVn?=
 =?utf-8?Q?uJbhR1D3QJoV5RaYZ+innKkd2?=
Content-Type: multipart/alternative;
	boundary="_000_AS1PR10MB5697BA96299AA44E63238E81FD432AS1PR10MB5697EURP_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b615ab0-7cfb-413c-b25b-08dc2333b791
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2024 14:40:20.9465
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BCXcmNEgPRf+iwKz7ZmOXAjEDVQsiT9kwHFrqYkXwmpwTt86FoKk48IFbdgoJO/SXUwWhLqocz37bKAe9HRYrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB7272
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:40:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62369

--_000_AS1PR10MB5697BA96299AA44E63238E81FD432AS1PR10MB5697EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpGcm9tOiB0aW1vdGhldXMuZ2l1bGlhbmkgdmlhIExpc3RzLllvY3RvcHJvamVjdC5PcmcgPHRp
bW90aGV1cy5naXVsaWFuaT1waGlsaXBzLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPg0KU2Vu
dDogVGh1cnNkYXksIEZlYnJ1YXJ5IDEsIDIwMjQgMTU6MzYNClRvOiBNYXJrbywgUGV0ZXIgKEFE
ViBEIEVVIFNLIEJGUzEpIDxQZXRlci5NYXJrb0BzaWVtZW5zLmNvbT47IHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIElzIHRoZXJlIGEgd2F5IHRvIHNw
ZWVkIHVwIHRoZSBpbml0aWFsIGZldGNoIHRhc2s/DQoNCj4gVGhlc2Ugc2V0dGluZ3MgaGFkIG5v
IGVmZmVjdCBpbiBteSBjYXNlLg0KPiBVbmZvcnR1bmF0ZWx5IHdpbGwgdGhlIGluaXRpYWwgZmV0
Y2ggY2xvbmVzIHRoZSBob2xlIHJlcG8gYW55aG93Lg0KDQpZb3Ugb2J2aW91c2x5IG5lZWQgdG8g
c2V0dXAgYW5kIHBvcHVsYXRlIHRoZSBtaXJyb3Igc2VydmVyIGJlZm9yZSB1c2luZyBpdOKApg0K
UGV0ZXINCg==

--_000_AS1PR10MB5697BA96299AA44E63238E81FD432AS1PR10MB5697EURP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBp
biAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1
NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXYg
c3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5n
OjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiB0
aW1vdGhldXMuZ2l1bGlhbmkgdmlhIExpc3RzLllvY3RvcHJvamVjdC5PcmcgJmx0O3RpbW90aGV1
cy5naXVsaWFuaT1waGlsaXBzLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnJmd0Ow0KPGJyPg0K
PGI+U2VudDo8L2I+IFRodXJzZGF5LCBGZWJydWFyeSAxLCAyMDI0IDE1OjM2PGJyPg0KPGI+VG86
PC9iPiBNYXJrbywgUGV0ZXIgKEFEViBEIEVVIFNLIEJGUzEpICZsdDtQZXRlci5NYXJrb0BzaWVt
ZW5zLmNvbSZndDs7IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0
OjwvYj4gUmU6IFt5b2N0b10gSXMgdGhlcmUgYSB3YXkgdG8gc3BlZWQgdXAgdGhlIGluaXRpYWwg
ZmV0Y2ggdGFzaz88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mZ3Q7IFRoZXNlIHNl
dHRpbmdzIGhhZCBubyBlZmZlY3QgaW4gbXkgY2FzZS48YnI+DQomZ3Q7IFVuZm9ydHVuYXRlbHkg
d2lsbCB0aGUgaW5pdGlhbCBmZXRjaCBjbG9uZXMgdGhlIGhvbGUgcmVwbyBhbnlob3cuIDxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5Zb3Ugb2J2aW91c2x5IG5lZWQgdG8gc2V0dXAgYW5kIHBvcHVs
YXRlIHRoZSBtaXJyb3Igc2VydmVyIGJlZm9yZSB1c2luZyBpdOKApjxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+UGV0ZXI8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_AS1PR10MB5697BA96299AA44E63238E81FD432AS1PR10MB5697EURP_--

