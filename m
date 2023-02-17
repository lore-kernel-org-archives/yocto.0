Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C479EC636D7
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 19:02:44 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.66])
 by mx.groups.io with SMTP id smtpd.web11.2979.1676660545803165385
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 11:02:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=O9k5l2Hk;
 spf=pass (domain: advantech.cz, ip: 40.107.117.66, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gmoobtip4ltcYL3vCE+R/cRzIy23Br8kYduia6k/yLJJLsE1sdWWqt/uk0zQiZ5Cp3ByKoAW5exar1GveLoy18tlCuahZQ1JPfPgaissk+vb1B+LneJswbdHNO5GzbJz2rtrxw+NvyA4076WOFopwcep6YKW+P+tdxMrhGHFcBMh8XXuYOVj938i7r96EN9fj67e4VUEV9V0ojxYy9HuBafkrDehitqv6Q5XWsbWxFsU2UlJG6bm8knqhX9l78nCUTYgMjQyKcqPv51Gy7Z2oRWz6P+bf3emj1vZHcKt8sps1FzGrwWMGYRoYpixS3GvvWR35BvtZFHJ9zYmP1ilcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KkLVYFROmpwEm+p8IIiz4nt0fAS9LHOvCw1QoIhBSdk=;
 b=Bj9GZITVekyq3B4qqHnV590V46Km48ZldObDJHWlNKbTd5FRgIdiF6606KMgjxIZQw+zH/KPEj7WopSP5LHcTQcOOJzlpAHV7CUJ8+EZ+Xz4w8Euh5HZ/StG6VKZBCJ2kzfyA3Hg7St4Mj8b+w6IJVzKZxRGu+TK0ez9lNVoy6V73tGie5BZVEZU54A40mpm7GAfC/99vNmG2dE8W6KlHw8JnwLWgSWObFeztmCTpsLQOtzT6tTTDsE5P/2m6bYjuYBLDdcI0zhPiz2SuxES1NMxR9UYquc65FXI+yn014ngRbn5VLdlctys/KtHm4autq2NKD0SKMD5NXm2AoSK0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KkLVYFROmpwEm+p8IIiz4nt0fAS9LHOvCw1QoIhBSdk=;
 b=O9k5l2Hkzp8xnUCnpDHFV4ZcEbysHg0QNggGyAr/XJV2jYHc4iLV08uby+Z1xLCbyvB8bkH5bWO9nhGGvuTeQjMO1uVbW8v6GP6286jWOl2LSZr3UKvfOf5fIDtZps9b3hQAzcylL94bSUfj0LpMj0c/Gfc66715zsDDLj4g1qeUlBATSnKjpWEi3CdNsViHMiAS6mKneZ1ZB5KpgMO6PqSIT2zwDd5qtkfojXzoQtZ17VTOvb4z2I0c1VHdeLc4d8Y1AjLw18AGOh5ga9i3miBiXuImH5u0sfFzjvNQEF90hVMgucrWsDzNKQBMe3WyZ+73u5gZkVrGHs1g74b40A==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by PSAPR02MB5128.apcprd02.prod.outlook.com (2603:1096:301:8e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.17; Fri, 17 Feb
 2023 19:02:22 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::e2f4:d03b:1736:e417%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 19:02:22 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-pkcs11: upgrade 1.8.0 -> 1.9.0
Thread-Topic: [meta-security][PATCH] tpm2-pkcs11: upgrade 1.8.0 -> 1.9.0
Thread-Index: AdlDAZuFLYakUsZQSaGU1P3ZNXJbug==
Date: Fri, 17 Feb 2023 19:02:22 +0000
Message-ID: 
 <TY2PR02MB367896685607970BC580CF3881A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|PSAPR02MB5128:EE_
x-ms-office365-filtering-correlation-id: 7c59dcfe-8a9f-4a55-a0fb-08db1119801f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tGM8PXdelaf+IwrdDxVYCI31c0hOPHg8GM8pQB2PeOD3k8vWNF1say/2bxOPmv3/jY7fqVv9myQlL23RVTf6G2JizVIpKQka6Am0MXtoxjagZsYyj4rWqv5f9P639ixLHnWEv/uyRLOhKLCeM7qiaG/mOgqMnOFolCuU0kp8fOkZ8KctUju1zgAoMOJU79dACShg4N7zUquCZZMSJrcXOYaxs2OZ6dub7AtDnwf+u8MoYagYvFzyVixmbS+Q2tpWd6uVG9L7Xg3f1i4KhN98FY3xJ7yBEbMosiLjVMwWIdxNJ4UZY0IXIc8iuEEftN58RV+TXsBRb/uvSR+m5yIljHzyNJIVUh4pY9Gi/J2NgNWnz58tv1uiqE7J0AZCvKg2KTF8XPefLWV4wi3huFFFVeso/1x8/KPm/c7qgX/RjrF23mdQqHYgFurois/FrgYV9SuJYoZ3ZCrh8iuWmM22Ur3fM+EfI8YDhrSJYds5XWSZhlS1dXhCjkJJCX3pqvLhXVdtE36z8EPPAz+NoKyPgDUfozj4/GzuSOzRDfBFftXhmPpG2lhwsDHSSoqM9eJYLgrYSK8Dk6EB1rXuD6d6+axJJRcyMCGVZk72dRMlgHN9NuIfEswyZKD/E7G7B1panMF7ECi3CjW6pmphVTu5eI9BInJQbZPpr8tihOxetZarnS1rkskufE9XR6YT7aWE
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199018)(186003)(26005)(9686003)(316002)(5660300002)(38070700005)(122000001)(86362001)(55016003)(478600001)(44832011)(38100700002)(41300700001)(6916009)(76116006)(66946007)(64756008)(66556008)(8676002)(66476007)(66446008)(52536014)(33656002)(8936002)(6506007)(71200400001)(83380400001)(2906002)(966005)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dkhlQVM3YTB1Rzh2SUVYKzI5R1BvOXlsOXFkQTFRM0QweGpYOHMvS09YTE1R?=
 =?utf-8?B?WWk5VUJYd2RxM1F0MFRzSTlxa0Z4OWZ3cnRLcW51Y2pNbW0xQzFINGZrY29O?=
 =?utf-8?B?anFQdGhERlZDNEd0a0x1MWx4UnJudEFhMzJDaGhQOGVXU1BUR09NZUFnbWlF?=
 =?utf-8?B?QkxaZ3Q2aFVmMmNuSkZ0TTkzRTlSZGpKd3A5STFFWDFGQnhaelhEMlV6TFAr?=
 =?utf-8?B?czNwVTkzSHBYTTBLSzlGMXgwN21yM3BpSGtqNGxWY2RtTnF1OFhSd05veitD?=
 =?utf-8?B?MHlYV05ucko5R2cxWUlDeXkzNGxQMTVId0crQ3hkdGFkbXVsUlliTG1LbVFp?=
 =?utf-8?B?RlNEeFhrQzVZWHlpK0NpOHNVYmJNZ2hjSDNIclhTd2lXQzlMWVBzNjBDcEYv?=
 =?utf-8?B?QmZVd1VoQ2dIU2x5U1JlUFo0TlBEYU94bXE4L0x1cThGdENQZmRETk1MeU5n?=
 =?utf-8?B?NFg0ZjJxL0tGa2Q2T3BqdkhPWktXeEkxUkNqSVc5WFQybldZTjhXL3pGN3VS?=
 =?utf-8?B?R0FRc1BNYmN5M2NlcVA1bGlqd0FLWUZySnBGOTFnbHpKUWMzaThLK0hJVFpJ?=
 =?utf-8?B?MWMwOGFjRkNUTkU1RjRQNDVBeWJrVngwN0M5QVFJOG5ZdUxiMEhYWjc4WU8w?=
 =?utf-8?B?alFpbFZ3V0x0N1lmcFo5eW5rdzRGVFZsbm9HV0RhZWZWWWkra2hMTXpiSnlP?=
 =?utf-8?B?RFU4bWVKRkc2L3RrN2VlYzhZTmlncnZ6RjhCRHM3SURZcTVYclJlQ1BqMVJI?=
 =?utf-8?B?UE83N1J6V0F3Z0RiQmVIM1FEZWhSRXZvVGFSUldiSUE0dkJXczlwWnlKalYr?=
 =?utf-8?B?S2hMYnpzajRlRk9vQlNQbDdacXJPUmRPOWhwOWt4dEdsQnZuV0NwMFQ0Vngz?=
 =?utf-8?B?N21LK1VpbU4yY3dPd2FkRVJxT2xndEtkN3Vzc1dqdWEyNFQ5RytJRFJNYUZs?=
 =?utf-8?B?WUltdENyd0puc1orVUVlOXhGaUZ1cDI1UGlJWmVhL0FmWWowVFBKNzhlYjRt?=
 =?utf-8?B?SkdjbnpmdUtOTlplcUlGWHJOVmFOZlBrbEZnekdHK2FKOTByT3ZPS2ZVREgz?=
 =?utf-8?B?cmdsMlBZWWxMZUhrZVNyTHBvRWsxa3VVMTIwa3JMeGlIbXpPZGRaQXZtMC93?=
 =?utf-8?B?aURmY1VJaENmMmx6M0lOcExGdVhiRHltNXhsdGNlZFFtZzVIS2lva2Z6NWxa?=
 =?utf-8?B?Yi9lcXpTYUViRkdYQnZvVm5jckdyMjhuNVlyMzN3WDNaRWJwTmtUa3Znc0F4?=
 =?utf-8?B?U0ZxR3BOalViR0hGdzRRek44RWF2U2ZNRW1QaU9XUDQvQlJxUytFSSt1Q1dK?=
 =?utf-8?B?R0dEZS9LdWN2T1A3bDRGeC9BSFFhcmpnSzUvOHU1amM3ck1hSkVEaFhhZFNv?=
 =?utf-8?B?WmR5d1F5UzUyV3lxVWNhc1dBaTJKNVhKU1p0NFpGVmtjaGg1eUhac0J5L3Bz?=
 =?utf-8?B?bWUvTDNNZEp4SGg5TXpTQkFHdHpUamlSRWZjblZFY0oreVNTb3hPY3FtNHpS?=
 =?utf-8?B?NEl1L0dTTjJnbHNycEZuVW15SW1oOGF6RTdQRzVORUJiNm1DTmhXQWw2d1JT?=
 =?utf-8?B?MFM3UUI2WlRNRkNmNnp5S2gvU0h6cEpic3ozcEVuWmJjV3hNcFlSaGJYNTBq?=
 =?utf-8?B?MFNkbUFzSkk4K1FGZUtaOGZabjYyK2ZqQ3dOdG9oTXkvSm9kM0RiaGFMRW5V?=
 =?utf-8?B?WGNBeW94cUcvbGRnZ1pqTzhlNGlNaXR0VGNzQ0lVWXJ3dEdKMmFvL3IyUFQr?=
 =?utf-8?B?bVFGMUpEUUQ2MjdaM0F1TVcyVWJSMGV4dXpHcHRveE05Q2VSbzUxWVlNNTJC?=
 =?utf-8?B?TWo1aUNUL2NiR1cwODBSNXpEQ3d1Z2YwTEo1QlRBWFhnVHk0WnJBamJWU0hv?=
 =?utf-8?B?RGk0VjAwNlh5b0gybWhPV0crajQrSTgwWVZxUDkxdzVBQW5pVk5TREdVQVZt?=
 =?utf-8?B?MExpSXpjNDFueGlNekNLN1pXYy9JQmNLcVpxUjY5dVozUm1Kd0oyM2JaNmhU?=
 =?utf-8?B?YVZMZS9xWUFhSCtIeUwyQUlCOG9QNUx1M2luTXExZVgzblJtUU9STHEzK1BS?=
 =?utf-8?B?blhMU2ZaNzM2SWdsYVVYTVNQeXpGLzZISG5rMjNPZExHT3BpM0RWTHFQYW8y?=
 =?utf-8?B?SHBrL1RsT3BoOXdVa3Y4bW03NHN1Yk9UU041cVNHVmJNTkZCUi9SSnhFa0pj?=
 =?utf-8?B?VlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c59dcfe-8a9f-4a55-a0fb-08db1119801f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2023 19:02:22.4311
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJDFEhqzbbbIFc/nme4ZSnQ5kEr8PkQArGleNw2msx1iyLHgCjwzlecHYo5uxmLUg7bHHf880ASGPmheJKmK11qf+CDuz1GdaL68bfmNBvM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR02MB5128
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 19:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59246

Q2hhbmdlbG9nOg0KaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi1wa2NzMTEv
YmxvYi8xLjkuMC9DSEFOR0VMT0cubWQNCg0KU2lnbmVkLW9mZi1ieTogUGV0ciBHb3R0aGFyZCA8
cGV0ci5nb3R0aGFyZEBhZHZhbnRlY2guY3o+DQotLS0NCiAuLi4ve3RwbTItcGtjczExXzEuOC4w
LmJiID0+IHRwbTItcGtjczExXzEuOS4wLmJifSAgICAgICAgIHwgNyArLS0tLS0tDQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0aW9ucygtKQ0KIHJlbmFtZSBtZXRhLXRw
bS9yZWNpcGVzLXRwbTIvdHBtMi1wa2NzMTEve3RwbTItcGtjczExXzEuOC4wLmJiID0+IHRwbTIt
cGtjczExXzEuOS4wLmJifSAoODUlKQ0KDQpkaWZmIC0tZ2l0IGEvbWV0YS10cG0vcmVjaXBlcy10
cG0yL3RwbTItcGtjczExL3RwbTItcGtjczExXzEuOC4wLmJiIGIvbWV0YS10cG0vcmVjaXBlcy10
cG0yL3RwbTItcGtjczExL3RwbTItcGtjczExXzEuOS4wLmJiDQpzaW1pbGFyaXR5IGluZGV4IDg1
JQ0KcmVuYW1lIGZyb20gbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItcGtjczExL3RwbTItcGtj
czExXzEuOC4wLmJiDQpyZW5hbWUgdG8gbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItcGtjczEx
L3RwbTItcGtjczExXzEuOS4wLmJiDQppbmRleCAzODg0N2E4Li5lMGRlZjBmIDEwMDY0NA0KLS0t
IGEvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItcGtjczExL3RwbTItcGtjczExXzEuOC4wLmJi
DQorKysgYi9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi1wa2NzMTEvdHBtMi1wa2NzMTFfMS45
LjAuYmINCkBAIC04LDcgKzgsNyBAQCBERVBFTkRTID0gImF1dG9jb25mLWFyY2hpdmUgcGtnY29u
ZmlnIHNxbGl0ZTMgb3BlbnNzbCBsaWJ0c3MyLWRldiB0cG0yLXRvb2xzIGxpYg0KIA0KIFNSQ19V
UkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvJHtCUE59L3JlbGVhc2VzL2Rv
d25sb2FkLyR7UFZ9LyR7QlBOfS0ke1BWfS50YXIuZ3oiDQogDQotU1JDX1VSSVtzaGEyNTZzdW1d
ID0gIjc5ZjI4ODk5MDQ3ZGVmZDZiNGI3MmI3MjY4ZGQ1NmFiZjI3Nzc0OTU0MDIyMzE1ZjgxOGMy
MzlhZjMzZTA1YmQiDQorU1JDX1VSSVtzaGEyNTZzdW1dID0gIjM1YmYwNmMzMGNmYTc2ZmMwZWJh
MmM1ZjUwM2NmN2RkMGQzNGE2NmFmYjJkMjkyZmVlODk2YjkwMzYyZjYzM2IiDQogDQogVVBTVFJF
QU1fQ0hFQ0tfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS90cG0yLXNvZnR3YXJlLyR7QlBOfS9y
ZWxlYXNlcyINCiANCkBAIC0xNiwxMSArMTYsNiBAQCBpbmhlcml0IGF1dG90b29scy1icm9rZW5z
ZXAgcGtnY29uZmlnIHB5dGhvbjNuYXRpdmUNCiANCiBFWFRSQV9PRUNPTkYgKz0gIi0tZGlzYWJs
ZS1wdG9vbC1jaGVja3MiDQogDQotZG9fY29uZmlndXJlOnByZXBlbmQoKSB7DQotICAgICMgZG8g
bm90IGV4dHJhY3QgdGhlIHZlcnNpb24gbnVtYmVyIGZyb20gZ2l0DQotICAgIHNlZCAtaSAtZSAn
cy9tNF9lc3lzY21kX3MoXFtnaXQgZGVzY3JpYmUgLS10YWdzIC0tYWx3YXlzIC0tZGlydHlcXSkv
JHtQVn0vJyAke1N9L2NvbmZpZ3VyZS5hYw0KLX0NCi0NCiBkb19jb21waWxlOmFwcGVuZCgpIHsN
CiAgICAgY2QgJHtTfS90b29scw0KICAgICBweXRob24zIHNldHVwLnB5IGJ1aWxkDQotLSANCjIu
MzQuMQ0KDQo=

