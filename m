Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07EF2C433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 19:38:15 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.10472.1632598694251923132
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 12:38:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=g4INUUGn;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.169,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f169.google.com with SMTP id m26so1305437qtn.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 12:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=598XWMiYzpOfgB3XNnfglwBQnbv7u6+iC3LB759Nrnw=;
        b=g4INUUGnPMhBnLvGnVE9ILo0e1RIh/ugKhi3n6gN7bYCqTPISTdtMmGCdMOxuEa1Uh
         t2d590vM93F2pVom39SRMh49UBI7ITkVgQsWcG/PdBxdaEBglhQCeIXfTm7N4rdD7PbO
         UXWYDhPz5wSni7IJtw11CSsnFjnkZdmSF9ccDz+UJZ4mNkbwHA5wT1p5W16CsDESZZvu
         CZff2SUDQd8obvyN5Jnn2eDwWFWcf+EcFoUUvaNCv6jUbXuv7eWN6x3p1hiz2KqvH9vb
         /pvJ0jLhCugSQtlY2FHYxMZRSiQBUEbOMwutG7o7mOMew41R/1X8aUUJtvhAvdqU1m1h
         xqDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=598XWMiYzpOfgB3XNnfglwBQnbv7u6+iC3LB759Nrnw=;
        b=tuF9BQcECfMpDSkIB5tvtkU9Bahvb5c6kCGWBDeiI8Y0dGIvJJtR8w77Uc2ffbzPCN
         XCaJMutne74qqmW2qZGzsqRY4zwJJEY+adycdeDuVUJEzmJnnrNi0+1j2yG6fJqZPSBX
         tMwoW87qYbSu0MprNyQ/tVLMz5DeXBAeWChdIUlKzX0aU8VXNuGYU3/UDgtt/fLxR31v
         oq2i/bBzDmBXam/sL6yfeWcVffpiawf6TLaHk1tEUhbLeYlu6x0a93DAeG4LDVSbfdxH
         bTeoVOzJfAx7q5cNE1BpUG3RsQCS2d4x5Ygh3ikQOd5LnnLKC0N+7dA6DcVpPdubc3u5
         QlZQ==
X-Gm-Message-State: AOAM5322Cxkb6wPKPoE+QP5zHUdWxOUwzysrtFqSe3xPbyLYtt+w3WY9
	/p6DhH5QdHvDmvpwi1AjKOLE1zVwUqlNqdCMVueq3w==
X-Google-Smtp-Source: 
 ABdhPJyAM4QO+pdfqwsXyVvncjFtUue4QI3tjrFJTg/+1qgejvlSnzew8j0KnlCKoNCQxrWFMzQvCEvi/MmN5zIzt9k=
X-Received: by 2002:ac8:143:: with SMTP id f3mr10935866qtg.238.1632598693366;
 Sat, 25 Sep 2021 12:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210924065518.13567-1-naveen.kumar.saini@intel.com>
In-Reply-To: <20210924065518.13567-1-naveen.kumar.saini@intel.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Sat, 25 Sep 2021 15:38:02 -0400
Message-ID: 
 <CAPoiz9xzYUn1QVzx+-Q0CNXT=OvAO2mDhP=2iRWGo4k1onZjNQ@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 1/2] zephyr-qemuboot: fix parse build
 failure
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 19:38:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54853

With both of these, and the patch I just sent out, I am able to get
all of the boards building (except qemu-nios2) and passing testimage
(for the qemu boards).
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/376922543

Thanks,
Jon

On Fri, Sep 24, 2021 at 2:40 AM Naveen Saini
<naveen.kumar.saini@intel.com> wrote:
>
> As OE-core explicitly have added depends for qemu-helper addto_recipe_sysroot task, which
> breaks zephyr-qemuboot implementation of adding build dependencies
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=282d596b8cc81d650b6d20c6131fdc236bad2c20
>
> ERROR: Error for meta-zephyr/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb:
> do_bootconf_write[depends], dependency qemu-helper-native:do_addto_recipe_sysroot:do_addto_recipe_sysroot in
> ' qemu-helper-native:do_addto_recipe_sysroot:do_addto_recipe_sysroot qemu-helper-native:do_addto_recipe_sysroot:do_populate_sysroot' does not contain exactly one ':' character.
>  Task 'depends' should be specified in the form 'packagename:task'
> ERROR: Command execution failed: Exited with 1
>
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> ---
>  classes/zephyr-qemuboot.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
> index c268e9e..b45e6f6 100644
> --- a/classes/zephyr-qemuboot.bbclass
> +++ b/classes/zephyr-qemuboot.bbclass
> @@ -48,7 +48,7 @@ python () {
>          for dep in (d.getVar('EXTRA_IMAGEDEPENDS') or "").split():
>          # Make sure we only add it for qemu
>              if 'qemu-helper-native' in dep:
> -                deps += " %s:%s" % (dep, task)
> +                deps += " qemu-helper-native:%s" % (task)
>          return deps
>      d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_addto_recipe_sysroot'))
>      d.appendVarFlag('do_bootconf_write', 'depends', extraimage_getdepends('do_populate_sysroot'))
> --
> 2.17.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54833): https://lists.yoctoproject.org/g/yocto/message/54833
> Mute This Topic: https://lists.yoctoproject.org/mt/85833578/3616920
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jdmason@kudzu.us]
> -=-=-=-=-=-=-=-=-=-=-=-
>

