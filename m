Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85089C433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 08:23:01 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.48])
 by mx.groups.io with SMTP id smtpd.web12.1740.1652343780204671915
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 01:23:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=BxaJ45X/;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.2.48,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoMS3ClvkZU7f2iZCBWbLQfjNJ0dSJLT+nczlTgnDCb2DXufQOVekvK8W/JgVgcwR2sWaMre2fF4/er1gsKibEjoynraGr751apBT4WSMB07wwBcY6XkF5j1raZODAt3kuKpdJvnD9Q6Gc5P+SeVAkA0hWTZTgNVdR7432UpzZYww6xop3Ao/FlV5abpr4bAFDzAyHTso7W8mgRhACu7m6JhC3EV4ia327Ot0WFLzM7tFBXY4/UTfB7St/hKvqWGkyev3VEnHPHiBnZUC2vf9IwDUsB4jyiw7q+Td2chgllcDzYA698WVAd4L0fR6PhO0I70aHJCrWQWaVzhDc35jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a08NQx6CIPYLg0maXAEE9Y0nXAm29lQwye19pk0hZTo=;
 b=oLO6A52L33yc4UzTL8wbB5/jkTFTIy7cNVBw+NGud+7dKSmlaL15YVboc/JvfDOnFvQQ2l8i2uMoxerzdMydJgEvz8bCHUkIqmYVXpUmAahK2X/tArw74lyHHtALfUpywPt6qDE7hoXyBdeEA4cIo1V6d3/F5lwA2kfkAmWnRuNty9IgwzulRH4ux1BbkaxQ4meBI3pOY3R3rCAhyNZoQkO0c7Pv8HPTfmznn4mReKkmr3wlEps3G7GFkZRdG9deBeuVlrfkiumFcgvzu4oLpO2/HnSgSlIUHPI4o/XM9sV0r73mHoEt6nHcv5eM2K/SNUdR/Jraa8BgHxSIs7iMaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a08NQx6CIPYLg0maXAEE9Y0nXAm29lQwye19pk0hZTo=;
 b=BxaJ45X/j1+RHXTLmBy52NerQhlSv0jO+NuYAZwkQkK7L5hlZQAW/D0nVFFkQQjfMYG3SEko13VRdVRt/M2a+P8X/Pp08sR5eEoCyhaMpJ8Ne9Tu5gtXoPsPVG3gpIR5ez9MoOPWRxb3AScK7lydKVchOuktxx4kiIsRuGt/nxo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AS8PR04MB8611.eurprd04.prod.outlook.com (2603:10a6:20b:426::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Thu, 12 May
 2022 08:22:56 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 08:22:56 +0000
Message-ID: <3a06bba8-c9a4-7068-1fb0-d737f1088a47@theobroma-systems.com>
Date: Thu, 12 May 2022 10:22:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v14] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220511162013.26471-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220511162013.26471-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::13) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13807172-d738-4bba-6fbf-08da33f09dfc
X-MS-TrafficTypeDiagnostic: AS8PR04MB8611:EE_
X-Microsoft-Antispam-PRVS: 
	<AS8PR04MB86118C215593F29155298B4BC2CB9@AS8PR04MB8611.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PZ/o2le6ko3sYQdpfrq4fSBTlpPGYFHNP1XCh9CqE8aET7lSxaicmwtJU7ARR8XTlvUBmpZKvV6SO5DxNmOnaQpIMTcU0UaFJYFk93piI0BskCRyFCn+1IfoiFk7PMEJPi8jftJyEBaRvSn+ZW24Qd5bdWYfH1x00e8EnCsa2OzRS7aJtXlvfuUhDSX3dICwAHTKImBTNZLxzr0cts/dAGxlKhJJscsGYHgpxYYSkPvI6o85qd2TwOwiN6zZmy0nAXT2DFDydZAVVgsTKLJLoDBHgFNNUqGqmYr160GKQflj1UbPLIKAFFSBJtJ86YGo230qTge6e9NaEvjYTE9rDd9xKCxmh8OlJO1pt4PTBemQEM3WgyHQ4hJh/BgUWgD6DdVWMrpxuM9vEibJstLCSJazQH2mn3mzhrckF58haAkqhZ4dO+jrHHY/jNNp4N74qEni4AgGcP+sLtONKLgtNGzwNzZ8UGN7m3PD6Gaf7ips0Ol9R0CEl4o47me1YMPNYUYkwHiJkjqEalH4aRqGtIiy3gvne3w9upvxJgCZ+LiaxjvXiHP2wpnw60BO0ROS86NZiN0353a2xDkq0yjaNWFGbQ9Hqm98nX6MJlB0FRbTFPcQj4H92lFCqiFK+W3XfrVYbQWNu/tg3zusu5+EGtZFMUWjpZCz+eA6DX1tBwJIwBYywzA5WUNibbnbYcA8/V42FCXxTiwpmYskG+KjPTnZDEqi7hu1i7InkcCgUOJ7uMXdUJHwhm/X7iF70b7dJmXvtfq3B+yH2sHH+FkTRY0jDd+GRS1m+9IRg243y+51hLr25xU1KSIe9nMkg/m+YYifgyz2fJdV5/bePXC1H7QdbSkcsmV7o78WbBJoyMY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(8936002)(5660300002)(508600001)(83380400001)(6486002)(8676002)(53546011)(2616005)(86362001)(6506007)(6512007)(26005)(31696002)(2906002)(31686004)(36756003)(186003)(66476007)(44832011)(66556008)(166002)(38100700002)(66946007)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZTQvYTFSdWtxeHhBNWFnTUZjcngyUUZYVnhncGNrdUU0OXBSeGVnNHdQdWp2?=
 =?utf-8?B?aTJOY3NOT042L081dDBOSnNWTE1maEY0ajlMRHpBblNWcFEyWVluZ2tMS3Nh?=
 =?utf-8?B?dWFGbjRiTXMrOW14RHdYcHBjZ01lTVo5OFNBTXoxYmNWNVczNER6YzZaNzNH?=
 =?utf-8?B?enVrUVVZOXlMT0JnUGRxWE5LTDlXeFpNMUF6RVJFMXFaWGFjQzFGWDQxMit1?=
 =?utf-8?B?cWo0SzRYVWVBbWRacDEreFBSaVNySHN5N0JkQ1NwZE9rd1dJd1I5ZnU4L3pm?=
 =?utf-8?B?ZUozSE5YeE11U1BlbEUxZ3FsMUNLdGROcXNGN3ZPYmxYUWNHTVorWXIzS0I4?=
 =?utf-8?B?V2tkR1QwZDU2T2VWQ0I2azAvQXlDMlpySEU4RlVhUXUxVSs5TUFPN3kxYmJV?=
 =?utf-8?B?TktTamFqKzNJa0xrOTNheDJqYmllZXlxY0t5M0haUkZnVWk3MDdEUnoyRkph?=
 =?utf-8?B?ajZNaGRsSklwcE1FVFNsbzZTRmxKTWY4bVNhcFdKREF2U0xrb0lTRThwZE5j?=
 =?utf-8?B?M1NuQmk4dnRhQlRKRzhub25SaXR1SSt0SUZ3S0ZzUHpqZ3pZOHZmayt4aWxz?=
 =?utf-8?B?aFdqbXQ0dlBGZFJJN3BuVXpPWVNpQnF0NE9GR1pENUdabStNQnE0WjRUZGNT?=
 =?utf-8?B?RStRODhYKzQ5NWFZQmlSOU41VCszbFdFN040NmtvcU1nS3VYemd4MHFnWUlL?=
 =?utf-8?B?VGVwY0ZuMFpWZnhsTkFYK1djQ0ZaUTExWmQ2eGFsOUk0UGhIbDlWbGgwd2RV?=
 =?utf-8?B?TXpLNlJhT0R6VUFaQmVLdCtHZXpPVXZiMC90T0ZZdVhwT0xEcmc5NHE0UmJF?=
 =?utf-8?B?Mk52aFdlK1NVNEZwM0ZxWkpzaG14bXVZSHFVUE96cUplSkorQ29wZHh1ZmNv?=
 =?utf-8?B?Q0ZneEZuUE5QRkxWMzA2SUR6UDhaVGFUVXBLM1hQUFNSR3VUcGF5ODBwSXVN?=
 =?utf-8?B?amtSbWM2R2dCak1SSHdLdmowWHZITEd5Y0loV3lub01xSll2Uy8weE1zSm92?=
 =?utf-8?B?SlBoRDJFY3VveWQ1S3E1SDBCVERPRy9OUThtelMvS05zZDdmYkE1dXNxY3RB?=
 =?utf-8?B?cUdjRU5wVVVJT0hCR3dsNHV3bTcrVFYwODZIYjBrMWp6SGtUWlJGRDN0elV2?=
 =?utf-8?B?aDBNQ0ZiakhCL1VQZnpjem1YTkt2Qk9CckpnbERnLzQ0VVg0YUg4NzRhYXp0?=
 =?utf-8?B?dmhYY24zL0s4Z1NEaDhLT1FSbFQzT2dnRnhWU3pSeTNQK3lIV05LdFAyRVZu?=
 =?utf-8?B?Z2tPdUFBdUl4WitRRk95Q1FWZlRaVno2NDBoUUFhNEx5bHA3MEV4TG8wUkhj?=
 =?utf-8?B?Vk4vV3c2K3Z6ei9Mc00reGZJb2N5bnFzbk4xOUEzZm15YVc1eTVzTk5xa1I3?=
 =?utf-8?B?bzNYb1oybUx1bG0vc3U3VnpCZzZRYU1QMnl3TGdsMWI4TXIxbzhnSEFLRjdt?=
 =?utf-8?B?MDU5V1dlZ280bnZUVjBDeTVkNWRYUXNSbTNwcmlkNHkvajFSSForSzVHNnZK?=
 =?utf-8?B?cVlXVVVlYXNsMXFmUndXUk9OUDk0Q0Zad2pkcStSMU1DUS82bk1qNjhkZ1Jv?=
 =?utf-8?B?NUFHTHVsZWxjaHJvUGMrYVQ3Sm9DZnpReTRSVlJwWDI5VzhCVEVLeEJaUHM3?=
 =?utf-8?B?dVB3cUNUOVhwekdVRUNwekFDM3lLNXVjVHRPRVhkYTlDNXh2L2U2QU1ZRzA1?=
 =?utf-8?B?ZTd4TjJHVzYvVzNxaGhPOEE2MGZPeTBPN09rYmZhS2l0eHZrVUFwNWxtMWVh?=
 =?utf-8?B?NHVZY3Y0QmFuaURGOG9jRHNtd0REcFZLNkIvZVkwc2dza2d6aGhiam0vcjlN?=
 =?utf-8?B?cGgyOTZyUFM3VDhOK0FrQlVXRmxqVVNZTCtnT3VqTVN2aGRwRXltUE52Rkxk?=
 =?utf-8?B?aVlVZmtmdWFnemltN2JtelVWV1NwenIrVHZERmJIREZhY1ovTkUyQWRpQm84?=
 =?utf-8?B?cm1mYlF5WFF6SkhoQ2QySmFmSHVId25hZWNMY0pJR1hIR3RpM2FqQlpiY0R6?=
 =?utf-8?B?bTZEYVUrRkk4a3RoOHhDQkF4SEJqSTBzUUI3dDQ4NlRFSDVxdi9Od0JzelRl?=
 =?utf-8?B?RkVWYmVmMlNkN1IvNFNVQWpnZVBBN3EzM3N0OGprMi83YjdFZDdvdFpxdFpU?=
 =?utf-8?B?NU00WUhpbWZVTVM5WnZTL1MwK3lZcC8zanlaWHpYZnc4aXlKQjNyTVdBZDdX?=
 =?utf-8?B?akgwZlY2KzM2Y2RpUnFtNmd0VjJVbXhIOHNVdWtBZmZpMjAwOXZYeTE0dTYy?=
 =?utf-8?B?bmZ6NHpXVDNzVU8yMUdGUk94TnU0ZmtQYmlnTmovOWlxUnJOUThOdnJxL0Rk?=
 =?utf-8?B?WmdaZmJ0WE5PdmZ2Vnd1MjI3Q3VoRkRDWDBCREFOeitSRGNMVytvMUhqMUpU?=
 =?utf-8?Q?OOTCmEZrMpuz/yR6iwsrgQu92Cn0M9gwNYFXn?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 13807172-d738-4bba-6fbf-08da33f09dfc
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 08:22:56.5205
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 gI61EaPBpAcRQ/sQ5azVXZbdxvlpRae/oiTaKCo3mEZpZx3+CMoA08UXJPB3KaV/fZpus50mEl2y6UcleNf6tTJtRVNxPFeVYRn1Oav12+lX6E8y8bxtjYQF39qjY4hq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8611
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 08:23:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57062

Hi Amahnui,

On 5/11/22 18:20, Abongwa Amahnui Bonalais wrote:
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>   scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
>   scripts/run-docs-build     |  2 +
>   2 files changed, 86 insertions(+)
>   create mode 100644 scripts/docs_add_banner.py
> 
> diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
> new file mode 100644
> index 0000000..0de70d0
> --- /dev/null
> +++ b/scripts/docs_add_banner.py
> @@ -0,0 +1,84 @@
> +#!/usr/bin/env python3
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> +#
> +#
> +# Script to add banners to the old docs and outdated dunfell docs
> +#
> +#
> +
> +
> +import os
> +
> +
> +
> +
> +
> +html_content_dunfell = '''
> +<div id="outdated-warning">This document is outdated, you should select the <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org_dunfell&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=xspfpkyH63qFQQQp96oYOYMRmeCb2qN8EPL-Mg_2xWO8ezjLW-hM6CpF7qLR7kG_&amp;s=UBdsIAcJa2McGNBMMmKe6MhoYlnfQZ1-jHZeTYFTK3E&amp;e=">latest release version</a> in this series.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''
> +html_content = '''
> +<div id="outdated-warning">This version of the project is now considered obsolete, please select and use a <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=xspfpkyH63qFQQQp96oYOYMRmeCb2qN8EPL-Mg_2xWO8ezjLW-hM6CpF7qLR7kG_&amp;s=beF_7R_KmlzLYmX333Fp0Gh2TY6lEFqk2Pg08I9XwOY&amp;e=">more recent version</a>.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''
> +
> +# the class body and the last_div are used to make sure any .body property existing in any css file is not overwritten

Not quite happy with this comment as I still don't understand why this 
was needed.

What is the issue with "any .body property existing in any css file 
[being] overwritten"?

I am not going to fight it too much as we really need this banner and 
the files it applies to won't change over time, so it shouldn't actually 
be a maintenance burden. This obviously is a maintainer choice so I'll 
let people with veto power decide on this :)

> +last_div = '''
> +</div>
> +
> +'''
> +
> +css_replacement_content = '''
> +
> +  font-family: Verdana, Sans, sans-serif;
> +
> +  width: 100%;
> +  margin:  0;
> +  padding: 0;
> +  color: #333;
> +  overflow-x: hidden;
> +  }
> +
> +.body{
> +margin:  0 auto;
> +min-width: 640px;
> +padding: 0 5em 5em 5em;
> +}
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
> +
> +
> +def add_banner_old_docs(dir):
> +    for root, dirs, filenames in os.walk(dir):
> +
> +        if root.startswith('./3.1'):
> +            html_replacement = html_content_dunfell
> +        else:
> +            html_replacement = html_content
> +
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    current_content = f.read()
> +                with open(os.path.join(root, filename), 'w', encoding="ISO-8859-1") as f:
> +                    f.write(current_content.replace('<body>', '<body>' + html_replacement))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    css_content = f.read()
> +                with open(os.path.join(root, filename), 'w', encoding="ISO-8859-1") as f:
> +                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
> +
> +add_banner_old_docs('.')
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index ecc5332..307ac19 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -37,6 +37,8 @@ cd $outputdir
>   echo Extracing old content from archive
>   tar -xJf $docbookarchive
>   
> +$scriptdir/docs_fix_all_html_css.py

This is not the name of the script you just added above. Please run the 
code with the patches before you send them :)

Once this gets a v15, I think it's in a good enough shape to validate it 
actually works as expected and then merge this.

Almost there Amahnui :)

Cheers,
Quentin

