Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA2FFC433EF
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 09:51:23 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.65])
 by mx.groups.io with SMTP id smtpd.web11.9081.1651571474771638306
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 02:51:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=s7cUsluA;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.65,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjNp176ShKjJbejn7iESNh+ekyoDgWZn/lxe5nn5VUpEbVwmE4n98RCEjNWeIHwPc1vLB8a6DArCzoKrrrNwXXMXbsHQrlNv7tc1Y4t10+iPz4bUSlCAMIfT9xS1Wp0rGYwKWR9xFhPbq2PTa5F+kHir+E7X+8Pa5jiMDiwPj4jyISPDTJvsl8YGm3H5qy89d4eTuhe4T/pJ5xk8qGPL/8Zf4/Xs74XgIV83Dnovn0C+Nf47YFYzZLBE0OA8r6eIJUP1jaxYj/PzEQCexU6oxBaJY1l2oBP5tMy8woDl0dk1HFBdaPMEj9dtqXsbHfv9net0ML7WSv4yhr8ULNW4uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7BrJeGZxaexNvh/6vssYXOn3lN+y39esHa/5XfvuGM0=;
 b=OoBjgcI+JbFClqUZ8/EyBr0pzaV8719ZraHf3sLBpidzXYRCgvBgrtKNoePPPVT6hXVK2zGxQg8rnaFpkax68smxr+732+8VaC0XlkOQujXDQaNanucZ8W9V6tvRWfdCJ3XbvJwqWQgJkpxuQBjho4bbUKOXZgmyAR0AYrsD8w7cU0Gv4RCpB6jaRb/z7npqqv5XTwt/WrJdL+MhC3mDmWs5WojtqUn8mTDGs2KDdHpEash+kQZmUNiCiAfVgMI43Bh9CNx5KFDIo8fTDGuCVeumUGpXfelMuIktiwbWiW6M3pkdrpJY/y25eRJvp37u47uzWBOZguCzV/B+8ORLyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BrJeGZxaexNvh/6vssYXOn3lN+y39esHa/5XfvuGM0=;
 b=s7cUsluAPYuPydfzWrHs9YSQLeZGpC7iqyH5uXhuxDxkeqmiCgg9W8PpFez6JkaZqhgDPMaLEFnFWymygwkBpwNcxUrZCvoHlxtW+9XiZf+tIG6pAFtZFjHIO8eEIfGUEb51LjG7O7irOZQsXB72kqztAp+Rv5hyUOkh5J5I+rA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by HE1PR0402MB3481.eurprd04.prod.outlook.com (2603:10a6:7:83::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Tue, 3 May
 2022 09:51:10 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::28d3:b4fa:2319:83fb]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::28d3:b4fa:2319:83fb%5]) with mapi id 15.20.5206.024; Tue, 3 May 2022
 09:51:10 +0000
Message-ID: <962ff376-9257-bb1b-8aa8-b220feba0934@theobroma-systems.com>
Date: Tue, 3 May 2022 11:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v12] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220427172718.45635-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220427172718.45635-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR0301CA0018.eurprd03.prod.outlook.com
 (2603:10a6:20b:468::20) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a77ca3b0-38f5-45b0-7c25-08da2cea73c2
X-MS-TrafficTypeDiagnostic: HE1PR0402MB3481:EE_
X-Microsoft-Antispam-PRVS: 
	<HE1PR0402MB3481B3E597F5AB6F28AF5816C2C09@HE1PR0402MB3481.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yhj8DZ+Czb9SWeuV+4kJ2JZsBtXCZAXWxbELSPlJ8B+vfSkI2i+tWs0pkCdZGSVw4ETm1kZQVMKYZTJCeppWqOcE7NlgYjDq7qlCYlmaWNt9pzp5YEPU+kxTVc/zdRqRG5VRLuX5w/z6P2CTgPB9MCYl0r9RJUaLtzbONPwhZhy4o4gH+ND6bdXhPGlbqkTmXLteTIkkMRsWBJajHWILbc4Go46NZ7EuqffZx42blvGj/ccSWzjovQKTYk6hT96pKIodkBJtLEbSoe/dBT0HTBYYzUx6FKq7MhWr9NmOuECLxMv1ugkVtU/19ULz6sQYuZh8Xg0oAwetGRkxwv/0vS+YVc5FZVV9t3Lm7fWPBx0vRsVTV18vjTaK/Uvz8KxLqis0OT0RyEBi5mCXAg1Z8IfjJJzFhoOEqLJXFx4MppNFd01znK6nI8wFqIRZIR0NLZ6qP3Ab8cjE7OUL/FrMFrjIriSUP0fQEhJvYSD2GAJ54lnrws4oCHGH45n9pUpmCO859T7MloTRkdwGEkjiPaazAo8kpPj6bnGnEBCVfCFyJd7TLwBe5OmjJvfJe5z7K2YzzyQdAJU/OTgdZmsVBFlGtFi4FSeBcHbBjuvw1iynK5vLbMSWFyb+Xem7Vo5GkGQK2MR5uha7eBBMf2Ne+JUCCgEjXvDpkEZg3OHALBfC2ngTswELpSr3xWJlZVlrpMAO/tSDRAjqUaHh3ZBbWjyjRYWRktKSbzD9xxKE5OKtU8hCeK6TabaQSlr0P0s/LPWEegJuYbyQz5aOFWwUZ6bgUaHBEAGpViH2WnkIt89CmzzWgfomhYbGb1QXGcnJAFgvMP8pLCDC6d+AsT3tIjohiI7mCbN05y+WLImhvHA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2616005)(166002)(6506007)(38100700002)(86362001)(508600001)(31696002)(2906002)(6486002)(83380400001)(26005)(8936002)(31686004)(8676002)(316002)(966005)(36756003)(66556008)(66946007)(66476007)(186003)(44832011)(6512007)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U0x5bXhheDhGU3FsM1RUUkxZSXVLdE5MS3VhajgzSjZ1N0VCZmg3VnNqVVIw?=
 =?utf-8?B?MEV0VVZKVHJ4MjAzclNzVloyUHdreUFnNEx6emMwNy9WYitWeTBmMmx1MlBB?=
 =?utf-8?B?V05oMHdqNnNDanFvYW5JUVNpcnBOQjVUTEpvV09QcGg3enk5N3hISUQ0YUFu?=
 =?utf-8?B?YnBqNmZxUzRGRnd2cWk0amc3VmV4disvSnVycCswYjlRbm9iNDZhUmJSS084?=
 =?utf-8?B?bzR1UFVONmxjYWs4Rk52VExLUXFWMVlENVBhalZZc0NTeGM2Q3QwZEd4ZHVF?=
 =?utf-8?B?U0x0MCt0VEVtSDRzc1FFRHg0REhuYkJOSzNFdXN6QkJIRzRvTjhZbVpIc2Jj?=
 =?utf-8?B?T0lRSDJCbmI1Y2lOM1NJcHFIUjlmUDVuRnREYjVwU2tqUEJBUXR1cjVhdHNj?=
 =?utf-8?B?WWlaUWNHN3VBckZhUjMrVy84amxrTFhyTmxqNVBoaUkvS000RkJ3TGk0dDhP?=
 =?utf-8?B?Unc1Tk9hSHVhTUlCYUkzT2ZETmN5ei9zbzliWVFoNm5ONGFqU3hMSVd4NS9S?=
 =?utf-8?B?QjVBWVRLZ1JrL3JleDd2bDNGUjMyQkRLeDhNWnNsdmtiL3JMTndZU3RoZEkv?=
 =?utf-8?B?MkplY0ZpOEpXdUdIeDVtcmZFc3pqRjI3VkUzMlhXamE3MTZwYTdxODdvVWlk?=
 =?utf-8?B?c01jcGQyL3VxbGRPdUlGbndTVmo5aGI4WU8yaGdmeHJRU1dQSk1lRzZNaTRL?=
 =?utf-8?B?OHJoODZYN2YzVEpzOVpvNmRka29NbElpUXBWKzhBT2ZmdkVvejYvWFRHS3FB?=
 =?utf-8?B?dWl1MWVoZC9TUjl1U0xPWlBmUDJBRTd1MmI2NjVmR2VNSkN5cnMwZ3R2bWds?=
 =?utf-8?B?WWRSclRFOWowVnc5YmUrM0p1QmFueXg0S2JDUUNDUUk3UEVoUHpubUFIN1Fu?=
 =?utf-8?B?OTlUZXkrYWVMNlRLM2MvNEdzQ1pPdk1VdHA5NlRnU1AwVWY2eDJZN0tYcUtI?=
 =?utf-8?B?cHdsVWVSdUdsK3FOSEJKbVRPVm5kK2FmbjVVaDY4SngvZTdjTXRIQkR3V04w?=
 =?utf-8?B?eUozYk5YY0F1ekNmRUZCMkdXell0MzVObFZNd0xhWXc1OE00VjczQkhibTBS?=
 =?utf-8?B?S0JKcUNLdVR5bGRORkZ4NGg5ZzFmaDhIZzlBOGphVnl6dlJFYnNldEttM25w?=
 =?utf-8?B?SE1tVFZwOG9WaU1KZkF5UGx5dzZtOEwyWjV3d3U5VUNlbk1kb25VcU93ZS8v?=
 =?utf-8?B?MFRiNS82LzlBOG1SeU00eEw0WVBPdUViTTRvRWprREI2WUJsaFU2Z0FDS21i?=
 =?utf-8?B?a2xlZUdsUEJMZm55c1c0djZ5SmI1eHNrNE1EOC81OTkvZ0NpQXU1dUNnQi9h?=
 =?utf-8?B?RUI2T1NJbVB5R3JWbzJGeWJTd0IxV2lreVF5dFd5T1VyWEV4M1JqYndlczVk?=
 =?utf-8?B?SncyM3AxeVhydlhGdE9VaWIyRFc2M0ZET2NDZWYxSXdIN0tJRk56Wkkzakxo?=
 =?utf-8?B?MEplanBsaHMzWHV6SzFWZFo1UXdUb1JLZGJqM21LSElYV0tRc25jZHEzVmda?=
 =?utf-8?B?ckU3WnBvWmw0YTZhZThhSHMyTkhrM3A4clZ3NlM5VWVxM0NzRFptaHhpak50?=
 =?utf-8?B?cmFScVF5UmpFTURMZEFFa0pYbUJUSGhEbzJVRFF6MWhERkJpNll5SjBrSzBR?=
 =?utf-8?B?RjFMdE5PQVYzaGxsK0M0RExNYVNtd0NsMVBkUFd5cTdIWmt2Z2YrSmlWUm5F?=
 =?utf-8?B?ekVyNDhtL1BvL0Fla2pPek1LTGV0UVRaVG9yUytQOGpjSlcvVjIvNTc1azU5?=
 =?utf-8?B?a0V0ZjNLcEF3QVQ1K25RL3dPMGtoSlMzMm5IWU5BbEc0VGtBNm52aDBPV3RW?=
 =?utf-8?B?Y0puOG01eXZXa1I4UDJleitMV1UzOXhtSlBxQlFpdXBOVCtKdUFQTm0rZGRM?=
 =?utf-8?B?R0RNVzFFR1V4Z0hOWHNHcEgrRktkUHdwKzh1MzhHZ2xwZk9UdDhmN0RaWHhp?=
 =?utf-8?B?VVdZQ1djYm43Sk1ySjdyM1d0L1Z2TEJOVDQ3MmRGYVhCd3RrT1BoQkhsa3ds?=
 =?utf-8?B?MVJ3a2p6R095VTFKa255ODZTZUUvdi9DbHJYTW5BSDRFLzRVcW9MQlY4d2Zi?=
 =?utf-8?B?WW4ybDE3YS81aUtqSlRiN2J3QmhtbnZ1cmg1NlNFR3VFanRUQWxldlV2bEpS?=
 =?utf-8?B?dUM5aTVwaFBvRFpjUWdEVWxYQUVKL0FNYzhVYll2RFhtNmN6dnRndEZ2aXFG?=
 =?utf-8?B?cW9scGNlZDE3dWw4aVQyRWFCOUdYTmRGUDdtNjdGUWNQcFFoOVV3dkVNRnlq?=
 =?utf-8?B?NTlOcFhXM1JnWVJwYVA2L05XeFNqWUdHaTdTdlNaYTZPeXhWajJ4VnZ6K1Bv?=
 =?utf-8?B?UFlYbHhmNmVzcGxaa3NMbWNFMlhaWFQyYjVDaXovZVdOT0N2NG1leUd6eVFC?=
 =?utf-8?Q?Aqm7l/zfR4JrZvbZdpj2g+AssClb0YWjW5iet?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a77ca3b0-38f5-45b0-7c25-08da2cea73c2
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2022 09:51:10.3691
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 kZ+NM9B//1RESmux1WGWWLjhDlgZknHyzF5Hed9p/YiYv+ikzei4CsVZmVu6HPZNF22MAlFGohkzERpoqKlejFb6OcCgoSrDqd5Icm6sGe2ZQ5Q/Pcqodl2Voy9BnzTI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3481
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 09:51:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56974

Hi Amahnui,

On 4/27/22 19:27, Abongwa Amahnui Bonalais wrote:> Signed-off-by: 
Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>> ---


Adding a comment in the commit log to explain why this patch is needed 
and what it does would be great.

>   scripts/docs_fix_all_html_css.py | 111 +++++++++++++++++++++++++++++++
>   scripts/run-docs-build           |   2 +
>   2 files changed, 113 insertions(+)
>   create mode 100644 scripts/docs_fix_all_html_css.py
> 
> diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
> new file mode 100644
> index 0000000..db99054
> --- /dev/null
> +++ b/scripts/docs_fix_all_html_css.py
> @@ -0,0 +1,111 @@
> +#!/usr/bin/env python3
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> +#
> +#
> +# function to append to the content of a html file below the body tag
> +#

Please add a comment as to what this script is supposed to to. You're 
discussing the implementation here more than the finality. We need to 
know when opening the file and reading the comment what this 
should/would be used for.

> +#
> +
> +import os
> +
> +
> +
> +html_content_dunfell = '''
> +<div id="outdated-warning">This document is outdated, you should select the <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org_&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=aRH3jUhIOsO6ovQMKiTHiW-F3Xwnx9HWg6yTF99QSvNBJXbkOkdzSNhwGt6I4zHl&amp;s=QnWAweVmLt12aTlVPVFZsjAeYelStsO_8RsqIskX0Sk&amp;e=">latest release version</a> in this series.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''

I would nitpick here and say we should probably point to 
https://docs.yoctoproject.org/dunfell in the href. But that can be 
fixed/discussed later.

> +html_content = '''
> +<div id="outdated-warning">This version of the project is now considered obsolete, please select and use a <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=aRH3jUhIOsO6ovQMKiTHiW-F3Xwnx9HWg6yTF99QSvNBJXbkOkdzSNhwGt6I4zHl&amp;s=XxAPqWFTh9XMmtK4eywrsIFkuOGfwEs8acOxvNGck2g&amp;e=">more recent version</a>.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''
> +
> +# <div xml:lang="en" class="body" lang="en"> and </div> are added to the html files to wrap all the content below the body tag in a div tag whose class is known so it can be controlled in the css file

You are explaining what you are doing, which we can usually understand 
by reading the code, instead of explaining why you're doing it which is 
something we cannot guess. Why was it not possible to just insert the 
banner in the body tag as a div before any other element/tag?

> +last_div = '''
> +</div>
> +
> +'''
> +
> +css_replacement_content = '''
> +
> +  font-family: Verdana, Sans, sans-serif;
> +
> +  /*min-width: 640px;*/

You can remove this commented part as it does not provide any context or 
help.

> +  width: 100%;
> +  margin:  0;
> +  padding: 0;
> +  color: #333;
> +  overflow-x: hidden;
> +  }
> +
> + /*added books too*/

Not sure what I am supposed to understand with this comment?

> +.body{
> +margin:  0 auto;
> +min-width: 640px;
> +padding: 0 5em 5em 5em;
> +}
> +/* added the id below to make the banner show and be fixed*/
> +#outdated-warning{
> +text-align: center;
> +background-color: rgb(255, 186, 186);
> +color: rgb(106, 14, 14);
> +padding: 0.5em 0;
> +width: 100%;
> +position: fixed;
> +top: 0;
> +
> +
> +'''
> +    # pattern = '^3.1*'
> +    # exclude = re.search(pattern, dir)

Useless comments, please remove.

> +def loop_through_html_directories(dir):
> +    exclude = []
> +    for root, dirs, filenames in os.walk(dir):
> +         # exclude banner for 3.1.x upward as it is an LTS release and is still supported
> +        exclude = [ name for name in os.listdir(dir) if name.startswith('3.1') ]
> +        for d in dirs:
> +            if d in exclude:
> +                dirs.remove(d)
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    current_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(current_content.replace('<body>', '<body>' + html_content))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    css_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
> +    print(exclude)
> +loop_through_html_directories('.')
> +

The function name is not really helpful, you're explaining the 
implementation more than the outcome of it. I should call this function 
if I want to add a banner for olds docs. I could suggest 
add_banner_old_docs as a function name instead, though other people 
could probably come up with something more meaningful.

> +
> +
> +
> +def dunfell_tags(dir):
> +    dunfell_banners = []
> +    for root, dirs, filenames in os.walk(dir):
> +        dunfell_banners = [ name for name in os.listdir(dir) if not name.startswith('3.1') ]
> +        for d in dirs:
> +            if d in dunfell_banners:
> +                dirs.remove(d)
> +
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    current_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(current_content.replace('<body>', '<body>' + html_content_dunfell))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    css_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
> +    print(dunfell_banners)

This is all extremely complex just for using a different variable 
depending on the name of the directory.

+def add_banner_old_docs(dir):
+    exclude = []
+    for root, dirs, filenames in os.walk(dir):
+        if root.startswith('./3.1'):
+            html_replacement = html_content_dunfell
+        else:
+            html_replacement = html_content
+
+        for filename in filenames:
+            if filename.endswith('.html'):
+                with open(os.path.join(root, filename), 'r', 
encoding="ISO-8859-1") as f:
+                    current_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(current_content.replace('<body>', '<body>' 
+ html_replacement))
+                    f.write(current_content.replace('</body>', last_div 
+ '</body>'))
+            if filename.endswith('.css'):
+                with open(os.path.join(root, filename), 'r', 
encoding="ISO-8859-1") as f:
+                    css_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+ 
f.write(css_content.replace(css_content[css_content.find('body 
{'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+    print(exclude)
+add_banner_old_docs('.')

Cheers,
Quentin

