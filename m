Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80CEFEC1E9A
	for <webhook@archiver.kernel.org>; Thu,  5 Feb 2026 10:41:30 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.6])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17800.1770288084909218547
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Feb 2026 02:41:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JqBJvTqE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JqBJvTqE;
 spf=pass (domain: arm.com, ip: 52.101.70.6, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=St2RbozB9WL7f3bPgV0Hk/JUCtSvGgaMJMN42D/JUpCyuCxi+aLra4rW+xEPSBZ7ckl4y33bRbtuyeA5o0vosc1qoQvufAbYtcQdMOcHcAdaTm7i+VT6aA6+SVASp2qKiIsnyol5AJpUMLYWBORKImzNcEYoV0JB8+HkS5mUrN1cqO2E1QOwxrs3QDDCwyBxWZZnMarPfmYhs+VvsS4iPxsKps9bNu3qBeiMqiTLSbd4mPw7UaAADYN5XNPXAJW3o91pbwCdjaxLjU7VnnW6k6cID/sZiBFPLOHdQvKQVWcgvRHPBJYwnxyzJV3k4SYTkO5NHmTRL+ROLYhvtVaPWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D41Mb8sh0yekQgLDJxzDvREYdj5l2jgOwrQVrK+woug=;
 b=Q9DDvI7r8Ynp0E0UxSBroLOnJ1EGExU7X+OcvxIXx/p6HKvCmXF6tEFp/+J+VQFitpnOvCWq7AdXEihYti9M9YETziGrjBdNlF5S0evF4+DncceFUmATFR/+nDI/ugby3G59oHNiy781C0viQV3EgKnJgyjpj0Lss2QLf+vrRjt/ae+Rh5gSfioRLmcOTttTqlt5stnriRqhafPQti0SlS+IixQ6hQwgdmJ6uXMuwfoQ/yt1r9YbZ/RX3SVabDsZ3nd8sby2XHUpNsLqX+1aLPJsiYItMLk82sjRuhrd5lCHfXHnsCWK83ezMvbhsovHpmwAMt+siJm5Yl0AUFa6tg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D41Mb8sh0yekQgLDJxzDvREYdj5l2jgOwrQVrK+woug=;
 b=JqBJvTqEZCz0R+jkSLXinL21r4X5G5l/Tv1G6T5Jq4KyNsLbjr3JVo1a0FU1p/aYeISv8b82/SAehMR7EF9gmLtr6fTOBnvu6FcjyWD/S6UNEg6Y5CZgmngDtAgy8CLKQxzNHr2N6gHKrjjQOrhxPNgM3kwtK+6brT5H9BDK2rM=
Received: from DUZPR01CA0110.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::7) by VI0PR08MB10619.eurprd08.prod.outlook.com
 (2603:10a6:800:20d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 10:41:20 +0000
Received: from DB1PEPF000509E4.eurprd03.prod.outlook.com
 (2603:10a6:10:4bb:cafe::2a) by DUZPR01CA0110.outlook.office365.com
 (2603:10a6:10:4bb::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.14 via Frontend Transport; Thu,
 5 Feb 2026 10:41:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF000509E4.mail.protection.outlook.com (10.167.242.54) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.10
 via Frontend Transport; Thu, 5 Feb 2026 10:41:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H6zE+rwrKXwhOQJ5JH5346hOhKTXi89lv8jYVTxqPj3tKEJk51AbEzmNnUcxvoqiCGbyffovZ9YEkd8+uXpuyurnhKk4kRPMjt9W6IhNzaKZ3UhP3o1TwibLMghmmRBETNgmf9hbAg/2eIiSu4OY0DKq9GA4darDrwa1cOTlvSLnKHtEH2uban4MyJOgn6ImdtTlliPe3mooEqfZskJDA0Cu//HFIux9ge4kjjafmE7ue6GYuGdGokJyPD8GXmLd651byhjaHiT56G04Aqbllatv1xuObrd/ngu5GG+Tv+iwp1dQmy0nM5EJB43MQF2niPqHiQH4o92+Z6AX180CkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D41Mb8sh0yekQgLDJxzDvREYdj5l2jgOwrQVrK+woug=;
 b=qBiLTVrYqeNjZB9SyuebU7eiA00lYgVliqgvvHrBXcOYgUg7kflB9R1cXHCaRYy5I/9TRw1BXpAyd5k4sCfxbeYQwa6u45Y8Ua6+aDNKiDnVzOct2BP2XyhvD8Jsh0DUxZhGdDsPl5ShswgTYNgKL0lo2vnLTfHqXYmauVvf0BRySSHeR7AlluTmS3HVVWmEj+OyC7xUhqdT2x5bstLIXeZ99yhat5YhWqKo3ZNaDeDVBDPMIhH8lllzWuJzpVn5NOp6fws97SoydVgYhS+VdzB5N+b9lywXRQ08CQnYte/VYox3J983bzVJWvKk5Z73p4/AeIVoUpqHPsFpnSDSHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D41Mb8sh0yekQgLDJxzDvREYdj5l2jgOwrQVrK+woug=;
 b=JqBJvTqEZCz0R+jkSLXinL21r4X5G5l/Tv1G6T5Jq4KyNsLbjr3JVo1a0FU1p/aYeISv8b82/SAehMR7EF9gmLtr6fTOBnvu6FcjyWD/S6UNEg6Y5CZgmngDtAgy8CLKQxzNHr2N6gHKrjjQOrhxPNgM3kwtK+6brT5H9BDK2rM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV2PR08MB11369.eurprd08.prod.outlook.com (2603:10a6:150:2a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 10:40:18 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%6]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 10:40:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"xerofoify@gmail.com" <xerofoify@gmail.com>
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
Thread-Topic: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
Thread-Index: AQHclkhn5ka0WBpNmUiP5kbONqiYK7Vz6wWA
Date: Thu, 5 Feb 2026 10:40:17 +0000
Message-ID: <F1186EBC-365D-4CC0-8BAE-3837F922BE3B@arm.com>
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
In-Reply-To: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV2PR08MB11369:EE_|DB1PEPF000509E4:EE_|VI0PR08MB10619:EE_
X-MS-Office365-Filtering-Correlation-Id: 38cc1f29-e6e0-4321-1db3-08de64a31997
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UDlWSjIxZkE5anRqYWdCeVdMN3Rqa0I4UGhnaUFQbytuU0p3WjNubHRnZDJG?=
 =?utf-8?B?YnQxbGxlSHVWRTZIVGlkRmJqdzd2bFR6YlZ6OTdiQWFoVHBCbW8wdUM1R0w1?=
 =?utf-8?B?RDE5NFFyaGtsR0ErU0lxV0VzWXd3K2VHanpKRENXdGkyU0pPSC9HcU5oZUph?=
 =?utf-8?B?a0ZBT2lLdGtGYnBsaW52VnF6Q3FyWG5KaWZiWG9JeXJrYTBnOEVFcU9BOEZr?=
 =?utf-8?B?MWJOSjlxRzVWTzI4VTFqZTRjNVJBcUVkaklTY282YVg2WlRQM1lUcDgrYXp3?=
 =?utf-8?B?QXVBV1JmYmNYR2NEeE1MUGxNT0ZiaGpwWjlEV3I0VktyZFJwMUxiRzlMVDd6?=
 =?utf-8?B?dDFTZlB1aTZVS2V0L2VTTzlmSGlJdC9LV1lBa2JoL1M0dG1kVk9SWkFHQ2tE?=
 =?utf-8?B?Tm82T011dzAwU1R6NGNwTkViNTNKWXJ3YTdvK0xERngxaldSbTdDdUJud05v?=
 =?utf-8?B?N0x6dkZBQkd6TWZDRExyTHVub01OSnBWY2o3ekZOZWdnbEVuSTdOL1NpcjE2?=
 =?utf-8?B?ZklURlB0QzJMMnJkTkxzcWwzZ094ajhjY3hWWWZoM3Erc2pYbThTcFRzT1U3?=
 =?utf-8?B?M3BBeXM3VmlLWHBnT1dyQ0NPYlhNVGVOWXBqZ01UckRGK1dEWFBMT3hpSnI3?=
 =?utf-8?B?clZxTjFYUEpka0MzeDRSMnNJOTNNWWlaNjRQdGVDeGVLVEtMQzdwdTBYY3Fo?=
 =?utf-8?B?bkNGMXRaY1BLL0RCR0dCNGFTalBhVWk5Z20wNnpVMUI5NHg1SE9VMU1Ebis5?=
 =?utf-8?B?WkZHc0dTSEZJWUdhaml2TGQzQnBNdnE0aGZWSXlsT3Q3QUp3QjNuNlRVa0FZ?=
 =?utf-8?B?VTd0bTNXaW5nUGJXdzVRMnRPenRkYnc4NzhpUHpkZmZlakVqK1BUdVh2Umtt?=
 =?utf-8?B?b0R0TUhLZ052a1ozalZUWU5yWStFWHB1S2I1ZFhUZ3ZuZ2RmZFlSdmxRamlS?=
 =?utf-8?B?NGtZaVlMeVpxVXc3ZVdmaEx4U01NT2lBaDFqaCt5ZzBGRVBJN2ZmTzlOQkxE?=
 =?utf-8?B?Z0NoZmhsS0FQN3lDM0Y3bDVMeTBlME5LQ2ZzbUErRGtlOWpIYWlBOUt6cTl4?=
 =?utf-8?B?dWRiZGRDRnVZMnl1a1NUVndwazM5NXFnQjEzcnVvTWh3bmNYdEJPekNkYUZy?=
 =?utf-8?B?eXVMR0l0TE5aUWRLaU8raHpVRWx3ZlRLemxOdWFsekVrWlhmUDdJQ2p2WmVr?=
 =?utf-8?B?Y0FrbFNuK2NvL2JER0FwUzRaR3ZoYWUrUWlQamZhT3ltU2Z0MHlDa1dvakZD?=
 =?utf-8?B?Nmh6UW82SFhycldnMEdGRStlUG8vRm1nYjJKcGllUElGRHpHbDVNVTFDVkh2?=
 =?utf-8?B?bDlOR3lWMS81aHV1U1l2WnM2Kyt6OW5zNjljbHVwUHhRTWtTbWR2WFJ1VURw?=
 =?utf-8?B?VnIrcE44WHJwbWZnalAvMnFKVzVWWWs1NXNHZWRCS1MzK2ZQanBRcDFjelRj?=
 =?utf-8?B?UFAyUGp3UXJXQWhqZVRIa2phL2ZSamRmV0VURGlqMHBlZ3d3MmtUOFRRMEFV?=
 =?utf-8?B?NFlLdnFGWjlvVzZaaE00MUNMNEgxWXNDbEdKVGl2SjUyV05lZ00wQkhYVm5s?=
 =?utf-8?B?bFZ6R3BmWUlJZjkxMzhPOEZPam9seUIxTFlLU2gwQjlNYzVHNEhSM2E4eHhK?=
 =?utf-8?B?cXNTa0dFRXp3RGx0L2pNNFQyR1BOckI0bmoxTU1KZWlkYllnV29DQWxJalQx?=
 =?utf-8?B?WW5EY1BCWkNmeWhyVUdYTFR6Y2hKczN3NnZWcTkxYllIZVR2eUFCMTVWK21t?=
 =?utf-8?B?ZXpkT0VNSnFIYnRMa3p3MG1mN1hNbDg3SkJsUHd6OGMxcU5WUXpvT2tmSGdl?=
 =?utf-8?B?OUtxYTVvVGRPTkRqYWNnRHplbmN5WjhUNFVxRVhNdnowYVA0NlpxNnAyU2NE?=
 =?utf-8?B?Qk9NZUVrK2tTYXlDSEFsNkErZXR0RWRtV0kzSituQnZNRmV1N0MzS215UDFJ?=
 =?utf-8?B?OHF4VGQvOFRrTzc2TXNZYXJLRlkwN1VLQnVYd01uSWwzZjd2N1p0Tkt1bzE3?=
 =?utf-8?B?SXVWaTY2RHVNMUR1bDd5V3BjT2dwN0hXYW5QdlN2RWFFTmZkOTZtQlRLdGRL?=
 =?utf-8?B?NVhPQUdubDFhYVhsV2cyZUdZWXpNT2FmMFFDeHFZNXN1UWJaVGYrYW05UmRR?=
 =?utf-8?B?MzJreTJTZXFhTHVPWjlJcnJRV1Z4VytTRitGWHlLQnUzNmxrazQ2Qjc3N296?=
 =?utf-8?Q?luVHCpe0BtV9r4gtSyvh+lk=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE849FD02428F34D909EF69D936AD7E1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB11369
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509E4.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a4dcd59f-febb-4c3c-57d1-08de64a2f421
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026|14060799003|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VXZJMHNoLzg5eURvQldDWUswcmZtUWJoWDFBYkw3V0pwRnZ1dUpWZVhMQ0ZR?=
 =?utf-8?B?a2NQdDZ0bUg0VVM1TldRd2VTcllValI0aWsydXVLQlpJUVFURFp2QWs4Yy9i?=
 =?utf-8?B?a1R6NjE5MW91S1BrZ2JEcTJiTWtxMlF6NWNpM3VLNEMvMGVTM2lkLzA0eEw5?=
 =?utf-8?B?ZHhPcWZpVjNkUUdieTJuYnZXTjZDQkVVZSt1dkxMK2R0QWhUUmpJMjZUd1FH?=
 =?utf-8?B?SW82ZjVwV1VNTzV2Z3IwaEtEQWRCOUlIRVJNelNPU2F4RjJUSzZmdXRvTWp3?=
 =?utf-8?B?LzEyN3IrTDJIYnV5STFxenAzUERLZlV4a0dEbVdzTW9SbVMrc3B1eWQ5c0Vk?=
 =?utf-8?B?UHNvL21LUUNYSUpFOFlRaUdmeFNiWkxkZjk0TFltM0svSEhCQmE4S3BkVnNT?=
 =?utf-8?B?VzRPYlhiZzhFMXIwczRxam9pMnVyb2ZPeWwrek1Pekd1RmQyNXVzTGdzZmlY?=
 =?utf-8?B?Tkx5MUhrVmcyUUhjWXNDdWErdXp4U2UwUHRieXJRaVRZZUtyZVhKNFNBNVRM?=
 =?utf-8?B?cVlqand3bTZsSVZRZUE5a3FhTEhmMyt4aGZ4UEpxR1VUN010UzUrOE1uSEVq?=
 =?utf-8?B?VXdRYUdKWFlvTWNicVFSZjMySDdsUGNEQ3htN3VJSVk0SG1LQXVGMjZHeU0y?=
 =?utf-8?B?eHRiazhiSlVJcVpwOVRDbDNGUGlrRWQxVU9neEZKazhtTUJTeWE1NGd3TjJ1?=
 =?utf-8?B?bDNuWnZKc1QrNkt6aklzdG1Jek0yR29yVHFWVnBqTnFIU0gvZnVPOTFxelhJ?=
 =?utf-8?B?NU1hTUpOdSt3citOaHd4TjVkb1FVYy9IRzNReFR1RnJtUTd5a094MVRqZUM5?=
 =?utf-8?B?Y29KTkxlcHo3SmZRMkFuLzNqa092Vi92NUwwL2ZxcmlLanRnRGpqbk1hNVk3?=
 =?utf-8?B?Q0ZVMHhVdnhDYlNvTmxoaW9FbE4wOE5HRlBQSUFsSzZyNVFmNEFrb0dxL0xR?=
 =?utf-8?B?cmJwazYwdEdJSDU4WnVJdGVRY3JXek9Wem1YZGZNRVJnMEozckgvYUVDZHM0?=
 =?utf-8?B?N0ZLU3NUbXJ0SmVSRnhPeFZsbVZKSHdxS2JoOUR1WjkveFBSMVBWWjNrQnRC?=
 =?utf-8?B?TGtyV1JGWnZRYlYvM3NrNHQyVHIxMkVldm9lZ3BJMW1wRGIzRHVJamdZeE1J?=
 =?utf-8?B?RjEzYW5udzI5VVRvNUZjL256WDZ2cDByclNycHcvQ2JPb25NNXlBMGNjL1hY?=
 =?utf-8?B?UWRvajZtVzd0NHQrMENrMUhMZk45WXkxRExudy80a2tSdkhaMlRZcmp3VUlx?=
 =?utf-8?B?UE85RnFnU282YzM5Yyt1VnpYM0ZFMWlXV3NmRmlhRE1QK0Q2TStuakRRR2Nl?=
 =?utf-8?B?QWw4WmxTdFZDOXNDb0tIWFhsU1JkQU1BeVlmZU5NVVRhd2EwWHEwc1FDUUlj?=
 =?utf-8?B?c1grbmNYZjF2Z2NEUDhtOVY0K0tQVitqZmN6Z05IcmdZbWVyMUE1aG0zeTNF?=
 =?utf-8?B?L1lnald1SFNPZTR5UjZsOHBQSC9hZEdHdUtpL05oWUtkSUJlcDVFblorRnFw?=
 =?utf-8?B?cE9SUnlKQ1NsS0ZvU3J3cWtVUFY3eVdCL0RidERBNy9VZ255Tk50ODQ0R3Zi?=
 =?utf-8?B?VlRkSU4zYkJSckdFZm5ZaU9zU0laSUlSSUQ3aGMxYUNwUUJrcUdQVmJlWUtM?=
 =?utf-8?B?QVdEc2NJenhOYThxM2s3WXV5YjMrbllRbVhCRmcwVzFpMjk0QkhLRmlTUC9N?=
 =?utf-8?B?ZTlUa2M1ZmdLTkpMNEY2WXBQUGVab1ZPRVlUNTl3aU9LbEpRUXFTYmlTM2to?=
 =?utf-8?B?SUZINGNsZWtGcjNYYjI3d3B1M3VwODNmL0RoMWoxWlhUWFpuejVSUkpuMWtB?=
 =?utf-8?B?cUZtSnRObHhYWXVhYThuVUlwOW54NDRYTldreXRLUXlLcUNXQnYzYjg2cFRQ?=
 =?utf-8?B?NWlyUXlEWkgzR2tWeFArSVphNTZnTmZLL0U4c1ZxSUdHV3dYR09RblhlME0z?=
 =?utf-8?B?YUNlQjRnTHIvVEZaOVVSWGJqZ3BFWE1nbUtES1VzbFhZK2Rwa1VJV1hlWDZZ?=
 =?utf-8?B?VGJzL24rcXF0M2dFUHBhL2pkY2lYMHNhQUJMQXptZTgyRnZmV0tEbGVBa005?=
 =?utf-8?B?b2d5YlpBcnNQdVhoTFU1d2RQbGF0SEdudzRpUStQa21kY3lrSTlQZkIwNlRV?=
 =?utf-8?B?ZlZpVkVuOG1lbkVyWnlHbVg5cHlSYSs3RCthc1E0YUxPWEw0Sk9UenB2T3lw?=
 =?utf-8?B?eVYvWFZUZCtTaFlQRmhBdkJabkVnRDBnVE10RmROdk4zWWZPd3NFUUFvSFRy?=
 =?utf-8?B?TVBKN05QUWptSkdFenpNY2VmNWp3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026)(14060799003)(35042699022);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	oTv5xrNV+WesE+nQ/WD8PvuNlAIy/+6rdvsVvGWG0LxYFKhr1kzMqce+rgTHZklxQ6D9QO8/sYWd3jCeta3VdSZ5LV99msYFPe+9p0tnXNR9bQfqqemY6wEKBj9U8rYA2DblQWH4vb5JEYHmSq7eqgIIqwPrqyuIMBhgHEcKLv+ZT8AHz4GQY4xiMaXX4Y1gtNtcMd9MNK5JLtDv3jgyHUJgHAEM8Qx24D9pLws+iwVVPgaxzyrWStRe0ykX++9LrMb5r6dk/yWfJfdpzRnstQAdQD2lMGSNd6TIR4YZTPrWBsyb+8hlPe3BNb3TCIK1ed43mIuz0RHnyyUn0HNF07yN/pvLHP3dr/V+iJfnvCP/e3wMq7LFMOTBwH/lFiUtO4QhgqfFm12ztpW7qdocOwyUItOY74CkVhZTeQWhyG6mUcbtIYBNszwokI2lDh4y
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 10:41:20.4487
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38cc1f29-e6e0-4321-1db3-08de64a31997
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509E4.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10619
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 10:41:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66226

T24gNSBGZWIgMjAyNiwgYXQgMDI6MzcsIE5pY2hvbGFzIEtyYXVzZSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8eGVyb2ZvaWZ5PWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gX3BpY2tsZS5QaWNrbGluZ0Vycm9yOiBDYW4ndCBwaWNrbGUgbG9jYWwgb2JqZWN0
IDxmdW5jdGlvbiBBc3luY1NlcnZlci5zZXJ2ZV9hc19wcm9jZXNzLjxsb2NhbHM+LnJ1biBhdCAw
eDdmZWE4ODU5OGE5MD4NCj4gd2hlbiBzZXJpYWxpemluZyBkaWN0IGl0ZW0gJ190YXJnZXQnDQo+
IHdoZW4gc2VyaWFsaXppbmcgbXVsdGlwcm9jZXNzaW5nLmNvbnRleHQuUHJvY2VzcyBzdGF0ZQ0K
PiANCj4gRHVlIHRvIGJlaW5nIG9uIFB5dGhvbiAzLjE0LiBJIHdvdWxkIHByZWZlciBub3QgdG8g
aGF2ZSB0byB1c2UgYSBiYWNrd2FyZHMgc3VwcG9ydGVkIHBlbnYgZm9yIFlvY3RvIGFsb25lLiBE
b2VzIGFueW9uZSBoYXZlIGFueSBleHBlcmllbmNlIHdpdGggd29ya2luZyBvbiBBcmNoIGFuZCBo
b3cgdG8gYXZvaWQgdGhlc2UgaXNzdWVzIHdpdGhvdXQgZWl0aGVyIGRlYWxpbmcgd2l0aCBwZW52
IG9yIHlheSBmb3IgZ2V0dGluZyBhIG9sZGVyIHZlcnNpb24gb2YgcHl0aG9uLCBwcmUgMy4xMiBJ
IGJlbGlldmUuDQoNClRoZXJl4oCZcyBhIG51bWJlciBvZiBmaXhlcyBmb3IgdGhlIDMuMTQgY2hh
bmdlcyB0byBtdWx0aXByb2Nlc3NpbmcgaW4gZ2l0LCBzbyB5b3UgbGlrZWx5IG5lZWQgdG8gYmFj
a3BvcnQgdGhvc2UuIFdoYXQgdmVyc2lvbiBvZiBZb2N0byBhcmUgeW91IHVzaW5nPw0KDQpSb3Nz
DQoNCg==

