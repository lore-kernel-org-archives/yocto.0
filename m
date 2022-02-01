Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 727E6C433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Feb 2022 14:23:48 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web09.49081.1643725427000749396
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Feb 2022 06:23:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JMl/b9+y;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id b16so13953486uaq.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Feb 2022 06:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fFIMngOK+ZdtQrSIEml8gPGeLEh2Z2EnuO7EDw8p7cE=;
        b=JMl/b9+yigKlDxlwmsw17QTDgCh81hbL9dXoHK71r3zf8tSqLx3dT1apzjQI9D9cEg
         Wu+F3gJjPKcEr1USm99cIhBqoR2Rk/zdbnrpyOXpPvh/FrWYAZX4C0BhXNgBUvGSZv8K
         t80NAR3KejDwwo+9VXnkm/v1VraIZ6EnrCghTuzwo2SF24AZX8tC04XaSFC4hBbk2I9o
         oyC4YZfP+ggLT3IhbkafgTBr2IlN6H5Zt56twvTgUafjIIEhKboXsySxiIyS2KHq9yu8
         sPzo8OUi6bznLZRt5ogQIn0JlQ3mdjkXg33q27LKxM/+Z6r60YhK1hCEJL8I8JPKXTBq
         kvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fFIMngOK+ZdtQrSIEml8gPGeLEh2Z2EnuO7EDw8p7cE=;
        b=2cED+a8oorfxpJ2fFv0qevU+55OTHkRVLRjlqcUp9/H+Hb/+x6ikIFpav09ovbFQf7
         xzHGSycf8xkzd/rMgNecaiq9OKq8QiXM2mp4ddjjJk5UL0zOzAOIQ3B9F+r0sL9t16Ax
         8NGNmj24lrfWyEShKokzYKJ4f7NdzDRPahSGTP9pfHw2upnSdXKukPj8tUAWjdLWaC4H
         x4zXB+G/dFor5EOxb0IChWtny4ypFup5v66E4mBruMJlbMqYpSLbp4+cYclpfPFHOMAa
         M/3cPi+g3C15/X3GTA605UJGcjpPLfVlWfL+SAmNUVENhhnQaL2DhqqeayfO3He+F3M0
         tpTg==
X-Gm-Message-State: AOAM531o3fDI5fspkTMNHM8wC+4s3Cb02V8/GU6IweAK64mG35Ahuip/
	tkShOGcp2d8i5bkft6v87UTShtFn87gzSx+ZkVo=
X-Google-Smtp-Source: 
 ABdhPJzZXxbdT0eaabYNe8NLeCpSPdskMO0oWvmFlvRvMLKUwbYjkufi5lExTaSbDmcac1AW6swRzW8k9X40okUUQfY=
X-Received: by 2002:ab0:604e:: with SMTP id o14mr9866767ual.71.1643725426107;
 Tue, 01 Feb 2022 06:23:46 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
 <20220127200650.GX26229@denix.org>
In-Reply-To: <20220127200650.GX26229@denix.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Feb 2022 15:23:34 +0100
Message-ID: 
 <CANNYZj_mmE-m0eW9SMjmQxr203B8THminnME_Os37dTET_rV-Q@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
 Denys Dmytriyenko <denis@denix.org>
Content-Type: multipart/alternative; boundary="00000000000021a80405d6f5a629"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Feb 2022 14:23:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56041

--00000000000021a80405d6f5a629
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jan 2022 at 21:06, Denys Dmytriyenko <denis@denix.org> wrote:

> On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
> > A question specifically to Denys, how can I actually get this into the
> > mixin repo, and have commit rights to the branch? We've tested this quite
> > well in private, and there are further enhancements coming up.
>
> Michael,
>
> Would it be possible to create 2 additional branches in the
> meta-lts-mixins
> repository at https://git.yoctoproject.org/meta-lts-mixins/ called
> "dunfell/go" and also "dunfell/docker" and give Alex push rights to them?
>
> Please let us know, thanks a lot!
>

Ping, please :)

Alex

--00000000000021a80405d6f5a629
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, 27 Jan 2022 at 21:06, Denys Dmytriyenko &lt;<a href=3D"mailt=
o:denis@denix.org">denis@denix.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Thu, Jan 27, 2022 at 06:07:06PM +0100,=
 Alexander Kanavin wrote:<br>
&gt; A question specifically to Denys, how can I actually get this into the=
<br>
&gt; mixin repo, and have commit rights to the branch? We&#39;ve tested thi=
s quite<br>
&gt; well in private, and there are further enhancements coming up.<br>
<br>
Michael,<br>
<br>
Would it be possible to create 2 additional branches in the meta-lts-mixins=
 <br>
repository at <a href=3D"https://git.yoctoproject.org/meta-lts-mixins/" rel=
=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts-mix=
ins/</a> called <br>
&quot;dunfell/go&quot; and also &quot;dunfell/docker&quot; and give Alex pu=
sh rights to them?<br>
<br>
Please let us know, thanks a lot!<br></blockquote></div><div class=3D"gmail=
_quote"><br></div><div class=3D"gmail_quote">Ping, please :)</div><div clas=
s=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<br></div></div>

--00000000000021a80405d6f5a629--

