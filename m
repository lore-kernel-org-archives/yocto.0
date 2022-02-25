Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 164FDC433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 19:58:20 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web09.1872.1645819098747298911
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 11:58:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=e0e8eSEk;
 spf=pass (domain: gmail.com, ip: 209.85.221.47,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id j17so6124844wrc.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 11:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ii0qzAPqPYJE8XRZgxNs4X7w3KP17i9hJ6CvqQx92Mg=;
        b=e0e8eSEkG1Qo4DxViGaZXj4+F2NHx+ziW5vAaHlIzBZ9TG7B2lExibVxU3Al03S8DV
         YIvIRrkBZyI0Hl/ki8WS/yzjBowY0sBmmqpeAar7wPya0Y3uxUAdxKXU4Ve+MIVM7ytE
         Ls7LPUJs7JCDYOHiGE4u5xlCoB/AvHOY/WoYSHGCC69r0JGf58moKU6yz3GJvrJBhUa1
         M5Go6vORJXfnRBizFTiKBQISUjgDJUdqShGkZmdZvC99Q/sWSnels4Db3vN8JjZIibEe
         aLLFKFO8mgmhWVKMvWPSEMIonl2iwxx9uLTdjgPe9yuTDw3+yE/V8hQSPYhKnn2xwDFI
         +nFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ii0qzAPqPYJE8XRZgxNs4X7w3KP17i9hJ6CvqQx92Mg=;
        b=NzMY5kk7GAsooCirYSv5EvQFlsdMKze60gAqpDJL+duEBUaoSdDLdILOS1SXk0Ms+H
         joMh/U+R7/HCmMDGfWzBft10hth3PwHorKNrGgPGMSyB0wtRMMwNcI8FHxXk2iMXzLPH
         Ms4aA/KZjebjbapkp7SqwRUz5ycnWoPkTPiWGfkPaJbM3ggbU4GgMTwNfK+cUI7eamTM
         JHzR/lh+IAweBSp1bwkZLHEeJKZqas8mslYt1SmlwPe9S/WyYJnkUEyrkE1SYBqXZV1I
         mP0wTHFwPdcYTQnPguCkEyvufIhkzz1jb6Vt3egFiF53RtUfcMrsY65Et8njF92TQpiS
         Wbuw==
X-Gm-Message-State: AOAM530Igy1Z5OhRvht3LNi2XIAmvOxhUnrJHOMNTkQUcnD0tsPrsxlC
	i3QsuuXXUcSeYd/eJ3lXF0UIU4sikAgfi1FrhrM=
X-Google-Smtp-Source: 
 ABdhPJz9b2skCsC1yFcs+N6rtiVSphuHwZdO6+wQ00IInC2DoupcCY0qO/WCeic+xBTaE3QT1pIDfhqQfwo9cxVWn4s=
X-Received: by 2002:a5d:4ed1:0:b0:1e8:db90:36d1 with SMTP id
 s17-20020a5d4ed1000000b001e8db9036d1mr7111524wrv.94.1645819097081; Fri, 25
 Feb 2022 11:58:17 -0800 (PST)
MIME-Version: 1.0
References: 
 <6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
In-Reply-To: 
 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Fri, 25 Feb 2022 13:58:06 -0600
Message-ID: 
 <CAJdd5GbCXeZFURAAs+vn7Z5KqJdiDPXR42aR8PJPcJ-zfEW9AQ@mail.gmail.com>
Subject: Re: QA change - reduced number of reproducibility builds tests?
To: Steve Sakoman <steve@sakoman.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, "Mittal,
 Anuj" <anuj.mittal@intel.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 19:58:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56286

On Fri, Feb 25, 2022 at 12:50 PM Steve Sakoman <steve@sakoman.com> wrote:
>
> On Fri, Feb 25, 2022 at 8:09 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > Hi All,
> >
> > As the project develops, some tests are valuable and some become less valuable
> > over time.
> >
> > When we first started reproducible builds work, testing reproducibility heavily
> > across multiple distros highlighted some unusual bugs and let us improve things.
> > We therefore currently run a-full with the targets:
> >
> > reproducibile-centos
> > reproducibile-debian
> > reproducibile-fedora
> > reproducibile-ubuntu
> >
> > I've noticed we pretty much always see the same set of failures with these
> > targets now, i.e. if one fails, they all fail the same way.
> >
> > Those targets are heavy builds which don't reuse sstate for one of the build
> > streams and hence load the autobuilder heavily.
> >
> > I'm thinking they've served their purpose and that a-full should go back to just
> > the randomly selected reproduiclbe target.
> >
> > Does anyone feel we shouldn't do that?
>
> I support this.  It has been quite some time since dunfell encountered
> a distro specific reproducibility issue.

I agree. I assume the change is simple enough to make that we can
bring them back easily if we think it might be helpful is some
scenario?

Also, just to clarify, those workers will still contribute to the
initial sstate, so they will still help find cross-host reproducible
problems, they just might not find it themselves?

>
> Steve

