Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16EEC77B78
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 18:07:43 +0000 (UTC)
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.19775.1682100455183264035
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 11:07:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=RJuhfDSh;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1682100455;
  x=1713636455;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=P3AvXcK/gJZwb46C/nbMmkKCyEas8Rhs6QpfUqUAUEg=;
  b=RJuhfDShKGjLVia8MSMew09bW5AKTuNbNbB3sZ1TNmhqQ7bImu4xMiRY
   fup8RydiZzl1LnIWgQY60dQd3WNyxS6OHzI4qAKnjhzdLVfS+tZ5CHYGr
   0SegtLFRCsR2+kJOBd5X7jMgLx5mFpCs6IRkW/PInUJ9KwAI2BpjGbfMT
   Ldf2vUbWLvzWivW9xjunx4f+RWJRZ6s3VpRrHlIIe1VE0e66pPQhgWfE+
   akk9alUP0nkwys6xrAV0y1b8QEcx+EsgyuZz2/0/zFLH3lo4LiNhp1vOs
   tLQZcZaeXDtB68IVEawCzmka86G52dmgzNl5GZ0Xwu26jopo8ojJz8ENp
   g==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWpmkZZepLeDQxoarLJoykprBY4ifUaHOWA4c0KB1mC/RXlLa1qQ7dgwh3uw/FHaKzrna7yQm/JcwLDlxnkUc9soE5q1mCQ4nr/gKi4HgYfwPNbQzym7o7UOPPc+ZPN2MbkOnE6f523l6z+G8dGxuHmge1UrYPtMbq9ZM8W8v/KAPP8zH1ZxH6ZOtFdQy/PxJVe1HIY1beAXGLOlVbORbDZWjyR1r5+MrYDkNTL2RtfKLZsCwfLpP2CJA0GW/lp7rqcozbUCoNjtkULUiRWLHFiXgnwU0c2rR4sUcGtGWf//H8lCHJ0m+wNL+FUTL12bouO7PBTzbVguIIxbGPRSdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3AvXcK/gJZwb46C/nbMmkKCyEas8Rhs6QpfUqUAUEg=;
 b=dM/ek/GyT2bXzu1mj7oeGNhXdjqU98AAVW9cc8iFZ/C9NVMs2cVe0oyIV0zZpl+Uh/QigEk7WHoGz+69QpzvgJV7Ua5WqtK2tz4DM7u0TI4/H+LRhfxzHp41CLeS+8yBxQ9q/XqRFEaJrlyx2JAgDENkmuW4B8qs43hIwav9ZTmORVTCg1+lP1xCTGM+xwKkx0WnitLonqfRqTBGI86keKza5pQ/gIR7UtwrJhc9Xkj+RGFaO7fqm4xl/JFMRUO33ERp11S3B41rx3kC1oy/MOCDBqFpjG+aF80NkgXHT3wtLRAP0J6MXlGdzZqVKFFRCe6jrC20q+6Fx2TK1TcGDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis365.onmicrosoft.com; s=selector2-axis365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P3AvXcK/gJZwb46C/nbMmkKCyEas8Rhs6QpfUqUAUEg=;
 b=JC6U+amu48zXHZHdQOA2iAPqiFLNuvsdOuCUliESVy3rxMrObiBtTEYZ5xnODR3Bzn21Y5l++2AsIrLbc5fw7NMOz7No6eU9swO1hpyJjEZJ38aCn/9gb/T5U0f6Y5ZXFP1cNYgnAUgparh/80bLbiS3OmKPQ1PlHdZngCuKp1w=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Petr Gotthard <petr.gotthard@advantech.cz>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Topic: [meta-security][PATCH] tpm2-tss: upgrade 3.2.0 -> 4.0.1
Thread-Index: AdlDAe8E5qn+5u8KQEKhiKEZ3CNQbgxeDgUA
Date: Fri, 21 Apr 2023 18:07:29 +0000
Message-ID: <DB5PR02MB1021323D8BFB6E35FF6B5C2B8EF609@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <TY2PR02MB36783697BB0D07ECA91365F581A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
In-Reply-To: <TY2PR02MB36783697BB0D07ECA91365F581A19@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|AM0PR02MB5827:EE_
x-ms-office365-filtering-correlation-id: 500e2e71-f3be-4d90-2d2b-08db4293452b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PP51y7/A9GFMxwJBPE6A3oYgwbbOUQ87AW+huR3bL70WtdDm4RGT6s6vaeiI0beCebKrUyvj8l70pcP9o1uXMlHCG89lDYdJV0dDXUIFlyL22G2QNg2WRFMniZJOpaV6ufHcwd5sH6Q85zhGtacZpf2Qlx1FgzQPZl5bscEqm+lonFeI3Ao7GcgJLsxtOskSwcXRfyZDDNJw+ccOCBZI/jVv2zwe92y6fqHkuLiY+YOtpUQ6RemlhhA6+p0D6keO+uaMICoDSmKSDksAbjIW0c/Aj+qOzdp+u9zyCzkQ8OLd2bUmgEfvCQ7CSEbY5ZS+ipYPkZWj3M1V5wd5tmKenVhb8B/1D+/TtUagrvVdAgDvpJFu4qrS+8d17Tx5+5KgJ9hNC5h7SuY8Q8qx3kHXMFlRuPBYuRfws5YTpO4I+c66ya3Vat10dhd0OEork+QsoS7ZyoJzDeMMG8BxjQQQBvbP/KLbbYdmqtOv/S+jv0CUifb49r22T9+Z27CgYQWtiFDlIXZqWEtyVjEXfgwzA4eQkXutLWiNy2WnX/l0XeXueKwPccahgpwbHSz/kgarCo9dTV6FuxJvzEFsQURLGeLb5YiDtSYvfqZkjQjGi0I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(15650500001)(38070700005)(83380400001)(2906002)(186003)(52536014)(5660300002)(9686003)(8676002)(84970400001)(6506007)(8936002)(53546011)(26005)(966005)(38100700002)(122000001)(7696005)(33656002)(41300700001)(71200400001)(316002)(76116006)(66556008)(66946007)(44832011)(478600001)(66446008)(66476007)(55016003)(64756008)(86362001)(4326008)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2k0NVhEQTNjZXNORndUelcvbWx4YVREdkZMeWxsdmdJSGRMNUQxMmpEVjdB?=
 =?utf-8?B?eWlWTDdNMkViYkxjb0FIRHNTMzhWWGoySXVLNWNhTDZsWTNvT0JIRnk4N2tI?=
 =?utf-8?B?Q0RKaTNra20vY09FMWozNUJyTk1mUkExdkh2OWhKbXN1dmpOOEFuNVkvRnhW?=
 =?utf-8?B?V21YMFJrRkVSM0F4cDlpaFdxMVpEcE8vbEhCYWhmQkE0MzBxTVJzKzAra1ND?=
 =?utf-8?B?RmNBSWI0aUl0WVovMTIwcWZNcHBoN3JzYVFrcStQc2Rqc0UrRWZwcHNuLzk0?=
 =?utf-8?B?MWREWWgvdytNeFAvdzFYZTBiL2t5b0VaKzZTV2hNdWRTSFdSdFJ5MWNqa3Zh?=
 =?utf-8?B?QUh2dGRHYTE0ejZYQXdmTGhjS05iK0hlR3o0YUZlLzhZa3JwaGNFSzJFbzdB?=
 =?utf-8?B?MDY4V3BvZWVqYTlFc0YwMDB5dkxDZEhWVUhjayswaTRXQnZxUXpyQy8vSnZR?=
 =?utf-8?B?SW1pNWtGODlkaU0rS2xHK3RLa1JwWVFLaTE3SWg0WkpORk5MbFIwbVAvbzMr?=
 =?utf-8?B?Mm9CNHBqSk1IVGJUTEdBWUo0c3BoKzJ3cXhEcVhtbDJDSlMxVTBpUE15bnpl?=
 =?utf-8?B?WXhyN2gvMThuanhFeVViVXVWamo3aDRuSUdwcjZpRDN5aUo0QjN3NlhIdzdX?=
 =?utf-8?B?a1ZkeWJyK1g4RURtMnBaRk1oRUtKbjA5d1pRY0tUcGdWWXBzVUc2a2ZaYk9m?=
 =?utf-8?B?aXk3SWdPVlF0aHFSc0NKQTl6eWx3Mmg1WEZkVjIvTURmVnNQU2NGUHNBZEpT?=
 =?utf-8?B?elZUQjNmYk9URVlOaG56aGxMUllpVWF4MFdoSTZ4eWZoS2Nqa2pnL3k3d0RE?=
 =?utf-8?B?N3RnNWJlakFuRzF2RytWSzdGNTNnMTNyRHJVTkJlZUhoRmxBSU9BVzRZRmcv?=
 =?utf-8?B?U2EwWU4xQkVLSjFTSEZsMWZNZDFXWW9zZ2hsSnFsc0djd1A1RXAyY2xZZWNC?=
 =?utf-8?B?RHJTOG9vdDhOendnOVV0Z094eExmcTdZWVVwSjBtV0Y1Lzg1eGtJQWdYVUhw?=
 =?utf-8?B?YnpveHVtSURNZHp4aWlrUC9UaGpQb0hzVkVHOERTa1ZSSDJBV1QyUHVYNlg2?=
 =?utf-8?B?RXJ6aTRCd1poa3d0djdsQ1lGTThkcXlTc3NpZW95dzNDWndIcmJJajI5cXdz?=
 =?utf-8?B?TEFpMGVHc21zK2lhcU9maUxKdUhxNTNnTFZlUmFNTHE2aytvVjZVZ3dpVXVV?=
 =?utf-8?B?Y3ZBdFVFZFJuYnZzTUR4akxqeXhIb3IzQi9DT3lqbHpHd0o2TSsyMnZqbVhP?=
 =?utf-8?B?M2pzQUpSWExZaHBxQUlHNVlsOGN6em1mWDN2QjhBOHBCZHRUbFIwQnJGSkUr?=
 =?utf-8?B?WFdsWEdGYU9UMk1RbWpBcWZiN3dMUXMvbzk3eEE1UlhtdXZyaXRTSEI1c1ZL?=
 =?utf-8?B?VXFwYXZBS2NvVm9neVE1OGhHQWhiak50RkZpMDRmSkNJVUdxRllEWHhMYlpj?=
 =?utf-8?B?U0U1U3JZenhTVElmT2M1TFpnTWwyQ3o3RzVqSnZqNjhiZHkvejd6emFQVVpo?=
 =?utf-8?B?NGs2c3RXdWNHUUthTjdMamJVNUtYN0JlZHpQMTBFd05TOEgveEE5UnEzdWpX?=
 =?utf-8?B?SmZUUTJ4Tk52V0dqek5YalJvVGVjWTI2dGE5L1MzaXpYV3EySzhkTlJLQncv?=
 =?utf-8?B?QmlLWmNjaE9ZRHdWc3I1WitYK1NYREE1dmRVUldFYzdsV1lLb0VWaFJydm84?=
 =?utf-8?B?Q1pMeWVOcU5CbDIwZ2N6alQ5TThnUHVNUjRodWxNc29tMmRrWHNxS3Nodncy?=
 =?utf-8?B?bHdHWEZpbU5oQlpZZElPc2tZaEtLTXQ3YnFwYlBISmtNK2lWcjgrMktCanU0?=
 =?utf-8?B?TWlBKzhEWXBiOTdLTWhPR045MjhaNy9oL3QzRkJmRG1mdG8valpmRFJHT3ZP?=
 =?utf-8?B?NTZDWHp0RnBOT2JmNzFzbE9uZmtaQlpwSGFNUFVXdzBVckQrc2tJM1BCR3Ro?=
 =?utf-8?B?QzJXT1VwcnBQSXR0OU96NTloSllYaUJPWjdvazU0RWJCYVY5SytiQVlldnVz?=
 =?utf-8?B?am94bEgvbXBNRTQvUUQrSHBzVTEzYWY0akd1dkVkVFRXWEVMb0Q4eEZQcmJh?=
 =?utf-8?B?bDI2cHlweG5rciswaEdRVFVLZGpLU2E4M2NnRjBWemFadWQ0TTNKcisrSTV5?=
 =?utf-8?Q?JD/U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 500e2e71-f3be-4d90-2d2b-08db4293452b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 18:07:29.0725
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQdf3CwO5sRx/6BT0WKV8oNDkz1mc+lTARkLBkhY2EuQwGwZc9q7Jy3Kg0hl8wIX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB5827
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 18:07:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59756

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgUGV0
ciBHb3R0aGFyZA0KPiBTZW50OiBkZW4gMTcgZmVicnVhcmkgMjAyMyAyMDowMg0KPiBUbzogeW9j
dG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNlY3Vy
aXR5XVtQQVRDSF0gdHBtMi10c3M6IHVwZ3JhZGUgMy4yLjAgLT4gNC4wLjENCj4gDQo+IENoYW5n
ZWxvZzoNCj4gaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvdHBtMi10c3MvYmxvYi80
LjAuMS9DSEFOR0VMT0cubWQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFBldHIgR290dGhhcmQgPHBl
dHIuZ290dGhhcmRAYWR2YW50ZWNoLmN6Pg0KPiAtLS0NCj4gIC4uLi90cG0yLXRzcy90cG0yLXRz
cy9maXh1cF9ob3N0dG9vbHMucGF0Y2ggICAgICAgICAgfCAxMCArKysrKy0tLS0tDQo+ICAuLi4v
e3RwbTItdHNzXzMuMi4wLmJiID0+IHRwbTItdHNzXzQuMC4xLmJifSAgICAgICAgIHwgMTIgKysr
Ky0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRp
b25zKC0pDQo+ICByZW5hbWUgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3t0cG0yLXRz
c18zLjIuMC5iYiA9PiB0cG0yLXRzc180LjAuMS5iYn0gKDkwJSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9tZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3MvZml4dXBfaG9zdHRvb2xz
LnBhdGNoIGIvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3RwbTItdHNzL2ZpeHVwX2hv
c3R0b29scy5wYXRjaA0KPiBpbmRleCA0NTA2OThmLi4wNGEyOTY0IDEwMDY0NA0KPiAtLS0gYS9t
ZXRhLXRwbS9yZWNpcGVzLXRwbTIvdHBtMi10c3MvdHBtMi10c3MvZml4dXBfaG9zdHRvb2xzLnBh
dGNoDQo+ICsrKyBiL21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy90cG0yLXRzcy9maXh1
cF9ob3N0dG9vbHMucGF0Y2gNCj4gQEAgLTUsMTYgKzUsMTYgQEAgTm90IGFwcHJvcHJpYXRlIGZv
ciBjcm9zcyBidWlsZCBlbnYuDQo+ICBVcHN0cmVhbS1TdGF0dXM6IE9FIFtpbmFwcHJvcHJpYXRl
XQ0KPiAgU2lnbmVkLW9mZi1ieTogQXJtaW4gS3VzdGVyIDxha3VzdGVyODA4QGdtYWlsLmNvbT4N
Cj4gDQo+IC1JbmRleDogdHBtMi10c3MtMy4yLjAvY29uZmlndXJlLmFjDQo+ICtJbmRleDogdHBt
Mi10c3MtNC4wLjEvY29uZmlndXJlLmFjDQo+ICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+IC0tLS0gdHBtMi10c3Mt
My4yLjAub3JpZy9jb25maWd1cmUuYWMNCj4gLSsrKyB0cG0yLXRzcy0zLjIuMC9jb25maWd1cmUu
YWMNCj4gLUBAIC00ODgsMTcgKzQ4OCw2IEBADQo+ICstLS0gdHBtMi10c3MtNC4wLjEub3JpZy9j
b25maWd1cmUuYWMNCj4gKysrKyB0cG0yLXRzcy00LjAuMS9jb25maWd1cmUuYWMNCj4gK0BAIC01
NTQsMTcgKzU1NCw2IEBAIEFNX0NPTkRJVElPTkFMKFNZU0RfU1lTVVNFUlMsIHRlc3QNCj4gIngk
c3lzdGVtZF9zeXN1c2VycyIgPSAieHllcyIpDQo+ICAgQUNfQ0hFQ0tfUFJPRyhzeXN0ZW1kX3Rt
cGZpbGVzLCBzeXN0ZW1kLXRtcGZpbGVzLCB5ZXMpDQo+ICAgQU1fQ09ORElUSU9OQUwoU1lTRF9U
TVBGSUxFUywgdGVzdCAieCRzeXN0ZW1kX3RtcGZpbGVzIiA9ICJ4eWVzIikNCj4gDQo+ICAtIyBD
aGVjayBhbGwgdG9vbHMgdXNlZCBieSBtYWtlIGluc3RhbGwNCj4gLS1BU19JRihbdGVzdCAiJEhP
U1RPUyIgPSAiTGludXgiXSwNCj4gKy1BU19JRihbdGVzdCAiJEhPU1RPUyIgPSAiTGludXgiICYm
IHRlc3QgIngkc3lzdGVtZF9zeXN1c2VycyIgIT0gInh5ZXMiXSwNCj4gIC0gICAgWyBBQ19DSEVD
S19QUk9HKHVzZXJhZGQsIHVzZXJhZGQsIHllcykNCj4gIC0gICAgICBBQ19DSEVDS19QUk9HKGdy
b3VwYWRkLCBncm91cGFkZCwgeWVzKQ0KPiAgLSAgICAgIEFDX0NIRUNLX1BST0coYWRkdXNlciwg
YWRkdXNlciwgeWVzKQ0KPiBkaWZmIC0tZ2l0IGEvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTIt
dHNzL3RwbTItdHNzXzMuMi4wLmJiIGIvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3Rw
bTItdHNzXzQuMC4xLmJiDQo+IHNpbWlsYXJpdHkgaW5kZXggOTAlDQo+IHJlbmFtZSBmcm9tIG1l
dGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLXRzcy90cG0yLXRzc18zLjIuMC5iYg0KPiByZW5hbWUg
dG8gbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItdHNzL3RwbTItdHNzXzQuMC4xLmJiDQo+IGlu
ZGV4IDE1NTYyNzMuLjY1N2EyY2QgMTAwNjQ0DQo+IC0tLSBhL21ldGEtdHBtL3JlY2lwZXMtdHBt
Mi90cG0yLXRzcy90cG0yLXRzc18zLjIuMC5iYg0KPiArKysgYi9tZXRhLXRwbS9yZWNpcGVzLXRw
bTIvdHBtMi10c3MvdHBtMi10c3NfNC4wLjEuYmINCj4gQEAgLTEwLDE1ICsxMCwxNiBAQCBTUkNf
VVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS90cG0yLXNvZnR3YXJlLyR7QlBOfS9yZWxlYXNlcy9k
b3dubG9hZC8ke1BWfS8ke0JQTg0KPiAgICAgICAgICAgICBmaWxlOi8vZml4dXBfaG9zdHRvb2xz
LnBhdGNoIFwNCj4gICAgICAgICAgICAgIg0KPiANCj4gLVNSQ19VUklbc2hhMjU2c3VtXSA9ICI0
ODMwNWU0MTQ0ZGNmNmQxMGYzYjI1YjdiY2NmMDE4OWZkMmQxMTg2ZmVhZmQ4Y2Q2OGM2YjE3ZWNm
MGQ3OTEyIg0KPiArU1JDX1VSSVtzaGEyNTZzdW1dID0gIjUzMmE3MDEzMzkxMGI2YmQ4NDIyODk5
MTViM2Y5NDIzYzAyMDVjMGVhMDA5ZDY1Mjk0Y2ExOGE3NDA4N2M5NTAiDQo+IA0KPiAgVVBTVFJF
QU1fQ0hFQ0tfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS90cG0yLXNvZnR3YXJlLyR7QlBOfS9y
ZWxlYXNlcyINCj4gDQo+ICBpbmhlcml0IGF1dG90b29scyBwa2djb25maWcgc3lzdGVtZCB1c2Vy
YWRkDQo+IA0KPiAtUEFDS0FHRUNPTkZJRyA/Pz0gIiINCj4gK1BBQ0tBR0VDT05GSUcgPz89ICJ2
ZW5kb3IiDQo+ICBQQUNLQUdFQ09ORklHW294eWdlbl0gPSAiLC0tZGlzYWJsZS1kb3h5Z2VuLWRv
YywgIg0KPiAtUEFDS0FHRUNPTkZJR1tmYXBpXSA9ICItLWVuYWJsZS1mYXBpLC0tZGlzYWJsZS1m
YXBpLGN1cmwganNvbi1jICINCj4gK1BBQ0tBR0VDT05GSUdbZmFwaV0gPSAiLS1lbmFibGUtZmFw
aSwtLWRpc2FibGUtZmFwaSxjdXJsIGpzb24tYyB1dGlsLWxpbnV4LWxpYnV1aWQgIg0KPiArUEFD
S0FHRUNPTkZJR1twb2xpY3ldID0gIi0tZW5hYmxlLXBvbGljeSwtLWRpc2FibGUtcG9saWN5LGpz
b24tYyB1dGlsLWxpbnV4LWxpYnV1aWQgIg0KDQpZb3UgaW50cm9kdWNlIGEgbmV3IGZlYXR1cmUg
InBvbGljeSIsIGJ1dCB0aGVuIHlvdSBzZXQgdGhlIGRlZmF1bHQgDQpmb3IgUEFDS0FHRUNPTkZJ
RyB0byAidmVuZG9yIiwgd2hpY2ggZG9lcyBub3QgZXhpc3QuIFdhcyB0aGlzIA0KaW50ZW50aW9u
YWw/IElmIHNvIGl0IHNob3VsZCBoYXZlIGJlZW4gbWVudGlvbmVkIGluIHRoZSBjb21taXQgDQpt
ZXNzYWdlIGFzIGl0IGNhdXNlcyBhIHdhcm5pbmcgdW5sZXNzIHlvdSBvdmVycmlkZSB0aGUgDQpk
ZWZhdWx0IFBBQ0tBR0VDT05GSUc6DQoNCiAgV0FSTklORzogdHBtMi10c3MtNC4wLjEtcjAgZG9f
Y29uZmlndXJlOiBRQSBJc3N1ZTogdHBtMi10c3M6IGludmFsaWQgDQogIFBBQ0tBR0VDT05GSUc6
IHZlbmRvciBbaW52YWxpZC1wYWNrYWdlY29uZmlnXQ0KDQo+IA0KPiAgRVhUUkFfT0VDT05GICs9
ICItLWVuYWJsZS1zdGF0aWMgLS13aXRoLXVkZXZydWxlc2Rpcj0ke25vbmFyY2hfYmFzZV9saWJk
aXJ9L3VkZXYvcnVsZXMuZC8iDQo+ICBFWFRSQV9PRUNPTkYgKz0gIi0tcnVuc3RhdGVkaXI9L3J1
biINCj4gQEAgLTI4LDExICsyOSw2IEBAIFVTRVJBRERfUEFDS0FHRVMgPSAiJHtQTn0iDQo+ICBH
Uk9VUEFERF9QQVJBTToke1BOfSA9ICItLXN5c3RlbSB0c3MiDQo+ICBVU0VSQUREX1BBUkFNOiR7
UE59ID0gIi0tc3lzdGVtIC1NIC1kIC92YXIvbGliL3RwbSAtcyAvYmluL2ZhbHNlIC1nIHRzcyB0
c3MiDQo+IA0KPiAtZG9fY29uZmlndXJlOnByZXBlbmQoKSB7DQo+IC0gICAgIyBkbyBub3QgZXh0
cmFjdCB0aGUgdmVyc2lvbiBudW1iZXIgZnJvbSBnaXQNCj4gLSAgICBzZWQgLWkgLWUgJ3MvbTRf
ZXN5c2NtZF9zKFxbZ2l0IGRlc2NyaWJlIC0tdGFncyAtLWFsd2F5cyAtLWRpcnR5XF0pLyR7UFZ9
LycgJHtTfS9jb25maWd1cmUuYWMNCj4gLX0NCj4gLQ0KPiAgZG9faW5zdGFsbDphcHBlbmQoKSB7
DQo+ICAgICAgIyBSZW1vdmUgL3J1biBhcyBpdCBpcyBjcmVhdGVkIG9uIHN0YXJ0dXANCj4gICAg
ICBybSAtcmYgJHtEfS9ydW4NCj4gLS0NCj4gMi4zNC4xDQoNCi8vUGV0ZXINCg==

