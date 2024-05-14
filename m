Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D895DC04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 09:38:02 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.80])
 by mx.groups.io with SMTP id smtpd.web10.11202.1715679472306363316
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 02:37:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=RtR8x7SE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=RtR8x7SE;
 spf=pass (domain: arm.com, ip: 40.107.104.80, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=PxRdvURMrNbArsqes8d4tE833ZJHQtQA1fCB6koZBC5Jz8/EZ0ABIa+d2vSiPzcPhaAuhrWHTEWrRF68Dal91X5uRlaR5OQVR/A6wSQIjW6p+H30Laz43WTcJrflsWkGGn4s/eMSFl+QTnf0eQPoreTil10uXFtsCHFQpy6PW3MZ3zBWiVGST77AnF8nTPjS/jv3Qda/Tps2pSSscwL21K94TqEmEVyuzFMjZlaKHnfj3ViXZP9pQWHtkHLoZ3KTxWyGGEBzgi3IADnrRZ6+5sQSqu5Fv1Iufm6Jta7rJnof3ja14Aa1XRMo7sCRmKjDxGJJBUIlqZS+yCmsSA5mtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQTW+iYMl/59LLqSgujlMDp+XOtOQmrXbnJgDA1SyoU=;
 b=B45urowvRHAOlM9kUZjDL0Q9B2S3l+WcA3j0kbKUk5uIyR0tjv1l4VXCG+kFYstmlmCF5JPcFtqc6/BlFifOsr2mHm4obRl9ZOXeVcpnyNV4kj1E/gUA7uM5tPwfa2EdcJoi6jsBBJco79naT4jjQVWctRjRWeM7HfAYLiuWAA/oXHCnYuizNXcwCDWytwyHHvb4yJzhn+s6LS4lPzkjF35qqOUkuzmWG9QbceYbNFosrQd9tDxmaMqsz6h9gUlioPOuuj18L0mhXIH8eOBl9pmFHNGC5BLXq1b6/R3GWgC+xFMD5bza1mNbTmXoXsn40XtutxWpO3IdkyBWhgQJfw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQTW+iYMl/59LLqSgujlMDp+XOtOQmrXbnJgDA1SyoU=;
 b=RtR8x7SExgrhhL72zkGHP8+sha7VHuKw8mbaV28D8p82xn1V1chCEVvcqHyB8kd5AzbL7zCPj/MqNDWcLTARVhj9uMlA+53pp2E5jQXfHCPesqA51U3ELmZ7Kx7YN7mcrMQD05RCoMO/EKklXQ7kciBRuO1BTKRKKNZ8x4k1AAg=
Received: from DU2P251CA0017.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:230::16)
 by PAWPR08MB9098.eurprd08.prod.outlook.com (2603:10a6:102:342::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 09:37:48 +0000
Received: from DB1PEPF000509E3.eurprd03.prod.outlook.com
 (2603:10a6:10:230:cafe::46) by DU2P251CA0017.outlook.office365.com
 (2603:10a6:10:230::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55 via Frontend
 Transport; Tue, 14 May 2024 09:37:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509E3.mail.protection.outlook.com (10.167.242.53) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Tue, 14 May 2024 09:37:48 +0000
Received: ("Tessian outbound 082664cc04c1:v315"); Tue, 14 May 2024 09:37:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dad4515ec8ce89a7
X-CR-MTA-TID: 64aa7808
Received: from 5cf0c9669f5e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 95E6F0D0-EFAE-44E5-B1C5-F8E4BB5B2192.1;
	Tue, 14 May 2024 09:37:41 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5cf0c9669f5e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 14 May 2024 09:37:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fba7mpXGCUABW4X279ZsoK+GYewuwa0JaLylUaC+QYEALhEmqiDFg6tCZdTQ+M9kUx4uJ2hlhSpUlzUuTfLFetHo/nS4h/nSGqenXvNKpPRTsCga3bbruOelTxiGziaeKdO9vm3xITszT7GVBlRjUYkBrQdvTpLhJvqP9Cn8tbAd6uL0Wx7ALa9zAPmR9aihQ/sDkb7xoR0zbdmxlkfv5LuzCbm3Oum2s5WTMp6vw5lqYve6HreQvqX2pqKNRpCrT3Eu5CHrjhpuXc3qDx/Q/f6+FGzsJZ1zuSB9/phdxWKIgzkX8O24DE2v93t7q9I+uotWPZUSFXvzLSyAhiTkGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQTW+iYMl/59LLqSgujlMDp+XOtOQmrXbnJgDA1SyoU=;
 b=PGXpDZK6YxY25Nt58PNrM/8Rj2f2bplZoXXY2W73izCo4S+mUV+mYEPmRBdChwjxjmOUTRhfS9n2vGCs/c82KLOFHDARGUZT0ze3iDGCC1BurQJhCIvbprcC6mPUGd3Lg8s07e4mAZ6KM1y54iFLvti4qnyj+1JYuDr6XIcJ9i/v0xIYoii37QAzkS31FX5nb/oO+Fh3OmaUU1owcyG85w5AD85tl1qHJ8rBXtdRZgWXcLkXYRSpL2KSCwFKbw6+3M9HryV/rAQcb+/diifTk7TjFPtmqNNYzG6P0Tbrfqaxa55NckVOCe71YpEZ8LHuMxBVC4nkev8L75omg3T6TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQTW+iYMl/59LLqSgujlMDp+XOtOQmrXbnJgDA1SyoU=;
 b=RtR8x7SExgrhhL72zkGHP8+sha7VHuKw8mbaV28D8p82xn1V1chCEVvcqHyB8kd5AzbL7zCPj/MqNDWcLTARVhj9uMlA+53pp2E5jQXfHCPesqA51U3ELmZ7Kx7YN7mcrMQD05RCoMO/EKklXQ7kciBRuO1BTKRKKNZ8x4k1AAg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9608.eurprd08.prod.outlook.com (2603:10a6:10:448::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 09:37:38 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 09:37:38 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"Salahaldeen.Altous@leica-camera.com" <Salahaldeen.Altous@leica-camera.com>
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
Thread-Topic: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
Thread-Index: AQHapdQ2xJHLsYP2r0KsRM1CMCD36bGWeQIA
Date: Tue, 14 May 2024 09:37:38 +0000
Message-ID: <74C61590-150A-46AF-BC48-98C18C756BAC@arm.com>
References: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
In-Reply-To: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9608:EE_|DB1PEPF000509E3:EE_|PAWPR08MB9098:EE_
X-MS-Office365-Filtering-Correlation-Id: 53939648-b1a4-4c18-e492-08dc73f9843b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|366007|1800799015|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?SDNHU2tOZTBJYll6VGhkaHh5MklMR25jQm1xc0ovdHI4dy9OdXR2ZHI4UDZQ?=
 =?utf-8?B?TXdlRUlBM2RXd2ZBdlEwWkNEckpES1J5M3A0Ri8rSjBCUE92a2pqZ1U0TUc0?=
 =?utf-8?B?eEFKbXNFbXBENUpSclRyVFJldnJsTkRNOXlZT2Fkd080UUVYU2c2MGswUHRO?=
 =?utf-8?B?Mm9QTnRFRnROMUlsWGszT0hsbHhybFVla1F2MFJKS1JydnB1NHg0Mk5SZkxj?=
 =?utf-8?B?dUd3YlUxYlIvQXJ5VDRGMVdHQXNyMWZSTnNScTY3ekQ1K0F1bXRLei8waEEv?=
 =?utf-8?B?bjlRVUw0M284TU55ZHhiSVM2aG9rK1lCb3JYTXpTMGlNWlBKTHVrQXgvTzRq?=
 =?utf-8?B?TUI0bTVYWm1JZjFTM3RLQkRaaWUvWFRLTmJjc1FkbTJUVU54Z2xxMGlqeits?=
 =?utf-8?B?TDdJdnRBTU1DR05yYnVpajAxeTE1cFdtdGk5NDZwR3ZZQnZPcTEyK3oyTDk1?=
 =?utf-8?B?YnpIOEZYTTE4ZXdMYUs4b2NGbUJDaUU3WnFVa3EvTDNUN1RrNEgwZDRjbU55?=
 =?utf-8?B?bTRkcFJmY0FuKzJlalZrNHVJY2ZEQ1FUNHBKc3d3bzVzbDU4VE1iVzhTcFJk?=
 =?utf-8?B?RHV6c2wvSkpmQjdTRGVjNThEUzg3akdmZ3FVZ0s4R3BGRWE1MDJ5T0xXTDNJ?=
 =?utf-8?B?QUJNelN2bi9oMDRIcGw0YmlJd2hUYnBHOXU2MS95b09nZ25TbkdtN3U0M0lB?=
 =?utf-8?B?ZE9scTlmeTdrc1VGano3WXJjanpQUHBvNTAyWklpeCtvWXJ1aHlDN2NYOUV0?=
 =?utf-8?B?ekhpT0RHMVRibzYzWDBlb3RzMVBNWjJkR0VJV2dKL1BqUGxVL081YzlmcXRs?=
 =?utf-8?B?ZVo2RG9rNHlvRVlqWVRRQ3RpbUpQVERCSnZvNU93WnB5R05BaXFEa2hzS1Y0?=
 =?utf-8?B?Qm1vY1hRYXpISGRQN1Y0eThnaHlHbUJmbVJUQkUzci9Eb1c1c1A2bVlaa2Rw?=
 =?utf-8?B?T3E4VmZtOW91RGNXNnlRRUoxWUozZzN3bmVscGQ2SUw5TmtvcTh2a0lDRTNP?=
 =?utf-8?B?YzZVeVJWbVc5bUJPSW5rZFhxckNTanFjWm8rK01zZzd0cnVHdHNTeVgxVXBq?=
 =?utf-8?B?eXlyRjVCNGwyMkowWENiUXJTZDQ0TG93Y25mL1FkNHFTbUNYb0pld1R2S0ov?=
 =?utf-8?B?SDhjUXpRVHNxbEVTZTkzNDN2RGMvMkFXbGhGS3djTEl4SGdyZkJ6b0NHeWZF?=
 =?utf-8?B?WmxKdHoxUjY3clB1WmxEUEVUUHpkZk9OUmY5dkt4V0FabFRvOXF0WFAyb2F1?=
 =?utf-8?B?aGdmK3J2VXc1VjFNZXRzcCtyRjdmamRmZmxZRUVNUUZWd2s2cFM4WWtPR20w?=
 =?utf-8?B?MjdRNkVwSFJBSDRQcmI5RFhpZGlqTFBJK1hXUWwxekJLR2R0UDkzOE1vWElJ?=
 =?utf-8?B?WFFIMW9vQm1id2x1aEVSYWFSMkZJUHVHTHRpNHV5Znhlbk5sSUN6ZzNvQUpW?=
 =?utf-8?B?U2VqM0xxKzBxTk16NHJ6Q3BtMCtuT1A4TUpwb2lRU1ZaZlNWM2o4WVZRUWtX?=
 =?utf-8?B?OEp1cUVSZHlNSnVEd1BxeUJsR3Vxd2p4Lys5aGRWbG0yWWhNbTEzeDFPRHpv?=
 =?utf-8?B?akE0MjdBVUFad1VZTHF3Njd2NXBBUEhCQmV5eTRGU3VkSW8wQlBINmFiUGgz?=
 =?utf-8?B?S0pPZlVKV0E4b01SSVNQNEtDc1pBVGpweUFpWkQ0K0hOakdOQ2JIcEdZaFEr?=
 =?utf-8?B?ZnhGbHJaa2RGZE51YThLTFFQZ1lWUUtoUEdrNDRnMXk1Y0RPZTJGNmVvejJh?=
 =?utf-8?B?Z0FGMWZpWUN6cnUweEt0Zk9wTE4zc1JQZlNYczJlN0pGVkZnSFBJVk5xOURh?=
 =?utf-8?B?eHRSUmE2RWxINDFFS1Jmdz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <CF2CA88DE144434CBCD1577772B38234@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9608
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509E3.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9835c2b0-95dc-4df6-541c-08dc73f97e3a
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|1800799015|35042699013|376005|36860700004|82310400017;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bDFxTTNWcVd1QkhkSmQzN1d3bkdieEMwUzl3MHFjUEdwWGdsRktVUUdCb1lm?=
 =?utf-8?B?L3E0RDN1QjBST0xwWjI1dmxjSnJJNGN1cHlNajZHaTg0MzU4aVlEb08rRFZL?=
 =?utf-8?B?Q1Z5TjVLK0JOdFJDMmtWRWtmWlV1cVFQQ29vME8rakxtY0YxVzVZZ2RVOXdL?=
 =?utf-8?B?cFp5UDh0dmJJbWllbVJ2dGdEemgzRWlIc1ZzcGV5Z2lpVWd3QU9FRXpJTG9E?=
 =?utf-8?B?VzBHWTZhdHRqSG12c3RwZUVadzNnR2ZEelZsdHdIc0l2YlBTN3ZTTm8zVGYy?=
 =?utf-8?B?bm1Db3FwL3BjS1dtYkVHMk92MDF6aVREdDRidE9Od1czRjJFNE1CRFpaUmpN?=
 =?utf-8?B?R1JVMjlwOUwxRTJYUUIwa0VCd2RCd2QwdzBBTm52NldBNU5XaWRsdzI4eklB?=
 =?utf-8?B?SWV6V2dDRFAwT0JYKzVYRnJ3ZitwMVZ6cFQ1d0N2Zy9kMDg1N2tmZzVhaFZ5?=
 =?utf-8?B?VGFvK0RENjB2UXk4MEFXSnZDQTZmOE91MWRMcy9ySzhUdURhNlVmb2drQ1Bn?=
 =?utf-8?B?NDlhVmZEcTc3QUo5U2hmM0NsRlg5QWVOY3I2TkY1WlZyVlJlUzhOSzVUdGhH?=
 =?utf-8?B?N3JEbmhDSjhSMnpQNzNhcGZWNWtmYnNYZlNzTE9rNWRoMGdJU2JwbVVpZE5o?=
 =?utf-8?B?eG5veHNpc2dkK0RsSDI0QjUxMHBCd2JHMlNzTmFlN1EydFdOYlFjaXBndlAv?=
 =?utf-8?B?dU01UHF6L09TMjVlZ25XSlRXSitITFFEYnNtRkhJNERtWjlXQUdndmNpcGdT?=
 =?utf-8?B?bnRtcW91TE9KbjUrcURrRDBra1JtVStxMG8vekJZL2ZGL21SdTVPYlRSQXBr?=
 =?utf-8?B?aWRSWDh1djVzcXc0Umk0Ymg0YXBwTldjZkJnTStJQWw4WFl3c3ZUdEFaWlhm?=
 =?utf-8?B?T1FOdHMySW5pekx1aUo2K3FMVmpkODNmdGpkU1hKOCs4UElLQndHYXZ3TGpX?=
 =?utf-8?B?Ky92bzJmc2lFRkRoTkRQcFc2dHNhRkNvc1BIOG02OUtTM0VNdG5xVFJQc0R6?=
 =?utf-8?B?ZTljOVh1ZlZOY1djdjB3ekFXbTVOS0lYQ3c2YWhUcVJid3BGejA5U2l2M1Fx?=
 =?utf-8?B?ZGhRbCtseEE5SlM0VER4emZUeGUweUV1SnFmcEVldGZHcnhVUzlsTllQVUt3?=
 =?utf-8?B?NUNtZUlTVXJ4NWV2NGRoVHFOaFcrSWs0TjBGbExMR2VQYmUvZVFET3Y3NHlp?=
 =?utf-8?B?U3ViaXNIOStENEVOOE11ZEViNCswenFtZFpKMElpOS91Z2JQSElhdDFqcHpU?=
 =?utf-8?B?K1YyRmNpNVJWN2FXQ1J3Y2F5MWJNaDRvMU1mNk4zNjdVVnhrQmp4VkZJb0FY?=
 =?utf-8?B?OFF3KzVWRFhRdWlSZGtFUlgzQTVIbjJaVTYyL2xGSEgxVjNXN082MytLOWV1?=
 =?utf-8?B?M1VibW9NZkY5N0JtVW9NZ3NmOFFYT1pZUHF2MUgwTCszdjd2cTVkT3kya0Y3?=
 =?utf-8?B?cVFEdEgwb2twZ21Gb05aaE81amU4em1sUmNvTXlUVnRUSEtGV2JTUGFTeXF5?=
 =?utf-8?B?eWl5dUtDdWZJUE85VlRPT0JQSjVMVUN6SFhHY1FOTXV6aVY2eXBYakQ2a0wr?=
 =?utf-8?B?a2R2S2FnNjI0eGN1MjU2dzBFdFRrdkFSNVJhMUJyZXU1TjdwSHVldVBuU3pP?=
 =?utf-8?B?NFdoZklTUFg1RzBmd0c4OVBxcFhrelJaT0ttYm9VQXdjWGVQd21HcDJFYVBU?=
 =?utf-8?B?SDRHMzhUTng2YzVOMFY0K1QxVUxRZG5wTEdHRnFLeVRGU3VQVmk3MDdwd09I?=
 =?utf-8?B?RWVjMW5GclFVSUhTQ0pzekhkbmZyclV1dE5LM29QdWQ3U1pvK0w2d1QzM1Rj?=
 =?utf-8?B?dVdCUFl3Mmg3YUJPMnN3M0RFNHNFUEpWUXJJVTNLTEpKUlZ5d0xlem5wa0hP?=
 =?utf-8?Q?SRg4KfdtV1E1h?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(35042699013)(376005)(36860700004)(82310400017);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 09:37:48.2023
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 53939648-b1a4-4c18-e492-08dc73f9843b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509E3.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 09:38:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63090

T24gMTQgTWF5IDIwMjQsIGF0IDA4OjU1LCBBbHRvdXMsIFNhbGFoYWxkZWVuIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxTYWxhaGFsZGVlbi5BbHRvdXM9bGVpY2EtY2FtZXJhLmNvbUBsaXN0
cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpIEFsbCwNCj4gSSBoYXZlIG9uZSB5
b2N0byByZWNpcGUgd2hpY2ggaXMgdXNpbmcgbGlic3FsaXRlMywgdGhlIGNvbXBpbGUgdGFzayBp
cyBPSyBidXQgSSBnb3QgdGhpcyBlcnJvciB3aXRoIGRvX3BhY2thZ2VfcWENCj4gL3Vzci9saWIv
bGliZXhhbXBsZS5zby4wLjIuMyBjb250YWluZWQgaW4gcGFja2FnZSBleGFtcGxlIHJlcXVpcmVz
IGxpYnNxbGl0ZTMuc28oKSg2NGJpdCksIGJ1dCBubyBwcm92aWRlcnMgZm91bmQgaW4gUkRFUEVO
RFM6ZXhhbXBsZS4/IFtmaWxlLXJkZXBzXQ0KPiAgDQo+IEkgaGF2ZSBhZGRlZCB0aGlzIHRvIHRo
ZSBleGFtcGxlIHJlY2lwZSBSREVQRU5EUyBidXQgc3RpbGwgdGhlIHByb2JsZW0gaXMgbm90IHNv
bHZlZCwgYW55IGlkZWE/DQo+IERFUEVORFMgKz0gIiBzcWxpdGUzIg0KPiBSREVQRU5EU18ke1BO
fSArPSAiIGxpYnNxbGl0ZTMuc28oKSg2NGJpdCnigJ0NCg0KRG9lcyB0aGlzIHJlY2lwZSBjb250
YWluIHByZWNvbXBpbGVkIGJpbmFyaWVzPw0KDQpSb3NzDQoNCg==

