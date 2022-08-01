Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5456EC00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 15:46:09 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.51])
 by mx.groups.io with SMTP id smtpd.web10.26432.1659368758539946991
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 08:45:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=BZUVf9bO;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.51,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWZpxBLafMrONz6CiBt5XQrWMCbAvsKPgm3bpR1aqp7fvA3yIe1Pc2qzpFfIy1u3npKjgcOJe9EiLcFZHQROB64cGRByhDdXQQDAWejdUH7mDsuP3W8bIDFGC8MEwu37A8mS6pO7zY6QQwolqMWTuQP8IP9Foyqc3KQEGUeyfwzqEdVQVhrI4sy29HR5o00+StcwociceggbFeQgf2DAlybnliycIhzQtfm/xjIFgzpK4zl4A+6E8os+HxsxN7vRCSJeKPbDgymUqRYM4pZHARrSCMm5kuKC7AXZDkcr3fdQi42/KJDLf8QFEq0RSWtXurPj4DpX4GmGVwIx7eb04w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06AHif3mhvAFnvQZIQa5+H13RY9pCiU+1KJOeUgvbUA=;
 b=S4qNPSW26OMRQLXIoN24RS6Ko7hnNwx55Ep82lX6La6c63XtB/0fWt6T7zu8K53ng7l/jBT+L4HeV1y2sDNHhnKPUgmuZhscKQQ1bi2+IJK2gWkOka7uK4+1GQJw1sNFNxJFt8fX8SMaMtZZoFkUuSJikkE6ULi5WQZivtIr/EvJuCSY88mN/mqdfkFxwN/Lk1blT55VRm4krewgdwKGVQiIKZhlbHVv9Q4WeHu8++3NhWnA2pqC6Hy7dOtRjGEY0HN9iZK8xf4ZmQnoy3ec7gNS5vVClMN6HK/N4xmphxuNFVDAGgyCpeyPpbkqqVK9CUnhP+SwY/91zhlqFbDigg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=06AHif3mhvAFnvQZIQa5+H13RY9pCiU+1KJOeUgvbUA=;
 b=BZUVf9bOX9Lp/GYa+CvU34YJUlPclZzIIwT5ODv+fHH24XAppXw1peBIRdL9S/TE6mL8X2sH/Qpcq5UH6Ek4eNwm0XxZg0P8kKycl+ihOVhtkbEKMYhx5aEB4De4NnasRI2FQ/wHMd/8Bsq/VWFpikDgixdFYMlWX97zS6nwRtY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR04MB5309.eurprd04.prod.outlook.com (2603:10a6:803:59::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Mon, 1 Aug
 2022 15:45:52 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%9]) with mapi id 15.20.5482.014; Mon, 1 Aug 2022
 15:45:52 +0000
Message-ID: <57821bfc-c40c-2b4c-252b-290f52d79d54@theobroma-systems.com>
Date: Mon, 1 Aug 2022 17:45:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [yocto] nftables_0.7 not working
Content-Language: en-US
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: yocto@lists.yoctoproject.org
References: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
 <8c7f4c6e-16c2-f8ff-ce5b-7906351ec615@theobroma-systems.com>
 <CAKO9uzp3t+G=QUypwOoBnN4yptvQ0o+QZwL8wmqgHiAJ3jHRrw@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAKO9uzp3t+G=QUypwOoBnN4yptvQ0o+QZwL8wmqgHiAJ3jHRrw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0577.eurprd06.prod.outlook.com
 (2603:10a6:20b:486::17) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 454a1400-493a-48cc-b80c-08da73d4e9ec
X-MS-TrafficTypeDiagnostic: VI1PR04MB5309:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0kCaFGdcGxkzy+6WC5cFUNk3ZWCzubXq8kGjzBWf9Y/H+O8EsvVjD2OkiLj9BLb/G3Nxze1TOX8JQQoZ93RJf+URwWGTGcga4tn4IxcBCjHfdSJoq0MZrKvEXLi8zEFy5aflQNM4WrRiQbE6Xitvv5GZtUZh6xQH1wc6waOV1W1S0WnSv1j5y4Y0TK828rlRD+RAIDT+mwgHeS5GJAimIXRNXsdVM3GNhPlOnB4zs+cKPIjqhWxz+ocqQenGkqQty4lFuF9JdAHyrYkbL2N+h0dHZMfV62j+PFj+EE9BuVu5heHgHnAwRgavS7Qj3Byz1RXL274g5wyVVZsy6VmmbHKr37O/cqYI3FsWeySfE+7FgRy9vLJA3avraF9+hzajQacFE8wqVOd5E3QBMI+9nnaslh9coN9JP4sDlQS3+BHyOz86VbRlPOFl/eZhtOd9/BDnXAVddqT5ZzstYK0W8VXc/6YqAisohp/Uveo2HKM5xM7CtsSd+dzuh932nCVBSg/l4thtSsgySYdiZq5wriV2oZo/rqDWjNpNSLiM6FtoFudqJb6MmjmVkq77gAOv467emDVRM5FccOiNPeHAbSBIGUzQku+WYpx5NmM81DmrcfeuXjKq+OBnXKGS/r6nLxtLXIfscQuo6uKZAh7KbdxOvknT+XtDFOZnY6DSFH0TZLKFgADCUsXYtlbzzOciJROZ0oxi/+b218OvPdNa4aNX1upjbPPmZg/kPeCAAXHklCGcWMPk4MMRvdn0o21GFT7j/ZujQ7anl/fNcb6UekxPwsz4WmkrkL9i0Z7DL9S8wECUB5Bj/3rFFhGtsLOWrTKYDu4uuSpqP1jibKoSEg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(346002)(136003)(396003)(39850400004)(366004)(66946007)(86362001)(31696002)(5660300002)(38100700002)(8676002)(6512007)(8936002)(4326008)(6486002)(478600001)(66476007)(66556008)(316002)(6916009)(186003)(2616005)(4744005)(31686004)(2906002)(44832011)(6506007)(26005)(36756003)(41300700001)(53546011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MHpPWnE5NTE5a2NoTWR2L1RldzBIQnJMOUd6czNpVGJYL2hwcXh1ei9CNzNI?=
 =?utf-8?B?SW5sVFk2cGVJYTRaWFBBZENpdGx1aytRaTlBNTlsY1owUEpHTDFLOWpIOFNG?=
 =?utf-8?B?bnYzMjJQTFYxUjNsRjhEc1ltTW5JYU9Hd0hCVDZMbXFkN3poS3JJUmErOUEw?=
 =?utf-8?B?ZGV6NXppaVRMaVdQY09aekpvc0lUcFphdlVWUVRHaWJQa1BqQWNvNlY0MEg0?=
 =?utf-8?B?NXR6aHJrdmM0ZlhrQmwzYzJpc1lURy9lbks0ZmdKMkZQeXc2bjZ0Y0JiMlps?=
 =?utf-8?B?SmNuK1lDUkpFT1I0dS9rYlcraisxMDRYQWpvby93WERmeVpremdxN21kSDll?=
 =?utf-8?B?ZnU3dmdYSzZsUE9LcmtFWmpHY1duYnB5MnJSYmZkU2hNMHJQYlQ1d3NKa1lv?=
 =?utf-8?B?VXBCTXdiZTBzTnlaZ1ZXMnR4ajczaFhESXdKVC9pYTAvNVVmTVFGWUxLYnJP?=
 =?utf-8?B?WkpGbmRvOWk3RHpMcjVxdVFTejRVQkpwTlBGeERhS0MzQWw3OW5XbnV6d1VF?=
 =?utf-8?B?ZXlFMlYxMXZlSGs5VkxoU3gyVjR3MmllUFlsbjRaQXU5eXlFVHF1Sk10ZTdP?=
 =?utf-8?B?cGJZeEoxakRtQXJ6ZlFHekZDQzdkMU9DVEdQeFBKYnpCRkxMUzJsYmpnT05E?=
 =?utf-8?B?endMK3BCZFlYS1YzelphRCt6T09EQVFMKzREV2c3U1FkS3gxWlNXWUlzL1V5?=
 =?utf-8?B?RUFwSzN4NXhvTzlVOFBybEYvVTJKN1NsMGxzNFhicllWNkhrRGhhM1B6SlJr?=
 =?utf-8?B?SlV2eSt1bDlWTi9OSktCQ3U4QTRDRzQrL21tLzBFUmlwWnZ0V21GMlBnekd5?=
 =?utf-8?B?dEV6QjdOUVlSVkxWdFpSN3EvOFJ0TzFKS0hVQVZ4QVBZVWdzS3diQzQ3cjgy?=
 =?utf-8?B?Tks5QXRnOURLWFFpUHFicTUwN2N3TkY4VzFZdG1CMHZJNFhJSG1MK3hnbHNu?=
 =?utf-8?B?dnRlK1BRZFRTbFo2WUdyNExPNmtEdzB6WFdlYWlReHZOanBkV20zb0plTzA1?=
 =?utf-8?B?Tm5DOXVaZlRKRmh5OGJmaG5KTFYyMGlHeTBzbzRZaS9pNzBpRnpraG4yWmtW?=
 =?utf-8?B?R014ZGZjZUJGOU1VdlhhbU1zak91YUlzL3VWZ2xhL2hCQmVWSCttSVpCYzZO?=
 =?utf-8?B?eGhMR21BUkhhcVZvWmNFdzNXbDMwaXJlb3RNOTFrQ0lNNHYvaUQvR2g0bVhI?=
 =?utf-8?B?T1k1aFFtM3lHQjZDWFhaWTIzQVZQV0FIQm9VRkQ0R1QzNUJzVk4vLzRPYU5W?=
 =?utf-8?B?S0dhYnl1T0RuUFU0cFh5cTFxdVhSM3N4MXUxYmQzL0hMcmRyMGc4RmRveEdH?=
 =?utf-8?B?aVNIZDlWTWhwZ0QyS3ZZNGVXdlNpQitFNHRtQ2FWZDdXMVptLzk3bzdQRnls?=
 =?utf-8?B?ZmxEaG9EOFIyZ0VlOWtWaFJlVDA4WnJWNkpUd00vNVhUQ01jMWVNaDNHUGNY?=
 =?utf-8?B?RzA0YThBUTZwaWFkSlVUMG1waWdVaXptMnZZbkluQ05YSDExTzJkbExZRGZy?=
 =?utf-8?B?bGsxWkw1VHFWUlBEVW1qYkV1NDR3OEE3S1lUYVl1aG0yREtsUlNCOFZYUG1o?=
 =?utf-8?B?aFIzOTN2SndZUU9sVDV4L2V0a0xsUy9UYTJVTlNIN1JOSmtsUCtjZnZubEoz?=
 =?utf-8?B?Q0RVUE9iZWFxbk1yWGZMMDA3b2Z4NnIwOFBUYlNya09Od1lWejUyZGo5Tmw1?=
 =?utf-8?B?QlBBSkdCVUdrVWJjblVnSGVyeVRtKy80Z0xzYnIwWThOVlZKOE9KSENxaXh2?=
 =?utf-8?B?azBBMGZMK2I4UDBRdy92M3UzRjl5VGxaR00yWTYybU90RmZmdlBpOHN6MUVU?=
 =?utf-8?B?dUV6YUJpR2VHeGZJQzdsZkNnQ3hweFNBcTJhc1J3N3NSSlEzaSs1RmJubGJF?=
 =?utf-8?B?VEZDUk9yN0pVckhLVFA5d0t6c0x4UnRkMHBBanZlOGhZMng2Q2xBVzJWa293?=
 =?utf-8?B?WFFWZVBRM2tGazk3Wi9qai9KL3NHaEM5QkJpSTNEY0I0SkVVRVhzc1JWWWF3?=
 =?utf-8?B?dFR1UzhQcHgxQXUvd1dZOEFnYmwvSUtDQmNla2QrZklRNDZBUlVxSVFUeENG?=
 =?utf-8?B?cW5RMVR3SFRjbk9OTGY2a2tzbHR2TGF6NWNxeHk3dDBFSzFiQXVFYnFaVnUv?=
 =?utf-8?B?blEvUnl3Sk1hVThvdVpjdVE3akZ2YUxIMzZMQ1RaUEdpVCtFeXNCYmR1U05C?=
 =?utf-8?Q?8UiLB95kwiFnPq2hppIj+v8=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 454a1400-493a-48cc-b80c-08da73d4e9ec
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 15:45:52.2305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 SZRz1lfMRdqdR0Lri3y7v4V7PBoGT0omnJBn+PHAsvLWpDkrY93Ez4Qu/+sNAQ8mjo3h6dQHMm5jcpXIFycA89+8JgiEDGd7nfpyXxhJ2i6EYqPyfYo6Mhji3Eyxxro1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5309
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 15:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57717

Hi Maik,

On 8/1/22 17:34, Maik Vermeulen wrote:
> Hi Quentin,
> 
> Thank you for your response!
> 
> I added kernel-modules to the IMAGE_INSTALL_append, but it seems that the
> modules are still not being loaded.
> Is that the correct way?
> 
> Also I see that CONFIG_NF_TABLES is not set (with ~# zcat /proc/config.gz |
> grep CONFIG_NF_ | grep TABLE)
> Is that expected?
> 

No, you would indeed need to enable those in your kernel config.

Cheers,
Quentin

