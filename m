Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E5CC433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 13:26:18 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.9887.1651238766922795584
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 06:26:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=nk0WgIMl;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.174,
 mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f174.google.com with SMTP id j9so5862417qkg.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 06:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=olKzeVpQXAzzVbeR4O8m7YWdrS/kWhJVuABrRJqNBaw=;
        b=nk0WgIMluQjrB3HbbG8cOhXdmiRW4bxUWiYtyOo4JmDJLfebR6lpHeX+jK+k+ng2QC
         3ft0z2HGebqQZs/E5UN8yiaQLBqdsUAmoeHCOlMI/l3FvqwQd0pVSDoEP6BaTZsJ3Hep
         yvtgTbrJtRsFbkjJwXABFwSdWITNUAicR6Biw2hmd2+nfbgUUipbGHxh6nd/fvCZS0dB
         nS7p2Myptqe1Cx2HYWw1t59k9NnAfLF2rWmWUtwT0wtGjGzn6iUzhCwotQ8o4mbIPz09
         kAiMGrQOof4m42dqdrlk872D5YSm4q/ag1IQ+wUinxAaNYMqOpxNLVcLhq+RBFkTtnzg
         zkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=olKzeVpQXAzzVbeR4O8m7YWdrS/kWhJVuABrRJqNBaw=;
        b=S85r3Gq0xCuCP7BsVgImh0cscxfIZifa7zqQkMtOvD0bTO35bbBgNSoSS099X+PdIe
         tpgP0xNriX6wce3wYNOheN1NsM8YTHjJU78a9gLMvedCFN10u7tP1sl+uOCuIkRWf5f8
         4gmfOqn0xBD3wtvEh9bGp2iLR3hV244bpSOHFd9uxlFNnLpFFEUY4WB3bGM2vpv6dDHg
         aXftbTZh89AM3X5ZS4uLD/lgE4T3CGsFBafdtyOtJy5Lf45R0GBmFKFdy0LmB50wtqav
         ZYuNSMzOT1wMbGxbCARQEJ7CTMmdzEdl/dniXtAE7ZrJmEj3oJ9kWYCSiis95UmJoWfL
         8T5g==
X-Gm-Message-State: AOAM53147+eJi+YdYGhb2pKX1wvPx4hBwxlewVfD02CRxQ6SokOvKcpV
	YodavCXV9K26e5JzO78wQua/AU4tm4cXK4Rb5Us23A==
X-Google-Smtp-Source: 
 ABdhPJxLX610/hUMwmu73V1ZN1aysozPxR+rIYzjnPmR0vIUgsBxMlrVMs2EfnyPJqZf2PUWPvk/0UR3fAbuddlHBA4=
X-Received: by 2002:a05:620a:2943:b0:69e:80ba:4a18 with SMTP id
 n3-20020a05620a294300b0069e80ba4a18mr22077907qkp.301.1651238764995; Fri, 29
 Apr 2022 06:26:04 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
 <CAGbd71RtL5SCpSDhj0nD7D5CB8MjBbjTK90tPo4AeUyeikkPYA@mail.gmail.com>
In-Reply-To: 
 <CAGbd71RtL5SCpSDhj0nD7D5CB8MjBbjTK90tPo4AeUyeikkPYA@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 29 Apr 2022 15:25:54 +0200
Message-ID: 
 <CAMjhiJhb0tAUeQsVnuVkFdtALN0VTy-BHCWcVrD=BeuOmeLA0g@mail.gmail.com>
Subject: Re: [yocto] OS-less SDK
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:26:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56960

Hello Alessio,

> On Fri, 29 Apr 2022, 13:52 Alessio Igor Bogani, <alessio.bogani@elettra.eu> wrote:
>> Is there a way to generate an SDK which contains the toolchain for
>> bare-metal systems (i.e. MCU without operating system)?

Good question. I know Xilinx has put effort to support their MCUs with Yocto.

However, define what you mean by SDK? Which libraries or programming
languages are you thinking of beyond the C library for example?

On Fri, Apr 29, 2022 at 1:58 PM Laurent Gauthier
<laurent.gauthier@soccasys.com> wrote:
> Have you had a look at crosstool-ng?
>
crosstool-ng is mostly the toolchain, I would not consider this an SDK
beyond that.

This might help:

https://elinux.org/images/e/e6/ELC-Yocto-Crosstool-ng.pdf

Regards,

Leon.

