Return-Path: <Heinz.Wrobel@nxp.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46F4AC02188
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 07:20:17 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.43])
 by mx.groups.io with SMTP id smtpd.web10.6049.1737098415919606392
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2025 23:20:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector1 header.b=A8R9l3u0;
 spf=pass (domain: nxp.com, ip: 40.107.20.43, mailfrom: heinz.wrobel@nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ieP47GGVsvmmzKONIrhxsmBHNFrrL5MJ8HPHNmUW/BnThIQ8w9WZPMQH2UuYc/fh8PBoykrT/2SwYSQGW+CENzuGd/kyFIn4FVTGDh/mKZ+0QlOOJ3+cyWIFcaOVDhP5Ze3pIgvYelOTeyZMY2BqXCxMHEaf5vaE9dMoixNqYQTUIC/brd/zO1AXXUzv2ObuRwJbqG5ZUgbN69onXTzWxRpL/DwUWlmpbe6aNwWwv+GTlvMWSbXEW5dz6J5OKo2Z7dVNsgDX9U2lZWTwmLt2eQRFEt/aytb4Hw2hh/qp4dFKF0Za+3thff+H4W6XeY3vjzVk4MlsxKQeOeZnUjnWGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6DtuixbM2YFM35+AsJIDH9UXasMkR79glVUIF03sV0I=;
 b=nVg1ciBDZlBrRitxbosoof8Pl5TvCbDbugVGRSRI1ABEir6+60Tiu+95qCaJbRy0Zs9O9kiw345rRKbp04n5F6ZdTVacfJJbN+OyFFny1lC5tkIxARfc90veFXDfIgt3o3XgsJ3TP2ADz1GDgdWW6IqN/b3K7yBBrJsVHqGMBt/b9TndMrF7ExkRHg6Mk/6ntALh2BC7OpFcbLeLEiv+fuuQIBW339Gp/1YgF+sUGA7k1XiW3OWwIqi70aR2re2Kz94Miu6R7vTfhn/lkcGhok1NG8koSpBZVazpkB3CzHKQJy6iXcgO9uDTB6ktxlGTcIQsmfqACX672ZllKB1T5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6DtuixbM2YFM35+AsJIDH9UXasMkR79glVUIF03sV0I=;
 b=A8R9l3u0emvCdUbv0QQg6NrKZ7Yu+HqT5mPk0o0eXqgeeVmfQQqrDotI7doLq5UtCJj/GdOSMFyBldHMQaeuK1PvDIucqy7AZqngqdBe+HmGqq07EmO7TOVEsCIEQ2g4+mLldMTgqcD5UiG8lWMP/xINMs9obKBVME2mUK3Ulo+15p9C4HSG3sHNrmhwGymmk/RnEWjNRkM+gyqsUxZPS52+3XvR/fF25h2YctkaL98M/7nwTa32lxFakATiKEOBQTv2froncLiqNhmLjQB8Eth+KlUK4id2UiZ39IEnmZv4jLWzcwAa1wKgKBNjXl4Prc/qt+qzQmP4SGHzUbSyHw==
Received: from GVXPR04MB10045.eurprd04.prod.outlook.com
 (2603:10a6:150:11a::10) by AM9PR04MB7699.eurprd04.prod.outlook.com
 (2603:10a6:20b:284::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Fri, 17 Jan
 2025 07:20:13 +0000
Received: from GVXPR04MB10045.eurprd04.prod.outlook.com
 ([fe80::b14f:218:d8d7:2920]) by GVXPR04MB10045.eurprd04.prod.outlook.com
 ([fe80::b14f:218:d8d7:2920%5]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 07:20:13 +0000
From: Heinz Wrobel <heinz.wrobel@nxp.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"jason.m.bills@linux.intel.com" <jason.m.bills@linux.intel.com>
Subject: RE: [EXT] [yocto] Script error when using EXTRA_IMAGECMD::append
Thread-Topic: [EXT] [yocto] Script error when using EXTRA_IMAGECMD::append
Thread-Index: AQHbaE5CNrNVwsxYVkWbmkGFVvdR07Maj1iw
Date: Fri, 17 Jan 2025 07:20:13 +0000
Message-ID: 
 <GVXPR04MB100458D2D30BFD59E606090ED8C1B2@GVXPR04MB10045.eurprd04.prod.outlook.com>
References: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
In-Reply-To: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVXPR04MB10045:EE_|AM9PR04MB7699:EE_
x-ms-office365-filtering-correlation-id: 1c65e0f7-f22c-4103-278a-08dd36c7623b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UG5nMUpQMWNGVmxXaERIaklwUGd2UmZPL3NkMDU2Qk1zZDJZTkVCQVp1cXpR?=
 =?utf-8?B?NVM2b1JWaXgvdnpaU21PM0hYcW1qbEZKa01HUk1jMnFzZG5iM0tJcjlrcENW?=
 =?utf-8?B?ZTl5Sm5Gd0VOWExlVGJscGJVRFRDZkRrTTdvRjA2YVFaUlJhMzdQWFpvclc2?=
 =?utf-8?B?bzE4ZWFJY1NSUzNDalFCS3Q5b1ljMXJMTnlsYm5zWkFrbndsM2JyT3lJaXJk?=
 =?utf-8?B?elFHdEdVekFQMHNLcEZLVThFemZPeTZGUFFyeFlTWG5qaGwwSXNlSmdxdXVR?=
 =?utf-8?B?N0dDY0JIQjdyeXQzR2tMcFQxRXpaVEhleThPUUlocTdINnFvaWFieUhKenBz?=
 =?utf-8?B?Q2xLckw1Vm83ZFdjaXdCZm1Bamx4SG9WbytqR2sxTVdkWVNrNVAxQTdRYWdW?=
 =?utf-8?B?blNtcFBBQWNBSnhFSFFtR1lvM0x4T25ySCtZRVh3ZHl3ZWFNUnZ6YTBNaXBs?=
 =?utf-8?B?Z2g2ZHZLSkNYbGMyd05YMzRYdnpkRko3NmpicjkzYnlueUtqSkZzb3dlcWRD?=
 =?utf-8?B?c2ZPQnExeDdMZ2VYZGp3b2RzSTAvL1BFclRhZUtNZmd3WGlmWHVlS3lJbU9U?=
 =?utf-8?B?czdnK0xGSkdlRUozZDY1aFdmWkJMRnNRY2I4R0drLzQ1dVphM3hPdEpoZEdM?=
 =?utf-8?B?WEJNSzdmZnpCbEtVZnovMUsveDl1d0Z0OGtPQ0gwdE1RdndtN2pRYnQ2WUFx?=
 =?utf-8?B?Zjcvd25OZGRidE1TZnBNTmRBd2FHSEhPVTNMQ2NFak9qb0lZMkF3OFpOSWtD?=
 =?utf-8?B?WHFOWkd0dDZNWmdiWVREK2hrMmZDZlNzWEY5QW9CZ0ltMmFlbmF5dk9NRXkr?=
 =?utf-8?B?cmgrZVE2YWpBUUhKdXMrUkQyYUpZNEhTSzA0bkM4RjlubzR6RHBjQ3FKQVBw?=
 =?utf-8?B?cU5qczU4dHlLTmlTU1UzOHR5ejNMdDF6Qk4yQ1hIdFc3eXN2VmQ5NGVhUnAy?=
 =?utf-8?B?WnFVdStUVEI2TlMyMm82V0RkMkdSL2VDa2dXTmxSUnRkYTVPUCt0UzF5RGs0?=
 =?utf-8?B?UG84YlFZeXlvTkpickt2TldSaTRlS0dQRlZzb3loWVRmQ2NEOXRCK21qZkt4?=
 =?utf-8?B?UFppRi9BRmpyMVRkMm9sUFhqYyt1di9reTRqK3dPWi9heGF6ZTZ5ZTlkZkdS?=
 =?utf-8?B?QkpDZjZHNDczZEdvbE1KZ1NXU0Q0VEZ5Slg3ekpQVE0wazllTFJyRTRET29I?=
 =?utf-8?B?ZEo4OWExVFlrVlFaKzhSbkpmWjM5MGlqSFJsUkpuUEZPWmFMV0tjdG9rZ1BB?=
 =?utf-8?B?dThJLzNyTm9Hdy9HYUMxWFR5V0hJdXV6VDdTWVJPRXdVaVhRS2s2MEw5ZVYr?=
 =?utf-8?B?ZlM4R0Z2cTM3Zm5kKzdWd2JlY2NmSzdleTZBRHhrTjdLcmlHbmpXQVQ0V2JD?=
 =?utf-8?B?REVpZEJKamw5VjFEZTliU0Rod3RBVFREaTJOM3FodzlJSkpNc0ZkOEdQeG03?=
 =?utf-8?B?eGduSTc0cDlLV0JaMWdVbEQzeUhyTWNGbkN0YXY5bHNIWmVGbTIyVDJjUTZ3?=
 =?utf-8?B?U0s5Z05iTG1ZaG1Db3Blb2xkdnZmc1NnZXhjRmVGcUFPMnMvSTNTTVFUZS9w?=
 =?utf-8?B?MWpZT3p0aVV4SUlobUc2R3lHU05UQ2Q5UllIYlgzKzl1UWNHaHM2c0lIUFVD?=
 =?utf-8?B?VklUbUwvQTl3Uy9pajRBcDZBTWExVXc5RzFGMzJJcDJwZE8xWWFONEZaSWRD?=
 =?utf-8?B?b0tOQm5FL0NqYTZzc0xzSzlHNFRCUGdnMnJxcXUrbU9jeTl5cytFaDFjRnRr?=
 =?utf-8?B?OGNONWhLRlRML2IvYTJMamRUQXMxUjhUYStjRG8yRkxEbWFtZHZDMzNBcDg4?=
 =?utf-8?B?UnEwdTB6S3NIQUY0R1FrQmpjUU5FWXZGQ1RZeDAzRUpoa0U3cmFsUCtvUDU0?=
 =?utf-8?B?dUNFRWkwOFg2ZEl5VEJYVjZGR0JYVng1dWN2d0QzU1lIbGg2RDQzdWt4dXB6?=
 =?utf-8?Q?T0cOtjpkhlUSUiUFu62Ll5k457W7VcWl?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB10045.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TktCTVlTcjdLOVVqNUpCU0pGbHltRnVZTXFrbnE4WFB0bU1BTnlmYldqN0tn?=
 =?utf-8?B?L1lWYmFmUG95N1VNZForTVd1RktQOWZlV1lQeFhrTE96VjZJZnpwUzY5M1RT?=
 =?utf-8?B?cFlGc0toTU9OTjBsdlQ0dWw1bk9oODVCckNVNFRFMjZpUm5rMFMrck9MVXdh?=
 =?utf-8?B?MDlxMnplNUM2c3dwNHpDVVNIMU02bEZmdW8xQUtOUnN6ZlJWMjk3dVQwZDNq?=
 =?utf-8?B?TG5xT2dDS3FONUVubi9nTVZGMFZKMnhVZ2FtTnA3NkdMMU40MWkwOUZCK2Zr?=
 =?utf-8?B?ODFOSHF2MjdINDdVUDBhQTc4L0UzU2JHTm5VbDFNSU5QRTFUNTVDakhsNXVr?=
 =?utf-8?B?T0hVOE12WkcvK2ZRK0tJY01DZ1BGR3oyZ1Nwd211T1ZjY2IrTTNVdFBLYk1z?=
 =?utf-8?B?cXJiNTgwNnVpYXZ3ZEpWaTAzUDNSdnM3NkVERUZmc0dMQ0JndExEcllQeXU2?=
 =?utf-8?B?Rmd6akhObXhhVWtzeWJrVGo3K25VSXJZaXhBNEhJNGFBRW9yeE5rU2ptM1Ar?=
 =?utf-8?B?a0FpbllmakZNWmllamVJNGFraHAwOWlSUXNCdTE5Q1ozZGl4cjdFTklXWmdM?=
 =?utf-8?B?VGxTaEVxbUtsYzhVMkV4UmdWd0xQbjZOem5kZ0JzYmE5aTk1ZzdQU29xbEZ0?=
 =?utf-8?B?NGlUUVYwcGZwTkM3Z0JXUTJSMjAzazljYWFiWnpDUXl1MVFEdE50YVFmdG0w?=
 =?utf-8?B?VXJUVExYTUc5MEtCWExDcmV1T3JPMDNmVkFheFRmRDljWk9rL016YldMVkdT?=
 =?utf-8?B?SjF2TVFNY1BaLy9YWE5YbGo0UGo0bW50Y1ovVnJuNXlFKzhCbDNrL1N1Z2pW?=
 =?utf-8?B?TjdrVUJ1cVFiS0pNK0h4ZVFFM0FEVWdBbHpONXJ1WEVyc25IUTZLbDRWYUp6?=
 =?utf-8?B?c0VIcE5zbHgreUhjY3ZSMk9MVkgyV2tFNDg3dDE4NWRnd2MvcXViVTVaY0d3?=
 =?utf-8?B?SW84ZTB5MUZ4SWN4cDNtd2tNNVB2bFpUdCtTbEVCd1ZNYnZ1RlVxRkx1dDRM?=
 =?utf-8?B?dXZGWU9SMC9xbGZ4bkYxM1QyUUlrajlKbldzWWgxdUErTENPY0ZlRDg5bm5q?=
 =?utf-8?B?Ly9ibWZGSEdDU0FlRGdVbEEzY1orTWo1cmtUTldUZmVhdWxUbEI5UUZpMkQz?=
 =?utf-8?B?amFQSWZmMXdFSzlnb0tJY1N0NDhZZFRLOG5oNVBMZTh5bXJoQk96VEJKa1hO?=
 =?utf-8?B?dlQ1aERQdTN2bkgwWXlzY1dMdmhZaUtibHYvTjdXVDNDUTFpUUtVL3FIK3FZ?=
 =?utf-8?B?YUMyNDBoZ0JFazdQRGJtN25CQXRsc1g2RFZTZERhd2gxankvT0tlUlkvZE9D?=
 =?utf-8?B?WWNmOXFOMDd5bUNXVmZ5azlkWEE0VHNySXdsN3ZZRjVWYUgvV2VvZXUvYnZk?=
 =?utf-8?B?ZEVKT203czRKc0VaOWVJZ0djOTRPVWozYS9pdzZ2TUVZQjFqQmQrMG0wQjVi?=
 =?utf-8?B?cFh2aXpTSjVORmphSDcrRTBRR2lscFhMSTV5dy81a1Q2anhYVzgrTTcxZFl3?=
 =?utf-8?B?dFZ3UUJmeDBJaWN6aHlLbEdDNXhvMzdTckRTZEJ2eXk2TFY4QTZ3SFlRWE9x?=
 =?utf-8?B?OTBNazErL1dDU00zR3c4WjAvTVFwL1pXamhMQ3l1c3BLZGJOMEh4RFo3dFpU?=
 =?utf-8?B?Rk9lMEtUdjU1d2VUdGZrbWVNd3dQMDFUVHE0VDMrT2trSDdJVXI4aCtYeUp4?=
 =?utf-8?B?WkYvK0w3UUgrQjFBL1B4QnB5ZG5oZjV5Y3RLUWlnUFVMc2w5K3RES0dDbDVn?=
 =?utf-8?B?QUJUeHFjbGR6UlA3NnhocUJTbkJ3WTExVk4yWVNEcVlYMUI5ODIzcFFOVkpt?=
 =?utf-8?B?c1dBZURLdUkwd0p0eHBEUTdHTDZZWVBCWWZ5bzRIczU5MnVTSUlraTRFL09Q?=
 =?utf-8?B?amRzVXdLRDYvbVNUaGZPVEVDeWdHMVo0V3VtOHpBTEhXaVlDbTZCN2ZNZDk3?=
 =?utf-8?B?Z1h1VUNla3V3aTYvaU56SUZFd2tTWm54MEpJZE1HVU94OFV2amx6dTk4WXgw?=
 =?utf-8?B?M010VUZwWER3RlVwR043YjNWNDFadVlDYXFDS3orRHNGVmo4Z1JGWEpqeGZY?=
 =?utf-8?B?c29PZ01MV3UyaHdaZzJZYXFhWllXV1IrZTMyOHNkaVVQN2xScm80NnNpN3dD?=
 =?utf-8?Q?WGepXB+p6dTq4uY+qa3IpeU5v?=
Content-Type: multipart/alternative;
	boundary="_000_GVXPR04MB100458D2D30BFD59E606090ED8C1B2GVXPR04MB10045eu_"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB10045.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c65e0f7-f22c-4103-278a-08dd36c7623b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2025 07:20:13.0714
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4nbTtojIeP6I0BNHxZLhRjQHYzhPhxsGn4Ta3UmcoGGP9uSh7W8fzOPjnAaP5M4HVwfqehVYzipeHlO0sB/0Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7699
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 07:20:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64571

--_000_GVXPR04MB100458D2D30BFD59E606090ED8C1B2GVXPR04MB10045eu_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIHRoZSBhcHBlbmQgSSB1c2U6DQogICAgRVhUUkFfSU1BR0VDTUQ6c3F1YXNoZnMt
eHo6YXBwZW5kID0gIi1wcm9jZXNzb3JzIDY0IC1iIDI2MjE0NCAtWGRpY3Qtc2l6ZSAxMDAlIC1Y
YmNqIGFybSINCg0KDQpTaG91bGRu4oCZdCB0aGVyZSBiZSBhIGxlYWRpbmcgc3BhY2UsIGdpdmVu
IHRoYXQgeW91IHVzZSDigJxhcHBlbmTigJ0/DQoNCkJSLA0KDQpIZWlueg0KDQo=

--_000_GVXPR04MB100458D2D30BFD59E606090ED8C1B2GVXPR04MB10045eu_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHJ0ZiAt
LT4NCjxzdHlsZT48IS0tIC5FbWFpbFF1b3RlIHsgbWFyZ2luLWxlZnQ6IDFwdDsgcGFkZGluZy1s
ZWZ0OiA0cHQ7IGJvcmRlci1sZWZ0OiAjODAwMDAwIDJweCBzb2xpZDsgfSAtLT48L3N0eWxlPg0K
PC9oZWFkPg0KPGJvZHk+DQo8Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExcHQ7Ij4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8ZGl2PlRoaXMgaXMgdGhl
IGFwcGVuZCBJIHVzZTo8L2Rpdj4NCjxkaXY+Jm5ic3A7ICZuYnNwOyBFWFRSQV9JTUFHRUNNRDpz
cXVhc2hmcy14ejphcHBlbmQgPSAmcXVvdDstcHJvY2Vzc29ycyA2NCAtYiAyNjIxNDQgLVhkaWN0
LXNpemUgMTAwJSAtWGJjaiBhcm0mcXVvdDs8L2Rpdj4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8ZGl2
PiZuYnNwOzwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIj5TaG91bGRu4oCZdCB0aGVy
ZSBiZSBhIGxlYWRpbmcgc3BhY2UsIGdpdmVuIHRoYXQgeW91IHVzZSDigJxhcHBlbmTigJ0/PC9m
b250PjwvZGl2Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSI+
QlIsPC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIj48YnI+DQoNCkhlaW56
PC9mb250PjwvZGl2Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+
DQo8L2h0bWw+DQo=

--_000_GVXPR04MB100458D2D30BFD59E606090ED8C1B2GVXPR04MB10045eu_--

