Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D068EC433F5
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 14:53:16 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web12.11384.1664463189772702301
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:53:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=mSgzCqNc;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.181,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f181.google.com with SMTP id i3so981524qkl.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=971Y0bG2EOlc0aba3B5ISm5RBXNRyapBs9WIpgrtlHk=;
        b=mSgzCqNces3lgl/owwS2BnpwzEEHivtU2tTG7X3NcLNaiPPjPWwxQ4gF+wMBD+IrTW
         gEFG9y2lqhTD40qu9lze/4na35FenzzsQ3lAY73cNp05NVk4m0tu+Xw3QJ32tgI0FFtK
         S9LkBkZvu3NjrH51kK5aN+g6i3r5yOYbGJ93FXPyzJB+o7N7aBKErtNGiXY3JUrTAQPD
         vTAoHl6zT4Ssmbe04ucLxd6OBQ0h7LpqhcIdaoE806npAvgprjjCDLIcW/4RRBxNXLYM
         HeqtBArpf5G3X0Jw7bwxIWbyerS387R0YP39i8iZmUIBLTez+oqTx2st2udPi73Wqf3Q
         tFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=971Y0bG2EOlc0aba3B5ISm5RBXNRyapBs9WIpgrtlHk=;
        b=W/3h3PU2HW9R8GWBlYqKwIX9YGCgeMhzxWu38KA+KYTgEkEiaVw6UxZPSydxAAXSgv
         yETCzrfRzYtGusxlh2ScJ/dIeMjdaIalh5/BWt41QbFa4didxW2iBvARQAhadI6NVCAX
         0/cXTU6nMa8gKCmMzyLM2RzMVKPjBEkajXvOIEcPBx/PKw6//eFGGlVP8xv/oAc6I7iW
         aE+rxqmkhr0x66AWwt//6aLyqs3WP7FTHrk3kM1bPd6F9mUgNZGOJg94GTs2nJU3WxHN
         NQdt7enD7UpvmM5ZzDwQO88kjN3YBs7BjZeF0L0PgpQz3s3mL72zERjUFbjEIPdivgJx
         zwFg==
X-Gm-Message-State: ACrzQf2qYY90lbFej24POkw46hUy8PuCpLaweLIxgjLXUGRAtb0mN80X
	dAFdWUOf6a8Yz512b4pTIQg89dfjhEUFclYA
X-Google-Smtp-Source: 
 AMsMyM4FbsC4x3pOZBvOXXvVe3X38mG1DaV0NgC3LvozO2Agdx6bn9Y6qRmkkDwmNlCrwwpWkHBCzA==
X-Received: by 2002:a05:620a:4f2:b0:6cf:2175:e7d2 with SMTP id
 b18-20020a05620a04f200b006cf2175e7d2mr2445879qkh.401.1664463188895;
        Thu, 29 Sep 2022 07:53:08 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 i2-20020a05620a248200b006cbe3be300esm6431957qkn.12.2022.09.29.07.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 07:53:08 -0700 (PDT)
Date: Thu, 29 Sep 2022 10:53:06 -0400
From: Jon Mason <jdmason@kudzu.us>
To: philippe.coval@astrolabe.coop
Cc: yocto@lists.yoctoproject.org,
	philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com,
	Philippe Coval <philippe.coval.ext@huawei.com>
Subject: Re: [meta-zephyr][PATCH] zephyr-openthread-rcp: Support
 nrf52840-mdk-usb-dongle machine
Message-ID: <YzWxUqTDMsaSyxdr@kudzu.us>
References: <20220928130901.1414286-1-philippe.coval@astrolabe.coop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220928130901.1414286-1-philippe.coval@astrolabe.coop>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 14:53:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58217

On Wed, Sep 28, 2022 at 03:09:01PM +0200, philippe.coval@astrolabe.coop wrote:
> From: Philippe Coval <philippe.coval@astrolabe.coop>
> 
> This makerdiary board can be a fallback option for Oniro's gateway-blueprint
> I've been tested it myself along my single arduino-nano node
> 
> Origin: https://gitlab.eclipse.org/eclipse/oniro-core/meta-zephyr/-/merge_requests/22
> Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparent-gateway/meta-oniro-blueprints-gateway/-/issues/6
> Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/openthread
> Forwarded: https://lists.yoctoproject.org/g/yocto/search?q=posterid:6590488
> Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
> Signed-off-by: Philippe Coval <philippe.coval.ext@huawei.com>

We probably need to add "zephyr-openthread-rcp" to the yml file as
well (to verify it compiles as part of CI).  Since it is missing for
nrf52840dk-nrf52840 too, I'll do a quick patch to add this for both
and send it out.

That being said, CI isn't verify valid for this since it's not really
compiling it.  However, nothing else breaks :)

Verified in a batch CI job.  See https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/654231304

Tested-by: Jon Mason <jon.mason@arm.com>


> ---
>  .../recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
> index 1b19122..d745e85 100644
> --- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
> +++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-openthread-rcp.bb
> @@ -7,4 +7,4 @@ EXTRA_OECMAKE += "-DCONF_FILE="prj.conf overlay-rcp.conf overlay-usb-nrf-br.conf
>  # The overlay config and OpenThread itself imposes some specific requirements
>  # towards the boards (e.g. flash layout and ieee802154 radio) so we need to
>  # limit to known working machines here.
> -COMPATIBLE_MACHINE = "(arduino-nano-33-ble|nrf52840dk-nrf52840)"
> +COMPATIBLE_MACHINE = "(arduino-nano-33-ble|nrf52840dk-nrf52840|nrf52840-mdk-usb-dongle)"
> -- 
> 2.34.1
> 
> 

