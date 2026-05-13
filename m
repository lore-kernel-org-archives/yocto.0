Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38F6CCD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 06:26:35 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.85])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1483.1778653581730589347
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 23:26:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=zW44uBxx;
 spf=pass (domain: kempower.com, ip: 52.101.70.85, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b2WO7zVg2L1EryPlVkTko2IAHpTTp9FnKNaVjysJqK43CJofSyJwf2to1myvUeeI5+Vzkr628U1s0GCGj6CtkXzyk6DmPlS/C8LWB5L1oubGEsSebvbBe7CbBz+fI8nxkjllTpHj9DjVQVAGf7ZAzsGUoXlhwdEb9nR8Z4Q9lOHBa59lOW03JM76Xj0KPPpUcRH4siAG1nCwNEcBw2V5k4EU+iy0kuqno04JFpN+pZRPwSiFK8ncK07lNV9OLXyhakjzRu/AvAS2QlW+wtPMlGn628GGo0s8N+lBxwYUUtfxCD+I+VqLd5+OY/yH+41AjyKqSiCnYKjho49Oyr1Y3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/SUn3/D9M/W0UUGkCdSXXfnYtUlcxb49/IcweAz2nE=;
 b=k5GEdU7PQLnMi8Lbu1i0JjVIj/FJBv/NFCQ41Q5yKwHgZE6Yr/SDHpY8jBe1QU6e1YItGkAVud30wGTd+C7cnnZ2RUGHlUAR3xf40fAoxvmNdbqFvEyKskL4jPnZZW5hixrhicKehNDST0UDegnXnfJ/xOTyaQ8IUrLpJ9EcV9SexPS9w26JhTm//OHLfhwb+c6rNvbmgGmrW73l2EZ03WZQwDxIbtgH9VmeeZLsN4hQu4kO/HfKPTubmjE5dLYTE7VJctUQmJl5z9NGT6cfJkHno9LF0vbKVvvSOdBsln2ipMC1aCpuUILhcngMVtGGxpaUqkwfblOwWDzMqrYPDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j/SUn3/D9M/W0UUGkCdSXXfnYtUlcxb49/IcweAz2nE=;
 b=zW44uBxxhi3KuNCAFeQdM6+55fjAEU9HByO3QpOJeu0tLl2j14ul1I7GSvUViOQ3Yx+ll+LxrXZPaaywiO6cziF2hQUEkfWlLEFxYnI8SFWN10TqloboegE6WdX5Qi7QeihJWVjUVSp8dGCQMTc89uyAt1kpoQ/b95moJl/r2UTswWvG+2fN6+JboHAYdFB7vLt0pvvOVT11auRRdb5bQfnSAqNv8wypAObUHQ4ivz9vE4GR8zizFwU1mh2lJSbDd6r9tmDzecjB6M8GB7/2oE6UXFynuZTkdAhV41hBzgRYfdNWa/3Hd1lDRRWhe45XzgebNeOuWOJswJR72Pl5wA==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by AMBPR08MB11939.eurprd08.prod.outlook.com (2603:10a6:20b:762::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 06:26:17 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 06:26:16 +0000
From: =?utf-8?B?RVhULUFudHRpIEfDpHJkaW5n?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIAA7JGn
Date: Wed, 13 May 2026 06:26:16 +0000
Message-ID: 
 <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
In-Reply-To: <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|AMBPR08MB11939:EE_
x-ms-office365-filtering-correlation-id: 43368efb-af34-4f31-841e-08deb0b88a06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|11063799003|18002099003|8096899003|56012099003|22082099003;
x-microsoft-antispam-message-info: 
 IneeMuZHS/Nuk/9vc3Dt3kt7X6nQGWz0E/9hZbbp4LAP7eeaH8xHFvT89rTMVeP3eLMM/izMpvuTx5Dvg4iVjtqNTALQBri6gTiT8chPu8dVR/UkD8ht+3mLdNTJZHRnnZx1UBrbfjYPKtxJfSQflLj0IGdVUQ7+nXihM+OoMor8C6oUIQpmFmDIpd/SbhnmP8sasb1m1TGwkAHuW4T3cj+BsaAoBvn+k0/AFqq1mdMp4I1ePEzF5RS3PVNS5m/G0e8pbkJN3Fch2jiPbciLgGH3TKRr1zbqD3LGunnVSXEakOl1+r38RN5GEjQvMICvM3arHJCOaNQx+/CjMskHAXQgkdKRoCcA3FTzvl+dHQ/NTDWpTAKVQNsErjRDlMbaBdmMHJ08n9eQ4fDZJhMBVBWw1Giil+gwukl2CNy7Qz5wua7V1a28RtLtH7SHMWY+F4WvsOb0F5oHTkx0KlGu5u/sKAd8VCUa62C71I02s5KN1a8M/cO0JadxuULFIl+jmD4gIqfulFExhPbLk0xSrWkblcQ2lDfLreNTkFH4g4YF8AfU7/Xw7Cx+XOyqLlsbnkSzHPXz7lx/EuyTv3HAGHPghiwi4HEz04XgSndznfAwqtviqEJ6E2n8aNrpX6hA4V0egGstjyPGtTdGnKRjnJ1TqSnagk7vLVv90CYNK2P0Z4QK8v/H10D8MYRHltki9Zr5RrUTRxEsgwv+KMQfqOklheB9ruqG0hE1QzbHAG7/A/ZKBn4KmbHvzEHoN8oj
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(11063799003)(18002099003)(8096899003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cjJJdEQ4QmlTczhvazZUVFdNU1dCa3RmTkdrR0NBZEUyWlhrS1NjVzlsNmFq?=
 =?utf-8?B?Yzc4elZXeStsVjdpU1c3Nk9leHh2QlBQWmhOYVNIbURSbjZkWUttT0JPRVgv?=
 =?utf-8?B?Y0pKaUZYNkVkUXNLbGlCK2hHWEY1NUthN2JhTTQrSUtnVkFHQjdqUnlCVFVl?=
 =?utf-8?B?Qzh5VjQ2azYwYWh0NnBPMDB5UmUrazYza2xzVEpkeE9EWVowdnhXbWRzeFJz?=
 =?utf-8?B?dStqNXZGVlFyNTllVHZFdVl2ZG05VGovMGVLSHViMFJKOVdTVlBlelN5R0U2?=
 =?utf-8?B?MkxwdncxWnBrRVkxTTRLMlhLYjQzZ3pTbkxxTG5LWk92aDhZYjZLLzFod3FZ?=
 =?utf-8?B?NlBTNmdFNDVVdGQ3eUUrRWVHa3pNSmNYZG40ZW5MUmgySkJ0TWhNSzhTTlVh?=
 =?utf-8?B?QVZIbmY3RXFOT0hGWFY2WnA3L29aQU4rZzU5bnhrNXRyelZuU3F5NTZxajNB?=
 =?utf-8?B?bUQrVUVmdnVGdlpwUjJhajNvei9sV0MwTnVPS1hjaTRpeTlnWm5BYTRsUkQx?=
 =?utf-8?B?R3pWOXdJVG9EblpjUHQwbC94QWVuQlJSdE80MjhEdVlTTm94bTZDMk1KRUVi?=
 =?utf-8?B?Y0NYTHFrVUo5RzBIZTlhZVREWlNGVHhpbmh3T2l0c3luK2l4SzJ1dDRDNGxM?=
 =?utf-8?B?Y1kwYzFQSks4ekRySGo3R0Q4YzA1OFNaLzVOenNJNjFKaW5hTDBtODQ4QzdG?=
 =?utf-8?B?T0NLSzdYOU8zM214ajlLWkUwUVR6MXAra0hhenJRQUtwYzlFWUxpa21zMkdj?=
 =?utf-8?B?NlFBanY2bFFuWDFNODhlTlpHUDJocmJ4VWh3WkRHOTF4R0pMUVkwc3hTV0Vm?=
 =?utf-8?B?SE9JZkVwTVZEdTY0UURlL1BSTHRhNWRaVXErZXJXOGY1VVNFaFJienpGTUZq?=
 =?utf-8?B?Yk5ZYnUxQlJzVjNjNGZqNFZwMGpIcDA1R1l1NG15VFJOWXQ5dXJuM3M3Q29a?=
 =?utf-8?B?dW9WbFY3bWgweWEwMGFScVo3MnR4YjJvdEgwWnJyNTFXWTNZWFo4TUlsQ0lB?=
 =?utf-8?B?cm5NVzZoQjV5Zlo2ZXE4QkFJN0dlbDRoRVRMT1ozN081Sll4d0lIOW5GejZO?=
 =?utf-8?B?Ri9oZmV5ZkpSRktDSVI5aktYbGVubk1PYkxMU0hJNXhJcjl2ZGdkVmgvUUJz?=
 =?utf-8?B?WnVycmtLcGxOVUozQnZPQ0lGV09CZHoxQ3haekdHTmJyN0VLODY4dmNGWDA1?=
 =?utf-8?B?Wks0M0xmTUIrWkRISHJwYlVwWHFObkhTYzVQUDdtNXpPNEJXdnlqL3E1T1po?=
 =?utf-8?B?K0lNRGlMQ0tyUXBSbzV0cGEwMm5SczZjUGcyK0lXVmdXOGw4bHNWa2ZnSUVy?=
 =?utf-8?B?U1ZBWGVnNzRxblRVTm1qY0xCbGhkNGJDM3dSLzdOWlNlMWVkTkRCekRBa0xX?=
 =?utf-8?B?NmhGWjZVVEVOVmxITWRvRWltVm9wZHR5YkluSlQzalpQdjBFZ2FnYXdDNEVD?=
 =?utf-8?B?ZmsyNGdDdGpXV0psSE5kV3k3clErbjFGa0dDeFdyYXRUdHJwQmUrM25kTHVN?=
 =?utf-8?B?WU9XelBQVElKMlVyY3NZbTVNZFA5V00vV2VrU0hzeWt5SlZuaksreVNzTFgx?=
 =?utf-8?B?Z3QwYjJQb2IzcHlQcEdMNTRFeEl6TXVDSFBoM2RrbDlKT2JOVlZucy90L1Jm?=
 =?utf-8?B?WDBoTjdQc2tzVm91THhLNGw5c05jMlhzWTdseS9mcTFCVjFTUGdqRUJ6cm1k?=
 =?utf-8?B?c3Yvc290M1JmUnhKb2txVmZzQVVidEVnYWY4cXhuNFhkZHdmZURUZG1ycjZG?=
 =?utf-8?B?NXIwZmZzNzlVMmVGVFhMVzBUNk5aMzg4ZFVvWEFSZDk2QnN1eHA2Sng4dnV6?=
 =?utf-8?B?NDhCZmxJUW5nOTlyK2czTGxFaHlNaGJyYlYyRm9GM2RhZ1BPZGtLVVZBNDJz?=
 =?utf-8?B?TnRqaXp6TldUbXplOU43UlZ2SmxNWGJlK0F5M3NrUE9qMk80TzZ2ckloczI2?=
 =?utf-8?B?MHF5NVY1MXdTQkM1T3o1RjdieTU1QUM2dUlJSk9RNldjbmFFK0tJb3YxYlNv?=
 =?utf-8?B?cEE1UWppMDMvbGJGYnU1bGJMSGhOTDlvUGZkejUzZmlqdnU5RWlLcU13Sk5Y?=
 =?utf-8?B?T21QdVhRTkYycjk1ZElVL2FFbEtJa1VWYXQyeXJUUm9QT3VsTFIvR2txajFR?=
 =?utf-8?B?bjU2Um81OVZTQko0c0VFNkk0TG4vTDNMWS9OTmRMMzRwbnRQU3JyUEZWYnpX?=
 =?utf-8?B?WmtPVmlHMDNzVkVZM011REFMWFFpTkFTWGYyQm93RVVGSHFQM2ErcURKUjFJ?=
 =?utf-8?B?UDYwSWYzV1V1Y3FFeDZJLytQZE5TRWlPZkpWSzN4NVBOSDNvRU5NaWRpcnR3?=
 =?utf-8?B?Mll6cWl0NG1ydHpXVkg4ODFDeE0ydjMzZjRtTGpFelpmTE9sbVhqQXdlTzVh?=
 =?utf-8?Q?YCvLeSbuVM+G+9O+XCwIdXoe7qjybWLvYRC/9?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB7251E97A7AC8E670837F704CD5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43368efb-af34-4f31-841e-08deb0b88a06
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 06:26:16.8765
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2RY1miARubsCesX7Or5jGPno7sn719iY+HkYwa9PsCccghkA3G7hFfNzPLfU4SSBtZ/BtVUzwPauYPX5yFGKqOW/QcxQlymXkWTRMkaAcs0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBPR08MB11939
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 06:26:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66546

--_000_AS8PR08MB7251E97A7AC8E670837F704CD5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

44CLV2hpY2ggY29uZGl0aW9ucz8NCg0KVGhlIHRhZyBpcyBkZXJpdmVkIGZyb20gUFYgYW5kIGlm
IHRoZXJlIGFyZSBtdWx0aXBsZSByZXBvc2l0b3JpZXMgaW4gU1JDX1VSSSwgb25seSBvbmUgaXMg
YXBwZW5kZWQgd2l0aCBhIHRhZy4NCg0KDQpCUiwNCkFudHRpIEfDpHJkaW5nDQoNCg==

--_000_AS8PR08MB7251E97A7AC8E670837F704CD5062AS8PR08MB7251eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBkaXI9ImF1
dG8iIHN0eWxlPSJmb250LWZhbWlseTogQXB0b3MsIEFwdG9zX01TRm9udFNlcnZpY2UsIC1hcHBs
ZS1zeXN0ZW0sIFJvYm90bywgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXpl
OiAxMXB0OyBjb2xvcjogcmdiKDMzLCAzMywgMzMpOyI+DQrjgItXaGljaCBjb25kaXRpb25zPzxi
cj4NCjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iIHN0eWxlPSJmb250LWZhbWlseTogQXB0
b3MsIEFwdG9zX01TRm9udFNlcnZpY2UsIC1hcHBsZS1zeXN0ZW0sIFJvYm90bywgQXJpYWwsIEhl
bHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMXB0OyBjb2xvcjogcmdiKDMzLCAzMywg
MzMpOyI+DQpUaGUgdGFnIGlzIGRlcml2ZWQgZnJvbSBQViBhbmQgaWYgdGhlcmUgYXJlIG11bHRp
cGxlIHJlcG9zaXRvcmllcyBpbiBTUkNfVVJJLCBvbmx5IG9uZSBpcyBhcHBlbmRlZCB3aXRoIGEg
dGFnLjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iIHN0eWxlPSJmb250LWZhbWlseTogQXB0b3MsIEFw
dG9zX01TRm9udFNlcnZpY2UsIC1hcHBsZS1zeXN0ZW0sIFJvYm90bywgQXJpYWwsIEhlbHZldGlj
YSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMXB0OyBjb2xvcjogcmdiKDMzLCAzMywgMzMpOyI+
DQo8YnI+DQo8L2Rpdj4NCjxkaXYgZGlyPSJhdXRvIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9z
LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCAtYXBwbGUtc3lzdGVtLCBSb2JvdG8sIEFyaWFsLCBIZWx2
ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTFwdDsgY29sb3I6IHJnYigzMywgMzMsIDMz
KTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGRpcj0iYXV0byIgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfTVNGb250U2VydmljZSwgLWFwcGxlLXN5c3RlbSwgUm9ib3RvLCBBcmlhbCwg
SGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDExcHQ7IGNvbG9yOiByZ2IoMzMsIDMz
LCAzMyk7Ij4NCkJSLDwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iIHN0eWxlPSJmb250LWZhbWlseTog
QXB0b3MsIEFwdG9zX01TRm9udFNlcnZpY2UsIC1hcHBsZS1zeXN0ZW0sIFJvYm90bywgQXJpYWws
IEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMXB0OyBjb2xvcjogcmdiKDMzLCAz
MywgMzMpOyI+DQpBbnR0aSBHw6RyZGluZzwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iIGlkPSJtYWls
LWVkaXRvci1yZWZlcmVuY2UtbWVzc2FnZS1jb250YWluZXIiPjxicj4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_AS8PR08MB7251E97A7AC8E670837F704CD5062AS8PR08MB7251eurp_--

