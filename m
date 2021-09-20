Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.9361.1632130657572725448
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Sep 2021 02:37:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112 header.b=t7HpGzqp;
 spf=pass (domain: burtonini.com, ip: 209.85.221.51, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f51.google.com with SMTP id w29so27713105wra.8
        for <yocto@lists.yoctoproject.org>; Mon, 20 Sep 2021 02:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B2Ro9Szt8wVyHnkt26TY3w5iqOcyH5Hu9kUtAt4Dw/4=;
        b=t7HpGzqpE7EXihecjM3Nbwfm9P0oD09gqK5FaaMIFq097SnDdIK0P69Wj1HeKeqPtO
         qt8/KBfjUgFb61SzzQiFBdV0lXdNnFZ2oKoTnqtDow5p4EWKV1MigIJsoYql91MXtdD4
         PmbOu3TWdcWQ4YJWiUhZ8CQ4p5qEAHM99X0mPzvxlYgocc8E6yRxOzLYjZjmkVycecvX
         B3iMo5gAIfobeUVesHJb4apAkml7r+LqNVC3emzWed3yBXT3CvgTeCpNJcDGs27RwSJM
         Zmczjy64VHqfLcAtsHAtasP2RehtwtFwW334NXrApoaLAk/ivFiIDcMnsIvTNEGStFam
         EJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B2Ro9Szt8wVyHnkt26TY3w5iqOcyH5Hu9kUtAt4Dw/4=;
        b=0sxlgJeoRvxTxJhPeSr+7gr2cXM9Vor9QkrH6oSuSXKTL4xsYuNwwD14kkmV0T5rRf
         nAJ73Mim8k+SsIpSMmQ9zq03TxwhT8G5gdqFRS/BExfrnP945hibsttkEd5VT75Uv5rd
         Dy1wkpG3iXng0MjKawMsaNwgs8Hc/O8PuVO9UPup5k53FbMCHEftJr4eh2LhU1C3adLc
         9yoAcuIB9feFGfM4Lm5WrrvWyhNWfg1tryG7sffR+kHR31imOm/mLCTjtSlJWTdX7xPW
         hAY2IbyAHIVayZkOwHA8yWgEhElMH5qsZPQ+o9G7DCRSGamESqxMX38ayGFF5k9YDP+Y
         ovrQ==
X-Gm-Message-State: AOAM5331Tlklq9qFwaJgSy+FnWtd84DbK2Q99jkdoIzVj/RrC9j3eP+c
	H02mDoCTFH3bKc2r+BsjXOlLKBRomrw4bV/XBEEa7A==
X-Google-Smtp-Source: ABdhPJw9N7DPNXCy7vujDldQpjonhdeVRzBnogLj1ZbvIxP8PSYReYdntSMXVVqjkAgEemsX1TUoKuE8jWAJZW/JvS8=
X-Received: by 2002:a1c:4486:: with SMTP id r128mr27995908wma.69.1632130655662;
 Mon, 20 Sep 2021 02:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
 <12063.1631766857327604520@lists.yoctoproject.org>
In-Reply-To: <12063.1631766857327604520@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 20 Sep 2021 10:37:25 +0100
Message-ID: <CAAnfSTsVLYKV2t-+FNQeeseO7c010rrUcpRXh+wKhrLK9nQL6w@mail.gmail.com>
Subject: Re: [yocto] Sharing sstate cache across build nodes
To: Rusty Howell <rustyhowell@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Sept 2021 at 05:34, Rusty Howell <rustyhowell@gmail.com> wrote:
> Can SSTATE_DIR be shared across build hosts with different OS's  (Ubuntu 18.04, ubuntu 20.04, etc, RHEL)?

If you don't use uninative, then the sstate can be in a single
directory but artifacts won't be shared. If you use uninative then the
native will be shared between the build hosts.

Basically, there's no situation where you can't use a single sstate directory.

Ross
