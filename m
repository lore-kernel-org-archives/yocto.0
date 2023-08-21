Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 743C3EE49AA
	for <webhook@archiver.kernel.org>; Mon, 21 Aug 2023 12:49:34 +0000 (UTC)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (CHE01-ZR0-obe.outbound.protection.outlook.com [40.107.24.126])
 by mx.groups.io with SMTP id smtpd.web11.10107.1692622165306065357
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 05:49:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=Sh3GI7Ea;
 spf=pass (domain: vrag.ch, ip: 40.107.24.126, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BAVVdh5nTRHKXE0/+F409QUg6QrJpxm+RqIBumBFC43AxDYZUKo961KlsV10DHoZaXT5WqFSBJGXhkIoUnIYfQ9GlVVlY+pA0xp61Tt67mmXZ9EKHDgLqk9fMT3iit4HzuVtUIiecLl/0UCc/9zOL+I5plXS6eWemjeaTyVONZrRETG8XM3V3ikmuPngX/EZKQQOjyNHnik4M+bLk2uLZpB00TNE60s5uumXAiRx7D6njW9ucUnrSjxRF+dv3gy2K3HXEvO0fq8dhAPnCwfhfzI2joZmtqJhwv1EQiSgf4QZBnRBCQQOdt92M3K9e9ECDb2KaPv++9SSbDqOnlbV4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIbBM0vXMDabC/M16Pexg4b1OZgwJbEnKmMlyAJi5kw=;
 b=g0jCYArZbzNcfLBVpNxYiTSBx0NQ0ZktVfzgqXRHBSb063fEgNq1ngSxVFb71QtuvfqaorZP/jTxMiatJI9YnHjtfmVWF0CO28uieVRhjvQrf3v5mSUQSv1F0KGH/qHZOUIGGfZe90dZNn4x7BkNeKXC/yIjbUou6OUVU5gq1seKdemEM2A1APKM1M+uycVkwFiRXdNMnsURmRQJ63JNVuk9/O6dUzOCNvLjnQien6wvcHSICbtKZSbtUMA8kRh7jscfyJN0318tW17UxVtdermBJ10xCPyTt8/VWmk1IZrgewLUQtzXEinjkxa75edl0XNpEMh9nZGip3ZKYpXWRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aIbBM0vXMDabC/M16Pexg4b1OZgwJbEnKmMlyAJi5kw=;
 b=Sh3GI7EasnUnzYLJvsWPnrE7yilXKVUYOraMcEcnT0B1pkrRqFKPG6+E7Uk2rFdytxPd6w8SZ1XhsHmrXcBShrLSd37dMyWIjHWdvIFApIrYCfxmEsM5lflLrslOiNkC0Q6iZ83HigUKP1cyP/FiXy6nhtjH+qsJeKE2sLyqJVA=
Received: from GV0P278MB0557.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:40::14)
 by GV0P278MB1031.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:4d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 12:49:22 +0000
Received: from GV0P278MB0557.CHEP278.PROD.OUTLOOK.COM
 ([fe80::7948:a323:3e5e:699e]) by GV0P278MB0557.CHEP278.PROD.OUTLOOK.COM
 ([fe80::7948:a323:3e5e:699e%6]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 12:49:21 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: SDK build generally broken?
Thread-Topic: SDK build generally broken?
Thread-Index: AQHZ1C3oVzTogmfTnEmhFrCtKzJ76w==
Date: Mon, 21 Aug 2023 12:49:21 +0000
Message-ID: <7d6af5897b3a409c3252dcce0286ff449952cff1.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV0P278MB0557:EE_|GV0P278MB1031:EE_
x-ms-office365-filtering-correlation-id: ea8a18b8-1b31-4e44-a214-08dba2450aaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OA54bKe45VgIyfCIMuGqVUPPGxAphFBslSdqmkStIX+1he/7QjPDPvplkMlIzetLg7zhu7Poqw7/M54FLXrhQpFRhJK/tkCN4eGijwVgfFepQXA80ZLUdEGJWQ7arAr/wO/rnG4QIZO+rojfntNPEJ7FgLSXvWOFDh1pRvmIcbCIxovAWBHBGI+WgBPUrWuKAZF1oVa7TusMPGfGc8wefFEeqqiY3oIpvw9+6M4iAtiYMTf/dwTXJzuAfLZM1wabRtryThalecqx5uF+IGWezpfXudjhx95TK9gzOo0QsWYWF8VS4j6l9EhRYB9YT0I0SIFh1kUoeoKlVRwMaVMdEwhBu57WHRjj0Xv+tAFjASfN0C655wpLPb7LV0czcZviV81yjrU6mdtXsAbjj6H/pf1Zu8cQWUnf//9jUAcF8ec8qQ70z2WArpTW0fTVaHDd8yfK7qB+95UBFzH/7h2PrMVPv5ZnsehqDsMm3/lBRM+OTNcF+X4zv7g+W3jetfq+P7lKiPVIC9f3qff6hbv33myCqUfNygn3LibNy8n6IdCT8wv7htXzJRE4x16JoNAz5fzzHGqNHC8A3CSClUPEAnnKgu4jK5F5VsnEi1eTuaWkjrTejlqcIWhMceVEPL7u
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV0P278MB0557.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(39830400003)(396003)(136003)(376002)(346002)(1800799009)(186009)(451199024)(36756003)(38070700005)(86362001)(122000001)(66556008)(6916009)(66946007)(76116006)(66446008)(91956017)(66476007)(71200400001)(478600001)(41300700001)(64756008)(316002)(38100700002)(8676002)(6512007)(26005)(6486002)(8936002)(44832011)(2906002)(3480700007)(5660300002)(2616005)(6506007)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bWFJTWdFTHFCU3lIaExUdFE3eC9neDZvM0VCZ29ycTNZc25FVCtSeVhOeTJJ?=
 =?utf-8?B?VGs2L21xRnN6NGJQTS9JM3Z5b0VGcjN2c1lZOTZPSmRObFcwSnA5cUJoSWp3?=
 =?utf-8?B?bzA5VDFXcWtaeVdpWk1EVnp4RHFCWlJ3aTBwNTFLM3BSQ2RkN2svR2JZOTVk?=
 =?utf-8?B?RXFRN2ZvYXVSTmRxalY3ci84NnBlaVc5dTYrQzErem4wSEphQlFUR1dyRFpX?=
 =?utf-8?B?U2FyMVN3eXVzUDNkbzN3ek1vT2JTQll5MnFRLzF3THB0REsrcWVsSTJMOFhi?=
 =?utf-8?B?bEZSZ2Jzd3d4RUlBbHJNUWl6UkJvb0JMa1dBS0hFRWwzaUJwN29LeW05NE5P?=
 =?utf-8?B?U1VQNCszV0tqVGgwM3lJbnpzRkZncWxNeVl6UkpONFhFUXdlcVpYVmpWMXpI?=
 =?utf-8?B?NFV4ZDZWejRGUlFBWjNCMmIrQkZscFk4MngzNVBKcUsyZkl5V0tOTnpCZUtT?=
 =?utf-8?B?UkJqdGNiRnRYN0hqUm9WRitzTE1Fa1crVytpL0V4ci9tSUlEaTd4M1RFQW10?=
 =?utf-8?B?cStEeG5Ld1RnbmEyOWpHUnFqUnkzczdSOHRUZE5KSWREZThxTnFXMm5FeEFL?=
 =?utf-8?B?bDhBTmdnQnlLM0VPUW44alJIY1k0VkRvZGtweGpnc2FzM3drYjFUNHZJMW14?=
 =?utf-8?B?VDFOTUdCUS8wblFMSVRtU1lWNTY0Y1I0SkFKaDJ5UDNCVHJuOVlNL0ZiZVdW?=
 =?utf-8?B?NUZieGJTTURYSzczeVYrVUhPK3FhblEzTUxBaEZVTHlBWUZaVDdMcndDN0Iz?=
 =?utf-8?B?Nk5oanU5UHZ3S0ZNU2ozMExjRGhtYjNHUVY4d05KUkNqRzhyVUlXTUtBRzRD?=
 =?utf-8?B?Z0JQZGpIRjRoSGJzVXNZSG1uMWhaYWVocXJiL1RreW5wM3NDYmJxVEhlcHFE?=
 =?utf-8?B?a2M4dkltT3J0M2MzQUdERjNlM1pOeXJ2cWpyeklyamNEYnVYeVM5ZGV3QXNi?=
 =?utf-8?B?RzExbUJ5bXhBNkdXcFV2VFVqKzMyb2FHdndVckFJNzhJRmlXNWhzRzdEcUF3?=
 =?utf-8?B?eGdMSS9iVWhyb0RRQ2VyVzFRM2dPWHpGKyswbnZUdG56YmVQNWlEKy9ObmNq?=
 =?utf-8?B?ZjNmRFUvZ0R2cEZUTkhLSURtdzZIVGtmUWYxbWx6ZnVCdVd5czhmY2hNQ2c2?=
 =?utf-8?B?VjBicGM0NlgrNGxDK0VuL2tlRkZyKzNFOXpqWmxOc2tOOVNnVHRpZ1kxeDhX?=
 =?utf-8?B?VEVmQVJMM3VDT3ozc2dUKzk3ampKMnhmUUZ0M045RFRpMmRLakdKZklmOG82?=
 =?utf-8?B?NnFyaW5wSVBoVVB5NlhENFlEdXVIcXFoMUpQSmxpNzNlYUg4ZHhva0lvZzNy?=
 =?utf-8?B?L1dBN3I5UnBqZlNYNURMV0NRYURMeE1OU0lqVUk3QjJqcjhrRndYYXFacHkx?=
 =?utf-8?B?Wmh2RUs1ZEpBa0RSakdYK3Ezamo5SlY1cHQxUEpiaG03OExXNFlqNlNTbFM0?=
 =?utf-8?B?RXdPRW0wa3JDU0tEWFc3WHFNQ2wyZmU5Z1hyRk9RVmRFekNzMC90Y21IcUQx?=
 =?utf-8?B?QlZwSjZQczNlNUVOckVscTlFdVArYm5YdWUxNUoxbDlld2FKaTQvSzExQk9w?=
 =?utf-8?B?VWlha1g4djlFUFM1TVFiSHpEVDRYcm04RlRXN3BmYnI5a0wxWjVpRXMrU0R0?=
 =?utf-8?B?a2dhZnRzZ096K3RnT2xIT05tRCsvRlhZN1A2NGNaY0VTZWZxSVAwODhESEdp?=
 =?utf-8?B?ME84U3IxOVY5OXNCcW50MVhNNlY0ZkgyaS9oVngrNjZsZTcyOUJLcSs2akpv?=
 =?utf-8?B?a0VrT214eGRzcjczd0crRVEyeC9QN0R6S2s5djZYcFYyU2U2dEJLN21lNUll?=
 =?utf-8?B?SlptK1h6M01saEN5MzVsT0FpcFlpSUFXSUxvWlhqTVMvTDNJNXVlNFVDaUNo?=
 =?utf-8?B?ZkxXcFcxYzZ2a251ZWJ0a3pTOCtZZVpFRzlCTTRUWUoweWpxNFZOWWVyMm5R?=
 =?utf-8?B?MmRUK2pEMHFuVnB6T3lOWndnOXlHdEZVSkVyaFlJbXBsUGJmQUkwSXo1MCt0?=
 =?utf-8?B?OCtrTk9uU3RmU1A0Zmw2MGYxd3lESlJTTDc3a1hDUTR0K0ZtelQwZ2M2Mkk3?=
 =?utf-8?B?RFFVNHVHdE1IZFFKN2U4c3FvcHZIRTg2NHIyV040WTBkV2JUd1hGajBVMXZ6?=
 =?utf-8?Q?Vcs9T4y70FHREKU4oY5a//fKf?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <88AC87026A29864193E05992012730D9@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV0P278MB0557.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ea8a18b8-1b31-4e44-a214-08dba2450aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 12:49:21.8326
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oXeXejt9HFkYcMrTH3mzNWABSNmphx7LzwqukqboWsARrquEO9cjFfPb1lzTDxnJw42JKR6l7jCVui++eGlKfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB1031
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 12:49:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60838

SGVsbG8gZXZlcnlib2R5DQoNCkhhcyBhbnlvbmUgc3VjY2Vzc2Z1bGx5IGJ1aWx0IGFuIFNESyBs
YXRlbHk/IEkgY2Fubm90IGJ1aWxkIGFueSBTREssDQpuZWl0aGVyIGZvciBteSBpbWFnZSBub3Ig
Zm9yIGNvcmUtaW1hZ2UtbWluaW1hbC4NCg0KSWYgSSBkZWZpbmUgbXkgb3duIGltYWdlIEkgZ2V0
IHRoZSBlcnJvciAoSSBhbHJlYWR5IHdyb3RlIC0gbm9ib2R5IGFueQ0KaWRlYT8pIHRoYXQgdGhl
IGR1bW15LXNkayBwYWNrYWdlIGlzIHRvIGJlIGJ1aWx0IGZvciBhIGRpZmZlcmVudA0KYXJjaGl0
ZWN0dXJlOg0KDQoNCng4Nl82NF9uYXRpdmVzZGsgICAgICAgICAgIDMuMS4yLXIwICAgIG9lLXJl
cG8gIDMzMCBrDQogbmF0aXZlc2RrLW9wZW5zc2wtY29uZiAgICAgICAgICAgICAgICAgeDg2XzY0
X25hdGl2ZXNkayAgICAgICAgICAgMy4xLjItcjAgICAgb2UtcmVwbyAgIDEyIGsNCiB0YXJnZXQt
c2RrLXByb3ZpZGVzLWR1bW15ICAgICAgICAgICAgICBzZGtfcHJvdmlkZXNfZHVtbXlfdGFyZ2V0
ICAxLjAtcjAgICAgICBvZS1yZXBvICA5LjAgaw0KDQpUSElTIEVSUk9SIE9OTFkgQVBQRUFSUyBJ
RiBJIERFRklORSBNWSBPV04gSU1BR0UgKHRob3VnaCB0aGUgaW1hZ2UgY2FuIGJlIGJ1aWx0IGFu
ZCB3b3JrcykuDQoNCkkgZ3Vlc3MgdGhpcyBpcyBkdWUgdG8gdGhlIGZvbGxvd2luZyBjb2RlIGlu
IHRoZSBzZGstZHVtbXkgcmVjaXBlOg0KDQpweXRob24oKSB7DQogICAgIyBQdXQgdGhlIHBhY2th
Z2Ugc29tZXdoZXJlIHNlcGFyYXRlIHRvIGVuc3VyZSBpdCdzIG5ldmVyIHVzZWQgZXhjZXB0DQog
ICAgIyB3aGVuIHdlIHdhbnQgaXQNCiAgICAjIChub3RlIHRoYXQgd2UgaGF2ZSB0byBkbyB0aGlz
IGluIGFub255bW91cyBweXRob24gaGVyZSB0byBhdm9pZA0KICAgICMgYWxsYXJjaC5iYmNsYXNz
IGRpc2FibGluZyBpdHNlbGYpDQogICAgZC5zZXRWYXIoJ1BBQ0tBR0VfQVJDSCcsICcke0RVTU1Z
QVJDSH0nKQ0KfQ0KDQpCdXQgZnVydGhlcm1vcmUsIEkgYW0gY29tcGxldGVseSB1bmFibGUgdG8g
YnVpbGQgdGhlIFNESyB3aXRoIG15DQptYWNoaW5lIC0gSSB0b29rIHRoZSBtYWNoaW5lIGZyb20g
dGhlIHdvcmtpbmcgaW1hZ2Ugc291cmNlcyBJIGFtDQp3b3JraW5nIHdpdGggYW5kIHRvb2sgYSBw
bGFpbiBtYXN0ZXIgcG9reSBjaGVja291dCAoYmxlZWRpbmcgbWFzdGVyKS4NCldoZW4gSSB3YW50
IHRvIGJ1aWxkIHRoZSBTREsgZm9yIHRoZSBjb3JlLWltYWdlLW1pbmltYWwgSSBnZXQgdGhlDQpm
b2xsb3dpbmcgZXJyb3I6DQoNCkVSUk9SOiBtNC1uYXRpdmUtMS40LjE5LXIwIGRvX2NvbGxlY3Rf
c3BkeF9kZXBzOiBFcnJvciBleGVjdXRpbmcgYSBweXRob24gZnVuY3Rpb24gaW4gZXhlY19mdW5j
X3B5dGhvbigpIGF1dG9nZW5lcmF0ZWQ6DQoNClRoZSBzdGFjayB0cmFjZSBvZiBweXRob24gY2Fs
bHMgdGhhdCByZXN1bHRlZCBpbiB0aGlzIGV4Y2VwdGlvbi9mYWlsdXJlIHdhczoNCkZpbGU6ICdl
eGVjX2Z1bmNfcHl0aG9uKCkgYXV0b2dlbmVyYXRlZCcsIGxpbmVubzogMiwgZnVuY3Rpb246IDxt
b2R1bGU+DQogICAgIDAwMDE6DQogKioqIDAwMDI6ZG9fY29sbGVjdF9zcGR4X2RlcHMoZCkNCiAg
ICAgMDAwMzoNCkZpbGU6ICcvaG9tZS9kYXZpZC95b2N0by9iZjEzMy9wb2t5L21ldGEvY2xhc3Nl
cy9jcmVhdGUtc3BkeC0yLjIuYmJjbGFzcycsIGxpbmVubzogNDk0LCBmdW5jdGlvbjogZG9fY29s
bGVjdF9zcGR4X2RlcHMNCiAgICAgMDQ5MDogICAgZnJvbSBwYXRobGliIGltcG9ydCBQYXRoDQog
ICAgIDA0OTE6DQogICAgIDA0OTI6ICAgIHNwZHhfZGVwc19maWxlID0gUGF0aChkLmdldFZhcigi
U1BEWERFUFMiKSkNCiAgICAgMDQ5MzoNCiAqKiogMDQ5NDogICAgZGVwcyA9IGNvbGxlY3RfZGly
ZWN0X2RlcHMoZCwgImRvX2NyZWF0ZV9zcGR4IikNCiAgICAgMDQ5NToNCiAgICAgMDQ5NjogICAg
d2l0aCBzcGR4X2RlcHNfZmlsZS5vcGVuKCJ3IikgYXMgZjoNCiAgICAgMDQ5NzogICAgICAgIGpz
b24uZHVtcChkZXBzLCBmKQ0KICAgICAwNDk4On0NCkZpbGU6ICcvaG9tZS9kYXZpZC95b2N0by9i
ZjEzMy9wb2t5L21ldGEvY2xhc3Nlcy9jcmVhdGUtc3BkeC0yLjIuYmJjbGFzcycsIGxpbmVubzog
NDc1LCBmdW5jdGlvbjogY29sbGVjdF9kaXJlY3RfZGVwcw0KICAgICAwNDcxOiAgICBkZXBzID0g
c2V0KCkNCiAgICAgMDQ3MjogICAgZm9yIGRlcF9uYW1lIGluIHRoaXNfZGVwWzNdOg0KICAgICAw
NDczOiAgICAgICAgZGVwX2RhdGEgPSB0YXNrZGVwZGF0YVtkZXBfbmFtZV0NCiAgICAgMDQ3NDog
ICAgICAgIGlmIGRlcF9kYXRhWzFdID09IGRlcF90YXNrIGFuZCBkZXBfZGF0YVswXSAhPSBwbjoN
CiAqKiogMDQ3NTogICAgICAgICAgICBkZXBzLmFkZCgoZGVwX2RhdGFbMF0sIGRlcF9kYXRhWzdd
KSkNCiAgICAgMDQ3NjoNCiAgICAgMDQ3NzogICAgcmV0dXJuIHNvcnRlZChkZXBzKQ0KICAgICAw
NDc4Og0KICAgICAwNDc5OmNvbGxlY3RfZGlyZWN0X2RlcHNbdmFyZGVwc2V4Y2x1ZGVdICs9ICJC
Ql9UQVNLREVQREFUQSINCkV4Y2VwdGlvbjogSW5kZXhFcnJvcjogbGlzdCBpbmRleCBvdXQgb2Yg
cmFuZ2UNCg0KRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46IC9tbnQvZGF0YS95
b2N0by9iZjEzMy9zZGsvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L200LW5hdGl2ZS8xLjQu
MTkvdGVtcC9sb2cuZG9fY29sbGVjdF9zcGR4X2RlcHMuNzMxNTA2DQpFUlJPUjogVGFzayAoL2hv
bWUvZGF2aWQveW9jdG8vYmYxMzMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvbTQvbTQtbmF0
aXZlXzEuNC4xOS5iYjpkb19jb2xsZWN0X3NwZHhfZGVwcykgZmFpbGVkIHdpdGggZXhpdCBjb2Rl
ICcxJw0KDQpJcyB0aGUgZ2VuZXJhdGlvbiBvZiBhbiBTREsgb3V0ZGF0ZWQsIG5vdCByZWNvbW1l
bmRlZCwgbm90IG1haW50YWluZWQNCmFueW1vcmU/IE9yIGRvIHlvdSBoYXZlIGFueSByZWNvbW1l
bmRhdGlvbnMgdG8gdHJvdWJsZXNob290IHRoZXNlDQppc3N1ZXM/DQo=

