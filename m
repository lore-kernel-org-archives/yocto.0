Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03A71C3ABC9
	for <webhook@archiver.kernel.org>; Fri, 16 May 2025 18:23:37 +0000 (UTC)
Received: from ZRAP278CU002.outbound.protection.outlook.com (ZRAP278CU002.outbound.protection.outlook.com [52.101.186.58])
 by mx.groups.io with SMTP id smtpd.web11.20197.1747419811013521751
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 May 2025 11:23:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=DGCWL0yZ;
 spf=pass (domain: vrag.ch, ip: 52.101.186.58, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h9RVanIs7wNCXGu0oAPBTN4tZXTV1qiC//2h9WetMdOL7aj7nI/DBA4QJavBOnbq0qKUyMwKGIjnmUHckwItFRTdATZCNfR9qOedpoE1vOgwixC/x3iaz7h+L2vB41I9yhmlEsn0fW0/NIFkfJZ2Q/cT6fWZlgj4LfbBJMlo4uGimpyarROK47nFbusOPP/kvj/KVPPpuzQcI5ERvti34WOVCXIvV6tgW7FGa8tKQD4eyo3MNpZj7noHb1nFaBMKDgMnweQ6rignZ4DR8hBYwRvfjcRf1/mNOobHXZqJHv+OKkjLsjaLyf+9QJcz6TFnaDe3QuIt94PA7c+0TEs2YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67A/yM4ATWR8kOPm8ZZVSYET+4dm/Aq9XaRe5mHhlCw=;
 b=u28t7Hd4Q2I9o3RZ2Do69Nar8EUe94wwSe8SDGdxthOhUqTB35x3wyEnt3/oQTmqKnzF9i4dAVKKtDGh55XXDwP+7Y82EZJVcHG5u+cbugAtF/BNwpLplmO/HW0uro04tXpsP0A8ndLXuwAdMTkJcaLmj3mlvQNkgNufIXlD8+IelLxoSAomKEGvK6HvJjrG8OfpGyonk8BK/fJHoqjEiXGtkujabfHK3GtLXh1ZBUjzTPNemyc3zW/ytxY1ApS4MIpQV9Tp4GgEtbGRhfzKoeG1UotRRyeLXxBGKGfbLzG6+eBxuv3+9mgXyDluzAisc43uui/wrbi9XvH5KRTXFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=67A/yM4ATWR8kOPm8ZZVSYET+4dm/Aq9XaRe5mHhlCw=;
 b=DGCWL0yZ30Or1Mdf+GZmYAyeGVzvDG9IZdjbZp7cNLxORqsNGuQDBXon2wzQ/Yh4hRseYic9OjLEEeMlhImo7ZYBE2jdGp96SAvDDm95QpDI2BAp9BKyRbhxaRxN3Ossw4TSkPr6I3XmuUWxqP0onnJKYAV5IOtddKNqa5tmZjQ=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZRAP278MB0096.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:12::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.24; Fri, 16 May
 2025 18:23:26 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%3]) with mapi id 15.20.8746.021; Fri, 16 May 2025
 18:23:20 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
Thread-Topic: [yocto] meta-mingw - how to use the SDK on Windows
Thread-Index: 
 AQHbwMANXJRkQjpFCUi9lPjpQkS6CrPKNh0AgAAk8YCABD6+gIAFIU0AgADC0ACAAR/JgA==
Date: Fri, 16 May 2025 18:23:20 +0000
Message-ID: <8bda1ec8e555c5faf1cd56a0c8b623238c4cd7c5.camel@vrag.ch>
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org>
		 <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
		 <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
		 <183EB64B80205975.2891@lists.yoctoproject.org>
		 <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
	 <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
In-Reply-To: <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZRAP278MB0096:EE_
x-ms-office365-filtering-correlation-id: c74b033d-098c-44d1-d4e0-08dd94a6bc8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?MVRBekxMNFJHZklxb3g2cEN0YmhHanBBZyttb2xUUUtNNVBhRXlYMkdCWVlq?=
 =?utf-8?B?c0VUaVM3U1o3QkVzVkVnOVBCMTB6d1pUTlpUN0dzdDhWZ2JlQTV6Nmw5QUc1?=
 =?utf-8?B?WFBBSE1XbWhMWkhJaHJCV2UvQkJTeGFnZ3B2RmdEZU9FNURZQWkyTVVHSU5i?=
 =?utf-8?B?eW5SZkhlZWQ4cTJMUlhZZHNMWHVzNWdTOWIvUG9YYWRmaXFSaXBaQkNsNGNN?=
 =?utf-8?B?WkFHaVoxaFd1ek5ubUJ4YXB1b2xiNUZFcHhUZU5ScUFqK0VvclRNaVcyVjll?=
 =?utf-8?B?bStnTC9UY2dmeXpzTy9xdk9KSG1DZWxZMldRZE40cks5NzNlZEY3aEE4TmNj?=
 =?utf-8?B?WExCMnU5bVBybnlnNXREbUlydlRSR0pPMjUwUW5yUVBNMUVORkY3SjllUEhl?=
 =?utf-8?B?N2Y1OW9EZDA3LyszaWxmSEpaZEM1c0tpOUo1bzNXUnk1NEpGNkhnSXgwa3d5?=
 =?utf-8?B?THVBSnBJRy9IMnJUS09MM1I1SnN0dzd2UTRHdWtNSThvZFREeFYraWFUOWlu?=
 =?utf-8?B?YkFIMjU5ajdrOGdGczNXaExHWWFKdThCWUZQaG0yYllLTG5yUjEwcWQzZ0wy?=
 =?utf-8?B?RGdMdWlnRkhGVnV4TnFtN1FzWkd6TFc3bU5XVG9CbXkyaE5USmFMSHJFWk1w?=
 =?utf-8?B?ajdWNjVYVlpGWHFiaTlzV3VWMWk0UUNhZGh0SlhFOE1mRXVUcE9QcDJDWm9L?=
 =?utf-8?B?T01rUTJ6UmxxTWIxSTd3UGFXaEpVdnZkOEFWZkY1SHlDaExsVVp4bGhjRXhU?=
 =?utf-8?B?TkV6TlFsa1YxMDhaWDFLMzhBcjhYNUMxTVFEVkhDWC9VazY3cnNuczI3RE9H?=
 =?utf-8?B?UlVzdnJ2ZHlrOUtLbjY5aVc2Mmp2L3dxUjBFc2tPckFNdXd2cWVIeG9QUHRM?=
 =?utf-8?B?N1RmMGNqR0U0ZnFKbkJUcFQvN3Zib0lsd3JndlBXeTgwSjBWZStqZWhvbFdI?=
 =?utf-8?B?eDg5aFQ2MjBQYmNmQmZoT003dGhhcEo3UlNJbjg3cXpZUmJJM2VDYVhrR1U4?=
 =?utf-8?B?aHBOSFVLeUR0THhsOW1mUVpnUlhjWnAwNkxMMGp4NXMyNkp0Nlp1K2ZRalZs?=
 =?utf-8?B?MitHZy9lTS9XajNkRnhjRE1PVGJsR083VjR5Vk9xekI3ZEJQWXk5TkZCMXBp?=
 =?utf-8?B?dG4rOC9rQlY3S2M4bjVIeEtVNUEwZnBMT0RqdkdXWDdOZGliRjVGMWFSeFY2?=
 =?utf-8?B?ejNabVYzUmx4RnlCcitwMFV0SFNzMU91blVlRWg4RXUrMVAvWnJ2RUhDOXdV?=
 =?utf-8?B?VE56UEd2dkZJVFZkUVJwa0hqb3A5QjEwWERvOVZ0Ry9ZRXhIUFdtMUcvdlpa?=
 =?utf-8?B?c1dhZ3BGN1RpelFKbTZ1Vk5kUXpjTEFzdTRkbmY4K2xnbksxVm12dHFGYUdM?=
 =?utf-8?B?MFA2ZzExN3JyMnc2TElHT1VRdzlEamtwV2NVWlNLcy9neFJXTnBWODVJbmpY?=
 =?utf-8?B?Z3d3KzF1eUtCR1Q4N3FJMlhFZW43TWE1ODhJZkkvd1V5YUVtYkI1cEVQWXRr?=
 =?utf-8?B?blhZUlpBb1pLZWJjRmk2eDVHUnkxSlZXRGYzMkZ6NDFETTFHMWRMMytLM1Av?=
 =?utf-8?B?ZWVoaFM4anVYemoxMVFQYURpUjhaQVNYb29IcDNvYW8vd011WmtOQ25QQzI0?=
 =?utf-8?B?QVM1MDYzZjdyL0UvSkROSHpRbS9ZZTF4ajh2dnlDTnBGQTMzZU9qVzdlMUlq?=
 =?utf-8?B?aHdxQTZLM1F2SC9QTExzUi9GbFJFTm5EZWdzTlNNTTVSS0NwOTRYS1hINlVq?=
 =?utf-8?B?UmUxVGdBZm85VktPRCtpMExJN0l1RXZ5c00vMGRWejFlL1NTc0NMZVJBTzFa?=
 =?utf-8?B?b2cxTzYrNmNia3l5SVFYeHh4Y0VLMUZBSThIVDNCZm54WGh3RUdCL1NWQVVL?=
 =?utf-8?B?UzNkOHZEVVBsNFE4S1o0bDMzVWt2VHdZNDI5VzVqWlFNYWJBL3hkc285cmJk?=
 =?utf-8?B?N2RsY0d2V3k1VWdIbXhpbitTa1dIbVlrTXB6czlyOUtXeFRhVEtCVGRHOTl1?=
 =?utf-8?B?ZGVDMUNpUU13PT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VHl3SElIT1RWUEFuQXJQdzcyRlg2aDFkNzUva3Rzc3BnRmNONEpnWjJyeXU5?=
 =?utf-8?B?bTVzeFJ2VWpWaGc4ZTBuek9aQktaZXRIdUw2MmVyR1NrNm4yL1ZpL3ErdWJs?=
 =?utf-8?B?VTFJYW4wYS92TGUyaFU4enNMMURjc05XUVdtTlRISm1tL2d2TG13b2JpR251?=
 =?utf-8?B?WGlNaEQ1SWg2ZDdqdWtBR3hIK2Z2V1RCMUtQWlBOQ3BPRWdkTTIyRTkwRVlm?=
 =?utf-8?B?MmFZdUtyWGhIVXBOT0x4dlJMTUNWN3hsdmdvb2sxUmtwVDMxem52T2p1WDVy?=
 =?utf-8?B?WUtjRk90ZUZkQjNCeTNQeUVKdEk2UE02eExKUkdWVXhPQiszZkwrS2d6OVFL?=
 =?utf-8?B?MzZ5RU0rSStlSk9QZjJveStvOXNuUDdPSjlsOWJmSHZWejB0M0ViNDE3blAy?=
 =?utf-8?B?bHVEcHFUQ3pHR0Q1d3ZOeG16bmdFY29OY1dacHJYVEFvZ0dEanlqRFVzVGZG?=
 =?utf-8?B?MHVyc0ErMzMrWlV5Rmw5OVdzTFRWd25kbll3L1VsbDQ0ZjJzN0tEY2dVMDlI?=
 =?utf-8?B?M3NGejZpcU1HSjJtQW5FaEhEbEwyZHN2YlJWMVFvUlRYRHpYVGlHUm53WC9l?=
 =?utf-8?B?Z1pZYjJ2NlIvVmMzQlNLWXlGYlh4VXl5azlSRVdUYmpEOHV2WS9SQmVPc3BW?=
 =?utf-8?B?SHhjMUxtK29NZjc4b2pBMzRZTUoyWEZGTlh6QmRQRlhrK0ZYMmkwdG5UdEww?=
 =?utf-8?B?MjZ1MVBxSnlYN2t3cXgvV3FwZExISlF6U1pXTFkyZFp4RXkxcXFzeDFDODFV?=
 =?utf-8?B?dWRUTHdEYktlalpYM0MwVW5lVzJieENJZHg2Qmc3YmpjVC9RT3BFQ1Rnc21P?=
 =?utf-8?B?SmV5Ni80S0h4MU1SMlFYenZoSHhJN3AvM0pYS0I5eVlqS3ZRSU5xVUJVMjlO?=
 =?utf-8?B?Yit2MHRQSHJwNlRJRGhzUDhvcjV2aVE3ZEYrZS9rU01td1RhMkN6TnVBVUJ3?=
 =?utf-8?B?clNUUUpsTG5BcmY1NUtBZjZlMkllMzF1bFB1cGFLeWJZeDNnbnFYYjZZNEEy?=
 =?utf-8?B?YU9hcGFHazhSSVcxWCtSbkRZaFV1cEVyUEZBVmhISi84NnhKVDJlZ09udkZG?=
 =?utf-8?B?aGxVWUF1a3ZXNGJBYlg5NG0xZ0QvSFpabHFoZWpUamo3MHZxVUhWZktoV1ha?=
 =?utf-8?B?N0pQbG9haW1aUGt6elpEZzN5UmhycU5hTmFXbGJ6TVlPdlB0Qnp3S2FIQUxt?=
 =?utf-8?B?NHZHenJoVlpGNlg4WE05Q0w1TWZ2WTd3VHdiUU9BSWRsS1lpekZBUjVJVEJr?=
 =?utf-8?B?cXhBelB2bnlWSTlqWFZneEZlUk85NjI2TFVla0tNVU43VExIY2lvZXlFMHRk?=
 =?utf-8?B?bDRFOGNDUUx2aFAwT0ZBNUlmbk84U2ZvYW5kdG9MKzl1Mm5BVXNuTzJOLzgz?=
 =?utf-8?B?Zkk2RVl4L2ZTVkVKQmZ2dGJKcmJMdEo3Z212Nk4wdEsxYlEzREVTREhMZmhk?=
 =?utf-8?B?RU96VEVaT2lDRmVSNEJBaGlTbUVKOVBpUGJDMnYyWTNsbngwbWQwMnRtQ2Z5?=
 =?utf-8?B?bGhOc250c1RSSXFoUGVtSnNqcGhRNThjRU9CZ0lKV2dzZnAwbUtDUC9hL1U0?=
 =?utf-8?B?d201bFdpSFNQSVIzaWZGdGJyS0xqSmpEN1c5bWNvNWYrdmk3MmwzajcxWnA5?=
 =?utf-8?B?RFd0cjcvNWpyMnBaMloyNHdjTEZMbXVOUXM5VWdKOUVLN1NRcnprY0hIYWV2?=
 =?utf-8?B?Uy93ZWg5SjJ5QlhNVmlzRFpRRDAvOHoyYmRhUHdPczNKNUdiM3RWTTczNDdU?=
 =?utf-8?B?cWRLRUdSUXJpY2JpL3hBRDJmeFB3Y1VhYjRYa2ZWdVhuem1HU0gybVJ4bXU5?=
 =?utf-8?B?aC9HTHUwRnFwY0ptTDZkV0p5SVh2L25JcHJYL0p4ZFREZnZ4MEJsU2k1THo3?=
 =?utf-8?B?RER4dGpLOVNyUElzUlBBZWdJanloSkpTVFZoZnVFYzk2aGVGZitvR2hNTlBT?=
 =?utf-8?B?RTlXNERMbmUyNHpOd3lZd1Voc210aEFyaDlrUlhOTEd4MDdqOURkSytKaHgz?=
 =?utf-8?B?MG50TXVGT1hGS2hCTHgwV3Zhb0VTZHVEcWtPTkNma09WRk5hVGNLZnFBZGhk?=
 =?utf-8?B?VVhoWDB4Y1hFTHpwZS90Wnp4QzYzYTRwTTlYSUw3WHk4aVR1NmpGazY1T1p6?=
 =?utf-8?Q?uUy8ajX9vza3bQZYRKdNqkKPS?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <572A358407EC934FA2210565B8EDFEE6@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c74b033d-098c-44d1-d4e0-08dd94a6bc8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 18:23:20.4933
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /I1WeCfxE+l56eaTkynPFLRmvVnFR44v6EZ2+r7ArflzjzQrAdZJOA6Kg1avhRFt5RFj/vd0hw6DH/s3f+BruA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZRAP278MB0096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 May 2025 18:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65348

SGkgTHVrYXMNCg0KVGhhbmtzIGZvciB5b3VyIHJlcGx5ISBJIGRpZCBleGFjdGx5IHRoZSBzYW1l
IC0gdXNlIDd6aXAgYW5kIGV4dHJhY3QgYXMNCkFkbWluaXN0cmF0b3IuIFRoZXJlIHdlcmUgc29t
ZSBlcnJvcnMgY29uY2VybmluZyBsb3dlciBjYXNlIGFuZCB1cHBlcg0KY2FzZSBuYW1lcywgSSB0
aGluayBvbmx5IHNvbWUgaGVhZGVyIGZpbGUgbmFtZXMuIE90aGVyd2lzZSB0aGVyZSB3ZXJlDQpu
byBlcnJvcnMgYW5kIHRoZSBzeW1saW5rcyB3ZXJlIGNyZWF0ZWQgc3VjY2Vzc2Z1bGx5Lg0KSSds
bCB0cnkgYW5vdGhlciB2ZXJzaW9uLiBXb3VsZCB5b3UgbWluZCBzaGFyaW5nIHlvdXIgdG9vbGNo
YWluIGZpbGU/DQoNClRoYW5rcyENCg0KS2luZCByZWdhcmRzLA0KRGF2ZQ0KDQpBbSBGcmVpdGFn
LCBkZW0gMTYuMDUuMjAyNSB1bSAwMToxMyArMDAwMCBzY2hyaWViIEx1a2FzIFBhbG1lOg0KPiA+
IEhpIHRoZXJlIGFuZCBzb3JyeSBmb3Igc3BhbW1pbmcgLSBJIGFtIHN0aWxsIGNvbXBsZXRlbHkg
cHV6emxlZCBhbmQNCj4gPiBzdGlsbCBzcGVuZGluZyBsb2FkcyBvZiBob3VycyB0cnlpbmcgdG8g
dGhlIHRoZSBXaW5kb3dzIFNESyB0bw0KPiA+IHdvcmsuDQo+ID4gDQo+ID4gU2ltcGxlIHF1ZXN0
aW9uIC0gcGxlYXNlIC0gSXMgdGhlIG1ldGEtbWluZ3csIHlvY3RvIGdlbmVyYXRlZCBTREsNCj4g
PiBmb3INCj4gPiBXaW5kb3dzIHN1cHBvc2VkIHRvIHdvcms/IE9yIGlzIGl0IGp1c3QgYSBwbGFj
ZSBmb3IgdGVzdGluZyAvDQo+ID4gZXZhbHVhdGlvbj8gSSBzZWUgdGhlIGxhc3QgY2hhbmdlIHRv
b2sgcGxhY2UgbW9yZSBvciBsZXNzIDIgd2Vla3MNCj4gPiBhZ28sDQo+ID4gc28gaXQgc2VlbXMg
aXQncyBzdGlsbCBtYWludGFpbmVkLg0KPiA+IA0KPiA+IElzIHRoZXJlIGFueWJvZHkgb3V0IHRo
ZXJlIHdobyBnb3QgdGhlIFdpbmRvd3MgU0RLIHRvIHdvcms/IE9yIGRvDQo+ID4geW91DQo+ID4g
cmVjb21tZW5kIG5vdCB0cnlpbmcgdG8gdXNlIGl0IGFsdG9nZXRoZXI/IA0KPiA+IA0KPiA+IFRo
YW5rcyBmb3IgYW55IGhpbnRzIQ0KPiA+IEJSDQo+ID4gRGF2ZQ0KPiANCj4gSGkgRGF2ZSwNCj4g
DQo+IEkgdXNlIHRoZSBNaW5HVyBTREsgb24gYSBXaW5kb3dzIDEwIG1hY2hpbmUgaW4gbXkgY29t
cGFueS4NCj4gDQo+IE9uZSB0cmlja3kgcGFydCB0byBmaW5kIG91dCB3YXMgdGhhdCBpdCBpcyBu
ZWNlc3NhcnkgdG8gZXh0cmFjdCB0aGUNCj4gU0RLDQo+IHRhciBhcmNoaXZlIGFzIEFkbWluaXN0
cmF0b3IgKEkgdXNlIDctemlwKSwgb3RoZXJ3aXNlIHN5bWxpbmtzIGNhbm5vdA0KPiBiZSBjcmVh
dGVkIGNvcnJlY3RseSB3aGljaCBjYXVzZXMgcHJvYmxlbXMuDQo+IA0KPiBBbHNvIHdlIGRvbid0
IHVzZSBhbnkgc2V0dXAgc2NyaXB0IG9yIENNYWtlIGZpbGUgZnJvbSB0aGUgU0RLDQo+IGRpcmVj
dGx5LA0KPiBidXQgaGFuZGNyYWZ0ZWQgb3VyIG93biBDTWFrZSB0b29sY2hhaW4gZmlsZS4gQmFz
aWNhbGx5IHdlIHRvb2sgYWxsDQo+IHRoZQ0KPiByZWxldmFudCB2YXJpYWJsZXMgZnJvbSB0aGUg
c2V0dXAgc2NyaXB0IGFuZCBwdXQgdGhlbSBpbiB0aGUNCj4gdG9vbGNoYWluDQo+IGZpbGUgYW5k
IGFzc2lnbmVkIHRoZW0gdG8gdGhlIGNvcnJlc3BvbmRpbmcgQ01ha2UgdmFyaWFibGVzIChlLmcu
IENDDQo+IC0+DQo+IENNQUtFX0NfQ09NUElMRVIpDQo+IEJ1dCBpbnZva2luZyB0aGUgY29tcGls
ZXIgZGlyZWN0bHkgc2hvdWxkIHdvcmsgdG9vLg0KPiANCj4gSSBzaG91bGQgbm90ZSB0aGF0IHdl
IGFyZSBzdGlsbCBvbiBraXJrc3RvbmUsIGhhdmVuJ3QgdHJpZWQgc2NhcnRoZ2FwDQo+IHlldC4N
Cj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gTHVrYXMNCg==

