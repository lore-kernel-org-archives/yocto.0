Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF6DEC2BD09
	for <webhook@archiver.kernel.org>; Mon,  1 Jul 2024 08:13:43 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.73])
 by mx.groups.io with SMTP id smtpd.web10.14695.1719821618710173785
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jul 2024 01:13:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=NUrweFzi;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=NUrweFzi;
 spf=pass (domain: arm.com, ip: 40.107.22.73, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=c+J+QnatimBfcXC+kZ70QHomVXpXNB5cjfKOrcBs/MgeJF+E+MOJOAIGvEKUIQTe9RuwuL9VY3YS2y/9oZut51QLXQGzqQ20gopxHyNLsz1PA5g8fOxRuTakgfoWy2oEjaSWhOTP+fZuqUHijqwn0WcEfSLx34dj38gtz/rMKhwHQZE4B0CytLSvP/1uco7iLEW7T1ES0KX/7uXY114PSqsM5OLTtMgHXcee3iGnY9TvdWOdU0wZyhskD/UV/Hl9RsRBhWkgjaPFevxjtuxV8OmkgZKeIUamL4i8Borz5gNfN9ldiaDwY+2hrjlFlh+66tb77ihkqPTia3Anvrv7WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPTMUCqY0DGvDMEKNM9v+daQJm7UPfl508312XGTMgM=;
 b=DokNj8xRfr3j4VS7RkXims9RS3q/yUIIK7JqoCip34TlsXV4dN4AzU5EWDaHXRUmDvqaEWGqqE6HZveaBSsU+0HtS01l+O3OPdeKGJbF9x7/xm6Je5lDNvq5TvnxEf4OYO1JFR18bHoiq/L5owxFDUMN51voH27nPlKS+5q729611/zs8cKoJU/hBsf7cco2B2TS2H9MernhBSe0XMI7lKemFpKFqW44m2UqYw87qUEAeF9A+ZYlcBha4jhMPVw5dwtsSx77x5lXhePybLKlNMAfRuaWH83nWggpWqFw6NZZ4R4Zra3EjGi5rcBOZmvTKShnlbTb+3MdzVDhc1/pgw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPTMUCqY0DGvDMEKNM9v+daQJm7UPfl508312XGTMgM=;
 b=NUrweFziGWrJRbdjc3c+uyFYWR9lpjQrOTpiTSE/rlEHgzMUYokes418Br/hNnmLsA8DoRveBJHGBeSJLmRF54QqsOtx/8GMAwmbAo/5l4sdiWHbVTWca6I6IRbDimJ8Utt8+Kgj0SZPu4BWow0qvgFVQEbmTAvLcukbq2Wl9mI=
Received: from DU7P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:54e::10)
 by DB9PR08MB9681.eurprd08.prod.outlook.com (2603:10a6:10:45c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Mon, 1 Jul
 2024 08:13:35 +0000
Received: from DB3PEPF0000885D.eurprd02.prod.outlook.com
 (2603:10a6:10:54e:cafe::19) by DU7P191CA0004.outlook.office365.com
 (2603:10a6:10:54e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33 via Frontend
 Transport; Mon, 1 Jul 2024 08:13:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB3PEPF0000885D.mail.protection.outlook.com (10.167.242.8) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7741.18
 via Frontend Transport; Mon, 1 Jul 2024 08:13:34 +0000
Received: ("Tessian outbound 826180819ba6:v357"); Mon, 01 Jul 2024 08:13:34 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e35d01d9201de1af
X-CR-MTA-TID: 64aa7808
Received: from ae3e9c2e8c64.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F5E1B87E-F325-4190-BE13-343A88542D85.1;
	Mon, 01 Jul 2024 08:13:28 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ae3e9c2e8c64.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 01 Jul 2024 08:13:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ji9Vjayf6V3jU+oMzLGRgo7PjBDaum9amOdGglwBcBzZRfHKSTNlauR3eu02bBB7VN1AX43f8p1DIDnbHsxd8I+jFTdtB39CmWSF1/3m85a+44ql9oMwwpH7utBPFqL0KCLu2DfcPIp8inED4moZKITGn9AlW4aTX0lhT62JevAlNZ3rbPAppHfwnBketNK4cjHqkfmjfq+050i5R6HR2VdYXHdKEsD3MHkFSKsFZE4RQO95uqRHjrO9cJbaI8y5ynwZFRAm1eZaBc1zLOF93RtiYmpb9YlBXSW7HFTZqsOWCb2ezw5rJnx/brd/eUoWikE+kLkwnrZP40KSiG8BEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPTMUCqY0DGvDMEKNM9v+daQJm7UPfl508312XGTMgM=;
 b=TxErZhusbA3XscOxqHTJSUK9fM3unFfO8hMkqRW1HxR3qpihv/CctQUfe0IsHoYT9md1LrsMYpAYseQIgzsMdezq1eiCktFyQgHJUCJTKBN+Hn7rWrxrRyOQWykwKFR/aQpxqLXseRjzlUQDaivq8BltC0AYc1dwyyat81Q5q4ocOcvJE39FS6p5YOYbEVD1kMxRXzsfdiQdQ71ZKm96U2mvUHqwBZGUASxcQoOMUwsPHHtksz8h5W7V2IOhy27aeegZlBaAzh6g4u/HSLhf5Zl/90j0Aef8OeMEZ795acMQEEGSb7zjOtwkjlMy1v12n6r57V+2gp52C8fue5IWOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPTMUCqY0DGvDMEKNM9v+daQJm7UPfl508312XGTMgM=;
 b=NUrweFziGWrJRbdjc3c+uyFYWR9lpjQrOTpiTSE/rlEHgzMUYokes418Br/hNnmLsA8DoRveBJHGBeSJLmRF54QqsOtx/8GMAwmbAo/5l4sdiWHbVTWca6I6IRbDimJ8Utt8+Kgj0SZPu4BWow0qvgFVQEbmTAvLcukbq2Wl9mI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA6PR08MB10767.eurprd08.prod.outlook.com (2603:10a6:102:3d1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.28; Mon, 1 Jul
 2024 08:13:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7698.038; Mon, 1 Jul 2024
 08:13:25 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"alaraij.shaikah@gmail.com" <alaraij.shaikah@gmail.com>
Subject: Re: [yocto] building core-image-minimal #bitbake #ubuntu #yocto
Thread-Topic: [yocto] building core-image-minimal #bitbake #ubuntu #yocto
Thread-Index: AQHayt6bG96ymliGgkySDfYESX5F37HhcDOAgAAFSwCAABHQgA==
Date: Mon, 1 Jul 2024 08:13:25 +0000
Message-ID: <8390A145-3A02-4AA9-B5B1-2966BF9573E9@arm.com>
References: <25279.1719816633868138151@lists.yoctoproject.org>
 <25279.1719817770772518488@lists.yoctoproject.org>
In-Reply-To: <25279.1719817770772518488@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA6PR08MB10767:EE_|DB3PEPF0000885D:EE_|DB9PR08MB9681:EE_
X-MS-Office365-Filtering-Correlation-Id: 17e9375a-e2e7-4315-fc35-08dc99a5b3d6
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?cXk3NXlrZmd3M1hGNW8rYUR0UHg2T0lqRFN5YzJ2M2tJTW12L0VLNGdPelRn?=
 =?utf-8?B?WE50ay9SUHVoUklKVzZKNnYyN1N3enRxb0EvUVlDSDdaS1ZkTGhKaXBsSWI4?=
 =?utf-8?B?MlBKYW51c1RrRDV6RHJndDg3RTNjdVZYTEVva0NBN2h3QzlWdm9vM1ZPNVAw?=
 =?utf-8?B?UjA0a0VzZmwzK1RsSUdCd2x2TWhYZnhNRmtlMXJ4dEd1Q01HVzJlTWZPQWtL?=
 =?utf-8?B?NUdjWkYrdVkwYlM1K29UaEZzak5RM21qNlBEODgyM0xRNXFYdUo2SGh1NlFl?=
 =?utf-8?B?alBOU1EySXdIaGNqWmhibnYwWFBTSDRzTHc4MmtBbEt1TkhqaWUwUGUzQzlF?=
 =?utf-8?B?MG5QUERaT0dVdytPeEszNVVIZUxSMGErcnR5M1FlNHVSWVBHUHQxYWloNGtI?=
 =?utf-8?B?TmFiN2hMZjZBb21EMEVoeFFKQWd0S0lqMngrRlE1QUNiNjF1clFEUi8vR3Fi?=
 =?utf-8?B?bHJ2d1RHcUNVd2RBeGdwbnVTNzRldWtPcDVOOTUzR2o2ZnNseVlMWHVCSDFJ?=
 =?utf-8?B?VnAxMVBnMVQ4c3BtTFljSWxBNno3Z3A1cFh6RExwaGMxWDVvN2lmY3BpTkxQ?=
 =?utf-8?B?M29MOE1PdEZiZFVpOEdOOWZ1V2JZZU4vTDBnU1VKemNiRGRaSkozNjZhOUMx?=
 =?utf-8?B?WEF1M0tsSFRUUjB5RWpNRVE5eVp4Q2NCUlBHaWt6cm15ZWp2OXk0eldlMElX?=
 =?utf-8?B?eUtJVHQ1SVN2b2pFM0VsWU4zZThBS0kzOXVjSXJ3S0QxUHVZQmM2YUtsSjBq?=
 =?utf-8?B?QVFjRE42aWU3akRDbmdGcWdPazNndkpQcGJlRzlBQ290TTNmd2QwR2VlL1dU?=
 =?utf-8?B?OEs4YlVZSFRrQlNHcXg2cHVHMndvcWhYWUdGTFE1bXhrdlBPOE4xUU0xSUtT?=
 =?utf-8?B?Z3NBdTg0R3FGdGNDS2ZISHBWendhRTR1QUVldk9JR2E0VzNFN2pCcTgycWVt?=
 =?utf-8?B?OUF6TU1QMXBEbE95ZkxjVmpPalo5WnZCRy9hZDhWakhES2dwaStxdnZKU2JD?=
 =?utf-8?B?UGQ3RldOSHY4cTA1bUtEeUlBTnlnbkxvcGhDOEhtVXQ3aEZ6UGpIRWcrYld6?=
 =?utf-8?B?TFp0NjZLZG81K2JYVlorTGo2ZjlHeUpjRDBuZXAwRmZPMkNUT1l0OU1YSVVH?=
 =?utf-8?B?Y3ZjbEhnKzQ0OG1oZVVaNEpQTnBlNlZjTVBJSXhBNkxCOXNJeDhkdUlDbFdU?=
 =?utf-8?B?bmJiTCszLzBVSGNiK0R4VXExQ0RLeEZXWFhiaU03cmM1NDgyeDNZdjh0VGR3?=
 =?utf-8?B?N0tnNXNKaFgyd3F2ZXFacDNxYWdQTHM2SmxpNmZvbUR4ekRvUlZxK1IzU1Nr?=
 =?utf-8?B?VmJpeXpZQ010VW13UjUxZ3Jlcko2Mm5Ybk5rN25mS2FtV1Y5aTg2bFZiZ1Rr?=
 =?utf-8?B?MDFwQmF1aEdXWHVIU200WDdHMWdoaHIxUnAvY3Rjd2c4d01FeXdrNGwrU3l6?=
 =?utf-8?B?djVubWJzcmhhN3JaTTdBK1VIdG5mQTVoNE5JNVUyNkV3ZVQvRUQ3Ym5yMnE1?=
 =?utf-8?B?Uzc1MEdHVHB4aFJxYkxvRmR6dUlrODlEYVp3MlRWTUw4c0R0YzZPK2VHc2lh?=
 =?utf-8?B?dGd2d0YxWU0wdXg2c1NMeXZqM1ZPY3dFeFNqcjNWY21jajFtUjJreDVSUTAr?=
 =?utf-8?B?eG0rTDIzc1N3bG12a0RlenpXNEwwWjZZT3JqbGxPSTl3SU9IU0lNRnY2aTRJ?=
 =?utf-8?B?NGlVOVkyMDJwNFdkbkY0WHNOVk1hODVKTVVDY3kvbTRZRjdLQmIzNVM0Z05o?=
 =?utf-8?B?ZWlYRXdmTTIzSld6WjJPREp1ZncwaDNHRlFqTTJJR3ZrVXdmRlByUmtJQzR2?=
 =?utf-8?B?ckFGN0l2ajJsQVJlZWRWUT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <8575786075FDFB48A881A9A0CAB69D16@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10767
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	285b29bc-061c-4d9f-ce04-08dc99a5aead
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T2pQYXB6cWZIVTMzWmRzamQ0N0d6b0x4QXcyaE9hN2t1ZHlEYUZqaVNTcFpX?=
 =?utf-8?B?dGVNRDNyc0VFMkp0QzBRTk9OQ1JmZTJTczBEZlEyZSt3OU9rZ0xaZzdYdy9N?=
 =?utf-8?B?TVJ1Q1JYY2lRblM1dHhSTCszWTJqRkxVcWtuNUR1Y1FlZFdOWTNQbWo3NFYz?=
 =?utf-8?B?eEpXTURXaGNSVStFVTAzRHFJMTNneDJhNnV3SHpNSTNhdVlobzUrUEMvOGtH?=
 =?utf-8?B?NFI4b0k2SStKTnljMXhXRmNqb01qbVh3NHJLNmR0MXVHekREOXZkM2lST1lH?=
 =?utf-8?B?WXk0ZzZXWEdKUkVOSkUzaGdIZ29ZVUZ1T3MrWFJ6T0dyZCtYcitVdldiVEpI?=
 =?utf-8?B?SlZ1eTgvWTVjbnpZWXJkVCtqKzk3d2EzWDVMeDM0M2FLakI5SDVjbWZna3hX?=
 =?utf-8?B?UVM2dDJQb2oydU9CMCtFT1lxd3J5dG50a2ZzenBhZ3NrcjdsZTVZRDNITFRu?=
 =?utf-8?B?ckZPUEhUNlFFMTJ6ZDJ6ZWtYcVpMQW1XZFZRdXlPVzF6MDZ5Z3R0bUtvNmhN?=
 =?utf-8?B?Vkp1cW5HQ3I2VWJPWmpwaGM4ZkszRThIU2I5VnFiSWdSd2ZOY2RvMlRnbS9K?=
 =?utf-8?B?eXhJdk1YQm03MTZMaERMNXZmWnlMQ1R3elN6YjZBMzJrakIzK3VWN2Q1OFRM?=
 =?utf-8?B?eWVQQ1BDWnhXeWFwTGlLY1pkd09hKzY0YldzZVRURDhaMkVuVnVCWmlvbkEz?=
 =?utf-8?B?R1R3N1ZhQ1NiMGhxUHI2VlozeUIyUzBaLzB5V216dkZycnR1d1YrVjBnUFRl?=
 =?utf-8?B?bW1aTUpXMG1TTmhwWG54TERSd2lkNGk4K0dnQk0zdTFDMjNaQnZoK3ZsTzR1?=
 =?utf-8?B?czZWajh5NGtrUVUzbGIvZU9BbTl0V0d0TnhzWnFIVS8wUHNEN1VreUkwOEtJ?=
 =?utf-8?B?a1ZiaDFCU3grWHltOU43S1B6b2pVNFp5eXVtRE9tUldPdGlvSFJiaXJDRVZ1?=
 =?utf-8?B?Vk54YWp1RWdQRUxMenFteWp2RXc4dTM4NTJEclgvRW1VWEI0Q2gvWTAwUkFp?=
 =?utf-8?B?MEVOR3Z4V2NucjV6QUxRZTlxS2tXRy93a01rMjlqTk1yalhMSjVzTE5SZnRK?=
 =?utf-8?B?cHZkOEVzMEhNcDUzSXQ1eVJWeUdud2JHSTRBV21ZTzNTaFRWSG5YOVRuZW83?=
 =?utf-8?B?SFBwZmx1eVc4VThUNGpTOU1ML2ZHSS9HV1RWYkFqUkR5WVZZTjZHN1IyY09s?=
 =?utf-8?B?amh1eHY3QTlPQUxGYzZlWmIvSTFtWE9GM1Y5ZC94OVdTOVhvU0xuWWsrZjdW?=
 =?utf-8?B?VGNFNFUzQmVubEY1SnltZWFDTzI1d0dNUE44eTdRTDk3dXVtWS9WV2lLTHRU?=
 =?utf-8?B?b1FkeThIREovZWp4TUErR1BzNmNhM01oWkZHVnI1MGMraHdRQkdKSkZVaTVq?=
 =?utf-8?B?R1Z4T0VCbFRJN0w0anpPNG9xM1BoUzJBT3F0dEdxdmJDQ3pKQzBRTitWeDlk?=
 =?utf-8?B?bEVsc3pVODhWVVgxOCtpTFdhSzdNdjFZTm9xMXA1dGJBU1BlZU5ReXkrdEcx?=
 =?utf-8?B?UzBpR0ZKbHcwWHhZRWdsSkpER0dhM1FuTTBCbW1YOE41ZnNoL0Nud0NVMy9L?=
 =?utf-8?B?aWdnbW5HenpoTDJzSjBDR3ZBRDlmdlB2Nk9sNkFSNWNmTXlMSUx2dlF1aTJQ?=
 =?utf-8?B?bEYwRWx0cnVNOGx1Z0p6WUczaktRRmFLelBNL1l0QmFMRStXUkhJV0FGUVk4?=
 =?utf-8?B?Rkd3cEdGaE5Cbi9zZ05aeXZrNGVkTS9kRVZPZWM3UGF3ODhqcDMrL21DYk5C?=
 =?utf-8?B?V3VJRjVaMThkNGY0aGxVWXVQYlFkNENzMmZLTnhmUm1qWjNEdEQrYXREQXRq?=
 =?utf-8?B?VWs1aHJJT2JXSEJBbWpRby9HUWZ4ZGJRRHVGK1BiN2swRmtVL05aMFQ0K1J0?=
 =?utf-8?Q?KrbK/KGdhL1EL?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(35042699022)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 08:13:34.5632
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e9375a-e2e7-4315-fc35-08dc99a5b3d6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9681
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Jul 2024 08:13:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63418

T24gMSBKdWwgMjAyNCwgYXQgMDg6MDksIGFsYXJhaWouc2hhaWthaCB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8YWxhcmFpai5zaGFpa2FoPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IFllcyBJIGRpZCANCj4gSGVyZSB0aGV5J3JlOiANCj4gDQo+IEJ1
aWxkIENvbmZpZ3VyYXRpb246DQo+IEJCX1ZFUlNJT04gICAgICAgICAgID0gIjEuNDYuMCINCj4g
QlVJTERfU1lTICAgICAgICAgICAgPSAieDg2XzY0LWxpbnV4Ig0KPiBOQVRJVkVMU0JTVFJJTkcg
ICAgICA9ICJ1bml2ZXJzYWwiDQo+IFRBUkdFVF9TWVMgICAgICAgICAgID0gImFybS1wb2t5LWxp
bnV4LWdudWVhYmkiDQo+IE1BQ0hJTkUgICAgICAgICAgICAgID0gInN0bTMybXAxIg0KPiBESVNU
Uk8gICAgICAgICAgICAgICA9ICJwb2t5Ig0KPiBESVNUUk9fVkVSU0lPTiAgICAgICA9ICIzLjEu
MzMiDQo+IFRVTkVfRkVBVFVSRVMgICAgICAgID0gImFybSB2ZnAgY29ydGV4YTcgbmVvbiB2ZnB2
NCB0aHVtYiBjYWxsY29udmVudGlvbi1oYXJkIg0KPiBUQVJHRVRfRlBVICAgICAgICAgICA9ICJo
YXJkIg0KPiBtZXRhICAgICAgICAgICAgICAgICANCj4gbWV0YS1wb2t5ICAgICAgICAgICAgDQo+
IG1ldGEteW9jdG8tYnNwICAgICAgID0gImR1bmZlbGw6NjNkMDVmYzA2MTAwNmJmMWE4ODYzMGQ2
ZDkxY2RjNzZlYTMzZmJmMiINCj4gbWV0YS1vZSAgICAgICAgICAgICAgDQo+IG1ldGEtcHl0aG9u
ICAgICAgICAgID0gImR1bmZlbGw6MDEzNThiNmQ3MDUwNzFjYzBhYzVhZWZhNzY3MGFiMjM1NzA5
NzI5YSINCj4gbWV0YS1zdC1zdG0zMm1wICAgICAgPSAiZHVuZmVsbDphOGQ1NWUyZmUxM2Q2YmUw
MzIyMmY0NWIzMTE1YTk2OTM4YjI1NTNh4oCdDQoNCknigJlkIHRyeSBkZWxldGluZyB5b3VyIGJ1
aWxkLW1wMS90bXAvIGRpcmVjdG9yeSBhbmQgdHJ5aW5nIGFnYWluLCBqdXN0IGluIGNhc2UgdGhl
cmUgaGFzIGJlZW4gYnVpbGQgdHJlZSBjb3JydXB0aW9uLg0KDQpCdXQgaWYgdGhhdCBkb2VzbuKA
mXQgd29yaywgc3RhcnQgYnkgcmVtb3ZpbmcgdGhlIFNUIEJTUCBmcm9tIHRoZSBwcm9ibGVtOg0K
DQokIGdpdCBjbG9uZSAtYiBkdW5mZWxsIGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9r
eQ0KJCBjZCBwb2t5DQokIC4gb2UtaW5pdC1idWlsZC1lbnYNCiQgTUFDSElORT1xZW11YXJtIGJp
dGJha2UgZ2NjDQoNCklmIHRoYXQgd29ya3MgdGhlbiB5b3Uga25vdyB0aGUgcHJvYmxlbSBpcyBp
biBtZXRhLXN0IHNvbWV3aGVyZSwgYW5kIHlvdSBzaG91bGQgY29udGFjdCBTVCBmb3Igc3VwcG9y
dC4NCg0KUm9zcw==

