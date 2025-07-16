Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D96C83F27
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 12:03:05 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.66.58])
 by mx.groups.io with SMTP id smtpd.web11.20361.1752667375296573351
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jul 2025 05:02:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=O3PxRDCX;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=O3PxRDCX;
 spf=pass (domain: arm.com, ip: 52.101.66.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=evnrafmJ81xhs13XkFQo5Q9MYoc3ZzsLwcXCfrni1LKcWD1HAxG50mIs9ewzSNxoyq7VJbUoWWyZz+YkEjSyHsityUp2+hDRQQqR11dcp1rOSVVeD9YioP8DZXWHy+b9WvGGXDPOF0eFL6cTaI9TIyNmmstljXF0cG6hTVaaXRkJNt+xDTfGAT6ZGrucnpd9PYF/Ib99jClEwS5Cxxnt9u0OJUkRBVaSn9XC0s06KGwiMmXneu9Qm18dLfo+/zx7jZa4otYK4IcEmBY2JjVf9TTG36wG/IPhWXt4QZENZZCVwzFeFqjsSZplEr2x+ZoHA8N84n7j/o7nzh62udRBHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bebnq8JSNrVLtK241PNs1DzdnNFpcc1OeQhiMLqxvdM=;
 b=qc8xF/zBAh/NXZl7Fd8nV49yWEVpeVWA6uhiMkr3zmlqcAAWfVQYo0SWtq+1uQbwSlNlWNd5cbd/Fkh6BuiOBjZimj0epGQBCPsIhOylVlYLQDGFrAreKaj/J2QzmPz4t1t2QtGg2kbFqPiRQCQD4/Qv3o7BTZK5wtzmmFvsFipmpFm+n9ggmUQhF6QGGZDunFF1FnSvDqZnyR7ZQtJ39onFbE7NNX2EZlMfLw/IWHZyKrJ3v6QZV5qPxd7zNaT0pPlGGWcHPelcqTeRsiGnVhIul9iXwOg8wCXa8zaARHIU1LM8JQHxIUiE1uazq3t8zSv6dFJpboLPoYtpn7Pm3w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=belden.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bebnq8JSNrVLtK241PNs1DzdnNFpcc1OeQhiMLqxvdM=;
 b=O3PxRDCXXQGYaw4nAP1viPgTR2gBr4OrgDq6lvNxUhkgOs+D9rX/TBzRlWnS6XiUoVHRM5y/GAsAnh5Jg6TkZXqjL70SPrqoELGywEEktXvHbdqt+H0J2Gc1V1rOTtm5BMDHW8E06qXoh4ec4We6epndN6dFvDHubMFAEhdgRkQ=
Received: from AS4P250CA0007.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:5df::11)
 by AS8PR08MB9886.eurprd08.prod.outlook.com (2603:10a6:20b:5c1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 12:02:50 +0000
Received: from AM4PEPF00027A5F.eurprd04.prod.outlook.com
 (2603:10a6:20b:5df:cafe::a4) by AS4P250CA0007.outlook.office365.com
 (2603:10a6:20b:5df::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.20 via Frontend Transport; Wed,
 16 Jul 2025 12:02:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00027A5F.mail.protection.outlook.com (10.167.16.74) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.21
 via Frontend Transport; Wed, 16 Jul 2025 12:02:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4YDAmUmLW3e5SrLmpwGwS26Jgpt6966IQyxb7sh/g3KzWEwHgMLkgnxwdKW2jbBXN5dCcA9DJ4lahSehN6/EuebWm4ih61M7byFKNyRFGXlXHkbShHRG8Tc+xfgAWxBT0BbXug7IC2WO+z6cb/9N95ZQwBOb1RBZ13uCshGESnt0AmfSoqSCr34NoNwM9WFopYppJ2DDowFsWQJXe8LZBmK9K57VzXPgrtJE7vYkgHL6YHQ76GA6Ls2Pskf65Z95Avs68gE7iL3cLbtu/IbUq6/8lpX84qTW4vN9sjUM23vYsA6gT4750Vw/164CEk7/lQ5snQddPew/mkO6Ed+NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bebnq8JSNrVLtK241PNs1DzdnNFpcc1OeQhiMLqxvdM=;
 b=ayPOMTtJVMIYZg39sf6fSKlBlYEE1cyRIdKniezURJSIL8CLVh46j3rFVxT9GBF9/32xeX85toCW75T4G6y8cvAA24RPMO/wN5O5SFadcV+ZHA2GYThk7WW/och5JBkX1XnyxF9+4JB2fk18xGv9vn80BISBVlGhbRMog/KCJU64iLSznzTZn6RcSfx9HXn5zbfpGRChZwUnnvEjIzu6uown+0o4A8qQOLIDtJvySrxbRrVgTuWk4hQv0kiqJYw43QSSfmNBebtIJ00H9vy9C7/jG7xhgkVIqg9iwqJhlG3NS4PUl8ns3bRSFJEMJKez6lgk0bma9/0hsduDzhQVOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bebnq8JSNrVLtK241PNs1DzdnNFpcc1OeQhiMLqxvdM=;
 b=O3PxRDCXXQGYaw4nAP1viPgTR2gBr4OrgDq6lvNxUhkgOs+D9rX/TBzRlWnS6XiUoVHRM5y/GAsAnh5Jg6TkZXqjL70SPrqoELGywEEktXvHbdqt+H0J2Gc1V1rOTtm5BMDHW8E06qXoh4ec4We6epndN6dFvDHubMFAEhdgRkQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9409.eurprd08.prod.outlook.com (2603:10a6:20b:5a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Wed, 16 Jul
 2025 12:02:17 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 12:02:16 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jairo.mejiaaponte@belden.com" <jairo.mejiaaponte@belden.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Topic: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Index: AQHb9jn87hm3Fc9vZUKmNztiu4duY7Q0imOAgAAP1ACAAAw5gA==
Date: Wed, 16 Jul 2025 12:02:16 +0000
Message-ID: <B2AA36EC-743E-4DA5-B022-9F037BB42072@arm.com>
References: <3D1121B6-3BEE-4AD5-810B-4A9553AC7926@arm.com>
 <22459.1752664700863708263@lists.yoctoproject.org>
In-Reply-To: <22459.1752664700863708263@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9409:EE_|AM4PEPF00027A5F:EE_|AS8PR08MB9886:EE_
X-MS-Office365-Filtering-Correlation-Id: 97945821-c2bd-4020-b73e-08ddc460af37
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VjJDQkZQMG9FMm1JV25wQ1Y1VUUxWGxaek1zbUc2UUtLQmVoUGdkTWNJdXBS?=
 =?utf-8?B?UXRWYkh3bkwzTWxNN1VsdzQwcGZwaytjRkwyNnRmMUlMLzVheFZuZGw0MWdF?=
 =?utf-8?B?TDR5d0JMaEZQdHF6QzUzZ2NDUU94N0dQaWZDenA1MlhiM3UySmRuNHZKelVu?=
 =?utf-8?B?eGhqaE5SNFJYOThEMUFJM1llNklXYW0rTDluNjQzNG9CTlRURWxkd3pVdHRJ?=
 =?utf-8?B?YTRqdGVsM1JnSWhnRThyTEZWczR2WUlPRmZCbnlhb09kV0xDeUgxT2ExbGUw?=
 =?utf-8?B?Uy96dDdncEtPOFVUc0NNVk1XZ05rR2hrc0FLZGtVWFBndmZJQXVNbVV0UWJC?=
 =?utf-8?B?dFliYXVJT0svT2IrcURHcnp5SHNIZ0hxZEdYQTlISzZYczM1YTl5SEJEMmt4?=
 =?utf-8?B?ak12ZzNkZVBuYnFuWDByckNjN2lSUndFL2Jxc1J1bHVpV1ZUeWVseVFDYkxq?=
 =?utf-8?B?VmlVTWp5VSs0S1FyK0ZNNXhiMHhzUjJiYURlU3BFQ1ppQ1YwL3hheU9SRmdW?=
 =?utf-8?B?Y2xQZ0FXaGJEaW4vaW1pbSs1REtEQ0hMVGxjUTErVENUYUtsQnlCTUVwcnZM?=
 =?utf-8?B?N0RjU25pTnZvZnRHbXJtWHlHQW5MU0tpMklvclRZVnpLRGlBaTBFZnBQM055?=
 =?utf-8?B?dEJrQXozY1dmSlJGRktVeDJZZWdGVHlrTDdwUE5QaTVkZERuUmVvcWM5R2dh?=
 =?utf-8?B?TWVRTTFaTjloZHNBa1gwWFMzVmV2U1JwaGtkaGZlL3BaOTJ3K05ETjVCN0w5?=
 =?utf-8?B?SDNtbXU4M0NnMkJvcS9nTlFDVmNmekdpRC9ORVNMNVNDTXVyQW1UeHNIemd4?=
 =?utf-8?B?ejg3VWxrZlNvZnA1N2ZGb1hmQ3l1UStZZ095SEtUb1FhTk1BdTVlcHhwekVI?=
 =?utf-8?B?SFozVmE4a28ycS96L215OEwyOUJ1NGFYa2MyV2tKYk9ZMGdLQVJweTdQclEy?=
 =?utf-8?B?YTlVNjl4M25hWndMeGZDdEpPV21OQmFmNEl0SFp0eHV0MXEzaGRGL1BWcVJ3?=
 =?utf-8?B?ZjQ2eFVnQ1hsYkJRdFhvMkMxWnBZYi9nWlJFZjFUMldRL3VyUWhpTTdnaUI1?=
 =?utf-8?B?M0pKR3U4cy9vckIxWnZtckFSNkphTUJFV0FPV0JWQUIwYWhvL3lMUXpUWE1k?=
 =?utf-8?B?RkRBZ2x2VGVXSmhnYzJXa2U2cG1ubWZzN2lieUluUVU4QkUyOW0vZ3piZ1pp?=
 =?utf-8?B?Y2QwTG54Z09FV1ZxOVkvaTNNZHlxck0rMzJpb3pXZEhDVnFaMXhXRnJ1YzJP?=
 =?utf-8?B?TlM4SytmUlNDVC9rTHJFLytFLzJrNGZuVC85TzhuTGdQL0FMam42RXdlWEM0?=
 =?utf-8?B?SFZtNU1oS3kwL1oyUzNpOEo2Qlp5ZWFGYnlOdEJMdEg4TVh5Vkx0TFA4NHlR?=
 =?utf-8?B?eEdzdW1Hd0hpUUl3QXhTTGltckVKWUpYdzM3L3JrQ2VvM1FIRGk5S0hCZUlo?=
 =?utf-8?B?RjVTMUovQmF1Q01ta09sZmdWT00rSDd1bGpVR3VhZzRkYVpBOTRHN3dpcXhQ?=
 =?utf-8?B?NnJaaTlzNjRxZkdyM254QzVYZTNTbmY4MG9ZTHpFUEx1am9HbEczWkpsVEs5?=
 =?utf-8?B?UWpsR0NUaWhYYy9TUVNuQ1Z1c2xhYTFiVlRIKzFOQkZXZ3VKUjRxZ2pQMkpR?=
 =?utf-8?B?bHVaUStGU29nekdkV05BVURUc3VUekxhSTRGZjZSMGRITll6UXNvVk1nOUlH?=
 =?utf-8?B?RHZlUXB5bm1tcWlhNy94M251aENpSm5kajhjOEJVbDcvMnRUbm9lbnQzcHJD?=
 =?utf-8?B?MU0rNGkrMTVFeGJLV25ZUlB4ODB2c3AzWXZyR1BCdXlBMHJtZFlVYTNOdG50?=
 =?utf-8?B?WWltODR0Z0Q2VmM1emNiQUh3RmxYZ0xlWUV0UitSNklHWE92RDFCRlh4Tmkv?=
 =?utf-8?B?ejh6ak1tODBRR3F3dVBXUnNBY25LMGdRS2phNzhCbTQ2WGVXYS9KWlp3ZDdi?=
 =?utf-8?B?eGNsNUN4bHNvQmozZUNNZWlZaXZFTFdubXRYZjJBL0t5M25uQ0V5RUFPVGQw?=
 =?utf-8?B?UnJ4RHU1VFhBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <BBCC141ADBB2C34BAF7F9B72D50A5AE7@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9409
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A5F.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	4726c7c8-faf9-44a2-4048-08ddc4609bb8
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZnlDTnZlRHFwZUJ1Y1gxYkEyckRIRXNvdTFkb3lRSTh5eGY2NG0rQVluMFRU?=
 =?utf-8?B?Z3BtUnM0SStla2FUNGNveVZHaXZlSHlKcEN2RmhWTCtCQS9TOWtFYVkrajQ1?=
 =?utf-8?B?bDM1bElCSUlwZGppVlZUU1dvb3krR0tuaGVXYnZoQi9lbm5FS0liSWlFU1Jq?=
 =?utf-8?B?QkJwVWRSZ1NweUJLZW4vby9jbC9FQi9tdFYxUU1zU3kwTWdoeXdKVkdRWFRV?=
 =?utf-8?B?VGZQcHVCRzVrV0lnamR6dDU5dlVJT3NFRTVVSGlhNU1oRzIzaTlDM0gwV0xI?=
 =?utf-8?B?WjJFTUxpaE5JVmlIamFvdXVXQXdmcDh5YnNpb2tnRmFaZFFPMktoaGptcFBH?=
 =?utf-8?B?VVBobVJpT0JpYmxaWTUrN3BwUmhVaE5LYWsrcXhSTjZweDZLODRhMVlDTWlw?=
 =?utf-8?B?WWtjazQvVXZmb2taZ2NoTjRicTBrMVBoY2NsWHZ4dTJFMUNhUWJPWDUxUmNw?=
 =?utf-8?B?UWtiWVo0b1IyUy80MlJvRlhzbXR2bU5Ob29PaGlWWG9GMlFyckxSdDduQURu?=
 =?utf-8?B?TU1ZNkxnd3hhdkVCQTFXVzJGTDBBN0lnYlJqejdicXBiZit5SVNURm9tQ29S?=
 =?utf-8?B?WitKQTVLRXhQaXFKMGxzZjNWV3REYnRzc3pUOWI0bFNuajlOeVFNaDNXNHBY?=
 =?utf-8?B?VStBZDlrelMyRDBEbDRuaDBjR1lVc3VSbFdYaHEwakQrUmVHRjB0NlRJbDFo?=
 =?utf-8?B?dWdmM3FueklPNUs1UVI1YmQxVkJqQzRIUHFnajEvZmd4VVc2OVp1OVR5RTAx?=
 =?utf-8?B?djlkQnRFbVFNUW9LQlkwcmtyNnRobmMxUlBVQWYzMnU4ektJTU9OVmpERWtu?=
 =?utf-8?B?MXJVN1lsWS9BV3k0OFNJa2pvRExEWnRhd0RkcHZwWHFWVTdKMm44ZC8xQUkr?=
 =?utf-8?B?VVJHUjc2MzU4Qm9UZThWcUF0WkxIV0R2cU5FTERrT0xxcjVnbEx6TnZ5Wkc5?=
 =?utf-8?B?eU1kM3I3cDA3ZC9DOFdIbmJyVTU2MUxxekJhMWhHQmN1UzRiTXpyVHR5RTJ5?=
 =?utf-8?B?MDhlTG1QazNqVm9aSU9wOHgzZkJPU2RVNUNuMDdCMUpUOG52ZHZBVE9FMmZp?=
 =?utf-8?B?elJtOW1EaHdJcnArR2EwbTMrN1plMXNHOGV6ZmhEbjlrdjFLVDdKUzNBRC9t?=
 =?utf-8?B?MGlVdHNxSDRZQUF0Z0xsZjlQV2lFR3FtRmFBQno3R0JjaitpWjdCOFFJWEhs?=
 =?utf-8?B?cG5Cb3ZVTkluM2RZVEJmc1B2bE4yS3RXa1I0a0M5ODZJOE5Ba21hZ1JxblRy?=
 =?utf-8?B?b3JMSCtGYXN1Y3EzVTY5dTZaMDQ1Z1ZVa1NGRkV0OTNpbVhBTElXaVpCZTJj?=
 =?utf-8?B?Vm1VMWNUWmRRSHhIRU1lS2Jxa3dpdnVYR1Z6M0ZWNXdKdVE1ZEJsb0ZuWUJ1?=
 =?utf-8?B?cnc4ZXNKQkFTVnlDUElsaGk2R3QrWGR3ZTNybmpVRlRlaU05UjdNZUhvOTZ1?=
 =?utf-8?B?VGZEd2R5S04wbE85K3hqZkxjQS9FVTFlbUtKUDkrOEIyUll0Uk9uQmRzaXhV?=
 =?utf-8?B?SmRRVjRFcFBraFRXWk9ta3R2Vkl1ak5nMU9JblNiUGpRY0JySXdBZFNSMFVv?=
 =?utf-8?B?OTB2aElLRlcreExUTXpsNjdXSzViVitXOGFXRjNkY0dFK0dheFRTUHJVQnVK?=
 =?utf-8?B?YmxKMTIvRTNSanlaMHNLYVhVUmZKN0NKOVRZbnJhakl6ZXpNSHo1VkErTk5Z?=
 =?utf-8?B?MVFMNHJFNFZuV2dUSndrUE9IQndOSVE1dUVGYk1xd205RUNhS2lHZWprU2lo?=
 =?utf-8?B?SHFCa3hnMytmRmljdE5wVEt6R2RhaVJZRGpJWW1rUnNEcWRudEk0bEJ3MWhW?=
 =?utf-8?B?em5hdjlKeGRWWTl0b1V4VUE3ZGZTZFpkVVFRQ2UxYVFueWRPRkFNUnk3aUZH?=
 =?utf-8?B?SUoxdlhuZS85bGVtYUxXcnpUbUlrbXYwQXF5ckx6bEgyNzNzRWtxS2Y0OW1P?=
 =?utf-8?B?ZXNoZlFZUXNYVW5pNThtbloxZzVFSWNpd2JvcHNuNnNEelk0SjFXYisvaTds?=
 =?utf-8?B?ZE9pd2ZuNk5qRm4xaXdMblc3OUZNWXhpZWFubDI5b1Y5VC9JZXZrZDZ2cWlr?=
 =?utf-8?Q?/W1bem?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 12:02:49.1619
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 97945821-c2bd-4020-b73e-08ddc460af37
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A5F.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9886
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 12:03:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65665

T24gMTYgSnVsIDIwMjUsIGF0IDEyOjE4LCBKYWlybyBNZWppYSBBcG9udGUgdmlhIExpc3RzLllv
Y3RvcHJvamVjdC5PcmcgPGphaXJvLm1lamlhYXBvbnRlPWJlbGRlbi5jb21AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBIaSBSb3NzLCANCj4gICBUaGFuayB5b3UgZm9yIHRo
ZSBxdWljayBhbnN3ZXIuDQo+ICAgVGhlIGVhc2llc3Qgd2F5IHRvIGZpZ3VyZSB0aGlzIG91dCBp
cyB0byB1c2UgdGhlIHBhY2thZ2UgbWFuYWdlciB0byByZW1vdmUgbGliZ3Bpb2QtcHRlc3QgcGFj
a2FnZSBpbiB0aGUgaW1hZ2UuIFRoYXQgc2hvdWxkIGZhaWwgYW5kIHRlbGwgeW91IHdoYXQgdGhl
IGRlcGVuZGVuY3kgaXMuDQo+ICAgSSBkb3VibGUgY2hlY2sgdGhlIGRlcGxveS1ycG1zIGZvbGRl
ciBhbmQgSSBkbyBub3QgaGF2ZSBhIHB0ZXN0IHBhY2thZ2UgZnJvbSB0aGlzIHJlY2lwZS4gSSB0
aGluayB0aGF0IEkgZG8gbm90IGZ1bGx5IGZvbGxvdywgaG93IGV4YWN0bHkgY2FuIEkgdXNlIHRo
ZSBwYWNrYWdlIG1hbmFnZXIgdG8gcmVtb3ZlIHRoZSBsaWJncGlvZC1wdGVzdCBwYWNrYWdlIGZy
b20gdGhlIGltYWdlPyANCg0KTm93IHlvdeKAmXJlIGdpdmluZyBjb250cmFkaWN0b3J5IHN0YXRl
bWVudHM6IHlvdXIgaW1hZ2UgaGFzIHRoZSBsaWJncGlvZC1wdGVzdCBwYWNrYWdlIGluc3RhbGxl
ZCwgYnV0IGl0IGRvZXNu4oCZdCBleGlzdC4NCg0KV2hhdCBwYWNrYWdlIF9leGFjdGx5XyBpcyBi
ZWluZyBpbnN0YWxsZWQgaW50byB5b3VyIGltYWdlLCB0aGF0IHlvdSBkb27igJl0IHdhbnQgaW5z
dGFsbGVkPw0KDQpSb3Nz

