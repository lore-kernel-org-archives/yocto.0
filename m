Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97163C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 09:34:32 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.6963.1743759262665421180
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 02:34:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NnKjWD68;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e8f254b875so18526246d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 02:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743759262; x=1744364062; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8yqyqDDuiNnvdxzMKMdxm0BzKsBH+IYMLKUJqeP7fn0=;
        b=NnKjWD68P9UnNNbGoeOzOPnyUYOy8kj9GDeX/UkkZ0qRXVNgRuxD0zHnCfrUeypfbi
         f4swOnj1UetfISA8/m7XCS4+6uKB921UclogzUz5wSPgqWoJN4Ok0YEh5xBWw/9ZTUSM
         Ry35m1P4A+pydarboSgran5cQp+uhvhTNR43o6J6HyIXVURRkROpyH3cqMzHye4Ytecq
         syEZE4GwEMpANU0tea5wygjBpf+mqyvlR5XcwW15AadFBX8YxvmyUm8RAWqXo5mKrswA
         Uw03/b9IGwf3ZaW67b1EtW9JBt/90bKGSMP6NND8fJTuKmS2lin3wFkfYvF/ETt2BdlP
         326A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743759262; x=1744364062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8yqyqDDuiNnvdxzMKMdxm0BzKsBH+IYMLKUJqeP7fn0=;
        b=f/fGkMePh+bwPZj7KNIXO32NAkANiRSh7LojljMiu3i0TYuR2dPkljSNe3260vr9N0
         af6+Hfp7anhcyOwvZenv4mmPNZYJAsIR17D8Q7PnlZoBGwmiAaoDjz6uDQKiAIlFT4Qf
         hiMDVi5hY7xLEMKGzooAW40BAhY669p6XsVVqsBUIHJzYKfUVeZUhbaza5H53KyA0p0x
         vE9nFn4D6R7VPLqJkHQsVP31uD+jHFM6OrWXCCTfvnlOoOCbaI5EMqlQNOOdFvQHVDoN
         +JqkBkHzmnf6wnHD1tfOadEoceV5rbfqw5BvvhdQ3AZhC1t5u2+ZnJ08MMD/bX5OHoNK
         XyGg==
X-Gm-Message-State: AOJu0Yy90rymlYQRTS2zo2s+hqcLOXaqc4Z+7vpJZcX6WKM04Dc5vScm
	AoXKOxWQuvk0M1iPOeEm4RcG5jxofnunQS6VMTROPxyMQlC8cWJW2xfN55lXLOdmEXqnZ3yYuxX
	HsOLanMI6qOyvoC30jGNf47a3vWriKA==
X-Gm-Gg: ASbGncsSfxyHrnJYeWr62ePbM/+2MF6oTxWmjFYPngvksZJsT7eo38vGTAtKb+CPLr6
	C4TOSzb2gJlFi8gz1htXmuZ1JzICEjVYu6f+HBTQMG2tUH/I7CZhWkCi9I6kV9gGktxH6BBaxGZ
	y2wS3pWuo1+qQCHcL0Y39u/ZtnYEPN4nfvvjvCPRnH2PBeHqV4rrxczqDoKA9C
X-Google-Smtp-Source: AGHT+IEIKvnaztz2+HzDT4jia00yGKegdF3eYdmzgy2QZzSO/zfzyQ9b5HsQrrL33HH0obDi2e+kl2bK5ZeNE4QK4sQ=
X-Received: by 2002:a05:6214:48e:b0:6e4:2c6e:7cdc with SMTP id
 6a1803df08f44-6f00df30191mr46565406d6.25.1743759261655; Fri, 04 Apr 2025
 02:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org> <CAMKF1spQG3rx134HBik6B7LbgeRWsm7KO-bFp805CvaX=X-3-g@mail.gmail.com>
In-Reply-To: <CAMKF1spQG3rx134HBik6B7LbgeRWsm7KO-bFp805CvaX=X-3-g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Apr 2025 11:34:10 +0200
X-Gm-Features: ATxdqUFuP5nAeBXMttXj-GkKRLPQr0ACwaO-4tdIqFtKcPfjNyrFOO_On7JlgmA
Message-ID: <CANNYZj8p2Yq9zK2S0aFQBP54GL0tstkmwDWZqLQ-Rfs0oQpViw@mail.gmail.com>
Subject: Re: [yocto] Yocto on AMD Zen target ?
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Cc: jguittet.opensource@witekio.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 09:34:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65102

On Fri, 4 Apr 2025 at 11:17, Khem Raj via lists.yoctoproject.org
<raj.khem=gmail.com@lists.yoctoproject.org> wrote:
> > A customer ask us if it is possible to build a Yocto distro for an AMD EPYC 7502P CPU.
> > Seems to be a Ryzen Zen architecture according to Wikipedia.
> >
> > Has Yocto any support for this kind of targets ? I don't find any relevant information.
> > Is it just supposed to work with the "genericx86-64.conf" machine provided in poky ?
>
> Generally yes, if you want specific machine maybe use meta-amd see
> https://web.git.yoctoproject.org/meta-amd/tree/meta-amd-bsp/conf/machine
> I think milan is the one that you will use for this machine.

Also, generix86-64 isn't tested on any actual x86 hardware, and lacks
many important tweaks that make a useful image. If meta-amd doesn't
work, there's also meta-intel. X86 builds are broadly compatible
between them.

Alex

