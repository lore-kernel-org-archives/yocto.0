Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE504C35280
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:35 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.3408.1649406153209501603
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:22:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qS1Riu3A;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id p10so13712932lfa.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NEeEww7f9vF8wcpsKzsXhFvJNYDUzjcFovL4ilaQolA=;
        b=qS1Riu3AvwDajxVyYNKH70JMrWfdFXkZwF0UX8tsu3/Rjt1GxgThVNetdyHZUbbhEH
         VYA7dWFOM4fgbzaSaLeseYj9z7QIoDmHSiZpNh3yEdNLTCMVt+dKx7VXyk7cO12gtBvD
         vXBQ3q4IK+Nsgkutr3iJ4jS9M3H27lrRlBTjvZ31+1zTAtotXcTx9eQXlO3pwETTUS3z
         nXvXeiumhUoXwvYkIae/na9SAPthBHBQe8s0SPB1HIv57Y4b5BRxJNzAM9WGKHz3Nv8y
         Y/8FjPi2S+r6vURkS6MNUkMmYRvE98LtgAR3JDzMsv09OSQXYrlieGpluBbP66H+F1g9
         vKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NEeEww7f9vF8wcpsKzsXhFvJNYDUzjcFovL4ilaQolA=;
        b=vvw2wRKfT7njPmmRJ7zZgdHA79sV/nI1WZ2QCP9pVarBZyOjvBKatgY0ZRLPdGRpvX
         63eB/wNpj0ShqNHDR63H9L6AzT4uW9SDNodIh6bdOANoeMnltmj1GrIxCEf9Yo1fl8A0
         vXHYCCHTpK5PQExW8ciX3DbqNWX0taYIB5h1KVf+olj/qEvOWmeJQWwgp5bptp99AmAu
         cwg1xSrdc+0MTx+JxRHoUoO3pqBST42CC5jYAz+yhBTzWBXOaSsH/iOe3f9+Yrxs9lxG
         eha9PDwesBSVvhCm4ehQ0XDsheYrvpRUqV1MoOYNWgPQyOkHn5ixW3gO9FKeR7EOseGD
         C7FQ==
X-Gm-Message-State: AOAM531GPGQM2DVHoMNIe9H6OaVGStGH0sNlJMHnkrvyhpo974yelc2w
	esnPVIB7P7BtsimrK6Y5rMGsHVlsE90xUZPpXuc=
X-Google-Smtp-Source: 
 ABdhPJwICJFGNRCL4d4bW2/GNHTcFetvj1EhVW5dDttrq1fLkbzxL7AN5+HeSaJpmFm0Q3UG/4xsmK3PbFE0CztIfSQ=
X-Received: by 2002:a05:6512:39cb:b0:45d:cb29:3f6a with SMTP id
 k11-20020a05651239cb00b0045dcb293f6amr12026483lfu.26.1649406151344; Fri, 08
 Apr 2022 01:22:31 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Apr 2022 10:22:19 +0200
Message-ID: 
 <CANNYZj_=L37tZ-QZb-LdVxBN3=dLEFUfbuo7Ja-uFwCaa0nnzg@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Ross Burton <ross@burtonini.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56691

Qualcomm is notorious for the poor quality of their layers. Just tell
the management that they created this situation, and they should be
held responsible for delaying whatever product you have to ship.

Alex

On Fri, 8 Apr 2022 at 10:18, Mans Zigher <mans.zigher@gmail.com> wrote:
>
> Hi Ross,
>
> We don't have a ptest set in DISTRO_FEATURE so if that is the only way
> to pull in ptest I would say that is the reason for us at least on why
> there are so many bash dependencies.
> One recipe that I am looking into right now is util-linux which does
> have package util-linux-bash-completion but even the package
> util-linux seems to depend on bash and bash-completion when
> checking the dependencies by running bitbake -g util-linux and bitbake
> -g <image>. It is not clear why the package util-linux depends on bash
> and bash-completion. I have other recipes where it is also
> not obvious to me why they have a dependency to bash and
> bash-completion. One such recipe is a recipe that we have created and
> the only content in the package produced is a script and the script
> only has #!/bin/sh so not sure where this bash and bash-completion
> comes from it is not something we have added so maybe we have some
> underlying issue here that results in so many dependencies to
> bash and bash-completion. We have not set up this system ourselves,
> instead one of the HW suppliers starting with a Q ending with COMM
> which I must say I am not that impressed with has supplied the
> base that we are building on.
>
> Thanks for your help anyway.
>
>
> Den ons 6 apr. 2022 kl 11:11 skrev Ross Burton <ross@burtonini.com>:
> >
> > On Wed, 6 Apr 2022 at 09:59, Mans Zigher <mans.zigher@gmail.com> wrote:
> > > A more specific issue is that there are so many packages with bash
> > > dependencies which are pulling in bash which is GPLv3 so how have you
> > > solved that? Currently we have done some pretty uggly hacks which I am
> > > not that happy with but we needed to keep it out of the image.
> >
> > As you're not naming recipes it is hard to offer concrete advice, but
> > I will note that a large percentage of the bash dependencies in
> > oe-core are specific to the ptest packages. If you don't need those
> > then you can turn off the ptest DISTRO_FEATURE.
> >
> > Ross
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56690): https://lists.yoctoproject.org/g/yocto/message/56690
> Mute This Topic: https://lists.yoctoproject.org/mt/90285507/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

