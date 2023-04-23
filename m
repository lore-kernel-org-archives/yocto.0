Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA43C7618E
	for <webhook@archiver.kernel.org>; Sun, 23 Apr 2023 02:50:12 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.20997.1682218204464453487
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Apr 2023 19:50:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=oWu1GjXO;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3477ea2d11=mingli.yu@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33N2o462031575
	for <yocto@lists.yoctoproject.org>; Sat, 22 Apr 2023 19:50:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : from : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=osjXp1Yrce0YPmYl8xJLwMHog04j2NjftOcgjpSSJfc=;
 b=oWu1GjXOCQkIoLv+IxgQkFpiL2d14If460IcDxON2kf8kw1kI/BJJtiPAkNWWlS6cDEt
 ToWmFEBHkDI62UWeh6Dv8FqmEr8sFFdwW83vSlRRtKaKORe782BG6FmabNvQTdfKCyuG
 8HX25WGQUny31Xjg5XUJJdm3UTrlwNq50ix60qFHhvq2ttWJDFEGjP+Ar2tZKv1o3bUv
 YYTwZCBucVbspaoqcpg1ndYSWUChp5FAJqX65VPVQKFt+ey9mYdnMkT7AnyZBnrdx8eD
 d5WChp/4sWChg4UyKVkbs0n2W1xSwxXJpqMF/7jxycbQDshVHqDiVAOTKhb2lf7PLfKS YA== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3q4av5gthk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sat, 22 Apr 2023 19:50:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZLocw08+CqXRtk36r0XoZrs5gvnqA09nJPXUz3maGXjs+HGOWjtaTRuC7v3BT3Lf+TqK6t4twskZhYj3HqyYuGlVg8yk43xZ/glDU3f2h0RpgjVwlB/UKfbmcHauUcEg9Gf97eD137QInSgDX30Mio5vte7ogzwef6rC6zGn3LcU6x0G0SONfo/2G1I1Q7g4YuHNQep84qD3LOABj18pkZWFqzgOqhZaaLJlyOcmPMISNGXZTDtA6emOxxM4hXLMMyAaVfNPCNu0lqmu02YsKKGS2QaBlQA1PcAUir9sTN/ycWKOdG6MvvD4CC8jc8lW8oGMTZRI+41ka8YUT9fSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osjXp1Yrce0YPmYl8xJLwMHog04j2NjftOcgjpSSJfc=;
 b=k54GsrzoUu9UAl4uPTdIvL14D5vLTtuEgJPX1vjyy22xzkLdM5aCDt6VjRI/+wuxANIwyt5gv3GItPiYgTqzwJ1FCcC6bAHxgJPoeoCEstd25UK7L8pzf7FPnvAg3xFCA+IAyJh2DAqH04CbFq+2UJnzhvB+Lclpdme3z5vs9b0RwDGXZ4wHbUe7mbYOvlrCsybxc5nDpyaA4b8oQjNT5KY3LfCg61qcoRMa/qRJbK2v1TWJl5rIev+Hb25k/Jz0B6tRZ2IweHnjxZC7BePqm9bQeYXiNDZ33RKPzSvVmTsdtpiPfhiJyPldo5+O1ydgjS6NPrAcCRPOqp1NRoGzNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Sun, 23 Apr
 2023 02:50:00 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::aa1a:3e6d:abc:3ed4]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::aa1a:3e6d:abc:3ed4%4]) with mapi id 15.20.6319.029; Sun, 23 Apr 2023
 02:49:59 +0000
Message-ID: <fe84c9db-5eac-87d2-dec5-cf03d3030923@windriver.com>
Date: Sun, 23 Apr 2023 10:49:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [meta-xilinx][PATCH] Use new variable
 LICENSE_FLAGS_ACCEPTED
Content-Language: en-US
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org, Randy MacLeod <randy.macleod@windriver.com>
References: <16E8B6F637C41AF8.27774@lists.yoctoproject.org>
In-Reply-To: <16E8B6F637C41AF8.27774@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYAPR03CA0021.apcprd03.prod.outlook.com
 (2603:1096:404:14::33) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|DM4PR11MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: b90314d7-f06b-4b2e-b8d6-08db43a56dbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	R06BnLfA7UFzsYvZ7c/QaCDvn4oNCRDBeslgx+MnQ3yY2WXRznJk1feb+V2aviCThMU4WFs2H4cWigyeKm+bwgVVnFhC1qTcbR0ku1x2NwNCD6AvhsZs3U5xc8Dxpx90spuT0Z0vGhrbEv+g1V6CEAmJeg3kwv2VbX+bMJL8jp9+GrQDiGllliX1QKeksif/bBD/xsf+DYXBV3XGAgBKo2QRnbDiJr8hprWN6tyaTHrk78+IB+ONst2Qx8o7p4aFBHC3O1y+7JO5+fm07P1FdBraAC0bXtRSewmDLAcIItObq5SJOPYzQNgCQKNbJaN64KO5G5MUHiWsQ3fcFCBa1j4b6J5WC0tCNy+rg4kNYF2nWIAdIlJaVukx0lj7zt5mYwjX08+id67Fg3Mu+WtmVQv857q3Hl3Lg/d5jvhPMaTkxDbv51OWuDGMsoHJuRJuoMYUChlQnYLxMt5TbUW8VtnpZjpWMenfIh/6GIzx2runvlrkOC0DBrHDYkR8MR8CWlw0QwA7BH28fMSPtl4pvCJpgBIRi6WyGoz+0S8Iz85SvkZ+3ZZAQMJS2999gChZwINfiusIDXA1qmETsPM/xajM362tCRoJ9GksJhEKpCp4/TY8TnNAr13miA/ShYoagpUSj2IlZfF229jfKUZ+uRGFaHUb41xaRb54saGD/pg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(366004)(136003)(396003)(39840400004)(451199021)(31686004)(66556008)(66476007)(8936002)(6862004)(6636002)(8676002)(478600001)(31696002)(66946007)(38100700002)(86362001)(2906002)(41300700001)(316002)(6666004)(5660300002)(37006003)(66899021)(6486002)(53546011)(966005)(6506007)(26005)(6512007)(186003)(2616005)(83380400001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d0R5UWtBbU1qUHR4NVQ2NmdZTEltWnpoelo2QkRMditBRU5ndmFKVzRoNmNq?=
 =?utf-8?B?dHYycFhUUkFEUXdqZGVhNVlTUW9RTU4reklkV3ZHTU5ZbHpUK1NRcXA3dzRU?=
 =?utf-8?B?Z2JrNE9wK2xnR3JtMEFFazNScVg1V3pJcnFrMVc3M2FwN0d5QVdJNTVzamJp?=
 =?utf-8?B?RE5MNkpGMTdmNmpZRTdrOTZkT3pUTzJGUDhLQ1YrQWpBZGF2K1FXVDFlU0NL?=
 =?utf-8?B?SnRrd1BQMUMwN3pRZklrVm96QVRiM282V2VaUVBCN2VvOUZqVHJITnBaUEFO?=
 =?utf-8?B?NWtFUjlmaFhGeUo0NWdhcVF2bFBtOWVoT0d4cUl0V3p1RDVtTWI3aXRQOWp6?=
 =?utf-8?B?cTR6eHNoN0pvTlU0ck9wT2d4bENBaDZZa0Q4Y3drYnRGM0pYZjFOTkx5OFI3?=
 =?utf-8?B?ckdleXNMZVhybWswd1VBUC9hb1FTRE9GTXp0Q0tPZnJ2REMxTUcxbittcys4?=
 =?utf-8?B?ZTdLTlIrQXIwa05VMjhPM2VONnFMcVR0Qk1WUFNxOHRLK0hSZG0wRU5mNG1x?=
 =?utf-8?B?TkVmTVRaSGlzajJib09Sb0tjR2JVVWI0aEM2bE5tRVZnd3JOazZjTWtBQ1dN?=
 =?utf-8?B?cEtpUUhFM0UxQnB6OGdZQ1RqdHRCNzdrVXlONkJSamRpN29WNUR3M294cHNw?=
 =?utf-8?B?V0Rrd2VtUU01d1ZBZHRKbys0cHRUUWdvdnpJMTlmR2REeHFaaVBjK3dTOFRp?=
 =?utf-8?B?ZTJWVk96Mmk4QzRLc2QxV094THc4amg2THl5bmxxS0N4czZWdjd6bFA2SHZq?=
 =?utf-8?B?LzJqY3JYWTNMWGpuUlYyMGZ6NGVkb0s0MGhJdTBPdTBsalFlaTNsUVFoVFNa?=
 =?utf-8?B?cnhpVk1yeGsvbTRUaGV5eWg4am0xZ0FsMHJ3S2dVOTYrdnlTWE1nb1BtL3Fr?=
 =?utf-8?B?N2ZlVWFsU0V5MjVSdWN3dHBCTGQwdzNYb1ZhS2JhQTBUTk80aFlhOFc2ajVZ?=
 =?utf-8?B?YlFvUkRPM0FtSTg3U2hUVmRqSGo2TXFhTkE2Yy9FV2xCd2JFU2liZHFkRHBo?=
 =?utf-8?B?Q2JZNW5JZVNuaEF0RjFmcER1SlRaRnMyc081ZU5la1p4dTN1cnJYaGNibEw2?=
 =?utf-8?B?blNaTURESDc3ZHVtTUJuVllCdGJFdEh5MWVKM09PdmJwTFpmaDE1Y25qZHA1?=
 =?utf-8?B?Y25CRjRkNjdVZkYrVEEycHp0bXZxUGs3aE1JMHgzQ1VNVnFqcFFuVGxwdzRX?=
 =?utf-8?B?dmRabmpGTlVtVE9kZmRCdngzYWFwUjRGNkQ2a1FYbU0rVm5ReUZqZVRXNTdE?=
 =?utf-8?B?Qi9hSWlmYnU5Y0YyclhWVVRTMmNGMlhaT2VHakl6WmxlQ2pEejUxTTJsZjEw?=
 =?utf-8?B?Tzd0SEpCMXF4aDdWWGQ5ejh6VlJ4OGpuN2l1YmNidnk1bmVCUEp1Mkp5Vi9I?=
 =?utf-8?B?dEM4MmRoWnZ3dVRySmVXa1NIbmpuL0FuZWM0aCtaa0RUSklsME1OWFp2YWFX?=
 =?utf-8?B?TzRDdGpVc0dIYU9ueTdETlRnUTZPeW5uZjJxZ1g4RlZqa1RsdjFBenZuUGxm?=
 =?utf-8?B?RDJsZEtLR1hqOFErb2pFK3Q4dmQrUldnT3BES2JDQk5CdFJsR3BPc0g1TldF?=
 =?utf-8?B?WjU4NUxrbXpIUnhjcExLTjZXWlYyenpacjVmUU9OV0xGUDdaRDJIRG10cEc5?=
 =?utf-8?B?MzloNXEvcTIxcFIxelpMY2wrMXowRDNra0g4SEdsTG9iVFBONEZnbUpCYlRw?=
 =?utf-8?B?dWovTnpYaFY4TjlHMEYyanh6bVY3QUtmWHZUcGVXb0gvOVVpK3VjV3hoQjRG?=
 =?utf-8?B?am44VmF0RDM4cTdwY3FXNTgxV3pRZWh1WVJwQXFyeE9jZGIvSlFlMitialdk?=
 =?utf-8?B?a24vbDc2ZkpiZVVPc1E2ejBabGZpaHpocS95TEhReU04NTVIK05CNE1UREdJ?=
 =?utf-8?B?UWhKRXBPcFYrK01DS1NhQ0xGeFZ1WU9xZUdvcXlmVDhVV3ZnMXpKL3JUSzBM?=
 =?utf-8?B?UThtNnM0Wm5Ja0pVZmpiR2tCY1ZkakRXQmwxbHZHNmxSUm4wdWhVU2Y4MHR3?=
 =?utf-8?B?YWJONFhMQWxjV1lQS3NSTzEzUExzcCs4R2ZVM29Randmdi9CNTk4NHlCME1F?=
 =?utf-8?B?R1MyK2NXazE5UFBwRTBOVUJ3YjN6WGpoS3BWVFZ0Y3U3OVZWQmFwNTNxdHFj?=
 =?utf-8?Q?2KFqIXtiASRwB144OcTleU3r2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b90314d7-f06b-4b2e-b8d6-08db43a56dbf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2023 02:49:59.5429
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BZuVl1Rz4f30p4nACqBcFrIuc8xV10csGYaAcg1VVZQxingOuz2Bj8E7KgucPJMwIveq8bZstUyd5f0rwbfw1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
X-Proofpoint-GUID: taUctKBUYUZ35aFCgDdM8fA3Uc2PlSjL
X-Proofpoint-ORIG-GUID: taUctKBUYUZ35aFCgDdM8fA3Uc2PlSjL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-22_18,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 spamscore=0 mlxlogscore=795 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304230024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Apr 2023 02:50:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59762

Ping.

Thanks,

On 4/24/22 11:20, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-xilinx-bsp/README.md       | 4 ++--
>   meta-xilinx-core/README.md      | 4 ++--
>   meta-xilinx-core/README.qemu.md | 4 ++--
>   3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/meta-xilinx-bsp/README.md b/meta-xilinx-bsp/README.md
> index e4142861..85a5b38f 100644
> --- a/meta-xilinx-bsp/README.md
> +++ b/meta-xilinx-bsp/README.md
> @@ -73,11 +73,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
>   flag must be white-listed in the build configuration (e.g. `local.conf`). This
>   can be done on a per package basis:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom"
>   
>   or generally:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx"
>   
>   Generally speaking Xilinx content that is provided as a restricted download
>   cannot be obtained without a Xilinx account, in order to use this content you
> diff --git a/meta-xilinx-core/README.md b/meta-xilinx-core/README.md
> index 8997760c..3fae999f 100644
> --- a/meta-xilinx-core/README.md
> +++ b/meta-xilinx-core/README.md
> @@ -72,11 +72,11 @@ In order to use recipes that rely on restricted content the `xilinx` license
>   flag must be white-listed in the build configuration (e.g. `local.conf`). This
>   can be done on a per package basis:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx_pmu-rom-native"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx_pmu-rom-native"
>   
>   or generally:
>   
> -	LICENSE_FLAGS_WHITELIST += "xilinx"
> +	LICENSE_FLAGS_ACCEPTED += "xilinx"
>   
>   Generally speaking Xilinx content that is provided as a restricted download
>   cannot be obtained without a Xilinx account, in order to use this content you
> diff --git a/meta-xilinx-core/README.qemu.md b/meta-xilinx-core/README.qemu.md
> index d0040b09..5cc599a4 100644
> --- a/meta-xilinx-core/README.qemu.md
> +++ b/meta-xilinx-core/README.qemu.md
> @@ -10,11 +10,11 @@ The PMU ROM is available for download, and a specific recipe has been created
>   to make this available: pmu-rom-native.
>   
>   The license on the software is Xilinx proprietary, so you may be required to
> -enable the approprate LICENSE_FLAGS_WHITELIST to trigger the download.
> +enable the approprate LICENSE_FLAGS_ACCEPTED to trigger the download.
>   The license itself is available within the download at the URL referred to in
>   meta-xilinx-core/recipes-bsp/pmu-firmware/pmu-rom-native_2022.1.bb.
>   
>   Add the following to your local.conf to acknowledge you accept the proprietary
>   xilinx license.
>   
> -   LICENSE_FLAGS_WHITELIST:append = " xilinx"
> +   LICENSE_FLAGS_ACCEPTED:append = " xilinx"
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56854): https://lists.yoctoproject.org/g/yocto/message/56854
> Mute This Topic: https://lists.yoctoproject.org/mt/90659700/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

