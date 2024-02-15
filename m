Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55EBC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 16:49:38 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.128])
 by mx.groups.io with SMTP id smtpd.web11.19048.1708015772013781624
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 08:49:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=AATlqICY;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.128, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bl2ahTSjRv8OxJ6JzFVqZP4X8jbBWsgfK8prFTtH+lR2vbwNM44YiHj6HLduDt+UaxVWXekaTXWtLUin6Efg80OdlFcVvUlqfWiwlVfkds8z2RxaxjWLV9E8dxx7EsyIEum+0gQDuyC6obosxqJI3zk08WwSKdjRFmIybv1xUFHQ4qD89gdo7mwuVKN3Qit2ezVDDIjtl6IxVppxTkjGSFxXW93XWRa/1xT+SGPangSMBP1dT3oTOlC+qrxiFvjiWWJr3ygF0rzxqmMPugfx5essV5mcgVXmgJscTTkgOBypFVkyLRkAIW2/rGg5vRz5O9XzYpNtYYoSCVMtCWHrGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3jfgUaOJT5EsZvd2fsXmrS1n4LDmi3cE8eNqp2KuEA=;
 b=DwF5cmHvutKJwn4AR7RE+OMD3nsbNWszek1TpHnEw4yVpqRjJuMteWVN7WErZ2oa22lK7U5ytyC1PMeBkbP+QIzGgTaecECMc/ZPKJiSh2w/SWEJi2352GMIZxXYSwjx602nZsgM0f5gsgoui1NYaoQdpxn0wCBRXyV9Of+YTSoXiLwPsKIgXhqGZTxHqT6DiEw0KHO4Uti8u/QivXlyMNtioTfniJ/j3ht1HCByAph5Qc9hevyzcK325AX2jirSgLUaDBFxGW7P8dcAyF5DOaIG6uOb2Ky7u/ATIDP4tRE5u7LLdRlLkrE0lwrwLmj0+BobQqaTTT3a3fZfw1WjDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3jfgUaOJT5EsZvd2fsXmrS1n4LDmi3cE8eNqp2KuEA=;
 b=AATlqICYz48TdLGfvEiAGbyNk7KpkK78ZYW7LMLFyabHmfgrBVhXErbzngNaN2sPHD4d81IyXDZXMMA48qAMHKJM6KmhyS36JQympAY5YyNVg4HmA6RCRDxXwDnCAEX4YWde1GHUVbrRFsRboZ4MmiGd5BcTFRfUfyVdVIy7kh9KaB0O9CbZRrcZ5LPFfN/Q/TKWtmu8NAKeqgIXT7ISkceL70/xh/U5hRM0IwnJLyAxBD23GSx/inJUyDm+8Fjve3jZykrEViLYo5R7YNuKdvw32BDCZw4gGzNg54QarB4i23wCJaTWzokK7qKm1d/gHc6LLsDkUqsgEv88yuB90g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBAPR04MB7334.eurprd04.prod.outlook.com (2603:10a6:10:1aa::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.44; Thu, 15 Feb
 2024 16:49:29 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Thu, 15 Feb 2024
 16:49:29 +0000
Message-ID: <b93c3036-00bb-4836-9e09-a9d517c51d69@theobroma-systems.com>
Date: Thu, 15 Feb 2024 17:49:26 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 1/4] rockchip.wks: specify fstype
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240212202342.37778-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240212202342.37778-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0085.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBAPR04MB7334:EE_
X-MS-Office365-Filtering-Correlation-Id: e7eacdb2-e863-43ab-1e04-08dc2e46137b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bgQpU95HxN0XKJQijPRRNzsUeVIGX+/64j9ZWxh4ip+Ub3Sgqo0F0LQlqV+hUMuMuSu6ohFKthiAxhgYyg69AYtbwua5WNMoHufD9CxPukW7rALQTU8EuADm0X1Km5fDs6fHrUJ97wtnohCnHn7OK13+k6acDaSYVywr9qvIGGthgpwC09qwngt83/kVHNjVu/2a8z02hfpcDdGEqiSDYzZBST9LFLbZC/q07LLLZw8q5Xf9WO3ynua6ajrGoXPd1XSFFt68Ucf9AXCkBWA/jHksFi6+9pg2I5EqshuUWeWwEVsrke7ujKAw82P19d9oIQlXajy1k/ZjdkpKXBWzW1Z+mXLkWUkWoE6q9eP3t/O7TBS+f/itKX5r1IaXK+L+1Y9tttWVHZsuhJl/m0j/e76mktxsr+uniSZ4P769PRUzYM9naAoD2ZQNnDPvSzp4E2Pt7Jlu0/V0/TNpPVoCZEmaif5OUpPfcqO0ipuWIqE+KvpwFk+9K3eeKzClnfaac74TfAq9dAFGUNvpKhSgBFY84GBgXJVIjAg1rckiP8GUBC6YUrijMxx/hoW+LmRH
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39840400004)(376002)(346002)(136003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6486002)(6666004)(31686004)(6512007)(478600001)(41300700001)(4744005)(5660300002)(2906002)(44832011)(8676002)(8936002)(53546011)(6506007)(316002)(66556008)(66946007)(66476007)(83380400001)(2616005)(86362001)(31696002)(36756003)(38100700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MmEwOW5xY2hTRHJQeCtoNHgwdXhEaStNVVJWWjZsbkJkekVyZk15RVZqb3Jv?=
 =?utf-8?B?bjNnVVM3MlRKWW1XREJpdkRRd3V0S1hlRnJCSzVFQUxsTU9CVkpCMkJzSkFt?=
 =?utf-8?B?N0dscC9PRldja2tnbWpSWEpDN2lRTU9Xbzl2b0NaeWtucUtGdnFaVlJnVDhR?=
 =?utf-8?B?WldkSXhyOXo3M0JUUS83dVBVbzhJcGJjT3diK3NCMHh3Q25FR1BBZHNuZm9i?=
 =?utf-8?B?OUhoMloyem5WZXorcm9xbWpobEkwMFVtUVlwaTVjcTc4RGkwWnNDUEhpaVVB?=
 =?utf-8?B?YkpmZWNWSkZ4WExVd3RETkdtakphRW5mTHdxUmw1azdHN2JGSll5eDMxeVlL?=
 =?utf-8?B?cldJQ2dPVi9YbjBhVmRId2RhdWp1YU1BOGhlcEtGNEd3MlZxclhzSEYxVS9I?=
 =?utf-8?B?NzNCWVBMYUlaTlNDMUpKU0xWRWo0OFIvTUtNN3d1QnltbVJhSUpSNkEycnU4?=
 =?utf-8?B?UGY1SDYrK3Q4eUFYT09oR2M3TDU4M2hJVWFXNFpsWnEyczN5MzdOWHhoQUpY?=
 =?utf-8?B?V1VONjRTQXVhRU1wd3dSbnNsUEZCYllSZk90dTVmN1ZxZFJYMGJuWVBnTXhv?=
 =?utf-8?B?MVdqcUs2VG44OXBGTHNCT2RCRTBNN2d3V1lQRHVsZUxsRmJ1WFdtZ1FMRlN6?=
 =?utf-8?B?cHova0ZaYTdLZHNMMDRtbXN3QURFcmxuYkZ5bVhQOVU2MW85UElsTWNOVGg4?=
 =?utf-8?B?eXBEWUlnQkdnS3JGemlla01Pd0RycnpvZ3MvRjNWd25VMEZFUjMya0cvT1VM?=
 =?utf-8?B?M0QxV0RKSnFDellqSC9VUmxkbUMycWwzVkJxbjBWTVlvcUZFdUhQdGpONG9B?=
 =?utf-8?B?bDlBYUxCWlNBYjRqOHRoL2FSbTVFUmxhZXJXS09mc1hHQm84MzNHMGJaaFRX?=
 =?utf-8?B?RDJxcDM4a2tuZHV3TktwRXdSdWcxcE5zSGdHeWx4WTUyK3kzWm9OamNkWWRV?=
 =?utf-8?B?SjFvaDBOaHdiRjFsakUwb0VZTUNJWDNMY1BoaVZBTldsUk1KVUprYWtVUGVY?=
 =?utf-8?B?SGtkdFIzcmxWWjUySy9jL2x6U3Jua2JHQXBIYmthaFREazF1YXRSZU5CWGls?=
 =?utf-8?B?Q2RORVVCRTVtKzRlUSs2VDN2QWpQQnhGSmt3YmtoRU0xaGtuQzRjck9DdUVk?=
 =?utf-8?B?WG45bHd4SlRBZ3VtUlIyZW01Mm9ZcHNqNUsvbzF6NWlQN2dEdVNDOW1Oby80?=
 =?utf-8?B?b2tEdGxVU2pTL0p3ZnlsVzIzU0lRRys0MU42RWRpTkJUSWJhSjJPaWNGem83?=
 =?utf-8?B?S0dyZ1c3YjNkMGdISWZlaEdGV1lrbmpWL2dya0tCWkQ0K3A0bFNwaHh3QzEz?=
 =?utf-8?B?cTYwdlZXamFrWTZGVy85RzRFcXY0M3R5aVl3U0l2R04wNGljWmhsa1NQeTE5?=
 =?utf-8?B?TjJoZE1pNU5CazE1bFdXYm4rOHVzR0ZMTTJNK3lNZ3ZReTIwSlA5T2dzMzFp?=
 =?utf-8?B?ejR6NFNoOWdYUllxL3VYdGYySEwxRm1CRFlDeFhWZlk2eFo4b1JoTFZHWmE4?=
 =?utf-8?B?WVVGNjdpRDNvek5MRjNYNFFEQXJZeWtkcitMY2dLL0hIMVFKeWs5ajcyeXZW?=
 =?utf-8?B?OTdzV3NZNFRqSVJJYURBRXl2RzJrNHJLL3FQc3RlZE8vUzgvSTNlUWJMc3dF?=
 =?utf-8?B?YVJ5TUhRZ0poRDY3TU1nTDJYYmRKQ3gwVGNwamVxWmdUMXNpVWN1cnlJTFNS?=
 =?utf-8?B?bGlsSjdzMFhVWGdMQkhOOUpRejBuTFQzeUhrQ1cvMVpYZGpzVy9LaFRmZmo4?=
 =?utf-8?B?bHdNWXRGbnRWMWp3S1loSzAxZUJHVHcwSUlVM0xka1hIM3ZRd3B0Umtkd0lE?=
 =?utf-8?B?cEVCcGpUT2huVlJOUjl5Tm1lbVlwcjJYdFpYd3ovVlZlNjBwd1Mxamp2RVY0?=
 =?utf-8?B?dlo5eE5vYnRxSGhSSGFtbjg3NG9aR3JDLy9tVi8zZ1luQTFxSUhzSFhSWmQv?=
 =?utf-8?B?dFc5S0xlSi9BUUtyYnljejFsOTh2SHZ0bTZ5VWdQby96bFF1RE8vWUkvWGdU?=
 =?utf-8?B?SEwvL0hwTG94THdaWmM5ZDVNamtuRlJvbXIySktNT0lEQnllRzBqTEpIbzZa?=
 =?utf-8?B?eTAzQlF6TlAxTU1ZbGxEdTdJSEJ2emhmMXdxTklFOWJpUW83eE9FeU9jWTU2?=
 =?utf-8?B?V0hUeSsvMVNjSU0vWktnTEliMkhYNVlxZDVIbEJQMGRvdDM1WEpwS1duNmRy?=
 =?utf-8?B?WDZBckI1SkFvMVZJcjVaR0NaZG50L1hady95MzQ2SmdvMmFmelFiUHNrL1Mw?=
 =?utf-8?B?TDV3bFFxTUlHbjkwMFBDTTd3bmxRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7eacdb2-e863-43ab-1e04-08dc2e46137b
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 16:49:29.1842
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WARsbatIZd56cwZk5OpvHOeHWhHnMRvvGYwTm0X6f/Iex7ADU4pZKxg+8UFlIxrVz9C1/YNQTu2zxzvcX2tVScI4JsgSY+bPIILWEPjh5gVbo97lVDHMzvP5aQ4WoK2/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7334
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 16:49:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62495

Hi Trevor,

On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> If the wks file doesn't specify, the fstype is assumed to be vfat. Most of
> the partitions in the Rockchip layout don't have filesystems. Implicitly
> setting the fstype to vfat causes wic to format the partitions. Also,
> it doesn't make sense to format the rawcopy partitions as vfat, just to
> immediately overwrite them with binaries.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Makes sense,

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

Thanks,
Quentin

