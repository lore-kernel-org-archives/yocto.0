Received: from esa12.fujitsucc.c3s2.iphmx.com (esa12.fujitsucc.c3s2.iphmx.com [216.71.156.125])
 by mx.groups.io with SMTP id smtpd.web12.8785.1627376839164326697
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 02:07:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=MAiHb/Zq;
 spf=neutral (domain: fujitsu.com, ip: 216.71.156.125, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1627376840; x=1658912840;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=AsJehg+vSVqJP09TVY9MFE+7yoIOvgRc4Q3C0+b6lWg=;
  b=MAiHb/ZqkTlUAcvCt3gVz8OvfeUTavbuJ0WsER5z7oazgExDIrL0uVpj
   gCT5aPZmN1J5iavr02KJMHYnacutAuhAuhDr80iR7Rgho6ngix7rZUxL5
   E74D+M/XucwGwC4mqnUnTMuV9s45oeYh0zx8OwA9tOLNP0DsUNtXVMgla
   2e9fp9hodoY3szqw1oMwpt6yD05xLFw3lnZa9rAIhkZnXGYJuWU8sOHz8
   /qrNRZL1sx0W/7OgftT+F3NB3ebx08CVPOVQWkK1Wb+8HSYgP+D9Rfm2P
   pA2Qcu0qbmErl6Ir7dwiwrqn6v/oe6Eifm3b8mLU9nuYEhNTyMW3uyYa/
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="35653055"
X-IronPort-AV: E=Sophos;i="5.84,272,1620658800"; 
   d="scan'208";a="35653055"
Received: from mail-os2jpn01lp2055.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.55])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 18:07:16 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFzMUy2Yod222JFiWARNSSXuayC9RLkN7mBNi5lmKmh6JbS/oiowFgpgqRDoZ2eWbPqhfBj0IZ3wmJkwLFFs43YpEeH1k6jLKpmBeoLTnG9BGTFAHb0AUuxa4Av0EWD2HhOy+7MjVauymTQqjp6nVIPks6jRAroMffSy24lZnN0dZMfCpW3popD33g2H+tsDJ0KTBH/9TqsBWgVneWz8qRgn7PeNmbR6tDjfv1Ehnt/PQ66jWGfkij7nkeZlIWo86HkySXrauZW7KcdY3g9Nd6C09y+iOp29UT29SiaC4Z7zizZcXb6fvuzwJao6pXpVr3Cv58cZY8w4QKVYt797dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AsJehg+vSVqJP09TVY9MFE+7yoIOvgRc4Q3C0+b6lWg=;
 b=R05heHBiFH6jaq0zzSSOPWNlo60bwMaNIg4GbbqCYF6SGeRjv9VPNGLFLfLMjB1fJQwqJJrHJ1JYgdcBjf5aLe/5Pb5YuOyVWVvjq0UoU/HshHmNx/TQwCut/DJQyn2VTCJNd7e5oGympjkdsAaj4ktLHVplHqY3l1H/uY4xlvEdMymqEV3SYYeAFMLTZFq2ZO8LLiOctV4cOdf0tVn0pKeb/ETODPfMsFTd5lq750OMAPaX3ipK8zhPuOdCapObugHXXusZAeCa6JGK6kyMoHpBpLDec4sNUfdGc++ULEl4GgiEXG6Ej1+v30RSxwokScmjBgKFPRPzPrUQLPpUsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AsJehg+vSVqJP09TVY9MFE+7yoIOvgRc4Q3C0+b6lWg=;
 b=O4yuSRENNA87RoIK7m9GSRHi//6c46O5op9GH75/36AWq8KwklyuDIdhuIcluhla6ALEvQcWFFzPtmddGsiWJcF5GJ08OxWhAxrXRJ110WAbvBJc6L8BrSfw0q4hNL+19emkMrFmFSJMS1bnzDAiHNCq1ocUWJEFfKkSwv4BzYo=
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by OS3PR01MB6872.jpnprd01.prod.outlook.com (2603:1096:604:117::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Tue, 27 Jul
 2021 09:07:13 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::6474:eb47:b26c:73c0%3]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 09:07:13 +0000
From: "leimaohui" <leimaohui@fujitsu.com>
To: "koansoftware@gmail.com" <koansoftware@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Marco Cavallini <m.cavallini@koansoftware.com>
Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
Thread-Topic: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved
 check if spdx already exists out of the task
Thread-Index: AQHXfvpruumRrGdwV0ShrZDoOmtH46tWCe7QgABfwYCAAAYSYIAABbKAgAAaH7A=
Date: Tue, 27 Jul 2021 09:07:12 +0000
Message-ID: 
 <OS0PR01MB6178B675FFA5E6A4F7633036A0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <20210722130623.30388-1-koansoftware@gmail.com>
 <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
 <beee77ab-64f4-8c6c-0d1d-e6679a9cf558@gmail.com>
 <OS0PR01MB61781B8046F68D205CD1755DA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
 <601b9b3f-6ce4-de8d-3dbd-76445e8369f4@gmail.com>
In-Reply-To: <601b9b3f-6ce4-de8d-3dbd-76445e8369f4@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51cca9cc-6933-4fee-986b-08d950ddec33
x-ms-traffictypediagnostic: OS3PR01MB6872:
x-microsoft-antispam-prvs: 
 <OS3PR01MB68725116F921CC76EE027288A0E99@OS3PR01MB6872.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 D6JC33ZnGtj91O2Du66C0+5Ef/p98i1Vl4w9iDnlC3ISa0q9BT9KInsp+P/mFusEp3QU8zqCI9cJLhOYZvia9n1du53+E2dEesr/qv3cW84AGV9DbAebvYuvkwyUBx3rFilnlO5taX1k5u3jtkcbdpO/hv5VZA5zy+gibgGFkvGYsR/8vEn3R50In5f4Kc+n6WNEHOiYGoCn/2F32bsjbgFqS/Q9qj9ymAs4aF7nZSCm3i+VDya7/DO3eDxBCApeaPIFl+8ytkngCqUh6sRQxTEOnEUOONK8UxvtYQg1DNC1N+r+47+4JzronI/n3jHlfeVGTT7+fLgWPz6o1/vSwA5CsXwPrRJzqPeJwePazCPq0a/ymyonGe1xLN8h25YxTFqLWRms22YpApXFC3v0qe9RjDj8cUHJG9Aoss/QB7Hh8SN7KkBkCuPWIBTQvwbvTSGvF16OyR6W5p9qkDMRW9zGz2bLPyUwvrQvtwVxKOFHkVb/xsUwD6PVD0CpcOP5bOlsv+kXRkeVEkrgsTDix06LfD3oZ1rDL6w+7vI3Z1K0E9R4NThdx/psyjKk8jPHIB+dJyKJJNTeXSX/GBXA21e7K1oy1TBu8OcV7IhHVoJINi2fd1fSFVxfll0Q8RP2N/KPP1jOwRwrWeTkkpXKnuTJqgf3/1tnm+yzySbNBo/qvFvZ38vC4ztYnrYIdZ51vihCYFS+BC5yFlmE461NtUynZCG9+lcPzsa5x8dnVZhHTGkGSIJ0cq1h8uF7fgu/hJgt6yYb+KRIZltHZFSVu8h6Wp7ZR3GrttYBVi0ueSI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(110136005)(26005)(76116006)(6506007)(7696005)(2906002)(53546011)(52536014)(316002)(85182001)(66476007)(33656002)(86362001)(186003)(83380400001)(122000001)(5660300002)(66446008)(508600001)(66946007)(66556008)(64756008)(966005)(55016002)(8676002)(4326008)(9686003)(71200400001)(38100700002)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?M2FaVHF5MWN3d2o0Y1NNWnlaODFNRldabE5pQk8wM3NmdWRuSHlZbVhn?=
 =?shift_jis?B?YWJZcHA3TlBJZGlXNEZaUSs0eCtsbFJxeHgvbHFyZ21GZWxuUUx3VXJS?=
 =?shift_jis?B?d1BWT3c5STlXVE04Q08xYWQ5L2hwV0Foc3dmRjBuWkR2bXdJM2dLdUly?=
 =?shift_jis?B?bS9aRDZoZ09DdjNucEZHejFCNVFYWm56WmkzdW1DSlJBN0tDcHNxQjJI?=
 =?shift_jis?B?SmVReE8zLzZLUklOWXk3N0xueW80UE9DV1VEd1B3L2dvd3Z3NUZXaEVW?=
 =?shift_jis?B?SWdWN3pRd3h0WTBadE1jVS9XNmZRMldPeUxtUVVmQk9OeEgxLzJHQUth?=
 =?shift_jis?B?Q3JSQUgyeWlBUTZRQkZzY0FQUGNnWkNudlBMT29VaGFxeC93eG9jKzZt?=
 =?shift_jis?B?T3lTUWVZN0RJeEdYbnBEMTR1b1lEYUNDbWt4VjFpN0lpYTZmYmJRQ2hT?=
 =?shift_jis?B?blRETUJpTjQ5N1NUbFFEdGJCajNYMm9IR2lpdHowcVliZzdYeEFvL1ZW?=
 =?shift_jis?B?QVMycFlGRi9qOHpLV2p0U3JwbnZ2YlIzUSs0SEUrTjN2OGF2YUY1THRt?=
 =?shift_jis?B?c1B1dHo2bTJEeDVOUmxZOGJCZVhvWWJnVFplMy9FNUo2aTdGSlRtVjN3?=
 =?shift_jis?B?alFCNjNtMHRhMThTUm82TVBLWVFleGx1MGMxT3gxcE5Ia1hBUnBXQ2pi?=
 =?shift_jis?B?TEx0MUZCWU9DM3M5VVRJbE9wdno3LzNXeG1vNUorQW9STFNsdVNZclFC?=
 =?shift_jis?B?R1RXVk9XMnl0L01rQ2VjRlRpUHNVMDNxVmU4RVNqbVlGd3FESEd1aWZP?=
 =?shift_jis?B?VzRobGJBVHU3dExDKzBUeDVyaDlTV3liL0hRN3FORzluYWt2SUh3alFL?=
 =?shift_jis?B?Y3g4K1lxS2cvdW80N0lKRDYzNjVJQjhEOFJqbkNJTnRwOFRDSjFzTTV4?=
 =?shift_jis?B?clIxM1V2YlZYY0JxdmhhQ0srSEM3SldCV1NFTjdCbUlPLzFyMGprTXhx?=
 =?shift_jis?B?dEh1Vlg5M0FKZENtSWxHYkRVdjhRcE4wUWRjOXA2MWlDY1htY2VLQUE5?=
 =?shift_jis?B?Rk1PdDJ5bXcvdkhXWlN4MTBRaTFKZWRVZWNPU0xPS1RsMEl5VzVjVHNr?=
 =?shift_jis?B?dEt6VWNaTnFKdkc3dTlXQWtDcnJ4VTRMYnNjQnphSGg3WHpKVUlUaEdZ?=
 =?shift_jis?B?Zmw3R0djRDBtWk5CMG8xSEdJTUZ5enRIQlVUNk9JL0lBMDlKN1E1UG93?=
 =?shift_jis?B?SXF5NHRTV3p2ZUFMbXkxR0dHUjVBS0dMWi9Od1RtNFFzbGtpcHJhRkx1?=
 =?shift_jis?B?bUFjVmJqZ3JQK1NlRUZGc1ZvaUxqSlJ1dzNhNStnWTNpazdlNVNUTVdq?=
 =?shift_jis?B?QmRlMGdjWi9idVBqZ05UMW11YzZQdmtXOVRJMXZyaExqZGVyVUFHSUFy?=
 =?shift_jis?B?U0NDQ3hxcElOZUdrMnhHWkRNakxPajhLUmNtWVBiNCtDWmdCbm14cXFO?=
 =?shift_jis?B?cU10KzA0RCtKUXlBOU01SGtCSXhiTi90TGZMbVVsNHhLNy91Y0ZqbW5W?=
 =?shift_jis?B?a3VhZEdZcG1KSUoxcVY0UC9Yd1o2a0l1M3VUM2ZNc0ZPMElXK2IzVFZF?=
 =?shift_jis?B?Yis2REtXZzFEOEhZc1FwKzM2NzMveVE2YVlFWnNmbWhwak4vRXFUb0FX?=
 =?shift_jis?B?bklZRmVrbzgxMm56TnZhbWh1dXJiL0J4cVdvVitJcXNBUjlXRmlmSU9R?=
 =?shift_jis?B?T0k4UWJ3QkxkZVhoTmlYd21CMXFVWE9hbURyV0cxMHdTWGQyRzdkbDRK?=
 =?shift_jis?B?T3FWSXhEV25ybVdoOXJwUUpOMFVmSnhkYWFXTGVaRnVkZkl6SnJWWnVx?=
 =?shift_jis?Q?pktP3P+CntKMunmkz16YaZe6lF3XI9R9hVGuqRIjOw?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51cca9cc-6933-4fee-986b-08d950ddec33
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 09:07:12.9648
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8fHWXm/rY69vKG/BRG+R/BXm8QCitfGvK8yRHko5zQcR5mU4XXXGm1zYraaB4o+q3ozZzXcvA95pssbeQ2JMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6872
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

bWVyZ2VkDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyY28gPGtv
YW5zb2Z0d2FyZUBnbWFpbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bHkgMjcsIDIwMjEgMzoz
NCBQTQ0KPiBUbzogTGVpLCBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT47DQo+IHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxp
bmlAa29hbnNvZnR3YXJlLmNvbT4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW21ldGEtc3BkeHNj
YW5uZXJdW1BBVENIXSBmb3Nzb2xvZ3ktcmVzdC5iYmNsYXNzOiBNb3ZlZA0KPiBjaGVjayBpZiBz
cGR4IGFscmVhZHkgZXhpc3RzIG91dCBvZiB0aGUgdGFzaw0KPiANCj4gSGkgTGVpLA0KPiB5b3Ug
YXJlIHJpZ2h0Lg0KPiBJZ25vcmUgdGhpcyBvbmUgYW5kIHBsZWFzZSBzZWUgbXkgb3RoZXIgcGF0
Y2ggSSBzZXQgYSBmZXcgbWludXRlcyBhZ28uDQo+IA0KPiBUaGFuayB5b3UNCj4gLS0NCj4gTWFy
Y28NCj4gDQo+IA0KPiBPbiAyNy8wNy8yMSAwOToyNywgbGVpbWFvaHVpQGZ1aml0c3UuY29tIHdy
b3RlOg0KPiA+IEhpLCBNYXJjbw0KPiA+DQo+ID4gSSBnb3Qgd2hhdCB5b3UgbWVhbiwgYnV0IEkg
dGhpbmsgeW91ciBwYXRjaCBzaG91bGQgYmUgbW9kaWZpZWQgYXMgdGhlDQo+IGZvbGxvd2luZywg
anVzdCBtYWtlIGRvX2dldF9yZXBvcnQgbm90IGNoZWNrIHNwZHggZmlsZSBhZ2FpbiwgaXMgaXQg
Pw0KPiA+DQo+ID4gJCBnaXQgZGlmZiBjbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MgZGlm
ZiAtLWdpdA0KPiA+IGEvY2xhc3Nlcy9mb3Nzb2xvZ3ktcmVzdC5iYmNsYXNzIGIvY2xhc3Nlcy9m
b3Nzb2xvZ3ktcmVzdC5iYmNsYXNzDQo+ID4gaW5kZXggMzY5NDQ0MC4uYzI5ZTU3ZiAxMDA2NDQN
Cj4gPiAtLS0gYS9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCj4gPiArKysgYi9jbGFz
c2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCj4gPiBAQCAtMTU3LDE1ICsxNTcsNiBAQCBweXRo
b24gZG9fZ2V0X3JlcG9ydCAoKSB7DQo+ID4gICAgICAgaW5mb1snb3V0ZmlsZSddID0gb3MucGF0
aC5qb2luKG1hbmlmZXN0X2RpciwgaW5mb1sncG4nXSArICItIiArIGluZm9bJ3B2J10gKw0KPiAi
LnNwZHgiICkNCj4gPiAgICAgICBzc3RhdGVmaWxlID0gb3MucGF0aC5qb2luKHNwZHhfb3V0ZGly
LCBpbmZvWydwbiddICsgIi0iICsNCj4gPiBpbmZvWydwdiddICsgIi5zcGR4IiApDQo+ID4NCj4g
PiAtICAgICMgaWYgc3BkeCBoYXMgYmVlbiBleGlzdA0KPiA+IC0gICAgaWYgb3MucGF0aC5leGlz
dHMoaW5mb1snb3V0ZmlsZSddKToNCj4gPiAtICAgICAgICBiYi5ub3RlKGluZm9bJ3BuJ10gKyAi
c3BkeCBmaWxlIGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4gPiAtICAgICAgICByZXR1
cm4NCj4gPiAtICAgIGlmIG9zLnBhdGguZXhpc3RzKCBzc3RhdGVmaWxlICk6DQo+ID4gLSAgICAg
ICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMgYmVlbiBleGlzdCwgZG8gbm90
aGluZyIpDQo+ID4gLSAgICAgICAgY3JlYXRlX21hbmlmZXN0KGluZm8sc3N0YXRlZmlsZSkNCj4g
PiAtICAgICAgICByZXR1cm4NCj4gPiAtDQo+ID4gICAgICAgc3BkeF9nZXRfc3JjKGQpDQo+ID4N
Cj4gPiAgICAgICBiYi5ub3RlKCdTUERYOiBBcmNoaXZpbmcgdGhlIHBhdGNoZWQgc291cmNlLi4u
JykNCj4gPg0KPiA+IFRoZXJlIGlzIG5vIG5lY2Vzc2FyeSB0byBhZGQgY2hlY2sgaW4gbGluZSA4
NywgYmVjYXVzZSBsaW5lIDc5fjg1IGhhcyBjaGVja2VkDQo+IHdoZXRoZXIgdGhlIHNwZHggZmls
ZXMgZXhpc3QuDQo+ID4+IEBAIC04NCw2ICs4NCwxNSBAQCBweXRob24gKCkgew0KPiA+PiAgICAg
ICAgICBjcmVhdGVfbWFuaWZlc3QoaW5mbyxzc3RhdGVmaWxlKQ0KPiA+PiAgICAgICAgICByZXR1
cm4NCj4gPj4NCj4gPj4gKyAgICAjIGlmIHNwZHggYWxyZWFkeSBleGlzdHMNCj4gPj4gKyAgICBp
ZiBvcy5wYXRoLmV4aXN0cyhpbmZvWydvdXRmaWxlJ10pOg0KPiA+PiArICAgICAgICBiYi5ub3Rl
KGluZm9bJ3BuJ10gKyAic3BkeCBmaWxlIGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4g
Pj4gKyAgICAgICAgcmV0dXJuDQo+ID4+ICsgICAgaWYgb3MucGF0aC5leGlzdHMoIHNzdGF0ZWZp
bGUgKToNCj4gPj4gKyAgICAgICAgYmIubm90ZShpbmZvWydwbiddICsgInNwZHggZmlsZSBoYXMg
YmVlbiBleGlzdCwgZG8gbm90aGluZyIpDQo+ID4+ICsgICAgICAgIGNyZWF0ZV9tYW5pZmVzdChp
bmZvLHNzdGF0ZWZpbGUpDQo+ID4+ICsgICAgICAgIHJldHVybg0KPiA+PiArDQo+ID4NCj4gPiBC
ZXN0IHJlZ2FyZHMNCj4gPiBMZWkNCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+PiBGcm9tOiBNYXJjbyA8a29hbnNvZnR3YXJlQGdtYWlsLmNvbT4NCj4gPj4gU2VudDog
VHVlc2RheSwgSnVseSAyNywgMjAyMSAyOjUxIFBNDQo+ID4+IFRvOiBMZWksIE1hb2h1aSA8bGVp
bWFvaHVpQGZ1aml0c3UuY29tPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA+PiBD
YzogTWFyY28gQ2F2YWxsaW5pIDxtLmNhdmFsbGluaUBrb2Fuc29mdHdhcmUuY29tPg0KPiA+PiBT
dWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1zcGR4c2Nhbm5lcl1bUEFUQ0hdDQo+ID4+IGZvc3Nv
bG9neS1yZXN0LmJiY2xhc3M6IE1vdmVkIGNoZWNrIGlmIHNwZHggYWxyZWFkeSBleGlzdHMgb3V0
IG9mIHRoZQ0KPiA+PiB0YXNrDQo+ID4+DQo+ID4+IEhpIExlaSwNCj4gPj4gbXkgcGF0Y2hlcyBh
cmUgYmFzZWQgb24gYnJhbmNoIE1BU1RFUiB0aGVyZWZvcmUgdGhleSBhcmUgYmFzZWQgb24gdGhl
DQo+ID4+IGxhdGVzdCBzb3VyY2UgY29kZS4NCj4gPj4NCj4gPj4gV291bGQgeW91IG1pbmQgdG8g
YXBwbHkgdGhpcyBvbmUgc28gd2lsbCBiZSBwb3NzaWJsZSB0byBjYWxsICJiaXRiYWtlDQo+ID4+
IC1jIGdldF9yZXBvcnQiID8NCj4gPj4NCj4gPj4gVGhhbmsgeW91DQo+ID4+DQo+ID4+IC0tDQo+
ID4+IE1hcmNvDQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+IE9uIDI3LzA3LzIxIDAzOjExLCBsZWlt
YW9odWlAZnVqaXRzdS5jb20gd3JvdGU6DQo+ID4+PiBIaSBNYXJjbw0KPiA+Pj4NCj4gPj4+IEkn
bSBzb3JyeSwgYnV0IHlvdXIgcGF0Y2ggc2VlbXMgbm90IGJhc2Ugb24gdGhlIGxhdGVzdCBzb3Vy
Y2UgY29kZS4NCj4gPj4+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNn
aS9tZXRhLXNwZHhzY2FubmVyL3RyZWUvY2xhDQo+ID4+PiBzcw0KPiA+Pj4gZXMvZm9zc29sb2d5
LXJlc3QuYmJjbGFzcw0KPiA+Pj4NCj4gPj4+IEJlc3QgcmVnYXJkcw0KPiA+Pj4gTGVpDQo+ID4+
Pg0KPiA+Pj4NCj4gPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+Pj4+IEZyb206
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+DQo+ID4+Pj4gT24gQmVoYWxmIE9mIE1hcmNvIENhdmFsbGluaQ0KPiA+Pj4+IFNlbnQ6IFRo
dXJzZGF5LCBKdWx5IDIyLCAyMDIxIDk6MDYgUE0NCj4gPj4+PiBUbzogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KPiA+Pj4+IENjOiBNYXJjbyBDYXZhbGxpbmkgPG0uY2F2YWxsaW5pQGtv
YW5zb2Z0d2FyZS5jb20+OyBNYXJjbyBDYXZhbGxpbmkNCj4gPj4+PiA8a29hbnNvZnR3YXJlQGdt
YWlsLmNvbT4NCj4gPj4+PiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLXNwZHhzY2FubmVyXVtQQVRD
SF0gZm9zc29sb2d5LXJlc3QuYmJjbGFzczoNCj4gPj4+PiBNb3ZlZCBjaGVjayBpZiBzcGR4IGFs
cmVhZHkgZXhpc3RzIG91dCBvZiB0aGUgdGFzaw0KPiA+Pj4+DQo+ID4+Pj4gRnJvbTogTWFyY28g
Q2F2YWxsaW5pIDxtLmNhdmFsbGluaUBrb2Fuc29mdHdhcmUuY29tPg0KPiA+Pj4+DQo+ID4+Pj4g
ICAgV2l0aCB0aGUgcHJldmlvdXMgY29kZSB3YXMgaW1wb3NzaWJsZSB0byBydW4gdGhlIGRvX2dl
dF9yZXBvcnQNCj4gPj4+PiB0YXNrIHdoZW5ldmVyIGEgY29ycmVzcG9uZGVudCAuc3BkeCBmaWxl
IHdhcyBhbHJlYWR5IHByZXNlbnQgIGluDQo+ID4+Pj4gdG1wL2RlcGxveS9zcGR4Lg0KPiA+Pj4+
ICAgIE5vdyB0aGUgY2hlY2sgaWYgc3BkeCBhbHJlYWR5IGV4aXN0cyBpcyBhdCBhIGhpZ2hlciBs
ZXZlbA0KPiA+Pj4+IHRoZXJlZm9yZSBpcyBwb3NzaWJsZSB0byBydW4gOiBiaXRiYWtlIC1jIGdl
dF9yZXBvcnQNCj4gPj4+Pg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIENhdmFsbGluaSA8
a29hbnNvZnR3YXJlQGdtYWlsLmNvbT4NCj4gPj4+PiAtLS0NCj4gPj4+PiAgICBjbGFzc2VzL2Zv
c3NvbG9neS1yZXN0LmJiY2xhc3MgfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gPj4+PiAgICAx
IGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+Pj4+DQo+
ID4+Pj4gZGlmZiAtLWdpdCBhL2NsYXNzZXMvZm9zc29sb2d5LXJlc3QuYmJjbGFzcw0KPiA+Pj4+
IGIvY2xhc3Nlcy9mb3Nzb2xvZ3ktcmVzdC5iYmNsYXNzIGluZGV4DQo+ID4+Pj4gMzY5NDQ0MC4u
ZTU1ZTg1OSAxMDA2NDQNCj4gPj4+PiAtLS0gYS9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xh
c3MNCj4gPj4+PiArKysgYi9jbGFzc2VzL2Zvc3NvbG9neS1yZXN0LmJiY2xhc3MNCj4gPj4+PiBA
QCAtODQsNiArODQsMTUgQEAgcHl0aG9uICgpIHsNCj4gPj4+PiAgICAgICAgICAgIGNyZWF0ZV9t
YW5pZmVzdChpbmZvLHNzdGF0ZWZpbGUpDQo+ID4+Pj4gICAgICAgICAgICByZXR1cm4NCj4gPj4+
Pg0KPiA+Pj4+ICsgICAgIyBpZiBzcGR4IGFscmVhZHkgZXhpc3RzDQo+ID4+Pj4gKyAgICBpZiBv
cy5wYXRoLmV4aXN0cyhpbmZvWydvdXRmaWxlJ10pOg0KPiA+Pj4+ICsgICAgICAgIGJiLm5vdGUo
aW5mb1sncG4nXSArICJzcGR4IGZpbGUgaGFzIGJlZW4gZXhpc3QsIGRvIG5vdGhpbmciKQ0KPiA+
Pj4+ICsgICAgICAgIHJldHVybg0KPiA+Pj4+ICsgICAgaWYgb3MucGF0aC5leGlzdHMoIHNzdGF0
ZWZpbGUgKToNCj4gPj4+PiArICAgICAgICBiYi5ub3RlKGluZm9bJ3BuJ10gKyAic3BkeCBmaWxl
IGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4gPj4+PiArICAgICAgICBjcmVhdGVfbWFu
aWZlc3QoaW5mbyxzc3RhdGVmaWxlKQ0KPiA+Pj4+ICsgICAgICAgIHJldHVybg0KPiA+Pj4+ICsN
Cj4gPj4+PiAgICAgICAgZC5hcHBlbmRWYXJGbGFnKCdkb19zcGR4JywgJ2RlcGVuZHMnLCAnICVz
OmRvX2dldF9yZXBvcnQnICUNCj4gcG4pDQo+ID4+Pj4gICAgICAgIGJiLmJ1aWxkLmFkZHRhc2so
J2RvX2dldF9yZXBvcnQnLCAnZG9fY29uZmlndXJlJywgJ2RvX3BhdGNoJyAsIGQpDQo+ID4+Pj4g
ICAgICAgIGJiLmJ1aWxkLmFkZHRhc2soJ2RvX3NwZHgnLCAnZG9fY29uZmlndXJlJywgJ2RvX2dl
dF9yZXBvcnQnLA0KPiA+Pj4+IGQpIEBADQo+ID4+Pj4gLTE1NywxNSArMTY2LDYgQEAgcHl0aG9u
IGRvX2dldF9yZXBvcnQgKCkgew0KPiA+Pj4+ICAgICAgICBpbmZvWydvdXRmaWxlJ10gPSBvcy5w
YXRoLmpvaW4obWFuaWZlc3RfZGlyLCBpbmZvWydwbiddICsNCj4gPj4+PiAiLSIgKyBpbmZvWydw
diddICsgIi5zcGR4IiApDQo+ID4+Pj4gICAgICAgIHNzdGF0ZWZpbGUgPSBvcy5wYXRoLmpvaW4o
c3BkeF9vdXRkaXIsIGluZm9bJ3BuJ10gKyAiLSIgKw0KPiA+Pj4+IGluZm9bJ3B2J10gKyAiLnNw
ZHgiICkNCj4gPj4+Pg0KPiA+Pj4+IC0gICAgIyBpZiBzcGR4IGhhcyBiZWVuIGV4aXN0DQo+ID4+
Pj4gLSAgICBpZiBvcy5wYXRoLmV4aXN0cyhpbmZvWydvdXRmaWxlJ10pOg0KPiA+Pj4+IC0gICAg
ICAgIGJiLm5vdGUoaW5mb1sncG4nXSArICJzcGR4IGZpbGUgaGFzIGJlZW4gZXhpc3QsIGRvIG5v
dGhpbmciKQ0KPiA+Pj4+IC0gICAgICAgIHJldHVybg0KPiA+Pj4+IC0gICAgaWYgb3MucGF0aC5l
eGlzdHMoIHNzdGF0ZWZpbGUgKToNCj4gPj4+PiAtICAgICAgICBiYi5ub3RlKGluZm9bJ3BuJ10g
KyAic3BkeCBmaWxlIGhhcyBiZWVuIGV4aXN0LCBkbyBub3RoaW5nIikNCj4gPj4+PiAtICAgICAg
ICBjcmVhdGVfbWFuaWZlc3QoaW5mbyxzc3RhdGVmaWxlKQ0KPiA+Pj4+IC0gICAgICAgIHJldHVy
bg0KPiA+Pj4+IC0NCj4gPj4+PiAgICAgICAgc3BkeF9nZXRfc3JjKGQpDQo+ID4+Pj4NCj4gPj4+
PiAgICAgICAgYmIubm90ZSgnU1BEWDogQXJjaGl2aW5nIHRoZSBwYXRjaGVkIHNvdXJjZS4uLicp
DQo+ID4+Pj4gLS0NCj4gPj4+PiAyLjE3LjENCj4gPj4+DQo+ID4NCg0K
