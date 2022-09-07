Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB6AFC38145
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 20:08:34 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web09.416.1662581308566289612
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 13:08:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=NVkawoqh;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.45,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f45.google.com with SMTP id d1so11604671qvs.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 13:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=BZkowY+l8vDzh2Xzmb5dShzqvDnWUK4Db9V+gzl2Y10=;
        b=NVkawoqhaEa38yT0AWmOolUExWtvsFgf9wI3kiqEyFMZRP2Ns2Qk49zKGktqkOQ+Sv
         e1K/Fq38VOs8FeJwr4cgrf3P/7061EFub58ExpZXPr530tZmhVRCxcDSg8DBXJmmKq6D
         50HwG9xNF8DNDPVxMDCCjlArgOg+nnrBye6HGh8YFVlhuTc56fNBL+qNisi5Z4K/HjVV
         eJpDfRpAnklwO5e2rPxQpivzHWs0yHmnlu3BDAA9j2BXAQvmp57VDwFaXV3sckc5ciYE
         ZDPX0quGMkmqzqjxM9waB6aN30GT7qNvEJc1o1fpSphKRlfSrkeBOW4Ew7xQbtw384IC
         E9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=BZkowY+l8vDzh2Xzmb5dShzqvDnWUK4Db9V+gzl2Y10=;
        b=pPdZiMCcQMQVEeblIMouHJDVcaQG1ah9tkDJ4CT4tAXda3zs70sBPcmrArTcrJFkPP
         JSi1ZAVTYPd9+I2xujl+l1kzyInnNlJwaAlfG38sVUxxvwLoyDeASAJAHaNXC947wSBs
         EhNz3NocwlZ6h0ydymCrzuLTCrLbmalJ/Wor7O1Xq/Mt1JOxmQHSzKQPv+bZuGP60QRy
         GZVwvhprhsa93hGwWb1ld0Wpmu5LB9dHcGMdowFeSnZ304D23vcyRObhDZO0cQPI2bzj
         AKHSiy8rVLSfy9OwiDrB9wp2wKMi4xL4dWY5dhbI/o/avm9yGnyrNY5ePNuyU9kXxWmk
         AAEA==
X-Gm-Message-State: ACgBeo18Svp3RiOSUzgngMTkl+qgLWMLI9SOWFICQ1t/R9CwjnafZt2n
	uXos74WdEYO7gifQL7HhdEzKKg==
X-Google-Smtp-Source: 
 AA6agR488Qsm2P0xi54xVbdrzuW4PSgarsPMGg9cZNr0jIKsSBPV1PFPboAVPaSaT+/+wr+e1unXhg==
X-Received: by 2002:ad4:5ecd:0:b0:4a6:cf3a:2462 with SMTP id
 jm13-20020ad45ecd000000b004a6cf3a2462mr4782931qvb.67.1662581307375;
        Wed, 07 Sep 2022 13:08:27 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 g6-20020a05620a40c600b006b9576cd060sm15052290qko.21.2022.09.07.13.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 13:08:26 -0700 (PDT)
Date: Wed, 7 Sep 2022 16:08:24 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Peter Hoyes <peter.hoyes@arm.com>
Cc: yocto@lists.yoctoproject.org, diego.sueiro@arm.com
Subject: Re: [meta-zephyr][PATCH 1/5] Cleanup README.txt files
Message-ID: <Yxj6OL3PgmYo9xeq@kudzu.us>
References: <20220906131702.310027-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220906131702.310027-1-peter.hoyes@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 20:08:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58001

I ran this series though CI and it passes
See https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/633557829

Thanks,
Jon

On Tue, Sep 06, 2022 at 02:16:58PM +0100, Peter Hoyes wrote:
> From: Peter Hoyes <Peter.Hoyes@arm.com>
> 
> The README.txt files at the root and in meta-zephyr-core are identical,
> so replace the copy inside meta-zephyr-core with "See ../README.txt" to
> remove the need to keep two files in sync.
> 
> Add a similar README.txt to meta-zephyr-bsp.
> 
> Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
> ---
>  meta-zephyr-bsp/README.txt  |   1 +
>  meta-zephyr-core/README.txt | 120 +-----------------------------------
>  2 files changed, 2 insertions(+), 119 deletions(-)
>  create mode 100644 meta-zephyr-bsp/README.txt
> 
> diff --git a/meta-zephyr-bsp/README.txt b/meta-zephyr-bsp/README.txt
> new file mode 100644
> index 0000000..2644ed0
> --- /dev/null
> +++ b/meta-zephyr-bsp/README.txt
> @@ -0,0 +1 @@
> +See ../README.txt
> diff --git a/meta-zephyr-core/README.txt b/meta-zephyr-core/README.txt
> index 5a0ccc7..2644ed0 100644
> --- a/meta-zephyr-core/README.txt
> +++ b/meta-zephyr-core/README.txt
> @@ -1,119 +1 @@
> -Building Zephyr Images via bitbake recipes
> -==========================================
> -
> -More detailed and up-to-date information can be found here:
> -
> -https://wiki.yoctoproject.org/wiki/TipsAndTricks/BuildingZephyrImages
> -
> -Prerequisites:
> -==============
> -
> -This layer depends on:
> -    Yocto distro (master)
> -        git://git.yoctoproject.org/poky
> -    Python layer (meta-openembedded/meta-python)
> -        git://git.openembedded.org/meta-openembedded
> -
> -Modify local conf by adding:
> -    DISTRO="zephyr"
> -
> -Add "meta-openembedded/meta-oe" to BBLAYERS
> -Add "meta-openembedded/meta-python" to BBLAYERS
> -Add "meta-zephyr" to BBLAYERS
> -
> -Building and Running Zephyr Samples
> -===================================
> -
> -You can build Zephyr samples. There are several sample recipes.
> -For example, to build the Zephyr "philosophers" sample:
> -    
> -    $ MACHINE=qemu-x86 bitbake zephyr-philosophers
> -    
> -You can then run the created "philosophers" image in qemu:
> -
> -    $ runqemu qemu-x86
> -    
> -The same sample, for ARM image:
> -
> -    $ MACHINE=qemu-cortex-m3 bitbake zephyr-philosophers
> -    $ runqemu qemu-cortex-m3
> -    
> -The same sample, for Nios2 image:
> -
> -    $ MACHINE=qemu-nios2 bitbake zephyr-philosophers
> -    $ runqemu qemu-nios2
> -
> -Flashing
> -=================================
> -
> -You can flash Zephyr samples to boards. Currently, the following MACHINEs
> -are supported:
> - * DFU:
> -  - arduino-101-sss
> -  - arduino-101
> -  - arduino-101-ble
> - * pyocd:
> -  - 96b-nitrogen
> -
> -To flash the example you built with command e.g.
> -
> -    $ MACHINE=96b-nitrogen bitbake zephyr-philosophers
> -
> -call similar command with explicit flash_usb command:
> -
> -    $ MACHINE=96b-nitrogen bitbake zephyr-philosophers -c flash_usb
> -
> -dfu-util and/or pyocd need to be installed in your system. If you observe
> -permission errors or the flashing process seem to hang, follow those instructions:
> -https://github.com/pyocd/pyOCD/tree/master/udev
> -
> -By default, pyocd tries to flash all the attached probes. This behaviour can be
> -customised by defining the PYOCD_FLASH_IDS variable as a space-separated list
> -of IDs. Once that is set, the tool will only try to program these IDs. You can
> -query for the IDs by running `pyocd list` on your host while having the probes
> -attached. Besides setting this variable through the build's configuration or
> -metadata, you can also inject its value from command line with something like:
> -
> -    $ PYOCD_FLASH_IDS='<ID1> <ID2> <ID3>' BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE PYOCD_FLASH_IDS" bitbake <TARGET> -c flash_usb
> -
> -Building and Running Zephyr Tests
> -=================================
> -Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
> -(For ARM we use CortexM3 toolchain)
> -
> -To run Zephyr Test using Yocto Image Tests, ensure following in local.conf:
> -
> -    INHERIT += "testimage"
> -
> -You can build and test an individual existing Zephyr test.
> -This is done by appending the actual test name to the "zephyr-kernel-test",
> -for example:
> -
> -    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-sleep
> -    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-sleep -c testimage
> -
> -You can also build and run all Zephyr existing tests (as listed in the file
> -zephyr-kernel-test.inc). For example:
> -
> -    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all
> -    $ MACHINE=qemu-x86 bitbake zephyr-kernel-test-all -c testimage
> -or 
> -    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all
> -    $ MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -c testimage
> -or 
> -    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all
> -    $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all -c testimage
> -        
> -
> -Contributing
> -============
> -
> -Patches for meta-zephyr should be sent to the yocto@lists.yoctoproject.org
> -mailing list.  See https://lists.yoctoproject.org/g/yocto for subscription
> -details and the list archive.  Please add [meta-zephyr] to the subject so
> -the patches are identifable.
> -
> -Git can be configured to send mails appropriately when using git send-email:
> -
> -$ git config --local sendemail.to yocto@lists.yoctoproject.org
> -$ git config --local format.subjectPrefix meta-zephyr][PATCH
> +See ../README.txt
> -- 
> 2.25.1
> 
> 

