Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC51FC02181
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 07:51:30 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.108])
 by mx.groups.io with SMTP id smtpd.web10.6795.1737705085093989211
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 23:51:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=O0ZRGNqY;
 spf=pass (domain: cognex.com, ip: 40.107.243.108, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sYHgnuZmZENCRaWTpbQonMMibrUX8QVfG8jTLB4E7dAzBuUxpUj7nOGAmXsB6jbsSR0ZzbzbOi9EwO4iMQSS2lyHwayIxla4GFb98ZnlPTUW3T+94bl5Vpn+pZF7jPHhTll1B/WlKLmRYezgz1TTYY6KuMaCrDpt42YpUFXylH1VD4F8s9po80z0QL/8tU0xINnVyblOmS/iun7asiLmFOdrVdWklaX64GB7HrSJOb0SRaKl4sFkdAJ6jyBBM8mEK2NtI9zF/kugIP3Wjiju8xtHF0VmdIH+FQnIjtnplPNwZ9NXjX6vJUtBXCQ50OBK7SV9ZmB2WBvb++kU6W92yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sDpsrC/NIRrCoihzCTJRrmeZG7o2WlREocVcSdWmeiY=;
 b=fs6bqrxf36w1gpaET+ZH62orutYTPDQ1eeWHa2SoXpTv6tPCrpzoy+b/qtVde/S98rNFviWZIET3XaQXftm4ip3mBbNp8Ogea7AZVesMvOPlE1SP4MADPSgPy7Q+67rKkj85w2ILaR0Tkn+raqbL5eMtQQfGkD0mfPsa6Y7lwPYJy5gBcxKJmxhTfYFpGwgfwmnpeD2tQ8BvKNYurzkyoHCrzFWUY9AyrcM2B3HPURQTMHJDRdO/zvK6k6DyLF2t5DqZKHI6vIwqfMCWx/kQ4WcnRPmmyHtp/WmRQk1nOUwSIHtsqsGWqVTg2Z1QGIzSTJ2yM7hJ+ile78sJMOxw4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sDpsrC/NIRrCoihzCTJRrmeZG7o2WlREocVcSdWmeiY=;
 b=O0ZRGNqYsFOlbk/44XZWr/D6Uqfjea3fcBlvlTIbQ5tZHnQUehZotmGeUcmxRz32v3dhND9pZV4aXahNCAFXhcitqVdTF/666aJ4s0q3D5hHroOGhCPwtePVBIOR0rwUQqW+hu0R93LQ7Maqmp95tp4pqMDJLpCUf/aBPDhW+vjB7Ky9EJA3m6+r4iU0w6Pr/wUCeF8Jhhe+d2eKB0jInM3pceRfRRorMDmrYalpYbkrPYtzFLW3kRYXxdpZu3Zs0ESHyd7vx2by9mWDkD/tR3IJidI/IZ3Nj2rFReOsNN+xZV3thGqX5/iqcXMNDAJo8Y2/57EqzdYn7lBdBLXpdw==
Received: from PH0PR06MB8334.namprd06.prod.outlook.com (2603:10b6:510:bd::7)
 by MW4PR06MB8991.namprd06.prod.outlook.com (2603:10b6:303:1a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Fri, 24 Jan
 2025 07:51:21 +0000
Received: from PH0PR06MB8334.namprd06.prod.outlook.com
 ([fe80::7:e620:17f2:48d7]) by PH0PR06MB8334.namprd06.prod.outlook.com
 ([fe80::7:e620:17f2:48d7%3]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 07:51:21 +0000
From: "Westermann, Oliver" <oliver.westermann@cognex.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Correct implementation of packaging for bootstrap
 packages
Thread-Topic: [yocto] Correct implementation of packaging for bootstrap
 packages
Thread-Index: AQHbbWrFpZC6x6qESUyJ1G+cVaAI9bMkqDeAgADkZGA=
Date: Fri, 24 Jan 2025 07:51:21 +0000
Message-ID: 
 <PH0PR06MB8334BD23BFF1BE4C67BE870486E32@PH0PR06MB8334.namprd06.prod.outlook.com>
References: 
 <PH0PR06MB8334DE2E662CE8FB9FEB387686E02@PH0PR06MB8334.namprd06.prod.outlook.com>
 <CANNYZj-TfBpVCs6oJughDWdxpvA79aVoG0tmKfRPdr3F7ZfwUw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-TfBpVCs6oJughDWdxpvA79aVoG0tmKfRPdr3F7ZfwUw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?utf-8?B?TVNJUF9MYWJlbF8yMjBiMDVjOC0yNTM3LTQxZTgtYWZmNC1mYjZjNTIyZjk2?=
 =?utf-8?B?MjRfQWN0aW9uSWQ9ODIzZmZkYjctNjVjNS00YjMwLTkwNjUtZGJiOGZkODg4?=
 =?utf-8?B?MTJlO01TSVBfTGFiZWxfMjIwYjA1YzgtMjUzNy00MWU4LWFmZjQtZmI2YzUy?=
 =?utf-8?B?MmY5NjI0X0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF8yMjBiMDVjOC0yNTM3?=
 =?utf-8?B?LTQxZTgtYWZmNC1mYjZjNTIyZjk2MjRfRW5hYmxlZD10cnVlO01TSVBfTGFi?=
 =?utf-8?B?ZWxfMjIwYjA1YzgtMjUzNy00MWU4LWFmZjQtZmI2YzUyMmY5NjI0X01ldGhv?=
 =?utf-8?B?ZD1TdGFuZGFyZDtNU0lQX0xhYmVsXzIyMGIwNWM4LTI1MzctNDFlOC1hZmY0?=
 =?utf-8?B?LWZiNmM1MjJmOTYyNF9OYW1lPUNvZ25leCDigJMgR2VuZXJhbDtNU0lQX0xh?=
 =?utf-8?B?YmVsXzIyMGIwNWM4LTI1MzctNDFlOC1hZmY0LWZiNmM1MjJmOTYyNF9TZXRE?=
 =?utf-8?B?YXRlPTIwMjUtMDEtMjRUMDc6NDM6NTVaO01TSVBfTGFiZWxfMjIwYjA1Yzgt?=
 =?utf-8?B?MjUzNy00MWU4LWFmZjQtZmI2YzUyMmY5NjI0X1NpdGVJZD1jMTIwMDdhNC04?=
 =?utf-8?Q?82b-4381-b05a-b783431570c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cognex.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR06MB8334:EE_|MW4PR06MB8991:EE_
x-ms-office365-filtering-correlation-id: edb8324d-2962-4722-300f-08dd3c4be4a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?Z0gzRHlGcG11VUI2WDRQaVlzb0kraCt6dW55TUtoeWxFd3hrdzA0UkdUcVdl?=
 =?utf-8?B?eiszTitYSjF2U0tLQWxxYm5NSmk2L1VDUEpuc0RMb3ZtZFc1U3A2bVpxaXZL?=
 =?utf-8?B?T05sc1RXY3dBRUhzNjRLaUkxZUU1UDBieW5wamllNjdxY0V2REpCRWlOMEg5?=
 =?utf-8?B?N05JT0Z0Mk9pTWZWQjFXNWdFTUxvRytxWnIzYUc1Uk5xL290L1NRZ1dkL3JB?=
 =?utf-8?B?WVgxNGJ5VkJ3MnF4eStxT3BDa2pzOGJHbS9mRjdORmYySzAzS2R4QTkxeE9l?=
 =?utf-8?B?N0NLOHgwVU1VeTFQeWVVenVEUktUNHRXL3hUYW5QTEpkU1hxM1E3MVBpeCtl?=
 =?utf-8?B?U2M0SEhjM2xIQi81RWJ6TTJlNTJZNnI5SFNkY29QUjdsZkhETGtsYmlvaGpp?=
 =?utf-8?B?OG92RllkYVQ1SExDL0pCM1ZhNlpmcy9RNjJSRXEyRVdDZ0pZUEdaZE95V21Y?=
 =?utf-8?B?c3g2OTIvdE95b2w1Q2t3SW04dFNRNURsQ1ZIclJhWUx2V2EvaWc0NVU4bHpD?=
 =?utf-8?B?T0RLcXpMM2hLakZoSGQ1UVo4M1pNUGdyc1I4NjFKb3Z5WEJ3VDY0aFJ3VThB?=
 =?utf-8?B?WlNFWDRIa2xTUjVZMEtKRVZZc2dWZmM1T0dVWEd6Nm1DcmtVY0Z5aVdvNGU4?=
 =?utf-8?B?bjBuTGQzZWYxNTJpQWE0OFBESzVTQ041SWdLcTUyQ3pUYnlrZVRKYWVwN0pO?=
 =?utf-8?B?RjllZkFhOGhaTzd3TmJraHdTeXBtbGpUb3FDV3NwV1V3WXZNd1lZRHVsS2tv?=
 =?utf-8?B?OHJUQU5QVExsUllsRkxBM1llc0crYWxGZ01mNHovMVRsZXpjbDdWeklFRStP?=
 =?utf-8?B?UmpyZTVKUGwvREFBV2p1RnRNODNKY0cyZm1rQ0lmcUhmV01INDJRelBxTUpu?=
 =?utf-8?B?aWhlNFZMZHltM3NXYVlBQndEdWc5VGJEWUloclFOQmFIc2UyOE02M2JCc2t3?=
 =?utf-8?B?MzJ0MWUvSnVvWktaYzNGTFdBQVV1eDFQNnVjNW1zOWgwMWxtcXY5R2Y1N3FT?=
 =?utf-8?B?bU1YT3BxYmdsOURKMmxXT3diZzZWV2lod2lTR0U5V1VNTE9iMzJYNG1zMnZh?=
 =?utf-8?B?R0tRcVl4Y1VVci9TWlJ1SEpGalhnUGNTK05Xb2pZVEVXMGZQczJVclEyVmRO?=
 =?utf-8?B?VDFaOVVra1JuZjVuNWNycHBJK25aUlZUcHBoYnRKSitXRVFNLzJ0WWxZYXFI?=
 =?utf-8?B?eVhBdWdyV2U0Uk9uUnBxUk1vYVQ1VmtscjBNaXZhOE5ZNHVFTEdOZE5oRkxE?=
 =?utf-8?B?bWFqV01UVk9DV3lOVmV4OUxITC81dXdrQUErUUhqMzVxSVBnTnQ0QXF0R3lO?=
 =?utf-8?B?YnRiczZlTXBnWm83bUM5dnZLbEFqMDRnbmlsOHlPbEhHRDBlNUpkZVpZaHdJ?=
 =?utf-8?B?Ylo0ZGRoZU5JTGh2RnFSZzdRTGdiOGY0Y3lrMUdVRUt3MmQyMXlFMzN0bFRs?=
 =?utf-8?B?ZkNYNW42TlE1OTByMHZYVGNJQ0ZEWUlYQ2s4Q2NKZXdkTG1ZU1FWek1JbnBt?=
 =?utf-8?B?cy95Vzlrcndya0dyOGNNc2ZEc3luSTV2UHR5THR2ajRNUG96cFRDcFUzSjR5?=
 =?utf-8?B?V1VkYmFCNHJRaDB4bFpXb0IvYXpod2dWUUMycXZpV20vaW4wVkVlbkt0ZWNj?=
 =?utf-8?B?WGc2RkZYQTNKaWRaTm4zRUFiMW9KOWdMT1lNVnV4N0hhaVNiYjJXcVpxT1Zn?=
 =?utf-8?B?cm9Nd242akhTcEpGZ0lMZTUvLzFMZ2ZlVGJvbzduNDRaajRXVHhJTGkxZUZz?=
 =?utf-8?B?Z0pYUkRtRlJJeHVZSkY1YzU1WWJJdEE4VDJpWkpiczZsUnM0SUNnbWVJU1Bm?=
 =?utf-8?B?Z1VHNk1rYW5ZS3BoaG9leXJYYlpnMURBR1RRUE9yTll0cWlBQXp6VGRxN1Rk?=
 =?utf-8?B?b2dqVzMvTXhJZWxzaVh1MFRVYzU0b285OHRBbjhqTmJ5N0hPMlZXbnFGaU9P?=
 =?utf-8?Q?KWA+LjP0wPnAY7DaO3VdIOlAI/iZnKej?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8334.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Q1Bnb2I0dkpsRWZVeStYczRNMkNhUmlGdnV1UU5mZnRGbGxTVG1oWkJrVHhn?=
 =?utf-8?B?Z1hkenIvQzhoaDBHd1RHVG1iMVpnQUZERTVkbXcxOC9uUGFYcFIyRkhSSk9J?=
 =?utf-8?B?eThNVUI0ZGthTnZtM1BubmM1dGJJZFRWOTFaV0ZRUUpIUG9oVXFIZUh3ejQv?=
 =?utf-8?B?RW9RS1F0d0lzMGVnOXJZUEs4UDdUT0tPYW8rZU5KMHBNWTFLbVFBQUYxK1JK?=
 =?utf-8?B?VlBzWlovUjJHakYxOHJ1ZkdOQng5VDFsZTYrTFQyaE03bEJLNVgvMEExTzlM?=
 =?utf-8?B?S1VaS2lvd2FtVkxZSGNQNk5PcmN0WkViMVlpaUlmTk1Pb01PcjJwUFlvL2Vs?=
 =?utf-8?B?OFhYdGF0akZXZkhvK3grM01BWTlibGNESW1MMDNCUjdyQmc4UitBWGxCYm5w?=
 =?utf-8?B?ZDQxYUdyTG9BV3psRGFmSGJSMHBKaHd5UkRyckYyRUEzTk0vaW93Kzl2eXVZ?=
 =?utf-8?B?cHJDK1IzNFlBM0o3MFVJWXkxYzdEWGl6V1UyY0FBVVEyMENtRVdwQnZxZWN4?=
 =?utf-8?B?aVpPdThBZnV5YVFBVm5BVHNVdmV3UmZIYWQvU1oxNG5tV1hUZVZpWnQ1SmtT?=
 =?utf-8?B?M0Q5V0trKy9sMlZtVnpYeFE2aGdlMmxENGdvcGpVaHdYekE2UkJNVWpwVlZ3?=
 =?utf-8?B?NHU5RWhFMk1PUTRUMlpoR2FoMjR5VGtEa0JENm0yYjVpY1hwSjlaYzVrMDhh?=
 =?utf-8?B?clJRanhhclRuTEJnR0ZWMEVlNkJPeFg1NjQzNDVsUUl2YWtsaXM2UDlaSlo2?=
 =?utf-8?B?RmtHc3c0Zjd6MTRiMjdiRTFOb0NDdVNuUWtFQTVqL01sNEs0TENnYnY1RE4v?=
 =?utf-8?B?S0cvYWVOYzJaRHNLYU5uTmVkR3lBSTJEWkkxN25XRWhTcHZYYVlDUTBRYmpQ?=
 =?utf-8?B?SDhNZWZEZGpEckJBWkJJNFBVMzZNSGZGR0tsdFJFNUttTUd6Vnc2WnpkOVd5?=
 =?utf-8?B?UEJmKzJlbm1qSkt6aDY1dERaa2djS0RqbFphSnZ6Q01UNEZYdFlna25sajJ4?=
 =?utf-8?B?SHNsNE9yalc0RmRQdE1Wbkp5UWFQZm5hNGVHWVp2Zm1lb2JsSkM1d3ZLK0hE?=
 =?utf-8?B?RlV0QStmbDkzcXpaRHoreGR1b2RqdlRueExwTEh6cTdLRG8rUTVPM0VJUTVx?=
 =?utf-8?B?MnM0OUk0bklrSVVObVlLRFhiSS9KVTI5VGtSakNEcUNhU1drYWZjVlRsalpF?=
 =?utf-8?B?aFRmUlJnT0pTM2xla2U0WDdzL3B5Q0hrcUdkS0lsWUdCVXI3ckJkRERkdEdV?=
 =?utf-8?B?V0hjRWR6U3FpYnBwNzhSUFdWNWV4bGhBWS9sdFBvOTlGQTVObmNkbFBlT05w?=
 =?utf-8?B?WVdwSUdrWUx2anlNZVFXQVVjcnh1TjVuNUpGL2VLYWFMam96YkR5ZFdVZ2xT?=
 =?utf-8?B?RmEvQjMwVzhlTGxnaHFxei8zRFovbkwrb0k3aFJiYzlUN3VKVVpUY2kySVdm?=
 =?utf-8?B?M3YwTGU5SmovcXFENFdob2ZkZGN6TGtkek9Iek1sekV3dmIvcFJDZ3RQd01W?=
 =?utf-8?B?RktuYjFSbnRtTTluZlcwNFNrSzRrRDUxZG44TVlNQk5LWnFYa0VCUks5KzIv?=
 =?utf-8?B?eC9pb1VEQjhYcWc5d2JidGc0TzgzRUNFcnl0L1J6Y2o5TjBvVldVT1RwRlBD?=
 =?utf-8?B?RUUrazRkbENoU3doeU41VXJkQU1yRC9Na08zcHl5S1E3UGd5MGtSV09LT1E4?=
 =?utf-8?B?YmtuWHFYbjRnRDREem9WNkNmbWw4cUt1SFlnYTViSXVic3pxT2ZJemVlYlJG?=
 =?utf-8?B?MVJoZ01HbVZhbzQ4Y2lXL2t5V0hBb1d5MUQ4Rm52N1Y0K3pXazdmTDV3anJ6?=
 =?utf-8?B?cHJVOWh2NDMzM3FtREx5dmRUbmFTN21XbFVXTjcvTFVqQnFDSW1JbmQvVVVN?=
 =?utf-8?B?U2ZCa2FBQUg0b3pxd0NNcFY4OHp4MVo4UmxuUFhqV2dCRVVjbnQ5a1doVFJN?=
 =?utf-8?B?RGJlZXFBN2VJVzFyMTdmMStFTkM1NFRaVmx0Tm9TQm9jRzBQRXJhUGZJOWxL?=
 =?utf-8?B?NjIwdTBBa3F6OE53VThzUndkR2lJblRKOHh3WXZvaCtadlNFbmxxc0g2cGdW?=
 =?utf-8?B?T2pNWkNJZzBIRDZqLzZ0dmoxSGpSOEJ6OXJyV3FtZ0FFVForT0l1UWRLOGdm?=
 =?utf-8?B?ZzlvK1pMRVpVMlFTdjhQWGJQN3MxNFRTNDdSSS9RdlJNTFBwOHJuUUk5M3Rx?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8334.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edb8324d-2962-4722-300f-08dd3c4be4a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 07:51:21.2491
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uBJAWRDqXrP/8hbnF3XMGEjbG3GPgwViSr2z424tO+upNNixs9ECAk6BuxXm0d1kkjt6Sw37vE4PIAcu8sD2ppFrV3k6tMCd+forHRNfepw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR06MB8991
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 07:51:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64621

Pk9uIFRodSwgMjMgSmFuIDIwMjUgYXQgMTk6MDYsIEFsZXhhbmRlciBLYW5hdmluIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPk9uZSBjb25jZWl2YWJseSBjb3VsZCBpbXBsZW1l
bnQgYSBzb2Z0IHNldCBvZiBndWlkZWxpbmVzIGFuZCBhZGQgdGhlbSB0byBZUCBjb21wYXRpYmxl
IGxheWVyIGNlcnRpZmljYXRpb24gcHJvZ3JhbSwgYnV0IGFnYWluIHN1Y2ggYSBwcm9qZWN0IGlz
IG91dHNpZGUgb2Ygb3VyIHN0cmV0Y2hlZC1iZXlvbmQtdGhpbiByZXNvdXJjZXMuDQoNClRoYW5r
cywgSSBleHBlY3RlZCBzb21ldGhpbmcgbGlrZSB0aGlzIHRvIGJlIHRoZSBjYXNlLiBXZSBzYXcg
dGhlIGRpZmZlcmVudCBpbXBsZW1lbnRhdGlvbnMgYW5kIGFsbCBoYWQgcHJvcyBhbmQgY29ucywN
CnNvIEkgdW5kZXJzdGFuZCBpdCdzIGhhcmQgdG8gZmluZCBhIGdvb2QgbWlkZGxlIGdyb3VuZC4N
Cg0KPiBUYWxrIHRvIHlvdXIgdmVuZG9ycyBpbnN0ZWFkIGFuZCBzZWUgaWYgeW91IGNhbiBtYWtl
IHRoZW0gY29vcGVyYXRlLg0KDQpXZSBtaWdodCBub3QgaGF2ZSB0aGF0IGxldmVyYWdlIG92ZXIg
c29tZSBvZiB0aGVtIDpEIEJ1dCBJIHRoaW5rIHdlJ3JlIGluIGEgZ29vZCBwb3NpdGlvbiB0byBj
cmVhdGUgb3VyIG93biB0b29saW5nDQphcm91bmQgaXQgdG8ga2VlcCB3b3JraW5nLCBzbyB0aGFu
a3MgZm9yIHRoZSBmZWVkYmFjayENCg0KT2xsaQ0K

