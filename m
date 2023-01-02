Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 502EAC4708D
	for <webhook@archiver.kernel.org>; Mon,  2 Jan 2023 16:11:45 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.80])
 by mx.groups.io with SMTP id smtpd.web11.38768.1672675901946293787
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jan 2023 08:11:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=QLg/DSfo;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.80, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUnKt/RonWDmiiG2czC/IDcHg7s+XNpQpKqnolXdHKQR74qoOyzwmB9x2+PTdphvxwO5rB69pKFb0UBdAWqSCvHLhsghdADznqMcJnjVnxVlx7wP6aHSr32WmRElaizuzvFsHTLBcIQkAYFj+YsFKrsVUrNmMttrsQRvrq0olHcrgdyjh8TAOmfwX8hklFsI0VUDqwpLPYP7VHjoMZUZcwR9XDqenrmHTr/nBsGTsAvQed+NMxksIIxFKs2BL7lzLJJJ6unW4JMktpCJ9F3Qb4BNfeKveBTQeAFQYQ26+Uh+VRjvrM3jLwcyPuxlCdQVkmFffqc5SFtYPPauU/fjlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y5DKH5C9M7LEHNe9Hvmg7tq9Z/Mrf/OMo8DF2V4N230=;
 b=QMG/g3+9n2zmEkyX0k50gMXWgkYKNTfpnRpMQbToqFQQNr3WjSGY+Fjea1rI/u86GcjbzKUePvdlL345O2fB8LYyZR8gcFnjOg7PTnJxRmZYatCAeUzeRxQRt4EZINnqhjG+9Kv051/5o3gfn7U282JG2nSwMv7BYWjszKoW7X8gNcrmwcc8Tk2w2GDDKmV2vE5yv4skGYS1kVVzlQQQXUi2ZefYf2kykALXh4vsqbRMgX95PQkN+5zxp0i8RAAqcdXU9z7wAaQLQi2VK9MuEyi9R31XD04RKu+cwiSJQLAV5n6mTLgEhid6zAfOOUM5nLZDmr/ra4ApXmfH8A91ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y5DKH5C9M7LEHNe9Hvmg7tq9Z/Mrf/OMo8DF2V4N230=;
 b=QLg/DSfoN0GPnsF/Cex2xwLUe6jGwH+d6sgLaQLgyFtvw8iFDpRabrMk/rq8NjrKgn5PN3yLgbecxP+l+wAYugsANHzZT9dtkf8rorEO2iJTcTYv5qrFAK+IhwzTDNughVdSBaM6AtBY1cN8YkgpnAWUu3bFPQXekmlScI/2G5ejJCfVymSm1+E2x14aWVDjKoddv/sp5QPEr7L397hyQL9BgvccmBLHQoDSdSE83IsCx0uge4YTrqiZmAXhErCnUuP29MWNIuvJRTy3QbJU9Iq5r0+pk1w3OdsMmBNDZ7u3Nabk8tH9+ptTSx4L4Go8zX6FGm/TFhbifDaZali48A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9006.eurprd04.prod.outlook.com (2603:10a6:102:20e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 16:11:37 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 16:11:37 +0000
Message-ID: <5852ba8f-d9d8-e143-b6de-a77c3bf14799@theobroma-systems.com>
Date: Mon, 2 Jan 2023 17:11:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] Remove kernel image and modules from rootfs
Content-Language: en-US
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 yocto@lists.yoctoproject.org
References: <Y6N23Z8n++QpwfFI@Hephaistos.local>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <Y6N23Z8n++QpwfFI@Hephaistos.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0055.eurprd09.prod.outlook.com
 (2603:10a6:802:1::44) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9006:EE_
X-MS-Office365-Filtering-Correlation-Id: 194e2f9d-c1f0-4e1c-a291-08daecdc069c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Dhqjvk3XFKTfffUUil+qNinVnx6PmSuE/O8TvC9AgxqToMZzzqIHzBW5hOAAcbTbNrD59U4NYAus51woZSMYqHcZl+WpxcMc922+48MWfliOjj4Ur4yWe9Am1tS9RyvNmc4tn+ZZW/H4Hw5eVkM+/RC4Rrt41w3Oj1Y7drMp1jj6azcwwCGVLlSklNSzg7XZZOMwtzSxKD3DQpzsdodE5zX8WA0r+6R9cKYoL/st1ApSXOMxSzRdx7mXs+EWWxYiA3PlY1H6xkylEBeuaww0UjoNDk5lml0EIeO7s2BYSiC9/y8jpKc52gFydyCiGB+v10La1YmijNMUv8HL0qkXDI3ztWZgM3ZpYoKTxIdVxx1fwcBaju5/wH0Ou2pcvclfnb2gWpuNkI9xJhH+lPvO6QZ6X4l/YLO/eBd1o4LRtEB7myYzwf+hqfX2QLKGRTG6VhJI0aJj//6OPAqaxhaLH4gH6llCd6YW+T2LuzedvPOg0/697XfMacnxZ90LrxiDCc2WxbKxrqZVLF+Rryx9HyGYbv7o+gU6fD72RzFFgu9fiiGLT/BubUQzQHylURSWtfS2H5julcr+Uf5PI1r6SZpJJn4SukGT8/mzQiM/bszqZkJk51W12F8/3vWcrHsfhgztZnsu/DhiLhz4OcXqrD5kc61QF6YVw3pe8NBKkMqHzKLfMffQ1OftN+LzUqtS6V/P9P6gSt8hE823htpMn+SheDeJm6d+Widq11nHXSv9gEM0OeNiuEJK1KCp1Ko2q2UJE8prGxckFyWPSNEN8g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(376002)(136003)(366004)(346002)(396003)(451199015)(31696002)(86362001)(38100700002)(2906002)(5660300002)(44832011)(8936002)(41300700001)(478600001)(6506007)(2616005)(53546011)(316002)(186003)(6512007)(66476007)(8676002)(66946007)(66556008)(6486002)(31686004)(36756003)(22166006)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3ppcFAvWDZHMSs0dGVLaUN4RDlNYnVJWGN2SDVvS2UzWGhkNmNWd2dDK2d0?=
 =?utf-8?B?SjJCRGdPQzlRR0hsTmptMGoxQW5ZeXNkVU1FL0V2QS9sUjRBR0UzNS9FKzg1?=
 =?utf-8?B?WUVCQ1dMZm0zbFVnTHlQZkltdDdtaGxIelFoTXlMWFN6dkFodTAvRFpTbklw?=
 =?utf-8?B?VVFIbEdHbEFMRTNDckRXcmJDeFJVK21naUkzZ2t6bkRuaVNMU3VGRVVNL0pq?=
 =?utf-8?B?cW1RR3JueExSMDJ2TUVoTXEzSVdkNjdWUHB6SkJIZ0h3dUhyaDVJU3IwdlJy?=
 =?utf-8?B?WjFSUWxFQ2RZcXRyaVhzbWIvSVhsaGxxYW81dHhQU0RrYlVMTC90TlE3STdk?=
 =?utf-8?B?N2RqZ25MT2xhZTJSZXNPUmV1bTNLYWx2dHF6ejEwTnJIaENVakY4elE1dWlP?=
 =?utf-8?B?SjUvOXY3My9GclJEV280YXZad3NVWTFJMDZ3RjRwVS9YVDlCYitBajdwQm1m?=
 =?utf-8?B?SEZVVE9CS1dHYm5ReVRFc0pGSktWcTUrUi9YSmROaFpQUGNQWXJwOERWQU16?=
 =?utf-8?B?clpRbWNPZnhjUzlXRVpmM2FQcjVBdzlrdU5vWWxyQ2IwVXdWTkZlTGNINWZR?=
 =?utf-8?B?Wm1nd1p1VnRoazVtUk1HaXJUOGs0SlMrNURDVDEyVWE5eExsZHJ0bVFLY09l?=
 =?utf-8?B?Rm5VUTJiWjFRNk9leTQ5SzNmTWY2Qm9RSVRtSVZ3Q2lXdFg4aXk0TmR4ajdp?=
 =?utf-8?B?dVpYYTVLRGs4ZlJTWG5QQU5BS1dzcGJ4VnFuVzYrWnlTYWtBUjJySHdRSlBK?=
 =?utf-8?B?cU5sTTZYS3F5Wkk3WlhCc1pXRk8za0VITktmYXlPa2Izcm9BVmYzMFptTEpX?=
 =?utf-8?B?aVRoN2NtWkl1aGw4WERIUVJvb1pQRU92VHdZYmNtelRLSm1mZlBKRm5aN2tY?=
 =?utf-8?B?RTNBR0tjTXNpVzFzSW43RVRjWUdwQzhaSlNyYnJBT2VpV1J2WFpjMGNRemRr?=
 =?utf-8?B?S3hZMWFFUzhJZUd2TzM2UGlNaUMzV2tnQ0thQXZxd082WXh1eXA2RkZ6Rjgw?=
 =?utf-8?B?bHFWQmNiQlpLc0hYR3hNbnhyYVE1RjdWaDlnQ3JLUi8wbXVtc1JvT3ZjNFl5?=
 =?utf-8?B?SE5sVm9JV3ZmZGhobktVQzRLRk1QVFdzWlhvY2ZiNGhVazhNQnBVMFBiVmxF?=
 =?utf-8?B?SHl6eS9QcnNoY1ZsbExYbGJHbG1aZTQyT0JxN25SWFR3YnQ0YTVmYTB2dENa?=
 =?utf-8?B?OEFRdUJFRWFtT0Y3Y0l5M3JYblRGVS8wR0FrS1B4WmZIR1lFenJMUE92dnow?=
 =?utf-8?B?RGQvbmM4d3lUS1JuZ3VRSm5rODVMWFVWdm1jYkdiYnJsNDBqZnk4TXhhZzIw?=
 =?utf-8?B?bHd2NFAvZEFSVUZiVFl1M1pyblFkSFlrRmRabVJ5Wi94TnpXZHV2bVFMZ3Fw?=
 =?utf-8?B?QW1WTWNjK1hBUUtvcGcwcUtwUUo2dDVndVl2VUdZUTc3cHRmL0hhbDJQRHlX?=
 =?utf-8?B?YTZ6VlFNQVZrUVdjcjhEMGhLaXVVak05b2M2TlJHR0RRb1V2T3IvTVFKMEY4?=
 =?utf-8?B?bVhLR2VHN3dVaXREZm5kSDFJempzcENPZ052SmRyQnBtbTJTMWRDUURnWjFz?=
 =?utf-8?B?RmZ3eit0eDNVOG5BbVZMOHVJUDArcHhVY0hkVWZuWEVudjlseHZUTmxqRS9l?=
 =?utf-8?B?dk1tdUpJRG5rZ2o3aFVJWENQZXVGeElJUDhWVFFtSkE0ci9Jb1lCQXVkdS9w?=
 =?utf-8?B?S1l6a2xhS2FxOUMwS0luYThQbXlRSGk4NGhmN1ZPRWY0Rk52cDRiTndMTTY4?=
 =?utf-8?B?L2JtbTFCVlBHeEc2SG14alVOMXpRcVlMbWh1N3hnNndxTG5mSTcwUVpQQmND?=
 =?utf-8?B?bEhiMG9KcGRPVjZIWjgvd2YzQk0vNjhQcGFVdnkzM2RlT1V5bFJGWjZKS3V3?=
 =?utf-8?B?bThWd0M5NzU1T3JlRXEvdHB5WTZHN2lOb3BSbk1XNGI0WXMveWJ0WW8xOWZI?=
 =?utf-8?B?M0doTkVDaTNSRitKR1FZQlVXTVByOTlzNnRHQ1U2cHlHdWFvQkRjTmRiVnVk?=
 =?utf-8?B?cXpsRzF6akFHK2FXQm1aVlU2d1gzaEdtemdLWXhtVUxNUkZzM0ZnMjE1eEY4?=
 =?utf-8?B?RVk3THBVWTIyVUtiejRRWUFQcC9QazA5dGVXQXJyL0VpRjFnYWhqTE1qZHhy?=
 =?utf-8?B?djJ3NW1QTFpoSEkxNTJsaGUrc3Rja2FtZHhYSzVNOU1RbEdiTDh4VzVHczcr?=
 =?utf-8?B?emlrT0UvMjR3UE93VEV5L09wZjZYQTJpZFN3U1NIZk1kYVUrY2UreHR0V3ZN?=
 =?utf-8?B?dU1CemxkemNZMTNIb3BESmtWRFZRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 194e2f9d-c1f0-4e1c-a291-08daecdc069c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2023 16:11:37.6578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x81BdUaz8ltci3QObrJiA/H6RA37yOHZcRSN1zbaXDAX5Jst9SRohDVz7KZKrp/O85lkPMV9tb5Y5KZ021iU6ui+arh+Y9uDXtrlWdIw5tc3d9mE46ApvaYzOiG4yjAh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9006
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Jan 2023 16:11:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58892

Hi Konstantin,

On 12/21/22 22:13, Konstantin Kletschke wrote:
> Hi,
> 
> I am creating a rootfs/bootloader/kernel to run on a beaglebone black
> usually and it works great.
> 
> So I have in conf/local.conf
> 
> MACHINE ?= "beaglebone-yocto"
> 
> and an own layer meta-insidem2m which defines some image settings in
> recipes-core/images/insidem2m-s.bb among other recipes for packages and
> package modification.
> 
> Now I wan't to create a rootfs without the kernel image and the kernel
> modules to make it as small as possible to use it as a basis to run as a
> docker image.
> 
> Now I wonder how to instruct bitbake to not put the kernel image (and
> modules) into the rootfs.
> 
> I read this was done by
> 
> RDEPENDS_${KERNEL_PACKAGE_NAME}-base = ""
> 
> but this is now deprecated for kirkstone and should be done this way:
> 
> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
> 

This makes sense, I'll send a patch updating the documentation to 
reflect this change. I thought we already had discussed about this and 
someone sent a patch but doesn't seem so :/

> But rootfs always still is equipped with kernel and modules.
> I tried all permutations of
> 
> #RDEPENDS_kernel-base = ""
> #MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
> #RDEPENDS_kernel-base = ""
> #PREFERRED_PROVIDER_virtual/kernel = "linux-dummy"
> # Don't include kernels in standard images
> ##RDEPENDS:kernel-base = ""
> #RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
> #MACHINE_EXTRA_RRECOMMENDS = ""
> #RDEPENDS_${KERNEL_PACKAGE_NAME}-base = ""
> 
> in my conf/local.conf but no avail...
> 
> How is this done correctly?
> Are there any variables to check I might have (being) set preventing me
> to do this? Or is it necessary to split out a new MACHINE, i.e. can this
> only be done in an own created machine which has to be split out?
> 
> I thought setting such at the bottom of conf/local.conf always "wins".
> 

No.

So I believe you need to add:
MACHINE_EXTRA_RRECOMMENDS:beaglebone-yocto = ""
MACHINE_ESSENTIAL_EXTRA_RDEPENDS:remove:beaglebone-yocto = "kernel-image 
kernel-devicetree"
RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
to your local.conf

I suggest you create your own machine configuration file which requires 
beaglebone-yocto.conf where you'll be able to set:
MACHINE_EXTRA_RRECOMMENDS = ""
MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""

since one is not supposed to share their local.conf :)

You can check the value of a variable by running bitbake-getvar -r 
virtual/kernel MACHINE_EXTRA_RRECOMMENDS for example.

Cheers,
Quentin

