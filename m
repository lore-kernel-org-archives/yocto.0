Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2F3C28B30
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 15:31:19 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.67])
 by mx.groups.io with SMTP id smtpd.web11.10843.1742484675059306564
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 08:31:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BNWj2vzC;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=BNWj2vzC;
 spf=pass (domain: arm.com, ip: 40.107.21.67, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Z1k8XCxu4gZDd5wdXHUSDbMm+7lgHJx7FNSmehTl/M3MjAoumvGo9Kf/SE1vYJvDWGIMLxOwcpBaJZ+4KxtSN5sVPlwsIORC0a19QYlav+Zc6kUeY5evbVHX0Nd6KxVHpaAs3GpTnk9RFTyItVh16DHuyN29+x3iebLhUt53YXEY7W5La1tEvWH5YP3fD44Z/fa1JMfqX1rhdyM9vtRTx7OZUqJooieB03wpDzqRUwflzcoeJwI2oJW/AfeESUCs0HZl4aow3vEmuSsNMTZJTMH4qFak/sUDwRqeAN707ytWMXOeCTQQ81WKFOIDz/vF0rKvymFLnM3WBkUd5ZVz0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R3fbXbcM8qagweBeM8NiAxMFNXSp+fyLBT9MHtLVfl8=;
 b=seo9ewNV2yfBKLSfP5vsyzvQp/c/0FWqsURNhT1HUSagh9kFSBj9hyAICDooFOD/4nf8pcTNrExhRSAWteCShZlt/z3KXxZ5xJgvRcncIMHxMURCIaIbffjwjn9mxIaPT6u1d5lN3vIW/l37w09KlyFh8sG+NaPbPqLKh8sId+otepPTgr02ckQhWcveNVtr42tmSoGJx3pWJh9EFnyltjz0L6EtpLue0CtrHcIC3pEdeKPAYlH9FZB/Y90JUZQLVTjhPV5OHWkdRb6h01DQIto29Qec+el3FWW05HI7cB8trtzKOWOAmiglBMD52h5QHIOI1HMdR/KrLgBX+borXQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3fbXbcM8qagweBeM8NiAxMFNXSp+fyLBT9MHtLVfl8=;
 b=BNWj2vzCSZoBbC1MeCiiAKCV4Bch8pjxUshHwT9Jf1NWZmm6RN3nIeUoCGZQSdvpH3SF7e4vyvLNZTRq1H5Sz3Ff7NI8OY41bVdcL6LaKwTolhooQPAhd26+RCN6owy7YOKTs1MsHQkL/oqDPIYQws13tkBbmrdH3AyJSE0ww4Y=
Received: from AS4P250CA0023.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:5e3::11)
 by AS2PR08MB8333.eurprd08.prod.outlook.com (2603:10a6:20b:555::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Thu, 20 Mar
 2025 15:31:07 +0000
Received: from AM4PEPF00025F95.EURPRD83.prod.outlook.com
 (2603:10a6:20b:5e3:cafe::cf) by AS4P250CA0023.outlook.office365.com
 (2603:10a6:20b:5e3::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8534.35 via Frontend Transport; Thu,
 20 Mar 2025 15:31:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00025F95.mail.protection.outlook.com (10.167.16.4) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8583.3 via
 Frontend Transport; Thu, 20 Mar 2025 15:31:07 +0000
Received: ("Tessian outbound c541cdb55eba:v597"); Thu, 20 Mar 2025 15:31:07 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7bc535ffd250e11c
X-TessianGatewayMetadata: K1RV22TBC4oKdrOUEUEewtkrW2ipVrjisGQLDQKEr3NGPyP0p8qSUkqH+OTGlMPjUCGh8VACRoaX7xA8Yj/tLAKGiynpW+FgB0TqC4EA9HWFzBLH3gzcxG1I2f6t2d4/35HDT6g6Wnx3raXvpSwHT0OLMnM1N76aqWLXdLrHQkE=
X-CR-MTA-TID: 64aa7808
Received: from L1abdd1fde385.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B5886D0F-F7C2-42B1-8092-55DD89F2848F.1;
	Thu, 20 Mar 2025 15:30:59 +0000
Received: from DB3PR0202CU003.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1abdd1fde385.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 20 Mar 2025 15:30:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C9YYhLds1Rutk5DxyBcIWqW215Jy2wRlvIeUwHgBdWCJ+1c3JffmxDvA9AQgcFUvhetz+ZK5dr4cRFERdxRraRy7aaV0z5w1llE9J1HAx5U36Acci4CLvbf0+sEMcrZNdURbABZ+68ApCXKhvyM8HobSmdA4iIKj3goLCFXYqaqDZ/EYwcz/HOug4KR4zBrct6sW6qqr37O/75rLhEjJQWXv4BH3oNq8K8cW5KO6B13TuswH1Z1ylGyD4M3K15PLVMWfbXHZlVJT3DxClpfKu3+lPZuJ/vvi0b5dM1NHxts/i1jKqmQWNpyWO0hE7TWf0++IngHVriBPQX1+jSyDWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R3fbXbcM8qagweBeM8NiAxMFNXSp+fyLBT9MHtLVfl8=;
 b=Zw21y2jryNBPtsaFy5nQkpOdfDEpT4aPTm4y14ogP1EdhVNl4axxJ5mF/5jIrY2o3kS5FTForJ7nhpQxWdy53RvJts3IdDqDngHwuItzn6WtNXtNu4zZHjGHkH3Z0ByggwnJNjQiTxXtU5edv4eHQzpL2Eb4hGU5rG9GJnQOg4Es9wZRIYsXVWqrWRUO5ShLizUV4tEmhnS7Fozx4saVgifEZLk1lhVHo2l53FbiJqGSF2/JAweW25aN70KqAm1i/jqLkhBWNPCOMld19Za+cSMgwbSWsqfm0o52O3//csKuvA9X/1GaHmC/wUK8DqMm/DcX6kohB23d69905wKa9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R3fbXbcM8qagweBeM8NiAxMFNXSp+fyLBT9MHtLVfl8=;
 b=BNWj2vzCSZoBbC1MeCiiAKCV4Bch8pjxUshHwT9Jf1NWZmm6RN3nIeUoCGZQSdvpH3SF7e4vyvLNZTRq1H5Sz3Ff7NI8OY41bVdcL6LaKwTolhooQPAhd26+RCN6owy7YOKTs1MsHQkL/oqDPIYQws13tkBbmrdH3AyJSE0ww4Y=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB10729.eurprd08.prod.outlook.com (2603:10a6:150:164::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 15:30:55 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 15:30:55 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"david.daniel@vrag.ch" <david.daniel@vrag.ch>
Subject: Re: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Topic: [yocto] Failure expanding variable GITPKGVTAG in
 libusbmuxd_2.1.0.bb
Thread-Index: AQHbmaOYnvqeEqgygUOVJpc4m2AxQ7N8JssA
Date: Thu, 20 Mar 2025 15:30:55 +0000
Message-ID: <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
References: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch>
In-Reply-To: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.400.131.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB10729:EE_|AM4PEPF00025F95:EE_|AS2PR08MB8333:EE_
X-MS-Office365-Filtering-Correlation-Id: 079ca818-db83-488e-c386-08dd67c43c04
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?YkRpejFKVGJHc050Y0Y5MXVISUVoYjJRUDlSTmZNMnRhQXFFa0JVSzJ2aGsw?=
 =?utf-8?B?N1pTcGxnbVVHS1FpQzhtU2dkcjRNVXhFdUt0SDFDRkhDb2dXRVVOZkZtOVFF?=
 =?utf-8?B?WDYvQkMxcjA4WE9rVlJvTWRHcklLWlIxbkpnSjZrbytwK1F5eHNuZlhINWlP?=
 =?utf-8?B?cUtnL3RzQ252Q3hIeGw0dVpTNHBrck9PK0o2ODkxN2oySU5LSWZ0TUlNTlpq?=
 =?utf-8?B?ZG1WUWpKcE1lTmlIV1NwWUVCUUxsMjRMdTRnZ0tVNXFwL0ZwQTlZeUlTMXdx?=
 =?utf-8?B?eUh2UVZyZ0dQU3J2WGNUZFN0NUF1Sk4ybVhrNDAvU09rR1BlODlyNkNBaHFZ?=
 =?utf-8?B?U1FBWjhOaGZiRWFRUUIwaVR0L0RrMWxyTE1USEluRVJRRjUwdEQwOVpFM2Fn?=
 =?utf-8?B?VWJTcmVjVnZpalIxcktoMm40K3pUeEwvcFdzV2xLcm1QbXZ4b2FoWGpzUUFS?=
 =?utf-8?B?WTdrMEdUaERMSmMySUxnTXhGSDFFU3BmWGxHRVJWTnhMM1poOFhYVm9CL09W?=
 =?utf-8?B?MjBDSjNnbTV0V3hIcnMwMDZQd1ZwZUJHNWYvVis4V3BuaFBJc3J0K0cvWW1s?=
 =?utf-8?B?UVlBQ3lNZXVhTFJlSlRmN29zUG9kT0RxZ2R3UHNLYWw1Q1dvMmYxVVpwZTgy?=
 =?utf-8?B?RmN6ekk4ZENFdUFLbjhxUEsydkoxZE9wd0VISkVBUEFSbDVIRWZRTlUxWk9Q?=
 =?utf-8?B?YVZXdGU3SnI5TGN3RTAwOHFKSjhxZFFLMmxyclpOMlVYcTNyRHVpVmowWTBS?=
 =?utf-8?B?ZW9TbGRXU203WGcrdlk3cC9vMjdzcUFRc2lDU0ZqSjNFOWZKU1B1cFJnS1gz?=
 =?utf-8?B?MlJrWklmRkZFRmJCWkFTcm1YVExwUGZaaSsrMWFISzQxR0tHSG40bHpRVVRw?=
 =?utf-8?B?NU83U3pGUXJrWURlWk1yTHljZTZXaWx5ZWx4TVF0MU8zOUQ3UTF6MWN2dXFj?=
 =?utf-8?B?SXZHNHp1TkcvWU52dzRCNit0Mm12VndXMG5zNzZwcTVSeTdteTMxRnZiWU5q?=
 =?utf-8?B?bDBKRGdxbnFMR0E2dTY3dmsyWHJRWjMyUmxhUTV3SlVHcGdFMmNMS1NvNFFo?=
 =?utf-8?B?WnNFMUdhQUFWRVJIZzRFdkZFTlU4T3NqZ0UzWjYyRmNrUDViTmNOc1FyYTA2?=
 =?utf-8?B?eTcwVG1Kd1RLMVlSallMTE1udlNHMjJERE9jTHo4TDNZSEd4ZGFNNjFiY1pr?=
 =?utf-8?B?TmNzU2pjejNVV2EwTzhYMUhqd3FHZmdOV3ZFdWJtWEIwM3l4K05yZGo5enFE?=
 =?utf-8?B?RGhtSVpqRWYvcTV5b0Y3N01tWmpBbnZRWHZRVVJjWTI5UEhHWlZkUXJiTEUv?=
 =?utf-8?B?aHFWZXZDQ1pJcm92OEVLZmYvbU9NeXZwTG92Z1JBT1JSV2tCOVhzZUZUNGFZ?=
 =?utf-8?B?aTFadHdYdHhlYkovejUyNG1GN29ZVGEvdC92UGRCZFNhOVNIYXFsNjhCWG52?=
 =?utf-8?B?d3NWN2pBKzMyb1ErK1NLdzBweUFYc29oSUUwQk4zQ2wzWnFRNDBOMkxHakFh?=
 =?utf-8?B?cE5SdUtYOGI1M3oyV2FKRmZJeWQ5b1djY1NDZlZiQUJ5MDVBTVkrVi9DQlEw?=
 =?utf-8?B?ZHNWSEFJazk5WVJFdEFGeEJKVUV2UWRydWxtVzhFNkxKclpEK2plamhiTE5u?=
 =?utf-8?B?VXF2Q3ppbVVZWFB1S1hPcFB3OWt0ZGp6UEpuUFRyNjlmdURjejdtVWpwTTJx?=
 =?utf-8?B?NXdqT0pDUXAxbmJJUmdPeXBZYVlYQnNHSmYvZ0tlbEZrY0toMDJxU2cxMUU4?=
 =?utf-8?B?WjhkaGQ4cWJlTnhROXZBaW94dWhQemtqWm1OejRYQXNqc2lRZDY5Skg3WHV2?=
 =?utf-8?B?QW5mS0JLTnFiQXpOT3R2TG9URStCNUZEWmFJa1BBeEQ4cmpUbWthN01tV1hC?=
 =?utf-8?Q?/Cx//AGqkPNbC?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <081095B421F3E7459A9658F12B4F670A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB10729
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00025F95.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bb2a5ccc-8cdc-4bc0-f3a1-08dd67c434df
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|14060799003|35042699022|376014|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?anJJbEhoaC83S29JblZhOWZZdVNpY3JIb0NBbk50OXZiUEw2RmJtSE9pMkMz?=
 =?utf-8?B?eDd4b2dXWGt5ZkZLZ3RKSFA5YzVRc1hrYkJtUm1KTDVXMWF6cFhybVZqNVBO?=
 =?utf-8?B?ZmIrUmMvYXBrRDFEMHd2OTFhL1pXNlVKSThIblpOeFBha1k5ZFFBUDZJSm9u?=
 =?utf-8?B?MHRWZGk3QWxkL0g0MVlvcmNFT3FqMDdHaGlDQmlYQmxrMW1tdUc5cUxld2lw?=
 =?utf-8?B?dDdJL2dpZWlDUkhkeDYrdS94Ly80d24vY012SExhV0pibEU4TkNmSkpoNGVI?=
 =?utf-8?B?QlpKQkE3eGhRVHhZTVcxVG5PZGVvRk1WRTZCYzRVcXFiaDcwK3U2d0FKWGl1?=
 =?utf-8?B?NkJ4UVZTZnhZVFQ4aTZ1cWRsRXhIY2dMUSs0QldsMkRuc3h2OVhxeVorVDYw?=
 =?utf-8?B?bWZITHBMOHlUamRTV2M3Nm11RTI0ZXY1NGpoRzg1SVpuVzd2cWRteTFNTTFj?=
 =?utf-8?B?ZHJCaitZeVVJaVJFQ2VYVDNjTWovNVBtRHk5ZkZSMDZnL0tYTUxibWV1Snll?=
 =?utf-8?B?Yy82dTFjYmxNWVNCUjBaYldxQkh1NWFvbzUzcXFFbHpBYVFIQVpXdnorSEpX?=
 =?utf-8?B?aENlNm1xZVhDL0xhQjhFN1ZqTjZoN0JXbjNoR1BzelU1TVlUNEFPMUwvcTlZ?=
 =?utf-8?B?bTNlZG0vWG5mdzRNWDNuSndpMVgzdzV6UDE4Mmw2RThFeWlneWdXbDczUEdp?=
 =?utf-8?B?M2JvYzJ0YWJIdGNxNVJaYXVueE96a3RUbDdZODBoRnpSSGFJNzN0cmRORDA4?=
 =?utf-8?B?ZGwwM201Mm1aaHhuN2F5WjNnbDMydHJYUlBRRFFKdVlEcUd6cVJHUy9TRUNp?=
 =?utf-8?B?WWkvQnIzOU9YSm9QR2RZSGRXSW8vSjE0bm9meUdGVWE1dmlBdU9IODdJOUlt?=
 =?utf-8?B?d1AyLysrRFRabDZzR25wVVNpNjI2RDlGemFibVB1NUplWVFXUmxxbGlEMzh3?=
 =?utf-8?B?SVFnemt2VTNxQ1YwVUhnR0lUNVpWNzlwRml6Y3NwdU1pakd3VXByOHR0M1cx?=
 =?utf-8?B?WU1oWWdqcnFORDdEMGQ2OHdkM2lxK1lNelRJbDc2bEdjcDNKSmkyaWluOHVx?=
 =?utf-8?B?NXI2RFFEOVk5RFU0VE5ZdkNYVDJQa2pOaS9kY0NsdWRkT3BLOTloV1R2aUhp?=
 =?utf-8?B?cWJ6MGVnbVRQSUR3WUdNblgvM1Y5T0o3NTE2cGFIZnZETjVwNitTbzVGcHZT?=
 =?utf-8?B?VmZnNXdIUnlVYlZwWUpPcXVucjRGOURSbW5DRGdOeFI1V1NrY3o1VGF1dnZD?=
 =?utf-8?B?NkJrZ3c3NGhwY3dKbSs0Mi82cTFnY1BnSjBRd3lNR2NzQ0lPRXoxL1BGb05w?=
 =?utf-8?B?amZCcWFpeUc2eFdibkNUanNTU3FoOHpmWmxjZWdybnlDSlpScXprbUhDaWo1?=
 =?utf-8?B?aVA3eVpIci9scHRIWXIwckk3bVFaY1pIOXBDQUt5Q0FCL2ZEcTBjcXBYeFRN?=
 =?utf-8?B?Ni9Xd3RXSGNsZ0ZSdjdOVW1BaXBYZ3laWE8vZ25SajVHdXRWRHBpdkF2b21z?=
 =?utf-8?B?d0hVaFIvS3pha0hIOTFNVUdwcmgwUWdTMUlsU25UYU9BUTMrYXIxYm55dUVl?=
 =?utf-8?B?TU5LN1NQdkRmMGNvb21LS0s1WFZKSHFmcE92U1hQNnQ1L2JBTlBhUlYrNUFT?=
 =?utf-8?B?NFowQnhKK1orbGxkQ1hRWkZaQ0pYb0UxN0toaXo3eWZOdHMvWktxUzFxbzhj?=
 =?utf-8?B?QUkxOW9XTUhOeFBpZHVYR09NVVRsL3VqWVVzSUxDZmdGRWw0YnB5b0E4bGtq?=
 =?utf-8?B?empZRGUvMEJ0eE43bWxTbTU5ZVltOTlHU2FTQ2hTZEZQWExQRUJGNVhEUFpz?=
 =?utf-8?B?aHkrV1IyTG10TXNxMk40Rkl4THBJSjdWN3AvVFU2Rmtid09RT0pFVnh4ZjBC?=
 =?utf-8?Q?rHX7NtekblNDr?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(1800799024)(14060799003)(35042699022)(376014)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 15:31:07.4049
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 079ca818-db83-488e-c386-08dd67c43c04
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00025F95.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8333
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 15:31:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64993

DQoNCj4gT24gMjAgTWFyIDIwMjUsIGF0IDE0OjIzLCBEYXZpZCBEYW5pZWwgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGRhdmlkLmRhbmllbD12cmFnLmNoQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPiBJIGNhbid0IGZpbmQgYW55dGhpbmcgd3JvbmcgaW4gdGhlIGxpYnVzYm11
eGRfMi4xLjAuYmIgcmVjaXBlIC0gaGFzIGFueW9uZSBhbiBpZGVhIHdoYXQgaXMgY2F1c2luZyB0
aGlzPw0KDQoNCm9lLWNvcmUgbWFzdGVyIGNoYW5nZWQgYW5kIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL29wZW5lbWJlZGRlZC1kZXZlbC8yMDI1MDMxOTE2NDUxMS44MzIyMTEtMS1yaWNoYXJkLnB1
cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnL1QvI3UgaGFzbuKAmXQgeWV0IGJlZW4gbWVyZ2VkLiAg
WW91IGNhbiBhcHBseSB0aGF0IGxvY2FsbHkgdW50aWwgaXQgaGFzLg0KDQpSb3Nz

