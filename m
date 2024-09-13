Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB73FA372C
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 08:11:19 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.72])
 by mx.groups.io with SMTP id smtpd.web10.68712.1726215078119471175
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Sep 2024 01:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Sn96L1Y/;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Sn96L1Y/;
 spf=pass (domain: arm.com, ip: 40.107.105.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=WVcdQfSDdOBt+NZL1OK0AIL2rhKgJfVFOcEDYqbjhXthsjCceu6aL10ni6TaJ1xOhc8Aqaf8gYDP8eQSc297i1KNT+Hb2r9obpIPHKXaWaZ6O0FYlUnhiMCnWTCLVPe4GwbHoVDEQD8Lr6iHNt3PbwsKv6D7k/EiO943Lam6LnxOZG0dLAtotRF0Sjsw5/bGO3kjkLuNUFN7AwXkrxudVpXuPfS4ygjYWpETFGwebO+tU97m82XUfzM/4XuQRG06vTcT4CMJ3knfpphQpYN1nWLc3DAdTC8pa1ECJuKf09uLdskUnOAIcYAxhWUzGXji/V/Dw06ttwgaozHGnWpRhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UbruQYzIurfLMp12l8+kDvmcjVfJVbuY02w6JLhhWwE=;
 b=hXqMwb3/JuNROBtV45PDpWXU4s92BSo/zUIhXdbYlsRolE51INVq2KGi8LIdFrdv2p7/+uG+e5ACU/v3DhAEdxsiMa6AFt5AbEWpJS7CzA/3gf820xhYykpFXZaAWhmob2f9ezobtzTur558/dHTqt+Zx3IJZv/KzN+Af40Paw8EsUzX9yQeyvhwcmGjxOv1YiJhyAraw0sujNQ0Iv840dQ4vpcrBKoIX30h/QaYaax2OlzJtZEE6XOfAKoETqCiQ9zl7cqzjmDKwOwJEPv3yr1xZt08nSdJR8TpzGE/jWU3Ziozf1jdGZk52Ou42Ua6KGsG9jjChT4WKa85sVHQcw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbruQYzIurfLMp12l8+kDvmcjVfJVbuY02w6JLhhWwE=;
 b=Sn96L1Y/bYQek7LbBXkwVicX99XBSldTs8pfSM5OhtAz48hTuyf36Kwwe6OFXuL0YUCNzN4BrbcmeGw3XDTCaYunRo2PerZq9dX9Hm6oKE4t0OFGDQLqhROc/oIFL0Uzza3L0CSbhi3hggnrl973rUthpz6QPLhMgMDwGL4e4OA=
Received: from AM8P251CA0021.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:21b::26)
 by PAXPR08MB7672.eurprd08.prod.outlook.com (2603:10a6:102:246::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Fri, 13 Sep
 2024 08:11:08 +0000
Received: from AMS1EPF00000045.eurprd04.prod.outlook.com
 (2603:10a6:20b:21b:cafe::9e) by AM8P251CA0021.outlook.office365.com
 (2603:10a6:20b:21b::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.27 via Frontend
 Transport; Fri, 13 Sep 2024 08:11:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000045.mail.protection.outlook.com (10.167.16.42) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7918.13
 via Frontend Transport; Fri, 13 Sep 2024 08:11:07 +0000
Received: ("Tessian outbound ee7a81b3b7b9:v441"); Fri, 13 Sep 2024 08:11:07 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5e305b047a2885ba
X-CR-MTA-TID: 64aa7808
Received: from Ld92c1068e0aa.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id D19893B3-2365-42B3-981B-01FBE4EF55D4.1;
	Fri, 13 Sep 2024 08:11:00 +0000
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Ld92c1068e0aa.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 13 Sep 2024 08:11:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehEwmVrSaxEjAX3pOmYFvYMUJFwN2tUCIYR+6ostps5PSOX/+KDQmCyEkXMlVOXG9WOUCuFeE2zAJUGaBINWHhIeTWBncFW3eyHV5JV1SY+J00MeyRH/RP0rXwJyaxFzpUwHA3HtY7jPc0YZCNuwvD52SXdc1BIR43mgnDRXrYvVGzNd3TTZr7yHv/8IwZq9HZJpiVRPT2wgdDWRBoEujLtrivA0eJmBan+9eAIhRnUaiJQQlGGBJZLti5U5a1sohBo3yCsR2n06yJCPILZFd3F2fnz1gIQW3flMxW3z0hNo+zDnfQiW0mXUwmxy08IaZi99/WPr6nXuWsdGEY3xZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UbruQYzIurfLMp12l8+kDvmcjVfJVbuY02w6JLhhWwE=;
 b=RvyEadaBNzrKH3WIMcLGQKPm3L7H3U/dkefsztDuuaNFNjRklGCp4tBQezxLwDa0xWgwfqQpWZdsi14qG4fC42Ei2ffsBZaCjUnCJpE4JgFElB17dkdilMT0dHNxtl8NPxHWfm8EuRlLdBLXLlhLCx1cSzTXTrCx197lsXwBtBZ936a5gYdlk3s4A6yKufRlRKGDfBN0+cwTG+xLm0lStJMQGhzx+L981mq2HFL/TBTNZgy9Y0MM0+IzM5qAtbJbnjduyTt74IgWIYHRuagKCwBbOMQnudocrx2/jVG/l01AG42jDa3eCaj+2mF8Q/bbWyp6mZ9IhCIrTXujhNQ7jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbruQYzIurfLMp12l8+kDvmcjVfJVbuY02w6JLhhWwE=;
 b=Sn96L1Y/bYQek7LbBXkwVicX99XBSldTs8pfSM5OhtAz48hTuyf36Kwwe6OFXuL0YUCNzN4BrbcmeGw3XDTCaYunRo2PerZq9dX9Hm6oKE4t0OFGDQLqhROc/oIFL0Uzza3L0CSbhi3hggnrl973rUthpz6QPLhMgMDwGL4e4OA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB3PR08MB9060.eurprd08.prod.outlook.com (2603:10a6:10:433::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.9; Fri, 13 Sep
 2024 08:10:58 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.7982.008; Fri, 13 Sep 2024
 08:10:58 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
CC: "jguittet.opensource@witekio.com" <jguittet.opensource@witekio.com>
Subject: Re: [yocto] Building systemd without udev
Thread-Topic: [yocto] Building systemd without udev
Thread-Index: AQHbBOfEVb4bJVEfo0GFM9es3F1SD7JVPpwAgAAgdIA=
Date: Fri, 13 Sep 2024 08:10:57 +0000
Message-ID: <E6AAA917-F12D-4C1B-ACAD-93E241BF6053@arm.com>
References: <xEMZ.1726127128546561215.WHcM@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.8bd678dc-5281-48f8-a8eb-d30cee183806@emailsignatures365.codetwo.com>
 <88a61b89-5c75-4d92-b0b1-962d6336bf28@topic.nl>
In-Reply-To: <88a61b89-5c75-4d92-b0b1-962d6336bf28@topic.nl>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB3PR08MB9060:EE_|AMS1EPF00000045:EE_|PAXPR08MB7672:EE_
X-MS-Office365-Filtering-Correlation-Id: 320ccc05-5fec-4d77-7047-08dcd3cb9ee0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?ZKwaNcDUizfhgNt28TTD5o0j3YIyI1KFZXZLI5ZyP24PCvbI02cSZW8g3RyT?=
 =?us-ascii?Q?48wnCGkp04xBM2tuhc4TvYYYqBWLgGLgeOiNXlacHafjiFj3ujRw88HTE2kU?=
 =?us-ascii?Q?k5Sf8Da5NwIp3xkb1IkBFKnwjd3n0Uuitomk4iXSxF2mUfUg5xIrLnWzQ7Jf?=
 =?us-ascii?Q?3nrYbNwMdfDuUEcFbX0+3J9CKopab+5kDgYzm0UHcvysirAmfeZUaQ6UfWCh?=
 =?us-ascii?Q?66OBDjAaGX2tOhwoydB3X6zTL+r+sWX8o0YaRuVhFpUJMQLVVxYy74OV2GLv?=
 =?us-ascii?Q?hnWh+tjEq2x8sTHJICfwaa7KVvv7XvYEuVJ54yImXGSinl0aDb8EE+9TIXXb?=
 =?us-ascii?Q?4OMzlEeK/4yebhJv+VvhiiyB/Scw9eRtEa+r5C72oXt6RqS6p82C8fLXzzW6?=
 =?us-ascii?Q?MczD8KE5dHxnxvZbeiGBP0tnbuTS4nwAMzpX8j7+6MkKEn4eh4HkNQ6MaohO?=
 =?us-ascii?Q?XeTYgledP37kORwDp7ekE3KWCyu9BwdO8KO68I6XMq90CqhWHOdgwWEijsyC?=
 =?us-ascii?Q?9btBpGEyfqyrj3fY125KaQg/staYqOhyu/qxCiQmxC/e939/g1aSlJfIJSdq?=
 =?us-ascii?Q?EG28ZyJd3o7njoWGig9aX7yvr2/8fYTxUrTsaVcEi8GFO3tFLvVlBhnD3g1u?=
 =?us-ascii?Q?vIddK/xXWXLcQto6lpvNKjiU4CgGan5z5weNc0vlA6MAweNARfwUWs2mIHB3?=
 =?us-ascii?Q?7fEu8Ng3d0KTm/XrN1bQ2fyeWned/kfXi5soKjSaJHihWTSFCEd/gxevwadG?=
 =?us-ascii?Q?csxRkpzjG1jc4imjbxNL/SyR4hPnPF0Ulw1g5OdZCU/DOEGR+WkwOdNSi43+?=
 =?us-ascii?Q?RSkEDQKSYMMEAzBkoOfNDcNA2qBDmSDgDrsHdKMq2KAbSTv47W99BfyhMy1B?=
 =?us-ascii?Q?nlTusaUHO+1XgrkMsI73d6GZRHs02e6U5ovYy2H0C+Tx5pme16O69W7hvB0d?=
 =?us-ascii?Q?mQymeJTZiGLvkmBipezb3YUeQRaXt8OBfx/XSXmLaoXF0S/K7PfQ/4Jl2Ay2?=
 =?us-ascii?Q?a26FqGRUkO9j4NOvYuKewh/LPLY5mZXCgFTfamZ0jn3Rt+U62DWvYi5ZbzYz?=
 =?us-ascii?Q?cr9B2bcmA4LPyDmFKPrjl0Xjy529iYzyy8J0AtlUfhOdnd7SJN636DvNvI3e?=
 =?us-ascii?Q?sHjqFBFP6q8pqgen8SAOnJu3jqR2okQKLN7pHJzdhvKIAIEQLF+IbpKT8oJz?=
 =?us-ascii?Q?QPOZFVBE6RWT/n/giUhM26HpcXvKCDGx/aVKgbxdZtYlpGgZgraSENbz0OOt?=
 =?us-ascii?Q?A0ux0UbWzwHzwDxuvHhbcIt7OQQ+3YbWSPL3UO/RgA2uYWuCfmoobEi6JTlc?=
 =?us-ascii?Q?nZvAvpO6b+2nqZY+NS9rWRyePm2wGxV6gl/s4ZFZKNS/Z6H/zuJKhg6fvnF2?=
 =?us-ascii?Q?4/SJZZJ3lL8Cy2Epxmix0u0UFnLh7f+4aHfPkGdE+jj4C6GGWg=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AC40E4E26502554D81D51AA9E116AB63@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB9060
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000045.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	678f64c2-7fe9-4065-2089-08dcd3cb9911
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|36860700013|35042699022|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?wD798jZAU+EtSrAIuSStIXghNTnK0TSKAU4PL9RCeSbVCf4zq7RfJSpqi4fA?=
 =?us-ascii?Q?XEjxh3joID/yKVX/ojN4DpdZUE0OrUjA+h4oDuaG6aankH30b8WqdVrz2x9m?=
 =?us-ascii?Q?F3QuXXgc39InjD8epTeKE8uNn7sZx5hqxb6Expp73SHwnc0CBQ0kRhNARiTc?=
 =?us-ascii?Q?KMgw+71m49Z4my62UtQYAn9a4GUgTIiC9vyFAQ4J00Ckc0KogLImGd4ZJmXE?=
 =?us-ascii?Q?YK5+q2QNu4t7CrxmqKVkwPQIj3qusCCu+byrXQP1gS4oehbk3jQGCG5xVZHz?=
 =?us-ascii?Q?m+duyw0v1iyvR6egCiO9w9nqW2GblGG+vy+7s6UgWE1v6iwxDlLmRW+67G3p?=
 =?us-ascii?Q?7j0yuAyL3wWsYEYBPJyyilEnSkyQTcQLp0STbZMBr+lRIW0+yUXW/kZQFuw4?=
 =?us-ascii?Q?KynA1O8KAmu8FVQkmuHYPQ5Y9dFLA/f1dAtzgSHRutpwJIk6B3xFiV1dL6b5?=
 =?us-ascii?Q?yLL4GRKdUhUNcgAWwjoOmUOddnke7sW9bZq9xawOtY1ukzH9iniASTj27ieB?=
 =?us-ascii?Q?tRtfN8afbdUuCJyKpkmX4DPj0zWWx7QF22brLyUrmb/eb/pZaxdun6Dp9zoy?=
 =?us-ascii?Q?4fEQQ3zb/cxU3F612TvCIpX2HTr6xJTqsTyfdUGdiAR9ottY/M9H81t9gA5r?=
 =?us-ascii?Q?PQk+x9qJLG1zBV+e7a7SalMqnrL9HwZUjNvLZRJriz6x7enzqsFOxrGnu3qn?=
 =?us-ascii?Q?Og+/FdbCFXa03LdxfCt9QeJRUJ+K72e+dV8A48/4b1uBQOkMsOq9ZiGwDEYv?=
 =?us-ascii?Q?8+Asb9x3rK/t7XCZECuOIR2OKiBd8HZf9Z3jg+mt+AtaCyO7Gl1ColoHSqfV?=
 =?us-ascii?Q?zQml+1jfBdsCiEOgK/cgh5zvfZf4FZflN11tyqXzE84oDKCa1beSZWbJQU/s?=
 =?us-ascii?Q?WZEYO6wnrVsKfb7+YKCv3lVcaa3bwp0tObD+kO1bfnL6cp79CcR5c7retWKP?=
 =?us-ascii?Q?VuXbFdDmEkLSbHmoHuexBDjJ1WOowUiNek/ZSCCyQRZ/ifffL6NB2RQ9FRa2?=
 =?us-ascii?Q?GSeT+fqVvxNNQq8KdZvkF6ZwCZpNVqXx7gJG+bW0YjhfmXmH7lSH61EmL5sF?=
 =?us-ascii?Q?KzPjE1E10daE3jl7vMU+M/Y3SlbhMShpUwJwX8cqQR9jazKCLBjPwebrA+55?=
 =?us-ascii?Q?r2iHYmlFY64KHK7j96t8RBkVkJyEUW49Q9tnWjOx4/pKDrgTsBtyrZXZSMls?=
 =?us-ascii?Q?Ar8x82XDOAM0dHZgUlJXlOiJ7QMenbVGVfk/fWpWpzhpPIn1gAmjuigATLz+?=
 =?us-ascii?Q?w/eCc8upysgCunczq3DxMy17FEql3PDu/x1H0u5J3lHuzm7dcyzBiY6ryYyK?=
 =?us-ascii?Q?w9/JntqotxN32vIkEArJxwWKf4PS4V3oQr3WJOZ/I20xTVM3kGHwNYl85K4C?=
 =?us-ascii?Q?loWYMuRczhUw/sngh4x3C/DLvScUBlVubeRRH5IIFpJd5P0lZ5FYrkvahPg/?=
 =?us-ascii?Q?UVPpm8VL9jHmzEwH6CZaZrf2/zo0SkiS?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(36860700013)(35042699022)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 08:11:07.6629
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 320ccc05-5fec-4d77-7047-08dcd3cb9ee0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000045.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7672
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Sep 2024 08:11:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63833

On 13 Sep 2024, at 07:14, Mike Looijmans via lists.yoctoproject.org <mike.l=
ooijmans=3Dtopic.nl@lists.yoctoproject.org> wrote:
>=20
> AFAIK udev is completely integrated into systemd, and cannot be removed.

udev is a separate package in the systemd recipe, so you could try changing=
 the RDEPENDS to RRECOMMENDS and not installing udev.

Ross=

