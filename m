Return-Path: <sprhawk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF811C678D5
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 00:55:25 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.246.1677113724369746564
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 16:55:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ou2CXUO3;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: sprhawk@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1724d65d002so5479715fac.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 16:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MFtU6W3lZWqeVlpTCxG7AG2uC0xjMatfOW/S5EVFCjA=;
        b=ou2CXUO3vitQcKOwVZyr0ipiEEwRCYORJEBpFRlMGyDNJUk+e3isRctb3Fh08z8Yva
         UIuJ9QacwNK7TA27vPnCiDPkdzbNgEoJVlKNDX/u3tnb7unnwm5Wy5fXY7hv4ZoW4odT
         8yvPIiV6qU+1X1YBpJjBdye6LKjOeWtBUEJZadpJJ8tLGhL1vKbKZYGI2qmOPWeXyaTK
         9FQVYdiG1PhWsYanYewuELOYERCGPxzZHiXStfMJ1nmtFhAIwwl2s6csyQPQH44A4QJs
         RbKqWPrbUvT15iWEP0Qm140vZ/LZ13y9uZoPfT2fbkFZdS8Vl7uDRAyJbF240KG7br5F
         Ae0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MFtU6W3lZWqeVlpTCxG7AG2uC0xjMatfOW/S5EVFCjA=;
        b=CLYEx/cBmuJzg32hidMSrVi/AOaNnDzvofocSNi6QmBoDiFkKEmfof9dDlpSrbSZx/
         Ia1vi81nTYcIAUTZBo+JML8r2IvE1xJopyVyPoMMoCHOK5zwc+M2Hrz3f0FnvfxErcQL
         +SyeOoqpOHMYc7m7TFijyDqCKslQI7xdR8gjSlFEnnDjd67cElEGt13UwmAN+xFPPOB9
         oAbDnNz2pMoP4GUDuDYHProMSSKsDxTCbYJIlZthxs7XJe6JXRRdEH69PWahvUTjOQSy
         HP4YA5aZULQQrg8kggJPbUaQ17m9YpyYfuhoiBRQ+ZrOUrY2/Vb8W5zJ7YzBoN7euRpa
         ZuYA==
X-Gm-Message-State: AO0yUKVcea9+6osycTrpv5ig/YDpZSXwaC68MZWVIUmkUIObA9ySymoB
	FpEv+pSk1oKCHDbTpOeMWtUthfOUVmpCDv0aLGQ=
X-Google-Smtp-Source: AK7set8VnU6ygAK+TumRJB6gZ0jslK69O5wBBkRukO3FBXyEft6Zo1zT3/jJK3cRfhXKq6hGtrMvWSEv/yA1i7C4G9s=
X-Received: by 2002:a05:6870:4b9a:b0:172:55c2:a3c6 with SMTP id
 lx26-20020a0568704b9a00b0017255c2a3c6mr340374oab.112.1677113723544; Wed, 22
 Feb 2023 16:55:23 -0800 (PST)
MIME-Version: 1.0
References: <CADBJ=yGzAccChDkYKvf7191p=FT71NwVHQ8y0pqV43mqh1DCEw@mail.gmail.com>
 <CAMKF1sq=PHNJDNvdiu1Jtp69uJq0NDWNwq6iJ9Z_+-v1qi4PaQ@mail.gmail.com>
In-Reply-To: <CAMKF1sq=PHNJDNvdiu1Jtp69uJq0NDWNwq6iJ9Z_+-v1qi4PaQ@mail.gmail.com>
From: "Y. HB" <sprhawk@gmail.com>
Date: Thu, 23 Feb 2023 08:55:12 +0800
Message-ID: <CADBJ=yEmu7=sb-B34M+Quq0YmktccuYc3sX8kNNRbfk5r5Qq6Q@mail.gmail.com>
Subject: Re: [yocto] Can I specify a prebuilt version of toolchain only for
 kernel building?
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 00:55:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59288

Thanks for reply

Like I said the driver (galcore.ko) is running on kernel 4.19 built
with gcc10.3, yes I verified the kernel can run on my target hardware.

I didn't need the toolchain, what I need is integrating a prebuilt
toolchain only for kernel build.


On Tue, Feb 21, 2023 at 1:26 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mon, Feb 20, 2023 at 7:40 AM Y. HB <sprhawk@gmail.com> wrote:
> >
> > Hello
> >
> > I got a board (Rockchip RV1126), whose NPU driver  kernel module is
> > distributed in binary form, which requires specific kernel version
> > (4.19.111) and toolchain version (gcc 10.3)
> >
> > ( I built the yocto with the specified kernel version, but using yocto
> > shipped gcc 11, when I insmod, the driver reported invalid module
> > format, and modprobe reported invalid exec format, I guess that is due
> > to gcc version is incompatible )
> >
> > I'm building the system with yocto kirkstone, which ships gcc 11. Can
> > I have some way to just specify using external toolchain with prebuilt
> > gcc 10.3 while other system still be built with default yocto shipped
> > toolchain?
>
> before we start on that path, perhaps verify that you can run the kernel
> that you build with gcc 10.3 externally but manually building it and replacing
> it on target
> you can use a prebuilt toolchain from
> https://toolchains.bootlin.com/releases_aarch64.html
>
> >
> > I have seen meta-external-toolchain and meta-soucery, but it seems it
> > will replace whole toolchain with this external version. Can I find a
> > mean to just specify for building  kernel ?
> >
> > Thanks
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59255): https://lists.yoctoproject.org/g/yocto/message/59255
> > Mute This Topic: https://lists.yoctoproject.org/mt/97088202/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

