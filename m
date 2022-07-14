Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5384AC433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 07:29:40 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.80])
 by mx.groups.io with SMTP id smtpd.web11.4948.1657783771005389443
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 00:29:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=myirI7zQ;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.80,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVuCh6gx5KnfLcjGAk0GQj8M6blpPsAV8pWC/PsD7nZoy4Uz6M+gU+8LsFQd07bHP5N8oGNhEA+PqVyWSLTfMcqFGVPENERo3Qii9hk5Li/+kckiPtlbE0FNctRQ7w2eE/2FjjVhouLZOHSGCQgpeNm6H0Db5NU/ZV+wVyLgcavMPD6JrDT2CXfPb69SdJ6uxQXUVDWo8tV79zKFOeME6v6aU5nXRWRcRxKq2EXWnYKyGIxX5uGecOygwfyv3gjFgViMXjOkdzwTVnClKfBq7/QeXC8bDtWJNsgDl9beCaiSHS8JSsbAGV2vmEPuSnbQES5yqid3Z2cus6pIQKDMgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YgmTg54ZIi1LFOzXJidvv23lT3qJXXm4D7esa5iO8Kk=;
 b=forKUOysowVyjM6wIWuUMev4WisuZWu4kkygkr+ofq74szBXl/rCsZG974lYpTpZ0WvlKNl0RPvgVoH7c9mrz/1DGMtvM6+EiWD60vKsebHxYIW3eVi7Z0gevmFMMme4oXESiBXlPLReiHq1I38b80g/DR1lgyHxKwDz/69e7NT52y7KmWkIG5pccg6p1H7pCAyfde+QUWa6hTZaPmw8QGBouQVl8of1NxQpFdKezjX0D+AcpUadMdxD9IPynGlBsSKyj5H+lffmAcFZCQ5dQCCG3CdWNgotbG2ubqWtm7TY9Q0R5vynxB35TO7AV0Y66M6SHB5vafFYEBpKQYoseA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YgmTg54ZIi1LFOzXJidvv23lT3qJXXm4D7esa5iO8Kk=;
 b=myirI7zQ2ByTSgAld8hV89zEGhrluoS2L1B7jNYtvtXrlqRqkyux8/pbJUfrTu4u7Ml7vuJ31ejGLvQ/YUThy9vfD9YT4IBq5iQ9wNz6klB40PgvEkpf9Dqg6nrQiBmW5wsm8cFLhbC8NQDNllQRPj7mo8BSnou3iFels3E6V/M=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR04MB4894.eurprd04.prod.outlook.com (2603:10a6:803:52::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Thu, 14 Jul
 2022 07:29:26 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%9]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 07:29:26 +0000
Message-ID: <249fb61a-9c56-8f60-cc11-65d89c3a11f5@theobroma-systems.com>
Date: Thu, 14 Jul 2022 09:29:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] yocto support
Content-Language: en-US
To: Senthamilarasi mathiyan <arasilinux1086@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
 <YrwISJ1PCeqQzu6I@mail.local>
 <CAFf=Mr3Xa_taxkj5Uvrvctdp19LGEMtW7fU=_PDvO7YdVpCUYQ@mail.gmail.com>
 <CAFf=Mr3dTUVx5ACr6-LQpqx=C3WpJU4+GPjc3f9dTRvMFwbMJA@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAFf=Mr3dTUVx5ACr6-LQpqx=C3WpJU4+GPjc3f9dTRvMFwbMJA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0101CA0053.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::21) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4b1178d2-64ef-44a0-e396-08da656a94ad
X-MS-TrafficTypeDiagnostic: VI1PR04MB4894:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	obSGtEUrU6BPewR/iephktAonietvSKbsiyDq1mpP1CTJOEFmJEFH4dmeDRaNVyHyowp3D0kl4g+sNdF9IZxKLLnWvJMN6602pyZaQUFU7EgqwFpc6sBDV9ZnLbv66s+iN1HFMDehV+6AlB9kULm9YFb5HT7nevVcJUjUfWkVJtVoWFPyE+jSsIOhE7MDey1sUi2jp1W+VPvSm4Evr11xzrU9kla3w7K4zOJUatNGR+7S6G35Gt1/+Nyr3mtRqP6gIXaFsguVc0o9NU7T2/uNsPT2/YbJYAmJ4B0umJwQteKPMH08rlJbuPOXotnPbVo/1sP9T9YU2ipzUPTsnIClg37ix/878l/pS8WfDPJcpnao8a1MiVKZcZ3ojOae3Xykkuz4lhnPa/nNUkWH8myKhgANwlcNKmdWDrnlA96073rBVRRMHGOtvOurZw3JNB/yxabOI3sgNTrGy93Klj0tW6HkMrCQGCiUJTg1sC97kpPBAdhSdLoiQvHSPERV2eehaHbPAZnExCztquoB05TZLtOzS7dpvsw/y6PxPVu9b3Q7fKEhVNm4x2Z9/F2b7ruMlC0Hxkr7Rflq3zbKwUqJdMc5FtaZLS/MTlHwG2wJqJ/meMM42WEJt+tfgNahDNJywecBZkkyW9Uc5F+mfJbTsm6nSsOomogZvOrdDZCaarqVDyIRAn0Vit4rzKRM3H3P1wNZuneA0tGsGEuW3x7ZDZCKrJTy6onpkMvtnX2uc61Trk1938ekF6BpmEJAzljpu2XOTyRwi3mBChNmP2MJ+ljwkL+viGE8RwzL5AvFlcGYMQ4SmIr/8ZBFD92EYRatSmc6asFs44A95vvuwjlnQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(136003)(39840400004)(366004)(396003)(376002)(186003)(2616005)(31686004)(38100700002)(44832011)(2906002)(5660300002)(36756003)(8936002)(6512007)(8676002)(6486002)(478600001)(6506007)(66946007)(41300700001)(66556008)(110136005)(4326008)(83380400001)(53546011)(31696002)(86362001)(66476007)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dzRBSGZsaU1ObG95b3hObXhvYTBBRzFSUXhqRGM2WmlZWVZ2cmo4R05mTnlN?=
 =?utf-8?B?Y0JvSXhMNUdIeGhGbGU2Z2tLSUV2SWlwRFI2SlRVVUdxRXpDcTBwWm1qZUZu?=
 =?utf-8?B?OUVhZEhrQWc0L1IxUmFVWnhRbmNFcEYwaFo1QkRjeTlOTWFHeVJHUnpFUnJt?=
 =?utf-8?B?TjdhMGdUZWUyMnlXWHV0SEdGTW1zNElFVVJLajJBSWUrSnArakZVcnVXRFBV?=
 =?utf-8?B?eFY3Q3dLRE0za0tRVDRmYVZta3p0d2tDZ3FheEhjazhyQ0NBdysxdHVVWGZU?=
 =?utf-8?B?TXVLQVdTam5HYUdFMVN4VTRFbFZySks4MEM0OXNaUDBmNmVjM2dXb0xkUkRG?=
 =?utf-8?B?UHl6Q21zcW0wS2ZzZDk1TXhCUERUQWIxTFZLQWJoMjJHcFhEd1NVajI1SDlN?=
 =?utf-8?B?OTBXWmpTWGNuVlNiMmNpZllLNkNmNHBYc1dXQm5RcFlPb2JjRFZOOWVsYW5Z?=
 =?utf-8?B?N2h4U25zRDdIRXovWnN2UzV2TEdjTUVVMW8xdzJBamMycVp1ZlFXOHUyQnU2?=
 =?utf-8?B?SlNQeXdqcGM1SUZUOUlHeVRic0plbHJVK2NnUW1YWUFhMXJzaTExL2E5TG55?=
 =?utf-8?B?UlBKYy9aMWNZSVRLak5iRkRjWWdvUnhvYmFhbS93ekZyekFJclpFbkd6MDlT?=
 =?utf-8?B?RjI0ck9keUxMRjc1MEUvQi9VN1lYaE9jd0ZTRnZkcXMwS2tJME1LTU1RUnNs?=
 =?utf-8?B?SjJsb3lHeXBrUnZLMTlWK0RXQlZlQ25nQlR3NXdmajM0Y25uUU5KT08xQ0Qr?=
 =?utf-8?B?UUIzVkkvNXFvRkpuU3d0a0FXUS8xYnRPenRUQ0ZHUlRsL1QyejMzaCtyL2Vt?=
 =?utf-8?B?Rk5rdHFvZkFDK2x3eUtGczlObURzdlFXblRKTE0rU3RzTmcvZ0kzU2wySk9q?=
 =?utf-8?B?Tmx1TmpxSEZYNkZ4VEVmNGJidGJhalRlYmlkamQ4MkE3aDdvYTB4bXM0cndq?=
 =?utf-8?B?eGZ2STkzMThaYmZYQ04zRmJ3SFdEaUxKdTJ1OW1GOGQ2R3I0a0hkUjM3blFU?=
 =?utf-8?B?Mkx2N0NEeEk0N2lweGVnaktBYlVpZlF6WlJSR0p1OHc1cWRkZHplQThzalBq?=
 =?utf-8?B?cGlmK29HekxrZVhkMW1rdGVWcXFmV1BweXdhTDhpSjMrSUdzNXljdm9yQWVh?=
 =?utf-8?B?eDE3QWhiMmp5KzVubU1YVUxkSnpHRDFqTUlJTG5CcitTTU84Y1d4bjlRbDFL?=
 =?utf-8?B?NmtPa1htNFlOaU1idWlCVFRZWUtGVUNtQXlEWVNNc25Kc1lRM2o2eUFEZitU?=
 =?utf-8?B?ekZYZWJRdWcrb1NMcm1LSFJyUnl1NEYxOWIyUWcvckJzdU9qSG85KzFsb29T?=
 =?utf-8?B?SVh3bk45QlBBbWh0a0VXcVMrYTdWdGFIWWxTSGdMSVhSUTBYL0ZaSTZRamk4?=
 =?utf-8?B?MkVHSWViUTlySXNzblVrZ1RBbXZSbjB1eU9zbnVYalRJK3ZOMWVJaXFuZ2lw?=
 =?utf-8?B?V0prQnBCbUo4ZTBHMmh3dFl3RnBxUU05MEt2R3c3U1dtYW50Y1ZETFF0b3F2?=
 =?utf-8?B?dHlDOFJCNXRDNkJoNjBqOFJBd2ZlZnZMY29nZ3RnNDUxVCtyQjJ5dXh1c3ly?=
 =?utf-8?B?TTI0aFc1SDNFbmZqeEg5OVlMWlRNUklHWHBMRmJVbTFFUlF6Si9XNndBTTVB?=
 =?utf-8?B?RHZiZGE5djQvei9vaE1nSlR5aEl6QmdGNXlkNU0xaWlYOWNNSG52UmFNVi9v?=
 =?utf-8?B?M3V4bDgwSWRrMnBtbGM2MjdkQ1BiZW1KR21FRWtCVlR3bk0zWC9qalJ0dXJJ?=
 =?utf-8?B?QmtvbzhrVlE2a2d3RXZKdm0xQVVMb2V5cmcvM0FjazZlNkJtUElVdkhNZzIr?=
 =?utf-8?B?b1VBUENzVXFtUzM1QjdMTkZoUnkzL3pmbVJpbjhsb1FzbWNtQlJQcG1nM3lS?=
 =?utf-8?B?UERFUnE0Qk9vdEtRSTg1TUxUcFV3QjFCUTA5VDV3c3h0eXlCTnJxWVFja1RJ?=
 =?utf-8?B?QVRpNXR0RTNXMWJ3MWd0bVljZDZGb3d0Q2FKOWZYWWNDOE83bDgxbDhqS3Av?=
 =?utf-8?B?Qi93Z1JMc3lxeUMwVlhFQlpqSXowMkNEK3FWTkJKQlRlZlF5VDBpM0ZLR3BL?=
 =?utf-8?B?cXBBMkc5c3Rjd3VjR1FmaVBNUzIrYzdIWXkxODE0d0RkWTZKNXpIREMzUk9h?=
 =?utf-8?B?d1NMNkIxcDg5UUFVWWpWQURaeDdMQVI1a0FNb21mcElZUnl4OWk2cjFiY253?=
 =?utf-8?Q?LfCE2JgUJ8ajQx2CPqK37U+8mX6GOhWcn6vH01zIccwq?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4b1178d2-64ef-44a0-e396-08da656a94ad
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 07:29:26.2958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 kiD7XW629EnbHfPvw7m9DKbx5WbCc8nxscTQRITUodw7Y+0lRzFSpkQuLyWXEHSSdzGMIPzGe+cZoSGvslf2XZkc8DnBdcHaQEXsaz8hF7+HR3iWyqVhz5IwM+grY0SG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4894
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 07:29:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57533

Hi Senthamilarasi.M,

On 7/14/22 06:59, Senthamilarasi mathiyan wrote:
> Hi Alexandre,
> 
> Good Morning!
> 
> 
> I am not introducing any change to kernel.
> 
> 
> 
> This is one of my project requirement to enable coverage support to kernel
> for specific build for my project.
> 
> 
> 
> In my project, Already we have few image recipes.
> 
> Ex: core_image_minimal.bb core_image_a.bb core_image_b.bb
> 
> 
> 
> These image recipes are using same kernel  with same configuration, Apart
> from default kernel configuration, I want to enable few driver support in
> kernel to enable coverage support for specific requirement.
> 
> 
> To enable coverage support in kernel, I have added coverage.cfg in
> meta-layer.
> 
> Ex: /recipes-kernel/linux-msm/files/coverage.cfg
> 
> 
> 
> cat coverage.cfg
> 
> CONFIG_GCOV=y
> 
> CONFIG_DEBUG_FS=y
> 
> CONFIG_GCOV_KERNEL=y
> 
> 
> 
> If I add coverage.cfg in my kernel recipe(snippet below) - It will be taken
> for all the image build. Whenever do bitbake of following recipe -
> core_image_minimal.bb, core_image_a.bb, core_image_b.bb
> 
> 
> 
> The below changes will be added to the build, since this kernel is common
> for all the image recipes(core_image_minimal.bb core_image_a.bb
> core_image_b.bb).
> 
> 
> 
> Recipe content:
> 
> 
> 
> +++ b/recipes-kernel/linux-kernel/linux-kernel_5.x.bb
> 
> @@ -21,6 +21,7 @@ SRC_URI = "\
> 
>             file://audio-kpi.cfg \
> 
>             file://ptp-virtual.cfg \
> 
>             file://xfs.cfg \
> 
> +          file://coverage.cfg \
> 
>             ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', '
> file://systemd.cfg', '', d)} \
> 
>             ${@bb.utils.contains('DISTRO_FEATURES', 'virtualization', '
> file://virtualization.cfg', '', d)} \
> 
> 
> 
> 
> 
>   Similarly, I have patch for file other recipes.
> 
> 
> 
>   In my case, I should not add this change to all the image build.
> 
> 
> My requirement:
> 
> I want to create separate image recipe. Ex: core_image_myrecipe.bb
> 
> 
> 
> In this recipes
> 
> - I should include "inherit core-image-minimal" + "My specific
> coverage_support changes".
> 
> As per project requirement, I should not create a separate meta layer to
> maintain this patches.
> 
> 
> 
> Can you please help for creating a separate image recipe with specific
> changes?
> 

It is not possible to modify a recipe from another recipe. Meaning you 
cannot decide which config file to use for the kernel from the image recipe.

You have however two options:
  - only include this configuration file for a given machine (you 
therefore need a new machine). This makes sense if the actual target HW 
is different,
  - only include this configuration file for a given distro (you 
therefore need a new distro file). This makes sense if the actual target 
HW is the same for all configuration file of your kernel, just that they 
differ in terms of "policy".

If you're trying to build "a debug image", it is most likely a new 
distro you're after.

However, there could be a way to still do this with images and that is 
with the use of kernel modules. The plan would be to *always* build 
GCOV, DEBUG_FS and GCOV_KERNEL as modules (if even possible?). Yocto 
actually splits kernel modules in their own packages. Therefore, you 
could have the default configuration for your kernel used in all images, 
but have your special coverage image include also 
kernel-module-gcov/debug-fs/gcov-kernel/etc.. packages and 
modprobe/insmod them at boot when needed.

Cheers,
Quentin

