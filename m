Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83D7CCDD1CC
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 16:04:45 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.87])
 by mx.groups.io with SMTP id smtpd.web10.72729.1727453074908667771
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Sep 2024 09:04:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=B3BhsLsX;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=B3BhsLsX;
 spf=pass (domain: arm.com, ip: 40.107.22.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=LFIP5y1OJD+cRcd75rLAdC2DN4+bP63kMGfv4QTupUrqu3+E83upxqSQ7xvjbA6XedDQK5culKKro7aRjqcnFymbA20eqIxNwyphsL18VfXDCudL4x79D5YlPRC9jTSvlD8Yqwc6wAjaxdJRqPCacG7KmrOtZLqdNjjKhzQLDAlWt2fVdQNIQ/xWEeA42UoPW4lGaMyZ/nt1tnhfRAT+WIfg9eHgyOh+E3hMRZv5yfUIuQAIXnEfb5DrgGXw+A0KyMJ6gd+PjnoYE2mFwHIj2kMmIfvXRYnkGX/n7voqzxOhvj4HqGq4R1ZayBe/69dGrUlOEDi5wXVDSlhMn7sN8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbcwo2k7ppYqWshEqBmq2pr0w6MLLyHZKlUJKiNpqFc=;
 b=JpQpq3PjiUj9nE/wCwTybygLocj5PtxkzX5He1sjXQZ5cbcMecHoQy7XUGnJFkF4mCB8aFzrfvGRXaaG6/wss39HdV/pgBvIkfWGKJrgal9Xip74E+45TDPrzIE+ocZYmZa8FRer6Txg6XTgial/oqbxtyiNSz3rACZlHPjBgKosiSXOYpNA/mEsFK/5a6ip8HgvaMnbg8k9dba+IP9uDqhQ+dSBdB5YlNnvBtkYY0Qow6Rvmt/o1a31xGiXMl5U93e9w0ekkV0+27NP9Os/2kvaHi0DKUWsbF++AoowZmqPfY5L1GCTCl/uLRkTyDlkONbX2x3YEYQefGhyEcvmTQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kbcwo2k7ppYqWshEqBmq2pr0w6MLLyHZKlUJKiNpqFc=;
 b=B3BhsLsXElpFVV8lV4orMjKxg9lelWoL4i+WfeUxG75x02QmKSmStwTZ++WlgjnOAT4kyIfTgFwuZTcXJ2tGFK2wNs2pKhfnc6d8/4s4a2DwiNg1sgXlTOFCWUTnxB74mCIxsq2Wp+Bfds5ZkUX9vUUEqNun2rxInGOUieE0PnI=
Received: from AM6P194CA0006.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:90::19)
 by AS8PR08MB6726.eurprd08.prod.outlook.com (2603:10a6:20b:39a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.9; Fri, 27 Sep
 2024 16:04:30 +0000
Received: from AM2PEPF0001C717.eurprd05.prod.outlook.com
 (2603:10a6:209:90:cafe::c7) by AM6P194CA0006.outlook.office365.com
 (2603:10a6:209:90::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.17 via Frontend
 Transport; Fri, 27 Sep 2024 16:04:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C717.mail.protection.outlook.com (10.167.16.187) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7918.13
 via Frontend Transport; Fri, 27 Sep 2024 16:04:29 +0000
Received: ("Tessian outbound e9f81699740c:v465"); Fri, 27 Sep 2024 16:04:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 02139412041c0d72
X-TessianGatewayMetadata: kmou4aaJDp6BY5FRFRCSdp9nrenZaBuM+7+AYtKZzh8+uObtLXQpt++nR5HYYgC/Z2IuXOoSRslT/siRHk0w7czgFgfOUP+D2OzqAj11FQZzeBMwijKAhNSMCflO3ci9SwGypHNWSIgRqnJaczxEaDXv5xwnxlN95KULkP2nO08=
X-CR-MTA-TID: 64aa7808
Received: from Lf85faec1032a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F5A4DF8C-84EB-49B8-969D-0862D4B3843D.1;
	Fri, 27 Sep 2024 16:04:23 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lf85faec1032a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 27 Sep 2024 16:04:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zEnQxgh4LyYQ0uyZ6di57uNNIAsUyyhE+X0xdshmkfcUOkHDMPaX1h0h4i/w9K1YHFz29fdYyqzKUMwlQ3qyUOPVcIaPYIl23OvIEmr4MIKKkAO8yQo3fkcAB3e0tA0+sLitiwuE/HfhXjlmWH3vKYwHMREJamCGtbRWc7Icv8QxAc+cC/X4lRTN/XMXL80yNkjEqRCwcvSLiWm44Bmi7Hu7EVZpEsrlw0Zy/q1svuPhE/Me1a7loZxsJTKGjAc2RnYMoYtq9fttXzBpzh0RvCQEQ3TgBKufHnZGVJkOBtuwYSZu5VJMaonZ5nzPm+NRbZuDhsUlRwfRdvETkgb9bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbcwo2k7ppYqWshEqBmq2pr0w6MLLyHZKlUJKiNpqFc=;
 b=HL2AfChLtg3ZO7swNp/oXJgT2D+ELKIyComrAdVOQvxsVNUhQZj+hrLo+wW2LrKE4JWwoxAwCsQXaNtNGPEv2wWeJgFJTb+0tmvBHuHzt4xsphRJcs5l6Be/IvyS43VCOpINpDeZ8stHQBayHRrS2REcO40BIn5onxpQMvpEICLJ9tpbIKIKyFBuBVyLqn3qeNuddXPDLijG5fDhBTq67AETZUWq8y3h4JHOZUbDnGNu9eFgamQJv20FENTGr/4RGm7wkGkYzvODJszZMQfk8ztQ2q/RX0934AjsdLPMSuOJRNU2hQtOVULsbrIiPvnnmRx8/+tRn5H41CLf78WOug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kbcwo2k7ppYqWshEqBmq2pr0w6MLLyHZKlUJKiNpqFc=;
 b=B3BhsLsXElpFVV8lV4orMjKxg9lelWoL4i+WfeUxG75x02QmKSmStwTZ++WlgjnOAT4kyIfTgFwuZTcXJ2tGFK2wNs2pKhfnc6d8/4s4a2DwiNg1sgXlTOFCWUTnxB74mCIxsq2Wp+Bfds5ZkUX9vUUEqNun2rxInGOUieE0PnI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI0PR08MB10512.eurprd08.prod.outlook.com (2603:10a6:800:203::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.13; Fri, 27 Sep
 2024 16:04:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8026.005; Fri, 27 Sep 2024
 16:04:21 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"jing.hui.tham@intel.com" <jing.hui.tham@intel.com>
CC: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.1.rc1)
Thread-Topic: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.1.rc1)
Thread-Index: AQHbDi0zn8pKbf8w90KpgLkU3d1k4LJr0WwA
Date: Fri, 27 Sep 2024 16:04:21 +0000
Message-ID: <9A2A483B-F51A-4561-B6F4-14B7EFCDFBDF@arm.com>
References: 
 <0101019203947c20-b2528d50-bc02-4975-b808-0f39e1b8d01e-000000@us-west-2.amazonses.com>
 <DM4PR11MB77600F00575B0E88E22704A7A1682@DM4PR11MB7760.namprd11.prod.outlook.com>
In-Reply-To: 
 <DM4PR11MB77600F00575B0E88E22704A7A1682@DM4PR11MB7760.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI0PR08MB10512:EE_|AM2PEPF0001C717:EE_|AS8PR08MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: d790d347-e47a-48f9-1bbc-08dcdf0e1167
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bVRjdWx2aXcrU1VXSHRtVnppMXFJWEt3dFhWbGY4UGZKQ00wWW9EbnhOVldJ?=
 =?utf-8?B?YVNSdHU3eXd1Q1hIRk5abzgrRWYrTitNbm01VzZaelNYVTE1U2tJZW5TWHJa?=
 =?utf-8?B?R3M2QmFCMHBSZXZxNkhYWUdGNGdCNXFmc215QWFhajBSQmF2QU9MY29mVWpi?=
 =?utf-8?B?WlZtRXhpVDBpbG1XWWNuQVdCOFJ4RXV6SGlvM3ptbGkxMW5rTE9KR01LZC9j?=
 =?utf-8?B?WnFveVFJNjFENGxLNDZVVThTcS9IVDNLckpuRmVsMTlpUnQ1MmVKcDdhckUz?=
 =?utf-8?B?NWlITCs4aE1TSFNnTTVvQVF5Y28wQXgyWVhCL1FHcXV2MUxhSDNBQUsyLzY2?=
 =?utf-8?B?T2U4bktFN3JqWnBXSXBRSTMvaW1SNHhueXZ5QkcyMEU5c3lNOGU3Mi9kUko3?=
 =?utf-8?B?ZHR4ZkpYYXV2L2E3TzJoTkVuWk44L1lQZTA3SUJhNXBsVFNJYXJUWWxZS20z?=
 =?utf-8?B?WmNnN01BbjNJTHFDNUtMb3NxOUcvaXBOQzdFUCsveE5sTkVwWlhaL2pMS0R2?=
 =?utf-8?B?SGNsYytjZHpaeWJHUUI4ejZNNTlCaU9lTm10T0k2cDBjMUw0cXNxQTBLeWs5?=
 =?utf-8?B?Y1QzaHlIWm0yVVhMWllrTGNoMWwxZmFMY0dYMlBzZGlIdldnREFZbFVNSUxX?=
 =?utf-8?B?UXFSRHRmcGNqYUgrRzQycGFPUjhseFlkSHJkY3IrUlBFOW1LMkVqcUcxUkxs?=
 =?utf-8?B?d2JqUGhtREhqL3plcTc2MWEwNFVwbjdGS3RHc0laa1lBN2VjTTZSVmNRek9C?=
 =?utf-8?B?Q1dScXVnS2g3STZremZaWENJeXBBVzZoQjVLTTJ4b0VodzI4ZEFCOFRJWnZq?=
 =?utf-8?B?ZFN1cFoxOXpxekZ5dVhuNnN6dkk3bGV3Y1dmOXJUdksyQUcvdmNtTVoxQnRx?=
 =?utf-8?B?Wmk5ZFh2V2hLWG8rSWUveGZkK2hWNEtJZXJtOVJ2b2R4QWJoN2wreHRyeU9n?=
 =?utf-8?B?VWVrLzZNang3ODhIZjZYUDdzOEg4ZGZtTXpFWVJOaVZRTW43eFBlYVI1RzlS?=
 =?utf-8?B?cjg4eTBqM2VpNXNWOWtvT2Rmc1preGpGKzh6KzJOUndxNTJ0SmVoMEpDUzIz?=
 =?utf-8?B?NmNSQ0ZnODNBRmIyZVFRZUZCbnZnNXFyV3I2ZEdmR29Lb3pqamltYXppSFd2?=
 =?utf-8?B?Q1ZHeEsyZ3RLaVlqeW44MkNDdk9vTjM3NlVTcnRtU2JjbUpLZkhnSVRUUC9V?=
 =?utf-8?B?RlNhMWVDV2lYcTFtdnB2Ky9pQkFvc1B5bmp2eHVoK282dkxWRSt0SXVlcDZB?=
 =?utf-8?B?SmdQMm83Sk0rTlVIMG5JZXZ1UWJvendCUUZ1aDRzTTNhYzlqQXhwMzk4SlZz?=
 =?utf-8?B?REdIdEZMQ01lZ2RqZGRMWFczcWR1NnROaHRzNjkrbmlpckNjV09XdUduSmRt?=
 =?utf-8?B?TTNXVldFRGtLL3A2NkhEOTdBVnNKS2JYdXduNmd5VDgrWXpoMkpCOHhSRGxt?=
 =?utf-8?B?bVd0VU5rd0RodFp2MW80MkluQUw3SmRQaHRNa0NMOGhsek9oRnZpUHgxT0ZU?=
 =?utf-8?B?Tk5GZTdwT1ZvemFueCtuOFZZNGRCNlFWdVZpUFZwSEhyV2NVR3RYVTVRdTc1?=
 =?utf-8?B?RmJkOWRRWndrNHJLSlMydFBES0NWMjdFUUZUbUNlR213R1htZ25INTZETnpL?=
 =?utf-8?B?SmdHOWV3aTZBY1hUZHNhc2lrckZtRktyTldrWVE4dW0xMFU3OURkTEhCU1V4?=
 =?utf-8?B?QStTUEZONFRyNUJDeUJxc0F2RDFNeTFZQ2tpeVlZYWZwd2dEeDFRMjFnPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0B46DE5CB96390419C2DE29C9F61E936@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10512
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C717.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2bed8806-b65c-4c4a-4e32-08dcdf0e0c7a
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|35042699022|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NWRYajRnNis4cldFazFjWHN2MVVkeVpZV0M2czBRaC92UWRYbDBQS2VWYjh5?=
 =?utf-8?B?Wk1YdE1qSXpIdUdYMUxKcVluVkgyejFlb1N2cDl4eG1UdnlYQ3NzM3UzKzNs?=
 =?utf-8?B?WXVuRHlIeWQvMy9yam94Q05wL21rMWZ5YnZqdDhzdVg5aEdVcXRRU0F6S0JH?=
 =?utf-8?B?dGlkRTRqVGphV1dlT1VTNm82SHFVN2dOLzJ6KzVaNTFxaE80eFZ6ZW5xb0NU?=
 =?utf-8?B?dzNjdDVqc2R6ZndhTHg5QWFnRERwN3lBTUVXTG40TTdmZWlDazM0VVNrcnkw?=
 =?utf-8?B?ZEZod0QxbUFtdSttdHBCTGV5dlBGd3JnNGp6ZVp0UU9KaGprV3kxdDE3ei9H?=
 =?utf-8?B?N0lwTGlNK1Iwb2pJcnFrUUZ6dlRwNFJqUE9YMkJOMHV1WDVRdEFIWjdtU2Zq?=
 =?utf-8?B?MVBCTUtxTm9jTWFVTll1OUp4S0RxOUVGdURWV0I2cWRLa3VyM0VwNXFqTTNO?=
 =?utf-8?B?WkpEM2Z3RFhFV1dXMDhIRmdzOFIxNkJKOENsOC9Hd0w1TEdCbTAzY0h1LzRN?=
 =?utf-8?B?d1I3dXBKejE4ZVhRWEFEVlg5cUNUMWJDUjlRSUNtekp1MlRaaGRhbUlhdi9B?=
 =?utf-8?B?bGJmbXVnaUgwc1c0bTdVN0FzcUw2Y25GdEFsTGJacm1XQmJwUStEUWlSOUxM?=
 =?utf-8?B?cy9hNnlLd1UrNnM4V0JnQnhVazJBV1J4UWRRV2k0SWFncG1taVVLaGU2UURO?=
 =?utf-8?B?MXRGVWw3aDVPbVZpRkRXRnA0VmxhbHlKdWJKeGNWcUxCSGdLVkxEb2lGclRy?=
 =?utf-8?B?dnd5YzRBVFF3eU9kSWI1Y3NCQUZORUdDeUhqT0x1OGpjZXkrek9CdXVTOWV4?=
 =?utf-8?B?MERBaDFEcEFxNktzcm1VTWZ5bmhveWdjN2gyZUdNbnZScThqc2hlMlY1UnpT?=
 =?utf-8?B?VWRiL0JPc1VIZU4xdVU4UXloSWFkNWRjTmxhNjZvNHRlZHEyeXFqL2ZjU3JM?=
 =?utf-8?B?NldHZTBnL3dYZXY1QkhiRnk3R1hTaGp2a3lCV2ozT0dJbDFUSVFnclV1Rk5Q?=
 =?utf-8?B?ZmtFSGhJRUpuT0daRWdrcGlxZityQThSYjd4T0dWdHpsWi9yeFgwYjhuMm50?=
 =?utf-8?B?UHpPV1MxT1BXNjA1dCtOZXNxdnp6OUMxYld2SGJ1VjU3Tms0OUxLRzRFUDZM?=
 =?utf-8?B?T0dnNE5BcFpIWmNsY2JJemNpdXlGNHdxSVhmalVtVWhiWmFYd25Xb0xqR2dG?=
 =?utf-8?B?RDdkQ0k0VS9aWnRTT0hTRjFwU3c3TFZ6ZmMrYUxvdGc0aGdjeUhLYjBsQjdr?=
 =?utf-8?B?WktCWlA1THpqckRtVTNxaVpoMkZnTVZrTE9UK01JazNaK2F2YjZnVDZLSjF5?=
 =?utf-8?B?R1ZUSUlKRG10eFpNa3kxdUhHTjUxZ0J4QlFVYUNvKzNPSUxTVWd4Z3RSMHh5?=
 =?utf-8?B?RVg3WFVsNXRwdFJDeG9tNTlidkluY3NObWM1MFhLeHlxM2ZCTXhkRC9ya3Vx?=
 =?utf-8?B?aFZIMys3Q2YxSEJzUDlNczJ5d0dkM1ZjYVc4MXRLRlNHZTR4YkJQMDBPY1ZV?=
 =?utf-8?B?WVUrL1RIRExkY09nWU9TdDFMSW8wUXhZdjRBM0VSUk9aVmROSkRWdit0UW15?=
 =?utf-8?B?blZiWndKNHNiNC82U1lqRVZjQ3JxaEthMWlyZVc2SE1TcXVwVmVDdlJHRHVJ?=
 =?utf-8?B?UXlNeGNzaUl3SjVzT3lkeUdVNEpQVkRmL3JhUHF0T3RKQUlHUW14c0hLeTRo?=
 =?utf-8?B?VVFIRVUyLzdoYjBsWjgzUkNzU1FZK1lwMm4vSE1UWURrZmlBb0huc1N6bW5Z?=
 =?utf-8?Q?YnqDc3gbrpTOM9czt3lI9Gr+4aeug2PuhF84gE9?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(82310400026)(35042699022)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 16:04:29.3492
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d790d347-e47a-48f9-1bbc-08dcdf0e1167
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C717.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6726
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 16:04:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63904

SGkgSmluZyBIdWksDQoNCj4gT24gMjQgU2VwIDIwMjQsIGF0IDAzOjU1LCBKaW5nIEh1aSBUaGFt
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxqaW5nLmh1aS50aGFtPWludGVsLmNvbUBsaXN0
cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIEFsbCwNCj4gDQo+IFFBIGZvciB5
b2N0by01LjEucmMxIGlzIGNvbXBsZXRlZC4gVGhpcyBpcyB0aGUgZnVsbCByZXBvcnQgZm9yIHRo
aXMgcmVsZWFzZTogIA0KPiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5j
Z2kveW9jdG8tdGVzdHJlc3VsdHMtY29udHJpYi90cmVlLz9oPWludGVsLXlvY3RvLXRlc3RyZXN1
bHRzDQoNClRoZSAiZnVsbCByZXBvcnTigJ0gYXBwZWFycyB0byBvbmx5IGluY2x1ZGUgdGhlIHJl
YWwgbWFjaGluZXMgdGVzdGVkIGJ5IHlvdTogbm8gcWVtdSBtYWNoaW5lcywgZm9yIGV4YW1wbGUu
DQoNCklzIHRoZXJlIHN0aWxsIHRlc3Rpbmcgb25nb2luZywgb3IgZG8gdGhlIG5ldyByZXBvcnRz
IGp1c3QgbmVlZCB0byBiZSBnZW5lcmF0ZWQ/DQoNClRoYW5rcywNClJvc3M=

