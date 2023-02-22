Return-Path: <Kris.Chaplin@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B57C61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 14:15:27 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.47])
 by mx.groups.io with SMTP id smtpd.web11.9786.1677075317142973453
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 06:15:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=X9uAmPRJ;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.223.47, mailfrom: kris.chaplin@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mG7y+kpbh2fFfSypoReMcV2tb0Jy+k0k97n8HsAPs4gxZXVKHRhVBcqlYsaVJI9gK9JJPtd3HnMJ44FwSSQ2nfwFr4Q+BZjxV27/wWxLtdDGwDd7PLK3jON9Cnoa1k4UVIzEGKP01aaBjTni58IWQm28+YEykVT1Ved/Wj7npVaJOzXMoMzO3XkgXnzLoLnl2EwkOq+MJDDgsGchulNv7Yx/J8EpLZVV+lGBvnMJI/Z2YB8x1bWYgQi9O3QXBqoFdkKugAKTWMkb1bFmulZ6Tdvfukobbmr1yCv9pzEbNwrGVzqqN/1lnEEHGQ5FC66LscJ6Odi2GtOZ471K2l5EQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TjJ5gQGGKXe1k75TXNFLjGggiG4Zz3khAnCNZG975BM=;
 b=fsxi/PNCrLCc7vdAQ/rV6yXdVJiuy0IOWMNlX2e49zEYVWEgf8DVkvpaKZRO9rMbZnXhUNjUxhPq1v6MDekVgYnjwcji8LgN1KBuNNqBCsweZSdrVAwrC5GGuSm8RbOQFFJuuzABRvBXUzCXlYMTncu8dNu4FJn3XKz+M7T44dHc48wmWU5A2ufFZXU0Mr38Wuj4HUsSGbTFoG5oZiTC3JdA9mRMLcN2ZImP2ZKP2vZMLB4aOQnMadAb/XXGcTD/vILg86Ly8sV6H+HugPHNf2nyHsugSLAqeQ5d3n2Xje6212vgz63i0E/PdU/92sPcceRIRa9+XNxBRH3FAI/Qkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TjJ5gQGGKXe1k75TXNFLjGggiG4Zz3khAnCNZG975BM=;
 b=X9uAmPRJoJ0UJfvooX1/xyPhSYdp1t2eZmAGX8GrPRc/SLF/q9868mvhaD7wAxIZg5ZgVM1/VpBvBz8IfNRiRT/8VPpx/+M+WfRVCaZGSzgSt47ciX0oLVgbT1a0WpKohR+9eDnxMEhRsE8o+EdC0lFeNXJJbGP/GFVG7LiUgxs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BYAPR12MB3398.namprd12.prod.outlook.com (2603:10b6:a03:aa::24)
 by MW4PR12MB5665.namprd12.prod.outlook.com (2603:10b6:303:187::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Wed, 22 Feb
 2023 14:15:15 +0000
Received: from BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d]) by BYAPR12MB3398.namprd12.prod.outlook.com
 ([fe80::dc39:38f2:85ed:4e2d%7]) with mapi id 15.20.6111.019; Wed, 22 Feb 2023
 14:15:15 +0000
Message-ID: <1543db39-560f-8ab7-24cc-86891c46b247@amd.com>
Date: Wed, 22 Feb 2023 14:15:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Steve Sakoman <steve@sakoman.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
 <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
 <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com>
 <657dc629d58e38f649b028aba7d9a614356886c7.camel@linuxfoundation.org>
 <c15be7b4-5cfc-8d5a-2513-9c707b60b532@amd.com>
 <CAOSpxdY2a4siZHkmzSBFY6QFBESrsR9Fm4dp0zykWwqoJO2exQ@mail.gmail.com>
From: Kris Chaplin <kris.chaplin@amd.com>
In-Reply-To: <CAOSpxdY2a4siZHkmzSBFY6QFBESrsR9Fm4dp0zykWwqoJO2exQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0417.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18b::8) To BYAPR12MB3398.namprd12.prod.outlook.com
 (2603:10b6:a03:aa::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB3398:EE_|MW4PR12MB5665:EE_
X-MS-Office365-Filtering-Correlation-Id: ffaa592c-2d26-47c0-0492-08db14df37c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FGsbYPCVaFeh8/JAc+/ta/cuZn7ZEHIJMMjVEdV3UKzqYsrmz15pk3UaIPcId5x4Uk8le9JlZcvG/46jV8pn0FznAqx1oTN1z9wT7GKs3vWQ3uSmFPuxMipHdSsWh5OlvhdGSZtFdW8Qx1I2C9TmH9vF83Vws+u6Q+oMvLBnKdD09FCOV/6tNFf5E5enuAUttQrNq48l0AhK2qLW+Zd13a06zwBVLpOYH7qpyIXkB7n77uQq7cGlVuMdNP+SG6AegZOqIJzjokcmcm8eXJDbisX3MTYWZXk8s6Q4LCW3zuWeeJTogsiKn9S5oGNxyHJURH3VckLhlVkhXSct37Es/UwtIHZmZ/gKkZdBwJClNMdfyI4kt220Ckm8CuMsWT0n4ddBkmQD0RcoPOwOTG+bXG7cdYXsViI0cpSJiaCYFwEa7BqJIaR1adBeV6XQq+/HFbmeIDXC6GZPSAic3tANGWbZrT7T+yfv5Wr0MsbRvr+S3vTl/pQJX6aYlTMNP/xOYaqXXsT9vsmT1xQO3sMlPf4bF8wg4dEuajH20aDWkm/xqakZjXJbEPpIo15D5pT6fWk6xOFL5dotaae6W9EdFtLM98w13XZcT/hVqSM937XUnIzJ5sYHJXOkk+W6fgv7QytKSH0yf3gZ/GalQe1uvT0qrKp5rNnfkV85hQBUzD73iIf0AxLoVQQzYCWzPh4CTt8rZAVlWr25G70ZZmKZSi4XNsNrZJGzPKKPTn2Sl3U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3398.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(376002)(39860400002)(136003)(346002)(396003)(451199018)(6486002)(31686004)(44832011)(36756003)(2906002)(5660300002)(53546011)(54906003)(31696002)(86362001)(6512007)(478600001)(6666004)(558084003)(41300700001)(38100700002)(2616005)(26005)(186003)(6506007)(8676002)(316002)(6916009)(66476007)(8936002)(66556008)(4326008)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bXF3WGNIa1c0d1g2YlNyN2ZWbzVWVUZtWGw4TCtKd211bCt3dzV5OWNsODkz?=
 =?utf-8?B?SEdXcnk1NW1CUS9JNzBMZDYzVVNaWU40N0I4QkUvbmVVdUNreVpCNllOVGI2?=
 =?utf-8?B?S2J1SUozMEZVcUtwNmh3UjlyUmFwVGo3a2V3WXhpeldhZWR5MjNKOXduczhP?=
 =?utf-8?B?MDhLM1hPRmJ5VUxQdjlXRnFGVGYyYzMva1BLOFpIZDdGcTZXT0ozdWxpR2h6?=
 =?utf-8?B?aGgyZUY1STZyMUUxblk2Ry9ZQXg0WUhycGRBK204UGRyK2MxN2hVMFgraGE3?=
 =?utf-8?B?ZTlqV2hRbWV6OFJNOWk4dGo3SzNCbDNxbWNyUnQzMy81VnVlM0g0T1cxYTNs?=
 =?utf-8?B?YzlReWowZm85UFlGQVpLaGxSY2V4U2RhdExUL2JDTk9mcGxqYTEvcTF2Mktw?=
 =?utf-8?B?anhUVWJZNktDQWljdkUyWWFKeS85bVdXc1ZNeHQ3ZDJlNTV1ZEQvZFhFRUdp?=
 =?utf-8?B?TDdiellHL0hRaHNoTmY1YVlobE9MTDZ6Z2JvbjRzV1VvdjZiQ0ViWUNiWmZV?=
 =?utf-8?B?UlVzWXNTaml0NDNCTnhaZjFCWEVqNXpOcEp1UDI0Wjh1NVByN0NjalM1Z2ZO?=
 =?utf-8?B?Rm50eVVIWVJyZm81RFFMNGhKUjRuSjRKMWErekhmUDlHSDcwZlgzRFhOTE0z?=
 =?utf-8?B?L3hjMC81TGF2QlFpc2FPYnlQaHNtN0ZsZzhkdzFqSUxFczVUekVPeXFYMVF3?=
 =?utf-8?B?enE3S3Fhcmh0V2RUb2dDYjZXT0ZNa3RyVnI5S1JrZGtKQWhNK2ZlNS83KzRP?=
 =?utf-8?B?bVViU1o1L2tMeUVDcXp0TlcyNmh0ckpEMEoxdklCTmlKZVV0UkxEQ0lsczRt?=
 =?utf-8?B?eE9KbEhKWmtDWG1wV1hTanRLdnl6dVJibHlUeEp0cWNMaGVDYzYwVksrVDlu?=
 =?utf-8?B?bzlrbmVSbWptMnp6MDd1Mk1RSEIyaTNYM2pYMnVrd1c3emQwVlJrUFN2OGtK?=
 =?utf-8?B?cXdxZ29pT1Z0OTE2WTdodEZYcVdhY2o4MllicXh5T0JGVGJkcFhjR0cwTit2?=
 =?utf-8?B?ME9rSVlWYlJLdnRrcDNhOE1Id2c1WEgvdkc4aTZ3R29LdWFDUEJZQStScFJo?=
 =?utf-8?B?aUZMRjArZ3pTVDQxTXFHYmRxT3Nob1FvWjdnYWlWWlFGcHFreFZmcHF0T0xX?=
 =?utf-8?B?ZWVIU21TR0sxMWduSWxkdFRUWWtzaW9vSFh5elkyVWIyYTQyMkd0c1NrN3pr?=
 =?utf-8?B?TDlTWk16SEF6NG92ZFlRSUxQUWp2MWdjMUNvbHZlM2hRWm9JV1ZqK0d0dVpr?=
 =?utf-8?B?V0hSS2NzZG5MZ3hGM00rNW14UHhaQXB4ZDI3aHp4NkQwMFQ5UlYzYjhzbklL?=
 =?utf-8?B?NTc2c2Fod09Nd0lRaHRvVVd2ZmNaT0VQT3hMMkJSTFVRaVBxYTRiYloyRUVh?=
 =?utf-8?B?WSsycWxEMk5heWRQbys4M0ordHdJeXZwbHhQSWwrdmdjb1dGcWJBYy9GL2pn?=
 =?utf-8?B?QkhwNzhzZUdRRUFGWHlud1FHcFczSmZZUTgrMlR5SS91b2pXUkc0cEV0T3J2?=
 =?utf-8?B?elJRRkZqVCtOYXJLTlcvVnFhczQrcjlST0d3V2RQdDFhOHJ2bmh2cDQxbms5?=
 =?utf-8?B?WlhxTlF3RkpoR1pHdmNqRDcvOGJvcFV3UTJRbzJSVFh1alBnc3lXaFEyZ3pW?=
 =?utf-8?B?Z0h4T1dvNTV6Q2x1UzdGWVFaK2JRREg0R2wwcnV2Yy9rL3JsY29nS1owL1NS?=
 =?utf-8?B?ZlZUWE1mdnJrbzlaYVVmbkZYdEs4OU1uckx5dDE1S2tIcG94Sk5jM1EvbE1E?=
 =?utf-8?B?bFQzalAzdXpJd3BoUWUzek9zaE93U2o3QlRXTmpLRGdlRytmTElDZHpOOU1t?=
 =?utf-8?B?MHM3WUJTOXd5UklEcFY0OW9xTGRhbXkxdVlDL0hiTllpQ2xONi9YWU1ZWHpI?=
 =?utf-8?B?Q3o0ZnkvbjhYUDV1a3hUY1ozRk83Tmp1eWRKSW5zYitxaklvemJaMWpMWWV3?=
 =?utf-8?B?bHZ4Sit5WXhQRXNZc1JWZkhiRng1dFRxNnFpN1JoS3I1R2U1OUlaV1AyZG4w?=
 =?utf-8?B?SmxRTVVkaEsrelNjeEd5Q0htRVgvRk5FUmVmQytwdUQ5USs3bTlqeC9yZXJu?=
 =?utf-8?B?a092dDlIUTNlUnRnSXA2Mlc5N2I2Qkw4aCs4UXZQb0tmTkdPZE1wb2VyVU1Q?=
 =?utf-8?Q?RdslmVjnK79LZbeunzuhUnd6A?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffaa592c-2d26-47c0-0492-08db14df37c2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3398.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 14:15:15.2218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cAq6vs2XnaSrM+bmppX07soJf4t73mOpLsUASEMvgTcpu09WpDmdoaTwStt06X1N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5665
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 14:15:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59278

On 22/02/2023 14:09, Steve Sakoman wrote:
> If only :-)  I'm preparing docs patches for langdale, kirkstone, and dunfell.
>
> Steve
Appreciate it - thanks again!

