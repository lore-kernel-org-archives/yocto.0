Received: from esa5.fujitsucc.c3s2.iphmx.com (esa5.fujitsucc.c3s2.iphmx.com [68.232.159.76])
 by mx.groups.io with SMTP id smtpd.web11.1711.1627456352646119526
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jul 2021 00:12:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=dGNSgqh7;
 spf=neutral (domain: fujitsu.com, ip: 68.232.159.76, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1627456353; x=1658992353;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=DT0HRAI5XVt4qc1kUhAJX9ij0TQCYWFj5YlgdH0HTFs=;
  b=dGNSgqh7m/OsUtfvlu2kgXPHmBcaKWkcGjoTeYub24AUkuLpzz3yLKYb
   FSmBdvH3bAiQvMR19PyMUdIADETrjSv6cIeoHIOyvgtNkE/FAwuYBzxYn
   dWpVRqnyHHToQB243KIbJ4uMk4r7ueObA/T2kMlvy2ZQoL+1864QA9Ra9
   y85IGYlMzmWMX0be3wmI/vHdQYqV79Pq44NV3RNqJYwrlqFZvGHbBeOHF
   tH/PFLLshPWv2pd5H2Jxl3iGYZtfrjGIziXcXVES10Y3y8iAIJF5xPdmk
   9/l+NEB9bBPgfdm/y37rEzHNoKTP3urZUvxI6JcdKm+o3hMjEkXxkr0kM
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="35718508"
X-IronPort-AV: E=Sophos;i="5.84,275,1620658800"; 
   d="scan'208";a="35718508"
Received: from mail-os2jpn01lp2051.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.51])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jul 2021 16:12:30 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7+NbaMhiJ5GGIKQDcVpgN+j+cHw/ZlvnaP1J8gBz86ULSsEyRIYh+NbRpt4raJFoqUeslj1/hs0boA1wr2nJ2mpH/XwgjfH8jR66N1GGYzLRaXUUERL7n6P1AeWpsRUWPqilMFAV4kJmyxeupNgUeEQoeaxY5krK4BGx48OB7jB+Fj2Xbmd3Ie4t9wrbKGBf5vvdInPZGYsY4GYJEDqq8mAVJIhLkEmZDq/NqYQuk8bo+hjipP5fdLS+dGceex7vGk78BcHpplBEQ5F3krcVmPcchLJN9pqmRG6qIURTLPJenQqi6oygVlPYJVNAi4oTMxC3xCZa98SDvEYhhIwPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DT0HRAI5XVt4qc1kUhAJX9ij0TQCYWFj5YlgdH0HTFs=;
 b=UkD12A2lU7S6im18kBR8E45prheFaJwcmZ3l/VuKGZGsVMujF4PX8AoIvurWDB4ALEkfb3dMJhgzBRYml3W/KJ/P1bwZv5jW9e5gHVt02z5lf6n/GmyALj5LtN9tah7AWlbmwKqLxT71PKODLu229obpwmgplhSc13RFU/Ueh6zNdxLIVL3mcQHWp6YSFizcHQCBvDY+v6cj4nBTn6lEVduNH0h6lE/UnwddFyZsgzN0Fbz01B95JHwOmmH+9AbcZ8v9ZiPUwDikpFxVWqibXYseLPMxnehim7yePcZ46ieVBLs4aRZj4d9qtZF6Mzb5il9lTplqxhFfRAx2zSQ0gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DT0HRAI5XVt4qc1kUhAJX9ij0TQCYWFj5YlgdH0HTFs=;
 b=UxYVvpSwhAIthSJq+orc9V7H8/MKDOW7mgOmuie1DiYGWQu2jnvmkjamJ36K495ALwz6Y7FbIoVrs+4TnaQSpgOCbhWyNqNNnxMaFC6eR0sOKefcRCACXlcdrLCv4M/J8sqN17ADUOTeOoSmfLcv2IjrVvOG+6uD4ZQ4zyWecO8=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OS3PR01MB6593.jpnprd01.prod.outlook.com (2603:1096:604:101::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 07:12:27 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4373.018; Wed, 28 Jul 2021
 07:12:27 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: Marco Cavallini <koansoftware@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-spdxscanner][PATCH] MAINTAINERS & README.md: Updated the email address where send patches
Thread-Topic: [yocto] [meta-spdxscanner][PATCH] MAINTAINERS & README.md:
 Updated the email address where send patches
Thread-Index: AQHXfvsNogBrWTAhpUuIZ0dFFhoxmatYADrQ
Date: Wed, 28 Jul 2021 07:12:26 +0000
Message-ID: 
 <OS0PR01MB617898CF9DAD8263C765A032A0EA9@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <20210722131057.30663-1-koansoftware@gmail.com>
In-Reply-To: <20210722131057.30663-1-koansoftware@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 595328d1-98f5-4db5-6638-08d951970e4a
x-ms-traffictypediagnostic: OS3PR01MB6593:
x-microsoft-antispam-prvs: 
 <OS3PR01MB6593488F3DC16BE5E7BDF21BA0EA9@OS3PR01MB6593.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bvrHvg+pcKiIHluP2O4glctqQrm/wFrtFITPbtb2CXOKbtyumnRaz4RPRf6xuUt9wkC4KM1CctRdnWU8eCi+F6OvYRr2TWrrMmthD+aDiTl+wHnFtS2jwNGu3XUqwERSfTb9ot91P6zknqsKAt7YCnXZw2eAPd+0LiImHZQmqx3GAxkcOiKfLCoa42sl0tECgacbwa+fF7++lFoaKUqZU6VJWcbrJ8+lbnvZgxreWYK1UvIBeC9WX1CNfvn4CuixSyOE/YerXvhQW4JkOuW3144j7TpFCSScQV72Lf0CX/CNLB2jizeYrFbsMR+M9aeD/ZMMBXAq+6eMbETS87A0G4f+rAaUeMml99DggVjOLN9w1pV2T8yvn5bbvgek73ySg+akv+mkthdjDODSK36dfdWvmhsNzwH85jEzWjMk2QMXWaf6qjJYgP/AaFPBi4bDP33PVXrLyCSZdIEX5qSFiMsamb7pVq3nYbGk8ihopV2HEAxpCeOxLU/XOxvGfr7MoH+iCukX/FnJU4xnsyD8qXJFNat6ruKujvXo/XnbALhBbt4DDpScBlYTdNZ5KwIbmYsqH9XBr/C0GxCvUwitXY832CA41Qtw2nNwOFnQsLOubPNC5euTZik1pmj5WBI/pJyLqlr8R5gki7+d6b9O9JrQzK44JvtcnZnH8c8IY2+iCynoi39thB/SUu0dT9kPlZCZ6aSzAGtxa5ITks7fCA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(55016002)(33656002)(186003)(83380400001)(85182001)(122000001)(9686003)(38100700002)(26005)(52536014)(15650500001)(64756008)(53546011)(6506007)(7696005)(66446008)(66476007)(66556008)(66946007)(8936002)(5660300002)(8676002)(508600001)(86362001)(110136005)(316002)(76116006)(71200400001)(2906002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?TTRPQ0c3czVWMXJjWE45ZEkxQktVMGxyZmhMMnVWNWY3czE0QkRqM3pB?=
 =?shift_jis?B?NTFjanVJR3A1MytuSSt2Sk4rRHJ0SjJqTDR5anFuYkxKMG9aa2FxOUdO?=
 =?shift_jis?B?aFhkRU56b3kwV1J1aURtUmtSeHdGczNWaGhCWHRGSlBmcjNBYncyczBW?=
 =?shift_jis?B?ZDZ1ditPa2JtNzdqWCtCNDVlYTdLLy91SW1CbWdPdWUyVGw4eGNlTE9V?=
 =?shift_jis?B?QkN0Zm5EcVhkN2ZuZ2g5dTNVYXMrMlRsQ3lha0RtT3lCQ1hlWG56TjB1?=
 =?shift_jis?B?T1FKR2ZVbm1rRlhRNnNwN2pFbFFnc3NiTktvbmNYTVdzS1d1ZVRzTndu?=
 =?shift_jis?B?emk1ekcyTFFoR3NrQ2NKeWJCcFM4M2drNHBNWS9yK2hIR05nWDdha1Qv?=
 =?shift_jis?B?YlF1MjhXRzN5OXBIQlU3ZjJScmpuOGg4OUc0cnVRSU9TZ2lWdVptMHJ4?=
 =?shift_jis?B?OGNydVNjZENobjFWSExoNFI2RWJKWGpwUytXY1I3WUhKSzlHZUdqYXln?=
 =?shift_jis?B?ZFVEdkRZWEdSaUdJVkE0RnFZdW92elE2WFhNdWRkdTk3MGNIOXRJSEZq?=
 =?shift_jis?B?VkZKMEE3NGpaOG9abVBoeE03ek13MThhVklHNzAzN3dFOW5reERjR1Fp?=
 =?shift_jis?B?WExKbE9Qa3QrRUtCbUpnZWtLT0srQjdxVkV3eEM1WnF2K0xEaDlyREhP?=
 =?shift_jis?B?NnBBSXBWb3hOSHJRMndxY0JPUTIwYmd2SkQ1eHo4WHQ3cnQ3UVdjWERT?=
 =?shift_jis?B?SUhRV1d4dXFvdXNYS2UyMklTbGdQOS83VWJYejEvdHVoS1NodWVkYUFt?=
 =?shift_jis?B?SnZIbmphWDVwNndsdHBibTUzN1Q0d1VjRjh1UEtGeVdMcXFHc0s3V2RP?=
 =?shift_jis?B?aUtiRklwV0prTUQvQnlsZDJza2xrSmFJM0FzWEd6SU8xRkNmSHNOZUs3?=
 =?shift_jis?B?UEFnVHVpZUdwVHB1VHhxeE1RbFJrWFhFVkVOYmZlZEdQVnhPT0dUM1NL?=
 =?shift_jis?B?Zy9QY1E0akp5d2RHa2FQVVRQdXpMTVRESXNoRENaRWlYTkN5UDZ0Qm1Z?=
 =?shift_jis?B?TXhXRU02MW8yQUJVS0d1dXM0VEJEaGFsa0VTdGNCWlB1ME9odmZiRWxs?=
 =?shift_jis?B?U1VyN3ZtT1lqaFdYRjRQMUQzbHlWOWJmNDZDSmJURUtybHNCWG9RdHlp?=
 =?shift_jis?B?ZUd3bkEvend3Z3l6R3hVU3p1MS9rRTNnYk43UTBxTkY3RTRUbTE5M0hB?=
 =?shift_jis?B?ZWxIYjMrbXlxeWN5WmNDcWM5TERiMUs4R21lWjdjdTBoWUdIeDY4OW9u?=
 =?shift_jis?B?SFo0ejFXalR3THRoaTZGZlgvMm84ejNLL2RYVDhJT0psRzdqNW5Od0h1?=
 =?shift_jis?B?STUvVk5rSm52SGFFTlZGWDBuVUltRnV2TURSVmUxTlg4R2hCcTBrc094?=
 =?shift_jis?B?SWluMVpyRHA0U1dxUGVGNXBQN3AwZmpCcFplVVpuTFlPTzRUYnZ4dlpD?=
 =?shift_jis?B?M0RXTllaMmsyVzlsMkl2ZDBZaFpQMFV6ekVPWkR5MmovcFhJQkdZWkxX?=
 =?shift_jis?B?aEZ1MHBEWHVZQW9VM1VlWHVsTVgwNnByQkRuaDEzRnNWTDhRY3lRUnNy?=
 =?shift_jis?B?L1R5ODd3MVZFS3JTQ0JCTWF1eXcwM2J1OE9zQ0NWMitLYTZ4Q0hrdHNK?=
 =?shift_jis?B?VGVJcU93V3pWbHIzMzExb25oRk93Wkc1NE1UdHpNZXJKVTZRSXZnT1lD?=
 =?shift_jis?B?QWZWZUJQTURZbGlxRjNzcFR1NTBYaUZuVkMyVDMwMUpaZmRkL3hXY2lZ?=
 =?shift_jis?B?cUc5VXNSdHRkN05uZ21SOTBNNE40emxqaWZSdnRpeEc1ZFBRYzRkeXVi?=
 =?shift_jis?Q?zdtXyipVJSacMaN5Namb2efNYeETkb4iFGzn6igqgN?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 595328d1-98f5-4db5-6638-08d951970e4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2021 07:12:27.0099
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q7DKPuHWHy1qBKat+7lpe9BR1435udzTsxpRAYg3e0JzazZ06C8jA+xOhYM1Iy1ogeBRippfTaQrfDmHNTYJ5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6593
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksIE1hcmNvDQoNCj4gK1BsZWFzZSBzdWJtaXQgYW55IHBhdGNoZXMgYWdhaW5zdCBtZXRhLXNw
ZHhzY2FubmVyIHRvIHRoZSBZb2N0byBQcm9qZWN0DQo+ICttYWlsaW5nIGxpc3QgKHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcpIHdpdGgnW21ldGEtc3BkeHNjYW5uZXJdJyBpbiB0aGUNCj4g
c3ViamVjdC4NCj4gXCBObyBuZXdsaW5lIGF0IGVuZCBvZiBmaWxlDQoNClRoaXMgcGFydCByZXBl
YXRzIHdpdGggTUFJTlRBSU5FUlMuIENhbiB5b3Ugc2VuZCBwYXRjaCBWMiB3aXRob3V0IHRoaXMg
cGFydD8NCg0KQmVzdCByZWdhcmRzDQpMZWkNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWFyY28gQ2F2YWxsaW5pDQo+IFNlbnQ6IFRo
dXJzZGF5LCBKdWx5IDIyLCAyMDIxIDk6MTEgUE0NCj4gVG86IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcNCj4gQ2M6IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3YXJl
LmNvbT47IE1hcmNvIENhdmFsbGluaQ0KPiA8a29hbnNvZnR3YXJlQGdtYWlsLmNvbT4NCj4gU3Vi
amVjdDogW3lvY3RvXSBbbWV0YS1zcGR4c2Nhbm5lcl1bUEFUQ0hdIE1BSU5UQUlORVJTICYgUkVB
RE1FLm1kOg0KPiBVcGRhdGVkIHRoZSBlbWFpbCBhZGRyZXNzIHdoZXJlIHNlbmQgcGF0Y2hlcw0K
PiANCj4gRnJvbTogTWFyY28gQ2F2YWxsaW5pIDxtLmNhdmFsbGluaUBrb2Fuc29mdHdhcmUuY29t
Pg0KPiANCj4gIFdhcyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnIGFuZCBub3cgaXMgeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZw0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWFyY28gQ2F2YWxsaW5p
IDxrb2Fuc29mdHdhcmVAZ21haWwuY29tPg0KPiAtLS0NCj4gIE1BSU5UQUlORVJTIHwgMiArLQ0K
PiAgUkVBRE1FLm1kICAgfCA0ICsrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUw0KPiBpbmRleCAyMzc2MWJmLi5lYzM0YzI0IDEwMDY0NA0KPiAtLS0gYS9NQUlOVEFJ
TkVSUw0KPiArKysgYi9NQUlOVEFJTkVSUw0KPiBAQCAtMSw3ICsxLDcgQEANCj4gIFRoaXMgZmls
ZSBjb250YWlucyBhIGxpc3Qgb2YgbWFpbnRhaW5lcnMgZm9yIHRoZSBtZXRhLXNwZHhzY2FubmVy
IGxheWVyLg0KPiANCj4gIFBsZWFzZSBzdWJtaXQgYW55IHBhdGNoZXMgYWdhaW5zdCBtZXRhLXNw
ZHhzY2FubmVyIHRvIHRoZSBZb2N0byBQcm9qZWN0DQo+IC1tYWlsaW5nIGxpc3QgKHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcpIHdpdGgnW21ldGEtc3BkeHNjYW5uZXJdJyBpbiB0aGUNCj4gK21haWxp
bmcgbGlzdCAoeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZykgd2l0aCdbbWV0YS1zcGR4c2Nh
bm5lcl0nIGluDQo+ICt0aGUNCj4gIHN1YmplY3QuDQo+IA0KPiAgWW91IG1heSBhbHNvIGNvbnRh
Y3QgdGhlIG1haW50YWluZXJzIGRpcmVjdGx5Lg0KPiBkaWZmIC0tZ2l0IGEvUkVBRE1FLm1kIGIv
UkVBRE1FLm1kDQo+IGluZGV4IGViMGMzODkuLjYyYjU5ZjUgMTAwNjQ0DQo+IC0tLSBhL1JFQURN
RS5tZA0KPiArKysgYi9SRUFETUUubWQNCj4gQEAgLTY5LDMgKzY5LDcgQEAgTm90ZQ0KPiAgLSBz
Y2FuY29kZS10ayBoYXMgdG8gaW5zdGFsbCBvbiBob3N0IGRldmVsb3BtZW50IHVuZGVyIHB5dGhv
bjIuIFNvLCBwbGVhc2UNCj4gbWFrZSBzdXJlIHRoYXQgcHl0aG9uMiBleGlzdHMgb24geW91ciBi
dWlsZCBzZXJ2ZXIuDQo+ICAtIElmIHlvdSB3YW50IHRvIHVzZSBzY2FuY29kZS5iYmNsYXNzLCBU
aGVyZSBpcyBubyBuZWVkIHRvIGluc3RhbGwgYW55dGhpbmcgb24NCj4geW91ciBob3N0Lg0KPiAN
Cj4gKy0tLQ0KPiArDQo+ICtQbGVhc2Ugc3VibWl0IGFueSBwYXRjaGVzIGFnYWluc3QgbWV0YS1z
cGR4c2Nhbm5lciB0byB0aGUgWW9jdG8gUHJvamVjdA0KPiArbWFpbGluZyBsaXN0ICh5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnKSB3aXRoJ1ttZXRhLXNwZHhzY2FubmVyXScgaW4gdGhlDQo+
IHN1YmplY3QuDQo+IFwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQ0KPiAtLQ0KPiAyLjE3LjEN
Cg0K
