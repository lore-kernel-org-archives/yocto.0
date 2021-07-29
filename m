Received: from esa18.fujitsucc.c3s2.iphmx.com (esa18.fujitsucc.c3s2.iphmx.com [216.71.158.38])
 by mx.groups.io with SMTP id smtpd.web11.3688.1627522711524805010
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 18:38:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=aEQusORl;
 spf=pass (domain: fujitsu.com, ip: 216.71.158.38, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1627522712; x=1659058712;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Z3/OMRSmozIwDcRQweYzSGvtKt4kltX6d9Dhe6sxlHk=;
  b=aEQusORlSs4gXrK/yBsFH+cfR7HPAoZ1xt+cLQCAPLqW27tniXKrw11K
   SYqjFd4Uy3gMnNvRwThith3zLKnwm/NykBaWikuCtE7eg6yZcOtvvL0Pn
   aTFnV2rNS1H7FQG48nperPw+xbgPL2IRAoENVH9NVeNFvhfSxXzx8izSg
   NkZrx3AsRtOuny0VLF6YsJl2Wh1gcUnlnpREsizg+iPS36/QS1JF610Yz
   naFqxShXikrIQT+zmAVojm/zJN/6ZVJnPiUEANbEZw+ZS9BAfPw+tOXVA
   p9q5RrZX2LXTLuNxhYVaPFt+ppDqRvLh0dlBMyKL8uHbKcki0v0j/cksh
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="36347238"
X-IronPort-AV: E=Sophos;i="5.84,276,1620658800"; 
   d="scan'208";a="36347238"
Received: from mail-os2jpn01lp2052.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.52])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2021 10:38:29 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQiojWx1kgiqr9IvGwHyGvzf8bBHgPidMz/87Re9KDAU793gR5a4ecRimnA1VGqU8hZz+sdiSKS2e2aHZRANSZscJPvy1RqsTecH4aKa+K6/5srHg4z+paH+Ri1h7IbUA9dC3sb510dEeL+EhJZVy1ZdPbbgLPIlnSs9Hxo6kAI42Na2G8DOrX52lgA+waGW19q1Xgy4QRRW/B8o30o7rLCmwX/nDbySqFfCY63f7pCrf/HxnVV/7dq6cRNAyyaDP3Y1zxkdFcjPmzvVC3L+gnjK8P0E6nJu67wPr4WkiuJvdrC7kz4P9llbdcEDw7emBwvxQJFCyM9WN1rX9VzoCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3/OMRSmozIwDcRQweYzSGvtKt4kltX6d9Dhe6sxlHk=;
 b=dYo4XnEUR9Roi7e21mrG1aN9Nwp+x734+ncSZU67HX24MZCxL9XWFa6vlWJc3MEM0vk8u/vO5i5kAQF9uXyq9lW7HOlY0xK26VO49Sbf//4ej/fM9b9UWQE/Q3FugwHPLEZDSl4Uutw1wkWseazGmBN2GqcX+X/f7OMzLc39Ev+l5diTAcv4bHokz20DFPotoB7+uA3zh6WjxskMFaO47+vgNluEezdbIUQAZFql8WxQDLbZnTYL8cdZxd6w5+HuXwhxR8B125EfkGGizyNPlgROHGM2BTde6MLYysiV/gn41pafhx9FnkPkt+vHYyLQyB2w2SVY06Gba+y13hYXZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3/OMRSmozIwDcRQweYzSGvtKt4kltX6d9Dhe6sxlHk=;
 b=nIunD5neigCEov3GGM/OrfyZLWRsxOvslRW64REOBJT073hACCEK5oOZbhZPMpL6QQJCZV6E6qoxMS2fy8T/WAeJC78a8UnrXbOp1c/7M/BabG6fMF/SdYl8NuHP+sSu6vXyEtiJHodbQqO9LdM35ZYoY/W+FXnrkGKLcE195+g=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OSAPR01MB3329.jpnprd01.prod.outlook.com (2603:1096:604:52::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Thu, 29 Jul
 2021 01:38:25 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 01:38:25 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: Marco Cavallini <koansoftware@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: Re: [yocto] [meta-spdxscanner][PATCH] MAINTAINERS: Updated the email address where send patches
Thread-Topic: [yocto] [meta-spdxscanner][PATCH] MAINTAINERS: Updated the email
 address where send patches
Thread-Index: AQHXg5NHtHlYKIzO0UC3rmvrAN0Fg6tZLadQ
Date: Thu, 29 Jul 2021 01:38:25 +0000
Message-ID: 
 <OS0PR01MB6178023C93DC7C7A7ABEB5F1A0EB9@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <20210728093038.8720-1-koansoftware@gmail.com>
In-Reply-To: <20210728093038.8720-1-koansoftware@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40e15c4b-ca4f-43cc-bd08-08d952318ec6
x-ms-traffictypediagnostic: OSAPR01MB3329:
x-microsoft-antispam-prvs: 
 <OSAPR01MB3329162526FAC5C465241B0CA0EB9@OSAPR01MB3329.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 y7jWUQKqaPOeclTf2/HPRlgwWconnDH1gls9w32DTS/9Dei4HMsggSOPXUN4J7RYEuAqfcsqeSMCLeKg/6M7ia6Hq8xxNS0Rhj3nBVs7TPqZvx60jl2VEXH8849AbD/iDYapGXBboGOH1GUfT1xeyt7EEnRWWAEKhP4ffro4XQEkXkpvQNgNmbYU+8F8y59hwlyVz5dABMv8/kMqLC4jcSyOQrNUj2rZY9oOf3ZWyteesyjsBLG+Hx775JVEUobPgFedb+Edha3apX6xIrtqjgtnk2WD1IZg/mgoMsA/I/EyP3v0muhOfnSrXW1RRj68aMp7OGyDVV8b3ZeSKQ2JCnPgciCo5cvtVndmld8yCZpIJTWHxZkiBfSezypOZRSHyTeotBj/I0JbJGNzTaF1pgYaYDQPOkhORmN8Gc3cPlwCVitgn8qWEv+vz/OeAUA9IpjFnqwhACShj8SdNtvEYKth3c1a1yQipBwPV9owMacUdrzt3BtEIqbnoH3QqVy8rVUlFzkqdDCoK2b98STjmf1UbFpwY2Bu9Dvb9hrtSbAOoGvKWOAE5tST8MPC49rsOzcd6r29vJy0+e55I8J7kj5qrerlHO0KrcWLVeqSfq9h/cCcLNnqa5N6SoOU7fDXmXjuEoXVL5YiqgtvG9Emp08rIhO1fpbnMJfwEfZBhKSW7+EQ2Dr2j8VZ16QHzflff47/UiMbxboMFFPVmU4UNw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(396003)(136003)(366004)(86362001)(83380400001)(7696005)(15650500001)(66446008)(9686003)(110136005)(64756008)(66476007)(66946007)(186003)(66556008)(478600001)(38070700005)(71200400001)(55016002)(53546011)(6506007)(26005)(76116006)(8936002)(52536014)(4326008)(85182001)(316002)(122000001)(4744005)(38100700002)(33656002)(8676002)(5660300002)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?ZHNBMmd2OVBnZE9HeHNHYlJUdHlidlpIb3dZZTlET0NBdkZZRzZ0KzJB?=
 =?shift_jis?B?S3Z5U2p3UmxYWldhRXdpUW1VVXRMNGE0bGl3a2txc3ZKZmhVcHNEcjlh?=
 =?shift_jis?B?dGJqYjNGU09tUHFOK0l3bHZzejRHeW1mVGxZTVpZcjNWbVNZSjFTQmVm?=
 =?shift_jis?B?ZEM3VmNXSFZhVG5tQ2RCT1ZEenROYjFSZzF5dlg5TlBnRzVzQVliNllX?=
 =?shift_jis?B?OXVCM2pRbkFqS0IyaEcvb3l1bFFEUFZRTlJocVZvbjJyWHVLTVdQZXdV?=
 =?shift_jis?B?anJrQ3dJb2Z1SDN2YjU5MVBLL0dySlVMU1NBMDRSTXFLWno5UzlYUmoz?=
 =?shift_jis?B?c3JMU2ZpU0h0bWdSZTRTd1dNMW5VckhCNG9ueUNjL3drK2x4S2tobUVZ?=
 =?shift_jis?B?Rlg3WFF4YzNtR3RPZVVxUWpnZFlLVVo2VDBLa1Y3dXZqYWFqZlNvdCtD?=
 =?shift_jis?B?SkFtSjdYSUt4OVkzekVibGJ6OEN1RHdsN2tqWHFja0VYRDhzRUhMSWNh?=
 =?shift_jis?B?OGFUZUJlUDhGQ2draE5uUTB4WGJaSW1WejdIQmEzNzNKbFd3dVB4Tm0x?=
 =?shift_jis?B?c0ROUTQrZi9uS1JZUG9GUnZ5bUFuT2RWa1BzOVBEa240UDh2bDFRbm4y?=
 =?shift_jis?B?bnlwdzBaeDJiaDZNRmN3aEl2MzJBQ1JFbkMvb1VnclRvNDE1bnBIQTBp?=
 =?shift_jis?B?UjhRMGNrbkNwZkRJS2xOOXlpWXB6Q1VQRDBtUEJqYWEza1pFa2hyYzli?=
 =?shift_jis?B?WHpDd05pUVFEdmY3ZFR6Z0Z5YzFOOUFFdjNndFJjQTJGbzZpRTZyU1lE?=
 =?shift_jis?B?d0tGSHNnNG1zWDVWMUtsNTdIWXNTc1h4WG90eUlseHN6Zm9TN3ovalU5?=
 =?shift_jis?B?MHE0MUVtcXJCNjRlR25MRmg1RE9IZThRcVJnR21udVZ6N1k2SWNkYmFG?=
 =?shift_jis?B?RFZvN2x0clNsQXFZWTl0VSt6Uy9tSGpkK1Z3TkxpWU10eDJZazFUK2Zw?=
 =?shift_jis?B?SjlNUVdqQzZuYzBSc0JYMUlVWnVPbEZHc2h0czlZZkVGZmEwaFNQZGNZ?=
 =?shift_jis?B?T3UwdnF2ZS9tcjVBUUxPSDZjdmJzL1RKRG13VHQ1Ryt6c3ExQXcwSzZQ?=
 =?shift_jis?B?ZnpaZm1VNFh6MUpCU2QzU0lkTExuV3RQWUR0RGgxUFRGUi9LUzdZV09Z?=
 =?shift_jis?B?bzNXWFV1TzA0R3RaODZwd1Z1aWF3cUJUcllheGVOZU9GTXB4UzkxTGhZ?=
 =?shift_jis?B?L2dvNlc1eUs3QlNOZU9vcHN0bmdNb3piY3poR2tZNzFHQTlkWnhwenF2?=
 =?shift_jis?B?Sk5YeFZHek5qcGdhTGxsWGxqQ29HWDFuMFQxZ2Jlc0M3R1lvb0tRUWhX?=
 =?shift_jis?B?bllGZFZQOXVCOThpWUJhSmRjcVdjVzZ0WHpGT1o5ajMyY1c1ditZNkNq?=
 =?shift_jis?B?N1hUTXIzZitFK082MmJrRElnTGNsWDZLUlQwbE1rajc4OHpqdldNTnc4?=
 =?shift_jis?B?MnBxNGJhSnMrUjVyU2VsNjdXbWh5b0xxTm1UdzREOUV5cndXdFB6bldz?=
 =?shift_jis?B?UXNYdHFWYm9xdTFpenpKRFZSY29LMGxNOWhhMzE2WnZYVFU0OXdCd0VX?=
 =?shift_jis?B?MjRHRC96Yk9ubFhnTzVJSkN5cEM0aXAzNUdWdmZONjJWTjZTbEdRclpv?=
 =?shift_jis?B?NXBUMCtRcG9WWDdTeEQxa292TGx2Q3Zkby9tOGpBKzY5TGxpV0RZMUtu?=
 =?shift_jis?B?NENvMVZQbDhhelBZa05pdXNKS1NldmExMlpYVnpGRlZFV0d5a25QbGor?=
 =?shift_jis?B?WFErR1RYTzVOM25SZzRYWm5UcUJ5SDRQU096bWphSmVrSm9xMEMvWklV?=
 =?shift_jis?Q?S/NblaqpdnpKVWdxeE3SnT5VxdcZut6VUEWGaZ88Z0?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e15c4b-ca4f-43cc-bd08-08d952318ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 01:38:25.1024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w4UZ2oDGn6umyguBpIKnHWj2Z46uyybvTV1tNKgflU4er5Bsry/kKdvTEJmDM5lXaozIQZWlti7ibrAOzVlraw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSAPR01MB3329
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

TWVyZ2VkLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJl
aGFsZg0KPiBPZiBNYXJjbyBDYXZhbGxpbmkNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDI4LCAy
MDIxIDU6MzEgUE0NCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IE1h
cmNvIENhdmFsbGluaSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3YXJlLmNvbT47IE1hcmNvIENhdmFs
bGluaQ0KPiA8a29hbnNvZnR3YXJlQGdtYWlsLmNvbT4NCj4gU3ViamVjdDogW3lvY3RvXSBbbWV0
YS1zcGR4c2Nhbm5lcl1bUEFUQ0hdIE1BSU5UQUlORVJTOiBVcGRhdGVkIHRoZQ0KPiBlbWFpbCBh
ZGRyZXNzIHdoZXJlIHNlbmQgcGF0Y2hlcw0KPiANCj4gRnJvbTogTWFyY28gQ2F2YWxsaW5pIDxt
LmNhdmFsbGluaUBrb2Fuc29mdHdhcmUuY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFyY28g
Q2F2YWxsaW5pIDxrb2Fuc29mdHdhcmVAZ21haWwuY29tPg0KPiAtLS0NCj4gIE1BSU5UQUlORVJT
IHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUw0KPiBpbmRleCAy
Mzc2MWJmLi5lYzM0YzI0IDEwMDY0NA0KPiAtLS0gYS9NQUlOVEFJTkVSUw0KPiArKysgYi9NQUlO
VEFJTkVSUw0KPiBAQCAtMSw3ICsxLDcgQEANCj4gIFRoaXMgZmlsZSBjb250YWlucyBhIGxpc3Qg
b2YgbWFpbnRhaW5lcnMgZm9yIHRoZSBtZXRhLXNwZHhzY2FubmVyIGxheWVyLg0KPiANCj4gIFBs
ZWFzZSBzdWJtaXQgYW55IHBhdGNoZXMgYWdhaW5zdCBtZXRhLXNwZHhzY2FubmVyIHRvIHRoZSBZ
b2N0byBQcm9qZWN0DQo+IC1tYWlsaW5nIGxpc3QgKHlvY3RvQHlvY3RvcHJvamVjdC5vcmcpIHdp
dGgnW21ldGEtc3BkeHNjYW5uZXJdJyBpbiB0aGUNCj4gK21haWxpbmcgbGlzdCAoeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZykgd2l0aCdbbWV0YS1zcGR4c2Nhbm5lcl0nIGluDQo+ICt0aGUN
Cj4gIHN1YmplY3QuDQo+IA0KPiAgWW91IG1heSBhbHNvIGNvbnRhY3QgdGhlIG1haW50YWluZXJz
IGRpcmVjdGx5Lg0KPiAtLQ0KPiAyLjE3LjENCg0K
