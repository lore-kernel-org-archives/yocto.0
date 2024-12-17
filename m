Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE7C7E77184
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 14:30:48 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.66])
 by mx.groups.io with SMTP id smtpd.web10.82683.1734445844657495079
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 06:30:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=CaP4Qqdo;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=CaP4Qqdo;
 spf=pass (domain: arm.com, ip: 40.107.105.66, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=GW3BBvyASlYoZk0gQIhftcp13PZzp1Dttq1pcBvp8cpbztG+magK+DMmB1dN3wJc67bhFasA04Dp4zI/MCTdSa3zozLvIsZ0gW8FGbOVzlJTg91t9ozgjzUSS6Du/moSlgPwGa5MxSUWwdgCMSfm/4tYlsEt6IhJ7K8oY4UfFsgLXWvrxxummJFRsR9F8aPxUvANyjy02eaK23yoEjgkNx7MXFfssk0TirYeVNV+j/lln9SgT0zeU+M7T+D/PFSWrzYhabH8ZtPSq2sRzks4BfSkL/S7cT8kxqthXjTC84DTl0kRq64etcXlF9HsOegtzZSNYMeE76OQBQ1x7trC2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v/9sdiuOBH4x3xkPKRaoVkIjUADNvGGt3bAtTPt9InI=;
 b=nQeXxQdt+jPXJ06zQzwn6Ba2ln62x0FBqCgIvKiyzrpmQyNaicPIKgerLbNd+dpkWJek9vaGm3fo90LEMao2fBZzeyylS0OD1ybYj+kaIbdjDEclPXJKJ6oWmHhJxXdtKNR7iPpm//nXonGM/04u7FEEeBhkhrLsGxjVjUNzk5arTwuBtUet3SccO97e45xQurOszN+YzYPKKDBvSyJkP2imTLRzK4OczZOMhOTturlOr0+ovo43jweMRrzuWsuRW9hWHgC5yGqdD88EIRGGowE5pKuph/kwjTVQxeQy8u/RnlLdjP0Q1qpldDUsL5NkJiiCc8LSDfCAsP2M2RDnXA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/9sdiuOBH4x3xkPKRaoVkIjUADNvGGt3bAtTPt9InI=;
 b=CaP4QqdopdOELneiKWuUblddmbOMrFX0qD3x/2iMRw4O/Va+0rRUNvzi1quVpC4x2NDHaOwTFSjuaitXHaeVcFREGtapV+9JRmpKsGpXy3kPYe5+LuRELmssB+1nzAJiHo3ebTfm5n/9k/anvyK3MSvVWcEgPl6UGMmcg4aTVe4=
Received: from DB6PR0301CA0068.eurprd03.prod.outlook.com (2603:10a6:6:30::15)
 by DU0PR08MB8905.eurprd08.prod.outlook.com (2603:10a6:10:47d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 14:30:40 +0000
Received: from DB1PEPF000509F7.eurprd02.prod.outlook.com
 (2603:10a6:6:30:cafe::44) by DB6PR0301CA0068.outlook.office365.com
 (2603:10a6:6:30::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.22 via Frontend Transport; Tue,
 17 Dec 2024 14:30:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509F7.mail.protection.outlook.com (10.167.242.153) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8251.15
 via Frontend Transport; Tue, 17 Dec 2024 14:30:40 +0000
Received: ("Tessian outbound 867970499bdc:v528"); Tue, 17 Dec 2024 14:30:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fb184e422ee5f775
X-TessianGatewayMetadata: jGJ6pUGWV2dspagK4ubJgWOrb+B2INzEu6hcp65GfFS5SjLbEZSB1hExGsD8n4ihFqX/cDlav9PY/S+g+wSppQd/9IP1zXh2cSIyo96yS/M3l2u3c+/LnBLIX8emNlAS/wuawXx3UFl2q/dJY0L8hyu90ulHMosUtNvnKmI5QK4=
X-CR-MTA-TID: 64aa7808
Received: from L9171558477bc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 66F5E83F-46C1-4639-A495-B0BD2F77917A.1;
	Tue, 17 Dec 2024 14:30:33 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L9171558477bc.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 17 Dec 2024 14:30:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XVVsu+Z9Oqxhmi/Q3dwCrGQoJKEDWgAJFP3HdGqpSGBvdsbmCIenKAUjo9F1P0DNlZu096ZQFw/6hpxZv8qbHSy/QVv+zJo7Zqnigfh/Sj04PFxJVlAh7VhijxAcId0i3wYvOUiad2yhLbrkSQkMsDT/ZK1yRdwso8mH1N8+Ci8iUn9ZvhScmxr2XFNjGutRjeJxWxDST66H71Aw0fRL/YH7vySt7NV3+clpGbJz0Z2MdS6xvboBrOOOSSRHzy22CxQkYtIqnQrHi7l2VMZSv4zUeJf3fEE7pHXYvQHXtUHHfUWxJVAW+G7WkdQ/fHvLzXav6xKwn1qGBvnrcM07CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v/9sdiuOBH4x3xkPKRaoVkIjUADNvGGt3bAtTPt9InI=;
 b=yaMWqJjbhGBrE/pwTIfj7l4Vafa4X0TGXHFe8oNIYb/eKqFdwbPLC38FXG9vP47rfehy1yJlexfGiDrQMqR7hKR7znc26OejOxFB3LUvvW8HL2NmRj45FN+1sMemFWuuTkju1DxZN8lhJJJsMuILN6ExRCbRRHjPknRJcrOq/56wd1AzV9MCbr3Pax9oUqlqaKnA1VvM1Cnor1YCd/jzMjKBvhBPKx5VP9kk0nYxCakRWyqolKBcOimCJsOD889NLVI9p4z/WqVwU3jiRAfE3ra34IMqsvbJbqTWzr9rKl2W3ChusnP/KcW4f0Eem0h4swWa90vw/Kk6pRKJ7qbQhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v/9sdiuOBH4x3xkPKRaoVkIjUADNvGGt3bAtTPt9InI=;
 b=CaP4QqdopdOELneiKWuUblddmbOMrFX0qD3x/2iMRw4O/Va+0rRUNvzi1quVpC4x2NDHaOwTFSjuaitXHaeVcFREGtapV+9JRmpKsGpXy3kPYe5+LuRELmssB+1nzAJiHo3ebTfm5n/9k/anvyK3MSvVWcEgPl6UGMmcg4aTVe4=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by AS2PR08MB8430.eurprd08.prod.outlook.com (2603:10a6:20b:559::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.22; Tue, 17 Dec
 2024 14:30:29 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8db5:7772:a426:2afe%5]) with mapi id 15.20.8272.005; Tue, 17 Dec 2024
 14:30:29 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "kontakt@daniel-kampert.de" <kontakt@daniel-kampert.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building wmbusmeters with Yocto
Thread-Topic: [yocto] Building wmbusmeters with Yocto
Thread-Index: AQHbUHvbTRU8NGlkjEu4vPDQCK9/OrLqb7KAgAAOTwCAAAFrAA==
Date: Tue, 17 Dec 2024 14:30:29 +0000
Message-ID: <3C6BEA80-6503-4E8E-80FB-8F134E8EB9D9@arm.com>
References: <00D01491-DA14-4808-93F5-E08DD1E55F95@arm.com>
 <13203.1734445514336837198@lists.yoctoproject.org>
In-Reply-To: <13203.1734445514336837198@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.200.121)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|AS2PR08MB8430:EE_|DB1PEPF000509F7:EE_|DU0PR08MB8905:EE_
X-MS-Office365-Filtering-Correlation-Id: 8649cb80-8f07-4565-b0c8-08dd1ea76193
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UytMWFJMYjNkN3J4OHRJOU1udWpPTzhsejQ5MDQ5ZTdLR3lBa1JvMUphRmJy?=
 =?utf-8?B?OHltOGgwbkZGYUt3M2ZmdDZ3OVl5VHdUSXBFVkw3Y3A0Z29WODRKSURzL09L?=
 =?utf-8?B?ZTNYT2RTY0VTd1ZjWVZwLzlkQjdaVXNuOGNza0tPWnZYRUlQbDNWQ0YvaWpn?=
 =?utf-8?B?TkJoQnkxMjQ3aEhwak50YmtUbk1sblpxTWtXcGk1M2ZLdDdNYWZKbWNjbWF2?=
 =?utf-8?B?MHlyMk1keUFDNHNEMzlrempoZW9yNEhCNXJoYlU1V2hTYm0rWEQ2Mk50Q2hI?=
 =?utf-8?B?bDMyME00YTlMekdsOXFzLytGVlNaWGwrZVdVeUlsZzlQcUoza2VNWi9QUzlT?=
 =?utf-8?B?SXUrMGpZN1FZYjVvaUF3NEdJQTNLVnpVU2p3MUtpTXRhSEorUHFCWlBOQVNu?=
 =?utf-8?B?cWE0OEFqMGNBUGdMdHhWVXBmWjdQMnIwbzFHVjVNTGRTTC90K3hBRW1tYyto?=
 =?utf-8?B?ZC83VFBKc0pWUGhwRkx2RjBjOVVHWnZOaG1hNGNCMGpGeXVBN0NFdGl6dVE0?=
 =?utf-8?B?bERwL2VNOHBSdUsvaURvenRaNWhuRWdlcDlNeUUxdUpibURhclNOQmNNOE9Z?=
 =?utf-8?B?WEh3SXFOUUVGY2Ixc1IrRXdScjZWSXhZTzBHR2pUNUlhVlFSZlRROWVvV2dQ?=
 =?utf-8?B?dWJDR0V2UU1VVUZaZU5lVVFySWErNEc5d3JMMFRMdmxJWnVacXdTQzJ4SVU0?=
 =?utf-8?B?ODlVQTAwYlVXbTBubVk5SzJUM3A1SnpybUQzKzdmbU82V1RqTEx1TXpMVnVO?=
 =?utf-8?B?T3J0NkFQcXU3dngra3JwK2RDcWZKWE91WG9yS1g3eFZqNTRqMWR5NUhJb0pn?=
 =?utf-8?B?L1BRazlhOFpHeUxrVmZ2U3RnQ3JBRlV6S00yVG0vakFwRVl2Mnh5d1JBNSt2?=
 =?utf-8?B?MmZid2RpUURNL1duZ1hveEJ0TExmNEZDRkVyMnVIUXVPN0szWEF3WTYyY0Fr?=
 =?utf-8?B?MENnby9DcEVTRkRaaFN0eG9lQXlhMnJHRmxBMmZ6Mm1pRlhSZzZnV05jdzNM?=
 =?utf-8?B?VXJRYWRPUFdISTN2NmVtZ09kc1U4L2w4a0dEb1JqK3BHemJxazBxbVBJWFpO?=
 =?utf-8?B?R3VnbDdZb3FwN3ZkUmxQdEd0cElDZldXMkN5bWp6VlVoK3RyUEk1ZGY2eGRv?=
 =?utf-8?B?Nko0cnZ2d2dyMWwxQkR0R3MyeFF0cXNOcGo0R1JvTC9vaGpRV2ptVG5FYUM4?=
 =?utf-8?B?VUUrRjRiOTZPa1FoajlCaTNpZTFKZlEwR05yM0ZWWkZuNDU0R0tzcjUwcXg5?=
 =?utf-8?B?Ty9wL0JmL3MzK1JuYUY1L3RtWjg5bFdaMXU5cWlwM3JpOXJLSVdnTG0yczBG?=
 =?utf-8?B?MWJ6VERlc2w2YzZHOWFRM1NVM3ZoVHJHYVdrU245UzdBdkpNdW5BSUVNZWRK?=
 =?utf-8?B?YUdlNFgrdnc4N0d2bXJaSzRqcjBJcEtoY1VpU25sREIrQ0ZEQkw2czVwSVFV?=
 =?utf-8?B?dTNFUGpxaWpCVmhPclRVSWhkUEcrVGZpdmlneTRuUS9qaysvM0NjNU1ONUFP?=
 =?utf-8?B?cGE3MFdiOE1qbmFKdis5c2ZISDVacVhHQTRBNXpnZ09jcDBnZTZxbVZsSk56?=
 =?utf-8?B?cytkdzRDNHd1a0JlaEhrVzZqNU5hcTJPK0N3T2wxbzNGS0phQ05Md0FXRHFL?=
 =?utf-8?B?Z3ZUZUgyQlFMaDZwQ1psWUNyR051dmJIcFFIRE5WYkRoeFZja0ZHWm5EUHVq?=
 =?utf-8?B?bVp3eVVuNHQrcjdzQzhFZjFlSU9SZE1Yb0Fiek10SUY3TGdIaGhVaGZLaVJ6?=
 =?utf-8?B?RjhrRVFsMCtFUlExUkxZcHlQTG0yNkcraW1iZzhPYTV3bmtWam1ycm9uQ0FG?=
 =?utf-8?B?aFFwc2lnWEJMRVpQN05vWlBXUnVIcG1VVjB4cVovUU5xM3RDOHovcUU1UXBO?=
 =?utf-8?B?WWM2Q2VPK1hqSTF2aGhKelBVb0hjdjlMa1BzdkJPd0laUlRNR3pSQk5UeWVH?=
 =?utf-8?Q?zbRgXdQ3BMOAPqODfcAduDEGKQG1rzDB?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <DF9F76502096B1409DCF07AAE960104A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8430
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:20b:4e1::9];domain=AS4PR08MB7429.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509F7.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e197505e-7286-4252-65ae-08dd1ea75b15
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|35042699022|14060799003|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WmhVc1JJUHo5dTJscWZIckhBdUNGamg5SEpYZWNEcmU1WVlNK0FVYjlrUTZG?=
 =?utf-8?B?dER3TEozdnpjTE95aldVU3BvODZVV0s2ZisxaFVxM3hXdVY2MDN5N080RzZI?=
 =?utf-8?B?S3p4TnhSRG1vNVhvTDRRdERoQ01XZGV2bXJWWkdxZDM1WkdpaDhtR015YUo4?=
 =?utf-8?B?UVdmVlBrZXdhb3FaM2dYS1VpekxEcElzK1g1cXN5dGUvRlZ1MHR0Q1ZLMEo1?=
 =?utf-8?B?enJ5YWkwUXdIdSt1VzIxeUJlZEJwSUIwZ3llWThtaWwyNWdsMGRsSlBPOEtp?=
 =?utf-8?B?bkR6Z09hN01BZEFWS3NXVDA3QnZTUlpjMExiMVd4V2JFMVB1R1dzK01XN0Ev?=
 =?utf-8?B?UWJsL1ZHNEZScmVIaXc5Rk9reW5zZllKaEJoRUFkRDU5U2lUUHpKNWIzdXNT?=
 =?utf-8?B?UEp6RXdYVndpNG9pYWM0alR6NzNmMk1NWGh6c2ViUnE2bThSRVJ0a3lvMHA4?=
 =?utf-8?B?ckJTenlPdmVSMExDUUg4eXJzZ25xVTgrdkh3K1JDaUkwVXlZOVlVMmpIL0hv?=
 =?utf-8?B?QWt6UGIxU3J2UTlaWVZxS3pwQSs0b3lMM2FOY2I4TWt2aUdRajZUamhUb2dD?=
 =?utf-8?B?eC9RYlBOWUhtdUlCR1ZkaWliVG82SGJ0d3lVeGlDaWU1Y1NrRldTWmY4cHpw?=
 =?utf-8?B?QTdUbitoU0l5OU1tVG1OOXBwL1Z0Wk55Tzl1WGFsc0F6cHUwbUI3Z1ZyNWF1?=
 =?utf-8?B?TkZxbGZwMW9KUmt0R3hVQkZuQWJTZVZuS1lpUDJtMDlTRzFhUUgzak8yRDBR?=
 =?utf-8?B?VDdhT0swWGRLanFIQUxZbFpENHVHamFta0tjdnpqNjdQM21rWm4rLzZTOGov?=
 =?utf-8?B?ZHdLSXJkOXgya3AyY25STDNrOUI0dklvZW53SUFZUXJPdGdLTXBsejVkRXZX?=
 =?utf-8?B?UW43cVVWakpMelVHK0sxMElxL283ekt3Zy9rRjFyL0VHdStDb0RqZktpNnUw?=
 =?utf-8?B?WnRzaGFiWnIxYW1vUW83bEtrYzBSWTlhcWt0YmxuYVFCUHhEVWNFL3g5RFhU?=
 =?utf-8?B?ZVhsVExFL0lnNjdjMzczLy9RNmoybnp4ejhNU3FSSkVYNFRERmhvYTJEMFh2?=
 =?utf-8?B?bjRDNzlXcVhvcHRqYm03WmROQ3R0L3c2YVdlNUwvYU0rWnlJdTA0Y0VqU2gr?=
 =?utf-8?B?WWYrODdic3hzK1JObzZsQXJOWmZHb05SM3FaZExCZEhybmwzNDNIZDRoQitV?=
 =?utf-8?B?eUtMb29QK2lsQ3dNVHplY3lhdTZBVThqK0RGbzB6bE5OdC9pWWFJdy81R2dT?=
 =?utf-8?B?QTNFczhVUW1jcWx1RlY4UFdXTmdJZi8yQ04xUjJySU9mR3d5M0pGVHhBQkN1?=
 =?utf-8?B?WGF5cklOV3hGVG1zYU1EdHdBNWdzMjF5d2xiTElHenJVRU54aUwrQVJPTDFl?=
 =?utf-8?B?UEVZUytIY2pEalhFMjhubUw4Y0RUUEFuVHBtKzl2dG8yeGNIU0FCQTh0ZHF1?=
 =?utf-8?B?citHcXRsRmdCUFc4Y3hLdnlUKzRpK1daSjNmeDc5NkQzajVCQWhXN0lYOG04?=
 =?utf-8?B?azBTVzBRT3V1Q0dyOElyQldmTWJjL1UxV3I4dVd3N09hTXJsaXFydXBDRTdL?=
 =?utf-8?B?eHRuRloyM1FjakNtMkxYQ2t0azNtTnJpa2ozTEtUUjRhQ2IxQnc4VG5wbE5s?=
 =?utf-8?B?Tzg3RzM5OVI4cU5OdFkxTnZkQnNoNUk5bjFSOS9xMkR6dWNzTzNlM05uQ2Fo?=
 =?utf-8?B?aDNjUGFKQ1Z3eHFJeGhZN29XYVF0UTZta2tvWk9nY0gyQXBzWlpNbkc2Q0pp?=
 =?utf-8?B?eE81SGlhb1ZKbjI4cThqRXFjY3RGRTJoejZISGwzMXJYNGlPUVh2T1QxQzNT?=
 =?utf-8?B?TlNzNDZoak1LeHdISkVDQmYwd3BVNFpHcTBjZkkwS0ZDYjhmN3E5Q21RWTJJ?=
 =?utf-8?B?WGxjREI1MHl0LzdjZS9zNWMvNjZnSlRlcnI3OWFiQVUxN1dGcGFPSTRnQ2F5?=
 =?utf-8?B?NCtjQStGZG5CbWZ5U3dQRUIwWGswS1lSLy9XeUpVd0ZiWWxuVTNFQXVHUDZB?=
 =?utf-8?Q?rigZxSDlh6Jneg++g+55dihnTZm4Pw=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(35042699022)(14060799003)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 14:30:40.1606
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8649cb80-8f07-4565-b0c8-08dd1ea76193
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509F7.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8905
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 14:30:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64460

T24gMTcgRGVjIDIwMjQsIGF0IDE0OjI1LCBEYW5pZWwgS2FtcGVydCB2aWEgTGlzdHMuWW9jdG9w
cm9qZWN0Lk9yZyA8a29udGFrdD1kYW5pZWwta2FtcGVydC5kZUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+ICBRQSBJc3N1ZTogRmlsZSAnL3Vzci9iaW4vd21idXNtZXRlcnMn
IGZyb20gd21idXNtZXRlcnMgd2FzIGFscmVhZHkgc3RyaXBwZWQsIHRoaXMgd2lsbCBwcmV2ZW50
IGZ1dHVyZSBkZWJ1Z2dpbmchIA0KDQpJ4oCZbGwgc3BhcmUgeW91IG15IHJhbnQgYWJvdXQgaG93
IGhhbmQtd3JpdHRlbiBNYWtlZmlsZXMgYXJlIGEgcGFpbiBmb3IgZXZlcnlvbmUgaW52b2x2ZWTi
gKYNCg0KVGhlIG1lc3NhZ2UgaXMgaG9wZWZ1bGx5IGRlc2NyaXB0aXZlOiB0aGUgYmluYXJ5IHdt
YnVzbWV0ZXJzIGlzIGFscmVhZHkgc3RyaXBwZWQsIHNvIHdlIGNhbuKAmXQgZXh0cmFjdCBkZWJ1
ZyBzeW1ib2xzLg0KDQpMb29raW5nIGF0IHRoZSBNYWtlZmlsZSB3ZSBzZWUgU1RSSVA/PXN0cmlw
LCBzbyB3ZSBjYW4gbnVrZSB0aGF0IGJ5IGFkZGluZyB0aGlzIHRvIHRoZSByZWNpcGUgc28gdGhh
dCB3aGVuIHRoZSBNYWtlZmlsZSB0aGlua3MgaXQgaXMgc3RyaXBwaW5nLCBpdOKAmXMgYWN0dWFs
bHkganVzdCBydW5uaW5nIOKAmXRydWXigJk6DQoNCkVYVFJBX09FTUFLRSArPSDigJxTVFJJUD10
cnVl4oCdDQoNClJvc3M=

