Return-Path: <alex.stewart@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64745C48260
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 18:15:26 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (NAM02-BN1-obe.outbound.protection.outlook.com [40.107.212.77])
 by mx.groups.io with SMTP id smtpd.web10.19140.1707848119292498853
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 10:15:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=selector1 header.b=jkr33o8O;
 spf=pass (domain: ni.com, ip: 40.107.212.77, mailfrom: alex.stewart@ni.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQ6hmK3EBsxWhRt36sLqzhqZ3iMGmkDnWY78fpZuGUl04uLtuXIshXr7Xv7V1lnPBvdGWY0cW86Ee9JZKeziNyvkAHADtedVS0dCmaplZOSsk9ouKq4IjMTN5KdbHcl1ejm5TJN6PgP0EGA8+gEAT5z/guGboSahiGQB3ROFni0A3xd9N7PxaOnd2BTgfijvWQEHLZPwE+pC5zqySLNtJLcYrgruDI3bIiUXcteAcZyRF7kqEgKGyMhkoJXfcD9NQk/uVN45Prpf7iByL6J52D4UqG9n/lu8pyTxezLzoGx87OkYa2Sbb4SzRHVSh6NrT+ZohprLqx7assnWDlUOMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHmb8z6YlSvjQy8jHGvq3MlnArztBoA+mGADbH5SqQ0=;
 b=bwKdQaTextl2Icj8Sh3KxEIXR9w/9CW7AzYtL+zAPVZXAcMiOOnPd7wsM8bo2gge8BM6Z/25kCJK9WrwoLxSWG+x2ajAjUB5vNa/Y15xg0Tx2mRlGob/SnnqTJwTY8/ODD3V13Vg/AkHLo/9Z4xYr8PzIVKtuxwOfXCIF7XK2LxgyqU+4u6wIP5wYVJdBw3Pwq4VPEPrO5H+wLZLSLPUuGPwU7vFM6gOeTyTH6izcMr6eMzOnix8CduwM+arYtqQoR8JpNjEODpggrPeWByenTc2V0WobnFVTRO4CsuZE2cXYBSGVl7QZjyj/JDW64ZVK35Gp2ywyRXc8cETifKniA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHmb8z6YlSvjQy8jHGvq3MlnArztBoA+mGADbH5SqQ0=;
 b=jkr33o8Ot3AJev+ghbfCovnsQrGMttrHwjNdhqG/wSfZpKQIvLIo55Y1QsJDckngc1i5+JZNqzfB37TgNyfc9b8dZbaAhTJuogkjiMjiWSWThMB8DFIpdtZbSY6slIXtTgYgOW+2n5b9ItWwEDp0Q5gNq8aeYtR1mXEYPsIcx04=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
Received: from DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25)
 by BL0PR04MB6593.namprd04.prod.outlook.com (2603:10b6:208:17c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 18:15:16 +0000
Received: from DM6PR04MB5292.namprd04.prod.outlook.com
 ([fe80::cb8:2d8c:9623:240d]) by DM6PR04MB5292.namprd04.prod.outlook.com
 ([fe80::cb8:2d8c:9623:240d%4]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 18:15:16 +0000
Message-ID: <5d95f1f3-535a-4124-870f-7a817389da4e@ni.com>
Date: Tue, 13 Feb 2024 13:15:14 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-selinux][PATCH] rpm: remove incorrect packageconfig spec
To: yi.zhao@eng.windriver.com
References: <20240212201455.3627475-1-alex.stewart@ni.com>
Content-Language: en-US
Cc: yocto@lists.yoctoproject.org
From: Alex Stewart <alex.stewart@ni.com>
Organization: National Instruments Corp.
In-Reply-To: <20240212201455.3627475-1-alex.stewart@ni.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR14CA0013.namprd14.prod.outlook.com
 (2603:10b6:208:23e::18) To DM6PR04MB5292.namprd04.prod.outlook.com
 (2603:10b6:5:107::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:EE_|BL0PR04MB6593:EE_
X-MS-Office365-Filtering-Correlation-Id: 68bd03d7-48e9-4399-3e29-08dc2cbfba3b
x-ni-monitor: EOP Exclude NI Domains ETR True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7Gpz1sfKhFBE9KNzqaEyzAszH9wfPp36NxROGJ3tCmBSxZoM5FQa7oBNkplVY5TRaCQi41WyNAR0L3eA7ZHRTeCHpJJ4MYsqTMyVU+4+/PlG0jUXMpwmi8x7NHi8OMelLz7PBc0Tlb7ubkINplu7BuJQPISSvME0QTcC37qotVwgKRVaB5cpFaNbyXAhpIAf6WyS3X3OqpdfU7hkfdQ+K+vZUmiUKV7u77urrl4XnJlDck4ZZ3P+RSvSYn8zYZAXeCMjXF5ewA1Q/KI4uK4HSAojK1VVnjMjHqhoXIEWAK1eUyPVd20JAKwoKBouKdPgAvv1gEM3ySus5Oy7Qx0bbx1ZCyC5ZmdqwIvlpjl79SO03RCEPb88JRsdh13cQDUrI1F7Z+hdiHn9ewzdN9mO5OYahe+khxnczcKq/yg5ikdMqVjx0VjnHtx5SvgIG3EOruLowIp9kx4Nfx7bAVkpBdSXcnPx2VPRrRoWolLZ8ysn5saABH0y0zPywSZu9UU8EoWKqIbio5Hxo+U5pZvyUmSMI1JuSk3h7+ByLIpFj/g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5292.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(396003)(366004)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(5660300002)(44832011)(6916009)(4326008)(66556008)(66476007)(8676002)(8936002)(66946007)(2906002)(316002)(83380400001)(36756003)(31696002)(86362001)(38100700002)(2616005)(478600001)(6512007)(6506007)(6486002)(53546011)(966005)(36916002)(41300700001)(31686004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eDY5azVabFF5SEFzT1pMZUhPZHlYZFc2V0IraVA3R250VEJiWEJMSklteDIw?=
 =?utf-8?B?dnovQ292dmkyMG1vTW15K2hmUEdzUFY4ckVOaDdYaG1LS281T1UrNlkySXBZ?=
 =?utf-8?B?VjJwY0JkSHlURi80akxhR21pd3VBMG9VRnJaSk43RjIyOFdDclJMd0t0a1hu?=
 =?utf-8?B?ZFpDWDRIbncxU1pnODB0Vzl2ekpqbnRzem8zZW1VMTJKRmRCbmMxL0NwYk1m?=
 =?utf-8?B?NFF4MHRuNlRRZnRkMFNWZEttZlY5N2ZVVHRDTkdaQmpIeFNjS1hBMUN4R0VD?=
 =?utf-8?B?a01ZTTFkbW5EcVI2WDFtVVdUREd4Q0E5TXhqeCtuYVkxZUh4ZTZzVlhnZjAr?=
 =?utf-8?B?ZEl6YStwU2Z0ODRwcWltOG1hcXRyb3QrZEZqSEI4R1A1UjhBbjBZV3RNT3J1?=
 =?utf-8?B?a01yRS9ic0UvWnlGUStuTFNZQjVRZUlKWng4eG9WcFB2TlhkZVJDUEVKNUtJ?=
 =?utf-8?B?MWhQc211djMrN2Fxei8rMmdPTlkwVVRkaHVmNFdudHhmY2lnVnpQcCt0VTZM?=
 =?utf-8?B?c2lTQmpmWUU3VVZEd05hMmt0Y0NnY3A5SGJFWlRUWlhzOWM3Q09oQ1pmZy9E?=
 =?utf-8?B?eU1vcFh2SWxsQ1BWZm1zazU4WFd3V3pGaEJDT2dMaWpENm5DanZNYkxjRmhU?=
 =?utf-8?B?TG80ZlA0dllCTmRCSWNjMW1YemNxbWVMZ01jQ1QvYWtjdE5hcUx1TlpnQlNp?=
 =?utf-8?B?UGhYUS9ycVdscHY0enRVWU9rTnpLRHlSSitCb3VadHhkb3F6cEREa3pROEVh?=
 =?utf-8?B?UlN1aEozOEpLbEZhdGdKWENoaFN2bXkvTVluMG04YnJlWW9rY2xIRUZHSVlC?=
 =?utf-8?B?TTh6aGtIaFQzVTdVUlFqKyt0dWl5UmhzOGN5TURkWUozMi9FYkl2NVZ0M1Jj?=
 =?utf-8?B?Sk1HbGFMdFB4c0ZwRXp6YktaTGhVb3ZTdjdGbkF4R1owUG1UTmF3d3lJT050?=
 =?utf-8?B?bUdmV0NHdHptcmhZTTdHbWZlLzZac0srWXpXSzlWL2IrZFU1MjJ5Zm83ZDA2?=
 =?utf-8?B?ZVpCZ2gxV0ZucFlCM1RoS0tEVG1UdkdWZ25HN043UmJRTlpiZkdkMTZESjM4?=
 =?utf-8?B?NXZLbWVNOVJqc0kxTXJIVHE3dWhUd091QjY1eVgzMVgzL2VqckExL3pJUXNo?=
 =?utf-8?B?VXczWjBGK0RUKzNFdFdGSUFIZllSYUpYKzBhb2VhL1A0VWZMN2VONGhKaEtp?=
 =?utf-8?B?dTJLMzJJK3pVTjZnM241Y1VnYUhHYVJ5Y25OMEJFdnRIZEJqSnpHdGJ4WmFt?=
 =?utf-8?B?Z2tIOXZ2RjdJSWxkSC8yMzEyZ2hoS2VrYm1scmRyRGVEa3F5ZWZOZSt1VWgz?=
 =?utf-8?B?dmpNYWJPNGh4ai9JZ2NMZFlia1pUOUQxc1NWSDVYQnZkeENNWkRzWXNaOUZY?=
 =?utf-8?B?VXBra2J4Smszb3VOS0xaT3I0bk9oR3E2a1ZKL2tCRVk2dEIxVE1vR1dDVUpQ?=
 =?utf-8?B?Uk1pdWU2ZXlib2w5UXBLc3pDbUVxZE8vaVpENlNyQ1NlK3FmdDJZSWV5a094?=
 =?utf-8?B?TmJEWnFOYVdDd3M2cFFYUnYxZFFTUnJSOUF4UDh5aHJsa2Z4LzhhNys4ajYy?=
 =?utf-8?B?T2srV1NUamJtNjV4dTBIbWRyYnRFM3BDdDFpR1F5UmpzVUdyV2hMYlNGVzU1?=
 =?utf-8?B?Y1JRbEJvVldkVDFCMkpBTlZqZVVNWHRBdS8wQi9ZVWJiV29nTXpvSythV0FO?=
 =?utf-8?B?YTU3MWN4Q1ByOUZsNjhVUGFsb1hCcTNQbGkxTTFreTljLzlhd2FKZk9HQzJj?=
 =?utf-8?B?aW5nbjZFa3JVdk5iK2dRSHo1QXZ4Z0NwOGplRmFwdW5sRGlLUHZZMUZCTXhL?=
 =?utf-8?B?bzdHMjVwNUZxYVFGRTMrTk1saUZyc2N4dG5ZbTFVa01oY292QVVqRzZYTkJH?=
 =?utf-8?B?SEhzbDB3Y1BMYm52dkVlRXZ1bVdJbktpMVdKWk1uUUh5ODN3dUFQYkZJZE0w?=
 =?utf-8?B?Mk9BM1RFMHhHRU9Ib01Cd095K0h6ZmpYaU0xUmhHWVk1a01YQ29nRlErTHhB?=
 =?utf-8?B?RU0ra01aT0dzSmlwbDZ6akp4VWx2V3llU1ppcUNic3dqVzhMdDI5eUpheHlW?=
 =?utf-8?B?S2xxSWJxVklLL2tLNVllYkdNODhxK0ZCTnF1c1orV29odFdiZUp0VWQzV3ly?=
 =?utf-8?B?V3FkYmRtK2ZZbWgvczkwSk9jbU1sUTBVcDhlbVlrc0g4dWFlN1RISFVJcksv?=
 =?utf-8?Q?zJxRtKGbNPgypcIyOKpDx3sO36O0fn7/0xMG/6Cqecuk?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68bd03d7-48e9-4399-3e29-08dc2cbfba3b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5292.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 18:15:15.9988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DJTKp0gYN3c/+1izgASsf929g7Tjgo1mGBOhVT+Ey437OChwev9MfqR7HGn2W9vbl0Yiyon+ZSJqxjdH/8O3gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB6593
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 18:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62482

Retracted.

I neglected to check the list before posting this and didn't realize 
that Denys D. already had a duplicate patch [1]. My mistake.

[1] https://lists.yoctoproject.org/g/yocto/message/62421

On 2/12/24 15:14, Alex Stewart wrote:
> As of recent recipe versions, this layer's bbappend fails rpm-native
> recipe configuration, with an error that `--with-selinux` is an invalid
> flag.
>
> OE-core's upstream rpm recipe uses cmake flags to enable/disable
> features, including selinux support. The upstream recipe already has a
> PACKAGECONFIG[selinux] spec which uses the correct cmake terms.
>
> Remove this layer's attempt at using the old flag style.
>
> Signed-off-by: Alex Stewart <alex.stewart@ni.com>
> ---
>   recipes-devtools/rpm/rpm_selinux.inc | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
> index b6e0e7c..8c11cac 100644
> --- a/recipes-devtools/rpm/rpm_selinux.inc
> +++ b/recipes-devtools/rpm/rpm_selinux.inc
> @@ -1,2 +1 @@
>   inherit enable-selinux
> -PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com


