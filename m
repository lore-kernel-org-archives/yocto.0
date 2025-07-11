Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CFC83F1B
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 14:29:18 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.41])
 by mx.groups.io with SMTP id smtpd.web11.15190.1752244151547363054
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 07:29:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BBZPdqkt;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BBZPdqkt;
 spf=pass (domain: arm.com, ip: 52.101.66.41, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=bjRq/wmipvpGUKQzrTOhX/HadhOpHCN+GTGI6KQ8ZH3/p0q/jGbbhh68ioxDpnRkdyjQY6TZxA+SH4Nuo54lTwi3Btoj034O+GxsXRpIkwHTgCO1CfWQ/MAuq1fSMCmmTCVGYPYB/Ff4mf3aNY4oCjZgz4abKAz1QkrZOG81LJGydcnuX9YxfzATZbJj7QwHagLGEFRDUneVYPsKD3xr9qeUX9rYyCQn9JBIZLstIO36CP1JJaHSBfGUEfoTNVbQohkglkyMJ6bWNvsBmR0+PQx59xRoJupU7gjkwCWa2o7IYj28EavqJpdKccuHZfobULQmWWTW+xrM7NBGRAzlTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSfnXPn3SgBu4GjOcUQ6W63bNmtFEVRI0cX90xagKjM=;
 b=RJJwoJrvTVqSbMNHgy/mdMsT+HvDK5Zh/HEk0QHH0+Ni8+3cS+l7M8O5NOuvM0n4COeShBOl8cwYbcAbTzW+WP8pBZgPHOE3G7s8B55EeF9LxBKxaPwGfwo4PPaYdKD2zfdFBQ7RfSWrMtJYhP5zrugJ7gsTfRYYaqnviGCMHlh9tR6u5oxjEIlQu9bqXkRGbeqBBBC3cX8IJUAoolntUaVpSoBchV7pPL2sYNFXpfoVnUJmcLMj+hvCIIl6xIkIRgGJh6kct4uFlMU4WVAws6xaqCFzyWXHxPHvDGbTXnjJHDSJGXy3qUnsnyNiv3FAl0eF1czpQgBEfLMb9K5tEA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSfnXPn3SgBu4GjOcUQ6W63bNmtFEVRI0cX90xagKjM=;
 b=BBZPdqktl/8GhzULgQuQV9QF3tM4juNkgtPyMHqWVvi/dgl9S6e+nSjaRhOP+qhMaeerJ0sb8ROVMfyjuaUBtXLW2aT5nGh4nUv4UsCxQBGYftWYgRaZ8d3jIzhp0AF/6USPIxYEVa+unI8uXLHTPxAdCLmU5X1KpSR4uJoLCJY=
Received: from AS4P195CA0047.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:65a::24)
 by AS2PR08MB10225.eurprd08.prod.outlook.com (2603:10a6:20b:64e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Fri, 11 Jul
 2025 14:29:06 +0000
Received: from AM3PEPF0000A79A.eurprd04.prod.outlook.com
 (2603:10a6:20b:65a:cafe::a9) by AS4P195CA0047.outlook.office365.com
 (2603:10a6:20b:65a::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8922.25 via Frontend Transport; Fri,
 11 Jul 2025 14:29:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM3PEPF0000A79A.mail.protection.outlook.com (10.167.16.105) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8922.22
 via Frontend Transport; Fri, 11 Jul 2025 14:29:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXJM2UFLU2LvbVIQYOvgPi7r98WB5oETvi+w/QAY62TfJXk2UZ9U6KYB7et+lC36FAUIctbCslvEgYrc9tIULuSx25Osdxn/xLKB8nHQIuQ37fL+SnaOPLU2N5hFiR+kPnRUTJUVdXOBByq2W3qaYOkCKb10TJ52ZTDv49V/p/8EG/5I+SGqlMrSB1bKXsNYp7SqiIXiSQX1rXy0aOTNf5RhkGppvPGJnJl5uadaJJi7MekY05ARLRyb19cJ44m+Inv4cKAoWCdmuFA/Iylenvkxru77CyY5L+akVb4DVD81O1BnyLHdSkguF+vzKC9i1S+zbGASpq/NAMpCKqeQ8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSfnXPn3SgBu4GjOcUQ6W63bNmtFEVRI0cX90xagKjM=;
 b=a9Y8QlpQLmLwXUdqk1aH1ddyHCd+P6D6RF/q6+yf8M32hKcW35hNV4I2BP+q5GeYaZ/9TpV5/s9jC2PhX3lGSd8l5+nqEOeaLbUo1DHR5gfnAzgmL6g/IfR1IebFK+EVzKgMuqvo0ApbvJO8hXDq2M8+DQPkn2CDRJxDV7Kr6gdJZnVjj+Nk5iYdBs4PO4hfnCjraChyXISfAzv5zlLTuFTfpFGwdqZGG+avHHthssp/2NQCDPa0cVZNakVwbxD9yvE+hYYkCKxAMlhofS6b3xj8LBT0SSSUvb8TtVkv7xVG+eu7h9hAXWxrEE4NF192FZN+q24WYpmrKAvRRsrJQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CSfnXPn3SgBu4GjOcUQ6W63bNmtFEVRI0cX90xagKjM=;
 b=BBZPdqktl/8GhzULgQuQV9QF3tM4juNkgtPyMHqWVvi/dgl9S6e+nSjaRhOP+qhMaeerJ0sb8ROVMfyjuaUBtXLW2aT5nGh4nUv4UsCxQBGYftWYgRaZ8d3jIzhp0AF/6USPIxYEVa+unI8uXLHTPxAdCLmU5X1KpSR4uJoLCJY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI0PR08MB10457.eurprd08.prod.outlook.com (2603:10a6:800:1b9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Fri, 11 Jul
 2025 14:28:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 14:28:32 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
CC: Josef Holzmayr <jester@theyoctojester.info>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, Jeffrey Osier-Mixon <jefro@redhat.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
Thread-Topic: [yocto] Is there a YP RISC-V specific mailing list?
Thread-Index: AQHb8MHysXa/Q/VCgkiNnLWDxoXz87Qp1TIAgAEuq4CAADRhgIABxlkA
Date: Fri, 11 Jul 2025 14:28:32 +0000
Message-ID: <0924DCB8-B1A3-431E-84FD-6A428B9F3950@arm.com>
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca>
 <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com>
 <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com>
 <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
In-Reply-To: <5600b61e-0170-b159-e31d-729ba350d0c4@crashcourse.ca>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI0PR08MB10457:EE_|AM3PEPF0000A79A:EE_|AS2PR08MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: ba145594-6b95-4155-b30c-08ddc0874a29
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UXh0TWh2UjFPMVNENi93aitpRVRVTy85eGNndkNPSXBOV1NhUXhjUUFCYkJ6?=
 =?utf-8?B?d3JEZ3pROVlFbUNTRDBiNFBQNnVWakg1b2dhSVhUUlFYaDV6eWhzS2J0Z09k?=
 =?utf-8?B?YnI5STRnYjM3cHF5eDVsMDhKYjdJQkxDVVM1aUhCV2ZmM1ZWU2JlVy9WUmU4?=
 =?utf-8?B?L09lVW5iTkxTcVRoNUt2dDF3Y24veTNraVBIaURBZitpUmsrWDFrY0ZqZ0ZQ?=
 =?utf-8?B?Q2NtVkVjSzNpaW1sL1FndVBzNGNoTDJIV2dYbVlQTkx2WVR2bGN3UHlJSytB?=
 =?utf-8?B?SXNpeEJtbE5MVTNUZ0FDT2VNMnQwMlhnSFNuTG1Dem96UE04dDV3SGxYdi9H?=
 =?utf-8?B?Rk5aSXY0RkpGZy9hanIyTjVCMVZ6TDdpK3dnZWZaaGlhdDQwVEh2WXlxM0xJ?=
 =?utf-8?B?MlhSY0tSTGZhNHkwc1d4M0I5Q3g3eThzWjlxTGx2UGthMjFMUXFzMlJWdENs?=
 =?utf-8?B?VkIveVN6YzhDMWR0S0JNaXBuNytRai83MFpWRDdmZC9wYXY2c0lYWUVYTGkv?=
 =?utf-8?B?T3FPUWl1djNObnFMR0RFeGIvSEduUU1jeFM1aVJTeFp6aGp6ODlINkJ2WlpN?=
 =?utf-8?B?L3Y2WkZOWFFxVVBKbWVibEp2RzhjSytpajdQTkx1QkxqSUYzcU5odm1XUFJm?=
 =?utf-8?B?RjJobjhRbXMyRTBuZEpyNE5FZGkwQWNrS1pjc2pOMEIzU0tSbkNsaUxRTnYw?=
 =?utf-8?B?ellMbC9PazVxdkpkZU9aQkpYOTRBM1hkUjZiK2xibkRLSUlnT3M2b00xSHdW?=
 =?utf-8?B?aXNEclAyTE5VOUdVSHhPMWVoZ2MxME5oN3lMVTMyWHB0OXFXSjhiODFpUkVn?=
 =?utf-8?B?Y3hKKytqazdqN1lXTzZBRndGSWJGK25HRmtKN09pcWM3dTdQUCt2R29CeVV4?=
 =?utf-8?B?TmFuTE5hN2tEZVJpWmJyVUxQK1RlZ0pzbkFjMW9LRTNOVFpRWEVrSjd0VFhr?=
 =?utf-8?B?ZnJTWDZNNi8ra3lQQ1p4RVFsQmdlVVR3TndtNkZLcmVNUzA1bUtGK2V2VTYz?=
 =?utf-8?B?ejBVSFBmSlB5VXAxQndyTVhiUDF1OGF6Zk0zTHM2Y0xWMGZvVFJTTGQrRXRV?=
 =?utf-8?B?d2lrUzZFbDRkWlM5M3Q5K0xSRHpSZC9KSngrZFpYc0pVWEVVWnhiRFZQcy9u?=
 =?utf-8?B?L2p3UVBTNm1lcTQvSklFcnUvVEpXa0daNFErYlFwWW0zemRLa0xTci8yeFJx?=
 =?utf-8?B?NDM1Zk1DRWx1ZTkreGlvS0FISHUvdFpucmNWR1J4Q1dTdldmK1gxWnRZSVds?=
 =?utf-8?B?UXhUWDMvdnR6VDRCeWl6LzRNcFNVWkNqSXY2V3FGaVFXajlOSmFJelQybGRJ?=
 =?utf-8?B?V1V4YmNmd0VJa2ZUUmttSnNzSjZXS1FiNGYyT09JY1NDTEx6aWszY1NKU1N4?=
 =?utf-8?B?b1dUMmxINnp3VFhqeDRkOENDUlh2MEwvZFI1UEo1ZFREYjV2VEpSRTBWVURX?=
 =?utf-8?B?SjlxOGM1d1c0SHlsS2pxbTh2dnRSM1g4YmdRRitHd0dvSE1YYXc4allEVkxI?=
 =?utf-8?B?UWpFcnd0cjMwdjhrbVZMYmpsMXVadTRUV3V4Rk1Rb0JUZlF2Y0dMSUZDeXBr?=
 =?utf-8?B?eitlcVJscWp1N3RHbEdra3ZHN1ZZNTE1TDdHRmwvUTlURWc0R0FzcXJOb2ZD?=
 =?utf-8?B?VHA4OERuSXVxTUtuN1VjT1ZLclRLSFNSQXNTK0ZRbFBSRm1MN0JLMDBpekZh?=
 =?utf-8?B?NnlxSjNpeU15T05CdFg2cmV5ZisxQzdzUng0ZzZ4dlExWkhQWmlxT3dpWXRL?=
 =?utf-8?B?TjFncXJ5Zk9HMzhodXF2ZlB0Snd5NjYraGRLZkhRMGpIbS9US1ZTckQ3Zjdn?=
 =?utf-8?B?bnptR1RQbE16elBxa1p2MDk4TzJPMGlyTVBDSWJSeE5jQ1Z4bnAwZ1lSV3Nh?=
 =?utf-8?B?MloxeUhGQjk0TlpkT0JpME4zaUt1RmFsTnZlUjR4R1dQVFRET1ZWdDdRa2dh?=
 =?utf-8?B?N1cybW1xYXpTdVlPdzVzK2Myc2l2SEJUNEFveDVtZ1BsbHo1cHBnLzdJU2hv?=
 =?utf-8?B?d3grUWpYdWpRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0F02756C34F41547B43FF4FA40A1F4C3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10457
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9c189deb-3a4a-485b-154f-08ddc08736c7
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|376014|82310400026|36860700013|1800799024|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eW1yQVJpaDhYbkF2WEFOTW1kT0J4YWEwRnJ2cFNDQWNWd2t0eWl0bU4vY29U?=
 =?utf-8?B?TmpSeTlxTW9RM0VYRVlrZWF1VmlZQ1JDRzRQa3htT0xwK0tZL1BSc0hvTUx3?=
 =?utf-8?B?emU5Z3V3bXVZNnZ4ODZGa29ldXIrb1BRNEhSeTJ2NVRPc3ZFZE9wM1ZXSFNB?=
 =?utf-8?B?eDMydjZZaXlGeDgrV2NPaGlabVZPNWx4OWR4RjVodTdiQVRlSW1WckRYcmJ1?=
 =?utf-8?B?dGxPc1B4WTFJL2x4S25sSFhVWmR1NFpyUFVhRkpvYkRmZHVXcmNEN0NhMDRK?=
 =?utf-8?B?Znpxdnc5NFA0MmFCR2d2UW5ES2RPSE9pc2RhYUlDTGdGSFZNVy8wdFpzZnk0?=
 =?utf-8?B?Tlk2VEVDSFlLWCt6K1E3WXJtMDhrTzVtOXdaL0tyR2VyMC85Y1RmQmp2SGt3?=
 =?utf-8?B?VWpGNHllaWc0eVkwVXNUcTJZT3c5Mmxyd1FkekV2SzF0VjQ1VHh2YUJNMlNh?=
 =?utf-8?B?OG5UNTYzOUJFWU15NnIxRE9YaWdHWnVDamhIVHVkdVYwWE1lMGVlNlF5WXF6?=
 =?utf-8?B?RUlKNFdXSndhSklkZndLOG5FT0Y1MnlRaFBFZnA4N1I1UXFDOTlDVi8wNnVi?=
 =?utf-8?B?azdhQmVITlhCZ0pCS0hRT3JVOEVqUE84SWpUdityRWJkQlgvc3YxbWhoTXZ2?=
 =?utf-8?B?Z0hJWmZGTlVHaTNucHptSTlsaGR4SDdrZHlKTlpDclFtNXNtZUVsZVJaYW1D?=
 =?utf-8?B?anR1OGUwVWVkNVdQR3poZitHZ3IyblUrZTRla3NHNGFyYnZnWHVST1lqYTlh?=
 =?utf-8?B?Qm1aMFkxU05MK3B3bm11RGhnZlRWZ3U4NTZYajg5NUVPN0ozb2pITXJENTlN?=
 =?utf-8?B?c01oM0hmb0JuN29mcm85WFNzdFk0MXZZbkNLZENJcWw3YjNyN1FKVWE4WXZj?=
 =?utf-8?B?UkNCRVh6RythVFpMRzdhc0haaU0xTktoVjZ5ZmZRSHdQVnVtUkNKODhzeGtU?=
 =?utf-8?B?MDRHR1FCblprbDBUUjVnQkc2NW85cnRSZUxwU1UrWTlKT0NUamFRT0pWUVVG?=
 =?utf-8?B?UUp3Z2sxellZRjAwbzhXYUQwSnliRktNd0creTRiUFVZRHdDdm9GdWVjc1k3?=
 =?utf-8?B?VXVuVmJFcE9uNllvSlN0SWFGMlcxUTMxZWxCN0l3c3VJa0w2Ri9GYThUSjMy?=
 =?utf-8?B?ZVlQVUN1S0FMZnZXQ2tlUHFoVVJuK1MrNFJjZWVFN0IvendvOWE2bno2bHpV?=
 =?utf-8?B?dU1IM0pRVDRBTmxaOW14YnoxYzh5UXRnVTRlYUVGbERuSUwwZDRlZC8wdnNL?=
 =?utf-8?B?b0tWSDF5WXpwdDhUeUdPZkF3WmFqc3VBM3NGdmoyZ1F0bUVwN3dOVVYrQlhO?=
 =?utf-8?B?dm5hTTNQN3VBclAxYnBtSVRYd3ZhV3hrWmltOFVVRmpyeVFyRUN6R1JZVS9D?=
 =?utf-8?B?UitUUXBTZ0QydWU0VVM3Tk1VWWFlZDhDdVAvSld2YS91MDJZeWFPOUFUbHBB?=
 =?utf-8?B?c3puWnBwUUpzK3ZLR0doeHpGRjBRWFBsbFNOKzQ2WVVhRG9BaU9hVzQ2a3RE?=
 =?utf-8?B?ZGlCOXg0di80TGtlbW1MQ3NVZXAyU0hsMWRHVEhqQk9aa201WFpyVlJucUFN?=
 =?utf-8?B?Q2R4U0czcFlGaG41S2VFOVR2T3l4SDRYc3p0YTkwMmx3Tiszd0lZTklHOE41?=
 =?utf-8?B?SitIZVc4NTJPOTZna29uUUF0bURkQWtBTGNic1RVTkgvaU1tWjdTTTdlTS8r?=
 =?utf-8?B?S3M0bXhURlVoY00rSzhEWVVoTWdoTHpqTFhiNTBlQjlNWU1JQ2s0NUNHa09B?=
 =?utf-8?B?MlVUSkd0YytDcTNER2VIeTNQS3dTcTBaTVI5M0hkeFh5ODZyMWpUWGhxbktO?=
 =?utf-8?B?RHN0OTVUaUEwWXIrMEhwcTZ4YzBWTkhNMzEzWjNGQ0RtQXpQakFlb3hMUE4x?=
 =?utf-8?B?R1dMeHJ3eCtZbG51OWxERlRKSHBkVXY5dmE0UXZtZWJpaUJHTmdjZ1pZd1p0?=
 =?utf-8?B?ZjJPSVRvdDVuREV2QWVqMWcwZ1FJUXE3YThFNlpzd2RKaUFNaXMvVHM2dlBn?=
 =?utf-8?B?dVk1YzRDVk8wNE8vNnpndTBSRU8zUXJiOGY1NGYxckwrNWlqNGZtcWVlbXNa?=
 =?utf-8?Q?x3irFD?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(376014)(82310400026)(36860700013)(1800799024)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 14:29:05.2854
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba145594-6b95-4155-b30c-08ddc0874a29
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10225
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 14:29:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65642

T24gMTAgSnVsIDIwMjUsIGF0IDEyOjIyLCBSb2JlcnQgUC4gSi4gRGF5IHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxycGpkYXk9Y3Jhc2hjb3Vyc2UuY2FAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiANCj4gT24gVGh1LCAxMCBKdWwgMjAyNSwgSm9zZWYgSG9sem1heXIg
d3JvdGU6DQo+IA0KPj4gSGkgUm9iZXJ0LA0KPj4gSXQgZGVwZW5kcyBhIGJpdCAoY2xhc3NpYyBl
bmdpbmVlcmluZyBhbnN3ZXIpLg0KPj4gVGhlIG9idmlvdXMgY2hvaWNlcyBhcmUNCj4+IC0gb2Ut
Y29yZQ0KPj4gLSBvZS1kZXZlbA0KPj4gLSB5b2N0bw0KPj4gLSBvZS1hcmNoaXRlY3R1cmUuDQo+
PiANCj4+IFNvIGZhciBteSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgbWV0YS1yaXNjdiBpcyBob3N0
ZWQgb24gR2l0SHViIHVuZGVyDQo+PiB0aGUgcmVpZ24gb2YgS2hlbSwgYnV0IG1heWJlIHRoaXMg
Y291bGQvc2hvdWxkIGJlIHJlY29uc2lkZXJlZA0KPj4gbW92aW5nIHRvIHlwLm9yZyB0b28/IElu
IHRoYXQgY2FzZSB0aGUgeW9jdG8tcGF0Y2hlcyBsaXN0IHdvdWxkIGJlIGENCj4+IGdvb2QgcGxh
Y2UgdG8gZGlzY3Vzcy4gTG9vcGluZyBpbiBASmVmZnJleSBPc2llci1NaXhvbiwgSSB0aGluayB0
aGlzDQo+PiBpcyBhIGdvb2Qgb3Bwb3J0dW5pdHkgdG8gbW92ZSB2aXNpYmlsaXR5IGZvcndhcmRz
Lg0KPiANCj4gIFRoYXQgaXMgY2xlYXJseSBhIGRlY2lzaW9uIHRvIGJlIG1hZGUgYnkgc29tZW9u
ZSB3YXkgYWJvdmUgbXkgcGF5DQo+IGdyYWRlIGFuZCBDYW5keSBDcnVzaCBzY29yZSwgYnV0IEkg
dGhpbmsgdGhlcmUncyBqdXN0aWZpY2F0aW9uIGZvciBhDQo+IHNlcGFyYXRlIFlQLWhvc3RlZCBt
YWlsaW5nIGxpc3QgZm9yIFJJU0MtViBkZXZvdGVkIHRvIFlQDQo+IGJ1aWxkLSpzcGVjaWZpYyog
aXNzdWVzIHNvIGFzIHRvIG5vdCBkdXBsaWNhdGUgYWxsIG9mIHRoZSBnZW5lcmljDQo+IFJJU0Mt
ViBjb250ZW50IG92ZXIgYXQgcmlzY3Yub3JnLiBBZnRlciBhbGwsIE9FLUNvcmUgaGFzIG1hY2hp
bmUgY29uZg0KPiBmaWxlcyBmb3IgMzItIGFuZCA2NC1iaXQgUklTQy1WIFFFTVUsIHNvIG9uZSBj
YW4gc2F5IGl0J3MgT0UNCj4gIm9mZmljaWFsLiINCj4gDQo+ICBBbnl3YXksIHRoYXQncyBteSAr
MSBmb3IgYSBZUC9PRSBSSVNDLVYgbWFpbGluZyBsaXN0Lg0KDQpXaHkgaXMgcmlzY3Ygc28gc3Bl
Y2lhbD8gV2UgZG9u4oCZdCBoYXZlIGEgbGlzdCBmb3IgQXJtLXNwZWNpZmljIG9yIHg4Ni1zcGVj
aWZpYyBpc3N1ZXMuDQoNCknigJlkIHNheSB1c2UgdGhlIGV4aXN0aW5nIGNoYW5uZWxzIHVudGls
IHRoZXJl4oCZcyBhIHN1ZmZpY2llbnRseSBodWdlIGFtb3VudCBvZiB0cmFmZmljIHRoYXQgaXQg
bmVlZHMgaXRzIG93biBsaXN0LiAgSWYgd2UgZ2V0IHRvIHRoYXQgcG9pbnQgdGhlbiBJ4oCZZCBi
ZSBhc2tpbmcgd2h5IHRob3VnaC4uLg0KDQpSb3Nz

