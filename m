Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41225C02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 09:19:51 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.26])
 by mx.groups.io with SMTP id smtpd.web10.65348.1738919984563803971
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 01:19:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=tpzDwd1c;
 spf=pass (domain: siemens.com, ip: 40.107.159.26, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LYs1MpHUbtG4moc2Bacok9n4mjb4SFudYpbvVvP3Lw6D0zyWwbZGHKYqKW90uDu5tVPRgE0svl2EDyyToA+Gl/vvHGuthtz7tH6DHy2ULKc6l7tIEWWA83iuTK0l2ayGSN6sGttPjKLEP9/FMvbG/2vfHNTeu1TS8KTZinjZ7qVWuiqxXKWoIdVft6biB1peR1MKc+lhghDXLiROjpG0nFLbHDQhAb9TdIiQP3eKFaQU8lXoNxq2nkDDrCkGX69311/01+Hx1Sj2HUhdxqf64zkPrzo2T3niupYAmMw+C+9ijoNdpveU/wauepEl1WcwB614fvjlS1vSljSrjePaJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqL3AjMDuI6FOsEUBDCYby7bfI/H+qhqAxGxKTUwL14=;
 b=Ol0DJzWWaUzANgQHGh8KAHF0D3yvyrfd1mA3rqt4yGjsvbb2VaRv8Rcmo0Edo7woHo6J1WMrt0+CvX6O/LknNupBHiq2xqUitOT9NZsEoWcvqjaai8MSoMIQ7mfLAL6jspJh9U2+QmUhZVUYNiyzvU19myY0P4caf9beYOfqfDsX7oUM56DrSLMKpp32HiarS/npNO/B3cDNfQ1H+gc+KBxD/+3+NFsnI0CX7ZVm9GgA4l1gcUeXZwPOogs44y6rPY/29Yh2SJzC0vafrrf4g3ijEXKgdgpjYSRZioRm4tx/JhbXFAnCi7qgycoY5NZDU5FfYhDt5jJcHvA4TSl6aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JqL3AjMDuI6FOsEUBDCYby7bfI/H+qhqAxGxKTUwL14=;
 b=tpzDwd1c0IBwf7Hbs5cE7aFSPj/n/NynCsG6vgqLnIQQDgZzGcKQdjtlAzyDLBB2WG0+FJZ6TjO+KolFxyI7oelLHfoB19la+M8n4gnzr8Iue8a3fPpB8MZijnWacN5+sl3jEfDhfAJkpRIh8FCk2vPsbhXNSap2aaPlO0TZq+leqPPm8oUkY9sJ3YuzScCFRBWD0gs7Llk1rQrP6ZZXV7SZkvR4UDc0lzldDS7hVWfUNCgTIzifE9YNX7de2ofrlmJ2JQgCqs1w58qNnZVlFSQpJ0wNms8UPa7X/c8vmIgEgd0WIPJ8kf1Bu1rhns5H88YP/MJ0gHWkhEzpz1i3MQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by AS1PR10MB5413.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.6; Fri, 7 Feb
 2025 09:19:41 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%4]) with mapi id 15.20.8445.005; Fri, 7 Feb 2025
 09:19:40 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"emailaddress.ashish@gmail.com" <emailaddress.ashish@gmail.com>
Subject: RE: [yocto] Any way we can reduce openjdk-8 in yocto
Thread-Topic: [yocto] Any way we can reduce openjdk-8 in yocto
Thread-Index: AQHbeUDB22uE3fn/TEWJwtYwWpGXfrM7kC0w
Date: Fri, 7 Feb 2025 09:19:40 +0000
Message-ID: 
 <AS1PR10MB56974C02C17D8541C12333E5FDF12@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <F61g.1738919689609106644.0tm4@lists.yoctoproject.org>
In-Reply-To: <F61g.1738919689609106644.0tm4@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=70c29ce2-af8b-4895-a575-8b67b8c43dd1;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-02-07T09:19:08Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|AS1PR10MB5413:EE_
x-ms-office365-filtering-correlation-id: 2e8221b4-e10e-4bb0-19da-08dd47588d49
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?Q2RQYmpMM0Z5Sm1HeFl1RVlPa1ZuU3FabVpGMnl0NmswbFFJZ1Y3b1BWTUFr?=
 =?utf-8?B?dURrUmxON1R4WjBHZFpnZ0U5bDd3MERYOWJMR3FJQmxNbHZBK1J0bHNKSVJG?=
 =?utf-8?B?YkpSYmdzclM2c2JsN1JTMU9aY3ZjQzhDdlptOGJXckh1VWNCMSttd0NWRDhP?=
 =?utf-8?B?aFdveERSb2RJcVcvdnUyblBOMVByNGdldzlURDlQNENwZDhUUFN3dVA2bldQ?=
 =?utf-8?B?SExLV242OUZuRkh5a0JtM3k3d2krSmJHSzhpOXZHVXpwb2lnYzRvTFZCTDNJ?=
 =?utf-8?B?aEZtRE03akQzRDU5TGlvdFV4eS9MSG1WRWN6a2tqMVlvckhrRzAvMHVUSm9q?=
 =?utf-8?B?NXZZOVRuT2srcU9CaFRIcnViYjJKcHJVMzlWTitCaHJoTXVlak5DUSs5OGd5?=
 =?utf-8?B?ZzA4WktXSVZpdFUrRnd6WnhCZTVNS25QbTNvRGE0VlRaL1oyVkdKTWRYVTh2?=
 =?utf-8?B?U2hYRTlwK3p6V1BLYkh3RzdMYitkYWlhSDNEQWpqaGQ4NWtxQ2ZubUsrT1Ra?=
 =?utf-8?B?MllDRjR0SEFMa1o1dnI5RkM1SUVMbGt2RmZXSFJMdE1pYiszUU5LV3dTK0dK?=
 =?utf-8?B?cU43QWp0RW9kYm5sZytwZHE1WGZkSkVBR09ra1MxcEdaL1R2dFdxcmhZZEFv?=
 =?utf-8?B?ek5qMnFOelg3UUpoa2E5R0Y3Vis5NWFuckJ4UDJwYmo0WWxROUZPUmJOalhT?=
 =?utf-8?B?b0hGWEh1QjJZQnh2d216NTNZZ1hqQmpmM0RnZU80a0U3aTYyQmIwc2l0RTE5?=
 =?utf-8?B?VTlBTzJBYUY2WmQ3QS85TlVDYnZZSXVBQlArV1N0bVVhVkRnaGw5ZjhFd0FV?=
 =?utf-8?B?K096VXFoeXVjUkJ5U0xSNjlmY3lXWUdCT1QyTDNRM2RmbjlocCtRRFZGaVZC?=
 =?utf-8?B?NW43emhINDJiakJhT1I1QUlYTy92czRDSjV2bzdKRFA4UXc4MDNLTVp5VDdz?=
 =?utf-8?B?TDJ0UzNZQVBub0JsSVE4ZVQwelh0ZTdwcXpSOXlZdnk5QXJwQzloemNqV1JO?=
 =?utf-8?B?TU1GNE83UWU0RVorNVltVjhEYkJvU0Z1S3pHTjVQRUQyaVNtcmFaMTQxNUts?=
 =?utf-8?B?NFZVRzRQOUp2THZ3N1VLcndNRTg5dkdFc2FMUitFSTUzNFBVbU1Nc1BxS1U2?=
 =?utf-8?B?WEVveHZueGFVTmlLbGhZTGZQcnR2SmxIM0ROV1FUL2ZkZENjZ0JYWkJYZGdt?=
 =?utf-8?B?YUtGd2I5LzNzQzVreC80QjVNcW9oYkFJWUt5VUZJY0JtQldwWlJvZVpMSjFI?=
 =?utf-8?B?NDRWbTQwZjYzUWVBbmF3Q3dZNmlyL3FRMGpvWUZjdG9EQ3FQa0o4b3NFTU8z?=
 =?utf-8?B?WUl3ZkRsd1lJVjRKNDR2VDFrVGJpLzBCMENvYUZCSW8xUzZLUzhIaVE0eG9L?=
 =?utf-8?B?a0IzVzhtWmwzRWhWS0hiS2F6T3V5MzJPa2FnN21TWDdnZUUxK3N6UEMzNlhH?=
 =?utf-8?B?TTBPSXN5TXhQZVZVNjEyM3lVOGJOQnlwUE56UzVBNWNRN0pOTldxcTY4dEI3?=
 =?utf-8?B?b28xLzAyZlhzdWdWWDdCYkRPMDhHQWZYamJDYlJSSXd2RnpycjBrSDJCdGtQ?=
 =?utf-8?B?NVpVTEtseW5LUkdlV0h2THhwNUFIZ2RsZG8rc0NmUlVGUFY1d2kweHE4Mk0z?=
 =?utf-8?B?Zy9OTmdFRzRXNXF1WHk2ZGpySTJVTFB6ZkxLQkpkR0htYWJweHR6aWo1RWpl?=
 =?utf-8?B?dk51QzRvWmg4TEJCZzZHeGIrVnZlb3llNjdGTC9uT3NyUlkvYlBkRUw1MlMv?=
 =?utf-8?B?Y1c3clg2N3pKRWYvaHFwdjN1c2o5akc3Vmk0bTNIVk9KV2N0dzFYaWU0d1Rs?=
 =?utf-8?B?OHphTGxLTjZMM292RCtHN3A2ZzQ2U0E4SlRyNjg5cEwxUW5HcVVVK0RqZ0JX?=
 =?utf-8?B?TjFGdkh1YXY3WHJ5aG1JYVBDU2lzdVRVejNuSWQ4bmJZT3VvVmhPWWhINFdP?=
 =?utf-8?Q?v7JEBOZV5vrTF0NdSF+BA3DURu+L2V9Z?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cDdMTy9JbFBWelpXVnpHcEdacWM2M1ptL1hkRWRJMHp0THRjemJYZGowSmxX?=
 =?utf-8?B?dVpvQ29sTnQxbWVYOEdlQVBxQmp0Z0tDV2p6R0RoUzR2dlVPMEhleFQxTnJB?=
 =?utf-8?B?WHVldllSM2ZkQk1QZEtueDVuK3dVM2N1ZzQ4WkQyb2JVd09oLzhNQTVqS012?=
 =?utf-8?B?TWk2N3RVcEgvaWdKeWZRNEFKbExnWU9IZldKMGRRMlMwbjNDeGsrWmU3eE0x?=
 =?utf-8?B?OGlzaWRFcmtlOXUrcWtldEthQ1F0c09rNm1TK1FUVWluTmxHMGFTSEY2SFpu?=
 =?utf-8?B?T2lkNFcrU0trTGdIYVhEV0R3WjdmL2JJYTlDNjJsdDRoVUYybXNQVDREZ2dS?=
 =?utf-8?B?cllSTklEaXhSTlpqV01mejdUakFOUFJKbzZXQnc3QkorWC9OMVBESHgzNW9R?=
 =?utf-8?B?UWRJUUpyRFpNem5Uc3lYOWdFSUtlcWE2M3d5RHE3K2xNc3d5YkdScTJOaFlR?=
 =?utf-8?B?NjlpTUF3SmZ4STU1TmJ6eWlmNWEvNDBnUElKWnIrbUh3T1ZpODRkcUlKVlJz?=
 =?utf-8?B?dkhJNDNxS0FicTdRWnBaOEV0MGE3Tlh0RUlYTnBBRWI4R2pGTVU3RGs3dG04?=
 =?utf-8?B?K2JDS2lJTVR2OHdsZm5tQWZvM2VzUmkvSDI3UWkrVy9nSGJicXl0Tk9mUjB2?=
 =?utf-8?B?dzNtQ0ZEcE1MVDVQaFYwZHJoTWFJVmd1cVh5b2l6anR0UG5CMHo0andzczVJ?=
 =?utf-8?B?YVk0U1pyZEZUUU5RWWxWVnM4OE9iaHlwQzczRWFlZkl3MHBlYng5TVNWVnFW?=
 =?utf-8?B?OGlBZ3RlWnVvb3AvaFFKdWJ1eUhBVnZaYnQwL3EwZlByR0oyRUlqbE5GOWR1?=
 =?utf-8?B?NkFQK0RSK3FGaHVOZmhqOExLeTI3MXV0ZGUzeUFEVzh3dzlyNC93WEsveFFY?=
 =?utf-8?B?WlF4a3VwR1M5SXdjVlM2bTJOMHFYYWJQT013S3VqRlZEejI4QThid2VsM0Fj?=
 =?utf-8?B?VWNWeDhaMW9vQjJ5RlExd2QybkUzOWNEZU4vZkNIVHVDMWVyWW9jUktOYmJB?=
 =?utf-8?B?bmVpencvWE5vaFRrSjh4VC9paTZXZWRjbWxkTGFpWXJIS0xqNUxpRnQwK214?=
 =?utf-8?B?REl3MFQ2cUdpV3RkYXRGdzBnOUlpbEFyZjJXcTArcFpUR3Q4YldyVFhTV1pM?=
 =?utf-8?B?U0RkZjBQU3NycGpjMHV1SWRGQVg0SnpwY01xYWM4QTNkN3VxK2s1dklkcXpD?=
 =?utf-8?B?ZmVCYVkvd2xLYThrRkVVUGhMUU9HbHF5dFFESjgxK3VBY213azIzZFBtMUFW?=
 =?utf-8?B?VXA0T0F0UE1WcTE1K3Q5bWR0N3o3eHNnbkE1RW1EeVoraituMCt1cUd0TkZm?=
 =?utf-8?B?NXptYTIvQTJUMkxvZ1d0OHpEcUZOb3lUbkt5OEI4S3B1cUdsWHdFeGRRM2Zl?=
 =?utf-8?B?SU5GUjB5a0ZoZjdzZXpkSVoxUGUrV3N5cURqMFF0SC9zL2g1c2haL2hONk9o?=
 =?utf-8?B?MUlLOWE3NGxQT2RZczdTeGZybTFVS2J3YXBpOG9LTTVqZEUvUjFQSlRKSjdR?=
 =?utf-8?B?L2E3N2hBb3dkVE5UbmJaS0xUT1pEUU5hRGdSQTJjbUJFam9renlDTE9PSndN?=
 =?utf-8?B?cFdkUzd4dTFNSndJak55bXpyMVNPU2plTE1VV2N2MWlkcE10WmdHQ1BSMGdY?=
 =?utf-8?B?ZGprQUxuMzJsVlJZYUx0OFhGeStDOFM0Q1BNVS9uVkE2N3lSZ3NoajJ6dmI0?=
 =?utf-8?B?NFhvMm91c0M3L3FDMzlncTB2dTk5M29jbGVsOWpUM0p3a1N3dHJRWVpuc0Fs?=
 =?utf-8?B?eXFQdGFIbmJaamt2NmVyUEhXV1RrWldHUUczR21RL3RBbTZCTjZHcW9wN3Vv?=
 =?utf-8?B?elVPNUZidTF0RTFVUnZPb3VpOUdlbG5UUGV2MEpOR1lKM0FWRVhHV2NoTHZ4?=
 =?utf-8?B?Z2kyWUUyMGFpczJaYi9iYU5zQUhJdFZuNlludUxGL2FuaEhBVWsrakpaYmNh?=
 =?utf-8?B?bmV3ZTMwdVNVWWI5WGhaQzR6ajZSVXdGNWJKUVZJNEhYeEtDMkVMUEZHSGVp?=
 =?utf-8?B?R0JMRytTUGp4SUJ2TGZHbGRkaHVBZCt2clh1c0wrdVNrYitFR3Z2SnRHWUJt?=
 =?utf-8?B?Z3VaSkdWS3A3OVB5OVB1MC9jYnoxUkNjcVhvRmZJczBYR05OYUVBMGlaOERL?=
 =?utf-8?Q?A99zjiCIdDPGDWcSOYDzSxx4w?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e8221b4-e10e-4bb0-19da-08dd47588d49
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 09:19:40.8928
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qmnJzY4C6nHafGspPSYSr5FgcVh1DHptCYcj+k8ooWBY2bLA36EGhXCkuOFsrueJyV/f4kLbpUZSaWhis+J4Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR10MB5413
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 09:19:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64741

WW91IGNhbiB1c2Ugb3BlbmpyZS04IGluc3RlYWQgb2Ygb3Blbmpkay04IGluIHlvdXIgaW1hZ2Uu
DQpQZXRlcg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJl
aGFsZiBPZg0KPiBlbWFpbGFkZHJlc3MuYXNoaXNoIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgNywgMjAyNSAxMDoxNQ0KPiBUbzogeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbeW9jdG9dIEFueSB3YXkgd2UgY2FuIHJl
ZHVjZSBvcGVuamRrLTggaW4geW9jdG8NCj4gDQo+IEhpIE1lbWJlcnMgLA0KPiANCj4gSSBhbSB0
cnlpbmcgdG8gZ2V0IHRoZSBSRlMgc2l6ZSByZWR1Y3Rpb24gLg0KPiBJbiB0aGlzIHByb2Nlc3Mg
aSBzZWUgd2UgaGF2ZSBvcGVuamRrLTggY29uc3VtaW5nIGFyb3VuZCAxMTcwMTggS2lCDQo+IA0K
PiAxKSBJcyB0aGVyZSBhbnkga25vd24gd2F5IHRvIHJlZHVjZSB0aGlzIHNpemUgPw0KPiANCj4g
MikgT3IgaWYgYW55IHBvaW50ZXJzIHRvIGdldCBKUkUgaW5zdGVhZCBvZiBKREsNCj4gDQo+IElm
IG1lbWJlcnMgY2FuIHBsZWFzZSBzaGFyZSBhbnkgcG9pbnRlciAvIGxpbmsgb3IgZGlzY3Vzc2lv
biBvbiB0aGlzIGxpbmUgaXQgd291bGQNCj4gYmUgaGVscGZ1bC4NCj4gDQo+IFRoYW5rcyAsDQo+
IEFzaGlzaA0KPiANCg==

