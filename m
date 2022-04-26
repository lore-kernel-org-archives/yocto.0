Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97ADC433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 13:09:17 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.80])
 by mx.groups.io with SMTP id smtpd.web11.6131.1650978547107905732
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 06:09:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=cbmZRKfo;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.80,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avkFDTRyyS2+mYWFDfgOdzzl4QZWV3rAko45G1XmHQqMIq7EqYsoB/7xqvf1woCkoqKaldjvq1bTGcCyov6tuOaD+mjtnBBdNhbAn7FLXM98Sm5Mc0LF5RXUrGPFmTshRwz/GqADdhZK0qW0pLIgof8UuoWyBM45iOmKiwIW7uzoFXAEwxyiKB3ZOIJtHMbvS3ZYRkKFWh2pE59IaHenPzjyr1WPZIEFpHjI8HNrUtYHoUvIGrc+qCgBr4nb1YQK/gCgtAXwY8QriQuemRnTO+8xVRcLSbJUEhQdptOEaQ89thx/6ZAcFTlJ9RFk13xiWH1mXnyrGIKWbnFFzWbZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AjoM1pTI4jQammUVv5RztAFmxfa0OSuGxHROI8JY9LA=;
 b=LjEZlcS847Ym1bBDDIzcShpznpK312WkDpWpF6IF+goh3Fjd7Unupcw47jmvDdXKmVu3t/stRNf+wIPJfTocETf1A6OQvX8ou3JVrgD3rAfIwLnCadtabzQumbYQSJiW+OtHIaQy9XkDzUvtb4udsJ6Foarh+NK5f2KDJPod2sf0MfkpSOury7eSrx1JbbO/hA9WGmogPVkyW6x+HG3dOXcyMSHgg1Rr9ddp8nDgf28Bsq/mJ2opnbAbYzFjsnTaXuXmblpXECkeHKeJRyz8Qwx952Do9QSWx2HxpDpZ1b+uyNxL/QlhJfw5ivSkSIJEUtkabTrI3BufoNZRTzkiew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjoM1pTI4jQammUVv5RztAFmxfa0OSuGxHROI8JY9LA=;
 b=cbmZRKfowWwmNC1phjNtVioSNWJ0A1H/qMQ0vuE7m9HhqYTUyRMbJpCQzTopB9MHVtMA/u9uX6Kj6lM+zY4xLlR6iHvUKN5MdmD02zBE20cvd14N6iXzfs6sBPiT97Azjg0ys5YhPGQgjwbFnWDn11w3Lw9AjkElfyGs9OJ6pVk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AM6PR04MB5816.eurprd04.prod.outlook.com (2603:10a6:20b:ac::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.20; Tue, 26 Apr
 2022 13:09:03 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979%4]) with mapi id 15.20.5186.014; Tue, 26 Apr 2022
 13:09:02 +0000
Message-ID: <aded5e37-24e4-ddc7-6242-d4b38a6187df@theobroma-systems.com>
Date: Tue, 26 Apr 2022 15:09:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v10] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20220426115512.10093-1-abongwabonalais@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220426115512.10093-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5PR1001CA0009.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:2::22) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f912be6-c213-4829-f743-08da2785ef76
X-MS-TrafficTypeDiagnostic: AM6PR04MB5816:EE_
X-Microsoft-Antispam-PRVS: 
	<AM6PR04MB5816C0000C50B3B639142DC6C2FB9@AM6PR04MB5816.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OFJsiUp1Ur20JRPRydGN6Jr+IwIODuC57L5oG04S6BC5zoB/Huv/ul/3gN+o7mvLiddCQOtVV+4XyPLqxRBdpPbuhMq14YCGfbuCUp3LsDdMMpHeeqkTE9VzjFbZbvHH+lhOp1VdlQfg35rgvQsZrdXXUYzHA8t1wo6xQhmWSAQliWTLvK4k5HVHDxiNWj4HzuZCvrbaqHRxjKEL/HYCxUVf4fJK3ERDtaqzV/FXIUGzc48Hw/9Sv9w2z+NW7k5rFA3+Uzed/LF+lMlnObTKd4iygp5p3s0KZ0FIRZ3EAVU9KYcvYdZHVQz9YR6KCOamkm1DSTFAiRfrrTfTpi2aKNyoqiC94mCgNpswr+ehLqbL2oNwhuIFhGiW4FVY3+7s2XAG8MHHTIeO/4KcTNIzWpxr7iH9q1eQsIPTtMkgNNxbPT7CgH4t5yequyyiAZ+oxMqF6HD1lC+30UtSoDlC1vCTaHwbTiRzKlZH44nzi+JvgdEpKBjubuVsXjV1+2cTMht4eVVBWrCycZyxVqGL8Gh8lPInPco+Sd9inYyb1EapMsvC0ZHuIlrjsgSR+UgaEqHQ4zG72IfNvbwI2msHuZDGrgyNGMMVl8ARInuM6B5DQQXk1zQjfoVuqq0A6vPKIiaTnwQImTS596CFJuGxtdYXTeE1QKlSIT7giOhLSfV3wnmiJQ8ZSR1JAfzMhmfmec86LzAQhfap6CXIwEwYygzRzsoRqElUhhSO5lCA1U3qPzPE+cG7EnQqHtmsJfXfJzYp6N58/8Bjxr3Jjsw2/Baf3YTb84zDNOM95RG6a1mUSbGbM6wz7O8TmaAUXGPJ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(508600001)(186003)(2616005)(8936002)(31696002)(86362001)(6506007)(6512007)(2906002)(26005)(38100700002)(44832011)(83380400001)(66946007)(166002)(5660300002)(316002)(8676002)(31686004)(36756003)(66476007)(6486002)(966005)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXkyQzVPQ3REOVg5cjJQZGt6UEJkN0VFZGxhbVFSMXZWUzQvSGVjL2xudVdx?=
 =?utf-8?B?M1JBZUQySTNTR2VJYkY4eDlxL3BIQWVMMldnckduNndTRU1BcmEwVU1ZeDcv?=
 =?utf-8?B?cTdXakNreEZIbTRDcUFjQkh1N0J1ZFhENXdFNFptODNqUUJKaUlLcWFrc0Vs?=
 =?utf-8?B?NFZ2Wm92MzFHTCtTYi9aUUtua1d1Q1U2UFpTa3NRZXVsbEhQYTVZbW4wc2Ex?=
 =?utf-8?B?cVJBR3VwQlVaTDZ0R3d6S0FBMjJDVjZUK0xJZVBmTWttZHBkNE5NbE5VVUdx?=
 =?utf-8?B?TThMYUFXWHZBbE9hUjVrcVgxVmZHZGc0a2NtL3FnZE8waWxlSXdWOVlTcDR0?=
 =?utf-8?B?bHBTOEx1M3NHVlNxeXEwSFJxVUw4MXRLdlowN2Y1cG43YUVIL0VwUG13NFlP?=
 =?utf-8?B?Qlk3NzROL1pJbnErTklWeU9EZEVxbHczV3RrbEZ4OVVPTkFsWmpPVFBMYldH?=
 =?utf-8?B?UW5hYVh2QVF6dFFVdUJiV3lxWEpIeVN4Tis5RlZqM0dpMWQ5ejlRUVE4aU91?=
 =?utf-8?B?YWR6RGtFTVF0RlRWQXZRS3FxNW5DbzlndEdEV2Z0Y1NRM2txSDUyK29QQUZB?=
 =?utf-8?B?b3JnVklSZkRpK2EzME5aZWsrMXFWM1pBdk4yejVhV1gyRDJ2ajZGcEVkNStt?=
 =?utf-8?B?RGpmQS93WXJYODhGc2E5V2djN2lER2lrVUtQaUgweEpZOEt6d2YxbEhCUTkz?=
 =?utf-8?B?SHlPUUFIemw1d2tIQWdsdTI3RkQzeTVnWDlrTC85Q2ZqR0VaeXpFK3JFNldh?=
 =?utf-8?B?TzdKamRoWnpPT3NrREc3dWs0dmFkWjlBTk9LUGxLVlBjWU5rc1NaTUptVU1D?=
 =?utf-8?B?SmkxeE92ODlOWHQ4MWVucEdXcmZjcXBxYnF2bmh5aWMxZ3c0MjhyU2k1b0xG?=
 =?utf-8?B?ZEszdkJuS3VlaUQ5bnFPRU5HMzBBM3FnRUEvZDJ3VFJkSmR4ZmE2MzhybWt0?=
 =?utf-8?B?ZmxzNWw4STZCeGloaFZtbDZlUGVueVo2bGllczFZTTBQazhXK0hYTjlyVEFW?=
 =?utf-8?B?T3ZQelpmVzlkMDFEbmNWc2VQSWJYWlg5MWdyUlNXaW1IZUh1V3NaWUxlK1VD?=
 =?utf-8?B?SGU0ckJiUlNxY0JIVUJtanlzbldRL3cwUXJQQklRb1hJVm1NdENtVS9RbXN1?=
 =?utf-8?B?MThHYUNZcmVIYzI2Ykwwcng4L0dzSFRwS29sTkhjWUplUHpHVUt4K3VQNGJz?=
 =?utf-8?B?SW94dUhXM1NyT1RmN3NSZ1daUUtvM056ZldtNnVyTnRJb1JMem8zNUdqdjVT?=
 =?utf-8?B?VmFycXdPN3ZYSzdVOTZSMGRQTm55NGwzUW9yajg5UnFwVmtJVEVpV29PNnJI?=
 =?utf-8?B?RS9xSjJJNVNhd0ZwRGZJMkxHUE9OcjgvdUtsdE9lVFQ4YUZHMVh4WmpGQWRq?=
 =?utf-8?B?L0NPRVJuRnJPQ3VNMkdEeVN0NFpFMVdJTFNQSkp0RXJiZkM0VWh0UGpST1dC?=
 =?utf-8?B?T2EvMmY0UWhIZjdSSzBhaTdNWUN6K3ZOcmc1RjNPNzh2OUhEWTJJWTdkQ0dl?=
 =?utf-8?B?ZWs3RjlNMHYrT05XSi8zY3d1d2swMUUzZFFLNGJvWEtoYVZ1aWt5VjhjM21t?=
 =?utf-8?B?TVJXL0NXdHEvYWpsdERRWWpEYlEvRWFkOFRZYkMyRFdYSzJzcmhxMDRJd2ZJ?=
 =?utf-8?B?VXlDSGtqNVo3Tkd6WGF2QU5DWTBmSzc3dTAxY0lWeFYycm52SlVvUlAzT3Jj?=
 =?utf-8?B?cTVzb1FXcFFWSnhkYy8yelJ2RXRvRU1xUFBudjQ3Sk9rL3FjZDV6ZUFKUUhs?=
 =?utf-8?B?ZmU5MnN5blg4dm5BZmhtbFJaRTZ2Y0ludG50OEtlRUpHa0xVQ3pCY0hRZU1Q?=
 =?utf-8?B?cVkwdG40d2cyaE4vcmRoNHFxYzJPVmw0RGExNkowaHl2UmMyajVrbjNaTjJN?=
 =?utf-8?B?bndwclhQUEJqQThoanRzVTZtU0VlRnprQXM4YnZxTWpZWEhBWDVGemd6dzB5?=
 =?utf-8?B?Z2RmUzhqajJVdi9NeVQxc2VRbkJ4emNqZTZEc2lWQ2c2RWkyTmMvMEJRTTFJ?=
 =?utf-8?B?WU9DSFkyQ2oxRWdqK001VXVPTHo5TmxXdVovRUQ3bUc1ODFtTlZyYTF2MUM4?=
 =?utf-8?B?VEVSMktBdUdkZDF1M1RHSjlsQXh0N0tpMU1KQzUxVEoxK2JaWUtDMk9oT2sx?=
 =?utf-8?B?b3hsZE9BWTA2Ykt3ZmpnWnNjSWV4REhtWWdCWDh1akQxSllPRmVDc2NWZGJH?=
 =?utf-8?B?TFlxZlRYbjFTQ2NQSkx6M1pCck5JRlhSZEJQU25RTnc4ZkZwd2Mwd2gyZGYy?=
 =?utf-8?B?anpWemVpT2xicWJ1dGJ0cTF5d2hUWmx4YnVnNGJJeGdCdXdMRWI2VXVIbTkw?=
 =?utf-8?B?QTVuek0yUVZYbXFaQjVxcldDRnQxUnZ6NEc5b29mbGZXRTUwbW9rVTMzK2Fv?=
 =?utf-8?Q?fTsmlus3KYxWydRv8bebEpfsVX+/d3tOGZRIj?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1f912be6-c213-4829-f743-08da2785ef76
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 13:09:02.9124
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ZiDdEwVV6rE+D0Y/HLwf+AyH55KlJjCVau5ZvBHiNMcRRhqSKUrWKWyMk/GFXOZfTifXTCXtdBWPOp89sYKIslLvNqN4rXa2/uwfpPvqIOP5IFU4fWWlqjT0G+rvGYKy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5816
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 13:09:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56897

Hi Amahnui,

On 4/26/22 13:55, Abongwa Amahnui Bonalais wrote:
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>   scripts/docs_fix_all_html_css.py | 75 ++++++++++++++++++++++++++++++++
>   scripts/run-docs-build           |  2 +
>   2 files changed, 77 insertions(+)
>   create mode 100755 scripts/docs_fix_all_html_css.py
> 
> diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
> new file mode 100755
> index 0000000..9ac5a2b
> --- /dev/null
> +++ b/scripts/docs_fix_all_html_css.py
> @@ -0,0 +1,75 @@
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
> +
> +import os
> +
> +
> +
> +html_content = '''
> +<div id="outdated-warning">This document is outdated, you should select the <a href="https://urldefense.proofpoint.com/v2/url?u=https-3A__docs.yoctoproject.org_&amp;d=DwMDAg&amp;c=_sEr5x9kUWhuk4_nFwjJtA&amp;r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=QSXvmsOZCPvnujS5xVQeG1_nbbJlo9MdPDnn8pJWC8JwcBRoB0Y1lQVspWNVn0Qy&amp;s=huYXC94XMMYriEdfcMvylQV9z5JxJ6VUTq_IBdmkY7o&amp;e=">latest release version</a> in this series.</div>
> +<div xml:lang="en" class="body" lang="en">

This message is ok for Dunfell (3.1.x) releases. You could also point 
directly to https://docs.yoctoproject.org/dunfell/

For all other releases, use:

This version of the project is now considered obsolete, please select 
and use a <a href="https://docs.yoctoproject.org">more recent version</a>.

> +'''
> +# <div xml:lang="en" class="body" lang="en"> and </div> are added to the html files to wrap all the content below the body tag in a div tag whose class is known so it can be controlled in the css file

body can be modified directly in the css file without using a div. I 
seem to recall you told us something related to the content actually 
overlapping you modifications if body was used without putting it in a 
div? This is the comment we want in there, you explaining why we cannot 
keep body tag but need a div with a body class instead.

> +last_div = '''
> +</div>
> +
> +'''
> + > +css_replacement_content = '''
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
> +    # pattern = '^3.1*'
> +    # exclude = re.search(pattern, dir)

Useless comments, please remove.

> +def loop_through_html_directories(dir):
> +    for root, dirs, filenames in os.walk(dir):
> +        # exclude banner for 3.1.x upward as it is an LTS release and is still supported

It is still supported but the files you're looking through are outdated, 
so a different message should be printed. But something should still be 
printed though!

> +        exclude = set(['3.1', '3.1.1', '3.1.2', '3.1.3'])

3.1.4 is still missing. You could just check for any directory whose 
filename is prefixed by 3.1.

Cheers,
Quentin

