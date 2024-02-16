Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39DEAC48BEB
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 09:31:49 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.138])
 by mx.groups.io with SMTP id smtpd.web11.15217.1708075903304125275
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 01:31:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=Dpr4BLSy;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.138, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWq0Svn176nytZSRRs4pAjTbwZVRohypevjowXhY/VzBjUt0lOwCbxZzYsxmLXI37wc9VYdhsagxjXsfElLfgYFIm+zNd9qfKzo2Xej6G+L2yIOEty87fxq5KCy2l29RvQW93AN/40lQxpTViiZXiMxrDR71YXyC7xNFuxj6buZfVECKQzYyD5IaiMwAwYds2kqwndNVrr9R+hlXiPe5U5SZG6+wmbhefgLSJAI/7x0UOW8PXx6yf2v3Qxq6pPV8jMVMpRcrNW2/Dtn3w5iWK9BK9yL1D+VygA/y/SmsTs7fFgmUjsj8yTwjntr4dNOMbBoAvBEbxZ838CV8jb5EjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ZvG5k5AQRg0WoHcTs24BfE4wFaK0UWHLFAly5LeM4A=;
 b=oO3dAWOLuQWTy5p27/2MWai7lKSrN09rcciqNUCMDSY6WGgPka/gFQFyhZz8KY6AB9Zwjz5YaQXWApLCNDARP5XfOLri3r4dEaSa7TeAFmH6a+pBT5ZobcPeKZqXkysXMcoKbSJPLWSuCR4udYIDma8jTW8v4gMDs0LchAd3VTy0DHNjJcitg2tIcl2lgp417224k9zqc/cbCGyq2+yUT4vbD6orgHwZAEC+4IfeaxwjjHfo/+SgLabfmTnwzRoMqDqgQ8ARm1fnLeUrlMNeTtqCVScH7zCYHsuc9+lRFqrF+EexxVM1bAjNHWkvI3/rDuO9EoNlw0dw39X9wyYcKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ZvG5k5AQRg0WoHcTs24BfE4wFaK0UWHLFAly5LeM4A=;
 b=Dpr4BLSy6T8XiXaTM4BeV80rnSxtwEC8EFpcLalLPYMOWC/nJeA/PRhlakClp7b9AwCX1x+5HsvweNZ2+d74+aUEj0zrqMjtV+KPX48mtoMpRA4Fg9XQNqFcrmPZgEymC7zBnNoUaJSHKC5uZLNJwo76Itr9KZRAPUJHSxd+TxIpW4P1jg5C6YI83kS/XHrIfaK3qGV3CDAFxbEVGNFMdYag1UVzpS3Pw/vnC1dRDDz/jES5+z/d/zWKKom0myfqsy+k7/j6CFHdV8qn/yBOzjJsQqR3c96GyPLG0pGfPWHXasKPy95FeHE/BEXPbswtmKVSOPU4Jz66TYwSGjlcbg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PA4PR04MB7550.eurprd04.prod.outlook.com (2603:10a6:102:f0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Fri, 16 Feb
 2024 09:31:38 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 09:31:38 +0000
Message-ID: <582d100d-c868-4920-a773-3dbdfb31f009@theobroma-systems.com>
Date: Fri, 16 Feb 2024 10:31:36 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 3/4] remove /boot partition from
 wic:bootimg-paritition
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-3-twoerner@gmail.com>
 <ebaf257d-6822-4e23-bc09-7606a90a4f7a@theobroma-systems.com>
 <20240216082531.GA2571@localhost>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240216082531.GA2571@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR3P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PA4PR04MB7550:EE_
X-MS-Office365-Filtering-Correlation-Id: f9515842-2825-444a-0d7d-08dc2ed21390
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TX9AWel5tkGoZ/O/v5f+yv34JoZ4GpyoAjTJyMmbDTqoJdbsy6J1y7bKQg3k3qCp5VXm6NZxeIIarmpmqyhT9//tD4spmSJBJQyoh+1hrAMECqvDmnaooESEpHj/cxvn0dTYWM718nm0LXqdRnaDf/P9F364YsWFikjkEW73vjxPInA1WRaT2pqEQtUjVErRUN4I5v0IJgmbZmO0N9hxHP7KeXVLfLzqrm78JUtaDehZzvyiKwqYx14+B0js60GoSazh20SRq3tXi0Ts9A+ZlP4Xtepewnqc1jrzXHBC/KsPHdDTD1dwKdWMv8hPlWLDZc3UJ0QmWsXKVeQs0JVi8VxmKrQI0+6HYM1bIrEnisLzZ2+0mTp1CKtWwcyz8OYqZQckQ8FYt+RKXMylspmB/4168hh2fPc1+jBlf27t7q5EFkZxmOsbiOg9MYjMswjJDfWis2aKm+7K4Jpxk/jmPMWXJqDSpNBMpXVlrhuwysoi/1CayEy25w2L8Ak6D1oioFI2C5rv2eLWDPFk2+hZtJpG7w+c7DBSusAZ71ryrTM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(346002)(136003)(39850400004)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(8676002)(36756003)(31696002)(31686004)(66556008)(8936002)(66946007)(86362001)(66476007)(2906002)(83380400001)(44832011)(6916009)(2616005)(41300700001)(4326008)(316002)(5660300002)(30864003)(6512007)(45080400002)(6486002)(966005)(478600001)(6506007)(53546011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?amtxMFpzc3dNTHB6SW5oaDQzMkx1VEhNR083T3BhWTJJMlF4OW1jSVNleVRE?=
 =?utf-8?B?R3N1NlVZbHRjbUpRNHg2UHk3SEZCbThjRWwvVmoxdy8vNnBIWUx5SE5KOWYy?=
 =?utf-8?B?NElXdFB4OGZiMnpMUCtrdGptSGxyQU5sWFpubll4c3M3eVYyVzVwb3oxUDda?=
 =?utf-8?B?KzZmdEp6STlYcS9XUzczN2lURHR5OVR0bWZsRFdESU4wS04xTTUzRUltckxR?=
 =?utf-8?B?d2JWWmdyazVadER3dWFYcXRabTVoelZ5eW8vZ1B3bVVIR1NqbUNUSnRoUUZU?=
 =?utf-8?B?bk5CMTAwY1hVcUxVdTVtTnlDeDU4QUgwbjRNeTBFQkJBTHVnbWdPNjJGNnB4?=
 =?utf-8?B?dFFHZUFuS00zRzVja0p3UDNBZjVKR0t0WjZjSnByK2Z6TldFMEN1T3diRXVz?=
 =?utf-8?B?ZndZYkVoYWxLa1hGTDBicUxydDJMT1pPV3lGR2pIQUFWbGhVK2N5S3Urbzho?=
 =?utf-8?B?T1kvck5vZ3MxUEdWWkovc3Q1LzM2NkN3cjd4TVAxdWdyd2ZRKzZFQzRkYXF1?=
 =?utf-8?B?VUovdXJqOGNIWE16TWpqOUxIbkp0c2U0VHlOK0xGQmh0N1daK0JGL3FPWEx4?=
 =?utf-8?B?OWZNckt1WVh6dUtYV01vWWZkbW41OURBVFRxenhVeGs0ZlA1TVgwSGQ2ZzI3?=
 =?utf-8?B?TFVKMEtkUXFFU2xzT01JRWZQaUE3c09BRTZyRFFiZ2tRQXFEWTFxelU0cllK?=
 =?utf-8?B?NzNBcUZaK3NWZWFJaW83SU5GWE5zRTRxK0R6Y2JQeGIzVDhtWUJKOHhzZERS?=
 =?utf-8?B?eVFDdmpDZVBtYVlFVEFjdUlPYy9PV1BVOUdXVWZqOFpsb0hHTEh3S0dja1NB?=
 =?utf-8?B?MzdWZThES1U2K3hiUW5VMnExcUVTOHd4UGlCckxNU2pZTUxJMHVmVCt2VlBD?=
 =?utf-8?B?VWY3Sm00TVNxUUNuSGFkVkt3NUdoaWxtL0o4TzNPSHpvT3QwR2hMeG9qTDA0?=
 =?utf-8?B?eFV2dWRqbk4vU204dCtPUHlLSkdQQlVLQVhrelQvMWt5ZDhnRkVlaW1sYXpa?=
 =?utf-8?B?T0NveEh5cHJGZnVBYkQ4RUFhZzd0L0IrMDZBcHVoRTVBZDdyUDQ1V3Y4NTVL?=
 =?utf-8?B?TGlqZEQ0TjdodG82RFZrL2RDbDRCZjJUUzVxOEtTWWc4MUozTDM5d3Vwam5Y?=
 =?utf-8?B?VGtlc3M2THY5OGgvQlhWQTdla3BteTdxZTNIVHdDanFEWFNuS0oxZWl1Rmpk?=
 =?utf-8?B?UXdYT1hzZVFyZmJKRCtzRnZxNnZwUU5rNGs0alpzbmptdEpMak9PQkg1WWhz?=
 =?utf-8?B?aGtVeGtFM1VyWVJ5ckR3MDhaYkhLcTM0NkprQWE5K3BCVWdzNjFSc20vUGJt?=
 =?utf-8?B?d2Jra2xjMk1lVkxqZWpFRktkdFpGa1RRZUMvNmdtM2dsbEx1SXZ4cjkwVm5K?=
 =?utf-8?B?dmYyclN4bHFQK2NQbkxvMWlxUURjakhiODhISjFqNXVXNFh1UjF1RzFkMGpS?=
 =?utf-8?B?RlloYzBrOEhsUjVsTUJHWEg4akszRGFBTEJrYnBvUDdrRXRRZlZRUW5TUTMz?=
 =?utf-8?B?R0NhK29ZcWc1R0hWeEhGOWZ2Z1BMNDY0eW5pSndKY3VoL0svZVdIUjF5a1c4?=
 =?utf-8?B?SVlDSkM1MU5KOUNIVWpQQUFRUkdVRFFSQlQyRFhmbUNFTEdyZk1ZRENUYWt0?=
 =?utf-8?B?NkNhKzdua3VyR1lOZEZyQ1BHTW0xKzkxSHM1emV0ZnhDblNqY3ZZMk9NK0Ez?=
 =?utf-8?B?dFg0dFg1WHVtZUE2MVpkb0VLcXhBTjZBZ3EwZ3ZONW9xL2JqZldtb3BKbEVY?=
 =?utf-8?B?TGRQZ0VCM2pRN05UWnB4ZVhvY0ZMeTIyanF1bWxtcWNsd1IrNi90R0c0WmRt?=
 =?utf-8?B?QkIwU002eTArd2g3TFI1Q1ovWm5GN213aHVsWUZHOTZwU3JYbUwxODh4bGVh?=
 =?utf-8?B?aDV6R2ZVTzl3UEtnWndZR2x6QVJBMG5TZFVzK2pQM294RXhncXhIb2pnTXgy?=
 =?utf-8?B?dURGQXhSSHBUdWkyS29nYXJrRjYrbTB1ZWNCd01VZS9QK3pUS21hekxQZFd2?=
 =?utf-8?B?ajJqNm14b3B6R2p0UkI3VDFpNlRhdUhsWVA3dWRQdDczVnR3dnNhWWI0cUNv?=
 =?utf-8?B?RkxiWjUyd0xPai9UQ25HQkw0VUU3eWF3bHF6Y1dpK3E0ZmtUSjlzU2krMlhT?=
 =?utf-8?B?QnFhYkF0aW5KTjZ0bGNsMXNsWEQ0WWdXQi80NElvc0hmWHp0aUIrZkhaY09m?=
 =?utf-8?B?aEd2R1pQWU5wcGNaaG9ZNFJGYjBGdEcxVTVXNXJzZDBxNE05QUliRzJjb0Zt?=
 =?utf-8?B?V3crMlRtck1wN0s4UExkQkVIZ2pnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9515842-2825-444a-0d7d-08dc2ed21390
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 09:31:38.7101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DcRHlT+zPAdQQaO3RaWP70qq4W8aYvJkEWFEB8MAB2D+4y0ft1sEU94K9UNy6GbCvG6zt8zlp0hA1DRZwHQ6uEvWHiuMJ00rIW/mHfI04xbeXN0rr3jccQ3DaYnVYdWf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7550
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 09:31:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62517



On 2/16/24 09:25, Trevor Woerner wrote:
> On Thu 2024-02-15 @ 06:45:59 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
[...]
>>> +UBOOT_EXTLINUX_KERNEL_IMAGE ?= "/boot/${KERNEL_IMAGETYPE}"
>>
>> FWIW, I don't think /boot is required. bootstd/bootmeth in U-Boot (upstream
>> at the very least) will check for / and then /boot prefix for the paths in
>> extlinux.conf. Not providing /boot means if someone still wants to use a
>> separate boot partition, they wouldn't have to update this variable. But
>> since it's overridable, this is basically up to your preference.
> 
> This is a good example of working ahead. The next thing I have queued up is
> a meta-rauc-rockchip example that works generically on all (most?) rockchip
> boards. As part of the U-Boot script I need to make the A/B logic work, it
> needs the "/boot" in there otherwise it doesn't work; therefore it's best to
> set it up properly now.
> 

Mmmm I'm interested to see why it fails without the /boot thing? Let's 
see when we get patches :)

>>> +UBOOT_EXTLINUX_LABELS ?= "default"
>>> +UBOOT_EXTLINUX_MENU_DESCRIPTION:default ?= "${MACHINE}"
>>> +
>>> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "u-boot-extlinux"
>>
>> Is the image actually bootable if we do NOT have u-boot-extlinux installed?
>> I'm challenging the RRECOMMENDS basically. And wondering whether
>> MACHINE_ESSENTIAL_EXTRA_* is always included (it seems like RDEPENDS one is
>> part of packagegroup-core-boot which is virtually installed in all images).
> 
> I can double-check, but I'm pretty sure that line was added explicitly after
> testing and noticing that it was needed. If we remove the extlinux artifacts
> from the image, what boot method is U-Boot supposed to use?
> 

I'm not saying it is not needed, I'm thinking _RRECOMMENDS is too weak 
and it should be _RDEPENDS instead?

I'm not sure the wic image (or rather the rootfs) is proper basically if 
u-boot-extlinux is not installed.

As for what U-Boot does if it doesn't find an extlinux.conf, it depends 
on what U-Boot is configured to do. If I rememebr correctly, most (all) 
Rockchip boards now use bootflow by default.

You can check the content of the bootcmd environment variable, that's 
what's started when the user does nothing to interrupt the boot.

For me on Jaguar RK3588:
"""
 > printenv bootcmd
bootcmd=bootflow scan -lb
"""

remove the -b flag so it doesn't boot and you should have something 
reasonable.

For me:
"""
=> bootflow scan -lae
Scanning for bootflows in all bootdevs
Seq  Method       State   Uclass    Part  Name                      Filename
---  -----------  ------  --------  ----  ------------------------ 
----------------
Scanning global bootmeth 'efi_mgr':
   0  efi_mgr      ready   (none)       0  <NULL>
Scanning bootdev 'mmc@fe2e0000.bootdev':
   1  extlinux     media   mmc          0  mmc@fe2e0000.bootdev.whol
      ** No partition found, err=-2: No such file or directory
   2  script       media   mmc          0  mmc@fe2e0000.bootdev.whol
      ** No partition found, err=-2: No such file or directory
   3  efi          media   mmc          0  mmc@fe2e0000.bootdev.whol
      ** No partition found, err=-2: No such file or directory
   4  pxe          base    mmc          0  mmc@fe2e0000.bootdev.whol
      ** No media/partition found, err=-524: Unknown error
   5  extlinux     media   mmc          1  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   6  script       media   mmc          1  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   7  efi          media   mmc          1  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   8  pxe          base    mmc          1  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
   9  extlinux     media   mmc          2  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   a  script       media   mmc          2  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   b  efi          media   mmc          2  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   c  pxe          base    mmc          2  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
   d  extlinux     media   mmc          3  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   e  script       media   mmc          3  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
   f  efi          media   mmc          3  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  10  pxe          base    mmc          3  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  11  extlinux     media   mmc          4  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  12  script       media   mmc          4  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  13  efi          media   mmc          4  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  14  pxe          base    mmc          4  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  15  extlinux     media   mmc          5  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  16  script       media   mmc          5  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  17  efi          media   mmc          5  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  18  pxe          base    mmc          5  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  19  extlinux     ready   mmc          6  mmc@fe2e0000.bootdev.part 
/extlinux/extlinux.conf
  1a  script       fs      mmc          6  mmc@fe2e0000.bootdev.part 
/boot/boot.scr
      ** File not found, err=-2: No such file or directory
  1b  efi          fs      mmc          6  mmc@fe2e0000.bootdev.part 
efi/boot/bootaa64.efi
      ** File not found, err=-2: No such file or directory
  1c  pxe          base    mmc          6  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  1d  extlinux     media   mmc          7  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  1e  script       media   mmc          7  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  1f  efi          media   mmc          7  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-22: Invalid argument
  20  pxe          base    mmc          7  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  21  extlinux     media   mmc          8  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  22  script       media   mmc          8  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  23  efi          media   mmc          8  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  24  pxe          base    mmc          8  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  25  extlinux     media   mmc          9  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  26  script       media   mmc          9  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  27  efi          media   mmc          9  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  28  pxe          base    mmc          9  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  29  extlinux     media   mmc          a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  2a  script       media   mmc          a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  2b  efi          media   mmc          a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  2c  pxe          base    mmc          a  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  2d  extlinux     media   mmc          b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  2e  script       media   mmc          b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  2f  efi          media   mmc          b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  30  pxe          base    mmc          b  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  31  extlinux     media   mmc          c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  32  script       media   mmc          c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  33  efi          media   mmc          c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  34  pxe          base    mmc          c  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  35  extlinux     media   mmc          d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  36  script       media   mmc          d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  37  efi          media   mmc          d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  38  pxe          base    mmc          d  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  39  extlinux     media   mmc          e  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  3a  script       media   mmc          e  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  3b  efi          media   mmc          e  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  3c  pxe          base    mmc          e  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  3d  extlinux     media   mmc          f  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  3e  script       media   mmc          f  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  3f  efi          media   mmc          f  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  40  pxe          base    mmc          f  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  41  extlinux     media   mmc         10  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  42  script       media   mmc         10  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  43  efi          media   mmc         10  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  44  pxe          base    mmc         10  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  45  extlinux     media   mmc         11  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  46  script       media   mmc         11  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  47  efi          media   mmc         11  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  48  pxe          base    mmc         11  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  49  extlinux     media   mmc         12  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  4a  script       media   mmc         12  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  4b  efi          media   mmc         12  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  4c  pxe          base    mmc         12  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  4d  extlinux     media   mmc         13  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  4e  script       media   mmc         13  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  4f  efi          media   mmc         13  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  50  pxe          base    mmc         13  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  51  extlinux     media   mmc         14  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  52  script       media   mmc         14  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  53  efi          media   mmc         14  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  54  pxe          base    mmc         14  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  55  extlinux     media   mmc         15  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  56  script       media   mmc         15  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  57  efi          media   mmc         15  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  58  pxe          base    mmc         15  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  59  extlinux     media   mmc         16  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  5a  script       media   mmc         16  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  5b  efi          media   mmc         16  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  5c  pxe          base    mmc         16  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  5d  extlinux     media   mmc         17  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  5e  script       media   mmc         17  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  5f  efi          media   mmc         17  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  60  pxe          base    mmc         17  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  61  extlinux     media   mmc         18  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  62  script       media   mmc         18  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  63  efi          media   mmc         18  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  64  pxe          base    mmc         18  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  65  extlinux     media   mmc         19  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  66  script       media   mmc         19  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  67  efi          media   mmc         19  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  68  pxe          base    mmc         19  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  69  extlinux     media   mmc         1a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  6a  script       media   mmc         1a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  6b  efi          media   mmc         1a  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  6c  pxe          base    mmc         1a  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  6d  extlinux     media   mmc         1b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  6e  script       media   mmc         1b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  6f  efi          media   mmc         1b  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  70  pxe          base    mmc         1b  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  71  extlinux     media   mmc         1c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  72  script       media   mmc         1c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  73  efi          media   mmc         1c  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  74  pxe          base    mmc         1c  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
  75  extlinux     media   mmc         1d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  76  script       media   mmc         1d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  77  efi          media   mmc         1d  mmc@fe2e0000.bootdev.part
      ** No partition found, err=-2: No such file or directory
  78  pxe          base    mmc         1d  mmc@fe2e0000.bootdev.part
      ** No media/partition found, err=-524: Unknown error
Scanning bootdev 'mmc@fe2c0000.bootdev':
Card did not respond to voltage select! : -110
Unknown uclass 'nvme' in label
scanning bus for devices...
Bus usb@fc800000: USB EHCI 1.00
Bus usb@fc840000: USB OHCI 1.0
Bus usb@fc880000: USB EHCI 1.00
Bus usb@fc8c0000: USB OHCI 1.0
scanning bus usb@fc800000 for devices... 1 USB Device(s) found
scanning bus usb@fc840000 for devices... 1 USB Device(s) found
scanning bus usb@fc880000 for devices... 1 USB Device(s) found
scanning bus usb@fc8c0000 for devices... 1 USB Device(s) found
BOOTP broadcast 1
BOOTP broadcast 2
BOOTP broadcast 3
BOOTP broadcast 4
BOOTP broadcast 5
BOOTP broadcast 6
BOOTP broadcast 7
BOOTP broadcast 8
BOOTP broadcast 9
BOOTP broadcast 10
BOOTP broadcast 11
BOOTP broadcast 12
BOOTP broadcast 13
BOOTP broadcast 14
BOOTP broadcast 15
BOOTP broadcast 16
BOOTP broadcast 17

Retry time exceeded; starting again
BOOTP broadcast 1
BOOTP broadcast 2
BOOTP broadcast 3
BOOTP broadcast 4
BOOTP broadcast 5
BOOTP broadcast 6
BOOTP broadcast 7
BOOTP broadcast 8
BOOTP broadcast 9
BOOTP broadcast 10
BOOTP broadcast 11
BOOTP broadcast 12
BOOTP broadcast 13
BOOTP broadcast 14
BOOTP broadcast 15
BOOTP broadcast 16
BOOTP broadcast 17

Retry time exceeded; starting again
No more bootdevs
---  -----------  ------  --------  ----  ------------------------ 
----------------
(121 bootflows, 2 valid)
"""

The media tested seems to be located in boot_targets, which defaults for 
that board to:

"""
 > printenv boot_targets
boot_targets=mmc0 mmc1 nvme scsi usb pxe dhcp spi
"""

So it tries to boot from mmc0 (eMMC usually), mmc1 (SD card usually), 
nvme, scsi, usb, pxe (glorified TFTP?), dhcp, spi.

So if nothing works/exists before scsi, then it'll try to boot from 
that, then USB, then from the network and finally maybe from spi but 
that is very likely to fail as well since SPI flashes are typically very 
small and wouldn't be able to contain even the kernel Image?

>> This is actually quite nice, I was wondering also if there was a way to
>> create as many entries as there are Device Trees supported for the machine
>> (and maybe even device tree overlays? but this one's difficult because we
>> need knowledge of which device tree overlay can apply on top of which device
>> tree(s) :) ). But I don't think we can have anonymous python in conf file?
>> Or maybe we should do this in u-boot bbappend?
> 
> Yes. The bbclass has logic to generate as many entries as user-supplied labels
> in UBOOT_EXTLINUX_LABELS:
> 
> https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/uboot-extlinux-config.bbclass#n114
> 
> I actually hint at the mechanism my providing the superfluous ":default"
> entry.
> 

I'm actually more discussing how to *feed* this to this part of the 
code. Right now, this is manual because we need to define labels and for 
each variable a label override.

I was wondering if we could have something that automatically creates 
labels for the non fitimage usecase, based on the KERNEL_DEVICETREE 
variable.

in pseudo code:

UBOOT_EXTLINUX_LABELS ?= ""

python __anonymous() {
     UBOOT_EXTLINUX_DEFAULT_LABEL = first(KERNEL_DEVICETREE)
     for devicetree in KERNEL_DEVICETREE:
         UBOOT_EXTLINUX_LABELS += basename(devicetree)
         UBOOT_EXTLINUX_FDT:basename(devicetree) = devicetree
}

>>> diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machine/include/rockchip-wic.inc
>>> index 67a8310f7d6a..cae14c90e1db 100644
>>> --- a/conf/machine/include/rockchip-wic.inc
>>> +++ b/conf/machine/include/rockchip-wic.inc
>>> @@ -1,5 +1,7 @@
>>>    # common meta-rockchip wic/wks items
>>> +require conf/machine/include/rockchip-extlinux.inc
>>> +
>>>    SPL_BINARY ?= "idbloader.img"
>>>    IMAGE_FSTYPES += "wic wic.bmap"
>>> @@ -11,23 +13,8 @@ WKS_FILE_DEPENDS ?= " \
>>>    	virtual/bootloader \
>>>    	virtual/kernel \
>>>    	"
>>
>> Does the WKS file still really depend on virtual/kernel or is it rather a
>> misplaced dependency now?
> 
> Great catch! Also, since all the partitions now have explicit fstypes, and the
> fact we no longer have a vfat-formatted /boot partition, the mtools-native and
> dosfstools-native dependencies can also be removed.
> 
> It will probably get rejected, but I think I'm going to create a patch for wic
> that assumes unspecified partitions are "none" instead of "vfat". I wonder how
> many BSP layers are copy&past'ing the mtools and dosfstools dependencies that
> aren't using vfat-based partitions and wondering why?
> 

And a nice catch from you there too :)

Cheers,
Quentin

