Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EE0C433FE
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 12:25:33 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.61])
 by mx.groups.io with SMTP id smtpd.web09.3378.1652358328553393350
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 05:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=KRIzOygc;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.61,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W9XdzY31IlDsoTHCX8R/YKBUacQ4ZP3xHMa2AHurULQt/IGZ0KlMAbG0D8CnY4wWnmw5P1Dz/8+Lv5GxuM7z4NIQrzaQ9MdEdg0DcSdyr+F8AnD4KucHCU9V9+mqydDntuPPSk2NII9KeQvNUtFN1wWC/8AgrDYKBYklasMb+ywkNJUsGdC64iMsYRZV4Eo7WxScnGoxzSKZMSR0onnbKbcbtOcqp9Da6zw44uhvTpY6fMmgNIInaVMyeno2eqW5BcGsFkf9bEGgNtic0VtZXMWw20i/13GJR3Au1lU+FjmPvuYl/84Vu4+/ag30XpJ3gSqL3ilLLH3rq+Jl7WrjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KXwizC2daISbpQX5brXs+FGvqdFXjD+pD1bRRj1eYKU=;
 b=ePKiUL4USBZuOG4IB8GpZJI0vv6CNwvJZO40ljzHypUD8/39mMK3sjhFbz4Z498rmx7Zq9HmD53diigZ1EghTyG+c3AG2CsnPj7yz2pkiYk2vhbWu5M+Ow5kGwvh34HxeLqJ8mDjz60cBWIQ0bv9mkYSD3xWd4ioPKArOZQDWBv4i2Bi8QrfZ+QiIepJ0mDnWOXoS4trcnaU8nxFp7VEiNGEnW7fMUOtM58eoCtlsYXm5jUiSBrtV1ij6Ki52SLqbwss5zfsKH6VTLdOQGCkN4kuSbBGLwjfk2RDV2X09Pkr2o58tyi7vDPI8nHWZennMMX6Qumln5I+K4GqawLNWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KXwizC2daISbpQX5brXs+FGvqdFXjD+pD1bRRj1eYKU=;
 b=KRIzOygcdq77sETlZnxuysgHjlw1eF9tco/1wc/oaK4fu+8YvW0e/Y4lgFcQDFslxouZyNH0P3uq2f0ARWU0wIH8id14cZIZZpn6gz2wXNIfHQsAYKI8uZP4kiTThK5RNLfhL0umfLfrj+FdP/Wm4Q/EZP9m0yMD26G70vkDLxI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by DB9PR04MB8235.eurprd04.prod.outlook.com (2603:10a6:10:243::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Thu, 12 May
 2022 12:25:25 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 12:25:25 +0000
Message-ID: <b3be353e-1192-901c-77e3-bd18423b1034@theobroma-systems.com>
Date: Thu, 12 May 2022 14:25:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v15] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220512114540.28586-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220512114540.28586-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR04CA0155.eurprd04.prod.outlook.com
 (2603:10a6:20b:48a::29) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 925a313d-9082-4269-86be-08da34127da9
X-MS-TrafficTypeDiagnostic: DB9PR04MB8235:EE_
X-Microsoft-Antispam-PRVS: 
	<DB9PR04MB82352639BACA96BD92E67D5EC2CB9@DB9PR04MB8235.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tk5UC6Fnt/nvkCvCw3S1KZyYC7WJDLFZongxm23/Q3QIVy3ggQZsebDXBIMl2/00hB/mI31wDZVJbGYzaLfI15yI11FZjY/mlLSVoKwClRckZS56JLghb7zx+0vBrZcmC4L2UsvRtfOKXNfAUQP6UEDUAnrh1NK+Mg17pacsSIelge8VozrhKTPRqSZrhVM4cH/54Eipxp3DyBKs+OjbVajG+ppJdPtYwwfUoyVB9TL5jBxO8ME07/VK80xMCpAsEYszQlBgb6HgVXRih4mamhf1tBsPUZOexAwX5BPX+J1bFwtH2BI/egkfYQ264BiXg4WEFR6fgE5+9tRs3bvh4LYFNy4r0gd/gw4TUKiaY2YJBf08hfc74+/iRh0KW8PJhqDz1MeFsPEELnvKaR2PdOqfTPx66b4ch+m4YQtqkaGLTG2giz4pxKZw3F+yoOFaXcm2XXWV9sIafk6S7Yqzx6N69nTnJbuhVgpOygV/5OM26HMPO+2EGxhCcF92bkLCZbLs4wE3peTikntCQgikyVqVvoErviBWYFp8SzW66AWPlGuiOBD2t+vwvAUGKi7HBDOBFn3cuPkye/xXwlVmuY0TN4q+A5OoOQkVl4npzeUzfkKtCcOLxP7R6k5o94Cbl945m7znnHEi8f3PB6PeVHFzAriLA0rF69gBgD6QorRZwBV1jGblV1TpGirWBp3GtE++tQa7FG1dawIh0AwktRCij/YyUiBKUVGZmqJ6EZWYeJCK9fLu34dZb7V7Jx/A7taOG+5IfbJqLR0aZ5PPjUhLzI3byR2UV9pYmosoJRfXtOrlWeHu9K6A/sEthvyp93plqxrrzvVwiBzagh87Af75k7Em2GvqcYne//BQD+o=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(26005)(6512007)(2906002)(6486002)(966005)(186003)(8676002)(36756003)(316002)(31686004)(2616005)(66946007)(66476007)(6506007)(66556008)(166002)(5660300002)(8936002)(86362001)(83380400001)(31696002)(44832011)(53546011)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NnFic08yMTB1NEVXWkowc2E2UUtVb0FFNE1Hc2t2QjhwSWw1RURsYU9QMkxs?=
 =?utf-8?B?WmdCL2JPL3dHOHYzb3Zmamh0MllDUERCMFNOUklqK1h4a0tpN1RQOGJwc3dp?=
 =?utf-8?B?V2JVM0FBNzcyelNvM1RhVVJhZEt4WnFqMTBBRTdJU0ZnR3lKMjh6cTNjN0Fn?=
 =?utf-8?B?TnZaeHAwQUJUUEZtcmw1S0diNmxmWE1Ld2tycFpocHdRVytNMitxbjBvVGJN?=
 =?utf-8?B?Sk9VVjF6Z0poM1V6RlBZMkRTOWF6QlpHb3oyS3VoUzQyckVDQU1ITEZJekpi?=
 =?utf-8?B?Q3AwY2hYVkhZS0FsWUVRM1BPeDlZc09ZVVk4YzNRckhnMkd1aFRxbXBGRVJv?=
 =?utf-8?B?dXFWRVMwK1k4eWJSOW94emJhQSs1aFQ0am5pSStEUXZPcEh0dC9mUUU2aEQy?=
 =?utf-8?B?YlBCYjB0QmRvTEllY3dYb24wYmtoeS9Xb2I2TGREUmtaT2djV29oSU1RYmJR?=
 =?utf-8?B?dGgrRVpIYUdQQXpSTVp3NFlRUG53NHoyVkVFbGcxdjY1RVBNcjNHaU5hemhE?=
 =?utf-8?B?TFVRb3VLMEZTNm93aEVmK3VQYmVmenRLU3E3WGZua0h5ZnYwMXZMQ3M2aThG?=
 =?utf-8?B?RVRYSThCOWJoSjh1Y3MxWXE0Y1BiMzQwWHZOKzFTWnpnT25KMmI4d0ZPNmVO?=
 =?utf-8?B?eW9mUjk4R3VPb05wdFVkanRES0lSYml5WDBUUTB2TytSeGQrRHBGNmF4UExJ?=
 =?utf-8?B?Z0paRktxRG9mREJ2TlhlL3JISlptaHh0a1hCNE55NU5MWmZud1ZpOUp0Vndv?=
 =?utf-8?B?Vjk3NWxSbktZSkpaTXh1Z0laY2VzekhSUjBUYSs0cC9zMjN5cWlYYkd6cStX?=
 =?utf-8?B?M0x4am8vQlozQVhZQmd5YSt0R0Q4YStYWHlmeWJWN0c5QWk2QUR2R2RDa3ps?=
 =?utf-8?B?SmZhdUtLOTVaRFRBZHlDdDhUK1BkcFZaUjNMTkJBckRXN0xJN0lJQkVvZHFK?=
 =?utf-8?B?V21Ib250bng3TWx6bkpTQTBES281Vkl2TFlJMHlCME1JcitJRE9hREJIdEsw?=
 =?utf-8?B?M2lUaStkV3FTaWNjSWl6T0pYV2NzK2w4Ykk2ZGJKdURuU1M0TkdKd0hDZWZm?=
 =?utf-8?B?aHU5NGZ2Y2hKTnQvN21RTDJocWRkdkdCT3VwbzJNQmNWakpvVEw1dWFIMlY4?=
 =?utf-8?B?aU1vMk1oWDFXa3gvaGRYU0VLRHBCTGEyVlJvKy9UTUFjRzRQNWJCMCtvZDVG?=
 =?utf-8?B?WnF4dmQrVGhxYVhrMzZDTVM5dnBKZngrNFl0MU9KZC9jZk54ZjlTM001YUo1?=
 =?utf-8?B?eWp5czZBWFEvVUVIVjdsZnA5ZHZQQnN6bWgrYTc0TC9LQmtEVWRFa2RZZm9a?=
 =?utf-8?B?UlZNU2Q1L0RRTm1oNjFRRVNPS3J0MmU3NjhQRW5zRE1KWTQraTV6Q1p5Lzhq?=
 =?utf-8?B?clhFKzhVbExmVjRDQmJBUUcrTGtRZEpGNDdPTW5RRjRpOElFUlBtdFJwK1pq?=
 =?utf-8?B?NXVUaWlkMDdVOEVFZFVjTnA0MVZNR0tXUUprcEM1UDZLZzB4T2FvUEhCNlNH?=
 =?utf-8?B?VndCY0ZUZnh1bTJ4VmFCTUM2Zk5lM0FDOEhxdUpqVC96czBhMm9VT2QzdFJO?=
 =?utf-8?B?bUh3Snd0VGJNOEJlaFhFOGlPYjFvZjk0empseDZES2FURm15THR1a0xPZndF?=
 =?utf-8?B?alBlR3NvVEM5cjR1MVZCc05aTG5hUmZodVhqUUY5bURDYjQrRGNFSVdlMnNS?=
 =?utf-8?B?SlFjM24vV2JTUU9nRUp5SW85Zzl0SzFpcy9FSVlkQ0gvOS9LZEhJb3lWdXpx?=
 =?utf-8?B?YmZVSDZWaWpBeUpnL0RPdEtXZUpWTEp5djlVMHF0T3JkbCt4MGNlbnE5OTNE?=
 =?utf-8?B?N0YxcnFyS3pzWVQ5VFRLcUNUTTZrZTF2dXRTeTJ2SGJnL0ovVi9TZlgzZGJp?=
 =?utf-8?B?dWlKU2xVbVEwQnJwVDJMbW1HWHFiR2ZoeW5yaytsTzAzWWRjU3A1SEhhN2di?=
 =?utf-8?B?U2txYjVtdFhwVGcrUXNXeUVFSisxWUNBTkdWdWFVenpxMmgxZVlzaHRuekZY?=
 =?utf-8?B?VnZvV3dNb0RLckVJUlNSTE1uV2hHbERyS2cxZDFPMkZnOWhTNUg3TFdnWktu?=
 =?utf-8?B?cjVPbFB3amkybStyOGtvTmp1MVFMdzRjNjEzeXRTcXcranVISG5VaTVuclVp?=
 =?utf-8?B?K0ozMDh6QXVsdWRkMzdGVzBaLzgxWm9IRGVES2w1SVU2LzROZDY4UWwvVEpy?=
 =?utf-8?B?THBDL3BTaTdEc2NRZi9ocTUvZDFnZ1c0V1JQM2hXZm5GenNwL1ZTa0x3eHND?=
 =?utf-8?B?blU2WUhYaFFMalBLYlY0QUdja1dKeWJPZ0FKR0xOUUptOEE5Qm9QNEtXWU9i?=
 =?utf-8?B?Q21yampTK3BHTXJLbVYrTHRwNFpaOGVNYXJkMlNZV2tDMExZdnJFbmxZbG1r?=
 =?utf-8?Q?q6XR9yQc8LAcSKukb00o4Q4JMUJPU/lWRVMvs?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 925a313d-9082-4269-86be-08da34127da9
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 12:25:25.2560
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 zV88/VGnglMni0BmHfkEtxuXUNiTza5MkwJ33CwwM2yMxMKYv/O5Lv96HIjalUhIvMSRo2rkqx/CCrHab2CfNdiGqumLKGPAYykc+hr4rJc991avgyXvEY1cxgekHDJD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8235
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 12:25:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57068

Hi Amahnui,

On 5/12/22 13:45, Abongwa Amahnui Bonalais wrote:
> Script to add banners to the old docs and outdated dunfell docs
> 
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>   scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
>   scripts/run-docs-build     |  6 ++-
>   2 files changed, 88 insertions(+), 2 deletions(-)
>   create mode 100755 scripts/docs_add_banner.py
> 
> diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
> new file mode 100755
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
> +<div id="outdated-warning">This document is outdated, you should select the <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org_dunfell&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=ECrUveRFbGF5T0Oqpl6f2-OWDNw3UBPMihRbRBPAEgKjNmvQtQBNtL5WF4JzoA3Z&amp;s=mqGqi5kMdquK3v6sCE3zHkCmW172k8NU3sMlC8mnRyQ&amp;e=">latest release version</a> in this series.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''
> +html_content = '''
> +<div id="outdated-warning">This version of the project is now considered obsolete, please select and use a <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=ECrUveRFbGF5T0Oqpl6f2-OWDNw3UBPMihRbRBPAEgKjNmvQtQBNtL5WF4JzoA3Z&amp;s=7aPHgsTb1x0FA1MPDujXji0P-X6YAQjBTIqsLrDhy38&amp;e=">more recent version</a>.</div>
> +<div xml:lang="en" class="body" lang="en">
> +'''
> +
> +# the class body and the last_div are used to make sure any .body property existing in any css file is not overwritten
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
> index ecc5332..afff62f 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -18,7 +18,7 @@ set -x
>   builddir=$(realpath "$1")
>   ypdocs=$(realpath "$2/documentation/")
>   bbdocs=$(realpath "$3/doc/")
> -docs_buildtools=${docs_buildtools:-/srv/autobuilder/autobuilder.yocto.io/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+snapshot-20201105.sh}
> +docs_buildtools=${docs_buildtools:-'/home/abongwa/Downloads/x86_64-buildtools-docs-nativesdk-standalone-4.0.sh'}

This line exists so you don't have to change the path in there.

>   outputdir=$builddir/output
>   scriptdir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
>   PUBLISH=${PUBLISH:-1}
> @@ -31,12 +31,14 @@ $docs_buildtools -y -d $builddir/buildtools
>   
>   # Getting the old docbook built docs from an archive. Not rebuilding them.
>   #wget https://downloads.yoctoproject.org/mirror/docbook-mirror/docbook-archives-20201105.tar.xz
> -docbookarchive=${docbookarchive:-/srv/autobuilder/autobuilder.yocto.io/pub/docbook-mirror/docbook-archives-20201105.tar.xz}
> +docbookarchive=${docbookarchive:-'/home/abongwa/Downloads/docbook-archives-20201105.tar.xz'}

This line exists so you don't have to change the path in there.

You should be able to start the run-docs-build script as follows:

docs_buildtools=/home/abongwa/Downloads/x86_64-buildtools-docs-nativesdk-standalone-4.0.sh 
docbookarchive=/home/abongwa/Downloads/docbook-archives-20201105.tar.xz 
./run-docs-build

without the need to modify the two lines above like you did.

Otherwise, tested and looks good. So please send a v16 with this fixed.

Thanks!

Quentin

