Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E196E7716C
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 09:59:32 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.40])
 by mx.groups.io with SMTP id smtpd.web10.7070.1733392762126890625
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 01:59:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=AA2IRPXU;
 spf=pass (domain: cherry.de, ip: 40.107.162.40, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=htrsris/gR+WCuEqDfNqtIL4zB2txKzn2GXYzdWyl033pm1Jhvl5TvBxs24X+FxaxUgADU0nFWW8MEhRPC8+YjLmUzHk8k3oKowu9j+ev69GU5CmNdZG3Dq9bhT6tn8gxVh5Dvp6Gml+DQGWR5emdhx3INnFsyePBtxj6a8oXVxzfgBnVzZOB3YQTieVL5SX3ggZ1tbKezQI48Xajl+auMJDBEIjSNhh+Hj3Yw6g7bngDZKnU518OHk4YKjZdl/3G7utXtwRKHFjNAlnZ94uMC/sOnE63P9fTe0lImALZEjyvyEsXnamYpShj/GsQ+6EbkERQgyr8+GWShiHAXpC4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=encq3UwxzVvThR4q2twpW9qlCM8WUlrllcqzf1g2UMc=;
 b=QOc9Fpf9gNP9uo/pXesZRHNP6AiFo5EsJnWFHi8myvU2bSFWmkX9NJIJqZAQxgAYL8v2c8vZVB5E/iHsQRDNq55gZ4AkIWyJ1ab8SU/YJkBExOaOxa6kyIulHuk/wBDG3zbjj2QRGCfO09GF8297sDhUl1mz4vMAmKol5DMJRIKrfm05VExf6Ddn1Xoj+KH7D1Sfue9iZYwFJrej5/acnE6O7lEQGaIoKLY3gRq+kY6Pqfs2jVDW2JxB6VkFeAnEkZSVUc3imxXv6sp+BGbR/UQyWkFnUVNYpTaDxQ96y2e3XBrSPi9BZ10jCRzbaX+pX0XsRbOD9x+ZhorETThLCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=encq3UwxzVvThR4q2twpW9qlCM8WUlrllcqzf1g2UMc=;
 b=AA2IRPXUJGrus8BWYXR8IXzqaAhtMQghEjbDk+yPRsWOyy0RpRpdbPQdKaGq9bKSymG1V31rFaLCnxVp7xQMuYAyadWyBABUuDZXCBwWXGtLo+Bjf49c5tBOzS36ZkGNs7bc9KLDrgHtveKkpgeh9hpucxFZ5syfV+jyIb8hFes=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PAXPR04MB8349.eurprd04.prod.outlook.com (2603:10a6:102:1bd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 09:59:18 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 09:59:17 +0000
Message-ID: <4939a682-8a6b-4a55-aa40-cf29dfca274c@cherry.de>
Date: Thu, 5 Dec 2024 10:59:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Backporting in Yocto
To: yocto@lists.yoctoproject.org, posinaaravind0205@gmail.com
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
 <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
 <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de>
 <CALvuYrnJKAC7OPAD=LZCmNKMSH2nMT5rCiSWhYM3VDP7qd93UQ@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALvuYrnJKAC7OPAD=LZCmNKMSH2nMT5rCiSWhYM3VDP7qd93UQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::9) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PAXPR04MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: c08aeeb4-aebd-42b0-0454-08dd15137b51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VWV3NGw1NXl4MEJXQndqVGtReEVUbkFkeTRoY3pqUmVaN0J4YkFoMEhGVldo?=
 =?utf-8?B?d1BPOHlsaWVzYXRXT2xJRkFkRTgwYmdZNjM0TzdlbXRQWGpSKzBCWFVhcFd6?=
 =?utf-8?B?NytpaTZaKzNOTFhwcGUwdEFrUHlleVBYd0VKdUhIeG5Mc2pPYnlGOU9GbXo3?=
 =?utf-8?B?NUIxa0pCZjRRSWZwRXJRMEcrUndtbWxJWWlhOCtSNk1qbkYzRG4zcjdwcG15?=
 =?utf-8?B?bjh4QzNIaEhvS09GdVhMTk9SUVBjM3RIdVlzK1JjQmRsQU9Ec3ZSaTIrN2RJ?=
 =?utf-8?B?YVIvUzNBa2NWR3MvUzJTSGxYTEdXUzBZeVNWSjFkdVZHclZNdU9Sck5hUXdY?=
 =?utf-8?B?b203ZTBTNUhyM2pzWTZvVUgvaU9yNG5iR0l0NmZtNUhrUmdPdHJacU8vZ2ZJ?=
 =?utf-8?B?T083ZXNtM2x0cmhRMHNSUGxpWjQ3eXBucUtmNU50WCs5ME9VRVpUTzVCbUhC?=
 =?utf-8?B?dzFjNkZ0TlZmd0IrNldPT0NTckcwbERhK1lsOUlKbFpqMU5kZ084MjhyaFNi?=
 =?utf-8?B?Q2JZTVVQNXozeEJSWU0rVlhKOUJsVFlMb3FVS3duaFlwVXV5c3JwaFhsMFBZ?=
 =?utf-8?B?KzdYY2J1U3lFU3U3OExHL3RZQkdQTnZ4WVIvUzFRRERZZnhRY1laR1A0Ynhy?=
 =?utf-8?B?V1F1dFlIUEpLYjNCQmtQZmZTWDBYSTB4ZldOQks2Mi9PTHdBaWtCQXZwSUFC?=
 =?utf-8?B?UmQwRU91TFR4NzNudGd0S1ZjU0cvWUloczZPZDloMTJEYk9hdEVmS2w0WUsv?=
 =?utf-8?B?b2svVkk1dU5CVmpxVUZzTHN2K0EzeCtFM2FYV1ZXc0k4cmlmZnozZnlkZnJ1?=
 =?utf-8?B?Z2grcWpGUWgwZC9pWngvdGh3R3IxQ3pzcmoza0lhMWRTcFk5Qnk4ejl1SVV3?=
 =?utf-8?B?UVV6K0orL2ZwdlpNNnlQcWVycmllcUJNdy9KVEV6b2VqMjc5UXhmUWsyU2lD?=
 =?utf-8?B?MDVncXhxMU5Ob05vK1kvVmRhM0NQNkFNN1NGQndHTWFNQ1REeWx4M2JsQ0g0?=
 =?utf-8?B?ejhKUlhhSUdjbWdDYkFIRHRZVHVCU3FyTHM1MElwcTBsTWJkbEJYQXkvTC93?=
 =?utf-8?B?MkttbXFwSkt2ZHBYbjFpR3l0ZU1TdldCTkxYR0wrKzkrblpIY3Bvc0wwajBF?=
 =?utf-8?B?bTJESWg1bEVGaUFTV2NpYWFYM1Nza3UwT2VOY1pXK3dzUnJGZkRiNmU2R3Q1?=
 =?utf-8?B?b0pYaUxQM2haTmpXQzh5Tkw1bzByV0FrdklYTlA0UXk3RHFaTmpycmpmSmt3?=
 =?utf-8?B?aFhLMHMrZ3hPTmU5VlBnZVhDMVNiOXlrdVNYRit2Y2R0L25uYkdMNFVwR3BV?=
 =?utf-8?B?b1p5ZHd0bEJYZHZoQlJGbHpsUGQzSTIwamlEQytyeWhMWjdCdHd5SC9FbDRJ?=
 =?utf-8?B?aElHY3dtclZhc0lSd25uZENsRm5wNUhscmduR2lvU0NXS3lkc1JmbE1lRXhk?=
 =?utf-8?B?SWhGZHR0T2ZJcVVzbG5McVdtTU5qbmNaMVh5NFhxaFBFM1NPUlJ1K09kRE9v?=
 =?utf-8?B?cjFHdDQ0aElRVXN5bDFoZGRFTFRwd3RuWC9DdGFaOWNXREZOODA5Tm1xR01V?=
 =?utf-8?B?RGgwNzJnRTI2ckU5cUZkNzl6MFRUQ2l0Ukl3dGpLWU5rY2hWMitPS3ZlNzU5?=
 =?utf-8?B?UXNvNWF1MDFiZjY4Zy9rUVp4T3NHSzl0WkE4Slc1d0hqWGxyUHIxWjJqblJa?=
 =?utf-8?B?dW5mcEdZV3dlSDhwSEFpdTk4a20xN2hLZVc1UkVEWmZTcG9ZU0lsNVdtTXZK?=
 =?utf-8?B?YlRjbjVhMjgvTWVMUXRNUHptZlpmOUFDSTdBb1IzVUx0cGxrQTJGQWtNaHdl?=
 =?utf-8?B?ZDUwS2hHMUZlSnRTckJFZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K3czbkc1bGV1UG5acHhtRDdIUVovbmpuY0FJN1hJeXU3T2JFMlp0Mi9GS2Y5?=
 =?utf-8?B?ejBrVWN4UWp0Nm1xY3FjVGh6MU1yLzI5R0t6SWhwU25jajVMRmRhUVppWUpn?=
 =?utf-8?B?T05vSXNNTlhHS3d2aGZHOEtzSVFQc0N0anBnWE9tMXVRVTl6MHhKZm1MbDVP?=
 =?utf-8?B?VnhZTTJERVI2UXZiQ1NkcW14bm5LMEUyZmlFaHdGWDZwYnNMK1NrT0crSDY3?=
 =?utf-8?B?Q3dOOE8zSG9xRFhGZy85VGx3eHhZVjNhazFwcE9LVnNJSHFYeTNkcnRMSnlF?=
 =?utf-8?B?d2ZoRW0zWjhSM29WcE5ORzdtbmo2Z1JVbCtkbC9rek40NnlLYy9SVFRtcWJ4?=
 =?utf-8?B?TG9vTm50c2k4ajRJWmVnN2NmMnllSEtoNWI0QnozTXRqbnptNG11WmVMMVpI?=
 =?utf-8?B?TEJCQllPUWkrRE1QMnkxem45aXV3MHVwSUp1ZDJiZFZRQWk3QzJ4U1RSbzBa?=
 =?utf-8?B?RzZOdTRUNTExZ3BNQytFRFBnczJ4MVkvWnFja3F1cUNTbUdXQWJmd3NkTjQx?=
 =?utf-8?B?VUtUWFVKQmxUdFg5bm5HWkhFbFIyN1ZTdWNsQTBOcHVqV1ZURzJKVHVXelNG?=
 =?utf-8?B?MTh0QnB5aC9nUmtqRjJnTmV0Z1NaeDdERllKZVlLTFRsZDRIMzlFNThJSHBE?=
 =?utf-8?B?aXpTUFJKNGpkd0lQRisxMzhRV3hhUm5QK1Zlazd3QWNDRTNLLzJFWEx4aElF?=
 =?utf-8?B?a0ErWnNhZkxMalp1dUV5NWJQOC9aSWU3Y04yTW15SCtpQWJGRlhxYXVidGda?=
 =?utf-8?B?MWpSdE9qYVEwODNZYWhndU9iVU9GakpaeWFXWmEzbTVWQmFEU1dRV0Q1WlU5?=
 =?utf-8?B?cytYRWFGM3NKK21mN01xZ1NFR1FHc3pmWU1XbnNkUkd2QTRzSitxai9sRnd4?=
 =?utf-8?B?aFNMM1dnV2E4R05ab3duZ2NwVTdDRjZ6dzJlOCtLd28zK0pWMkVGSU02MUdG?=
 =?utf-8?B?bkx6TVMzclFxWllqSlUrQytIZUNudUkzQmQwWjlLRDVTYU9hWGtTTndsZUVJ?=
 =?utf-8?B?Z25HT2VLb3BhWmFsdDlGVFhQZ3Rkdm5DcjNQM3NHb1hDdmxWdjVFc1dSWWtz?=
 =?utf-8?B?eHpDNmsxSXFqVFFXOEQ3UW1qSmYzNlVQbkt5N0N6eWovQXRkV3ZmdjFtT1hK?=
 =?utf-8?B?aFpFYWFPNDBhMlorSm9kZnE2bmE4R2g4QzZPT3g3SktjNXZoZmxxWWpxd0Zn?=
 =?utf-8?B?czM5QkhPT2RnU2U4KzA5aXM4N1p2Rm5NZVFSTVd0NTlLNWUvWFA5dHVDTjZV?=
 =?utf-8?B?cHU3SnZDYXhPTmE4djBNVWl2VzQ2OHRLeTFidTY0bjV2ZHVYQVdZeFdXanRV?=
 =?utf-8?B?K0tlZ3JpTmRJNVF5aWV0TXFBVzdUdXVXeVJENW4zK3FwVzBORlBMTDlvR1hC?=
 =?utf-8?B?aTludWd6RGdyTmxNcFlPeW1rd2FkelcrU2hTVGptejUzbjNQU1JCazcyeEZT?=
 =?utf-8?B?RDZaR0xwRWtkNThWVGJoUUM1Q3pDa3NyOXFwcllJcEJjSGJZbTJpQXpjNi9G?=
 =?utf-8?B?ZVBJUjR4MUE1QzNiVWQxZXROY2FOckcxSitzUjdrUmJvYWxhYVhmQWMzWkt6?=
 =?utf-8?B?d201OWhrZEFGamtkeDhidkFURytzaVZSQ3V5UDBrZXo0eFlvR2kwT1U5UkFz?=
 =?utf-8?B?c2ZXZmRVcDlnbHVLNVlsNkE5aS9ueTFiUnZQZk5NSldRNmgzOGM3UWFZeTNE?=
 =?utf-8?B?cVBWcWpOOEwzcWwyRWZUMEx4UzJKUm9hbEdqZHRwaVdvM2h3Qlg2K29hdVRR?=
 =?utf-8?B?T2JCWDdLTmdCL0NsM1l6ODh6SEx5VUl3RzM4NitXcHFGcUlMTCtDbGszdHo5?=
 =?utf-8?B?eGVVN2pPdC80MVp4S1QwVXZlL1UzcGJWNEMzTTE4MGlhc2tGc3NDM1RhZGl0?=
 =?utf-8?B?M3RkNFc4T2t2bG5hR2ZacGhhb3NMRzIyeVZQT25hRy9IZGtzNWFiQSt3aGFp?=
 =?utf-8?B?Q0Zoa3dJVkx4bmkzaDBJZHZobGVydHd1R2lYUjcvaHhpejJHQTA1OGhSTlFW?=
 =?utf-8?B?UGREcVpGcFAxWUpmMmRvUXFUR2I3K0lvWnhqbkNIVmhKVzRGcitJaytIS3FN?=
 =?utf-8?B?ZmxreE0zem1SMkNHNmd2aHJ3QXMvTW9yYkRDeFBGTjUyYWF2L3FvcEx0U05z?=
 =?utf-8?B?c3A5MnNlbkladWtBTVhIUlEyUENvOGJpcTRFaENQRW9McGFsV0ltY1llNDZk?=
 =?utf-8?B?Y3c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c08aeeb4-aebd-42b0-0454-08dd15137b51
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 09:59:17.7129
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2MNsB2p7KOr616dyXhPUYu0fR0sAP8sO0ExDRjF01ssUurnnQx06vzqxe04C4GGJRmYudf1cNGxbqjhTwkm1btY2JdAg3yiwp2xZEltW6SA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8349
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 09:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64405

Hi Aravind,

On 12/5/24 10:47 AM, aravind posina via lists.yoctoproject.org wrote:
> Building backport-include/backport/autoconf.h ... done.
> |   CC [M]
>   /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/compat/main.o
> | arm-phytec-linux-gnueabi-gcc: error: missing argument to
> '-falign-functions='

Your issue is likely here. Check the flags passed to your compiler 
either from Yocto or through the Makefile (they are sometimes/often 
entirely overridden from the Makefile, which is not correct for build 
systems).

Without seeing the source code of the kernel modules (at least the 
files) and their Makefile as well as the Yocto recipe, this starts to 
look like me reading the log and highlighting where an "error" appears, 
which you probably don't need help with since I'm reading the same log 
as you. Can you please provide more info, actual source code.

Cheers,
Quentin

