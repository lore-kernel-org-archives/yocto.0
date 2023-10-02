Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BE9E748F0
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 16:08:05 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.65])
 by mx.groups.io with SMTP id smtpd.web10.86237.1696262883439937243
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 09:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=ejyRF05M;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.65, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKV5tZ3fdUxn38xyWVmc9pOu7JYaddL81631YjtS8XC8g9BkVu9vIts45d3vkr4b8cOWuf2fH8wjAfHR7VIXDVxwGGewOWjXgvWFHydp8jWpZjOrIu2+rZNMAiHiOVGzLb+MZXzpdvXCf5DZP++SEqOU+LdVaQUwSeQATP/ZwSSe8P86Yf6eaTGOC8Tw4jDtVO1T5uY6pXJ3mTVSyLfxbAnsEKzwuwP2IJTJcsUK6WoM4VAt4GXdUTpneqpScSo1yMry/PhLHsPlYxJ+YAbHLZl3YXkUBBWRQZgH3xL0N4rhV1b5vi1GXTr7eCVYNo8KQOc53EI2cxd8YbvpGCr0xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZIA6Rir+W7GJzbh6kH3YCzenRcPIL9+vXNEqhGjRg7o=;
 b=UySpSC/VjJHl2I3JSTE+dzXBOF6wn2qgD3TKN0Fckw6a8wDYhRbGPujaD8cUNrX/ForehGeGk/yD2IOxVtluYKi1Pg/5sbwky1VV/5FsmQw2+v1gOkIIel3uhsIVMQa+PDw7HzpT9HA7Pi+tGg5BO99B6eciAw6kZe1P+0u/iBJCb6OjAl8IitPyX5kwZ1wF+qSn4dY3WTkWSsnj/qqnuEXNeJnUJGAD1CGsrJNMYmLZxrG+zIjgloJWaAhj2LM9zfVESeamdIxYJe9++JKeW13aI52SzX6cgiUFimUvUFug9qm3xVJKCFl5nieGExDuP+uyXsUGWQBLzrZnZj8Dow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZIA6Rir+W7GJzbh6kH3YCzenRcPIL9+vXNEqhGjRg7o=;
 b=ejyRF05MkOX9L+y2nI9cyFPB4c8QKVvaJlOAkeJyFf1fyUvzoKciYvZCB1i/n3YE+s8q19JORcwyczFF0TuUhrPeEDThTtgVcLipCmRMOG3rS9p7rrbmgdBREev5a32axSw5JiSA4PBl1dRLgkmHKsQQDE9T9jV1bmO5jEHLNX7M0fbFwmyHJibmWbrgp6K30whZYsBziP8prdJmkBs6Tb0f6i5gtUMdKISGGs6MW5z9ggXj4CeTOe6tGL01xRECD1yVxKHSMFF+LXiMDrxeuhsGNXlqxoCsJaxaHA1yljAab6GLLQU14K5uqx66VfmhoLijEyk+Gq2nczcMeOTjkw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com (2603:10a6:20b:436::10)
 by DU2PR04MB8967.eurprd04.prod.outlook.com (2603:10a6:10:2e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Mon, 2 Oct
 2023 16:08:00 +0000
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4]) by AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4%4]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 16:08:00 +0000
Message-ID: <34b97c8e-b1d7-4fd2-f98a-07086d2c7940@theobroma-systems.com>
Date: Mon, 2 Oct 2023 18:07:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH 2/3] rock-pi-e.conf: remove
 redundant MACHINEOVERRIDES
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-3-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231001130803.18662-3-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0181.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::7) To AM9PR04MB8539.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8539:EE_|DU2PR04MB8967:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fbcbe40-1ea7-4f53-fd1a-08dbc361c032
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LwCkZU7aPrF9pPFRGfHvtyPZZ1PPDe/CTAKN1UHimHJlS7RGRT3/XC4UGXTVYLl033lg1BW+C8qeU8bee7wW/qg/+Pugl9itqBzNfjg2wHxwLS2/unb0EFRneEFJjpr5eHqsmNT6HD/bUUyScu1NaKTGrEAaM5o7SWlwEbYiZS0xZbWq5JBZMx4Zl0DQLxutZWaK30kCVXGO7aagUjugUgmtTxBqN/yrKiucrU+DawLrdSqXfm7AaRU0QcxhromSn8LPFX4Wt06RUQUYe/1Aje3JZS+nVsQyq2gKcsMXfvn5CR1sW/2thTjc9FY9YIhW1XNv6N/mnf38OpZC2eyuxdScK2F8xj028sPWZijQfbdtIIOsDs3RVXZCY1/zhvojV0NTvMQwhkdOPz0472ViRneXhbOD3tNyNxUtukUONSilaXsmfP2FvDmPCAOOdiLzcxo0HeZyo+AaIndKRs8HX54qzE2N6SktN8HKqFvV5VydGi9CkkaycNo1A+p0+bkLtjMYNhIadFVX0LItOnnIACg/cWPnBrZEMfUZKAK/1Gcgt4sG+DyJtyiY9Bi0bxL3a8SEJ0cDQGKYhwPSBilQxdwXmdIpVZ5YXFyBr9tt4z55UvQbdS4a0jKDI+Yy4Qy/nqU4xH0M7OiW/5u1TVoeMA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8539.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39840400004)(366004)(346002)(136003)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(6506007)(478600001)(53546011)(6486002)(2616005)(6512007)(2906002)(41300700001)(4744005)(36756003)(66946007)(44832011)(8936002)(5660300002)(8676002)(66556008)(316002)(66476007)(86362001)(38100700002)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZUFYeW02YTNVeWtFSXZQZ2hQV09xQWljM0xxam93K29Qei9Rc1V0UThBeVc2?=
 =?utf-8?B?UmJrMUtSRGowUk5kczQxcDNLdWVNdTNGMGd2c2dzMHpoT3Bsd0JRRlJJQWFB?=
 =?utf-8?B?NDVJc25pVEsvcTlJUm1kbEU3SVNmSTBDZTVBNmU1em16Z1htSytXNVBNRnNU?=
 =?utf-8?B?bWJDd1Rqd1JVUHdjbjUya0ZRNEtCTExORFJ3QmNDdzRlVXR1VHpzbkY2blYy?=
 =?utf-8?B?LzI0dUdnWFJncHhpay9OUENzbmZJSGUwRjZXTVpDVisvTFdabHhUVjZ5YjVo?=
 =?utf-8?B?TlE3bkFKSlNzaCsxTmZOUE4vaHFwTFhlY1dkODN1ZjZGQW05cFJtQ09uVzc4?=
 =?utf-8?B?b01VbUNhTWpPNWxYRVJ4QWMyVzRkWktaYkpUNmxJZ0JJam5rUEJINGVENXJE?=
 =?utf-8?B?UnQzVTZlN1g2R281MU9aVnRxemN0T3RzbE5hRmoyRitFZHVjbk1DeG9uQVRP?=
 =?utf-8?B?aTRGUGhFOWFkK0pSYk1RMWt1ZmZ3L1pDL3pjZzNGZzUzZGF5d1NNZ0tRU08v?=
 =?utf-8?B?eklUeW5Sd0FpUXBZcVY0Vi9BeWJ4V0xrZy9oWFVyMFZEdW5DVjZtVTdBRHNp?=
 =?utf-8?B?bFQ4N3NrM3JpeHlBQ0owek5SWjQyQmdPbTFJa0NaK0F0RUlTN1BmRGxxb3VY?=
 =?utf-8?B?dFo1M3VaL3FjZHBmNzhBaGJLNHRQZ1Vpb0NFSGNGS09xRHQ0NlBhc2pGLzJF?=
 =?utf-8?B?M1J0cjRNTFZxNUFlMUFPMHhRZkt6UUVsN0l1K2JDTWJ3SHJ4N0tIck5ucThk?=
 =?utf-8?B?SG5uUjQ1UzhiZDQ5WFpxTDhYVjAwNWRYMXV6RU14Z08zeHZEb01GaFpHM1hI?=
 =?utf-8?B?NFl2eHVZaDJSWWNVOUgrUEJEUVdjRmZ6WGV4Sy9qQ0tuWm1sZDlVcUQvdzdu?=
 =?utf-8?B?cFRsRnJZZmtveEFJazRkcldxdEVLZ1pQZVRjS3p1TUt5U1pzbHVwMUs0VEZY?=
 =?utf-8?B?TFZCYTIwV0FTNnBrWlBUVitVbkxZanYvUk9uV0N4WnN2OE9FNVczTDY2bW9h?=
 =?utf-8?B?VE5ueHlRcTFxaHdXa3pWSjkzcHNSUldncjBiOXp4eHZYTmd5azlIeFRGZXA4?=
 =?utf-8?B?OUZJcjBFQnRqRTZobCs2N3JRalBIOEFTampkZ3lVcFJ4R05rdmJHQ0tDQ0JB?=
 =?utf-8?B?TXVwbS9jWHZnVEI4OW9zcW1lcS9nZXpId0QxQUJBYXQ1Y2ZaUy91T1kzMnd2?=
 =?utf-8?B?UmtWdlV5OEMrZ25jTWlrdm9PSXF6VGZUOU9mMEdLOFZiWU1scm9URW1TdkM4?=
 =?utf-8?B?TitxZVZQbHZNVFVqOXkwSG9IMTR3OThOSVBobWhpY3pzUmYzSHdYN09JOXNa?=
 =?utf-8?B?T3BjVWtjb3FvN1RTUWJLTGx3Unl4YURaYWZiVTUzMXljNi9lTXNFNVJMNDd4?=
 =?utf-8?B?R2xYb0VwSFRpOFFaYzcxQmpudjVic1FtZkh0MnByNFY3Z1VERndkWGsrNHRX?=
 =?utf-8?B?MlhHS09DaUNTUnk2M25oUkwxdG5BM2o4bEROU3JNSWE2bG45RllUNWthaXJq?=
 =?utf-8?B?cm04MWFyRURKNlRpVkZkUkQwUFpZd2xUSUkvZndBZnVaV1NjZ3BNQ3dsQ2dD?=
 =?utf-8?B?R0tIWERDMFF5dzJrbDUrRkpzbDdvUVpKcVRoRDZSa3B6T1g2NjV5SWhwcGow?=
 =?utf-8?B?RkFCN1JUWTVEL1ZkQ0s5VGVCbmIvNnlCTUxJa3BYMEdNK0xIQTNjeXZSU01Y?=
 =?utf-8?B?RTlNbVY0cHVYQ1AwSXJmQXRoLzl0VDliSHc5TTJUb1M3Q2xnR2VPTVJYL0Zu?=
 =?utf-8?B?Zk5Sa2JlU0NoR2VoVmxiNFhnWkdNNW5NaVhlMDJ0SmpETjZVZ1lBbGVIRVEy?=
 =?utf-8?B?aWlWZ1ZRb0Rlcyt6WndXcmdnMkhTbzVYRVhrWDR5TzV4a3hhQ0MzZ1RqWjhR?=
 =?utf-8?B?RmkyRnVLSDJUNG9uYk11dWV3RGR2OGh3NE5kZzVsc1VyY1plcmwrVWdGTGo4?=
 =?utf-8?B?b2xIRHgwUmtleG5JZ2p3V1d2VjVscnhPZWRyTnRvdzBxbHFoUGE4Lzhpa09m?=
 =?utf-8?B?bFZ1UU5vVGIrQ291QXFXb0JBRjIxT3hzY1UraWRzY2VQMktzMEYzV1oxandU?=
 =?utf-8?B?dzVrMkFoaS9xTEtwVXhHTDI4NE5GY1YrdVUyN1Z3QkxKVUVxMEQ2RFBUZU1P?=
 =?utf-8?B?eEZmN0czYThpWG9saHVReThscE9lcGJrRnFheGN4UGx4YVRJVlQ2MERRZElL?=
 =?utf-8?B?dCsrM24yeEpqL01XcTNXTjdvMk1NdGc1cm5NbTFYVmtJS0xjWlVnS3gyU1N5?=
 =?utf-8?B?ejRRMXhKZzRvcC9pZThFYURkNVdBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fbcbe40-1ea7-4f53-fd1a-08dbc361c032
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8539.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 16:08:00.8318
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i/ENARren2ZFSpm0mxvUZPbbxU+4epEsIjjkEjTETJ4btYEP4KAkAH8tKSuqO7HQ/7i939bif2KQkw5Y5Jrvx2k3ZOBluVh4cpYvX1NP4C5LRf7/ouOr0ELtzSxwzsv+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8967
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 16:08:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61195

Hi Trevor,

On 10/1/23 15:08, Trevor Woerner via lists.yoctoproject.org wrote:
> The MACHINE name is already added to the MACHINEOVERRIDES implicitly, no need
> to add it explicitly.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

