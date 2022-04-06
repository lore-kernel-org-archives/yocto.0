Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5973C352AA
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.6427.1649236272308446224
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:11:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=BCTcg2YY;
 spf=pass (domain: burtonini.com, ip: 209.85.221.52,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f52.google.com with SMTP id d29so2171499wra.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OgK5Bnyi7rY/lQ2yhDNfogtMLSLL8vxvrNwIYUg336g=;
        b=BCTcg2YYVjZEvYJfdwWdoxvBsPc08Jm2K3XNE260S3CHSNjTo26M06xjpzrTyymeqQ
         r1s6lDkndl8CCQ7nZ3d6UNzQD14l41XePYsBBhJ5wd29q4rxOZKhEvIrqPls6H/+aXve
         0vDCbZNAhqG5mKNvUXN5FXemmUDGta6Oql9Vm9WQ8idJ0bUre3+V0lkzIFnpkwUrjd/D
         JwMEcEKZiQgnecsT/1S1YUcMv4gaTbbNUFMzg/3DiY8Wi1mY7qi9F31B79sg113DCaNz
         aG0u9K7fU+NGqi7nZRGVU+zf9hitKc/7ZXBI/pffKinJP74s4Fyx0S4r+xh/xUt/9Hf9
         Y71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OgK5Bnyi7rY/lQ2yhDNfogtMLSLL8vxvrNwIYUg336g=;
        b=ClFhDh3Pgd78qN7K+VYTFhd4qR6fKab2dPaRl815yvxBQbBU6hV4Aor2CffeHT0ekN
         A7yOmlERgdGOw58bCMi/qn1tbnN9VU5z4kj49Nb+g63xB8ZxX5X9igV4S/3E/iKTzgj1
         YTi2pfwC3xXI9yocQMoA4uxbMUPLcm/PldKP6YYJKDunuU9yCL1lVbkFZpuRUHiAofvt
         iOgFWhjfOLHIU4QWzlqtlMZwfmMrKsH40yCAq0HTet8QxpRseT56ZrLpxQGD8+yuJqsL
         dMSuXYM29nJYNtofTdrd/d7hLaky5tOXV0ZbW6L1M4rCFqTOAwlJQRgcWDm4hZpv5aOP
         O7UA==
X-Gm-Message-State: AOAM5302iTVuKCZkBu2h0SUN8WI/4EvNSOrXAhf6SDlpUvN78VasFbaE
	lqYblCt74XEaDXNMU/ptK5G+p7vYznqpeZ6RZthJyQ==
X-Google-Smtp-Source: 
 ABdhPJxeid+keYSsKy92tx+uP7VOKyaK+IOB3HXg4TbyjHtd26DdhLoof104Dkuy9LfrIlR0LRDr6fTJ0vcZ35Fb3Fg=
X-Received: by 2002:a5d:6d0c:0:b0:204:d77:313a with SMTP id
 e12-20020a5d6d0c000000b002040d77313amr6015043wrq.405.1649236270437; Wed, 06
 Apr 2022 02:11:10 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 6 Apr 2022 10:10:59 +0100
Message-ID: 
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56674

On Wed, 6 Apr 2022 at 09:59, Mans Zigher <mans.zigher@gmail.com> wrote:
> A more specific issue is that there are so many packages with bash
> dependencies which are pulling in bash which is GPLv3 so how have you
> solved that? Currently we have done some pretty uggly hacks which I am
> not that happy with but we needed to keep it out of the image.

As you're not naming recipes it is hard to offer concrete advice, but
I will note that a large percentage of the bash dependencies in
oe-core are specific to the ptest packages. If you don't need those
then you can turn off the ptest DISTRO_FEATURE.

Ross

