Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D52C6FA82
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 10:34:12 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.6117.1663929248931684732
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 03:34:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 033BC139F;
	Fri, 23 Sep 2022 03:34:15 -0700 (PDT)
Received: from [10.57.80.222] (unknown [10.57.80.222])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCD873F73D;
	Fri, 23 Sep 2022 03:34:07 -0700 (PDT)
Message-ID: <bbc219a1-649e-2ae1-4a9e-2a446ac323bf@arm.com>
Date: Fri, 23 Sep 2022 11:34:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [meta-zephyr][PATCH] nrf52840-mdk-usb-dongle.conf: Add
 new machine from makerdiary
Content-Language: en-US
To: philippe.coval@astrolabe.coop, yocto@lists.yoctoproject.org
Cc: philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com
References: <20220923082758.2284969-1-philippe.coval@astrolabe.coop>
From: Peter Hoyes <Peter.Hoyes@arm.com>
In-Reply-To: <20220923082758.2284969-1-philippe.coval@astrolabe.coop>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 10:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58143

Hi,

One minor comment below.

On 23/09/2022 09:27, philippe.coval via lists.yoctoproject.org wrote:
> From: Philippe Coval <philippe.coval@astrolabe.coop>
>
> It was tested with zephyr-openthread-rcp
> along Oniro's IoT gateway blueprint
>
> For the record deployment was done manually:
>
> - Click on device button
> - uf2conv.py "zephyr.hex" -c -f 0xADA52840
> - and then copy to mounted "/dev/disk/by-label/MDK-DONGLE"
>
> Support of unfree flashing tools might be added later (once double verified)
>
> Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=philippe.coval
> Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparent-gateway/meta-oniro-blueprints-gateway/-/issues/6
> Relate-to: https://wiki.makerdiary.com/nrf52840-mdk/zephyr/
> Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/openthread
> Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
> ---
>   meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf | 7 +++++++
>   1 file changed, 7 insertions(+)
>   create mode 100644 meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
>
> diff --git a/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> new file mode 100644
> index 0000000..214cbb8
> --- /dev/null
> +++ b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> @@ -0,0 +1,7 @@
> +#@TYPE: Machine
> +#@NAME: nrf52840-mdk-usb-dongle
> +
> +#@DESCRIPTION: Machine configuration for makerdiary's nrf52840-mdk-usb-dongle
> +
> +require conf/machine/include/nrf52.inc
> +RCH:nrf52840-mdk-usb-dongle = "arm"
Should this be ARCH?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58142): https://lists.yoctoproject.org/g/yocto/message/58142
> Mute This Topic: https://lists.yoctoproject.org/mt/93866101/5715260
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [peter.hoyes@arm.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
Peter

