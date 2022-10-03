Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6001C433F5
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 17:05:31 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.78])
 by mx.groups.io with SMTP id smtpd.web10.103.1664816725592569865
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 10:05:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1
 header.b=CtY85ANE;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.78,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jtZZBbjNBG0UU5yiPxsbyey004t5TJdSTqTXxJkhFUzteTP4NRMCX7pe9xA7/17fCE1lvKD+VsSB0KrzkvxMXZh9T6HbZNLciSV7SAIsAlSjDRK8mInbAvjABOgAJK1x3WwxjUumODSX5hDI0ZVhaA5VfuRouIRwbMCakVPs7Tjk/tUHeHukThCgfWxWzSI7P0liXLl8HwEBk+0oYa+PaeUZOIJutgtj1JZJXnxKj41wbATux7OuOcQpkijw8z4uKarr6L4AWke0vtzHVCI9zwmv9svE8j4x3NxitBy0X+IyshFdTocLenIvLSwtIzooPIkCc2/T8cBiDBBBN3mUBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pjDUofCLFTszcDU29kVOaAnNQ4BmOWU/HwP0wpObIwg=;
 b=VDsgttCi7/zbV5twp/lcU/Oud1cO3sowNRKSuwyLIpHDvSBvsPVCdchF2dQzYy7SBc/krxz7bnI15IZ0OhzueGXJOihuW86iYjkUgC4oYxishhd0FW6AI8eUaJkjhbc87R7ZFmW8HGzb2XRYTVKBsHckXWHlDhE8JE/4AWGitwH17lkkducbKwaj8Utkvp1ILBn5UgoilSKvDzk+ED84Gyrza9Se3xtvu1flEdZH3rRQNidKvpgRMFuv0GNwX4Muow1DGJeeu/x6o49p+wvLl8mpYSTDi89LJ0FHBuYZg3nz2RqpxwOe0BzX+yG0Gv1Oo+sU0nWPldINI07ZuiDu0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pjDUofCLFTszcDU29kVOaAnNQ4BmOWU/HwP0wpObIwg=;
 b=CtY85ANEG9xErHu3KdUOEHXw2tt7kHGJEtpfgTTIkKlxiGH7NLgDIkqx9OsZF7reP4BrC1M9IlOYHjHbnc9E7WioULJ6RexmLqCI/oIfcmjWFIdatZkxahWXdZPZCgG9HDVg5lBjMvOIb62z73AtsVRioZCu+nA82eMZwpZzM4dYZp3Sz+Ey5VbVXgTk2+cg7o9LWP8sDAZW4UGgQq0hAQO3NU6lYj3PEowcZfewbRlPQCqQzfvK/u/lITgh8E22BvvM1fmyGZ7usPpgA0S4KaJYBJPna56mL0HUHjjHCy+ny87n8rP3cwTW+lEie63/shJG79HHVnxAOE2voQVVqA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Mon, 3 Oct
 2022 17:05:22 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:05:22 +0000
Message-ID: <f6553efe-f9ee-717a-62db-28e2bed2af92@theobroma-systems.com>
Date: Mon, 3 Oct 2022 19:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH yocto-autobuilder-helper] scripts: run-docs-build: make
 the workdir pristine between builds
Content-Language: en-US
To: Quentin Schulz <foss+yocto@0leil.net>, yocto@lists.yoctoproject.org
References: <20221003170401.12827-1-foss+yocto@0leil.net>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20221003170401.12827-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P193CA0044.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::21) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: 3403211a-5927-4bc5-4da9-08daa56174be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zWglKpBRONx8IwaduRy4j5gBgAi9XLCW0Lm0ETi/G3BaZzOT28lPUJgcPU5KCW9JZ7HfEg2SzWZFEo85G5aP8cWHM0ZH989DOlPy4Op81Z3Eyc3pgeFujHxtemOc+0fHRPxXwy+L+jzbMfXqMIdLLtso0yQv7zM+eIzRpKbxeOmxm+PvzX7yCfSIWU0pXo7TIHHcg7wI6DreopuOSZmn5ue86QdPPOpw7+/2Ec3MMOr1Y2u7oeoYd4O7ceG3u7njz3iqhmV/OEKFv9IM6kydF0WRWIVxxuGMf5LCZpUJje3EYQeHqTUclJobwbeBSbPuTcFTIUQzUEw6P24G3eT9Mo6oE5JAC9JWY87SQWFoggVrUnRd78z3L6hK8P/cp/mayMlvvHB94sPvAqSctBAsVzv9pulgc84mV+Cogvv6OEFggFxzNJzI2G+ZLmnLMd6O98osluLt9aUnIXqEyngWhnCPrQhpOtfP0CegAso9e+8L8bbtzCYdhBuAC7nJqvlkURXACknskA/GgA+iP3nFUtu9nwFCK2bxIEdqzWLBPc658KuvdBUkUBWixS/qEHA1kldlY3JCJzrFDQgyryeZSwnOzIoVp/WWpydpvkkhxppiRxbkOwZ8aAwMA3jxow62BiF867veI/AqyAx3KS/HghpNOef3nRFEvk7bj8dyMkcK7pu9vDAb9HWlDbtWzlrC2+BSfkPAfBlJNZa+5HPhakL2v6IESA5hOZkSfHzquRw1Fd0OWBkNRKmNC3otKS9PE3u3Qkly8whV7YW78WMubs1i/ge55lui/sxZVID0MnE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(366004)(346002)(39840400004)(396003)(376002)(451199015)(6486002)(31686004)(38100700002)(478600001)(8936002)(86362001)(31696002)(41300700001)(44832011)(6512007)(5660300002)(6506007)(53546011)(26005)(66946007)(2906002)(36756003)(316002)(186003)(8676002)(4744005)(2616005)(66556008)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ODd6VHlTSTYwNFFlNnFkQWlCa1Nadm11SU14Q3pNNTdvV3o3MUl3VC9QYVJn?=
 =?utf-8?B?SlpXMXRrRUNVS25uZXc1Myt4akhJK2IyZ2NkQ2VxZEt2c2o1Y3VIRW9LQjZn?=
 =?utf-8?B?RXZRdytJMk0rbWFRcUNIZkhMR0h5L3h3UkNWcmloVnFUM1VmU0p0bUZBUHA2?=
 =?utf-8?B?VGRNOFA1SU5yb0VrSWlkNmpBVmFwcCtUck95UG41QkE4WDA3UThxSjQ1TTM4?=
 =?utf-8?B?ZHhyYzRyMDZyajlrRGVMOW4yLzlxeElralU3RVR4bXJZLzEyZlJjeFpmMTVV?=
 =?utf-8?B?RUhFZ0NUcGo0bStwaFR3TkZYT2NrSnlCRW5jRnNFeXhjWk9uREtUQ1Y3RnZD?=
 =?utf-8?B?WEZFcUI2MDdiZzkrY21mRlpEeE9MT3EyWXprVGhTWHpUelBGR09uMUl6ckUz?=
 =?utf-8?B?NURIZFljc3ljSWZRVTVPWGFMSHNNbnRidi9DOEdTTGlTZVdDNDI4NlkzWDE5?=
 =?utf-8?B?R3BSWjErK2pCZk93dVVMRG1iYng4aUJHNzA3TUpvRWV1ZW5jMExPRm9PRDhV?=
 =?utf-8?B?bitIajRjVUtNamtoL2dVZEVRcFNJM1V3d09jWEdoTlIzcGRtSkRNN3lIak1r?=
 =?utf-8?B?QWl2VUtqY3RvYzBqRnVVRUxaOVZkSVptNEFMd3R5NzMzK2RwbjhydzE1VDlI?=
 =?utf-8?B?dGcwN1lkeFlWWWpQcXpZdjdSYlNqZlpCYTlnZkYzYXdHMksyb1JWck1RcUhq?=
 =?utf-8?B?c3FadnBWdFBpK1B5UmVPN3hjZDNLSGdnY2NrTTE3dnpDa3JUT3M1VVRTRWJm?=
 =?utf-8?B?cmp5d2F0aFhMcnBiakxFZ1pNTjdMakcwU29OT2wzS0VQbjVBU1Q0dHVyZkpl?=
 =?utf-8?B?N0RJZU9rSVBEVjZSTGZWUFFsRkc2dGl3QmxyV3U4eUIwSGUrK0gyeDEzeWhG?=
 =?utf-8?B?cjU0M3Y2SzkvaXBxc3JuTXhGaXpWZW1SbitrYXRnUzBaVlU5NGNTbTBidWhi?=
 =?utf-8?B?bUhGOWxYeDZWdVpJREpiVFQ4ZHNMNGNYQk1SdHRkci92MkNiVlh0RmFaVEJD?=
 =?utf-8?B?RitIY1hYQXNVWnd6eDE4bk9MV2hpMW9SOUFweGxiMDZmQlA1UXBNZVI1RzJu?=
 =?utf-8?B?SVk0SFdGdFdvMEFQVlRIcTJyRnFRWWprVGdFZnhlNXJ0aTFYd08yVFBtUlRH?=
 =?utf-8?B?K3c1RnBwWWdmWGdlakVkekYxdGJNMjl3R3pDdzR6SFJSSjdNY3kzNDk5U0Y0?=
 =?utf-8?B?ZzV2eFE0UUVJQSt1bGdyVUkvU3EvY2d1R2dNaHFiZlBZUVJXak9EUHljVldi?=
 =?utf-8?B?UTRDVlJ5M1ZrNXR4QWo3OW5yS3VVYzhzbkJyekZyTU5DNk5WMk8vM3FVOHBV?=
 =?utf-8?B?VGZrcDgvRFRCbmxUaW5XNjgra3VJYmh6NVIvS1o4L0pja1VuOGgyY2FGVzZ2?=
 =?utf-8?B?K21sUmhZczduMzZSUVp1RnFDSWI1VE9jUGV2QU5NU200S3pScjVBdG1NcWE2?=
 =?utf-8?B?Y3dTSFMxa25nWXhUWHJNYUMxQ2thcWMxTnVTem1iWEJvMkIwNlRYVHNWYk9m?=
 =?utf-8?B?cDBWSkloR3duZStYNzVnL2d6SnVrbEQ2bE5PSFVodzRrbXViQ2RkN0JEOWZp?=
 =?utf-8?B?YTZRMTFvK3FUTlZFU2Eza1RXbFdqQ1YvSGhZYk9KUlpMU2dmQ21xbCtJU2Nu?=
 =?utf-8?B?cyt3QzliZnBtMTlDTGVqZ2hZVHBjTm93TWYyYXhNdlR3VFFjaG9JTDRYZHcz?=
 =?utf-8?B?VjdhUDlFL2V4S0dTdyt6RDFsUU9XWVJqdlV6djBIM3dWd3RRb2pFM01GU0x0?=
 =?utf-8?B?ZzNHeXExRFpUOGVMRzBFaDM2anRaZ1hzMTVYRTFibUF5N2JyaXNhVjVTVm1q?=
 =?utf-8?B?NERPUTRtb2plUkx1U1c3WGZWVm9ZWkFHWXc1dUVPcDVLMEhDeGRERm1MRjZL?=
 =?utf-8?B?V2xIT0x4TEFKZ3hMbVVRZjBCWXpQY0tVMW9HUDBUOEJXTGhSQ2VHekpyVGZ5?=
 =?utf-8?B?TkJ3dElIT0FDb3lxY0UxMWIzTldjSUgxdytCdzFxN2tqY0Z1ejBTWGVZODNF?=
 =?utf-8?B?bENWdnZldERWY0hVbG9nN25zNVhVdnFEa3QwYllRZmMxa0J0Nkl6RFVuKzRy?=
 =?utf-8?B?Q1JSRytobU9ubUo4cXVubFV4eGlnamNlbXFHL29mbmZvd1Z6MXM1dm5VeFNB?=
 =?utf-8?B?THZYRkw0VUhiTjZ6Z2czMm9IQnE2VVNpWnNEQmF5dEkyQjIzUzF4b3NGYVVh?=
 =?utf-8?Q?iQ3dcrNo7q4N8YEmYMvQTJM=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3403211a-5927-4bc5-4da9-08daa56174be
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:05:21.9460
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 hgCTdSYRAFjhLYuiLwvuMlORphH6e7eV99LN+22yPnErepMnyzeZvXvDNL8u0R3mCn/iqsaPlYpKqfF1dZy86nERkYKrXtN6qBoTNSxIEZHVjXkD61je9+4gUGLO+fV8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 17:05:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58253

Hi all,

On 10/3/22 19:04, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> It happened that the git repositories were dirty and resulted in
> incorrect files being used. Let's use git clean -ffdx to force a
> completely clean git repositories before and after checking out a branch
> so that nothing is left from or to another branch build
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---

Forgot to say this was not tested. Let's run this on the autobuilder and 
see if it helps? Is there a way to try without merging?

Cheers,
Quentin

