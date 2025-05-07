Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40DB0C3ABBF
	for <webhook@archiver.kernel.org>; Wed,  7 May 2025 09:54:12 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.44])
 by mx.groups.io with SMTP id smtpd.web11.4798.1746611648986280023
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 May 2025 02:54:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=jrxnva3w;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=jrxnva3w;
 spf=pass (domain: arm.com, ip: 40.107.241.44, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=XmNDkAcN7/w2ZXZyQ3Y6N44GUplPHcXVn1BDTv0uOem7psqh4be1y13FlxiE9+nQNfk/CN12q2QnHY45oPwsXLngWcMgwRIQJg3EKv/Jnr9fXBdJovGn0B4anGtuU83ZFd7ttrX/R6H/j5NleG7kFEw/CfbkdRtMFKeISGAhwRyf+cLlduLlON4fsGnKWkBWokTTn47OFxebQYT3lfgp/HLlVOc4AT/oeibzIbDMn7DJvay7s0CVfrj0210JgR1V/oTCcCTqRPfi7MA4hZ9FPS37/Cm+Cf14nhxLA4+qbErNHcN2YgmsNnSWX298Pb8eeLzRVLN3JXCJkgM7Y/bToQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtEYipcneO7gYbsRS6l7DgWKjQmNfSQ0p1DNXkKUdLo=;
 b=Qh94Vf4v9TMTovzoumlmIWVJaBbSaeAidGIEhs475J+hjdm+KlxOTa2d0FE3u8AIjAP8cjbUQcE+/3Sb0OSc7c6MKt+c5YaTc/FUEZUSBXBEXF5AwzjwMyJ07GOTkhR5cjOHSTm0PMmcCI57kW7RnKdkQ3ynuoD+ldIFzsZ+38z7zqd+Qs9GA6xbSY5R/UBmMz+cHGmsaoq7L5x6qXkW6e7PbDeMUWHBcTPnLjFgofKCaWgvcBwmy3S4EqeP3Z+2SLhh9uCwVZvxynJEfjOO1H/rr5zwJoQQNPHwAwyzWo4TcLFOpwrd/AMiAfSEFFF30NsH+1nCdiNDKwws9DfXLg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OtEYipcneO7gYbsRS6l7DgWKjQmNfSQ0p1DNXkKUdLo=;
 b=jrxnva3wuNkNZZp3t9K9QonkK9PGHaszVBMCpn8ejoSJpcsjCAdSrxkPJTXo0C/WcoJCaEDkDtSi4b2P5gOTGH9bzSa/hD16J6rD8/9VZJBQqLADLOVlonvUcHR18wVKWLxLAEHrBdsNnCBPnFY96kJzxihvFbcawVQYefnwz2o=
Received: from AS4P192CA0040.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:658::16)
 by PAWPR08MB10183.eurprd08.prod.outlook.com (2603:10a6:102:368::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 09:54:04 +0000
Received: from AMS0EPF000001B0.eurprd05.prod.outlook.com
 (2603:10a6:20b:658:cafe::2c) by AS4P192CA0040.outlook.office365.com
 (2603:10a6:20b:658::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.21 via Frontend Transport; Wed,
 7 May 2025 09:54:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AMS0EPF000001B0.mail.protection.outlook.com (10.167.16.164) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.18
 via Frontend Transport; Wed, 7 May 2025 09:54:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gn3IXHiT4uP3bKfpbPBwmCNLw1sBQ+T6cNi2jOVcTkIUlElbn+CZL8sjDpLWdF1HqKV4rOF1Tdu35+uEJ0zN71o/pfl7ILNYO34mJTw3JK4wUl4n1lNXT9H9RwCaDNiUCqsR/Nl0rzQ0DB9ZJajfZR4wcAzHHWx2cFOE3KcoJSxZZW5a0E4NLNAcIxLLT/8Dv/Bp8csHGXS0XPY+iT6tuTt6GSW9pbZdgTvdpgJji86gUSdF8iuwciaUjpVIUb6FMa1LQCfoK3Tm5igl0pHEl3M6wpzGU5MxzYy9gfLbehRQEiv9BV/auPtYQxzhprozbmT88q4Lu0Y4rYOsSakHww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtEYipcneO7gYbsRS6l7DgWKjQmNfSQ0p1DNXkKUdLo=;
 b=EDOtTP9vVyiKRBXiXxkogj9DNRyOhRTk1n9qVr+CRKGtlTs92HB+zT99c7iBMEbqJ8zX60drSe1hn1pmsqVP6YGy8zAHjg3gkOjVsKrmIDZMHEzQsLAproPsl8LXlKoYwoSvg/GOBiSV1h1NirfIwl0m2R9BXWttixLnAPDKl0m1xO6x0oxxyv2OpsOaGvPL9v+aocVl/D6uu/58p9+7AK2fDTm2Rrt3xDEvayWwcPDAvMM4UAnw1snmmnZXu1ggjm/cQwJoAz1OB28kqxEovesozs9ruAQnjutwFr2JMHx1KIMDV6F/gfLYq+SIrWYbMUih0ekjLk7AJO/X8X2cWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OtEYipcneO7gYbsRS6l7DgWKjQmNfSQ0p1DNXkKUdLo=;
 b=jrxnva3wuNkNZZp3t9K9QonkK9PGHaszVBMCpn8ejoSJpcsjCAdSrxkPJTXo0C/WcoJCaEDkDtSi4b2P5gOTGH9bzSa/hD16J6rD8/9VZJBQqLADLOVlonvUcHR18wVKWLxLAEHrBdsNnCBPnFY96kJzxihvFbcawVQYefnwz2o=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB7664.eurprd08.prod.outlook.com (2603:10a6:10:315::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 09:53:31 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 09:53:31 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"matthias.neubauer@sick.de" <matthias.neubauer@sick.de>
CC: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: Re: [yocto] Install externally built .ipk packages during image
 generation
Thread-Topic: [yocto] Install externally built .ipk packages during image
 generation
Thread-Index: Adu+k26Ukj981tFsT5+wLQYfqajvRwAAWmqAAAAt19AAAX0UAAAmSWQQAABNCoA=
Date: Wed, 7 May 2025 09:53:31 +0000
Message-ID: <67BFF490-850B-49FC-AE23-ADC7C9C1ECB4@arm.com>
References: 
 <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
 <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj9JXZDBWe91SCZhAxujAyWpJgBovMan-pYGoxaRXOQpYA@mail.gmail.com>
 <FRYP281MB1914243C089D8CC2F7EE8172E988A@FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM>
In-Reply-To: 
 <FRYP281MB1914243C089D8CC2F7EE8172E988A@FRYP281MB1914.DEUP281.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.500.181.1.5)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB7664:EE_|AMS0EPF000001B0:EE_|PAWPR08MB10183:EE_
X-MS-Office365-Filtering-Correlation-Id: f18d8d28-309e-406d-a341-08dd8d4d19b0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|10070799003|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bCtqRjFjd1BFS29oTEhZbTNQcGo5Tjl3cjdyVDcvcFM3SkRSSGdhbHkyR1dB?=
 =?utf-8?B?ZHBEL3VldE96NWoxZ3JMcnFXYWE3anliZjlQa3ZmaWRMbFR1WmZIU3Nnc1E5?=
 =?utf-8?B?WVF1THJTcUhHWlVHWE51V2I5SVJ1Tkp0Z0wwbmdDOHZhSFVUMVpYazllUFFU?=
 =?utf-8?B?SUdvbGZvK3V6Q2FIOXZQTzRvQ3hlUnRob1lpVVlLYjNTOUFHUno3czBKc0hz?=
 =?utf-8?B?U0lsbFh6MG15NDcyL2NzU1BPbk5aTTVXSHB6eXM3MVJ4UEp5eDRFeGtqQzd2?=
 =?utf-8?B?TXB1Nk1pUCtMakxXc00vbWZUa1FFeGxWUG1oUit3bFhkYWo4TUZCK3ZTQUtz?=
 =?utf-8?B?UGJFcE9uaUtmZkdGTDlCamR5eW5HSHplb0xmWXo2MWZwYkNHTHR6eEM0QXRr?=
 =?utf-8?B?S2NRY3NzZkRNV3BJSXY3UktzR245MjdWOFNnYmtwMi84YUJtZVA0R25UdXFm?=
 =?utf-8?B?bFNVS0ZaL1RnMTI3QTM1eU00Q254aVk3T0RhemdlVHg5ZVI1NlY5cEFvNjdX?=
 =?utf-8?B?UWhiNXFJTUZiVXNIUm4wVW9VZytjSXZrc0ZPUmxkTmRVbDBuck9ZM05QWnQw?=
 =?utf-8?B?QjM1K205MkRPam53a1FGMGhUWEJwdEQzRHRJWWYzaHZ6Yk14a0x4VkNzZDd5?=
 =?utf-8?B?TStVZ1Rta1pDN1NJOW40TEVQb05IeTNCNmh6K1NuNHdKK0d5L2JBL0kyMXdv?=
 =?utf-8?B?aHpyampBa0NlQzhqS0FDSHdHRlJHb3lCMHlYMzVsK0wzcmVsVjVGRUNwajl1?=
 =?utf-8?B?YzhXbnNjbENWNjFrMldNZ1phSU4zZm5kVkpkZVNkb3c5dnAwMTZoVVZYVzFo?=
 =?utf-8?B?NnpMVG9vc0RtUHdsSER0anViNEFxWUFqeDBtMnVBZ0dhVFlnSVJIdDJjdDRR?=
 =?utf-8?B?ZEdjemptRHZMTkxMZStCVjQwU1pnUGY2VjQxUC9CVkhFYlhZNHJmUE84MGE0?=
 =?utf-8?B?MmdOUWZod2pURUhhczlEWk5NVy9zRG1DckhNZ0tkVGUxYy8rYUQ0a2ZZWE8x?=
 =?utf-8?B?RkJZMEJvdnduRjE5aEtvTTE2SVVHUUNsdklWQVo2eW90amE1NzB5clU1ZUJO?=
 =?utf-8?B?eUlzNHdsVHd1WE5xNWhRbEw2RkRDTk5OZFFkWFBIS1NhbnB3Z3NJS214MGdQ?=
 =?utf-8?B?OHhkU084alZRMmdYL0lnQStJZS8yN01FVG1oRk9jK3BmZ1pDZ1RXUmxTNllU?=
 =?utf-8?B?cHRBNGNOVEFxbFlMdndzUDBEY05ENmJ5RHhVRmlwMGcvSW9JZDlVS09KdGNx?=
 =?utf-8?B?VmhFUWpEaE1GeDNNMFc5a2cvVzNPVitJMFF2WVdldXZtcFVHWC9LZEFieStC?=
 =?utf-8?B?YllXKzJQQVpZclFhbzJuMjg5QVJwUnNMZE5QQ0N0eUtoaldWTkY5dEdZdTY0?=
 =?utf-8?B?NWRoVUNmYlhBaE14TXpXLzl5VTkzTHpmMVZwdnhiV0lnMzZ2SitublBuUXF2?=
 =?utf-8?B?SFZNRFdVOHI3YUJyR2lrSld0Sk43OUVjdHNLbGZFempuL3NlNHhsWHlXZ1lu?=
 =?utf-8?B?SFAwNzV3b0tDK3IzdHRKUXZwc0pxU0NpZmZ6Z3IxUFlmZnhxendJVkd1a2xD?=
 =?utf-8?B?VHljcS9TZkpleHhiVXVtNDRWRTRwVCt3R25nclFGWGNYWm10T1ZpM1Fkb3NL?=
 =?utf-8?B?UVBMZDVTYnNhS0JvZHV3MGNBRVN0K3g5dU5vYXI0Ums0T1dOV0UxTGpicElF?=
 =?utf-8?B?RTdwKzhpb2VUcmtteGpkS0wvdnhST0YyL2tlQ3BrSWdyKzdNd2cwMjlGK2xI?=
 =?utf-8?B?Vm1nVGc1a2ZSVTFZbEtBWVVVY29CRUU3NzQ1VEh4bGNYenVlOUc0UlhCSlRX?=
 =?utf-8?B?Z1lSVjVKak5kS3g4UUd4L0VwN3FOTm5Ra0NvdVY0b1A4cjJnWW0xK1JBOG9u?=
 =?utf-8?B?cmlPWGxkL0tPR1U0ZzFsU0dDdDJTUEE1cllFZTFQZHptdUZjb2FKOXBVY2xi?=
 =?utf-8?B?SGJLSnhrRU55RW10VStRRXdpdmhRL0dUa1o3U0hQaDhqa1VYQnBYNVFSSk5X?=
 =?utf-8?B?NGw1MjdnTkRBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B165CF9BEEB7ED4185071CDA40C7A07E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7664
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B0.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ee6753f6-eae4-49b8-0592-08dd8d4d0639
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|14060799003|36860700013|1800799024|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M3ZVU2VhUVVaZWZONWpGa2hUUmxxbFRIV0QvbkdwNStOenJQOE0vUCthWmdU?=
 =?utf-8?B?bVpDRjFlTi93UDFQSmQ0SEMvUmY4RTdsZzRuWjAyd2hkQ2J0V0JQOEJobjhw?=
 =?utf-8?B?c3Q5ekhISDA2RkNLSmxWWkQ1UDl0U25YSnRta3Jzblk5UDdteXd6K2ZZbUlK?=
 =?utf-8?B?SEhrak9iRXVnUWFGM0YrRkpxbHM3ekhTZExJcW9XRDNsK09mK1ZtZkltK1FL?=
 =?utf-8?B?QXRlUytnMjJvZ0dvY0orMm1EV0VGcGJXMWR3U3YycitlL1ZycWZOTWFHOTc0?=
 =?utf-8?B?dDE4NUZrVCt1OThZRFJlWndFYWVpZXZEM0VtcDFER3Y2UmpQQkVYTkFkYUd2?=
 =?utf-8?B?RkZFOHA2ckdRSjR1Nm1QcEphSUMvbmFOZlJpUE9GZmM3OU12Mk9IMXRaRThX?=
 =?utf-8?B?bkJTYjI3bXFrQTR3NlIyNWNjcW1PWGhPd2dhTVo4clEvS1BoU1Z0d0dNdlEx?=
 =?utf-8?B?Rll1NVJ5RFpwWE4yNVFTMGpleWJwTXZKaklNRGhUWUFGNllCTE83akdiMy9h?=
 =?utf-8?B?VE9yYlVJZGExbEdWM1F0Y1Z5YnQ1Um1RS0dIZkdoSW90TS9YWURDOUNIck4r?=
 =?utf-8?B?NmNnNWFrM1JFQW8vWjIrZlRPakc5OWRsakd0RmtaK1hhUXZUNkxCd3lQZFdW?=
 =?utf-8?B?R21XekdFdUZrcjN1L1J5Q3ZEY1NCT1I4RFdVbFpmUlBtL3hkZ0xnbXFwcDB6?=
 =?utf-8?B?T2VUOVpsZWRyeWdxTXJWeW1QTHpUeXg1OFBPaHVYdUJyWlF3QmxPdFJRd0h2?=
 =?utf-8?B?NndET2l4VTZrNitNQUFPQTBlQjI0VXU1aVR0OVd3SGxMVXJSWmpnakdSak9D?=
 =?utf-8?B?aHY4eWd1WEdOeHhZZHYyTVdsYTZKanRyVjFiajN3RG5sTDV3Z0dWNTY0NUQ0?=
 =?utf-8?B?VHVmTUc3eXkxSFVUMmlYTkdqZ2VSUDN6WkhocmJQUHNZR0Y2YW40L3owMG9i?=
 =?utf-8?B?U3h0Z2NadlB5MGNJWENRanZkTDJxMXU4VmxoVFRiWEs3U2xiQlFDUHM5M3Bo?=
 =?utf-8?B?S1k3OTA0MCtSTS9NRU4zWm5YSTU0UGRvZUx3RDhvSXVFNHlpTHlUcTlyUlZZ?=
 =?utf-8?B?WVBuVkRCYW9NOEJTMGR4bHdjYnl1LzRaSVRnaDVtblR3RU85amlleDZzZjZi?=
 =?utf-8?B?SFVhMG9EY2l6NTR3VGNHMkJkTEdnZHMwa21ySFpHWW1oWk5nWVN5OUE2czJQ?=
 =?utf-8?B?Zmg2bkdycG9wbUtXU1BQZHZPd05wU1Z3N2Y2MDl3NUV6ZUwvY3o4ZjBxL0p4?=
 =?utf-8?B?cUNxRVFyUEh3Y09HcVYrdmVJd2dvV04wWlNhV2gwSEtwemFqU05zQzMvZUVu?=
 =?utf-8?B?Q2k0TDRsZE50UXltdGRjR0d1V1kvaGJoa0ZoUkVNYllPT0NWOTdwVWloOHBn?=
 =?utf-8?B?dTFoU2FwZHlHZDJNYm1NaThsRVAzVWd6QVMycDFGdUxoaWVhRVJxSDNSUGxo?=
 =?utf-8?B?czFQOFplVG95UUM3c3BFOVUwZzNJbWFoU1VjY2Z2OTZUVkFVajVqbXpoRmx4?=
 =?utf-8?B?TFRxcFdTanBKWEJNZ1BFOG01MTZrZ3NXOERGdmlBTUxUU2cyS3pGVk12MWRK?=
 =?utf-8?B?V3JVazA5M1RlK2FyaC9oM2ROVlU3QlgzcUUwWHlubFFadW5KVXBOcWdwb0Yr?=
 =?utf-8?B?bTcycUJleW0rVTNGZ1cwN1c2UzVhOTZkbkxXTXh3eXJXUHdPZUkvcWNkYzVH?=
 =?utf-8?B?bmJWWkdzNWJsdWRvSlFlaG43Z3BsUVdvalV5ajF1MCtCZTYzbXlXK0R3Y0R6?=
 =?utf-8?B?ek1aL3JJOWlmL3ptUEJyVnVBemo4ZDUzbVNCQ0UwbmNaWFVWL3VIUDYzVmVx?=
 =?utf-8?B?YnN5SU1OMC9rTzhvQkdNdm93QmNwWk9iL0t0V1VsVW04aWxHMlFKczQxVTJE?=
 =?utf-8?B?d2VBWTQ4S3NucTB1U2EwN3BkZ3NhMzJrS3JHU3hLRW5aRTd0QlhnQ0xJVEt6?=
 =?utf-8?B?RWQvV3dXUzJYUjVVWkJYaFpYNmZFODdRQjNlaVlva0kzTG9vWlhsNG12Skp0?=
 =?utf-8?B?czdzMi9NNjJLaEFlVXlnVzF5U0xuYzRPTlRvUEhRMjh1ZnFyaEJmMDJVc0Yy?=
 =?utf-8?Q?zly1wS?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(14060799003)(36860700013)(1800799024)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 09:54:03.8578
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f18d8d28-309e-406d-a341-08dd8d4d19b0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B0.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB10183
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 May 2025 09:54:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65291

T24gNyBNYXkgMjAyNSwgYXQgMTA6NTAsIE1hdHRoaWFzIE5ldWJhdWVyIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxtYXR0aGlhcy5uZXViYXVlcj1zaWNrLmRlQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmc+IHdyb3RlOg0KPiANCj4gSXMgdGhlcmUgYW5vdGhlciB3YXkgdG8gZGlyZWN0bHkgaW5q
ZWN0IC5pcGsgcGFja2FnZXMgaW50byB0aGUgbG9jYWwgcGFja2FnZSBmZWVkIHdpdGhvdXQgdGhl
IG5lZWQgdG8gcmVwYWNrYWdlIHRoZW0gYnkgYW4gYWRkaXRpb25hbCByZWNpcGU/DQoNCkdlbmVy
YXRpbmcgcGFja2FnZXMgaXMganVzdCDigJxwdXQgZmlsZXMgaW4gdGhlIHJpZ2h0IHBsYWNl4oCd
LCBzbyB5b3UgY291bGQgaGF2ZSBhIOKAnHBhc3MgdGhyb3VnaCBwYWNrYWdpbmfigJ0gY2xhc3Mg
d2hpY2ggdGFrZXMgcGFja2FnZXMgZnJvbSBTUkNfVVJJIG9yIHNpbWlsYXIsIGFuZCBkcm9wcyB0
aGVtIGludG8gdGhlIHNhbWUgcGxhY2UgdGhhdCBkb193cml0ZV9wYWNrYWdlIHdvdWxkLiAgWW91
4oCZbGwgbmVlZCB0byByZWFkIHRoZSBwYWNrYWdlIG1ldGFkYXRhIGFuZCBwb3B1bGF0ZSBwa2dk
YXRhIHRvbywgb2YgY291cnNlLg0KDQpSb3Nz

