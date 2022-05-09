Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EB8C433EF
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 11:04:24 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.50])
 by mx.groups.io with SMTP id smtpd.web09.30544.1652094253837011819
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 04:04:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=KSIvFZE1;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.50,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZz7HMpciP0sf+Hw2pmwg6fQK41DJdIzmCnHEpwXKHLkw/haBlec943THnZ52rPwvVBOxvtSBmVcbj4cyD0PEpGEIMlTGnYuBtU0qQ0A/VxewcHOTJPyccsE1ETYVozFq1d1oaon9buOe3QrcttZwmgyWWvCx6AbuFZrKPFMswU4sg1swqsiCnm7oOZfOPxjXHhxjLBC3JJLEhDRxmWlEL4fc1xcmdT8B7mxoWzuSrH9aGIjbBcbI7maqwJvIkSzYmsWFnNRH0+dWSkXzrT8WpGtV76wDKZrVnpJP5FbXjDMO/j+8Qa581hwAl3EaKxQfYQ2rgGdeWuOl+qrOQVuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HD5kUelz1eOQikYUfLlQ0B+ocWFn3X3XBGtm12cDLbk=;
 b=hpML2GPZzBHseHO/c8tBx6xqfK1thneCqXiWL4TN1OQuNhPScSOGOP+mSdJLN+bkzwET/5OzfkpR3GdS6FSIpsvRVz2CWG2BoWgsaZhkUOjPN1zFbTi5XJd4pXPNsMU8axBXwxm2U651vTWms5oK7DUTQsr0yjvNVvBdUrvMZkzv193mVCpN8AQLz7+80zilPhsfNC7yzX9M+w4X0ogTNjSA6pA+YAmV+BQR+LrJeEwg6UIr921szffLclMNUA/3be91UyM3g6smKQVxuv7sJjN1tjg+f3fr495IWeBx0ptdyzImohQXhtW6KQIq9eNvtaeEKXtp3j9DOFUETxe+cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HD5kUelz1eOQikYUfLlQ0B+ocWFn3X3XBGtm12cDLbk=;
 b=KSIvFZE1vGdlerJI+uDkXgpMDgaWMkdpK6AyATIAmXUx76vko7o09Osw0x9YAgTGYOIaKrnOHM0S7yLSJ5CcNu0M/H5skjn1sFMbwKRdWrU+VLQf6/pIT345F9KUx7yjeCaPw5kqHCn/Na5qPo2sWk0d22KRXy5skvyDA1cGg6c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AS8PR04MB8516.eurprd04.prod.outlook.com (2603:10a6:20b:343::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Mon, 9 May
 2022 11:04:10 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:04:10 +0000
Message-ID: <e7a390b0-6c3b-ed86-8568-f694bd8b4a26@theobroma-systems.com>
Date: Mon, 9 May 2022 13:04:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] enabling symbols for debug in clinfo
Content-Language: en-US
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16ED6A72C4624DE7.14253@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <MADEUP.16ED6A72C4624DE7.14253@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR04CA0063.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::40) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04bef9fb-f37b-48f7-7988-08da31aba4d2
X-MS-TrafficTypeDiagnostic: AS8PR04MB8516:EE_
X-Microsoft-Antispam-PRVS: 
	<AS8PR04MB8516A04FEB2CA423DB4FFBA6C2C69@AS8PR04MB8516.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	STSFHQIVG/QfKESwteQm/b3Px+1J2Dta3p6gHCXB/UR+7QHRd+CQnnVcmW4luCurNKcKsvxnYiFixHeJDbY+4P+NiHVR8u0Q7XPhBYSqnt6HSKF30L2x5XdgMmWC8dAnFG3kEETecethElNd0ODP7SJkcsezTE+mvSA2hU1nY23zHxL618CGDPDGQJ7Y+JZ6b9iw/Xu1RaIKzy/nsLEUgGs4G/UKWkkfhyoutszKn87eG6yxGMfxzoBPL7v86AxBe4iLe8ZpcAyNB9dhX3wMN7YiTYFtlc7BQODrF5XWq2lB/GP5+rTAfWDEclVv948JZcc5aUxIbjl64CLybMh2M7SUGH65q8KqOyrJT2sLzR9TPUOU8tXlS8b4vt495jwEK3OoKR1EqHfiYYSwQEhtLgKtgQ1cSsP6Fpql78zeTq3uXzirfnti4ojKqU33sRI/WJAtrs317oPIdGGYc/6cewa/pURdLmS9KHNQeEkNYY7bg2p/nXQJHONo9b2NC1sEKZ7Btjurm4fJZvKfr5hptnDZZolcObU5U65701cdEWjvXJcxOYqCZUfnNWyj7DJtcD5BQPF4K5/QFwr/ZFH13vhQvrWEoAcj5ear7X6kH++IslHM4aAvshiMMmc2YK6+2BsJmTmCvvpiEqQUjbeOE45jnhvKdKRMSE6hG5KZYd4cWbpx1rPJQk2d4cuTpWjFt79Jcns3mGtBZ6pGJVSX53f+9TdvGHAqbOHyroOpRS6RQw+qwwYll2OSkqvXAWkhymGVL4opUkFsitE7XP6aJ8W9sj/BFQOtA4M0oTFshUXRhbTX3B/t/9VTdxnZj26n
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2616005)(66556008)(66946007)(66476007)(8676002)(508600001)(83380400001)(186003)(6486002)(6512007)(966005)(26005)(86362001)(316002)(6916009)(6506007)(53546011)(31696002)(8936002)(31686004)(2906002)(44832011)(36756003)(5660300002)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SUdGRjZGK29aWmpTWEFqdUZjZjBOSVJ4Vld0dDU0T0RPZ3RGN0k2dFpOakph?=
 =?utf-8?B?bk1qUFp3eUVONm01MWdIdmR6QTlkWlJobHNnbEZnenVZR1FGcVl2UnFXS085?=
 =?utf-8?B?TGpUM1p6U2RKNy9wRDZYVy9kKzl6dHd6KzJ3bTdnc1JWc3BIbmZDVHpRb0Rz?=
 =?utf-8?B?Um01ZEpXd1ZoMXo2V2dTTjZBeUZxZU1xWnlpaGVQUmVIbi84QVpWbDQ4MGlC?=
 =?utf-8?B?eHRodEQ4WnJzWlZack1qSHBwZHhNWmJkZU1uRVc4VHR3NnhSdVExUk8xU2FX?=
 =?utf-8?B?Ry90dm05UHNGZjVvdFdWVDYrZzExcklSNThOS21vTTMrSGRmNDFlZytsR0I1?=
 =?utf-8?B?M1NSM3lvN2RXVTlpZEo4NDM5ZWp6S2J4ejlmVEZDMEdaVVgxUHlPQXBWUTNK?=
 =?utf-8?B?SGsvZjFrNWd5bFpxRk5SZE92VW1VWEtxaWtucmFmaUgxcnc2WE5DZGJjdzha?=
 =?utf-8?B?NkRNVUplcTExRng2R2VLU25PWTBBSWh2aDBRUERNQ1Q3cGFUUzk0V0Z0bjg4?=
 =?utf-8?B?NXkyVmd4MFg2aUh2eVFyUzU1eDRVT2ZLR0l4TnJJdE9rRklpeTdSMytyU2ZS?=
 =?utf-8?B?TmRnUFZpNlRGZWo4WWQ1ZmFuck9EQlM2VVZCSzlEcFlOWWhlcmxTUVdOQW1a?=
 =?utf-8?B?VEZJN250REZaRk9Cb1J4TE5mYThFNTZxWEpMVHplMzhuU0pyYUEreUFnY1Y1?=
 =?utf-8?B?UEx2eWxhS201OWV4R0NGVkdwOGhkVVZGTUNDSytEbkpPZ3JMZVhtRnVjWU9E?=
 =?utf-8?B?eGY1cUdMUy9hVUN0NlcrbVRxWFdZL0J6T2t3b3VWQ0M4NERXSXY5dysxU2VD?=
 =?utf-8?B?TDJtUEVReVQvY09yME91VnFZaWNiS05hZ1dYb0RreGVFQUpZZis1cnI1WUpX?=
 =?utf-8?B?U2p3SDN6bklVekszMisrRTlPWmgxcS9WdE1pMnAvTnNZT2hBZlFCTk5EQnRh?=
 =?utf-8?B?TWp2SDJ0YU11T1M0T3B4bVNUK0ZCbTg2ZzB1MHBObzdORmRFdmFOeEVmQVhE?=
 =?utf-8?B?ZnlhaUFLNExuMldHa3ArR3dNNmxDeGl0UVRuNnVXZnZZZk5FQlVDNkV1VFpz?=
 =?utf-8?B?VWs5cGg4UkIrQnFQMlRxNUZMaHo2dExaNTVycVp2S0doVWcrb1FFWWpuSkFU?=
 =?utf-8?B?YnM1V0dtWmp2bjBlaHdQd2hHQmxtOE8vbURFcVBzTnkyNnlZS1YvbjBEMzE4?=
 =?utf-8?B?VTNpWVVWWVJqck1OZFdSdHhUTjZWN21oSXBPSHh3Qzh0bnF6eGc2ZDZPcGth?=
 =?utf-8?B?OVFHK25LYUVsb2Q4Qm83ZjF1bVMySkdRekJFdUxJQWcyMHFTemdIczFvTEx2?=
 =?utf-8?B?NHV4cWhEbWo3K3c0NWc1SXJxM3hhQkxzOE5XVFFHNVQ4WUZUTlpjSU5xTFo2?=
 =?utf-8?B?VC9FSmc3blo1WFM5WHV4Y3h5eTJ3VVc1cXFnWGtRbk8veDlJTWdBSi9jelE4?=
 =?utf-8?B?cGJsYW5IN3RQYVlpT1BFd3p2QTFwTURobzFOYnU2a0FqTjdCeTFORHBkaFBj?=
 =?utf-8?B?VXRyUVZ2T0VjbmxSZkVMT1MvRmVIZUU1QldNbmtUVzNVZXpXVmNhMTViUG1p?=
 =?utf-8?B?RU9VOVhMN1c2dldrN0JRNUdkRG9NK2pWNmFOTUtwQytWZ2ZVc2ZmOVNkc1p1?=
 =?utf-8?B?MGFhQTVRenRPRVpLd2ZET1NlcTA0TGJzNUpIdFFTdnk1VGtUV0xqNjdxUkpL?=
 =?utf-8?B?VlFwdlF2UWtjNVZvTDFWMjF4b3FHZ3ZmQ2o1Q3lYaG9wZ3B1ZmVMVEJGOVZF?=
 =?utf-8?B?YXdzUzI4L0crYVZWc0ZJdENlRm13S3J1TVNPZ3ZpWnBkdzh6c09iN3NlcEp2?=
 =?utf-8?B?MXRKQThoaWJibnpnN0R0Ny94WUlZRThuZHVyS2dCbUZVbjYrWm1lWjZZTjh2?=
 =?utf-8?B?SkVKWHNOdUZWTW5NNGhiVXZzMkNIMm1PTVlSa0tLRlJtUG1uR0hkUmdnUGo5?=
 =?utf-8?B?SlU0dE5DMUdxalFRQVBCL0JTQ1VuTEExbDR0bFRkTUVLTlNPRVdrbFFDcUxC?=
 =?utf-8?B?MitOeVB6TzVqVUpTdUxRVWc5MzJqVldvaXFReVYvYXNPQm1CUXdKVW9tbHIv?=
 =?utf-8?B?Q2RlbGR3L2J5SEFXeXJWNzBHSWZtZkprbk1MdU1Pb3kzbEdoZnN0YzVsc0tN?=
 =?utf-8?B?MDA4aVgwQzR6V3BjU1FackdwMmJGRDRFZjRCaXgvblk5WVM1SStMOEZNajlu?=
 =?utf-8?B?cnY1YTJhZUgvTkZsZUlPY1cyd1hDTU5ZM2gvb0RHa0RtOHpCdjhoN243WE9Y?=
 =?utf-8?B?VXdvUkt5NzRmalNIdkFPMUpSSUJiekV1SVN5YktOMlNscU4wMXBuQkMrZisx?=
 =?utf-8?B?WmpEZEdrK3JNVzNrUWJ0TGhCQWJoUm4vY1RyZWtFRW1YYXJIVmw1SUZVQzVH?=
 =?utf-8?Q?9UfRph489Ba3kHVt30KhQhsPPDrcxVbYuJzq5?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 04bef9fb-f37b-48f7-7988-08da31aba4d2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 11:04:10.1709
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 4a6XSKVH23Qk2THasxPZmeZTfpoZphOsk4ug4GX14HxHK7aAJBSsm44ARRtUOcQUKmvVQ6ZPyL5FUAnxSDVMnnFmRLZ3GThQLkGQ31UH20QuXW/772a1Xj1o1BP+3ovP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8516
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 11:04:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57027

Hi Steve,

On 5/9/22 12:54, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> 
> Hello:
> 
> I'd like to build clinfo w/ "-g" option to do some debugging with GDB...
> 
> I am looking at: meta-openembedded/meta-oe/recipes-support/opencl/clinfo_2.2.18.04.06.bb
> 
> I created a "bbapend" file to modify the build recipes "Makefile.am" file prior to build, to introduce '-g' for CFLAGS & CPPFLAGS, i.e. at top of Makefile.am added:
> 
>                  AM_CFLAGS - -g
>                  AM_CPPFLAGS = -g
> 
> I checked the build tree and see my modified "Makefile.am" updated as expected, the update occurs at the end of the install process, using do_install_append... so the build should have used my modified file... but I do not have symbols for the clinfo package when I go to use GDB.
> 

The install task runs after the software has been built. It is therefore 
expected your changes aren't actually taken into account.

c.f. https://docs.yoctoproject.org/ref-manual/tasks.html#do-install, I 
guess it is not THAT obvious that it happens after compilation. Maybe a 
patch to the documentation would help clear things out.

You shouldn't need to modify the makefile and just add "-g" to 
TARGET_CFLAGS/ TARGET_CXXFLAGS or CFLAGS/CXXFLAGS in your recipe.

Also, I have never used it but we do have support for debuginfod which 
should make it easier to debug remotely without installing the binary 
with debug symbols, c.f. 
https://docs.yoctoproject.org/dev-manual/common-tasks.html#debugging-with-the-gnu-project-debugger-gdb-remotely

Cheers,
Quentin

