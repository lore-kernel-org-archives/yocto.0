Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web12.14105.1611075267231498962
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 08:54:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZoUtwVM1;
 spf=pass (domain: gmail.com, ip: 209.85.166.46, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id d13so37683993ioy.4
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 08:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DKUayuCZ+goPF37lHXfYQcVnW4EfwBKs+hgWAfAUR8I=;
        b=ZoUtwVM1SwlU423ya8MFeIRDW9c9vghER9dqHFmIPED/AcxxEOLUwCJrZMGUFCbvk/
         rTf80QQfKrUphCyR3CxqLobHSKkSGJDnXnaSOCBwS/u07LvUczdBtlaqYpf2mksq/CBm
         slWSCv2RrjiZceYb25vVxpI3zwcWkd2rBTOZy2u5S2vWWKO+PWPKZKo9ZyjbNcpUdIvQ
         fxyskxfVraIOqLwZoVZxpYEsncsLlnZikNOSOWVrcyAiJUlpLmyQcTo/R/tbWeToN2Ub
         lE7JfTdRxVZ9TkoZTH6Ug1CAEkunhRucMXNowQ+4gg0FhtrkBwYCgfRsLPRbOfHcQDyD
         IR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DKUayuCZ+goPF37lHXfYQcVnW4EfwBKs+hgWAfAUR8I=;
        b=aS0+XlRynsaKDfCI0KJDECCT2KjggxQlpvYadRstIEUMkExgkuP6s62DMTETv5U0zT
         fX0HBEsgmvxnL5394Qen4xySrME1ZHRR4jZQk76K+yUUq0Z5RNwySBBkgr0/7fKH9MvX
         rbIuJIDyRGxwXBQTKGIvBh0fySEjuDpHO/IKTO7tpmA6JmRx8Xb7DZVyQDHsAOF/VWjr
         3Ojm4GxQFDH5oMg/YnlyEW/xVCCQR/HcOF7FgiuCVbZQUTsOnOsj8KazmTwt7IjBvK4j
         ypEdRJagM4MHeLR3kbLqUEzicrF5eLQQltEDY65w6i5mnBvPI8OmQ1xSLnR/1+78yzvo
         royg==
X-Gm-Message-State: AOAM530NuAeeOROBi58wno5et57KmrNbJk5CxGNapfJ5DslQR3ZmbXub
	kTK9ZU8J5mZumYiotEU1ztpiCVRt9q8YgR005Gg=
X-Google-Smtp-Source: ABdhPJyYl0nSP+4yBe+8J2AM17J0f98HqG4YAqaSQIaECrADojfm57bIjSIT6JdorAfBfoN0sKoKlbMYPzQZhyPxRCQ=
X-Received: by 2002:a92:85d4:: with SMTP id f203mr4044470ilh.232.1611075266471;
 Tue, 19 Jan 2021 08:54:26 -0800 (PST)
MIME-Version: 1.0
References: <2283.1611063703258428427@lists.yoctoproject.org> <2283.1611067697958905459@lists.yoctoproject.org>
In-Reply-To: <2283.1611067697958905459@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 19 Jan 2021 17:54:14 +0100
Message-ID: <CAGAf8Lwm=8s0Q=hhtou4ML562Gx83h41eHDGLc3MqR-mzhsmoQ@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Zolee,

You need also to do on the target platform the following (very first time):

You must have header files, at minimum, in target's : /usr/src/$(uname -r)/

Or for yocto (AFAIK), maybe: /usr/src/kernel/$(uname -r)/

To prepare out-of-tree device driver compilation in /usr/src/kernel/$(uname -r)/

/usr/src/kernel/$(uname -r)$ make oldconfig && make prepare
/usr/src/kernel/$(uname -r)$ sudo make scripts prepare

Zee
_______

On Tue, Jan 19, 2021 at 3:48 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> My modeles.dep file looks like this on target:
>
> kernel/fs/nfs/flexfilelayout/nfs_layout_flexfiles.ko:
> kernel/crypto/echainiv.ko:
> kernel/crypto/gcm.ko:
> kernel/crypto/ccm.ko:
> kernel/crypto/ghash-generic.ko:
> kernel/drivers/char/hw_random/rng-core.ko:
> kernel/net/ipv4/tcp_bic.ko:
> kernel/net/ipv4/tcp_westwood.ko:
> kernel/net/ipv4/tcp_htcp.ko:
> kernel/net/bridge/br_netfilter.ko:
> kernel/net/wireless/cfg80211.ko: kernel/net/rfkill/rfkill.ko
> kernel/net/mac80211/mac80211.ko: kernel/net/wireless/cfg80211.ko kernel/net/rfkill/rfkill.ko
> kernel/net/rfkill/rfkill.ko:
> kernel/net/rfkill/rfkill-regulator.ko: kernel/net/rfkill/rfkill.ko
> kernel/net/rfkill/rfkill-gpio.ko: kernel/net/rfkill/rfkill.ko
> extra/cdc-ncm.ko: extra/cdc-wdm.ko
> extra/hello.ko:
> extra/cdc-wdm.ko:
> extra/huawei_cdc_ncm.ko: extra/cdc-wdm.ko
>
> --
> Zolee
> 
>
