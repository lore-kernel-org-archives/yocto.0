Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43122C433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 07:14:59 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.73])
 by mx.groups.io with SMTP id smtpd.web08.4358.1642144496891012585
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 23:14:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=HJ8T7Sy4;
 spf=pass (domain: optimeas.de, ip: 40.107.3.73,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilYbP3siV2xP/d8l2iRzrfGpIwmwTmqqNMpFqOXbHUa/M9eYRzTl0l1DlShgSHSISuFm05agyCaftfzZwdVbmeN3ndOlYsnYBUGBRPfyDCkBd8BeOvYebIiv+dPW8fsFW866PbL05qWCzPlWDjLGeCMNZtVqwxOr6sP4Yw/HAPaZjwm+69XYrLclQn3fbUF33ynWR23SFekrGNGWALxQEJUjexF7jR4kr672SppCjgvLIDxkXO3AtN4jvuxKQFYByGXUZBtIIrymzgUj0PaB9O0OK0RfsNMdhQoA2rk5X/GJxwC6UTPoVL8DocB9SyURnVTYP3Vc0NoWipyNUIVUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJG9FhGetPB+17uIxJl7ZNAgeWgrW+p6dJ0gTyYAMNw=;
 b=cjAFLyOUS5xPc781DE5h+07LCLBsXqbm8XkMM+s9cg6ZiUv+tZhRdcgqt5T1wDfDBciU8ZiY8CwklQrAQvYjAIAq2zbjPiZgUGCSCd3x4ft8JeEBN5/LLwmIYA5ohVpMGdWXi9JlFDSFJ87GLpFJ/rbEr+Shgq6fRrffHl2TBq3lm9CxvV9KYgoOzCbAd23okF0emwLEJYWRQv7PQEeENPXWm1mGVSi+ZqK2eFKWmLn1jblm8C40I2Zb7KmmJ2GFWYBzU4aGWHj2uUPR6B4xl1KHfA78yIzMo8nAg7cs1D1DMBHFLhGMj+WzBnoRvc71fwhR2D4bSWKyfRBVrv2kTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJG9FhGetPB+17uIxJl7ZNAgeWgrW+p6dJ0gTyYAMNw=;
 b=HJ8T7Sy42dQZkeSXljhSym7k4fkHU2hC5yEP/Fu2xrhSkReJr4NLg4uI63/MwmvYbCtSTSCRRIvutNnkWbVriLwjrn4/6IrCz9Jlxvh+oL82fDxVlcBQvdeTRe66s8YybPQJ53IqFApcoR18aVeBzt5lv+mlvfZXNy6btkW/1nw=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM6PR10MB2134.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:50::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Fri, 14 Jan
 2022 07:14:53 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f1e6:715e:a4e3:d01b%2]) with mapi id 15.20.4888.011; Fri, 14 Jan 2022
 07:14:53 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "chanho61.park@samsung.com" <chanho61.park@samsung.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
CC: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"steve@sakoman.com" <steve@sakoman.com>
Subject: AW: [yocto] Question of Yocto dunfell LTS period
Thread-Topic: [yocto] Question of Yocto dunfell LTS period
Thread-Index: AdgI4yUt5Jh1eqcPSly31MHmvpdyrQAMuf4w
Date: Fri, 14 Jan 2022 07:14:53 +0000
Message-ID: 
 <AM0PR10MB3107F4F770A4DDDDAAD009A099549@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CGME20220114011350epcas2p16efb8acbdc4d9edceee83569e10cc359@epcas2p1.samsung.com>
 <000801d808e3$fcea94e0$f6bfbea0$@samsung.com>
In-Reply-To: <000801d808e3$fcea94e0$f6bfbea0$@samsung.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70d90729-d0e3-47f1-a04f-08d9d72d8fd4
x-ms-traffictypediagnostic: AM6PR10MB2134:EE_
x-microsoft-antispam-prvs: 
 <AM6PR10MB2134407D1220BAE775103D1C99549@AM6PR10MB2134.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Tl4cB4kbU/OoTudfq7ZwVWhDsWktVyf17EgorvCKh0A+ygIBHqzdv4aHpUOYnMy5HgayHEgpew2svn8IUV1a3HPo2abY63tIwBH40b9CNUN4X9n8+KZHMl2pxT714UMIzw+zJWJoVLqGb9YeIjnDD9LF6Q7ak9hybKPeAo3rzbheoYTBeFG5JvUG4JxFd5bNC140fsZNT11ZDD2kG6vonQGN27+CrOhYZcYuib0+wphkfiCXK6RSJJ6Mf9FI9nd9RSc0wHQYBlk9u6GI3pScMCnThtlEpKXCEinV0SxrQvqPXylSL3p1Hbu+SmTe6pelAQuG1widWqAwAKdr/iu74J632ZiDLnXIfY1E/Uracmxs5+0IsUWr7K21GM6Jq5rp5oSt32yp8MVDdhD+ESsEI6Hpu8/9IlCKpMcfdmtBJbtqUL8a7czw7nbuR1nis0SRqQo7xl6vjQR7e36ZqSbLOhII9HlF8jtxWrPYnt825aWPQOfVLttp9LsdZoDLJDJhsISI1HlM8XPSKmwqkdIJUtAyJ2Oafaxb+T57rXUWZyrDKOU5XdM+IboXSKQxQWGIXdQ7oLF++2/O1XONwymQpv0UkO3j48//47EAMLrgNbSFPSZf3cXvATU5yR1WJzBZLYMM41rpWpH9zUrgWQdN2I3oHsDj740KLfMCGxvVl6kPOwoMEmA4i77cRz1zqasJ5ZtZx/41Z1d1t3I0bcrDlgVD7NJW096nneHxfhw6Htw2zWj7rCQRyTQggjRJsIBnL7CLBBKainVMYRNPbQ+458ycOHvivyhRd9nHhIf4k14=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(346002)(376002)(39830400003)(366004)(396003)(136003)(66476007)(66446008)(110136005)(76116006)(44832011)(66574015)(4744005)(7696005)(64756008)(316002)(66556008)(38100700002)(8936002)(38070700005)(5660300002)(122000001)(54906003)(8676002)(186003)(2906002)(86362001)(83380400001)(508600001)(52536014)(66946007)(33656002)(9686003)(4326008)(966005)(71200400001)(6506007)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MDVpd2duOEFnS1ZkemtiZGxrcFZ5SnVROXgwQWxSZHZpbWx6Q3NIaWhnbG5M?=
 =?utf-8?B?QXc5dWV2QjVTQ3doMlA3M1pIcW9qVThabzJ4VWJvMkFvRjg0aE5kV0dDdWdQ?=
 =?utf-8?B?NlBwWnZmMUsrbjBTdTJoeUUvVno5SXN5UXpSUklHM2h3ZVB6TUtnWGRTVkxp?=
 =?utf-8?B?OEZSU3o2WTVSa01XRHhrV1A1ZTAxT3dLS0F3Nm53OC9MQkIrM1hIYm14cHFm?=
 =?utf-8?B?MWZwOUR2UDZITGxocW9QRXJFOWZtZC9LV3ZrSUdJRFBqcmNMaFZuZ2tRbnRU?=
 =?utf-8?B?VndDUGRMWmp5ZUFNQ2dvejVtanJBaWVhR3A1ZEFVRlZINmJiQ2tTYng1NEVT?=
 =?utf-8?B?aU1pYm50RzFoQ0dWQXUvL05HdEd2RHVoL0IxelFFRlNsa1hGZWI4Wnpoa1NP?=
 =?utf-8?B?OGlHVEoxNCtOM3dNNjVaL3VYYkUrMzhhZG1xM1pMQkQrL0FUTldzUFpQYVp6?=
 =?utf-8?B?Mk9OQTNsclR0VUlqNDlFTkJ1WmJTb25jbWo5Ulg0ME0rQmNDcDdCOFVCeHd3?=
 =?utf-8?B?S2E2Q0Y4L3kyR1NFUThNcG9LNkpvaHlQdStjQU1yOGIyMlZFb3JvYUo4K2xB?=
 =?utf-8?B?d1E3WGF6S0xFVVJqa3lNVk1KQjM2bGRZKzU1RFZybjdYWWJFZTFtSE9pQWJ3?=
 =?utf-8?B?bFQ5Y1JSL3BnMDBhNGJxV25pQlBqbjFYTDZ4aTgyNGJiWCtqY0hJa2JBOHJC?=
 =?utf-8?B?ZGNTbVJyQW5lSzd2Umc0dnUzK1VicjJQcDBOQ0U4eVhqeUFNMURrL2IzeHFO?=
 =?utf-8?B?RVdjTUJUN2pKZGxnNXlIaUR0aUNKQmJkNmpTYUx2NWoxTzNGWHB2anJ2MkJh?=
 =?utf-8?B?cFd3UXNLajhvVDg5cGNWZ1VxSnZMN2tOOU5zS3FMWkw3M0ZhY3pHMzlzWFk1?=
 =?utf-8?B?eU42c0J6N083SlFPUUJMN3FaNmtyNkhxWnh0UDhQVGFzTUNDbHkwallONWNI?=
 =?utf-8?B?blJVbFliME9MU3MzY3Fua01CUUw4RSt0QWxudm5ReG1KSzlsR1kycHQyVmsr?=
 =?utf-8?B?Z1U2Sk83VHg0cjR4bVRzWGxlVHA2YVRndStOOUtTSVlZVndKb2pGSE8xWkM2?=
 =?utf-8?B?cFpqMXphZS9IYjJsRm5DV3ZaUkVNMExsYkdSUlhMcTl1Tm9QTlRsV3RqTURH?=
 =?utf-8?B?d3lGVkJNMnZoWlVFNTVCV1UyZGhCZTBHZFlSMjJRbkdaaytIQ0pBd2ViRVlj?=
 =?utf-8?B?N1o2NEo1K0lYQzJjcE0wVGdLRmJBQzNNZXV1cVNnQ0JZWExLQnFJbGJqRmgv?=
 =?utf-8?B?RDdVekc1dTNuVy9DODY1QSt2ZGZ1YXZZOUNGelh6NWVDQVZQWjN3ZVRVeGVQ?=
 =?utf-8?B?NlVpYitMbXJVanA1T3IxL29GVE1NbG1nYVNQOGdmZ3dwUUZpMEc0YWxQaDM1?=
 =?utf-8?B?cFNxUklDQnFNdVI5V2VHY3ZKcVZoRHpmZ2pybmpBdUNBeG4rSlN0Wjg0ZmNI?=
 =?utf-8?B?NDk4Q3BUOE9yVGZWTi94SXU1NGpQTnJHMm5Gb1NLNUNueGlkS0dHRm5UTm9m?=
 =?utf-8?B?cXc5L1R2VlM1ODdPSnlpeDNJVTNOU1BmbENQS1kwSTlPaXNiRUd5UUtKRll3?=
 =?utf-8?B?cDJxSVgzVGtndGVhSHF6dkUxYnB2WUoxL1h0Y2NyZnpuTXRXaWJ2Q2lIMFJx?=
 =?utf-8?B?RTl6R1IySHZxcTBiMjVtcnNDeGtkcFl0ak9TNlVNaFFZYXNNNkQ2MmxRN1Zt?=
 =?utf-8?B?UDdXQjZHZnBZTkEzVlBVbUlWVEthR25NaGhCQTRIdDFEaHdTZDJmakhmYUVv?=
 =?utf-8?B?NWJGY3lSVnVBU21DU21DQzJuMVVBU1hHeUlMVExMMERBSXp6eVRlUFlWdDFj?=
 =?utf-8?B?eWh4bXJXdmh2eFdVdlhEOFU0NkMwV3NiK00zYnJKaUxBVGhYVm4wQmNaQ1Bn?=
 =?utf-8?B?ZGZrT1lrY0dNZGJUaU9VVk9SRkxiZDB0QTdYR2g4aUpLYzUwMWh4TXdMMFl0?=
 =?utf-8?B?Y2xpU0hSaE14TVpWRUMxTmxhdU1HY2NlbXdsaDBydHUxbEIxNmFOVmo5SnBw?=
 =?utf-8?B?ZDRoTnVMMWU3am1MeThOWkNlbjRTaFR5QW1VMmVIYm9yY0pSWUkwQytoK1BC?=
 =?utf-8?B?ZWV3bjUzZkpXbkdyZCs0NTNzejgraURIc3YyUTlMZ1M4cUwvSko3dzR1d0lH?=
 =?utf-8?B?YjUxMnZMNFp0Rk5obW9vZGRsUXRQUkMydXhpdEYwbjZ2U1VIdUZxZ3JKazRH?=
 =?utf-8?B?aHhFVVdrS3duelpuTkpEaG9xRFR2YnUrODdKZHVWVk5pbC9ieEZIbHFrZkRi?=
 =?utf-8?B?bU1CUlQwYlFZaFNpd3RzSkFSY1F1U1VFWUNhQVdrTldLUjBXcXhpK3NyMmxT?=
 =?utf-8?B?UUtYU1pVbVkydXZrTUZnbnFHTCs3S0FZaFRwOE1yZDRvT1ZwdGE0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 70d90729-d0e3-47f1-a04f-08d9d72d8fd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2022 07:14:53.4962
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 dIFJbYBEoCghohIKQFEShNBa2vn0VHZTjxK8vZsTje6KD90039sWVU45qyuB9abMZCW74eULwvAkZrIcL+zHt/nns128XNLJ+cdlr5aeP0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR10MB2134
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 07:14:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55870

SGVsbG8gdG9nZXRoZXIsDQoNCkkgd291bGQgbGlrZSB0byBhZGQgYSBxdWVzdGlvbiB0byB0aGUg
dG9waWM6DQoNCldoeSB3YXMgdGhlIExUUyBwZXJpb2QgZm9yIGR1bmZlbGwgZXh0ZW5kZWQ/DQpD
YW4gd2UgZXhwZWN0IHRoZSBzYW1lIGZvciBraXJzdG9uZT8NCg0KTWFueSBncmVldGluZ3MsDQpN
YXR0aGlhcw0KDQotLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQpWb246IHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IElt
IEF1ZnRyYWcgdm9uIENoYW5obyBQYXJrIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpHZXNl
bmRldDogRnJlaXRhZywgMTQuIEphbnVhciAyMDIyIDAyOjE0DQpBbjogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZzsgb3BlbmVtYmVkZGVkLWNvcmVAbGlzdHMub3BlbmVtYmVkZGVkLm9yZw0K
Q2M6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7IHN0ZXZlQHNha29tYW4uY29t
DQpCZXRyZWZmOiBbeW9jdG9dIFF1ZXN0aW9uIG9mIFlvY3RvIGR1bmZlbGwgTFRTIHBlcmlvZA0K
DQpEZWFyIGZvbGtzLA0KDQpJIGZvdW5kIHRoZSBsdHMgcGVyaW9kIG9mIFlvY3RvIGR1bmZlbGwg
aGFzIGJlZW4gZXh0ZW5kZWQgZnJvbSAyMDIyLjA0IHRvIDIwMjQuMDRbMV0uDQpBRkFJSywgYSBZ
b2N0byBMVFMgdmVyc2lvbiBoYXMgMiB5ZWFycyBwZXJpb2QuIEkgdHJpZWQgdG8gZmluZCBhbnkg
bm90aWNlIHJlZ2FyZGluZyB0aGlzIGJ1dCBJIGp1c3QgZm91bmQgUmljaGFyZCdzIGUtbWFpbFsy
XSBpbiBsYXN0IHllYXIuDQpDYW4gSSBmaW5kIGFueSB0aHJlYWQgb3Igbm90aWNlIHJlZ2FyZGlu
ZyB0aGlzIGV4dGVuc2lvbj8NCg0KWzFdOiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93
aWtpL1JlbGVhc2VzDQpbMl06DQpodHRwczovL2xvcmUua2VybmVsLm9yZy95b2N0by8zODc4ZTI3
ZmI4OTU3MThiOGM1ZDY1ZjQ0NGZlYTQ0M2E1NmUwNTg3LmNhbWVsDQpAbGludXhmb3VuZGF0aW9u
Lm9yZy8NCg0KQmVzdCBSZWdhcmRzLA0KQ2hhbmhvIFBhcmsNCg0K

