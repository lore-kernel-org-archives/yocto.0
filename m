Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724D2C46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 16:16:32 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.68])
 by mx.groups.io with SMTP id smtpd.web11.67630.1672762582622158120
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 08:16:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=VOB+eaDN;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.103.68, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6Rm6/3gmXxxrQz4gZHGxVN4Bw2hilvlW7nAPlxXh8NfTDt6NBqPMOs/pD/XBEFzy7cPOI+LeZ/SPaMmB0Br73KKqH6Kr+VVCpdIEZB6eUM9toc3zHT3S34WAYsR3fio7jfAEWDpWz1toW6do3iZjQ21nT7PGMPsgqED7M9d12jL+kYmMl0WTg3d35+Noznc8p45JRatUvWw2R/H78T4noYTz6ddRIPop5EJRC0wRYEvf/9SIUJhBiJjYtLOn4fE8Nao/ql3llal0sSrTwMCBtnGKQQtcq56EeLyQsxTy6F/vyY6dBar5/Pt8fOgtHV69O6crSsIATLsSsIsxhJ/3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HD4AFrtAVcf/L+zHo1fdOYnkJTffPCCq1jRIbkNNTFA=;
 b=LJvqWUg4fRYWDJkBwqGq1trscQWupuxj3SypIZ4yzPiUng1Rig6SaI2v1pg0IRJFW6H+3/Xubju9Q8tQUrACUYWTBbUu/E8eJn34+/vMrFZJuRgFVOlvAbmDa71OS5KEj/NuB9/EPeU4RM7J/hU9uqY7U98WsAqIgZv1jk7NS5UhRCzOEwzLOb838oHEFAUe+VJ79KTuXCPIP3bdNK7S2FRkMWy0GoZAD7icTCzjF47cXcfxC2kZjIiO3mTvJYQiub9WKu37tAdRpjEMOq3iIORJ9fLRf3Uh8WSsRALe1bC8QH2zVBcJg2k+hO/3qzHWLzADA3o8YuaOwiZam8rgsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HD4AFrtAVcf/L+zHo1fdOYnkJTffPCCq1jRIbkNNTFA=;
 b=VOB+eaDNPRWfljaucrKcPt5SLKSV51HjKyTQodUuMdPuOSH9qlZ9A8fAj/Ja6LIc2iT6fyPPiJwM1A4rfBkInx8RfdCFUtOZl/yXqzLAwgPxnC1YYL7NSvKSLABBaXQv2OloHFwZ67e6oMOUaCE2C7utPDrhCWuj2mV/FJpQQ038CbPCwN5tdEK4BNske82G8GHYSKsRh7H/J36rOooiWwUA3vYGzhjzPeE/EELFFywkZ4hTBU53BR1/O1iKGn2ggY+wR20zXIpycb+KHOVAATzi49cUE/5whizibJDXidYvnaJj/sEwootwNZ91ky3ZAQ4QIO+xGzAkcsl54WnPAg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB6798.eurprd04.prod.outlook.com (2603:10a6:803:131::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 16:16:18 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 16:16:18 +0000
Message-ID: <5cffab2e-38a5-ff39-e44b-15ab0477b352@theobroma-systems.com>
Date: Tue, 3 Jan 2023 17:16:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] Remove kernel image and modules from rootfs
Content-Language: en-US
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: yocto@lists.yoctoproject.org
References: <Y6N23Z8n++QpwfFI@Hephaistos.local>
 <5852ba8f-d9d8-e143-b6de-a77c3bf14799@theobroma-systems.com>
 <Y7RQmBzz3IumzXtY@aglaia.inside-m2m.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <Y7RQmBzz3IumzXtY@aglaia.inside-m2m.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P195CA0058.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::47) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB6798:EE_
X-MS-Office365-Filtering-Correlation-Id: d7f89bb7-fed5-43c7-3694-08daeda5d850
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	t+dJrkSSthhPRSyNlMa7EZkfjdd2z0IBxcFgDvh0YqjNxW2S9TEVbPVCHITx0KiT/17q+JQ4VSvSYH4bGKVVx9N6Xr0565l6Dt+zHpDeqwQM1v3Nqr7kxRAhlWwgpdpZKB/gXrx8cpHlnvVyz+LEoJdEaP7X/gSXO03CvpQgfX+YddUI1X+SKwJN7VqZQGUpr+UOeJdV7xrefYJPqJLOFQBG3JMkM20LkdhYLbUycdNUPnKWfmhqEPjfnxE36+fJ1UeeoZDa0pie52XUVrAnLqRaTg8ducj2SBm9iBui26oU4VfrQNQ9EhpJPCWRNRGe8+d79GRSxEY6cQWxEaO7OB3JYB52MfubzlRQogc8XJZvTciupsYBQy/XUCe+AdYzXOUwgfzfYXc5rXlde5dzXMPz+ieyiUW+VRqGKun+1/1nuzHfGS9pSz/QOZHdgTz3VxXzv2pk1BqRwPfWtmdR6KFSqVOsrmlSEqS7YSUHPsJofuX0sS24Orx+xc5OMm8BLgEmvUwuTJAjeD4V9dJg3zwWwAPuwQjR+wNaQAZdJXwl/oxxPzbKR5Qso5Ncv29GFywoneC0+AlNYs6UD+NXGHT9sodmOHSlLdmxcKv93VRTxEdY7TFh6IPhTprrYC/theFeY1xGdr2HxcnFzLA/sceO/VWBvlWNO1XN7FzEJIr/p8sDznsd55dgx5/voKPi7GajM/oFsGQDM6tAQ+rn79/140BRf7gKqpmEnDpnrqL3KIfMbbbKUfURXvaOvqkx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(136003)(346002)(376002)(366004)(396003)(451199015)(8676002)(5660300002)(316002)(6666004)(66556008)(66946007)(66476007)(8936002)(41300700001)(4326008)(6916009)(2906002)(478600001)(6486002)(6506007)(38100700002)(186003)(2616005)(6512007)(53546011)(31696002)(86362001)(44832011)(31686004)(36756003)(83380400001)(22166006)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aExjbzhmcVN3WlduZEhHYmw4UWpIWU95OGw3bEZlUDVzNC9VMndnKytIZDRZ?=
 =?utf-8?B?ZGVEc1dWN1huQjdWb2paNUliUmgzc0ZOVzNzck9uSG5yaHdoSjcwYW1IVXFo?=
 =?utf-8?B?U2VTSUlLdlNtbFFOeitoUkI3OEVtNTdBdjZ2K2NsZ0l0clhSUXdhWUVuTnNG?=
 =?utf-8?B?TTczVENkalc1eWpmOTFUVm9uTFdwUWNGR0NQeVJEMTVZb0dEajVzSnFNTUNW?=
 =?utf-8?B?QUwzc2NUYVRlVld0SGR0d0dHQlBTSWpZeHQzbUNUZHMyYUxpMStWNXUzaVFD?=
 =?utf-8?B?TUxBSzdZNEY5VHJKMWQveDQ2QWE3OEs1TE4rOXVQQzg5NUdMaHJnWGk4V1pQ?=
 =?utf-8?B?dUNDK3pIYmlvL2lSby9HZjJRVFluU2lVdGZzQ0VLaWJDcjRuL2hTcXBQRkRW?=
 =?utf-8?B?TGRxcUFsTG5qak9OZFQrVXVZQXAzQlRwZEFuTUN2TThYLyt2Nnh2YzVJVERX?=
 =?utf-8?B?Rk0xZXdOakRwTFc3eU4yQy9mSTkzclg2WmRUcTI3VllVekc4OXVLQXFtd1Fh?=
 =?utf-8?B?SEpxSTB0MThUaGJuQzVjWno3YTF2SlUzM0UwVCsvMGRjZUJIUGdtanUwUzEx?=
 =?utf-8?B?a1JhZnl3NE5MSStmaDd3TjFIZERZYStXZGdxYkVkTWV3ZktESXZ4ZFVqWEsy?=
 =?utf-8?B?Z2xsaTcxRm1LK3ltTkVobzkwUDVTNkJoQmlsYzdrQVlvOUJHWkpzR2ZJWmtU?=
 =?utf-8?B?bUMyTFl3T2lpNHNacUV3QkFzekFWVm9SOVJvQ2lLakI4VDF6OFpNcGZkU25B?=
 =?utf-8?B?VHZHQVBtamZabDdLeERwNndBaWtRVndtN0lSV3NnVDdMMlZsOENjYVdVd1lY?=
 =?utf-8?B?ejU5cmtHZDFTRHRscFgrZC9hWlVOamNqTE9kem9VK2FMSCt4czFncUliSmx2?=
 =?utf-8?B?U0I0L0JnSHU1Rm94cDlQWlpra2JLM3diYWdOWmdrN2dZRXBvWDNGMTVSaFd3?=
 =?utf-8?B?VnIvSjV5UzdHNWNyMDFZMW9QRE9NaG1zazVucUF6d3Z1MDFMQ0pvSzllbU9u?=
 =?utf-8?B?c3d4NnhzMEVYL3Zsc0R4bVBtaVBBQTJjR0wxeWM0dUNRY28veUlXQnFnb1pD?=
 =?utf-8?B?ZzVOdlkzcWhnWUlKQ1g4UVozay80bWExVEc1ejNuTWtIVTdSQjJEQ2F3Y1lo?=
 =?utf-8?B?OFlhbHkyOTRVbGw1S25CNzU5UmdmZ2pJTldEbTNYa2I5Q05kRWFPT2d1alV1?=
 =?utf-8?B?eXNaaFZMQThDSWR4UVJEN2hSamtuQTBncUJyK3ltdk15Y2hnU3BwYlRJTndE?=
 =?utf-8?B?Y0RsbDZmQlZYRUVnaUlMcjFmSjhvMzliSFZnREFsQUxSZUpkc2RvMDIzS1lP?=
 =?utf-8?B?bXJpZnN0RCtXWjYrcXd2MjJzQVlGbmxJNTlXSG1yTFFJaHZXZnU0R2dKdVh5?=
 =?utf-8?B?MUsvbjNKVTBkNG04SmxuRjhDbW1QZklWRmg0Y0ZzOGUzQ2dEclVibzRmUlNo?=
 =?utf-8?B?RkFlbEw1MGRjZVB5R2VuT29RVktGWDJOY09OQkUrYllpeTFpbkRCOWhrRlNC?=
 =?utf-8?B?V2RwYkd4eWJad3dTeEJzUEVuUTd3dDZxcnNVRkh5N3dHOVlhQXozNjBGQUU5?=
 =?utf-8?B?eWNGUVo1OU9VTHVBSGluMzEvem5lS1BOV1lkRnZQZ24yUGxpMzByY2RZS1Q2?=
 =?utf-8?B?UUtRbS9waE1qZlhWcUZIZE14NmdtRVg5cTVROEh3aW1aQTNSU3lzaWx0U1Ns?=
 =?utf-8?B?N05vYitFMjVnM1lYWFVjVjRrM01DSVpscjVwdVUyTHFuc2VpcEx4ekdPOHd3?=
 =?utf-8?B?bmZIeUpJM2w5OTdTNjMxVlZWMWh0cWlydmY0VEloT051RUttSkp3T0g1Mm12?=
 =?utf-8?B?Q0tqVkxCZXEzR3dtWXJpclZld2JqcmRMak1ySnNVS2RIUytydmxtTFRXUktD?=
 =?utf-8?B?UGJlNFNqOXVncnM5QmJGRnFFelJOcXpGbFZIUFdscWVMWGdDRlRtNDNwWlZ0?=
 =?utf-8?B?Y2VHTWNHVWI4RzVCWHNwTWVpeTgxcjJYNWlUZGM2TmZSck0ybWg1Mi9TbzZN?=
 =?utf-8?B?MjNhV0FaeGFZeGRJTk9iU3NMQStkSzBlMVozQU80dzdkeHJ4RFl4a3ZmS0Uv?=
 =?utf-8?B?MU5jVTMrY1lwZHgrUUN2cTlaMkgreG1rNUlIOFYzMVNrTmFYdUxPNEw0M29Y?=
 =?utf-8?B?elp6cjV3MlNmdzBzYmMyeVdIQ2sxWG9pWk5tU1ZjRjIyVGlDNFB2V1g0ZW4y?=
 =?utf-8?B?T0gxR2FSTVJwSXFJV0I4eENDZFFlc0lLR2FBN29tbE9Fd3BrdWorVHhCTHZo?=
 =?utf-8?B?bk84YTk0RDZ2aGVXSmJ6dG9RQ3FBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f89bb7-fed5-43c7-3694-08daeda5d850
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 16:16:18.2900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vRHhQHzSQr7pla9nAob+hhQwM5UtGMY7GYyLzdehLamF9/SN1hZhbqxZV4aW90YiAtYZeSVBHRmmSU0jinfsL3A0WyeriGRCYNFuK0AMOhRAoy8+zYVvNcMo69rJOiS6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6798
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 16:16:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58910

Hi Konstantin,

On 1/3/23 16:58, Konstantin Kletschke wrote:
> On Mon, Jan 02, 2023 at 05:11:35PM +0100, Quentin Schulz wrote:
> 
>>> but this is now deprecated for kirkstone and should be done this way:
>>>
>>> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
>>>
>>
>> This makes sense, I'll send a patch updating the documentation to reflect
>> this change. I thought we already had discussed about this and someone sent
>> a patch but doesn't seem so :/
> 
> Thank you :-)
> 
>> So I believe you need to add:
>> MACHINE_EXTRA_RRECOMMENDS:beaglebone-yocto = ""
>> MACHINE_ESSENTIAL_EXTRA_RDEPENDS:remove:beaglebone-yocto = "kernel-image
>> kernel-devicetree"
>> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
>> to your local.conf
> 
> Dear Quentin, this is correct. It worked this way.
> I admit, I was not aware the config snippets I copied need to be
> modified for the local.conf in a way the machine name has to be
> appended!
> 

So, you needed the extra :beaglebone-yocto because the machine 
configuration file is parsed after local.conf, therefore since 
beaglebone-yocto.conf file has:
MACHINE_EXTRA_RRECOMMENDS = "kernel-modules kernel-devicetree"
MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
your local.conf changes would be overridden while parsing the machine 
configuration file.

By using the OVERRIDE mechanism, we kinda cheat this by making the 
variables in local.conf "more important" than the machine conf file's.

You don't need the :beaglebone-yocto OVERRIDE for the :remove but it's 
"better" this way so that if you build multiple machines with the same 
local.conf, you don't impact other machines as well.

>> I suggest you create your own machine configuration file which requires
>> beaglebone-yocto.conf where you'll be able to set:
>> MACHINE_EXTRA_RRECOMMENDS = ""
>> MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
>> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base = ""
> 
> Meanwhile I did something similair, I cloned the machine
> beaglebone-yocto into my tree with thos modifications on top and this
> works too.
> 

Would highly recommend not doing that though, having two configruation 
files with the same filename is not nice to your users, because then the 
order of inclusion of the layers will decide which file gets picked.

Create your own my-beaglebone and in there have:
MACHINEOVERRIDES =. "beaglebone-yocto:"
require conf/machine/beaglebone-yocto.conf

The first line will allow recipes to use the :beaglebone-yocto OVERRIDE 
to match both the original beaglebone-yocto and your my-beaglebone machines.

> Thanks for your enormous useful hint to the modification needed for
> local.conf and the tip to create a machine, inherit beaglebone-yocto and
> modify those three variables.
> 
>> You can check the value of a variable by running bitbake-getvar -r
>> virtual/kernel MACHINE_EXTRA_RRECOMMENDS for example.
> 
> Thank you, very useful.
> 
> Meanwhile I found out, for my puspose it could be useful to do something
> like
> 
> CORE_IMAGE_BASE_INSTALL:remove = " packagegroup-core-boot packagegroup-base-extended"
> 

Be careful, :remove are final, you cannot re-add its content later on. 
SO if you expect users to reuse and extend your image recipe while 
having :remove in there, you'll have unhappy users :)

> in the image config, which might be even more useful for my approach to
> my use case.
> 
> I now can approch my goal with local.conf, an additional machine or the
> CORE_IMAGE_BASE_INSTALL modification.
> 
> One question though:
> 
> can the MACHINE variable only be modified in the local.conf (the
> reference manual - glossary does not mention other places)?
> 

It can be modified in any configuration file I believe, though 
local.conf is the only one that makes sense to me, anything else is bad 
practice.

However, you can pass MACHINE=my-beaglebone to bitbake, e.g.:
MACHINE=my-beaglebone bitbake my-image

would build my-image for this machine specifically.

> If I go with the additional machine approach I am searching for a way to
> build different images in my distro based on different machines. Is that
> possible?
> 

What exactly should be different between your images per machines? If 
we're talking about some specific BSP components differing (e.g. kernel, 
bootloader, tf-a, op-tee, etc... basically anything NOT userspace), it's 
better IMHO to specify those machine specific packages as 
MACHINE_EXTRA_RRECOMMENDS or MACHINE_ESSENTIAL_EXTRA_RDEPENDS in your 
machine configuration file. If it's something else, you can either 
(ab)use the OVERRIDE mechanism (:my-beaglebone) to specify packages to 
install only for one machine. E.g. in your image recipe:
IMAGE_INSTALL:append:my-beaglebone = " some-my-beaglebone-package"

If you want the same package but in different version or a different 
implementation (e.g. dropbear vs openssh, barebox vs uboot), have a look 
at virtual recipes (you can find consumers of those virtual recipes 
where virtual/somthing is used).

Finally, it might make more sense to just have multiple image recipes, 
each machine having its own image recipe for example.

Remember, distro is for policy (should my system be configured to run 
with x11, wayland, alsa, whatever), machine is for HW and recipes are 
for SW applications configured for a given policy and compiled for a 
given machine. If your HW is identical but you want some differences in 
your images, you might want to have a look at distro configruation files 
rather than different machines (at least on the theoretical and best 
practice level, it's the preferred way).

Cheers,
Quentin

