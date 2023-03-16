Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE426C61DA4
	for <webhook@archiver.kernel.org>; Thu, 16 Mar 2023 03:15:14 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.4409.1678936512364329164
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 20:15:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=Q2FWMIOT;
 spf=pass (domain: mistywest.com, ip: 209.85.216.53, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f53.google.com with SMTP id j13so374142pjd.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 20:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112; t=1678936511;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oBtShlW3b+g6ZhOaZ6rxh64Yg1UxYHuhJr8BCwqEMLE=;
        b=Q2FWMIOTPiZ9Dh+1rvsbsqmqbbJqtQ7kdvW6RpKnMk9fzY69doEJ+bFf4SYZsiv1wo
         2E+Pn4rS26ZMa049yI1mxJcvMUD98nkIeTqXPuIQuDpRs5rAfqdh/zKNbrWMv6UUhF5a
         kHo+arVvwtu/pn3mckZ3cH+GTlFjaqX0KZwUTAtW4Gy/jjnJAIBXy8hIMgtAgblSX2Em
         E+tqUVm8i2rgBiJKLn15mVmbh1SrICLx8Kk3E9Se7IdboPlfGd8kg+st9fCzVhDHzleZ
         48mfQkl4U+OilRLBHi8rNuGvJMuuCiIAvGmHFE3orvRtXJbOt+mf0TGi7xfV+ue7U8KK
         QBTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678936511;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oBtShlW3b+g6ZhOaZ6rxh64Yg1UxYHuhJr8BCwqEMLE=;
        b=LeLDsv7Hv3rj+3Lx95vdNTGNTaXSjSBJOAtooYTT0OSiMNuEUKfVbVxRlILWwrnDLE
         KZwB4nrob0DNmY6VGdpnTxUoKBpaM6Zo1I/quut7QmGhHIwG/PD7/eJGpr3pLEhTCMWw
         brYzJux5K/Ixuy/fDS1LNr3axin+KAyOVBLSl+8qrsDoAAYSb3Ei1FX14Nh+GZhKD3Pa
         SZ31KO0hMsUC7e/m4urdLSRop8JSt9otNOHn0oqqzYzO3orSVe4OJ8GSxiD1n3ZUAiWv
         0ERognJJSk42TnLtuT97afjl8tvQIsp46fkqCXG2yEHww4JZnCXOiO4rM7BGlFdaq23W
         n47g==
X-Gm-Message-State: AO0yUKWfcbUsU2x+PZ05dFUttqYwc7F0AYptjR6N2bCjWRgvjAhg8oXT
	yU7zSwF6dGmhMYQbf4gYa3EUS8O8fA7XpoF5TsLhXA==
X-Google-Smtp-Source: AK7set8K8f0he7mYs/AtTQhbPJ7RqET1SgHriRebeeciW0upa5GoZx0SepC5T3UxTu0+1z2olKyOlg==
X-Received: by 2002:a17:90b:3b84:b0:234:13a3:6e67 with SMTP id pc4-20020a17090b3b8400b0023413a36e67mr2198264pjb.12.1678936511421;
        Wed, 15 Mar 2023 20:15:11 -0700 (PDT)
Received: from [192.168.99.6] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id o9-20020a17090a0a0900b0023cfdbb6496sm2087217pjo.1.2023.03.15.20.15.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 20:15:11 -0700 (PDT)
Message-ID: <6055f2e7-cfc4-e8a3-0fde-cf28380fa7b7@mistywest.com>
Date: Wed, 15 Mar 2023 20:15:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] unable to apply patch: "git am" did not work - dubious
 ownership
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <174CBC963DBF1469.18629@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <174CBC963DBF1469.18629@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 03:15:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59436


On 2023-03-15 16:48, Mistyron via lists.yoctoproject.org wrote:
> Hi,
>
> I'm trying to apply a patch to the kernel sources for trouble shooting 
> a problem but the patch doesn't seem to apply, I get the following error:
>
> | (2/4) 0002-add-phy_debug_logs.patch
> | [INFO]: check of 
> .kernel-meta//patches///0002-add-phy_debug_logs.patch with "git am" 
> did not pass, trying reduced context.
> | [INFO]: Context reduced git-am of 
> .kernel-meta//patches///0002-add-phy_debug_logs.patch with "git am" 
> did not work, trying "apply".
> | error: patch failed: drivers/net/mdio/of_mdio.c:286
> | error: drivers/net/mdio/of_mdio.c: patch does not apply
> | [ERROR]: Application of 
> .kernel-meta//patches///0002-add-phy_debug_logs.patch failed.
> |          Patch needs to be refreshed. Sample resolution script:
> |              .git/rebase-apply/resolve_rejects
> | ERROR: Could not apply patches for smarc-rzg2l.
> | ERROR: Patch failures can be resolved in the linux source directory 
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source)
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of 
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/smarc_rzg2l-poky-linux/linux-renesas/5.10.83-cip1+gitAUTOINC+e52825e45b-r1/temp/run.do_patch.22155' 
> failed with exit code 1
> ERROR: Task 
> (/home/yocto/rzg_vlp_v3.0.0/build/../meta-renesas/recipes-common/recipes-kernel/linux/linux-renesas_5.10.bb:do_patch) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5186 tasks of which 4784 didn't need to 
> be rerun and 1 failed.
>
> So I tried to launch a devshell with $ bitbake -c devshell linux-renesas
>
> I confirmed the availability of my patch in 
> build/tmp/work-shared/smarc-rzg2l/kernel-source/.kernel-meta/patches/ 
> invoked "git am" and got the following:
>
> # git am 0002-add-phy_debug_logs.patch
> fatal: detected dubious ownership in repository at 
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source'
> To add an exception for this directory, call:
>
>         git config --global --add safe.directory 
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source
>
> I'm not sure about what would be dubious about the ownership of my 
> files. I'm running out of a container and all files in 
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source 
> are owned by uid 1000, I double checked that with
>
> # tree -upf 
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work-shared/smarc-rzg2l/kernel-source 
> | grep -v 1000
>
> For reference, the patch looks like:
>
> diff --git a/of_mdio.c b/of_mdio.c
> index 4daf94bb..8ce36727 100644
> --- a/drivers/net/mdio/of_mdio.c
> +++ b/drivers/net/mdio/of_mdio.c
> @@ -286,8 +286,10 @@ int of_mdiobus_register(struct mii_bus *mdio, 
> struct device_node *np)
>
>                 if (of_mdiobus_child_is_phy(child))
>                         rc = of_mdiobus_register_phy(mdio, child, addr);
> +                       printk("of_mdiobus_child_is_phy returned true, 
> expected! \nof_mdiobus_register_phy() rc %d", rc);
>                 else
>                         rc = of_mdiobus_register_device(mdio, child, 
> addr);
> +                       printk("of_mdiobus_child_is_phy returned 
> false, not expected! \nof_mdiobus_register_phy()rc %d\n", rc);
>
>                 if (rc == -ENODEV)
>                         dev_err(&mdio->dev,
>
> Can anyone help me out here to find what the problem might be?
Oh okay,

It appears like the "dubious ownership" error appears because the 
default user in the devshell is root, changing back to the yocto user 
(with which bitbake is run outside devshell) and reinvocation of git am 
gives the following:
# su yocto
Password:
$ git am 0002-add-phy_debug_logs.patch
Patch format detection failed.

and using git apply instead doesn't print any errorsd but the patch 
dtill doesn't appear to be applied to the soyurce file:

$ git apply 0002-add-phy_debug_logs.patch
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59435): https://lists.yoctoproject.org/g/yocto/message/59435
> Mute This Topic: https://lists.yoctoproject.org/mt/97640471/7254380
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

