Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BAAC433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 08:04:51 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.45])
 by mx.groups.io with SMTP id smtpd.web12.19728.1644221088945051148
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 00:04:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=QDrGZYIq;
 spf=pass (domain: optimeas.de, ip: 40.107.2.45,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FzWD+jGK+aeADB4j3mv3dNFMRJ4Vd3GbWkU0HebIqPXZYCwM8iiHQf/lvM4H0IJK6bRHpsa2iGGMzX8X1km45B36CjLzJouTuDt8zKKEUFi4iz10XY0y+x4EB4WROrbN7oI1SrOV+5cqDHeHGMgZlHy+au3wtne/3ZssJOa6vfPinF67TND7UTwkBTrNXqmGdlqdWxmfx6JWgYEJZ46TUEGbyW0MdJdHpCjQrqcdJceqgXLE1qNVf/NmxPvYCbAwfXNmghB5P7tGncrA6R9kMAYVl4JblTH8fWCwUxCBP1o14S2f2QZYwLCLa+9VaFbJLz0zAfI0Wzj/teSdavDAOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7SMZFPlXyquSxKfsBO9iz4RAGS7Q7ASOSdbXqPioQtk=;
 b=FuduTFXAA9GgqGeNj2NhAdZZDVAH1aLE9iyQxS4TLppybTWQ0EIJ8pRv6poIRZeRJzPxJxzz/fVeXsy3OJbMtMo7BwAauDRoxaTeXe6ROzBGl5MF4/Oj/KqKn84+DiwPU0KKdjUlUQ8BlfHHq/mO53MZKniaW4EFqntCq59CWKxo76dK+mov37sySTFjmpLjklMVclP08vuV0ixK1a7UrHiDn8xD4qdSokBAU3NuG/BqTXoO5nTI2d1pFHxP0iVNdXrtEbb9cL0naKd4IdiZrlFmg7mF6zhFhXWondhohmu1j0/i4Yipvqh7IbBszOc9va9AcunCq/XotX2e1K5uKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7SMZFPlXyquSxKfsBO9iz4RAGS7Q7ASOSdbXqPioQtk=;
 b=QDrGZYIqHEuBNNwSG87S/Va5IKiRjKY268aLc/hcdqzZ4H+chg24oLxMue+5awRkPdpb0NcFKXZKKL4J+uiKR8Bq7D0lEsIX9viPpP5XoUx8Tw4u4OwzrwwLKKE+rv7HDzd95M7CivB8zx3NQAO498fAG80/inzdTSpbsvlEfos=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AS8PR10MB5042.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:341::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Mon, 7 Feb
 2022 08:04:45 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.018; Mon, 7 Feb 2022
 08:04:45 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "howard.egan@avid.com" <howard.egan@avid.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] readonly-rootfs-overlay
Thread-Topic: [yocto] readonly-rootfs-overlay
Thread-Index: AQHYG55w+YQD6dyl1k2184ZGh/K9s6yHunhg
Date: Mon, 7 Feb 2022 08:04:45 +0000
Message-ID: 
 <AM0PR10MB31075F0E52D48AD55BEE0389992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CAAfyv34_7wQf4qCvB3ShdTB5R-v3QWYQXa-7AbZyQz-mU59V-Q@mail.gmail.com>
 <11035.1644182023457962947@lists.yoctoproject.org>
In-Reply-To: <11035.1644182023457962947@lists.yoctoproject.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1899e56-e1d9-4a91-9b2f-08d9ea10810f
x-ms-traffictypediagnostic: AS8PR10MB5042:EE_
x-microsoft-antispam-prvs: 
 <AS8PR10MB504254E76715533008DBDC38992C9@AS8PR10MB5042.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kKInaZvI11w3NkhFXz+B+elSnzqZ+Zrq+H8xJpC6RD5Tvvjr+pcxOXrSLwLYszW1BDL68zbKGSQn9i9tgwgd9Rzxl5C+pngL65QD/eWMLEqnqLux8krpF0c/YQxzptr4+8eS5rJAXuysPkf2N+IcQHSB7TG7yvVdcA0stn10Vj9e2aEcFSzVvlenG3DABCxm1ghgwGdp5Z6Hkw9p6S7Rh+q/+1i2Oywh5yhqXiOruZQoTXM8/Bulp8jhoeaR/lrDi7dCX3LLmj181F8frxGdoyUtHWAvw0/jXz6Hlw8S46HbLQRb84Kfk0x+lM/z5G7hNSWwJUo89g+M8jTQfPhXMyrlRjmAgPVqFHsdraxG+tkFqm6uWNoOnJyMHT03/j0BR8eaDOmw2N0f5YTsPjRfJAu4VCAldq8pCJzBWHD0Y47tWl15E/lBm2ZulgAWSUj77sEW6WA/2O75UensyO97jQXRMA8h4SQfn4w0kIIVqHoJikP1qVZ+Dr3Kqq+SowYMBvQFWf/NN3DzlUQ7jZyiBP3iDOXa8q3qfJX7TKEkqUArLarmBmq2ZfgqU9PZCK+24PtUKyOm7xKvnLllaAH9GcQQ893KsyJEN+BcyHUJ7kfBS8qveSkx9lkF3Al8piTo9hLrLWitWNeBcpSto/5WlJ0WUQ7OQk7i50/42N/opF6S9MwkjpxaBBaQ2Fm1L5OgEvKLDVGFkq96XAqYTi7aQxcODeAgY9/fhpLADxreieICEVqrgb8rhfLlzMT3+zKTMHZH7W7wwzd+Mefk7WgWIudnxHUIjV/HyYmuIOTHqIk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(396003)(366004)(39830400003)(346002)(136003)(376002)(508600001)(316002)(38070700005)(6506007)(7696005)(9686003)(71200400001)(86362001)(110136005)(19627235002)(83380400001)(166002)(186003)(66476007)(66556008)(38100700002)(55016003)(4744005)(8676002)(66946007)(64756008)(76116006)(8936002)(66446008)(44832011)(122000001)(52536014)(966005)(5660300002)(33656002)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SUxqbHRTTHRhNGNPamx2VDA2MktUdXNtamxkSWhZajdHRHg4M2UrdDQxSWpy?=
 =?utf-8?B?MFVpRFk5b1BXMTkyU1ZHL2RLUXdqZnlEN3QzT1pMRnNEajlXYks3L0g1eWtt?=
 =?utf-8?B?L2kvQllvRWRWb0xhRzV3MGhNNDlYSEg2Y3BaUnNVMjNpSGxzM3ljaTFWUTlT?=
 =?utf-8?B?MmhRamFQa2hNaEdXZlVXMDE1cTI5bTQycElGdGhNeDZNMnJySDBJY1FRbFZv?=
 =?utf-8?B?Rmt0eWxPS2xnSTFPNjRsM0RmR0pWTGFmVy9qRmZFNnNKV1BCK0lWSWhkYkk2?=
 =?utf-8?B?Q0FpSlVRQTczNEVWUUxhRWhlTHlTd2pUa2VpMXJpYlZRMm5MYXRvMDVNckQ2?=
 =?utf-8?B?RnZKaEk5SjRDbGUwcDhaOXRQK2xYZ05RdVhIMk9EcU8xWWdqMHduaUFVYVph?=
 =?utf-8?B?dVRpTG9EVFI0WlVEVldpeU9qQXJISS9MVnR1RStqSWpsSkJPSGV0S1IySk16?=
 =?utf-8?B?cE0yUHB1RzVNNjVmVkcwUnMxR2NoNjRsd2JVN3djcnVEdVFLRk1rQlUyWDBN?=
 =?utf-8?B?YWF0WVJrK0lDYzVseTRCbkcvRmVGc2pJY0kyYlcvSzVNN3lGSXE3NlIyazRN?=
 =?utf-8?B?aU1mZ2kxZmdTV2M0NkRXdVlhT2paRExCL3pNd2xGRWMvbnpBWjZ6NHZNL1Zv?=
 =?utf-8?B?Y3MrWGQ0TG96SmNOQVEzUk9QaWxLc1VkQUFvN0ttMW1zTEdaUVRrcC9DQk5r?=
 =?utf-8?B?QzE5aDdqc1pDOXdJczFzRjFTbGhWU3dUSzRhTWpkb1dicGtoV0N0cFJvN05j?=
 =?utf-8?B?aFVWTDAyOFBzU002dmZSMXlSbWRscDJiMmx1YkQ1cm41REl6SmdrRUZPSGwv?=
 =?utf-8?B?KzBBSkdnNUdvUFhGN1E1TjIySGg0Wmtna2hXWndpbnZOeWd6THFLL3poSlpK?=
 =?utf-8?B?b0NyWEpER1VpMnVxV1kwemJFczcxcTB3cWN4QzVPZlpqMjkzeVVud2YzM3BG?=
 =?utf-8?B?TkpOUEZUaEluZnFGMUE1bGRqQ0V6aU94KzBBdzBienBIU0dzZG90b2pOYjgz?=
 =?utf-8?B?M2RhSWpUMlBtQ1JlUExqTEgzZHp3Rk9laUxIN0kzaUhBRFNraXNRRlhTVXBm?=
 =?utf-8?B?ZDlFUjZkemJaUkFEMEFnQ1hiVXFsWnRZVmJBL0J5aTBDYzBUZSs3dUhJUFY2?=
 =?utf-8?B?S1h2YWZ1dTVhVGMzYWk3STdwcTh3L3BYbTY1ajRxWDFhb2N6b0V6RzRpdVVI?=
 =?utf-8?B?L1IzZGZwYUNLN0hjRVR5VCt3Q09DSjZnRS8xME9KTE5sbmt3WStwckpPLzZy?=
 =?utf-8?B?T0ZIbThQVFNHakdqVjA2UFFFVWJTdkc1SXlnY002ZnZhRFlDL1RzWGFFaW5m?=
 =?utf-8?B?dW5kYnNBeEIyVnRzZFp6M3VYdzY4eGJsYjBzN0JKL3B5aEJ1QmxrSVU3ckFp?=
 =?utf-8?B?VzM1V1lUK1VvRmRkcmxwd0hFRXlkcTFZbjFDZGd6REwxOVZ3MFdPa3hDTlha?=
 =?utf-8?B?dnZhZUlDcDR3ZVY1ZW11UHRHN1V3WmIyb2xNUGg0b2NXbCtmR3hlYU91SkdQ?=
 =?utf-8?B?dDVIMkd1bkx1amlheW5zK1lpS0V0R25RVHRZWlhxWjRhb2ZGb0Uyc0MrWEFy?=
 =?utf-8?B?aktKU1ZoQmdIRVh0UE9yWEZ5aWxWOHdrSVhKN0Q0L2twSGxETmppWCtqLzJ1?=
 =?utf-8?B?dVR3c0U2VnNtbFpJZkpwU3pISVNmYTMvNjF2SlNxa2dYTFczdmlrbDg0NEJq?=
 =?utf-8?B?ckUvakZPYktvbGZibFZIb0hRckd2Rmk2eEJsT1N6ZEhtMjROK0twRW9OT29G?=
 =?utf-8?B?ZGFEY0dJenFvc3hBc2N3TXBKbHFZekJxcld2aW9wd0hETEt4d0NiS01IQzJO?=
 =?utf-8?B?TFBlSU1kM0VjdW5GY2VZL1R4NGkwZTNKenMxMkJFZzROUEVrSG9UdUt1SFh2?=
 =?utf-8?B?YnZjZzhtSHE2UC9xN3R6V2VlUUhVOU9iL0FUVHNHYU0yZ0ttUE9mK0pDNmJl?=
 =?utf-8?B?QklHRWtydWRYV0xGOWQ5a2tmNUc4S0t1ZTNCbTJISnkzRmtSVldBUW5DZHZh?=
 =?utf-8?B?Y2xTUFlxaW9EVU1hbVJNNG8yUk5pSnZOY1Ywc3BGRVFxdC9KdTVHSWxjblRG?=
 =?utf-8?B?UERTQ2ZkTytQTWJXdGh5QnhyZGw3dXE1UnMwYjNTNUs4T3l3QjNYb0o1Zzl5?=
 =?utf-8?B?a01tYStCSUErYkVVOEU1L01RalF1dnhrRmUzYnJXTjlSOGI4TXNmcWZVY0F2?=
 =?utf-8?B?NHZ2M0Z5a0ZOUEI3OVBQM1Y5bm04bWFpWTE1WlRUcFlxUDlCZ3d6ZGNiL1dZ?=
 =?utf-8?B?RElnbVp0RDdJaHN2ZVNpQUVhZldNZmJQVTh1TzRrZnN2aTU2bkNwdU0zWHk4?=
 =?utf-8?B?WEhvOExKYkc2MC9sQ0I4R2FScWlURGtiUTNNbDJ2aGpQRTdETjdEdz09?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB31075F0E52D48AD55BEE0389992C9AM0PR10MB3107EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a1899e56-e1d9-4a91-9b2f-08d9ea10810f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 08:04:45.4045
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 najlnfOc9cEbFhb9XswdwTS8samnaLNJcjtyj+Q7ds2wpX7GqrOfqoxW7blEiBLLaBYUS7QuBbhaMMAOkx4k+qNqw0BCIRqRQ6Agl76L6ZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB5042
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 08:04:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56089

--_000_AM0PR10MB31075F0E52D48AD55BEE0389992C9AM0PR10MB3107EURP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSG93YXJkLA0KDQppIHVzZSBwYXJ0cyBvZiBpdCAod2l0aG91dCBhIHdyaXRlYWJsZSBw
YXJ0aXRpb24sIGp1c3QgYSB0bXBmcykgaW4gYSBzZXBhcmF0ZSBsYXllcjogaHR0cHM6Ly9naXRo
dWIuY29tL21hdHRoaWFza2xlaW4vbWV0YS1kaXN0cm8tY29mZmVlL2Jsb2IvbWFzdGVyL3JlY2lw
ZXMtY29yZS9yZWFkb25seS1yb290ZnMtb3ZlcmxheS9yZWFkb25seS1yb290ZnMtb3ZlcmxheV8x
LjAuYmINCkJlc3QgcmVnYXJkcywNCk1hdHRoaWFzDQpWb246IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IEltIEF1ZnRyYWcgdm9uIEhv
d2FyZCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KR2VzZW5kZXQ6IFNvbm50YWcsIDYuIEZl
YnJ1YXIgMjAyMiAyMjoxNA0KQW46IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCkJldHJl
ZmY6IFt5b2N0b10gcmVhZG9ubHktcm9vdGZzLW92ZXJsYXkNCg0KSGk6DQoNCkkgd2FzIHdvbmRl
cmluZyBpZiBhbnlib2R5IGlzIHVzaW5nIG1ldGEtcmVhZG9ubHktcm9vdGZzLW92ZXJsYXk/DQoN
ClRoYW5rcw0KSG93YXJkDQo=

--_000_AM0PR10MB31075F0E52D48AD55BEE0389992C9AM0PR10MB3107EURP_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpzcGFuLkUtTWFpbEZvcm1hdHZvcmxhZ2UxOA0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsN
Cgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCW1zby1mYXJl
YXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQg
NzkyLjBwdDsNCgltYXJnaW46NzAuODVwdCA3MC44NXB0IDIuMGNtIDcwLjg1cHQ7fQ0KZGl2Lldv
cmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAy
NiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+
DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5n
PSJERSIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJl
YWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5IZWxsbyBIb3dhcmQs
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6
RU4tVVMiPmkgdXNlIHBhcnRzIG9mIGl0ICh3aXRob3V0IGEgd3JpdGVhYmxlIHBhcnRpdGlvbiwg
anVzdCBhIHRtcGZzKSBpbiBhIHNlcGFyYXRlIGxheWVyOg0KPGEgaHJlZj0iaHR0cHM6Ly9naXRo
dWIuY29tL21hdHRoaWFza2xlaW4vbWV0YS1kaXN0cm8tY29mZmVlL2Jsb2IvbWFzdGVyL3JlY2lw
ZXMtY29yZS9yZWFkb25seS1yb290ZnMtb3ZlcmxheS9yZWFkb25seS1yb290ZnMtb3ZlcmxheV8x
LjAuYmIiPg0KaHR0cHM6Ly9naXRodWIuY29tL21hdHRoaWFza2xlaW4vbWV0YS1kaXN0cm8tY29m
ZmVlL2Jsb2IvbWFzdGVyL3JlY2lwZXMtY29yZS9yZWFkb25seS1yb290ZnMtb3ZlcmxheS9yZWFk
b25seS1yb290ZnMtb3ZlcmxheV8xLjAuYmI8L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJn
aW4tYm90dG9tLWFsdDphdXRvIj48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2s7YmFja2dyb3VuZDp3
aGl0ZSI+QmVzdCByZWdhcmRzLDxicj4NCk1hdHRoaWFzPC9zcGFuPjxzcGFuIHN0eWxlPSJtc28t
ZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPGRpdiBzdHls
ZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4w
cHQgMGNtIDBjbSAwY20iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+Vm9uOjwvYj4geW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAmbHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZn
dDsNCjxiPkltIEF1ZnRyYWcgdm9uIDwvYj5Ib3dhcmQgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc8YnI+DQo8Yj5HZXNlbmRldDo8L2I+IFNvbm50YWcsIDYuIEZlYnJ1YXIgMjAyMiAyMjoxNDxi
cj4NCjxiPkFuOjwvYj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxicj4NCjxiPkJldHJl
ZmY6PC9iPiBbeW9jdG9dIHJlYWRvbmx5LXJvb3Rmcy1vdmVybGF5PG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+SGk6PGJyPg0KPGJyPg0KSSB3YXMgd29uZGVyaW5nIGlmIGFueWJvZHkg
aXMgdXNpbmcgbWV0YS1yZWFkb25seS1yb290ZnMtb3ZlcmxheT88YnI+DQo8YnI+DQpUaGFua3M8
YnI+DQpIb3dhcmQgPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_AM0PR10MB31075F0E52D48AD55BEE0389992C9AM0PR10MB3107EURP_--

