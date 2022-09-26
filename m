Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91B6C07E9D
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 18:59:58 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
 [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web08.1912.1664218796252006890
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 11:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=MgLFlkgn;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.48,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f48.google.com with SMTP id i15so4897351qvp.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 11:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=BbfpiLnzcO3Qw/QuJGRpXzel4JtkU1edpkbmSDjyHC8=;
        b=MgLFlkgniTpvW+LPzj97vSM3GPY4lVew8aFYyavt2DANVeai6dYxpLPdVA8u67akXe
         USM5/vkeL07qfTu0AWFf9km5+45AVbsPE2u3MjmfL6Sa9AgzKeH0Ss79V+yYcPjGa3sQ
         CawDzpTmFu+VcUuu9Mh8rhQsx8i31qhPgFIR2ST4bWdzE2T28+7CzSmSu7HpAsKKakXY
         HzLDqqfFj0SVMysg6h+S/RE+aKQsInE3oKWlH5/Dvc0DZNpwdP1+N1+k48GGTQtokT6r
         uUiNJgdVM4uich24xI6ipwgQtO5qwWOLO1ccFP6gw/s3gpTThx4S1OIqwPNn/MUAq9uB
         pzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=BbfpiLnzcO3Qw/QuJGRpXzel4JtkU1edpkbmSDjyHC8=;
        b=7UbFT1W4DN9lbI5DjNewmDNSCoII5d90JI+6qA3K4/acxvvjPXh9Mt5X2PmAqU9zcs
         8bc6K6mAQ1rZba4eVdIACQO96cZ48MbTxZly23TLw9bTkgfKC3Oad8cHZucGwSBbkZVU
         GPttYRz00/+QaXI9VccXqEovBRzc6bZnkC3FqMy0ynpZMyjCuq2HDsGO7+O5hghnaVeY
         2SwAlHIBgxSLROFwFBmFKN2QhmpBajVRVapis+JhVr+IY7N7atgwCDEIJryrjXtRcWJS
         rkbtv6pw6yGiYuDT06eRbmtGXhBcJcRu2pgdN1tvCGJEVBYqaIqeHn6GV5Ht+NuDBR96
         6Y9A==
X-Gm-Message-State: ACrzQf379dqR+/G4Ia9xPAqbYt+nQRXVrfp5Df1knaf8sGed5XpCw1ZU
	HBDSigi0SIufchzgrHxT05Br+w==
X-Google-Smtp-Source: 
 AMsMyM6BglsQIiVXDLVNmVCMJITemhKpIBUNZrw86jPuumujYCL/IURHjUsnM8DvYz4Of+gH3n4J8Q==
X-Received: by 2002:a05:6214:2686:b0:4af:630c:78f2 with SMTP id
 gm6-20020a056214268600b004af630c78f2mr8327994qvb.52.1664218795256;
        Mon, 26 Sep 2022 11:59:55 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 m18-20020ac84452000000b0035d27b254f3sm6419966qtn.40.2022.09.26.11.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 11:59:54 -0700 (PDT)
Date: Mon, 26 Sep 2022 14:59:52 -0400
From: Jon Mason <jdmason@kudzu.us>
To: philippe.coval@astrolabe.coop
Cc: yocto@lists.yoctoproject.org,
	philippe.coval.pro+meta-zephyr-lists.yoctoproject.org@gmail.com,
	Philippe Coval <philippe.coval.ext@huawei.com>
Subject: Re: [meta-zephyr][PATCHv2] nrf52840-mdk-usb-dongle.conf: Add new
 machine from makerdiary
Message-ID: <YzH2qM8bknC9YoW2@kudzu.us>
References: <20220923104509.3428417-1-philippe.coval@astrolabe.coop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220923104509.3428417-1-philippe.coval@astrolabe.coop>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 18:59:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58168

On Fri, Sep 23, 2022 at 12:45:09PM +0200, philippe.coval@astrolabe.coop wrote:
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
> Forwarded: https://lists.yoctoproject.org/g/yocto/message/58142
> Relate-to: https://gitlab.eclipse.org/eclipse/oniro-blueprints/transparent-gateway/meta-oniro-blueprints-gateway/-/issues/6
> Relate-to: https://wiki.makerdiary.com/nrf52840-mdk/zephyr/
> Relate-to: https://gitlab.eclipse.org/pcoval/oniro-presentations/-/wikis/openthread
> Signed-off-by: Philippe Coval <philippe.coval@astrolabe.coop>
> Signed-off-by: Philippe Coval <philippe.coval.ext@huawei.com>

This needs a Gitlab CI entry to test.  I did a quick one and ran CI on
it here:
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/651094923

I'll email the patch to add CI shortly.

Thanks,
Jon

> ---
>  meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> 
> diff --git a/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> new file mode 100644
> index 0000000..67e407a
> --- /dev/null
> +++ b/meta-zephyr-bsp/conf/machine/nrf52840-mdk-usb-dongle.conf
> @@ -0,0 +1,7 @@
> +#@TYPE: Machine
> +#@NAME: nrf52840-mdk-usb-dongle
> +
> +#@DESCRIPTION: Machine configuration for makerdiary's nrf52840-mdk-usb-dongle
> +
> +require conf/machine/include/nrf52.inc
> +ARCH:nrf52840-mdk-usb-dongle = "arm"
> -- 
> 2.34.1
> 
> 

