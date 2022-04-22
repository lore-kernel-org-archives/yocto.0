Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35E7CC47082
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.79])
 by mx.groups.io with SMTP id smtpd.web10.9614.1650640054060497495
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 08:07:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=m2qE43sQ;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.3.79,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vp09MaeNdE1wm69APvYky3X/gsaYVnOmwBKS2QN1qJ4srLFmjFU7TG8ng83nqQGJZs9FI0P6BZxkDbL5N+TcjhMzWbPNquENUJpKOe8Or6bcm2BUhEAIASHeGohEpwKYVDsTiAD3wp+nDzWeRf/XRPZiMa6x7xuhCyXBLz21FFrAT15sI3Y29alzRtfqqR8o8UxB1b9crpeJjzoVihcqHUHutpFP72kfdW31t/MN3aZopMHWWj38kUajp9MPPfN68TEkxIWUbIxLPuE+rrtzVOG8mqV5M4nKxc2HTs7+dzd2tM/wNAhVealc4jSRIq2UXycEPzgw5D0IbOlLqXgLjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9xTLeFKJLq8yRDxOyNluCA99OmNMY0otuAwS9Px2Cc=;
 b=htsJ/S3vBil0vlUrRLpO8oeBdsaYea0+kgfncQjNNqvgezHk9oDbeW88/fDNP3CePp8NRsEppg0Adof2thiDa8XgWfd04IwjALBheTG86l9ietkPTJsXuXJpRis227IXQj9xob/wMVQYTR0aCbYwllN0k9pOKQWO570QE4P4KBlBFwq9VIIjLaFXmdupjpDCbosHRB90kM0c40zSC3vTJUt40t6mttn8bBD0u+UToBkohixuIsP5R3iVNwF9WRkuB0kn8gVE1OOrvblszdC3ejNPeAWU6RuRyJ0ivElk1+YddjtFGRTxyLszIjPO9wtWh2DvmIa4qygFeugw2mQkNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W9xTLeFKJLq8yRDxOyNluCA99OmNMY0otuAwS9Px2Cc=;
 b=m2qE43sQzYMMlIrNVPXbJdtR8Jzayik1KPehmzR4mROBeAUEiW7DUt4bsNaXk2zc2xTaurHuleJOa6WmG+3c+nhLfTqCGIyAj+rLou8R2VqQPjTwGjIEQBKa/SJ2d3sbeHapKLqh8dxFWPNVVIVBOZNuG3l7vu5yzcKcbAlCbaY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR0401MB2254.eurprd04.prod.outlook.com (2603:10a6:800:28::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Fri, 22 Apr
 2022 15:07:30 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979%4]) with mapi id 15.20.5186.014; Fri, 22 Apr 2022
 15:07:30 +0000
Message-ID: <6b603baf-5fea-d48d-a7be-f9e3595f4ca0@theobroma-systems.com>
Date: Fri, 22 Apr 2022 17:07:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v7] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220422144618.62193-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220422144618.62193-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0204.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::25) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e6d2e5a7-aabb-4547-56ec-08da2471d204
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2254:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR0401MB22543168E3AFDC35F5A703F7C2F79@VI1PR0401MB2254.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7P7g7xPJzJmJmgGo/pW3FUf5cFPAcmTWuhMRsiOLAUroKHYKhexAg0aDkvJIAgD0IIec/ODmY+2+gEqB7cm2Fwr2eXIJWZ51slspH6allEU5HISepf7piyg8sMPIkgTEPNM1946R5XPxI1nkbYnuxlE1C12jUAW4vdjD901M5zG4ITRc67fKqaFAuyIwfmBSUQqni83q2mYifWbT75ucu5I90ydXPOc/ZQ/F3G3Z8JHObvk88oJWkTj+4T2UFaQgGaZexp0JwWXvXSyn/7505TYbrb0tx3iuld/WGg/0foJkGKbcU8547wFi+wnQhPRpilOv3csckW8ZnyYS8hIu9XroF+akFDfxmYx183Fo38dJh6gD/IDyZcEGnu9BE4f2yEIAa3IiHagkX34KZ4Fzn7CpcJEZkDIl8lJdggFNScMBCVl9R5gXWQwkuu1xswLNUsichX6f9hX+gF+eiHs2iN+KxKssEH+mOa9WWGY9oE42D7Z33npM2VnYn7CHcSemvY+FYLyiPBrZcUzoWtxHxdfPBZJv6qqHdSQE2Z+VMVOeZGlPcUtL2ScHazrwBNkjMN/TJwqC2X8WeiLobGVGppKpALzwzR0dzdIDPziBpJHMDGI2IrNRfPXxOj2x9qI8UnHCW/UMprBouvKKfphXCB/asu/dx6bmSBznyiKPG+OM1v+3uoiO0sqbt0bwybdiMJ4avddYLgyJFnjOwTGCocEvkUq8iLwgIFdfAEP9CSV9qaMmOvCTlXpu4+I2h46n3uankox1olWaEGoB1YK8TjsT49hGkIWAH5MFhWvsN0CN1pcIdLlyjTX6rHS6R3iLxXPyKU3Z76qaTpGuu211pA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(166002)(6666004)(36756003)(31686004)(44832011)(8936002)(6486002)(316002)(966005)(53546011)(6506007)(6512007)(2906002)(508600001)(5660300002)(38100700002)(83380400001)(2616005)(66476007)(66946007)(66556008)(8676002)(31696002)(86362001)(186003)(51014002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UXd3YjdlZUFjRS9iNW0zTm81RmQxcDFxODdxT3RkTGpPUUVmRUNWNTVDaUxJ?=
 =?utf-8?B?YzBMY1JwNkVkYjdoaDFCb1RxTVBUMGVzeEdVOVkzS2FlZWxiaDBySEEyREZL?=
 =?utf-8?B?NUllTStQWHVYZnhWVG1hMGVRb1ZHZ1NadzkrNTZKZ2o5ZU1uNnlvMi9GTVlv?=
 =?utf-8?B?ZENMV29pZ3I3anpodG1ZNU9nN2FreFdDZUdIN3owV3BnZE1uZENaR25mMkZz?=
 =?utf-8?B?ckZrQXRwMUhKOHRhU09xKzNualNwSmJ2VUR5bUFlOWIzck5tV05lT29sbTVC?=
 =?utf-8?B?OVd4YlpwY1NPL3gySlg3cVJhWTlqVlgwRURDZDA5ZDRTRVBDWFhSZU9mS1B6?=
 =?utf-8?B?QnBkVzFaWU9zQTIvaEpvUjVSSDdrM0V3ZDRxNWk4b2JEWTY0Lyt0enJCMUJU?=
 =?utf-8?B?N2Q2L0dZd0J4NkMxcUZpc3AvU1hXcmRDYXFuUXg2UTBUMEJhTjRrSTFnTmFT?=
 =?utf-8?B?SEpwUnltVHAxSkcvR2pGZm8waHc3WUY0a3JJaDYrdWRxTjl0ZCtjT1RzMG9B?=
 =?utf-8?B?bHg5NytMTmRQMjI5OVpiYTdTUytUSmNERXFqNWY0TEtnZzJ1WlQ4UjJYWnc2?=
 =?utf-8?B?UWNKbFZ6RHdTV2JYcnhDU2pvL2dMWmZWaW5oNXFEUCtZV3JkZStkR1F5STZY?=
 =?utf-8?B?bms5T0hQOFp2b0dBcVJNTGJ1QnVRNjlqbGhJSXl5OFhQNTRyUTA5QUVRTXd4?=
 =?utf-8?B?UFFHU1hnc1ZrMjZnTUY0MFpIdmhEQmkxeWJwUklQYmpIVG1CZUJod1BmV3RM?=
 =?utf-8?B?cTIvQ3VnS01vNElmVlVwUmJ4MktWZ0lFQTcxenlVUmREUHJzRkpDSnY0OVpo?=
 =?utf-8?B?aVJKVkg2bjJpV1A1SWRVeVRYRFpkbEZZcTdoTS9CY0hNei84OWo5ZWtCRnN5?=
 =?utf-8?B?WDgwbnFML1hodTJJVnVwL1lCeEVNRTlZZW5BYTVsbGxqZ2pvb1BIcHlhbzJF?=
 =?utf-8?B?WGxsTHUza2QydzFpNHJQa1p1dlNzTnJIdFpKM0txZ2tFYlRkVWJXelBUWERm?=
 =?utf-8?B?UTVYUG83dFBseGFRZ3JzazZBLzNyQW43U1dDRE1SZ05aTWd3NjhoL0lVQ29D?=
 =?utf-8?B?WVA4NTcyeG9nQ2hpL0U1TFZJSUxxeStHNG4reHNvQWkyUDZQL1I0SlhLTngw?=
 =?utf-8?B?K1BIUTJBL2xYL2ZBenlpM3dlRDRSeWpjNjlGRzZSYmhXZk5QODQ1UllZQ3NW?=
 =?utf-8?B?M2JMTFJmZW8ybVJ2cm5USXJmazJoOHV1UDc1bUpWNVZyMEtQMEppNkJuOFZr?=
 =?utf-8?B?QVhXTG9HZ1pWdFhNRHFBbmxiRTJnN3BwVlNUaENzS3hXdjBnWmFnaGRrKzEz?=
 =?utf-8?B?M0hYRlUvT1NCOVRyclpKWjVhb1NCakVxeEhqMGlpb25HWGdBTS9iR2JJdFNl?=
 =?utf-8?B?SXB5VjM5bVZheVhhSmdyK0hHTVBxUUdWd2NrbDc2ZVQwWjIzemRwM2g1K25I?=
 =?utf-8?B?a09GN1AyWGtRVTNBQ2prb3BqNHJtYzRkSHU4WmhETjdOL1JPbWpjR0Z3R2dm?=
 =?utf-8?B?Z2t1NEpSZGJ6U283c2JRQnBIcjFkc09vdWhlMjM5Z08zNWdMc1hIdzlmWUN5?=
 =?utf-8?B?ckpNVktFNURkMzBWbElERGlRckMxSGc1RzZtS3Q0Q0NOT3FBZThPN3daL0ll?=
 =?utf-8?B?NVVCK0R5Vk8zUnBxT3R3Q1ZuRUdueURMQjRZTXBtRGVXemFOZ1BkK2FYZzRr?=
 =?utf-8?B?OWtSb1BFelRXcmJndFFNcUhNYkZ3cmNlZEMwSW5ZSkNWVk8rTjlBcDdtVmM2?=
 =?utf-8?B?eEM3d1QvNGJLRHRTN0RuV0dWN1lncEFzSnlDRjZLUEZvWjdzd3RFZ21URURX?=
 =?utf-8?B?OUc5ZEFXa0xnbjJ1RVV1cFk3K3RiVHdOczNpMW1JRGFCaEMzK3dkWU1lV1ls?=
 =?utf-8?B?NjRHODNKRnNMeUE0Qngzbm5uYUxaM0FHcmIxTlR3c2VYeHhNUDFST3M1MWh3?=
 =?utf-8?B?eGxGTVRYVy9XTmM4VVlxOUlGbmJ5clNmVk43V3pQdWlWV09Nb3UvaTdsZE9q?=
 =?utf-8?B?bzVUSVVNbzZYRFBhUUN3KzlKNUNnUWw5MmY5RnpQOGZiQnYwdTFOd21KZlk3?=
 =?utf-8?B?amppUXBWWGNDUCtwR2xmZHJQaXpPUXlTV1VJcm5mQlErMC9NWXJ3clJiQWJQ?=
 =?utf-8?B?QWV3SFpvMVRlSlpDdGsxQVlhWEhiTmlidW9hMmI2SHdLQVlKeThPb01UZmIw?=
 =?utf-8?B?dlZUclF5N1Y2THhJK3JoOFhaUXcySU1zY2t1TE9vUlp6VGJpeWxZcGpxMU5T?=
 =?utf-8?B?dDMrYkpLUUJnSU1NTzVSNE5JcDVwK3F0Tk9VdXZNM2NLOENPMVFrdGlGUlo4?=
 =?utf-8?B?SlFZOWJrdUY2Y3dLOWJ5a2l2dzVoUDZBZWgxQnhYd2x3b2pEcjg0bWhjaHF0?=
 =?utf-8?Q?MCwZqe3+e1P4SLuK1W76dd4uRL7T+7L1MVKS7YcNNPqlQ?=
X-MS-Exchange-AntiSpam-MessageData-1: Qn7gFTjWMZKmAD6jKKSMqigTpy+8ugSDOEA=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e6d2e5a7-aabb-4547-56ec-08da2471d204
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 15:07:30.3332
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 mwFS2mB3gvBoABNPmpdL3lb0WNCy9q8/dqt2eKWzM3sF16PUg0izDiEH79oAB6bmvFRGv7vqK3hZPPvSUxwdU7Rd2uOHKrmSPRN62Pt6/t2/rtvOtvi/dj3GKjPZ4Lhv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2254
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56848

Hi Amahnui,

We're making progress in the right direction :)

On 4/22/22 16:46, Abongwa Amahnui Bonalais wrote:
> Also added a command in the run-docs-build file to run the python script once  in the extracted tarball directory.
> 
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>   docs_fix_all_html_css.py | 79 ++++++++++++++++++++++++++++++++++++++++
>   run-docs-build           |  2 +

This is still not a valid path for the yocto-autobuilder-helper git 
repo. It should say scripts/docs_fix_all_html_css.py and 
scripts/run-docs-build (do not modify it by hand :) ).

See for yourself:
https://git.yoctoproject.org/yocto-autobuilder-helper/tree/
This is the root of the directory, where your patch would be applied. 
You can see that no run-docs-build file exists there so your patch will 
not work.

However, in 
https://git.yoctoproject.org/yocto-autobuilder-helper/tree/scripts, the 
scripts directory, does have a run-docs-build script so your patch would 
apply nicely there.

Would you mind telling us how you created your patch from a commit so we 
can help you fix the issue there?

A simple test to do to check if your patch can be applied is to try to 
apply it yourself.

Provided you have your patch file (the one you sent with git 
send-email!) named my.patch and located in /path/to/, run:

git clone https://git.yoctoproject.org/yocto-autobuilder-helper
cd https://git.yoctoproject.org/yocto-autobuilder-helper
git am /path/to/my.patch

If it works, all good!
If it does not, something needs to be fixed.

>   2 files changed, 81 insertions(+)
>   create mode 100755 docs_fix_all_html_css.py
> 
> diff --git a/docs_fix_all_html_css.py b/docs_fix_all_html_css.py
> new file mode 100755
> index 0000000..7693b04
> --- /dev/null
> +++ b/docs_fix_all_html_css.py
> @@ -0,0 +1,79 @@
> +#!/usr/bin/env python3
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> +#
> +#
> +# function to append to the content of a html file below the body tag
> +#
> +#
> +import os
> +
> +
> +html_content = '''
> +<div id="outdated-warning">This document is outdated, you should select the <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org_&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=-ULgl-z1-zhWlVwi9is-bYWx7lKkN4sSFIjTA5iLznFlf3FeAUGfaMjacPXNWRLq&amp;s=EM6Y0EHYD3ploYECnvyUDTcYIhz2jGXOgFD_q0_8A7Q&amp;e=">latest release version</a> in this series.</div>

I'm not sure how picky we want to be, but I imagine we want anything 
that is not dunfell (so anything not from 3.1.x release) to display that 
it is obsolete and the user should consider upgrading to a newer release.
For dunfell, the message above is fine (because dunfell is still 
supported, and all other releases in those old docs aren't anymore).

> +<div xml:lang="en" class="body" lang="en">
> +'''
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
> +  width: 100%;
> +  margin:  0;
> +  padding: 0;
> +  color: #333;
> +  overflow-x: hidden;
> +  }
> +
> + /*added books too*/
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
> +
> +def loop_through_html_directories(dir):
> +    for dirpath, dirnames, filenames in os.walk(dir):
> +    # loop through all files in the directory
> +        for filename in filenames:
> +            # check if the file is an html file
> +            if filename.endswith('.html'):
> +                # open the html file in read mode
> +                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
> +                    # read the content of the html file
> +                    current_content = f.read()
> +                # open the html file in write mode
> +                with open(os.path.join(dirpath, filename), 'w') as f:
> +                    # write the content of the html file
> +                    f.write(current_content.replace('<body>', '<body>' + html_content))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
This used to modify only style.css but now it tries to modify all css 
files. Did you test this version of the script? Are you sure it does not 
break other css files?

Cheers,
Quentin

