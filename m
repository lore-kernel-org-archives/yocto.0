Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3033C4707A
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:35 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.3371.1649405913703214578
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:18:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=m1+E1ruR;
 spf=pass (domain: gmail.com, ip: 209.85.215.172,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id q142so7135659pgq.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6Zgh/I9lOHfleQsZj9QyQXq1cb+fVJ00ZekjAnVtsHI=;
        b=m1+E1ruRy0pwQrWG3OiNZ79JLmhV47vnHjJKKOyi1+gT5jyOmatuvH1koHetNgI2Ji
         uHt2ZVyHKg1EBD4WhIkTDZfv6L5R8v5t+0TcI64b7UflVY1fROaqlAwxidEKLq+Q2Ltc
         4MwVPm7xzkrlJHm8UiyGkoYMTakTqXV9L6P55dmWhjrFLz43RgNZkovul83L0gJMZ1Eh
         aIzVeJdxBVdIZVhBTwOODfiobOg9ItYiD0g/qg8VKm5vuOukIXVwoyL5LHeqxArA1C5G
         QrBw5BNIKL+PncjnBQrzBJYwEYnfsRePjktCsVroy5g7sBYnuWwgAZZsIJWiLpaCzZ4M
         oByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6Zgh/I9lOHfleQsZj9QyQXq1cb+fVJ00ZekjAnVtsHI=;
        b=BoeE1AucsqFc5yFTyo0+oEnqiAJZW2uB0tnJepIL5113w2NmMWs/fogZnWsSm7wscq
         R7IV91Oy8NBxtVcGgDYEzOSsR5hZe4ePjbrnq8kueXHvKAAJGFVlC04YIcT70/QsjY86
         RiQyDoc1OiFNw7CWUcW0cnnbd0YFRgVAhm6AQm5THuXuHwvjYFPVSSqzseyC2+f3cezc
         Y99l8+APLajoEbgcvD3xY25TFzYSj2QcBfeT+DgZKsfHNrb6A9uf2C2hyDg1vLJhKflr
         zOVPOjk7+3NLt+G9q8Dr3cpKQZWGJCGeBy5WdA7VjG12HpDYnid4GGXkGAXzLTPo5l9j
         lpTA==
X-Gm-Message-State: AOAM530FHLDHODRafktnmVGT5TaJBZn8FhOtUYWZ0oEfaPAFQ/EpcjDq
	NfoIxAEmAcbQW1GxnChPHtO9/d06jB1aj9Pf5Yg=
X-Google-Smtp-Source: 
 ABdhPJwttiFdk/LLmsB69tnY1hWZ5xaWQG7NWEjCwcj6E13IlT/vIz4lhaxxHzIkfE/YN/9A8j8bmpEq7k9rV8XtUFA=
X-Received: by 2002:a63:4f46:0:b0:382:56b2:f8 with SMTP id
 p6-20020a634f46000000b0038256b200f8mr14601970pgl.90.1649405913107;
 Fri, 08 Apr 2022 01:18:33 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Fri, 8 Apr 2022 10:18:22 +0200
Message-ID: 
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56690

Hi Ross,

We don't have a ptest set in DISTRO_FEATURE so if that is the only way
to pull in ptest I would say that is the reason for us at least on why
there are so many bash dependencies.
One recipe that I am looking into right now is util-linux which does
have package util-linux-bash-completion but even the package
util-linux seems to depend on bash and bash-completion when
checking the dependencies by running bitbake -g util-linux and bitbake
-g <image>. It is not clear why the package util-linux depends on bash
and bash-completion. I have other recipes where it is also
not obvious to me why they have a dependency to bash and
bash-completion. One such recipe is a recipe that we have created and
the only content in the package produced is a script and the script
only has #!/bin/sh so not sure where this bash and bash-completion
comes from it is not something we have added so maybe we have some
underlying issue here that results in so many dependencies to
bash and bash-completion. We have not set up this system ourselves,
instead one of the HW suppliers starting with a Q ending with COMM
which I must say I am not that impressed with has supplied the
base that we are building on.

Thanks for your help anyway.


Den ons 6 apr. 2022 kl 11:11 skrev Ross Burton <ross@burtonini.com>:
>
> On Wed, 6 Apr 2022 at 09:59, Mans Zigher <mans.zigher@gmail.com> wrote:
> > A more specific issue is that there are so many packages with bash
> > dependencies which are pulling in bash which is GPLv3 so how have you
> > solved that? Currently we have done some pretty uggly hacks which I am
> > not that happy with but we needed to keep it out of the image.
>
> As you're not naming recipes it is hard to offer concrete advice, but
> I will note that a large percentage of the bash dependencies in
> oe-core are specific to the ptest packages. If you don't need those
> then you can turn off the ptest DISTRO_FEATURE.
>
> Ross

