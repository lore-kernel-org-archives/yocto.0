Return-Path: <joao.goncalves@toradex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D447C35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 14:56:26 +0000 (UTC)
Received: from de-smtp-delivery-113.mimecast.com (de-smtp-delivery-113.mimecast.com [194.104.111.113])
 by mx.groups.io with SMTP id smtpd.web10.45330.1702911383325709500
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 06:56:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@toradex.com header.s=toradex-com header.b=N5RwCZzm;
 spf=pass (domain: toradex.com, ip: 194.104.111.113, mailfrom: joao.goncalves@toradex.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com; s=toradex-com;
	t=1702911381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DzXWOxQCxIIjxaXwtasijXPPw0s1Ht/lMTqACyyqiE8=;
	b=N5RwCZzmrHg9x6wpYTc+oTZZV+SYWsGCBaBKlTZpTwR5jq0Ez4rk8ILpQrBTcAG0UhdMzI
	hf76oIZ8pIHziUyemJ0ZlKropjHlcM39hSnDta2ZVEQR7fZNeuTvDg/865uw//oRurFFj/
	8IzeDWNxrx4kF6iARY0o6gVEIxaIZHc=
Received: from CHE01-GV0-obe.outbound.protection.outlook.com
 (mail-gv0che01lp2041.outbound.protection.outlook.com [104.47.22.41]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-2-kGejxF4uMDq-pFM-0riqoA-1; Mon, 18 Dec 2023 15:56:20 +0100
X-MC-Unique: kGejxF4uMDq-pFM-0riqoA-1
Received: from ZR0P278MB0460.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:34::12)
 by GVAP278MB0101.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:24::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 14:56:18 +0000
Received: from ZR0P278MB0460.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9595:bbdb:420b:24bf]) by ZR0P278MB0460.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9595:bbdb:420b:24bf%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 14:56:18 +0000
From: =?utf-8?B?Sm/Do28gUGF1bG8gU2lsdmEgR29uw6dhbHZlcw==?=
	<joao.goncalves@toradex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-secutrity] tpm2-tools RDEPENDS behaviour in meta-tpm
Thread-Topic: [meta-secutrity] tpm2-tools RDEPENDS behaviour in meta-tpm
Thread-Index: AQHaMcJb0DWfSGGg1kGOb9RCEIWJoA==
Date: Mon, 18 Dec 2023 14:56:18 +0000
Message-ID: <256eb0e5cb6c1cc9b195950e73d45c8e8e00ff21.camel@toradex.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0460:EE_|GVAP278MB0101:EE_
x-ms-office365-filtering-correlation-id: 4d1d7c33-b7d4-43f9-f41a-08dbffd97de7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 6Zk+vDvnoAUkodbLLgNmYisSiCJUnr4sfwVX3jIkzeTayR2m5sLPX/Ro0s8Gkl43EZ3TtuxPj1ZPKbjz8ZTndPlYuDqdNLy5gPerg4z+Fio11LRWxlbLUnuzDUvljRzUpJVp26iYXJED9SGR1RNX9egPjkmLaGQBG1AV4C4tIIbW5n+/1GhibCIxDe1IUQ+azff4pQV+bxBHyglYadLBqckvrt0h24YF5cCJa9H01WmwM4w/5WWzab46NQEKEFJ1P2QX0vAzteEZ/l36X76AHDx/EiD760mrzS5T/Y2lfXSJYLkcnrcZEqtjqTocVqrLYoj/XkWOFFNz7+5XotAw74mscUDa4NF5HwxIJgeW1J1OucSDXv/LcN93Y1YFquzbUWeZTRrP+powKcMT1lyN16ys0vJ30ChqTHzbovaKjkb73vs2aa9O2Hw3cSdFQRufU8k9BbgAvgPmp7iiHtyJmHKfXWj3DnPWb8Z9euC+Ul9OAj+HyAru3zq3/KFfxQZZLE4Z/2ABAxwHe2Wwbcn6XbadOd7vlgxBCReg9CVzDsTsapa2bJGrXXYRPCfdUwsvcJBtj4kl30k8uKcmGYa43xOIU4wc5eqFWg1zJ4buvH9Gp2JTXubp5MLvoO7UMZuf
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0460.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39840400004)(366004)(346002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38070700009)(6916009)(66476007)(66556008)(64756008)(66446008)(76116006)(91956017)(5660300002)(38100700002)(122000001)(558084003)(36756003)(85202003)(85182001)(86362001)(26005)(2616005)(6512007)(6506007)(316002)(2906002)(8676002)(8936002)(66946007)(71200400001)(478600001)(6486002)(41300700001);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tk1FZXZ3NVNKUUJtaEIyTGhtOTRvWnVoajNnQThQTnNOSHhrMmV6eTRocGhj?=
 =?utf-8?B?aFFYWGFuWHFvRXZwWWNXUlErYTE5dUw5REVVVlZReUpmOG9vLzdvOEx6Kzc3?=
 =?utf-8?B?T1pZOTFWTWdCenBLN3dBTHJTdW5tRnZLQW5CN1ExSEEvbGV3Vi91ckVWU25G?=
 =?utf-8?B?ZStOSVpjaWhQUzhZbUVtTFZORnB4b0d4NzFOelcweUhabjkrajJvYk03c0Ux?=
 =?utf-8?B?Z0ZJd0FuYUkva0NyNGIrNnlhR1VLbXJpNzhRd3Y5UFVFUTRBby9VdnZmcVVq?=
 =?utf-8?B?b05DVTZtdXpoK3NMZUxQYVc3b1I2U09kZS9LZVgxazlZdE1TVWt6dk1lVkM1?=
 =?utf-8?B?c0hUMFFtNndGemZHUEpWSG0xbE0wQ1h2YWtNYmcxRmRldk11Ukk2U1Z0L004?=
 =?utf-8?B?QTd3aWpNWXlnR3VuSFl0VEVnUkpjWk4rdzZHb2x4cGJqMG4wam16YWZ5WXhB?=
 =?utf-8?B?dGRyZitGNWJFaGJRV1FMNzAzOEFZNXY0SVlkZUp0bWlidHRtWk1oNE1FYmlw?=
 =?utf-8?B?MU9ZdWtQdFhLY2FDQUU2T2Z4R3JXWFNnc0U5NWtGeWV5akhjTWlibDJJUUJw?=
 =?utf-8?B?Q1hST2Q1a05wTGpCWmJKcTNNVXVpeWoySi9yUlJoUStwcFU3Vm10NFdEeno4?=
 =?utf-8?B?REpuSmcxdFNMbGsyRWlzazd5RFExK0pSUFpoL2dhUEtTQnJpVy9MQThERnJl?=
 =?utf-8?B?TTI4SFIxemZRU2IySHBwUFdFRi9JazZZbkJaWGF0QkdoaXZqMWtZV0l0Z0Y3?=
 =?utf-8?B?azhiSFJQS0NZaXA1dGMxaVpMdVpDVDljaU1OR0MxdTRPcS9GMnY0TjIySC9N?=
 =?utf-8?B?UXdNQ0tMMGRpb283dWRrY2RVVmZGQndVTjhrOWNHV3ZQWkVnV3ZjYUE1MWJJ?=
 =?utf-8?B?K3BDaVFnbnVlS0RESUE5aUphT3FzMUdNQVVYVllKbWV4OFpad2ZKRUJSUmJU?=
 =?utf-8?B?ZGduNElLK2M5MUVVNHBFUVRHZm5zZ3U5VjdKVFZJMHdocG1KZzliZ0pSRmR4?=
 =?utf-8?B?ZmNCcXdKek1PRllOUHFyaExqSWdkYVQ1ejVzWmIybEIzT0c3ekZ3ZEpTd0o3?=
 =?utf-8?B?Tk8yakNGRHpQcTFMYnVmc3QxWU1VVnFMcUpMdnRWNTlSb1FHY0tvK09xdXd2?=
 =?utf-8?B?QWwxYStvemJ2Q2FYeFBvZjUxKzdYWkhIUHJVR1o5Ni95Q1pQditQQlpkWXZp?=
 =?utf-8?B?ZG1iaEhoZGJKQ205ZmR5bFNyenNWT09oOFp0RkxXbnFSR3F6YkdYdTU2YkRV?=
 =?utf-8?B?U0p6OWFId0xWOTl3Z0N6VWVkN3A5S202QkFZYXo4cUt6Y1hiakRrNHVpYlVr?=
 =?utf-8?B?QThVU1FNM3ZnYmRxbmxOVVRmUzZHR2NlUmtreGZGeDBDaHR1RDJWelUyc1k4?=
 =?utf-8?B?a3loSlFwd1pzN1RZMFRvR0p4R3JuVkxrS0lQa0xpNkJOcFBiSlRlckk1MUNG?=
 =?utf-8?B?a3RBOHhLZDJNbE9pV1doajN3YTdKK2RQRzc1emVENlY1WTlhVTEwTjQrWmZs?=
 =?utf-8?B?a0JuU1E0WWZDU2pndGtKNUYxdmE3dkxWT1grT0pxbGl6dGZwWGxkcmplQm55?=
 =?utf-8?B?S3lTNXFiSUNzOTVIY2J2SDJKb3hXU0VDVWdodVE1K2djY2RMVWZvcUFhM2Zz?=
 =?utf-8?B?dUQ3NDBXVGE0SnpOajBmdUdrZXgyY3hEK2dxdEc1YVpHSnlQVkF1NE41ZEJx?=
 =?utf-8?B?dEpxbHlEVC8wb1lxK2UzWFZBallBQThoRGtIS3AzTmZvK2RkTGR1TUJWWitO?=
 =?utf-8?B?bzdxSWwyeithNWdtc1hPSER6cVhZUHAyQmRSZG5LbFNuUUJiTWtPMUpIaHVR?=
 =?utf-8?B?azF1S0ZEejFjajE3UXdUazRIdUw0bENnZjE5aTZqTTltVWpSbWpCUi80cmhj?=
 =?utf-8?B?RE9PcG5iSUlVYVZGMzRMd1MxUUpPenVlanVhalF3OUhybUNDOE9iV0MrMFFU?=
 =?utf-8?B?aWUrUjFBb0JGdDRDQTlDbG9naFNxeGZIYjVJSzY0ZU9FTlRoc1lSZjZxYWE4?=
 =?utf-8?B?TnZRTEFWcGUrdUN6OHN1UGh1cll5RzFFT1lndlZxZU80aXFCajVuWmhITG9P?=
 =?utf-8?B?WVJramtqTmpNNnJ1dVFUbUxONEF2VzI3UjhFZHAzaDZOZittM2RpUSthKytm?=
 =?utf-8?B?VXJ4T0N3RHpweXU1QnJKUzNyeWx4WmlnY3dOWmRpR3NtNzEwajVnK01HeU5a?=
 =?utf-8?B?Qnc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0460.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d1d7c33-b7d4-43f9-f41a-08dbffd97de7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 14:56:18.8135
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0HGRV/Q7p864uYa0IAIX2UFQSFn+FDA1A/0QzmtwrLr043ebGDw05NCeLoABIdtjkfPda9tTp8TqI31CZVKmjN6zUSE/y5MKp0f16nr34No=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVAP278MB0101
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: toradex.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-ID: <021DBC16D1BEE140BA9EA7EEB5A0C744@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 14:56:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61966

SGVsbG8sDQoNCkZvciBraXJrc3RvbmUgYnJhbmNoIHdoZW4gYWRkaW5nIHRwbTItdG9vbHMgcmVj
aXBlIHRvIGluc3RhbGwgb24gYSBpbWFnZSBpdA0Kd2lsbCBub3Qgd29yayBhcyBpdCBpcyBtaXNz
aW5nIHRjdGktZGV2aWNlIGRlcGVuZGVuY2llcy4NCg0KSXMgdGhpcyBiZWhhdmlvdXIgaW50ZW5k
ZWQgb3IgY2FuIEkgc2VuZCBhIHBhdGNoIHRvIG1hc3RlciB0byBjb3JyZWN0DQp0cG0yLXRvb2xz
IHJlY2lwZXMgUkRFUEVORFM/DQoNClJlZ2FyZHMsDQpKb8OjbyBQYXVsbw0KDQo=


