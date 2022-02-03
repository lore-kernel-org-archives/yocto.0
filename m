Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD604C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 10:16:40 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web12.7352.1643883399174604375
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 02:16:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fhJFlgTM;
 spf=pass (domain: gmail.com, ip: 209.85.222.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id p7so4260981uao.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 02:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HRhPJDdPcLyshGd0CXxg45cKrACMxyEglmtRNssaHz0=;
        b=fhJFlgTMEQDW4KggLDLyVl/UtEYVX9PrFqJ0o8dReBdzHzPcMUY8ncVUqiVOx6xfnG
         jn9Etafj2J0RntQGzoLsrnKZNWVaESjqknwyIGCGSxpVvKAOZZDIt6AhBQS5xicT/oza
         CSfksKMJoWD/HA/mxFEmYMQzPATwOWKF1wBl5X01SXbrQ8X+/VEptsrhLsaHJ8am3Fo8
         8gnxkGU3akW/PUqV98IoLxyoBhMBuFW5XR8lTwK0lx1S/6BMGcpASIq8EYQdE4hgCQ5U
         dTYwdU02zhNZnzf04ELpz26MGBSQinvbqlSkTtunsw5d0PYmj28yI5YBbXhkGH+4xxXP
         SStw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HRhPJDdPcLyshGd0CXxg45cKrACMxyEglmtRNssaHz0=;
        b=tSz5r+8nqqkiArxPjYZcAatdGZzZ8ARnsBsY9GAKP82GPYCjR1jdaLX6HOpSI3AiGj
         7JsbI9OAFaVJ1C/23zRr0WOJDsEMan97LRHaXW3XEGTzd+SKrkWMmEwLiNwe5BPyyMkr
         wBiQoNg1ScQX5Nt2kvet+E2ybUdbgiArq6hJQtNRzVW+IOpgLh/f87oUtRtXsxwoDHSt
         I3li0ZNhEaspfzjFBI15AOTIt7WV07gMTYGa9eVr2cm5afQWAc+4jThA76TP7eSXJqkS
         cun+4KrLLkHcVSDUXBMGbKJGk53xqn0rNUf+OZgAs8NxVxvMVMadehD6+jjNEzS9++SO
         YEPg==
X-Gm-Message-State: AOAM531+VgDCrW4sORswWuY6EDLMNbGh5OOZ4w0B8OrhgSPJgFweq0eL
	Ea7H5kNPVPcaW1WoLObV/g+BDlOZB8R1A5sVRuo=
X-Google-Smtp-Source: 
 ABdhPJwnbOwkgq13unB8ZeP98HaVF8IZL73JbO4s+jSnm+AUM68fEGbt1LpSWLVC7d54gTu+yLrR00eKsh0eoU0CuZg=
X-Received: by 2002:a67:a401:: with SMTP id n1mr12563585vse.38.1643883398301;
 Thu, 03 Feb 2022 02:16:38 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
 <20220127200650.GX26229@denix.org>
 <CANNYZj_mmE-m0eW9SMjmQxr203B8THminnME_Os37dTET_rV-Q@mail.gmail.com>
 <CADfgfob5GLcopY=yCo5DuXTDR4ZUXTYPjErDmtnKt5jq6WJ6xQ@mail.gmail.com>
In-Reply-To: 
 <CADfgfob5GLcopY=yCo5DuXTDR4ZUXTYPjErDmtnKt5jq6WJ6xQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Feb 2022 11:16:26 +0100
Message-ID: 
 <CANNYZj_gGaTWbzJvigwa5iWw=rTb_KyTg_KHpbpLyG5JDNU0jw@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Michael Halstead <mhalstead@linuxfoundation.org>,
	Adrian Freihofer <adrian.freihofer@gmail.com>,
	Adrian Freihofer <adrian.freihofer@siemens.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Denys Dmytriyenko <denis@denix.org>
Content-Type: multipart/alternative; boundary="000000000000020acb05d71a6e47"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 10:16:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56057

--000000000000020acb05d71a6e47
Content-Type: text/plain; charset="UTF-8"

Thanks Michael!
Adrian, the branches are now available:

https://git.yoctoproject.org/meta-lts-mixins

so I'm ready to take any patches you would like to have there, pls send
them via this mailing list. Otherwise I'll get the branches updated to
latest component versions.

Alex

On Thu, 3 Feb 2022 at 00:50, Michael Halstead <mhalstead@linuxfoundation.org>
wrote:

> Thank you for the ping. These branches are ready for you.
>
> On Tue, Feb 1, 2022 at 6:23 AM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> On Thu, 27 Jan 2022 at 21:06, Denys Dmytriyenko <denis@denix.org> wrote:
>>
>>> On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
>>> > A question specifically to Denys, how can I actually get this into the
>>> > mixin repo, and have commit rights to the branch? We've tested this
>>> quite
>>> > well in private, and there are further enhancements coming up.
>>>
>>> Michael,
>>>
>>> Would it be possible to create 2 additional branches in the
>>> meta-lts-mixins
>>> repository at https://git.yoctoproject.org/meta-lts-mixins/ called
>>> "dunfell/go" and also "dunfell/docker" and give Alex push rights to them?
>>>
>>> Please let us know, thanks a lot!
>>>
>>
>> Ping, please :)
>>
>> Alex
>>
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>

--000000000000020acb05d71a6e47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Michael! <br></div><div>Adrian, the branches a=
re now available:</div><div><br></div><div><a href=3D"https://git.yoctoproj=
ect.org/meta-lts-mixins">https://git.yoctoproject.org/meta-lts-mixins</a></=
div><div><br></div><div>so I&#39;m ready to take any patches you would like=
 to have there, pls send them via this mailing list. Otherwise I&#39;ll get=
 the branches updated to latest component versions.</div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 3 Feb 2022 at 00:50, Michael Halstead &lt;<a href=
=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Thank=C2=A0you for the ping. These branches are ready for you.=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Feb 1, 2022 at 6:23 AM Alexander Kanavin &lt;<a href=3D"mailto:alex=
.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
27 Jan 2022 at 21:06, Denys Dmytriyenko &lt;<a href=3D"mailto:denis@denix.o=
rg" target=3D"_blank">denis@denix.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">On Thu, Jan 27, 2022 at 06:07:06PM +01=
00, Alexander Kanavin wrote:<br>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</di=
v><div>Systems Operations Engineer</div></div></div>
</blockquote></div>

--000000000000020acb05d71a6e47--

