Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D82C3601B
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 10:03:20 +0000 (UTC)
Received: from GVAP278CU002.outbound.protection.outlook.com (GVAP278CU002.outbound.protection.outlook.com [52.101.188.35])
 by mx.groups.io with SMTP id smtpd.web11.9774.1743674595412469471
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 03:03:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=CrlQkYSU;
 spf=pass (domain: vrag.ch, ip: 52.101.188.35, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XiqU5k0jOITmFojbQX5rqkU2zYAMG1TxAuhxKVCWcV6FGMbUQNoSo078t/ClJckANgglZgU7tSj+tKMtqz9CK1Ey3qZu89eRUmHCRbYKC7V/KbTrFxw5FhRc1EMiaan+IHnB9/iIecK7O8zQfR+utYnMsnTBqhzOigq3vOF6ve/G9UXAB1+0lSBj//9cTBG7d+xR0QeAz0aNiIeGZqmDEjYlHNynTMtEkKxc1SM/Q8C9bi1rauVT7CMZhRoGAt9dWsH+JbaBVIF6aicpjy44z77bgXWYiStGv950g/9SGP+3aKxSNpBC0J2U3OSa9MisE/8NuhmGHKL5cZcZoHjErQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgLNC+oI60Ns7B7SDl7WqmsAps2+JvrDblLuVYITyns=;
 b=k/Ikbp8lNckP0b8M3v5WxdMR5L3Si2hIfKWEsTtC3yzo3LR+2U7qQxdl2bMHUyBJR48KSeIDd9jQysGXeA8PHkciC3TXqwjo3gHhcX7xNGx4VWPo8Bf1EGSbN1x9enS767IkzrT254/oGG+Nls2aAqehoCImZtnzLJ3C1fXBK52a2EpJ8j4g5QuyluBCfTXxd26BoHj+SFkpAqcRQO4ydBlvKL4V6b6NY46RSu5fcPAyvtvcoLj4JIS/CWhlP1dmWj+abntW01OOncAobBlyvBXj+40y5uTjkZkK97B+xaIuvB48AVBKQhq+dO34Zisf+kS5hgEjr6LgohKsjA6dRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgLNC+oI60Ns7B7SDl7WqmsAps2+JvrDblLuVYITyns=;
 b=CrlQkYSUcKAzAqTT8YiadXpg4qU4t3V4R5nH+dLlg+HfkFS5QHytwJ8DKsB3PoLDzozIqPeFKuNmmF5/onWGzdLl4i6aNrvpoBnRITPabhJyzZMWlf3A6DwmVmSgdBkPYmtHVY/gPlqfiu2LY+Mz3hLZUs0BaToq4HssEt7fWPc=
Received: from ZR0P278MB0089.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:18::15)
 by ZR3P278MB1561.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:91::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.51; Thu, 3 Apr
 2025 10:03:12 +0000
Received: from ZR0P278MB0089.CHEP278.PROD.OUTLOOK.COM
 ([fe80::708c:b42c:5cda:60a2]) by ZR0P278MB0089.CHEP278.PROD.OUTLOOK.COM
 ([fe80::708c:b42c:5cda:60a2%7]) with mapi id 15.20.8534.052; Thu, 3 Apr 2025
 10:03:11 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Kernel build date does not get "updated"
Thread-Topic: [yocto] Kernel build date does not get "updated"
Thread-Index: AQHbpH8QLQaum6fGikaR+lL/AsKe07ORtduAgAAAXYA=
Date: Thu, 3 Apr 2025 10:03:11 +0000
Message-ID: <40cdfea3cddbebfdbea504e35cae04f4e33f17d9.camel@vrag.ch>
References: <ecb8282b96dc67c999ca1174abe57100d4847281.camel@vrag.ch>
	 <1a329184-4a2c-487f-9b2c-686cdbe5867e@cherry.de>
In-Reply-To: <1a329184-4a2c-487f-9b2c-686cdbe5867e@cherry.de>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZR0P278MB0089:EE_|ZR3P278MB1561:EE_
x-ms-office365-filtering-correlation-id: 5fe299b2-cb1a-4b32-d2db-08dd7296be48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UE1HV3QxTkg0ZkNRczhRRlY4dlNnUkN3SHNBSnV2Uk5BRGJxdG41UTNvTFU1?=
 =?utf-8?B?c09SNGxOd0VISjRLT2c0alFwZWVhY1JDaldiTVhFNVVEMmdjVDVmSnh3dWxV?=
 =?utf-8?B?NTBTaEZYdWhBQzN4RUNhWHBjT2VtRGV1S2IzR3ZmVktWWmhpTXVPSWlYY1Q2?=
 =?utf-8?B?V1hLOEZiYWpMUmtJNmMwY1ByNEdmYTJoWjc1cVQ5YnNNd2hKNnNrU1c0MVF6?=
 =?utf-8?B?Y1FNejhjc2NyYVVaQjlJdXl3TEdTcVlMQW1UWDNEUzBPeXFZbGkvMTBqbGZp?=
 =?utf-8?B?c0haMEVBUU5iOG5hS0dJVTZrL0JuMGRYMXhmeWdwT2dTcSs4dDhyWkoxdHlu?=
 =?utf-8?B?a1ZqeitlWVg0R1Z2eWZZbndONlM3OXljUWhobkRMbDlkYWM3OURnRG8vOVZB?=
 =?utf-8?B?VnJHS1N0RXU4ay9MaVZ5QXcxT00zd09PSjlKcEk5dWphU3p0WG82Y2JNbFRP?=
 =?utf-8?B?dkZPaWNJVjhPRHpDWkROUTl0WEJiN281QXZ2ZllQVXp3bnlqT3JEOG11SnBS?=
 =?utf-8?B?NG1KMmgxeE5tVFplblVyM2J5aStYZVhHQk9wcGVvYWJHOERSMEVwUVdqTDZx?=
 =?utf-8?B?TkZydG1LN0x2d1FYajRmZUt3ZVFRVjh0TmcwdzYyZ254eXRtZ0QxckRjSnU3?=
 =?utf-8?B?dk1ZRTZWMTZnUzZzdXphWk82YUIxbEVaWXBlSU10M0NRRUgrZEJIMUJueUpQ?=
 =?utf-8?B?U291bTViVDhkTzF5SjFlRkJIZm54WG9XbHV4RXNRTnRYR0pLS0crc1Z1TFk1?=
 =?utf-8?B?Y0pENi9seElXYXRlL0R0MGwyRlZHVFBXL3hhK3hKdWIxb0V5bU9GcUZ1LzNT?=
 =?utf-8?B?V1o1WCsxMTJ4K2dIeUJac3pnWlRyTnRib09NRTBZVHkyeE9iazBwbkZzZ0Er?=
 =?utf-8?B?R1lFTCsrdHRkWGEzK0NMTS82ZGI4TFJzVURGbFVPK1FWVWh3azkxZUt4c292?=
 =?utf-8?B?RUxvbkFRN21ncjNtbnZTczVxL2htNGpZcFR6cU43Z3daUm8wMFhvVUZsU0Jk?=
 =?utf-8?B?RUxlQmJoRzRlSm9UQlhTV1FINGpiRzhEb3ZFQlFaUFJtanNRZWR5bWVLMkF6?=
 =?utf-8?B?d1VJc3Y1ZGV0Q0g1ZHE4YjZqZTJJVjRaaExxNS92QVJrU0ZvamhFcWtPNUxa?=
 =?utf-8?B?V3VEWmVEM3dlMmFaUzMwenRlc0MvUTVqT1Q1QVNSUk5CcmlhQ3pyQlpMZ2w4?=
 =?utf-8?B?ZlVER3E2dHpqNmNOeFE0TDRneFUwTVJUM0doak5BQUdSQThVTGlabTFOWmtJ?=
 =?utf-8?B?RlBtYmFNemVjUWRtSXcxZnVmYUVoUWRKTWNGWGZic3ljNFRRUEZUemVqZVZr?=
 =?utf-8?B?MHBoUVd5clpac3h3ZHMzSUY3clZITE1xSnBRK3B3TDZxNGRJTGtyam5RaGU2?=
 =?utf-8?B?eFEwdUtiU0RXRkVlUmlGWFdmSFhZMi9GZ3VHVFJFcGd6dVB2S2J3UWwxdER0?=
 =?utf-8?B?ZmxQMjZiakRWL2hUMEZKRjZvdGVMY1B2cXNXalRPUHEyeVlBZ25sMERWRHBK?=
 =?utf-8?B?MVlCM2lNblpmd0xsUmJOaVNkRzRKaDVrcWdLL0NGRFdEZEZtWlB4NXdhcTlj?=
 =?utf-8?B?U1AxSUg2QXZDK1RmWTFONUxCQ1p5N202aWI2TnJ1NVdlYnNHdW9VOTNqM2ZW?=
 =?utf-8?B?TlpSNWtpamJ4NlRFdTZSaXhRUnV5NlVKbVRROEo3cFQvWFlQNU9GMnh3Z3B1?=
 =?utf-8?B?ZkppZVVFVmFNZU45eGdxK2ozWXg0TGZtS1BVZnJDVUpvV0NUeUp5UG5JUUtr?=
 =?utf-8?B?VFpJMUdBSXVMNTRXQTJyekM0ZmRiby83R3F1Z2JOcWhZNnFzbjlUL3E0Um13?=
 =?utf-8?B?NnpnN3J4cVpyNUNjOGhEVlhDS1F2SjVseWlCazNWa0JjVjBTU0RNTEFuTXVT?=
 =?utf-8?B?SjF6ZlMrN0hMOGJlM1Z4TjhhbGdYOFFIN0d2UXQ3YUhxR2twSUNFT3FJUjBH?=
 =?utf-8?Q?rjkQDSjZr93HKbsGuW7mXCCcUfYwr9w8?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZR0P278MB0089.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cnNGbGFrU0Q3UHZ3WVNVUXF1QllqREpCaXpBQ3FuMmVoSlF3Y3cwRzBJL2RS?=
 =?utf-8?B?b3hDVUF0QW1GS2hmOCt6ZU5ETEQxbjluSHRJSk9yMk5zZzZQK2dneUhhRFNr?=
 =?utf-8?B?M3JSd1dWUWJEK3FyOVoySWFUYjBMNVU3QU04UDNWVm9FMUZzZ2pxWUd1N0JT?=
 =?utf-8?B?WTRXYWVwVTFDWWF2THU3cHpGK25IZEtWekhLeE5FeS9TNjJxVnRMSVovd2Z0?=
 =?utf-8?B?ZlJWQ0lzb08rSUFDb2JtdWpGSXd4U1E2TkQyLzhzcTg0ay9uczREWERqRGV1?=
 =?utf-8?B?UnBBeEVTVUpmNHJxQzkxVkRHbzBReTFCTDk4TlRJaExabjNpZCtSRmVPOUN4?=
 =?utf-8?B?R280VkcvMEp1dk5GVGZzVERmWHRCWlNlS1NyZUlOb2M4c0J4ZERzcHJudnNV?=
 =?utf-8?B?UGZ3emZIaGJwdmY5d2oxTXB2T2VjU20yZjhRbVB6Uk90QVB5djVPdC93bnhE?=
 =?utf-8?B?RHhkUDR1RE9uS1NJMW5TVnpuM0s2a09kRGpaU1paVlFvWUJCRlpUeitNbFQ0?=
 =?utf-8?B?MjVNcXlVS1JROGZnKytwVW50b09qUGVyZjFEbmJaV2Y0d3BzbXljc3kzVTkz?=
 =?utf-8?B?RjUrTTR0dW0rc0tZRitTa2lMeHdidnF4dzkvNFZ4aGtjdmlzdnMwVE0xazk0?=
 =?utf-8?B?ZklSN0ZsMm1wU2tzcWxrNllwZVpIVWQ1Vmt5NmJhNm9tVjNZbyt3UXJXWlhh?=
 =?utf-8?B?ZksweStweWY4N080WkxYQndKYS9jNzRxRk5aZjdETUtkbXJHY2Jsd1JJZ0Ja?=
 =?utf-8?B?Y3EreWk3MjdKcEdMYW5sQWVEQUMvUzZPVnpKUTdsNGhvU0dyR21sc3FRUnAz?=
 =?utf-8?B?clRhK3Z6SVRRNG1DdVlDRzE1ZWhiRWphem9OM1VMbGlSVHFDei9qaDF0ck9Y?=
 =?utf-8?B?NTk1bnZoSTV1YWpKZGsrRXVpL3A4TlRBekRRSWVtQ3VkWHJpR3VrQ2VaQjNY?=
 =?utf-8?B?aWlSNWQ5MXhwbDEvNDBBdFZtcE80dVB1RlV0eW9rRWZ2NjdKcTRzYWVCVmJR?=
 =?utf-8?B?akhDRkRHUERYZUVlZlM2eFF0RzRUMmR0cDRSckk0Z3ExZUVScjc4aXFGY044?=
 =?utf-8?B?S2ZJcU9PSDVKSTBleEM1MUk5eHFrZTlNdXUrUWhXc1lOWmZMNGFra05TVUh0?=
 =?utf-8?B?aWM2S0J0RVV6cnBPRzBGYnB0Q0VyVGxRMlRUMnR6ODllRy81d2VWUUdCcFpK?=
 =?utf-8?B?NXFjVFphM1NCUUhPcUN2SGgrdGlFUlArZGpHcFFhanQ5YjFHRDNOb1ROdDFE?=
 =?utf-8?B?c09OMjNBSnYwVkdzMHJUV1NvTTBXWXkwNjJhSTd2cjhwZ3ZsQnl4UkdwUmFm?=
 =?utf-8?B?SnE5Sml1UEZXajQ1YlkzbEtKeEtvZGZrUW5ENEt5WlNHdlJBSldlVmFua3pO?=
 =?utf-8?B?MjBWdXMrSzQ4KyswTWpsMVZRblQ1b2xaSzE0UEpOemZ5NGxNMVA3TFNmZG9q?=
 =?utf-8?B?dW4wTitwbmFRMUNxWmNzR3VoSFVENmQwZVEvQi9wSStNYUczMTlQZStpRmR3?=
 =?utf-8?B?OFVNdlZNN1AzZnNMbGlJRzdsRno1SzdyZjNmQW5GM0hQMFlxNTRSNTN6RGxN?=
 =?utf-8?B?VWpuVTlSOFdlYWxpSjZsdUVmQkhWZXVzbjJZZ3VlZFpxR0Fnd0YxeDhJU1dk?=
 =?utf-8?B?ejZVYUl1MnlFcUFLdkRYTkp2K0E3eStiMlRGSmFNODdmaThYNzRnT2I1WEgz?=
 =?utf-8?B?VlhEMkFXaHdDUDJ4NGlsWGVtQytVbWU1QTNOeUJ1WDJLaGtzSFppUTFnZG9a?=
 =?utf-8?B?eXVEb3RmdmlYR0p5T1A1US9XL2V4NkdreHFKWmwvcmVtMUo2L21ub3FYRXdY?=
 =?utf-8?B?K3pDcitmRlByM3JzSm45a3h1WlVUUFVyZ1hYVEo2ejBpSlFUSXJJOTVJZm9o?=
 =?utf-8?B?bnhYcDlDNUlDZ3BYVWpFcm52dzU2VUcyU2FEQWltYUczQlZRYkpZSXIxUTdH?=
 =?utf-8?B?S2hwanlxK0ZocTh1cHBKRU1nN3hjazBKWlJPdGhQVkozVUNIVkZiMWtXNzFD?=
 =?utf-8?B?TE4vUGw4MEpaQzlGV25KNzNpYmthMnFUUHN2clBZS21uNVIzWGtjZTU4UXNl?=
 =?utf-8?B?Y3ZQYlpDVzFrdmdIc0dZT3NKMm12emx2cjU2MEcvcVRmUlI4aitvRFdFaThR?=
 =?utf-8?Q?Si9COKsuvxAengbaDz+zibnjm?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C4A3D84FE3CCF845B5EB6434C907B4DD@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZR0P278MB0089.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe299b2-cb1a-4b32-d2db-08dd7296be48
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2025 10:03:11.9231
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9RPPUAFt3eWMU0WcSwnA6pd8GJMveqnUepwJEz+9kmODT6+jRQMxM2+cxASoSJ4fXHUc0c1LsQxZTjNRNerQjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR3P278MB1561
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 10:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65068

QWhoISBJIGFtIHNvcnJ5ISBPZiBjb3Vyc2UhDQoNCkFtIERvbm5lcnN0YWcsIGRlbSAwMy4wNC4y
MDI1IHVtIDEyOjAxICswMjAwIHNjaHJpZWIgUXVlbnRpbiBTY2h1bHo6DQo+IEhpIERhdmlkLA0K
PiANCj4gT24gNC8zLzI1IDExOjU5IEFNLCBEYXZpZCBEYW5pZWwgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgd3JvdGU6DQo+ID4gRGVhciBhbGwNCj4gPiANCj4gPiBJIGhhdmUgYSB3ZWlyZCBw
cm9ibGVtIHdpdGggdGhlIGJ1aWxkIG9mIG15IGtlcm5lbC4gSSBhbSBjdXJyZW50bHkNCj4gPiBm
aWRkbGluZyBhcm91bmQgd2l0aCB0aGUgZGV2aWNlIHRyZWUgYW5kIHNvbWUgZHJpdmVyIGNvZGUu
IE5vdyBJDQo+ID4gd2FudGVkDQo+ID4gdG8gdGVzdCBzdHVmZiBhbmQgaW5zdGFsbCB0aGUgbmV3
IGtlcm5lbC4gSSB0aGVuIHJlYWxpemVkIHRoYXQNCj4gPiBgdW5hbWUgLQ0KPiA+IGFgIHN0aWxs
IHNob3dzIG1lIHNvbWUgZGF0ZSBmcm9tIDIwMjQsIHNvIEkgdGhvdWdodCBJIG11c3QgaGF2ZQ0K
PiA+IGJlZW4NCj4gPiBhc2xlZXAgYW5kIGRpZCBub3QgY29ycmVjdGx5IHVwZGF0ZSB0aGUga2Vy
bmVsIGFuZCBkaWQgaXQgYWdhaW4gLQ0KPiA+IGFuZA0KPiA+IGFnYWluLg0KPiA+IEl0J3Mgbm90
IHRoZSBjYXNlIHRoYXQgdGhlIGtlcm5lbCBpcyBub3QgdXBkYXRlZCBwcm9wZXJseSwgaXQncw0K
PiA+IHRoYXQNCj4gPiB0aGUgZGF0ZSBpbiB0aGUgYHVuYW1lIC1hYCBhbHdheXMgc2hvd3MgdGhl
IHNhbWUgZGF0ZSBmcm9tIDIwMjQuDQo+ID4gDQo+ID4gSSBmZWVsIGNvbXBsZXRlbHkgc3R1cGlk
IC0gaXMgdGhlcmUgYW55dGhpbmcgdGhhdCBmaXhhdGVzIHRoaXMgZGF0ZQ0KPiA+IHRoYXQgeW91
IGtub3cgb2Y/IEkgZG9uJ3QgcmVtZW1iZXIgZG9pbmcgYW55dGhpbmcgcmVsYXRlZCB0byB0aGF0
DQo+ID4gaXNzdWUuIEkgbmV2ZXIgdG91Y2hlZCBhbnkgY29uZmlndXJhdGlvbiB0aGF0IGlzIHJl
bGF0ZWQgdG8gYnVpbGQNCj4gPiBkYXRlcw0KPiA+IGV0Yy4NCj4gPiANCj4gPiBBbmQganVzdCB0
byBtYWtlIHN1cmUgLSBJIGRpZCBjaGVjayB0aGUgdGltZXN0YW1wIG9mIHRoZSBrZXJuZWwNCj4g
PiBpbWFnZSAtDQo+ID4gaXQgd2FzIGluZGVlZCBjcmVhdGVkIGZyZXNobHkuIEkgY2FuIGFsc28g
dmVyaWZ5IHRoYXQgbXkgY2hhbmdlcyBpbg0KPiA+IHRoZQ0KPiA+IGRldmljZXRyZWUgYXJlIHBv
cHVsYXRlZCAtIHRoaXMgZ2V0cyBjb21waWxlZCB3aXRoIHRoZSBrZXJuZWwNCj4gPiBhbG9uZ3Np
ZGUNCj4gPiBhbmQgSSBkaWQgbWFrZSBjaGFuZ2VzIHRvIGEgZHJpdmVyIGNvZGUgSSBjYW4gY29u
ZmlybSB0YWtlcyBlZmZlY3QuDQo+ID4gU28NCj4gPiB0aGUga2VybmVsIHJ1bm5pbmcgaXMgaW5k
ZWVkIGhhdmluZyBteSBjaGFuZ2VzIChmcm9tIDIwMjUpIGJ1dCB0aGUNCj4gPiBidWlsZCBkYXRl
IHN0aWxsIHNob3dzOg0KPiA+IA0KPiA+IMKgwqDCoMKgICMgdW5hbWUgLWENCj4gPiDCoMKgwqDC
oCBMaW51eCBiZjEzMyA2LjYuNjUtcnQ0Ny12cmFnICMxIFNNUCBQUkVFTVBUX1JUIFdlZCBEZWMg
MTENCj4gPiAxNToxMzo0MyBVVEMgMjAyNCBwcGM2NCBHTlUvTGludXgNCj4gPiDCoMKgwqDCoCAj
IGNhdCAvcHJvYy92ZXJzaW9uDQo+ID4gwqDCoMKgwqAgTGludXggdmVyc2lvbiA2LjYuNjUtcnQ0
Ny12cmFnIChvZS11c2VyQG9lLWhvc3QpIChwb3dlcnBjNjQtDQo+ID4gdnJhZy1saW51eC1nY2Mg
KEdDQykgMTQuMi4wLCBHTlUgbGQgKEdOVSBCaW51dGlscykgMi40NCkgIzEgU01QDQo+ID4gUFJF
RU1QVF9SVCBXZWQgRGVjIDExIDE1OjEzOjQzIFVUQyAyMDI0DQo+ID4gDQo+ID4gVGhlIGtlcm5l
bCB3YXMgYnVpbHQgdG9kYXkgKDA0LjAzLjIwMjUpIGFuZCBub3QgYmFjayBpbiBkZWNlbWJlci4N
Cj4gPiANCj4gDQo+IEFueSBjaGFuY2UgdGhlIGxhc3QgY29tbWl0IGluIHRoZSBrZXJuZWwgdHJl
ZSBpcyBmcm9tIERlY2VtYmVyPyAobWF5DQo+IG5vdCANCj4gYmUgYXV0aG9yZWQgZGF0ZSBidXQg
Y29tbWl0dGVkIGRhdGUpDQo+IA0KPiBXZSBuZWVkIHRvIGhhdmUgYSBzdGFibGUgZGF0ZSBmb3Ig
cmVwcm9kdWNpYmlsaXR5IG90aGVyd2lzZSB5b3UNCj4gY2Fubm90IA0KPiByZXVzZSB0aGUgc3N0
YXRlIGNhY2hlL2hhc2hlcXVpdiBzZXJ2ZXIgYmV0d2VlbiBtYWNoaW5lcyBwcm9wZXJseS4NCj4g
DQo+IEkgd291bGQgYXNzdW1lIHRoaXMgaXMgdGhlIHJlYXNvbi4NCj4gDQo+IENoZWVycywNCj4g
UXVlbnRpbg0K

