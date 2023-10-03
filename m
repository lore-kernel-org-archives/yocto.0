Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB6E75440
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:11:27 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.55])
 by mx.groups.io with SMTP id smtpd.web10.105016.1696327877563462358
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=C3dGJIRy;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.55, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjv1H5uAlWYKyMhwaeLsWgq+jHsUOlY4/0mbgzCK7ffwxx5rYCvITt9LC27DU3DmKuZNcQz/kR7Jc8j5Qy/cJWPXOpld7EtTDluK/PnVP/WLBMNMAHm/UPzmpfRaq0Vu5ljiTmYk53OkOdj8mqnfOnLrOi0G9kdNLln6otZkgeajAY9MTksGB3ZYsRyL1N8PBKy7id9ee2Ukqh8a7/WJEu0KOR4+CyoQqGEJXny6RvYHy5NgNH4ZPGYYgyF4EMrWHAHfD0YXQQb6WNOtKZ80F5U5Sp+XQ9N5FAlKR9tdd/RBWaW4favy+VWVIQsfxICzZZCZI1sukJyWIgp8Vhk+gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVi3/u3o+7Vo6xNOA/ILbX0k9WOHNqpISiZNYfBkaGY=;
 b=Pz7NISTPa198hZ1ytAASAsETaSzfbrEIvG0+qwzMko5NLcAp9zWbvpNdNIjZQhaVeNWltUGqMZWT3Ykh4zIFs5fAvCHcN3FM4sjdSeyHTKlczFatkymNTPpDH3ommZhKlrOxnig56x/34rc6ljNTzDEXC7ma3FnNbUoQNA7xPnx2Q9chvHhoqDf9FgggOmyb9m2UHt0S5JbHteA5DLauKBeOyt2qt6a3a39abB9g5Bf+uYsF0zIBDaVzp8wohEAP0ILUUgtsbL8/vPlT12qDOuetATS8Vi9x9mwEfXfBZfRYCIDjDoJNbsab9RJNr6w38COmwToKohG5p7bU+5XZkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVi3/u3o+7Vo6xNOA/ILbX0k9WOHNqpISiZNYfBkaGY=;
 b=C3dGJIRyt+c+92DmuxKv4C1fddiAWfNUe4zQnNKaLiUzDSYv3URzajM53DcjQsvbWyKLRvyrkkQtrObnZnBnilSIoVxmGoK06nGyQGkRdlzXn3KPUmugRrgX+NRw8k1N2Ku1yMF9zijRqSOE8ak3WvY1lkQBW6/PUo+TiouRq+ZxsNIr1SzyRN7SBI3mo6glaT2CX47EnI4rvjOcZnlE517RSk5nBi5rV93fw2cLleL9vAOANieF1KKAI5GcjY+oly2A3PcHojvvStQqwSxhSeKsSM7j4tSflVZaavWiNQbslLUP5XQtoXqnak6b6T6SOfYWdtPeopapnE/ICj27OQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by GV1PR04MB9199.eurprd04.prod.outlook.com (2603:10a6:150:2a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Tue, 3 Oct
 2023 10:11:10 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:11:09 +0000
Message-ID: <ea069647-09fe-0bdf-f1f9-1f3b3da3a4e7@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:11:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH] virtual/tpl: add
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231003000818.26917-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003000818.26917-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|GV1PR04MB9199:EE_
X-MS-Office365-Filtering-Correlation-Id: cb7227cf-4c7e-438c-6b41-08dbc3f91033
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Jausu0ijy1DNW0u7BzUD+T40gz5L8EVakOZa8njGq6osTSXzvj9K+/5c2wl7I8t0bcc+e8kARMn71bZnb1w24dRsfdMnv4oX9Jhg3v15UHYary9hATb4Mr5uajtw0srNJinX6Uznlag4lH6ll1MVN6JVZGnIRrQhrKWvIsDi+MYfjojMDeLSL0v4DV7JzBUeiZRvTZucPIWHcyG2tS6QsV2tYxBNFoWtNQ7+aufPHXKMMGQ+2pF3mDMbMrLeOeiaysiwHXjQg3g1dt4l2l2qfTTkUIQ8ew9gFBFNJG1COloTTHamzaHIOHyRKiQ7WqTJ770KfQ0UGPimmN94q+r+tPbfXxJ5L2nf31ZIEAnTenwqj/jtE4m1mC6tYNm9fxLgi5LGhzf++3kb6ZYO0CSET6nqSNu7wrvB0uGBPPFKhg0Clj4A6m5JayqwSFzbX7811zsDNcIu0qAgkMODGcaLBMs5mFq8NvBXwmPgykNgkt1sDa0EJHZlCRgnAgtxtT5JrUiA4zHrlOhDej0ASKFC8IUNYFGsW0e5t9KO82c7/XRhknJTbz1ZUD/OiVW7yS0pnhJl46mbgeYOYXa7fQE2+A68Dc5rTurbqA2/W1MjjJd5x2mYCXqeAcDvCeVPSsNCNWupKc03bXvz3iThRY+D5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(396003)(366004)(136003)(376002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(6512007)(53546011)(66899024)(86362001)(66946007)(66476007)(66556008)(36756003)(2906002)(8936002)(8676002)(83380400001)(41300700001)(31696002)(316002)(5660300002)(38100700002)(44832011)(2616005)(31686004)(966005)(6486002)(6506007)(6666004)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S1ZpaGN1MHlqMmhyeWpCUXRhb0JQMnl2d2VpclhjQnl0V2Q0QXVMN0pDYk4w?=
 =?utf-8?B?UXVNaEZtemZEcjBwM2E4a1Z4QklTYk5NcklUWmZ0NlVsaWVmbkpaRXR3aldP?=
 =?utf-8?B?NzZnZUFrcVV1MXR3UU9UZWV1ckRYOVZzcVVYWTFxQkg4L0FTY0RoK2ZuY0tW?=
 =?utf-8?B?RmFKc2o0RmlOTXFtWjBwY0hmN2RvT1loTXNmZndNTTNndHhLbjBhbHgwa2dD?=
 =?utf-8?B?TXNobUtOZFpBcHozQzdrU3VacTYxbWk2UHJjU3hzUUxKZmc5dmJSakdadWQr?=
 =?utf-8?B?ZTBES2tOMmh1YmRGWFdYWGY5MG1tdEdFdHU5cG5mdG5OOHhPb0FCdEJKOEo5?=
 =?utf-8?B?QWZ5N1ZINm52TDZvSVFMckNBc292YXF4cnk4VFJwMkVBTmE5VjlDcWlsS1hM?=
 =?utf-8?B?TlUvNGc2TTdaeXlua0dtNm1ET0h3WEIrWEpiTnN2RGdNTFJPNTF1UFJIYnV3?=
 =?utf-8?B?N1JnU0k2SzZVQzVIdmMySnl4aU1iV0FuTkxkWXQxaE1FU2Z1V0FZN2RCazJ5?=
 =?utf-8?B?ZHlJWDVEYW9XSUNWVFFacitta3FySWIvZ29YTDlseWU0bW81Mjg1azVOYmRs?=
 =?utf-8?B?SERsVHp5QVNyVW1wOUtCdFRhMHRWUCtrTWR0R1Ntd1IyR0dENkRtK2t1Mk5k?=
 =?utf-8?B?V0VqQlFmS1R5QXA3SFV2MWZEeWdvRTVGT0ZIa3hNbVFPWXY2a1cyQTVRRVJo?=
 =?utf-8?B?aUp1a0lQemgwV2pKZkNVc2dzeVV0Z014TUxpaXNsZ3NHNUdpNGw5UENVQzlt?=
 =?utf-8?B?dlN2TzNSTVhtSHlhZE9Tdzl6eVVQaVBnWTR1NXhCQkJJVnJJU0pWNTVYVk5I?=
 =?utf-8?B?aDFZUnc5bW80U2hEaTlURzl4VnVoOWhFOVBRV2ZQeG1yTmU0NkNNVGkzRHFQ?=
 =?utf-8?B?V3R4OWZhR2VNSlNkOUs0MlhIUmIzWU9pSW84NkJpUlZYNGZ6enFzK1F2Zk1F?=
 =?utf-8?B?NDNhaWhHd0VwbVcxY2gvWFFsVEpVTTdVcEJ0Z2s3d1lxTG5maUJjOXJKeGNh?=
 =?utf-8?B?b3k1a0JhcjJaQ2psbFBZb08wS0p3YUpqRnVCci9RUDkxbUdSUm5nNzBwVGRq?=
 =?utf-8?B?Tzc5cHRCRVZaaldQVnhYNVNkWXl5QTdnWEh6Y2R2MGozbzJLL0s1SkJQcW9a?=
 =?utf-8?B?VmEwVU5wOGoza1hUbFlCOHJjTm5ZWEoxSW9CK2NSNHlhYTNBQXpub3dRVVl3?=
 =?utf-8?B?WE9pczBHSmdIVTdYd3kvREFQeDc5ak8wU0VIa01GMmFPQUY5NUl0WUtPZGpJ?=
 =?utf-8?B?YnI3bmV0N3gzaXVhWGVkYVhydjBJVm1Eb2IrR1kxVVdqU244OVdCaWI2YWgw?=
 =?utf-8?B?djk3QVlJQzVIUndMYk80dytNYnVua3NOM2xTQkdFVW45ZGlrUWd2U3RvK2NC?=
 =?utf-8?B?VGlYYUZPbGtiWVpBVVlHQk91ZW4yRGpuQk1GQzVNWnRvdXFKLzZ3eHA0NGMv?=
 =?utf-8?B?SGIrSXZLZSsyWkczMWU1alhvVEpmeUVHV1IzWmxZUW5BaGIvN1hPWXgvMzNW?=
 =?utf-8?B?MG4rOUVaRnRhK1AzeFdvb3VkaWRJNjM1QXlhRWtQeURjVjNVWGVrcmN2QzQv?=
 =?utf-8?B?am9xM1h0azdmc1VCR0dFRVd2Uk54V0tJR2NWbWhWQktmby9SODlud0JGbTdR?=
 =?utf-8?B?TG84T3VURmQwNDZsQkJNdlBWeXlZVXkrNlFQS0hNVk1GaEdrUjg1YVRTY2Ez?=
 =?utf-8?B?R01pUVlWOXN3dzVXdlBFTEdtbkM2SkM0U3pCam8zYk12MkRKSHFlQThFenJG?=
 =?utf-8?B?cnNBMm9nd2FRbkpiR3JONnQ5Tm4vU2E1N1VMTGxicEJ1Mmo0L2ViQXcrenJk?=
 =?utf-8?B?OHQwVVQzeUIyQWwzUVlReEM5V29XTGlOMW54MWxqOUNRU2thckZYUUtZR3JK?=
 =?utf-8?B?NE1KQnozMTQvY1FMVW8zcEpjWkpZY245WlRsVnJrWVBBRG9OOGZ4VnRuaTdY?=
 =?utf-8?B?TXZ5V3c2cWg1OFhjTUZsWFdXNnJXYVI4ZW1oUjJnQ1BHN3JHemZINmNQL0ZC?=
 =?utf-8?B?ODdWWTR3dW9ObWEwYll5RnFqZG50RmFXb3ZnNDVuTCtQYm1HWlRVV0JJdkxx?=
 =?utf-8?B?Um4yWmNiN1ZFbDVWT2pOcTM0cVZXVlJCZmxjS2tYSHk4SWZ5eW03UHk1Mksx?=
 =?utf-8?B?TWU0RitUMzl3QmxwQm83NjdidVJuK2hzNkpQNVoxZk1TNVBONlFtNnBXWURK?=
 =?utf-8?B?eTRRMjBLMC9rcVl5VXNqYmZqbGdlaEJmQ3VoVkpUUjlpUFBUaDBZcG1xTmkz?=
 =?utf-8?B?OTN0N1lkZ1YyK3hjSTBvbjNiRHd3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7227cf-4c7e-438c-6b41-08dbc3f91033
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:11:09.0254
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FF7Yj8JFpb7C9IAXBZWmQvrxgh6i9zz4JNNUzRZaOTgF2KbMlK4qJL+gAkKZqqcOjNZnmjmO4hkK76hZ15Ejt/eHoIbESJnHrDjnLaBW04NP1rIEVeklrY5zjUrytdm7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9199
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:11:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61211

Hi Trevor,

On 10/3/23 02:08, Trevor Woerner via lists.yoctoproject.org wrote:
> Be more obvious regarding the roles of TF-A vs rkbin: both provide a TPL for
> Rockchip SoCs, but only one should be used.
> 

No, they don't.

U-Boot TPL is either a blob provided by Rockchip via the rockchip-rkbin 
(the one we call ddr-*.bin) recipe or directly generated by U-Boot 
recipe itself.

rockchip-rkbin has a blob for TF-A called bl31.elf which is TF-A but for 
which we don't have sources. If we had the sources, we could use 
trusted-firmware-a recipe instead.

The both of them are actually required because:
1) U-Boot TPL does the DDR init, which is essential
2) TF-A is required on Aarch64 platforms to be able to boot a Linux kernel

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   conf/machine/include/px30.inc                                | 1 +
>   conf/machine/include/rk3328.inc                              | 1 +
>   conf/machine/include/rk3399.inc                              | 1 +
>   conf/machine/include/rk3588s.inc                             | 2 +-
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb                      | 2 +-
>   recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend | 2 ++
>   6 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/conf/machine/include/px30.inc b/conf/machine/include/px30.inc
> index a3727fbfca66..04cbd092a00d 100644
> --- a/conf/machine/include/px30.inc
> +++ b/conf/machine/include/px30.inc
> @@ -14,6 +14,7 @@ KBUILD_DEFCONFIG ?= "defconfig"
>   KERNEL_CLASSES = "kernel-fitimage"
>   KERNEL_IMAGETYPE = "fitImage"
>   
> +PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"

TPL is provided by upstream U-Boot for PX30 so better use that one. If 
it wasn't (or you don't want to use it), the proper change would be to 
use rockchip-rkbin for it.

>   TFA_PLATFORM = "px30"
>   TFA_BUILD_TARGET = "bl31"
>   
> diff --git a/conf/machine/include/rk3328.inc b/conf/machine/include/rk3328.inc
> index f9f8792ca521..7f8673f062d1 100644
> --- a/conf/machine/include/rk3328.inc
> +++ b/conf/machine/include/rk3328.inc
> @@ -15,6 +15,7 @@ KERNEL_FEATURES:append:rk3328 = " bsp/rockchip/remove-non-rockchip-arch-arm64.sc
>   KERNEL_CLASSES = "kernel-fitimage"
>   KERNEL_IMAGETYPE = "fitImage"
>   
> +PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"

Ditto.

>   TFA_PLATFORM = "rk3328"
>   TFA_BUILD_TARGET = "bl31"
>   
> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.inc
> index 88c87af3a03e..09be584468b8 100644
> --- a/conf/machine/include/rk3399.inc
> +++ b/conf/machine/include/rk3399.inc
> @@ -15,6 +15,7 @@ KERNEL_FEATURES:append:rk3399 = " bsp/rockchip/remove-non-rockchip-arch-arm64.sc
>   KERNEL_CLASSES = "kernel-fitimage"
>   KERNEL_IMAGETYPE = "fitImage"
>   
> +PREFERRED_PROVIDER_virtual/tpl = "trusted-firmware-a"

Ditto.

>   TFA_PLATFORM = "rk3399"
>   TFA_BUILD_TARGET = "bl31"
>   
> diff --git a/conf/machine/include/rk3588s.inc b/conf/machine/include/rk3588s.inc
> index 7bfc9474e96e..e66ad565585b 100644
> --- a/conf/machine/include/rk3588s.inc
> +++ b/conf/machine/include/rk3588s.inc
> @@ -10,7 +10,7 @@ KERNEL_FEATURES:append:rk3588s = " bsp/rockchip/remove-non-rockchip-arch-arm64.s
>   KERNEL_CLASSES = "kernel-fitimage"
>   KERNEL_IMAGETYPE = "fitImage"
>   
> -PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"

This was actually correct.

> +PREFERRED_PROVIDER_virtual/tpl = "rockchip-rkbin" >   PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
>   
>   UBOOT_SUFFIX ?= "itb"
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index 7fefb017053b..887a7fb61853 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
>   SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
>   SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
>   
> -PROVIDES += "trusted-firmware-a"
> +PROVIDES += "virtual/tpl"

Do not remove trusted-firmware-a PROVIDES, it is necessary to be able to 
select which recipe provides trusted-firmware-a (either rockchip-rkbin 
or trusted-firmware-a).

You can add virtual/tpl though.

>   PROVIDES += "optee-os"
>   
>   inherit bin_package deploy
> diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> index c9ad84c24857..f6566212746e 100644
> --- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> +++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
> @@ -2,6 +2,8 @@
>   # toolchain
>   DEPENDS:append:rk3399 = " gcc-arm-none-eabi-native"
>   
> +PROVIDES += "virtual/tpl"
> +

This is incorrect.

It should be added to u-boot%.bbappend instead. And I think what we want 
to do is not possible.

So basically, my understand of what you're trying to do is to allow the 
selection of the TPL via a virtual recipe.

The TPL is used in U-Boot only and should be there before do_compile is 
executed. So the virtual recipe should have executed its own do_deploy 
before U-Boot's do_compile runs.

However, the TPL virtual recipe is either rockchip-rkbin (fine) or 
U-Boot itself, and I think you now have a circular dependency if you 
select U-Boot as the TPL virtual recipe provider.

What I've seen happen for some BSPs is the use of overrides or variables 
in conf files.

e.g. in rockchip-defaults.inc

# Use U-Boot TPL
UBOOT_TPL_PROVIDER ?= ""

in rk3588s.inc:
# Use blob because U-Boot doesn't generate a valid TPL yet
UBOOT_TPL_PROVIDER = "rockchip-rkbin"

in u-boot%.bbappend:
do_compile[depends] += "${@'${UBOOT_TPL_PROVIDER}:do_deploy' if 
d.getVar('UBOOT_TPL_PROVIDER') else ''}"

or with overrides:
in rockchip-defaults.inc
UBOOT_TPL_PROVIDER:rkbin-tpl = "rockchip-rkbin"

in rk3588s.inc (or in board's conf):
MACHINEOVERRIDES =. "rkbin-tpl:" # or whatever the proper syntax is :)

in u-boot%.bbappend:
do_compile[depends] += "${@'${UBOOT_TPL_PROVIDER}:do_deploy' if 
d.getVar('UBOOT_TPL_PROVIDER') else ''}"

I'm not entirely sure this is all worth it though, as we would anyway 
need to modify the EXTRA_OEMAKE to add ROCKCHIP_TPL argument in the 
event we're using rockchip-rkbin as provider for the TPL, c.f. what's 
done for RK3588(S).

Cheers,
Quentin

>   COMPATIBLE_MACHINE:append:rk3399 = "|rk3399"
>   COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
>   COMPATIBLE_MACHINE:append:px30 = "|px30"
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61200): https://lists.yoctoproject.org/g/yocto/message/61200
> Mute This Topic: https://lists.yoctoproject.org/mt/101725325/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

