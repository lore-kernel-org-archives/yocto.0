Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71312C02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 11:30:08 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.20])
 by mx.groups.io with SMTP id smtpd.web11.8877.1737113406267412725
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 03:30:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=a9ZNLZgC;
 spf=pass (domain: arm.com, ip: 52.101.70.20, mailfrom: ross.burton@arm.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TlbzG8hfXxAa4e2U+wo/xYFzVTjqKKVJQYNlUbES3t+EqYayBBl7SIPmULKQ1MQXLrpp5iQt0pxFKKq2DoZHHknADloTiN0AV7e3a2QnQsLDkxPFXixQgYW7e2rep8Raa60ZsE0D6tFRRSaYja8o6DJupVWMmLK5+jPnAd0brnJyvics4F0BGfZuCz4ageDC70mBkQ/zB0809ltdKKI5YrOhOBrw/TwjEs81dp4tGNt5x8iURUmOR63t26T6C0mwj14N+Tbd30FH76bKk2svSrLtPh3fc347IxHOB8OUVXR8m10jPKdQrmdXe8r795lyC3/wQIXk/98NzZs8bRY/zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCGay54KLB1Jkp56cpFX+qUBBVCfssbzXPPng/1vZ70=;
 b=DRVxtOKy6lhtaPXOuhfhz2nU9NnRryKdwTqVQbJpJvpmJ8PPcxhg8sr93Q7PGh0BqFCYpRdQCliOzEYPQAM4Ntyl2OOAExnuflw7Ts4KUkEKo2RHYiWiwUaTqu8mqP2kCRR9rFlX43qEqnKMevD/difeg5nDAYC5FR+fg0HfUcUGpgjGDKA2QWKAksxeG3DBVaTBUuHfN5wYVmKA4p0AnkUYK+ElbZWeDezlZe5qnlVSB7Ujw0usXpOoct4rcj6CRWv0Hj1/StoHAYU0ZtA/Wvm720NPJnRxdwkHqBcDgjB8OEBixCP9pN059OqkjUCXYVG6YyUuV1D2aKno1Tyg5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCGay54KLB1Jkp56cpFX+qUBBVCfssbzXPPng/1vZ70=;
 b=a9ZNLZgCMHE6vuXLujlHzT7ZZD4sXCXP0d99m9DMH3DSdYl6ZpFPgaWv1OE3jxQZGaS6247MeWf9JjiMkZFAu4OWYLxBvrFJssM+nc6j3PatCKhEAQuGpnpRt+Mf+0BD8gWDTa84uWzvqGlMBnBvb7BV6D4Jxq6vHwTg6VcZmfQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7408.eurprd08.prod.outlook.com (2603:10a6:20b:4e3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 11:30:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 11:30:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"Heinz.Wrobel@nxp.com" <Heinz.Wrobel@nxp.com>,
	"jason.m.bills@linux.intel.com" <jason.m.bills@linux.intel.com>
Subject: Re: [yocto] Script error when using EXTRA_IMAGECMD::append
Thread-Topic: [yocto] Script error when using EXTRA_IMAGECMD::append
Thread-Index: AQHbaE5SpTzlrEgyK0+T3no6qL5Da7Maj+KAgABFv4A=
Date: Fri, 17 Jan 2025 11:30:02 +0000
Message-ID: <C4DC70AE-449A-486F-8E42-7D0F3F76472C@arm.com>
References: <qFS7.1737056315558355410.fRU6@lists.yoctoproject.org>
 <GVXPR04MB100458D2D30BFD59E606090ED8C1B2@GVXPR04MB10045.eurprd04.prod.outlook.com>
In-Reply-To: 
 <GVXPR04MB100458D2D30BFD59E606090ED8C1B2@GVXPR04MB10045.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR08MB7411:EE_|AS4PR08MB7408:EE_
x-ms-office365-filtering-correlation-id: 419bfe53-6d93-43b6-c0e7-08dd36ea486e
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?N2ZKV0ZhZ3RmRXpPbE5mWG1RVGpvL083Rm5OYjk1eUtpZzZNeXZqbkNWSm5H?=
 =?utf-8?B?ZXROZEViR2FYN01SU2cxY1NCNUVxajhWdExoVExxalUvWm96OXQ4eVRGWm5h?=
 =?utf-8?B?bFM2UGpna3F5YkRYRjU0eXhqRWV6cGpTeDVKbGJuSWdrT1JxekphQThTOVhU?=
 =?utf-8?B?ck9COWoyWm94MkszZHBMczMzV21PNnFtc092K0pjOUg0VnM0VVB1aHN2VmFS?=
 =?utf-8?B?bjVXSE8wNTBEb2NZSlJtZFdldHExcnBkTlJkS2REbFpJbUtZNkVNMXRlYU9y?=
 =?utf-8?B?b0VmcUZ0SmxrVTNOekVwZ2NQR04xMDVEL3ZObkU1bk0vNlk4YTFLV2JVcU5h?=
 =?utf-8?B?bVZoL3IxTlpwSVlSTmUySzRUUXNHd2JKYUI2RHQxQTd2dXl3WWVFTTNGeWhL?=
 =?utf-8?B?c25XS2FmM0VHMEplOVpraFR2U1ZwRzIwT3h0SWNmckt2d0hTK3JQcFZuOVZO?=
 =?utf-8?B?bmFSa2cwZVRsMGR0ZTNOemg1d1BqQjREZUZuMnZmVkZDUW1FNjZjVFNHaWlE?=
 =?utf-8?B?TXBBWGYwV2Y3eDR3b1htMzBEdmNIdG5IaHJaQzZQc29lWDd2ODlHVi93Wkpq?=
 =?utf-8?B?aDdWVGptMzVTeno3R1VKTkVjVzhYakhGNmxITklkQnRVa2NrblMyOHppY3pr?=
 =?utf-8?B?a2VJVzFtUE5NbWRXWit4TmZka1pMditDU0xscFgzZThjRW5kTXB2ZG5rdnJQ?=
 =?utf-8?B?aWEyTUR6cW5vSjFxTElZMlFHVmtOYlV4aDArQWVmWUFuUHlZR3pFbDBheVZF?=
 =?utf-8?B?ME1OUEU2cTVocWFxZ28vYzNicmg4RzQxek5hbWNJelpmOHR5UDR1TDFuZWtS?=
 =?utf-8?B?ZXkwY2lhQUtXTUZXVTg3MjdxR1RLV0VOS1FwS1BoQk4wRXZqMHo1Mjg3U0FY?=
 =?utf-8?B?ek5DTG53eW1aOXZBMWN4LzhDNW11TFFuY3ppM0lDOEtQRlAxMjhJOHFaY3Yw?=
 =?utf-8?B?Tk5Da29oN05xSEFKMnBteFFselVtM2V5M3U1QjN6ajBYWHBQYWVkL3VmUkc0?=
 =?utf-8?B?a0lYeVNnbEMzSFRXVTlRd2xsN2xyV3RGeTJYbTNpNWE4dXhoSkhhWUtYYTRC?=
 =?utf-8?B?QnM5TGdYSGZnaTkza1RQTWhScHdqR3Zod1R0amlrRnNOdjh2VDRuVVVpTzE0?=
 =?utf-8?B?TWNka1BLajhuK3lKdmZub1RPZUZONFpkZkZhT0FKaUlyU3pRMExiT0QzSkhp?=
 =?utf-8?B?bDhFbHVTTENISTAyZjhVR1F3cXpCSjRoMjJ1cGtaZEpWVHBlcXprYmxFaENF?=
 =?utf-8?B?Z0MrS0l0S01YWlpuanppSnl2UkV5ZkRtM2d6NVRoUDFrOEpmMGtKaHoxYWd2?=
 =?utf-8?B?c0d0bDJaZWtHcVRublNMajM5elVjM3dYS3d3WDlBSVNNWjBLaFVESitJNURM?=
 =?utf-8?B?TGZpMFFyWGNJUjY3Mk5WbU5kb0lHVFBCWkFpYU5pVTRScGVLMjdUYW5kU3JZ?=
 =?utf-8?B?dzBMdTNxTGU1L2wxZHIwZDZibTRGY1h5cWRNd3IxY1FValQ3STZFR0NmTnpC?=
 =?utf-8?B?M1ByRzFlakRwZzJIK3g0ekFuSkFUYnFnbDc0aGQ4L1d0dFoxU1dJT3ExR1pn?=
 =?utf-8?B?NEhqT1Y5VWJCOWVuSlgrVnEvQlo4VE1VOU5JbDMwMDVQVFBheGVVY3BaUmky?=
 =?utf-8?B?eWZVeE81ei9ZWFkvR29qWGdrWDZjYkgzMTJNVG8wblpmZUZTa01QcHpja1Bm?=
 =?utf-8?B?cVRqWmJuc1VZTENnTTZDdndLeGxHNE9aSUxTTmFJTlZxRlFuUUhEZUp4N3Zn?=
 =?utf-8?B?bUwrcEYyMzhUQ1dOUlFnM20zU1VXS1doRkt3RnkyZkltRGxtaXVBWXJvUWpv?=
 =?utf-8?B?UmFDRzVWZ1BLVnMwWVRtY1FxcVIzOUQwOWZhSkxWcWxEdnRlanNyNW5rdS9O?=
 =?utf-8?B?WlVXWmptS1VsL29aZWF5QVhVaklDeHpZWmpwR1JURS9RTTExN0dETVFBM1V3?=
 =?utf-8?Q?6hXzsvFx9VifkcB+Yw/v+XQUkq6cVuK5?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dit1c05BWmZjS2tvZ1d6R0cwdVp6bGZYdys0T1kya3M4TERGcUxhZGxReS9N?=
 =?utf-8?B?L3h5blRKSDFneE84UEpWcHp0Ykp2ZmQwUURPSjlqUll6ZUo3VkxmUDlPVG5D?=
 =?utf-8?B?N2xXK3BCL2wyNWlWMVYwbFFBR1Bkb00wVEZZZFF1UVdLbXhqVkV1U2VCMUlY?=
 =?utf-8?B?TUFXOXBmQ1poWUd4UkZrQytpWGpXSGxVSXJPUUZnamY1ajl4UTRHVmhLY3Ny?=
 =?utf-8?B?LzUrYlQzdlhZS25rWWVpQTM4Y1d5OEg0aWtwdTR3SXBNckN2VFh2NHhXTGc0?=
 =?utf-8?B?TjRBcFowTmFqeThYTVdkQmJYT3ZlOVc3WUtvaS94dGJPNG5MbC9jSFh3T0Yz?=
 =?utf-8?B?ayt5c0p1ZisvMTMzRWF0c21rNEVNYWpiVzNsNUFCOGJpSlVtNExUaXpMZ29D?=
 =?utf-8?B?R05iT1RaSlVMeG9JR3p2OEdmcDltN2thbzBmZElKSm9EQThUeDR2U0pJdnZG?=
 =?utf-8?B?VzJUYWlPaFBrYVBMVU11WEpQS0g0LzBrWjZub1A4QzhLVlZpYVhIdDN6Y0x6?=
 =?utf-8?B?eUdlak9FK3BqYVFBczBEeU5ZVWcrcysySUNCaWRCQnJZUjNYOHkvTnRGUFE0?=
 =?utf-8?B?ZlR1dFU3OUZZMjc3WVZLUVZtL05CTjlkY2VxcktPeWZMVHFsREJOTXlCQUly?=
 =?utf-8?B?SnRrcklZaVkvYTBSbEFUaThRL3llTm44Zm96QnlMcHo2MnUwbGZ6aExqTXRt?=
 =?utf-8?B?TGVUR0Vqc25RZWQzTWFFa2hlVGltSmdDM0xMVXFuT1I5VFhsdlpvbmM3Z25O?=
 =?utf-8?B?MUFkU0lBSWhwRlBDbysrcC9NMGtza2lqcFNhMVJWaW5PL1BZT3FBNEFaSHhZ?=
 =?utf-8?B?UmFIdFNQVUppaTRDT1AvaXYrczQ3SVBmZ2lGZERhQzhvYW1DbzNPM1lMdjdm?=
 =?utf-8?B?VXZvMEE1Q3BHQ3JsN0Y2NWFFekFwYk56WXZUd3pjS281UUZMbUo1NStzK3kx?=
 =?utf-8?B?ZzJ5YjdQdGQxM3dDeEx4bjJmS2NDTnduTUkzT0ZZdHhrQkIzWnR3emlsUVBJ?=
 =?utf-8?B?eWUrMmxWYnNXY3cvL3U1T0xZcUVqMms1Z085Wm9YaDRRSjduTXpnYVdzZGtV?=
 =?utf-8?B?VTQzZ1dWaXZGMjNmTjU4SnpkcVh1L3JVdHgwZ1RUN0JFZlF1TDN4U3JEL3pQ?=
 =?utf-8?B?Y3loM2NGYlVUYjJ4TForbFZGaUgvQjhOVmZNdXFXWUFGS1lmVXFoYzNFRTgw?=
 =?utf-8?B?cXB3YW4xMGlRV0FLcXl0VUFIVEcxMm83OExLT0dQejFlL0FlK0Znck5KT1pF?=
 =?utf-8?B?bnhQbGJMenI0bnB2TXVyN3JyQkJEMlZFc0ZOamZhcUp4T1FrVG8yNUtkYnht?=
 =?utf-8?B?SDBIRk9HWno2ckhTL0RIeUZuaTVDaFR3ZE8zbkNmME0yZjFrRjRUVkF1Wlpo?=
 =?utf-8?B?ODNXbHFWNnc3OVEyN3FJTEJpaU5SdDRZRzgxNDJxdFJ0STF4QVVQQ0NMQkdv?=
 =?utf-8?B?UmpKS0luakpyQXc1R1pCS1NpckVNYnJ3TlV1UnRtenVISEhmL2xPN1RSdkdK?=
 =?utf-8?B?d0NtTTIzQmlDdEw2RldqWTlJUUdUUitNaVNDUUlyalV3S0NXSm93VXc4TktD?=
 =?utf-8?B?UnorSm4xMVlYZWJjOFdHSlRsVXJ2bXlKb0NzZE5qRmxJNHpDYmRJWlFoUnZD?=
 =?utf-8?B?VEhHUmJScWdod1lGZEtFRFRuem5XMTVuUzc2YVhYRUFNakY4UWVQWmdKVVk3?=
 =?utf-8?B?Q01GR2Z0VjB5eFZRWm5wOFpSekRqejM0YlUrSkFaRWpGY25LNEowQVlsTWJL?=
 =?utf-8?B?REZyQzA1THlUUnhsNVdEUFloWDZoRVpMTjMrSld1VXBWbElta3VUZzBtUlZi?=
 =?utf-8?B?S1gxaGpLVEVOSUpxZGdTUEFab0JoVjVGSjFqQXNoRmN5UTFBbUZVMzltVWpl?=
 =?utf-8?B?WEprN0R2aEdLMytHSjZ0UFdIaCtnRFBCVFpvUTMybUx3QUh6TXdSY1UvQzdX?=
 =?utf-8?B?WHB6LzlzbjV5d0dOY0gvTUd1NkpGQ0xaY3oza0doOGJOb01TamVCaTJJWjJQ?=
 =?utf-8?B?Y2N4c2llTkc3RDd3NTg5M0x5M29MRHpvZmFLNVZLalVPcTB3cDRWUTcwZG5t?=
 =?utf-8?B?L0pKRnNpbk1rYjhjbm44T0lGL2ZwUldYNGl1RlUyTlBQN2RQTDlnTEZxOXFE?=
 =?utf-8?Q?lBLoYrEDV3ykWplkbRMMOx3Iv?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF4C3973829F8240BB18D90C157F3FB3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 419bfe53-6d93-43b6-c0e7-08dd36ea486e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2025 11:30:02.1581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i93+bojs58tdP7kcYp5zi9nkvB5HTLnvmD6bl1QFVDxprDWGV8wjD1Ss52he3ydgjIsaHN/k2Z4oEOcJAtWYXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7408
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 11:30:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64574

T24gMTcgSmFuIDIwMjUsIGF0IDA3OjIwLCBIZWlueiBXcm9iZWwgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPEhlaW56Lldyb2JlbD1ueHAuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gIFRoaXMgaXMgdGhlIGFwcGVuZCBJIHVzZToNCj4gICAgIEVYVFJBX0lNQUdF
Q01EOnNxdWFzaGZzLXh6OmFwcGVuZCA9ICItcHJvY2Vzc29ycyA2NCAtYiAyNjIxNDQgLVhkaWN0
LXNpemUgMTAwJSAtWGJjaiBhcm0iDQo+ICAgU2hvdWxkbuKAmXQgdGhlcmUgYmUgYSBsZWFkaW5n
IHNwYWNlLCBnaXZlbiB0aGF0IHlvdSB1c2Ug4oCcYXBwZW5k4oCdPw0KDQpZZXMsIHVubGVzcyB0
aGF0IGlzbuKAmXQgYSBkaXJlY3QgY29weS1hbmQtcGFzdGUsIHRoaXMgaXMgYWxtb3N0IGNlcnRh
aW5seSBmcm9tIGEgbWlzc2luZyBsZWFkaW5nIHdoaXRlc3BhY2UgY2F1c2luZyBzaCBwYXJzaW5n
IHRvIGZhaWwgaW4gaW50ZXJlc3Rpbmcgd2F5cy4NCg0KUm9zcw0KDQo=

