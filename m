Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA90C2D0CD
	for <webhook@archiver.kernel.org>; Mon, 19 May 2025 11:15:33 +0000 (UTC)
Received: from ZRZP278CU001.outbound.protection.outlook.com (ZRZP278CU001.outbound.protection.outlook.com [40.107.167.26])
 by mx.groups.io with SMTP id smtpd.web11.48718.1747653328485670851
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 May 2025 04:15:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=i4nVWhwj;
 spf=pass (domain: vrag.ch, ip: 40.107.167.26, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wArrqcp91wG4TIoizCYBr0cZ7wCgII2V17VHHjYiNq8VSohQWMkK+qT/0PzcTxXrTCPOHJlrhjVBtq7KRs9BIhsWAcQNhW28HAHDUmIMqiPsCENe7gdBSzkcimL84xC8B49pq69kQryVDAGTxkg0jT5QAT6uKrBRXAJR6+HwNBHLlzb85zEI27dr+emZZxhfKPrPRGR3hUBkger7IyrGHJpXCvj025hsWnN4gfgCBH5uT+uIb+TBTgAQbcJO01cb9ZThHoKc/1WYkwlgdqrEKBmEVNEei6ImxnPxMrYqkqnV6SXvNKyuK7NEr2D1p+2J2fRAHCuNiZKHfxEHVtJq1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32RHgnPwsebc+zk/c+nSsPUSPjvdhAOiI7W6AHAE8Ww=;
 b=mdVHYwCJL+i0V0oxiaNBJtINnByjWn5DEe4TNES8iclspwFxuN38I1QvPE0giB2EkntrPTNWhQ5QT7NzbEwlD/VRiBx3zxVsQyZmnA5cJAvPrN+gPQZCez9SeLoRqmnFh5Q+1vivG2q1WhnATK83Szs57J7Pi9WuGo5ngBwx9cUYf7h8+7YKcPtXmezTxiUi5ycM5PfRqJ80oRZsk52peRrQ6eIwA/ZfAZa4QQRV5Ouo5HqOMD6+Kh86qsRwGIxPI07ebH4u/x9lV1zmT8hl7fn82tgw9LnusnMTofMQrNPEYPwPUe9LvZO2sqLGbW+w9eTPVowitUiDmBYmud5uRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=32RHgnPwsebc+zk/c+nSsPUSPjvdhAOiI7W6AHAE8Ww=;
 b=i4nVWhwjirZZCBsTjS+V5IXce52ZQCpLu6YpYuHKkr2LqCr6G6mxI6JeJWtm0BIkRZJfTYiaftUmKWAJSVgK4F42Fr8ZGtDHntGSuDjmbDkhqRImuXGp315lg6zqirNi0YJZSDxoYqgSbhcgyxaDGrYHuSLkJHIQyeYf0hKaNOc=
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:21::12)
 by ZR1P278MB1522.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:9b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.17; Mon, 19 May
 2025 11:15:23 +0000
Received: from GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd]) by GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
 ([fe80::9006:220c:1d6b:47dd%3]) with mapi id 15.20.8769.016; Mon, 19 May 2025
 11:15:23 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
Thread-Topic: [yocto] meta-mingw - how to use the SDK on Windows
Thread-Index: 
 AQHbwMANXJRkQjpFCUi9lPjpQkS6CrPKNh0AgAAk8YCABD6+gIAFIU0AgADC0ACAAR/JgIABpfgAgAKZbgA=
Date: Mon, 19 May 2025 11:15:23 +0000
Message-ID: <5b28fc32a118971618d06ff536646e6fd6eb3884.camel@vrag.ch>
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org>
				 <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
				 <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
				 <183EB64B80205975.2891@lists.yoctoproject.org>
				 <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
			 <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
		 <8bda1ec8e555c5faf1cd56a0c8b623238c4cd7c5.camel@vrag.ch>
	 <d2d64ec2f57da19164d7c4ae607d15cbe886c900.camel@posteo.at>
In-Reply-To: <d2d64ec2f57da19164d7c4ae607d15cbe886c900.camel@posteo.at>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0085:EE_|ZR1P278MB1522:EE_
x-ms-office365-filtering-correlation-id: 65577edf-e6ad-4399-6882-08dd96c672f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?RVMxNGFZNHU5ODJaNWQzdDJNZi9LSm1RQjdCKzVXMmhRM0h3N3IyWXpLcWdM?=
 =?utf-8?B?UEFMRWR4ZnNzREdTL1JHZmRTdXhaSGNaMmJoKzRMdFZTdi83bDlOQ0p3b3ds?=
 =?utf-8?B?aytIMmRLWGw0amZvdE9nbCtJRld1eGgxbU15Q3FsTWY3REJPNGFRMFh1RXp5?=
 =?utf-8?B?Z0RZZloyaS82R0s1amprM0hRb3dndEF5UmxHWC9ZUG9YbFoweFAyNHNubkRM?=
 =?utf-8?B?dkw3RWQyQXloUVhqMTdTdkVGOG9JbWVBNEZ3M255ei9IVXJpcHpQTi85NUla?=
 =?utf-8?B?QTdNcGlNcExZMm9mT1luR3Q1YmFhbFRXN1ZXTisrSStsUlBZemVuS1RWNGJr?=
 =?utf-8?B?eDZHQjNTVnl6ZEptOUZ0NFYzdEZCR0l6M0wzU2lhR2F3ZFI1Q2t3UldVdEIy?=
 =?utf-8?B?S3VCd09LSzJCOUJlcnFkRlladEZxVGQwbnZSaHlwQzM2RllWVE5NalY0NzFk?=
 =?utf-8?B?cWlIcExxNU0yak1rbWJYQjYvN1NDS3o2M2dPeE56dzBzc2dlcWxkWXAzL3pB?=
 =?utf-8?B?aisrRC94NXFJblpINysyZGQ4OXVjQzRuNGt5RW5jOUljeTgzTk5mMUpWTVVZ?=
 =?utf-8?B?cWJOTGFKNG9QMmhSSEE1R2NRTE9sU0M3K3U0cFhGS3ZSS1lRenBscUtiMno0?=
 =?utf-8?B?bFYrcldEYU1jRmFuMDFGQm1qZkROVkdyTHRZMXZ5SnhDTzkxSjhZcHVkOHFm?=
 =?utf-8?B?aTk0djFmeDMvTnZrdXkxQ1AweWFZMVQzVGFMa1FDTXd0YXZ2LzZ3bEc1ZXJj?=
 =?utf-8?B?Rm5uTzVWTkZQSTFaT1d4WEFIM2g5ZGo1OGtyNFJHaG1PcklwTVZRdFZkWDV0?=
 =?utf-8?B?dnhmcFJBQmdyOGhLV2RmSjhvNmlQWVdISzZmUzFoUlBqbWt2Qk5rZk1SQVQ0?=
 =?utf-8?B?Z1FhUFh2eHdrMkhHUC9talhXb2xFa2JpNlNOYjN3QXIyazdKU2pGYXFKK3o3?=
 =?utf-8?B?UUM1TndtaGVpR1JNUWp6ZWliUTVJNGc1YmNNeDQvalRTOU5iWjlEK0JRQjR0?=
 =?utf-8?B?a0R5YytSdGxTNXdtUGpzOXUxMno2d0dhM25MWm5jRTM2d1FHaExVRWw4Y3Nt?=
 =?utf-8?B?NGNkKzF5Z2FWVG0yNSt6RkxJOGtKZFhMSkJFaGdnUGNJSUp2NjNveUlGc0RT?=
 =?utf-8?B?UjdsaWNnOFh1UW14NXlaNFBXM214aWFDRlF3eFVPWG1vUThKdFZQM1Y1Tmg2?=
 =?utf-8?B?N3VrWWxHWks1MDlITnM5WHhHQVFNR2tNY0x6eU5xTkt5WGdrTUFwcllzQmZM?=
 =?utf-8?B?VTBjdnc4QThOTitMWDVxaEtZNzU3SHpuSW9SWlN2MmxVSTlxekVuMHhGTVV3?=
 =?utf-8?B?dnZTZGptQmVvN21GY1hpdFNrNjI2NlNyRGs2SmVRQ1d1NTkzVDNjc3A3eUEz?=
 =?utf-8?B?MmlLd0JPN3p1UEtaQ0F6VWRrU2J5azVRSEdYNFRjOGFuOGhKK2dWK0R1K3VF?=
 =?utf-8?B?M3l6cUNXMUpyN1JGRmZyN1RrUGN2Y1pPekthdm5uZ05PMTNjU1crR2tURnNw?=
 =?utf-8?B?djZjU1VLYjZ6OWNGU2VNdEU2VUMzOUNnL2VNak5jVkJYRHRZVjhRT2o3bGhX?=
 =?utf-8?B?cGpRTEhmU29POExTNklCallDVzloeUFDZkpFQXFoRXhxa3VwbjRteVQwMUE1?=
 =?utf-8?B?TzYyYlJDbmJJNjNYWnlxYXQ5RkFKVS9qYWc4eE0zVDMyZ3hydDB2aWxISng4?=
 =?utf-8?B?VWE4TmJyeWJrc0FOeFFLUCtyL3VRV0ZBSGZnYVdWYWd1UVJtWW1McHBJUnJu?=
 =?utf-8?B?OHMzQjhJem5uKzByWno0VFRIQnc2TENsNDRoMVMzeGlRSU5FWENCQktYSzdB?=
 =?utf-8?B?QWdLT3FmMGltYjhpRmRGNFFsYnFXWjdKM0R6clRZRitXalBMcHY1MS91YXdi?=
 =?utf-8?B?cHNNTEZxN1pMYUNDaWpuREJiMExFdEpETFVma1I0L0NQTDAzMExYRHJMMEZh?=
 =?utf-8?B?ckJHcTVGT09ua1RzaTN6MGIvQ0I3UFl2WkdEaWRsWURyNXNhUXA5N2pzb0VL?=
 =?utf-8?B?V2NoSHI1bTdRPT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?UEszYmwwbk9nU05CT1BZSUZJYXdxUjVhKy9TZzh2OFRMQ21FMVQvL1VQTXZm?=
 =?utf-8?B?d2U0RG9pelNoSVJ5cGdpNjQrWW8xTmE4VWlEUVp6aUcvajgrUFNuaG5jYjNh?=
 =?utf-8?B?YndiQ3RFTVp1bkFHK2lPcFIvb2JqTVdLdmQySTR6NU1PUjJqU2F6RFJSaTRL?=
 =?utf-8?B?S0hUNVFIMG5MOVFGd1ZILzdqdGdNNUZIYlJla0hDSFhZZHplWnZWYmFXL0Zs?=
 =?utf-8?B?TE5aUFNkOFJCTm5odSsyL00vL2w0amE1N1AvQnI1MVZvVkxiYjRaeXFGUTJs?=
 =?utf-8?B?VHc3NTdGUGI5WW93aXFQRTBQWUpLZ1hyVGpaa2lpLzBtR3NvcmZjM1BEc0cw?=
 =?utf-8?B?THZ6THIyd3JGUGx3MDNuTXMyS0V6Y01wUWZod0I0aDZWVlM3azQwcmhzc21Y?=
 =?utf-8?B?NFRPSlkvRjVvQjY0cE1WbGNSRFlvMk10dXNXS1BVNHZ3L2FNald0NVpHOXRy?=
 =?utf-8?B?T1hPd1hWblV1NC9qcHJCTC9nYU5RMXNhQko4QUdYbmFMdHBrbmNGUC9za0Z5?=
 =?utf-8?B?ZENJTE1MS3luTTNIU0tjQUxSNVl3MkcxQ2VuWWdJMlllSkRiS0ZyVnlCNzFy?=
 =?utf-8?B?Y1psVWVmV05EY3JBdW5xc3NySGgyNGhFWThteDRpQmRldGM3OXNxRGVGR3Ni?=
 =?utf-8?B?QUNXWGVMWWJqMjlnc0k1eTZvamJYeDFFTVZlUUVCa3hQL0pWdHFEZDNyNUU0?=
 =?utf-8?B?ZXgzN3FCTFBWcnEyc0MzTUJrT0VCTEJuRk5aMW9YUm5LaGlyTzBWSGZIOWxj?=
 =?utf-8?B?ZEttcmQ3OFFaSXBCQ3RUN2hhYnVrN1BTUWJ6SXhDWlA2clFsWkhyTWNvcS93?=
 =?utf-8?B?eG4xYjlYTGdBOTJGeGVBM1o0SUFlbmgyYTl2MEdYcUtBcVQ2b2J1ai9JaXg0?=
 =?utf-8?B?clpYcjJPdEdGdlFYV2tFVVlQa1FsVWxySGtpaGpQOEhTcTZva1FvNjU0QzlK?=
 =?utf-8?B?QkE2U0duRFpxT3FxWXlVVzQxUjQrMjB1bEQ4K3VaSDE3S1g1VWRaZVd2T2E1?=
 =?utf-8?B?cnBQbTJxdEV4U3l0czMzbUp4SGlDWEpaUk5LQXNidVM1N0RPSDYwamNjWUxG?=
 =?utf-8?B?R0NOZHpURmlnc2NlbUYwelVGY1ZJMWwwMGhGOHlEeURsNUhKcGpVQWNSRjRM?=
 =?utf-8?B?ek9yazM1YlNUSFNyWlkrNHlPWE9EYktRdnNOdnZML2lFWXU2UDhLMERQOVVU?=
 =?utf-8?B?bnE3djBZZy8ySlFwdER3WlNmeCtaVGtPMmwvS2IxMHE2V3hsUEtRb3pTdjVJ?=
 =?utf-8?B?QjVEMEI2NGJkNE5ZektZdkFCTS9ZNjZsNCtINzhqeURZdFRpTURWcEpKMHd4?=
 =?utf-8?B?M25WNE5mUnd6ajJrd01HTXJuRmNzYW5OSjZMS0tiOXhxL2VkQUFTOXEvMjI2?=
 =?utf-8?B?VXd3OVUvWFRRRXZvaFk2M2VLU0xwaGh4cnJsVEl5TU0yaHd3UkFhZ0tyUG1E?=
 =?utf-8?B?T2lrR210MzlYamJQOUxPOFdOcyt0emc4amNMNmsvdW0rWDJseFkvZmF4SU5z?=
 =?utf-8?B?MjRlUG9ZdU45bTd2WHltZXpWVUdKTjQyblpJWlhRMGdxSW43emFSa2F5dTlU?=
 =?utf-8?B?THFZSG0yd2grTzhjSVIwYlFCT1ZJVklLVUt4c0l1bTdFSFVFVjhpa21DYVgv?=
 =?utf-8?B?eCtKODNBUERoT0pIV2xibU96dzkva1lDTU5weUwvbDBrdndOeTREMnFYTjJG?=
 =?utf-8?B?U203eXlQTS9SOVRZMTBTSDJRN3NpY05GejF6OWpiOHJ4NVNhbUNxaklhZHdp?=
 =?utf-8?B?WFNNY2hwVFQzWElGVVJWTm9TaVFQazJNNlFtS25HMjhXTUhneXZsMXBvTGE5?=
 =?utf-8?B?Zms2R3RVMGpFZytQNGNYbmlNelZRTkcxOHNHeFRVUE5DYWZzOVc1bHQ2MG02?=
 =?utf-8?B?UTlCS0c0RXJBNnlWcC9HcXRSNk0xR2dkMVpPajdpdDRTRVpNbkxBS0N4VUdm?=
 =?utf-8?B?WVRTOUtiWXhXSVNkNEwyL2JWam00VHJqR3hrck01Wkdpek9qdGQ3REdQNE5P?=
 =?utf-8?B?N2lWYlRMVTNVZXFRWXJMWFZYV25LZWNGU2ZHV2NKcEVDcjBjWDhYZkJsQVAx?=
 =?utf-8?B?K0dWdXhqczVhZnJIYzJ1MjE4SlVIS0w5TUF6aGFITEs2U3NTZnN1cFoyWUVn?=
 =?utf-8?Q?8/r2LzNAyMvG1V0C6JCY1rY6X?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C9C70987BE59A941AFDDDF34AD02EC83@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0085.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 65577edf-e6ad-4399-6882-08dd96c672f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 11:15:23.2117
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXTk4i5iEcbNHRo/ErNmMvUJ8nGQ7tF+rAvYryp1DZZROpBlLBC8b3cyXnH4BqwSvjVOfikJwyf9uydr9Ld0Kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZR1P278MB1522
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 May 2025 11:15:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65354

VGhhbmtzIGEgbG90ISBJIHVuZm9ydHVuYXRlbHkgY291bGRuJ3QgZmluZCBhbnl0aGluZyAtIGFu
ZCB0aGUgV2luZG93cw0KU0RLIGhlcmUgZG9lcyBub3Qgd29yaywgbm8gbWF0dGVyIHdoYXQgSSB0
cnkuIEkgbmVlZCB0byBnaXZlIHVwIG9uIHRoYXQNCm9uZS4gU28gbXkgY29sbGVhZ3VlcyB3aWxs
IGhhdmUgdG8gc2V0dXAgdGhlaXIgV1NMIGFuZCB1c2UgdGhlIExpbnV4DQpTREsgb24gV2luZG93
cy4NCg0KS2luZCByZWdhcmRzLA0KRGF2ZQ0KDQpBbSBTYW1zdGFnLCBkZW0gMTcuMDUuMjAyNSB1
bSAxOTozMyArMDAwMCBzY2hyaWViIEx1a2FzOg0KPiA+IEhpIEx1a2FzDQo+ID4gDQo+ID4gVGhh
bmtzIGZvciB5b3VyIHJlcGx5ISBJIGRpZCBleGFjdGx5IHRoZSBzYW1lIC0gdXNlIDd6aXAgYW5k
DQo+ID4gZXh0cmFjdA0KPiA+IGFzDQo+ID4gQWRtaW5pc3RyYXRvci4gVGhlcmUgd2VyZSBzb21l
IGVycm9ycyBjb25jZXJuaW5nIGxvd2VyIGNhc2UgYW5kDQo+ID4gdXBwZXINCj4gPiBjYXNlIG5h
bWVzLCBJIHRoaW5rIG9ubHkgc29tZSBoZWFkZXIgZmlsZSBuYW1lcy4gT3RoZXJ3aXNlIHRoZXJl
DQo+ID4gd2VyZQ0KPiA+IG5vIGVycm9ycyBhbmQgdGhlIHN5bWxpbmtzIHdlcmUgY3JlYXRlZCBz
dWNjZXNzZnVsbHkuDQo+IEFoLCB0b3RhbGx5IGZvcmdvdCBhYm91dCB0aGF0OyB5ZWFoIEkgdGhp
bmsgSSBhbHdheXMgdXNlZCB0aGUgb25lIGluDQo+IHNtYWxsIGxldHRlcnMgYW5kIGRpdGNoZWQg
dGhlIG9uZSBpbiBjYXBpdGFsIGxldHRlcnMuIE5vdCB0aGF0IEkNCj4gdGhpbmsNCj4gaXQgbWF0
dGVycyBtdWNoLCBteSBwcm9qZWN0IGRvZXMgbm90IHNlZW0gdG8gdXNlIGFueSBvZiB0aGVzZQ0K
PiBoZWFkZXJzLg0KPiANCj4gPiBJJ2xsIHRyeSBhbm90aGVyIHZlcnNpb24uIFdvdWxkIHlvdSBt
aW5kIHNoYXJpbmcgeW91ciB0b29sY2hhaW4NCj4gPiBmaWxlPw0KPiBTdXJlLCB0aGlzIGlzIHRo
ZSBjb250ZW50IG9mIG15IHRvb2xjaGFpbiBmaWxlOg0KPiANCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBzZXQoQ01BS0VfU1lTVEVNX05BTUUgIkxp
bnV4IikNCj4gDQo+IHNldChTREtST09UICJDOi9TeXNHQ0Mvd3JsaW51eC0xMC4yMi4zMy4xOS1p
Njg2X21pbmd3MzItbXltYWNoaW5lIikNCj4gc2V0KFNES1RBUkdFVFNZU1JPT1QgIiR7U0RLUk9P
VH0vc3lzcm9vdHMvYXJtdjZoZi12ZnAtd3JzLWxpbnV4LQ0KPiBnbnVlYWJpIikNCj4gc2V0KFNE
S0hPU1RTWVNST09UICIke1NES1JPT1R9L3N5c3Jvb3RzL2k2ODYtdzY0LW1pbmd3MzIiKQ0KPiBz
ZXQoQ01BS0VfU1lTUk9PVCAiJHtTREtUQVJHRVRTWVNST09UfSIpDQo+IA0KPiBzZXQoQ01BS0Vf
Q19GTEFHUyAiLXBpcGUgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC1tYXJjaD1hcm12
Ng0KPiAtDQo+IG1mcHU9dmZwIC1tZmxvYXQtYWJpPWhhcmQgLWZzdGFjay1wcm90ZWN0b3Itc3Ry
b25nIC1mUElDIC1PMiAtV2Zvcm1hdA0KPiAtDQo+IFdmb3JtYXQtc2VjdXJpdHkgLVdlcnJvcj1m
b3JtYXQtc2VjdXJpdHkgLS0NCj4gc3lzcm9vdD0ke1NES1RBUkdFVFNZU1JPT1R9IikNCj4gc2V0
KENNQUtFX0NYWF9GTEFHUyAiLXBpcGUgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzIC0N
Cj4gbWFyY2g9YXJtdjYNCj4gLW1mcHU9dmZwIC1tZmxvYXQtYWJpPWhhcmQgLWZzdGFjay1wcm90
ZWN0b3Itc3Ryb25nIC1mUElDIC1PMiAtDQo+IFdmb3JtYXQNCj4gLVdmb3JtYXQtc2VjdXJpdHkg
LVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkgLS0NCj4gc3lzcm9vdD0ke1NES1RBUkdFVFNZU1JPT1R9
IikNCj4gc2V0KExERkxBR1MgIi1XbCwtTzEgLVdsLC0taGFzaC1zdHlsZT1nbnUgLVdsLC0tYXMt
bmVlZGVkIC1mc3RhY2stDQo+IHByb3RlY3Rvci1zdHJvbmcgLVdsLC16LHJlbHJvLC16LG5vdyAt
LXN5c3Jvb3Q9JHtTREtUQVJHRVRTWVNST09UfSIpDQo+IHNldChDTUFLRV9FWEVfTElOS0VSX0ZM
QUdTX0lOSVQgIiR7TERGTEFHU30iKQ0KPiBzZXQoQ01BS0VfTU9EVUxFX0xJTktFUl9GTEFHU19J
TklUICIke0xERkxBR1N9IikNCj4gc2V0KENNQUtFX1NIQVJFRF9MSU5LRVJfRkxBR1NfSU5JVCAi
JHtMREZMQUdTfSIpDQo+IA0KPiBzZXQoQ01BS0VfQ19DT01QSUxFUiAiJHtTREtIT1NUU1lTUk9P
VH0vdXNyL2Jpbi9hcm0td3JzLWxpbnV4LQ0KPiBnbnVlYWJpL2FybS13cnMtbGludXgtZ251ZWFi
aS1nY2MuZXhlIikNCj4gc2V0KENNQUtFX0NYWF9DT01QSUxFUiAiJHtTREtIT1NUU1lTUk9PVH0v
dXNyL2Jpbi9hcm0td3JzLWxpbnV4LQ0KPiBnbnVlYWJpL2FybS13cnMtbGludXgtZ251ZWFiaS1n
KysuZXhlIikNCj4gDQo+IGxpc3QoQVBQRU5EIENNQUtFX1BSRUZJWF9QQVRIIENNQUtFX1NZU1JP
T1QpDQo+IGxpc3QoQVBQRU5EIENNQUtFX0ZJTkRfUk9PVF9QQVRIIENNQUtFX1NZU1JPT1QpDQo+
IA0KPiBzZXQoQ01BS0VfRklORF9ST09UX1BBVEhfTU9ERV9QUk9HUkFNIE5FVkVSKQ0KPiBzZXQo
Q01BS0VfRklORF9ST09UX1BBVEhfTU9ERV9MSUJSQVJZIEJPVEgpDQo+IHNldChDTUFLRV9GSU5E
X1JPT1RfUEFUSF9NT0RFX0lOQ0xVREUgQk9USCkNCj4gc2V0KENNQUtFX0ZJTkRfUk9PVF9QQVRI
X01PREVfUEFDS0FHRSBCT1RIKQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQo+IA0KPiBOb3Qgc3VyZSB0aGUgbGFzdCA2IGxpbmVzIGFyZSBhY3R1YWxs
eSBuZWVkZWQgaGVyZS4NCj4gDQo+IEFkYXB0IHRoZSB2YWx1ZXMgb2YgU0RLUk9PVCwgU0RLVEFS
R0VUU1lTUk9PVCBzdWNoIHRoYXQgdGhleSBzdWl0DQo+IHlvdXINCj4gc2V0dXAuDQo+IEFsc28g
YWRhcHQgdGhlIGNvbXBpbGVyL2xpbmtlciBwYXRocyBhbmQgZmxhZ3MgYnkgbG9va2luZyBpbnRv
IHdoYXQNCj4gdGhlDQo+IGVudmlyb25tZW50LXNldHVwLXNjcmlwdCBiYXRjaCBmaWxlIGhhcyBz
ZXQuDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IEx1a2FzDQo=

