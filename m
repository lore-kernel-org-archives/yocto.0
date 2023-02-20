Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0521FC636CC
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 13:06:00 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.54])
 by mx.groups.io with SMTP id smtpd.web11.12389.1676898300772811826
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 05:05:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@amd.com header.s=selector1 header.b=xERzVxAd;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.220.54, mailfrom: kris.chaplin@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccE16rBSAJ8GR/cGgX1iWnsw+Z3s34HpztidXCU8c/4cvKjPPIOyYBDUQjrdFoRd3F9eP2BXTBvnVMvjcp63MF2NjKQi2CpSMVjVmuuk8nJ1+HPezpKF/dxzZqEdZv1Wu8kuE0dil5XSu6ZC3rgnZ/B81bZ42cjgP3ot6mg9DLX0yZt7WyhUZ1euGro3JzvN1jONBm7EmN2kitmqSJNGMB88Dcw17CUmNoBPuOsQqUMqhWpycH6AFHVsLUN1n4IvVUnm/kKfbHqtXQ4gARKrW7+oX0qzCZ53P9MpD0WocLWd7WDOnLswbYrOisAZAY2wrpnQixlXI/UIGcIqCI1piw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7gL3OQd6nHdfGOOqJ5r6iveVnPQd0YDVfOrqXjgNsfI=;
 b=UQVSitRkE6Zq8d6WR1+8+BWbbWzT5EO506Uwt2zKQP50Gtbb71fUCF02F0+Fk3Sid7kHWLqj5nRgXSKxIRXLxHZ1yuNZGYOl26wVTLmkmy01qP/mftWYgRxZ5Ma6UyMmimI7pIyODCIkcKIk9p/oKEinX2VIrH/akQOqst4YVy/SU5izhDJa8ftMCDiM5kRBsLSb4PaDwMMv1PxuPkoSjdnQKptqzgXIkDaqEz1DOOOtUtKn6uMhMNPs9ocF2vG0IAVZT3FC4iRP2rYfVMzn7W5hs/LC6AhydXUacHe9TP2s8URxhbCllIM0wUcK/qMmzUiJm3zhgDOl2y8nofSEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7gL3OQd6nHdfGOOqJ5r6iveVnPQd0YDVfOrqXjgNsfI=;
 b=xERzVxAd+5zBX2BuoUdKVvaRBcAlahQ1ybCnTaomaO5aDbNDcZu/jBO/xr+A+ABgQiTFaPSNO5sOJt97+FybwCNxOMrKApBdI7Jwkw/+DKd0nuT2ADRdDQAXrV+EvY1AyFeskLnUuVzS+JW4C294hbT5TTf7dkemNriQeooeRoU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3398.namprd12.prod.outlook.com (2603:10b6:a03:aa::24)
 by BY5PR12MB4951.namprd12.prod.outlook.com (2603:10b6:a03:1d2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 13:04:58 +0000
Received: from BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d]) by BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d%7]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 13:04:58 +0000
Message-ID: <3388ad1f-75a0-4288-08c9-cf8ef879b8e6@amd.com>
Date: Mon, 20 Feb 2023 13:03:48 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
CC: Steve Sakoman <steve@sakoman.com>
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
 <fe189cb1d03745ff13f4a3f1b40d85de7d82a4f4.camel@linuxfoundation.org>
From: "Chaplin, Kris" <Kris.Chaplin@amd.com>
In-Reply-To: <fe189cb1d03745ff13f4a3f1b40d85de7d82a4f4.camel@linuxfoundation.org>
X-ClientProxiedBy: LO4P123CA0212.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a5::19) To BYAPR12MB3398.namprd12.prod.outlook.com
 (2603:10b6:a03:aa::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3398:EE_|BY5PR12MB4951:EE_
X-MS-Office365-Filtering-Correlation-Id: 37fab1ec-5795-4922-3993-08db1343119c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9MlajMGlYk7wqs1UYmK0g0Hwfq6x33nJ52kL7gCAm7DiIU6lEp9lcCYXj11YPx2Qwjjp8J/URDSXbCArk7J8SmphryWijp6/3ahL6+4MUltmwjb2w8vG3z3tAvyUXBd+rWJG6lhZwmz5hXN3aVMVbWx9XOSkweecy6X49+jdHxhyE/nhRVIfPWqo+YAKWLoAsnTYKkpCb23ystw3Z7521moHQ4tAyQ0SoH9C8aicRcqjmdFurOx2WfX4o3YjFdPsnB9xLkKHcnPrvCOtBzI59NUPH1r9Sr2lPScIKQfyG1r7DULRnZ+5PhDMl0S5AtwhJA80u6s0SReIJqyCUIToRaBaz16K2+wRdBRRLSWpYy26Di1wQMZHDA6G3JRb14kW82fmOIfwSeEf6ibkcb8illP/NlOiU7bcpMmV5mmnXAuq9sTCqscTAbIbWMcQR2+bEHCDnDFUvqJV6hrdy6vOcEMfCHtdxc2QInpBWu+ffqp64K7lUj9i258CG2kg4kjghNFm4fYoDiFD0uJTnjrFssV4TytZpefOYmWQGH2ihjhJy3Wqi079wmJeZ94T/vg765qPRgmzb/T8fEnvRQy4OuDEOijpFgFXBSZPQw5xzrfVo5Oo2buZyQv8X31X7jy9OautvsHf62W5+QkVzL+z6tGAxjyQ7GSbdL7zAC+lT4NESxvwU80G8fy8HYPDSDT6ZnVkLhl4mNO1YawCVu3HqLxhkp2jyJuHPz5Wg3x+nAA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3398.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199018)(66476007)(66556008)(66946007)(83380400001)(8936002)(41300700001)(5660300002)(316002)(8676002)(2616005)(6666004)(4326008)(6506007)(6512007)(26005)(186003)(478600001)(53546011)(6486002)(31696002)(86362001)(36756003)(2906002)(4744005)(44832011)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?2SSoqz4MLW0Z/P+26Hc2vmWuW0qSjOW6479IulCMfqRODk9NnWnxkzY1dSGG?=
 =?us-ascii?Q?XT+tusiJ8NA9ZY+imyD8/XThJlEZni9L78v1vLb/I1LNEFMJtUpHhYeYS9lJ?=
 =?us-ascii?Q?NipAyHXjMheFtWYwK/qfBP3pdH0Kpdlt6H5nbxmOreivBelxzrMhhja5IIJc?=
 =?us-ascii?Q?6mQa4qbmKtq6cFc57ti5e9J4gBnq2mAQKyVLm7GyTriYkJOCttBji2slqgEi?=
 =?us-ascii?Q?MLnootlaN9WpkrfmQo+1tP7OwC7z8hU0PObp9X35Ldhpy9K/UFOdAYAXYLiK?=
 =?us-ascii?Q?9gDmDLHvebQDOXQf5VXp0Q1nojdIee3cdwQkRO7i3fPMQMpcM8DGKO5wOpDm?=
 =?us-ascii?Q?MDC+MJN3UlxzHHRtvoBrZFjreUkK+NYxnkgPfKJSGVucTnf6HPHp2o9kQYJb?=
 =?us-ascii?Q?u6RhyRq0bbsuFj5QCm9wPFEN2gnhZRVXnQX6dz0hgC2coeEiSLYzBgWxFfQX?=
 =?us-ascii?Q?Jru9V1v6ihY49stPAg/ZPEKJ3xbZFekc9sE0NUnXyedkaRmR8d8LmKi2mQbV?=
 =?us-ascii?Q?W0xfWub575Rd19qdqPAYA1ONMJCii/gLXm460skfCFFPVdZIeRBGbtQyjJDI?=
 =?us-ascii?Q?BJYyOlNaIq1WjttYIiDNayiTxJgQeuwFl3zLaYMlXTXRL/C1Ht5XQOaWWr28?=
 =?us-ascii?Q?iV+XaWIlhPNBGpxLQAylp+pHZbH7OR96ege8LTCtxeQynr9hR+Uv2ANmt11T?=
 =?us-ascii?Q?WPnvqofJ+zR+CehxKNEN8zjVuNt7RqiAHSZdw7TsklhFejlpcLrG3fKCIpSm?=
 =?us-ascii?Q?Ns/4+m/VCgVCd5ZrqlFwJO8GxeODnW297oHDbeQkhvrp/LpHLXUmGzCS8dxI?=
 =?us-ascii?Q?/jKTSDDspUwrU5XwWqQ6VWDMlaHakgOls02UpAOmQMSboMIPTEX0wBO7Pibh?=
 =?us-ascii?Q?qUL/OvCgvB0CLoBagqc8d4a8n9AxsfIw1m2z/mu7BoGO6m2csPoRjW553B70?=
 =?us-ascii?Q?qCSnLfiLgaS+30mGXgWjTykb06N1UwnN3QkaAP12Z64y0k5f/GaTwg7/IaNP?=
 =?us-ascii?Q?ve8z1eeyKvJ3bP20JuvmwA6ZWVqJVSvkl1VSUnr8apRZMk3XCMK10I72iSfX?=
 =?us-ascii?Q?X70UgJJvj+7AVy54/zTPnE389x2eoBmR4fVKQCXF1BuiVov+eSV8m/nA+38q?=
 =?us-ascii?Q?1P7L2ROUdYKVol0wJJRi0iokUAzDjWdRimCYyD4k0iVRnNYx1vN+CjDOakWb?=
 =?us-ascii?Q?nyk6lVCLVXd4MFgWtU83uWxKnq0/ulIoGeQIrGddAgO89QjHLsd0gCJOdDdZ?=
 =?us-ascii?Q?qqoppJ2VrdCX/bQiP2rQbjLYBVKZWjYiKc08aSW7T2z9mhsguyh/8I2m6h6e?=
 =?us-ascii?Q?2JA2npwgLGH5YbWK6DzAHwVzW1SnisAqteCJC6F5T80WZoUVkVEG3i7CyrtM?=
 =?us-ascii?Q?Hn95IaCqYNeKBYLvcntEcq3S0tKFaAxs1gHQXx5+snaHJHNhFSayYJtjiTb5?=
 =?us-ascii?Q?sjqvQPPI/bjPOwmt0s/SGoEShahTNYp1XSnxAyo0GLFkEOc++n/klUVRJaRs?=
 =?us-ascii?Q?Windd6Atn4Pqfhn9TCjEL2DmleJmOqUkDjSBDjbTBRzciF+xg97CmyEQwyoN?=
 =?us-ascii?Q?JQ8o+gZa5t9pXVyAh7vU7jbzV/fu2GwJ2otE1+0C?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37fab1ec-5795-4922-3993-08db1343119c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3398.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 13:04:58.5838
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r3yc76erH3wlZ8xjM3rucCwRrae+xBKGFQxqGGjNxYpbUlnFqvXQRUXkMWEKbEoO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4951
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 13:06:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59253

On 20/02/2023 12:11, Richard Purdie wrote:
> We're testing against AlmaLinux 8.7 so I think this is a documentation
> issue and the value hasn't been updated to match what we're now testing
> against. I've updated master and I suspect we'll follow up with changes
> to the other release branches.
>
> Thanks for mentioning it.
>
> Cheers,
>
> Richard

Thank you Richard - that's great info.=C2=A0 I'll ask our team to do the sa=
me.

Regards
Kris


