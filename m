Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2EEC27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 11:14:00 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.80])
 by mx.groups.io with SMTP id smtpd.web10.8617.1718190835664416772
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 04:13:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=DaKwVpJU;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=DaKwVpJU;
 spf=pass (domain: arm.com, ip: 40.107.103.80, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=lvXGWMCNXo/glfvXDWJ2rhFLmsTy4mXoW96aIpXcSDBZFUOICmgNZwFzjqF5MMggDYEQvFPEZJsZmHdhQhHA63TZxqK1AdRIkRquNgCHHSPpj8WSHpZDkwmf2kQ8IvUmB7k7/v5YqPZUvzezIvyeG2zZQS7jxCjM7hgKus5Glr48ZyLgpaA82gQz6RSUIkB6/aqmm3i0bnvuMQZAOY9Bp0NmVPoo9br5yvBMNhmFGBjnQcrfVMkg+O/K2q3FJpmCJKnADQmq6/wdCHICALlva/N5e5jnuNJoUewi/4NrSKv7p3JhCctu72iN/IwML9CUMcnNtfYENf2y97jN7C6ecA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fbRZGOcL4BkvHqc2r6/lYo6mluVsUlQw4qIY7T2wnwc=;
 b=VRaNZugUYvI9x1cOwbN8qn/Sz83uuDMlr6H3CCqaTkjZPMBRaUBYuaO4j1TrLemffbwqABOJGLcR+oAnJlLidCbX9JSGiQkimy/2wY+c5dAFAxK65vSiJAXDDc1/KX57o+dIG6FPt47jFbHKfOZg1ofX7Omad6wHpa1Wd9DYdTzj/kB6HrMPBb5TohJy566876Yp6OeGWjTA3vjAFdYUI2EtU7x3YU0TGma3ajwmQbHwEkiMHMw3XDdR7nlFGlYyB/axuyoWMfFeYKQ2eqM3SAKF6epyjJUTKN6pLHoG5hd+vdSlRX2q0XiliROPi7n5KaValF2Xf1p82Cfj/bekDw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fbRZGOcL4BkvHqc2r6/lYo6mluVsUlQw4qIY7T2wnwc=;
 b=DaKwVpJULCH0j59goCf8oR1wqfiQx1Zc1JZqImmMReCIXq3gljUFtk6E2Mv4W55yB5k5NpIgT0aFkqzgi1+J3q9uznEHDU9hKBFjpI/as5xhMi5Bkd/ymt/wUDIpVPcqV6QahkNLXdBknik1lnKcJP62WWKsj/C6xVIF+mzeAZM=
Received: from DB8PR06CA0033.eurprd06.prod.outlook.com (2603:10a6:10:100::46)
 by AM0PR08MB5395.eurprd08.prod.outlook.com (2603:10a6:208:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 11:13:50 +0000
Received: from DB1PEPF0003922E.eurprd03.prod.outlook.com
 (2603:10a6:10:100:cafe::9b) by DB8PR06CA0033.outlook.office365.com
 (2603:10a6:10:100::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20 via Frontend
 Transport; Wed, 12 Jun 2024 11:13:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF0003922E.mail.protection.outlook.com (10.167.8.101) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Wed, 12 Jun 2024 11:13:48 +0000
Received: ("Tessian outbound 0445a89d5280:v332"); Wed, 12 Jun 2024 11:13:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 25d0a4d62e0fdea5
X-CR-MTA-TID: 64aa7808
Received: from 22cdc8297dda.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 37C4EB6D-BF41-40EB-8189-016A61176C6B.1;
	Wed, 12 Jun 2024 11:13:42 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 22cdc8297dda.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 12 Jun 2024 11:13:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbffMNJLW2VPtOv7ennT8YPw2tu4x0Bl2Y69K5XEc2pv/GMSh8Zg45cj7m+Tn4A0eErM6f5vxoLmEGQlWqyiMA9YBKo9d/c11o+r+bAO0L7Oo54Xw6AMp++tdIf/5AgIzEAsJLWVysNSPXyTG1+X/L5Nw40GXr1Ifcwuj9fH1OHOqUVZ3Rckkob2EELl0GQ3bKRmZqe3I0+hDD6ixDuEnFJOdTIPd0IutRFfr7V3QkYcHZTpSglLzUzEYsAOkZnfIMabWQrJoXLOFuoU5BgHV4krEfsUJWIRvDa+CVyPKYRAB9EtcHnDvGNx/kJRaqRup1vU4DspEhSFzSrdlwE2Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fbRZGOcL4BkvHqc2r6/lYo6mluVsUlQw4qIY7T2wnwc=;
 b=hTnDvcJdqwHqPwd8CGXF09ErejUUv95121+gueHTVwAoNzP4NWvyJfh6e/gucGBjTx3fn/rp513P+kgTM4DQkilCcoQIIBeGtu5g11Cz+udvSYev2D4MqX+yB6rjnlWTgPCwsafYoZ6aigjkptxrf3nQPvkE9M/NKwApInZQtM05dspKWF5X8vKzOTSzgukDQ9XCPG9vIgkwEC9GOMid+eUTn/LtrTKIXlj/dqlhVv42C3rrVIiWS7P6CRYj49xFJdHA9fNZHS4M9w83Qc8LGTYh3r4JMDeDB45h6Lig2Qr0HuMxbDkFFT9szVH1qeRB7nB/ZxFWk5n4m3NUOrE02Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fbRZGOcL4BkvHqc2r6/lYo6mluVsUlQw4qIY7T2wnwc=;
 b=DaKwVpJULCH0j59goCf8oR1wqfiQx1Zc1JZqImmMReCIXq3gljUFtk6E2Mv4W55yB5k5NpIgT0aFkqzgi1+J3q9uznEHDU9hKBFjpI/as5xhMi5Bkd/ymt/wUDIpVPcqV6QahkNLXdBknik1lnKcJP62WWKsj/C6xVIF+mzeAZM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9752.eurprd08.prod.outlook.com (2603:10a6:10:444::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 11:13:38 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 11:13:38 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"kaiwan.billimoria@gmail.com" <kaiwan.billimoria@gmail.com>
Subject: Re: [yocto] Recipe for using a custom Makefile with C source
Thread-Topic: [yocto] Recipe for using a custom Makefile with C source
Thread-Index: AQHavLWldDWl4j0vBki13epa7wL4SbHD+a2A
Date: Wed, 12 Jun 2024 11:13:38 +0000
Message-ID: <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com>
References: 
 <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
In-Reply-To: 
 <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9752:EE_|DB1PEPF0003922E:EE_|AM0PR08MB5395:EE_
X-MS-Office365-Filtering-Correlation-Id: e8daf3a3-a949-402d-d01f-08dc8ad0bbbb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230032|1800799016|376006|366008|38070700010;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?OEhHTk4wcm9BaWRadHdvL0Nnc3ViaUxUVmp1MVlodEFNVnkwK2NQZEdOL3BW?=
 =?utf-8?B?SkNOUzd2L25mTmpHV2g5bld6Y0M5ZVZwUEkwOWErVEFjT01uSEljNUVvVTd1?=
 =?utf-8?B?b2l3NDQyQlVTbnN4d1NEMy95RXNiSFN0S0w2ZjBVQ2dhU1lqV1N2UGR1UEpW?=
 =?utf-8?B?SEErVFk1eWpycUZseGlUOGNZZWhTOFpRSlhMQWtGVXp0cElpb29UaldhZHJY?=
 =?utf-8?B?ZHNIRDdtTExlYWI3VEdmV05kdENTK2I0ZnAySnlTSzc3S2laTEdoSmtGUnlj?=
 =?utf-8?B?Y1Jkdlg4VDhoR2h5VUYwQ2V0NkdzR2FQQVVZVXh4TzJRU2x4K0RSVm8zMXRt?=
 =?utf-8?B?SEhWckpJSUg1QWtGaXYrZ01YbWpLaE4wbFpRN3Z2cm9KdkROZFpjV2hPZVJD?=
 =?utf-8?B?N0k4MHowN0lqZmtFKzROSi9IQVY1NzhNQmFaVWdZZk8yZHRRSU12Rjg5cWFO?=
 =?utf-8?B?RC9FYmRDeFhVaHdBQ0VrQ2xPMHVDTHZ0dDhLUkNaa2phWElMS3RkUGJBZlo0?=
 =?utf-8?B?YUJiUmhmWHR1STcyNWlTWTBHMTN1d2ZNTFNIMW1yaWxDc1dENzJSWGs2T2JC?=
 =?utf-8?B?RVlEQXg5bUdTbnoxRjBaT240bFFxazJNTFdmVmJPSDdEWjBhTldTZjRHRjNH?=
 =?utf-8?B?NFJaczFQTXN1NE5BK1hkNEkwUFhVYmRMd3JCdkNMUWNjeFZVdXZJL25rTmkx?=
 =?utf-8?B?eWdmZzVoYlNrMEs5UlpBdVVLbE1sQVplL0FUQjlmclkwRndoR29FemgwMU90?=
 =?utf-8?B?RWZFZEFPamE1ekVRMWFDMDFjZXRUYVJ1NjI4Z1cwTVNpMS8rTGUvZndHbXBE?=
 =?utf-8?B?dFpsK0tzUzVNMGk2clhqOGYxcWdRQzJiRnQwSVJoWkdZSWlUYmEzL3ppc0Vk?=
 =?utf-8?B?cWFicTJ6Z0U3VVpGYXk2aElBUlNNekdIWUZmQzc5bjlUWEQ3N1o3NCtuOC9S?=
 =?utf-8?B?NlQxU09sM0ppdlFSM0FtZVNVdVJjeUxYazZtNjk2Z2RXaFdHNXh3L1IwVG1D?=
 =?utf-8?B?VjFHa1RLdHJSajFzU0l5aStPM0krRDVkRnJzSG0rTDVub2ZTYUhtRTlMYjVQ?=
 =?utf-8?B?eEVnMStiTlBCTDk5TUo5MnF5SEtkUlJKcWxYcU9iV3Y5ZEFtZkRXV0JGTnRB?=
 =?utf-8?B?UG12T3RDbWFVai9xQzFlTHJkV2J5Mkg5NTFJNnNNdkxtT2FRZk5yZ21uS1Rz?=
 =?utf-8?B?czVabVNOMnZQblRYVnFya3hnTTMxVzRLdi96am81a0RmOGw1TWNMM1pFbVF1?=
 =?utf-8?B?OURDak90eTZYNUV2NWplbzV3dGcwV0hhKzJUQ2lYT3ZJcmVPSGY2SWVzeXJ5?=
 =?utf-8?B?RzA1dm95NmxDMmljQ0RQcVI2Zi9NV2p0T0dhL2tnVm9xNjd3MUtxVFZNWG54?=
 =?utf-8?B?Y0xER3dHUnhIZGh0NlpWc3RvNGlKVVdvK3labDRmbS9tbWdOYnZHSGNROXB2?=
 =?utf-8?B?MVd3WnhMamxaTXh6U1ZOQ29uQkhRSGpETWV1RjhsenFKeVpBejFKR3J2U3Mw?=
 =?utf-8?B?cUdENkR6UFZUa2t5QStqaEJXcnRpRXlpNjJaSWRuSTFoK2Jhd2JjZ1k3RTZu?=
 =?utf-8?B?TFNSYW92SHQ2WXhLSVRGUGRMZklwa2tIcnZLRjM1WjRpOFhUY21nZFhWUFE0?=
 =?utf-8?B?VndkQ1lCMlh2MG9jZjZYQUJNUE9qNlVXWHZNUWprMzFtSzgxNVNsZDFrdHox?=
 =?utf-8?B?YUI1V2xETDB2MlBleFJDd25Wa0lFaHFZNGE5aG5FT05ZKzFMNXFTcmtwR1Iv?=
 =?utf-8?B?Zk55MlVVbnZlTVkxRHhuOHpMc1I4L1E5aWprSlhEVEFWSWJGZ25KSXpvZkZs?=
 =?utf-8?Q?IBG9/MBUVLLX2QWYytcCqyF6KTsHdtVY7xeQQ=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(1800799016)(376006)(366008)(38070700010);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <9DF4EBE0DD16454B8BEBE2D900397A09@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9752
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF0003922E.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6e2be620-70cf-446a-aa41-08dc8ad0b58b
X-Microsoft-Antispam: 
	BCL:0;ARA:13230032|1800799016|82310400018|35042699014|376006|36860700005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NDFlQ055RjJldHBqQnkzVjNUbWdiVXdhMTV4c0Q1NTRRV2ptdzMwNVdpZEtI?=
 =?utf-8?B?aFVNOFptV1BmNVZZZkpvM3p0RUZYZHhXYmpEQ0lma2FMaHVzSi95ZWpNcUZ1?=
 =?utf-8?B?MWVLcUNxRlFyaUZlVXNKN21VeUdqQmJnMVNHY2QzOXFrZG5zWFV6aGJhTU5r?=
 =?utf-8?B?LzN2U0tsUDFuQjhkTE8vR1U4KzJ0MEFNOWp5dnZzSGY2VFNvT0tneGZ5VDI3?=
 =?utf-8?B?T2VRRjJrQ3BZTmhFOTR1cjI2ZDNkWm1wWURvaHRjWmVjOWlscGphTDBIdEZG?=
 =?utf-8?B?QVpFZVNlOEF0SGhjYnhnalhCQWZpelFKVXppcnVpSnlYQ1ZuR0dIdTFZWjZQ?=
 =?utf-8?B?UktyZVJYc2RnVTN1ZDA5WXhvZldFSTRwL0Z2b1RlREJ0d0tWU29JSkFBdDhC?=
 =?utf-8?B?VjlQNTVPcmhtWHA1eWF3OXg4WDZnVTlESXN0VTd6cW5aaThKOGtNRUplTmVy?=
 =?utf-8?B?Q1dydGMwRFkxalVBZmRxTUlJNDJWSFVMd0ViQnFCdEl4bXAxYlFFendwSmpu?=
 =?utf-8?B?QSs1eE1PSnYzR1greVZTeEZwRzZ1UG9ycnZPSmhUbktZUjJ0Vlcvelo1eU9M?=
 =?utf-8?B?YkNRQUMvcU84eEhpRjlSakF5Tkt4c0FCQmZVY0ZLeGRmUm0vaGVNMFJuZlBa?=
 =?utf-8?B?bGpGVHJmUjFmNG55ekpOeko5Ukt3T1Y2MFMxTjRBck1YT0FxbzZWcEZud3hJ?=
 =?utf-8?B?V1hNblY3c3VtUlU2TmxpTGQzVVQwYm5rYTdjc2l4UDBpQXh6Tld5UDhtNHRD?=
 =?utf-8?B?UzhmaEtyb3pnMjZDQURrSWIveWc3K21TYzQwcHBIZVZNRUdkUDd1Q2s1RTRx?=
 =?utf-8?B?a1hhazd5Ni9zbkllMkhrS1EvdndUT1g1a0tvZU44STh2am8wMU4rT2RWaTIx?=
 =?utf-8?B?TFlwcXRQaW56RU9kVnVtZGNBU1MwYUJ5V2hFZkVhczlEcUI3UElmbFlzN1ZS?=
 =?utf-8?B?Ym5pRWFsdzE1R0tmZndEZEJ5MDIzZkpvU2FPN0xnR0RkWk1CMjF4M0xnV3VS?=
 =?utf-8?B?cEN5R0NTRmtJMklCNXFieWthVTJsaWJ2cW1qeXVhTjF3cmV6V3ArcWxlbEcw?=
 =?utf-8?B?MG4vQkZNWmNCdWhkNWwzREJhN0J4cU1ZMXgwWnk5clA1NXRiSFJsaytaN3ox?=
 =?utf-8?B?R3RIUVJLd28rRmhmMXZSVmo0TU9YYVAxS0lIWU0zUHp0eEZjT2NWYVdGMGRy?=
 =?utf-8?B?WGtDeWpGdVhpVGkvNExGRnMwb0tMUk95cnVYYWZ3R096bUQ5enpmNjRDNnIz?=
 =?utf-8?B?VzVQRGliUENnUXVMdm1DQzFyRFZIT0xRNW4vd2k3dHU2VzRERnphOUUzNERp?=
 =?utf-8?B?eFZUazZLNjJMZTUvTVIzTk5qUUl1UVpXTVBBTmk1VVA0VnZpWHJVcDV2ZzVS?=
 =?utf-8?B?YVU3UTdiaGJLMWxaaGFMbFBxYS9SUkpVU096cFBZTTZPbnlpSmh5ZHNxWFYv?=
 =?utf-8?B?bjhYUVE4NGltajRwaDJkR2xpTTBHa2kwU0grV0xYdXhMeEZDWS9Ka29xWndi?=
 =?utf-8?B?RjJzZFc2ZHBGQ203czcvaEcxZDJjYjhCSmIyRGhHemxTVlBBMkY2YmVnT0pB?=
 =?utf-8?B?VFcrck9NSTgrVVVtMzI5MTNYczNpK1FNNldZT2lxbE45Nk4wcDRrQmgyWTNX?=
 =?utf-8?B?cWd6T2ZaajQ3QW8zbDQ4OW9BTHFZK2RuVTdwaXVtYStPeFB4VnEvdVgzN0hR?=
 =?utf-8?B?TFpmdmJCNzNDRDRCTW9Zd25wSU1hNTVFdVpseVhySEdaSThjZ2UwMDBTbUMx?=
 =?utf-8?B?QXRYcThSMkU0ZHpKV0psSjVFWDlLeFdaUXQyUldQZ2twOXBDaWFjY1A4TGFl?=
 =?utf-8?B?MW1xRkNpRXVBOVU0bVFvMTNycFI5dGZRcms5bkJvTTZLZjNBMXU1TDM0WEhI?=
 =?utf-8?B?cmhodEZOalFNZEJLSGRwT3l1WTluVm5ZTFp5ek9PMjlneHc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230032)(1800799016)(82310400018)(35042699014)(376006)(36860700005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 11:13:48.6621
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8daf3a3-a949-402d-d01f-08dc8ad0bbbb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF0003922E.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5395
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 11:14:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63327

T24gMTIgSnVuIDIwMjQsIGF0IDExOjQ0LCBLYWl3YW4gTiBCaWxsaW1vcmlhIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxrYWl3YW4uYmlsbGltb3JpYT1nbWFpbC5jb21AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBIZWxsbyBhbGwhDQo+IA0KPiBJIGhhdmUgYSBuZXdi
aWUgcXVlc3Rpb24gcmVnYXJkaW5nIGNyZWF0aW5nIGEgcmVjaXBlIGZvciBDIGNvZGUsIHdoZXJl
DQo+IHRoZSBwcm9qZWN0IGFscmVhZHkgaGFzIGEgY3VzdG9tIE1ha2VmaWxlIC13aGljaCBvZiBj
b3Vyc2UgbXVzdCBiZQ0KPiB1c2VkIGZvciB0aGUgYnVpbGQuDQo+IEZyb20gd2hhdCBJIHJlY2Fs
bCwgdGhlIHJlY2lwZSBkb2Vzbid0IGhhdmUgdG8gZG8gYW55dGhpbmcgc3BlY2lhbDsNCj4gYml0
YmFrZSB3aWxsIHBpY2sgdXAgdGhlIE1ha2VmaWxlIGFuZCBkbyB0aGUgJ21ha2UnLi4uDQo+IA0K
PiBIb3dldmVyLCB3aGVuIGV4cGVyaW1lbnRpbmcgd2l0aCBhIHYgc2ltcGxlICdoZWxsbywgd29y
bGQnIEMgcHJvZ3JhbQ0KPiBhbmQgTWFrZWZpbGUsIEkgZmluZCB0aGF0IGFtIHVuYWJsZSB0byBn
ZXQgYSAnZGVidWcgYnVpbGQnDQo+IGhlbGxvd29ybGRfZGJnIGJpbmFyeSBleGVjdXRhYmxlIC0g
aXQgc2ltcGx5IHNlZW1zIHRvIHVzZSB0aGUgZGVmYXVsdA0KPiAkKENGTEFHUykgdmFsdWUgYW5k
IEkgY2FuJ3Qgc2VlbSB0byBpbmZsdWVuY2UgaXQsIHZpYSB0aGUgcmVjaXBlIG9yDQo+IHRoZSBN
YWtlZmlsZT8/DQoNCllvdXIgaGVsbG93b3JsZF9kYmcgdGFyZ2V0IHVzZXMgQ0ZMQUdTX0RCRyBi
dXQgSSBkb27igJl0IHNlZSB0aGF0IGRlZmluZWQgYW55d2hlcmUuDQoNCldoYXTigJlzIHlvdXIg
YWN0dWFsIGludGVudGlvbiBoZXJlPyAgSWYgaGVsbG93b3JsZF9kYmcgc2hvdWxkIGJlIHVuc3Ry
aXBwZWQsIHRoZW4gdGhlIGlkaW9tIGlzIHRvIF9hbHdheXNfIGJ1aWxkIHVuc3RyaXBwZWQgYmlu
YXJpZXMgKHdoaWNoIGlzIHdoeSBDRkxBR1MgaGFzIC1nIGluKSBhbmQgYXQgcGFja2FnaW5nIHRp
bWUgYml0YmFrZSB3aWxsIGV4dHJhY3QgdGhlIGRlYnVnIHN5bWJvbHMgYW5kIHB1dCB0aGVtIGlu
dG8gdGhlIC1kYmcgcGFja2FnZS4NCg0KUm9zcw==

