Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web09.536.1613519671277044525
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 15:54:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVmBKJi4;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id d3so8364142qtr.10
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 15:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4UksVs57jyjBlRvOokgKNiBbqlniSif6z2ThoNSkqNc=;
        b=tVmBKJi4ziWGXdlcRQRs3EDx6R5CKGAFtBF1X6RMTGyKFKbBKY6wpRA4Ah/T3Q1Vbs
         +93tmUn8asaHXZudX+Xnhg8iNt/ZT28Zoc1tnMSSQlCC+15a2v0xrVdlAVrCdX93UNWB
         uHirksKS3VRWFr7JCpOhpM/25v0LMTSHYvPAdrctqmVczPjQ2wq/l6L2SbKJDbsbu85N
         td0BAkkkeT1MQbIZ12s8MC0n9irRaEjVPBtDTPzb+m9TJVy1KvAOlhaYalhc1/9+eOS+
         NHbXGycjinBotTjLyLZOd0uj+hUN1QZpJ61MbFJGsvPYaqDWmR6ajHN2LGreqJpVz5Ln
         h54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4UksVs57jyjBlRvOokgKNiBbqlniSif6z2ThoNSkqNc=;
        b=AGmgni4zem092GLk0Sf12vBrpAi8K+3u9Q3f3e+nVJkUiDTbharzUj6uzAyjhBfeKv
         lgfSUPx3obe3C5x6DAYz20D1NmwjUtt/un+6wr1d699Zn8jnEG99HWFHI/qblXWmhZgI
         UafFqUCy5A/qibyFU5dYGt3M8liXtlq8ObGXXbsl8LNF9WycbuCKlkykdWZd+4tYX8e1
         VIZiE2Or9Dto27IIduHBtzG7IdFHaQCGLU2Y5ey/fryD2bpAX8j5BZRy9D463WhPfRy0
         pRFmwT0fL9Mt/iMPg2+TxagswVwfsEUs7ReXDbGpTw61Ey0Eu/PwqhkbTh8ag8C6PBkv
         kpfw==
X-Gm-Message-State: AOAM530yIhU3zQSJPdqQnzlErEku5rwi/waeNt/lVwGew8dmPlwSpcgm
	PPT1x8NlBq8NIcYZbT9jH6iMYZPGOxlgXP6bWb8=
X-Google-Smtp-Source: ABdhPJyy3Z/OpyYshiYV0VLXVqTGJdqS92/OxRHx7tnMlIjiZzJdMX4SEIc2NkL6onpfYB4PiJSOCoHga4OqgrU+3Ag=
X-Received: by 2002:ac8:1c8a:: with SMTP id f10mr20896395qtl.4.1613519670481;
 Tue, 16 Feb 2021 15:54:30 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
 <CAMKF1spDGqiU=L7s7o9NGtq-9b=1Ad_v4_+V3B7qSkdJFQo32A@mail.gmail.com>
In-Reply-To: <CAMKF1spDGqiU=L7s7o9NGtq-9b=1Ad_v4_+V3B7qSkdJFQo32A@mail.gmail.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Wed, 17 Feb 2021 00:54:20 +0100
Message-ID: <CAEyb4nEd8VVqSPvUtQWB5vnm8jSGPhiDA3=sROrb5miE_fx6vg@mail.gmail.com>
Subject: Re: [yocto] Keep .bbappend for older Yocto version
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000cc178b05bb7cd21f"

--000000000000cc178b05bb7cd21f
Content-Type: text/plain; charset="UTF-8"

Thank you for the answer :-). Yes, that works, and it seems like it is
commonly used already. But because there is a way to define which versions
are supported in the machine configuration, I thought there may be a way
without branches, i.e. having a layer that actually is compatible with
multiple versions.

Otherwise what's the point of LAYERSERIES_COMPAT, if the way to move to
another version is to branch away? Is that a legacy option?

Best,

On Wed, 17 Feb 2021, 00:32 Khem Raj, <raj.khem@gmail.com> wrote:

> perhaps you should create a new branch for this layer which will be
> compatible with gatesgarth, you can seed it with dunfell branch
> and then make needed changes
>
> On Tue, Feb 16, 2021 at 3:02 PM Jonas Vautherin
> <jonas.vautherin@gmail.com> wrote:
> >
> > Good evening,
> >
> > I am using Yocto Gatesgarth, and I was just updating a layer that was
> written for Dunfell. In the `conf/layer.conf`, I can simply add
> "gatesgarth" to `LAYERSERIES_COMPAT_pocketbeagle`, like so:
> >
> > ```
> > LAYERSERIES_COMPAT_pocketbeagle = "dunfell gatesgarth"
> > ```
> >
> > However, this does not seem to work for a `.bbappend`. Let me use this
> particular layer as an example: it is a BSP that defines
> `linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define
> `linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell, I
> would like it to use the former, and when building with Gatesgarth, I would
> like it to use the latter.
> >
> > However, if I keep both `linux-yocto_4.19.bbappend` and
> `linux-yocto_5.4.bbappend` and try to build with Gatesgarth, it fails with:
> >
> > ```
> > ERROR: No recipes in default available for:
> >   /path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend
> > ```
> >
> > Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.
> >
> > Is there a way to keep both `*.bbappend` and have Yocto ignore the ones
> that do not correspond to its version? Or would that be bad practice anyway?
> >
> > Best Regards,
> > Jonas
> >
> > 
> >
>

--000000000000cc178b05bb7cd21f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thank you for the answer :-). Yes, that works, and i=
t seems like it is commonly used already. But because there is a way to def=
ine which versions are supported in the machine configuration, I thought th=
ere may be a way without branches, i.e. having a layer that actually is com=
patible with multiple versions.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Otherwise what&#39;s the point of LAYERSERIES_COMPAT, if the way=
 to move to another version is to branch away? Is that a legacy option?</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Best,<br><br><div class=3D"=
gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 17 =
Feb 2021, 00:32 Khem Raj, &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khe=
m@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">perhaps=
 you should create a new branch for this layer which will be<br>
compatible with gatesgarth, you can seed it with dunfell branch<br>
and then make needed changes<br>
<br>
On Tue, Feb 16, 2021 at 3:02 PM Jonas Vautherin<br>
&lt;<a href=3D"mailto:jonas.vautherin@gmail.com" target=3D"_blank" rel=3D"=
noreferrer">jonas.vautherin@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Good evening,<br>
&gt;<br>
&gt; I am using Yocto Gatesgarth, and I was just updating a layer that was=
 written for Dunfell. In the `conf/layer.conf`, I can simply add &quot;gate=
sgarth&quot; to `LAYERSERIES_COMPAT_pocketbeagle`, like so:<br>
&gt;<br>
&gt; ```<br>
&gt; LAYERSERIES_COMPAT_pocketbeagle =3D &quot;dunfell gatesgarth&quot;<br=
>
&gt; ```<br>
&gt;<br>
&gt; However, this does not seem to work for a `.bbappend`. Let me use thi=
s particular layer as an example: it is a BSP that defines `linux-yocto_4.1=
9.bbappend` for Dunfell. In my case, I want to define `linux-yocto_5.4.bbap=
pend` for Gatesgarth. When building with Dunfell, I would like it to use th=
e former, and when building with Gatesgarth, I would like it to use the lat=
ter.<br>
&gt;<br>
&gt; However, if I keep both `linux-yocto_4.19.bbappend` and `linux-yocto_=
5.4.bbappend` and try to build with Gatesgarth, it fails with:<br>
&gt;<br>
&gt; ```<br>
&gt; ERROR: No recipes in default available for:<br>
&gt;=C2=A0 =C2=A0/path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend<b=
r>
&gt; ```<br>
&gt;<br>
&gt; Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.<br=
>
&gt;<br>
&gt; Is there a way to keep both `*.bbappend` and have Yocto ignore the on=
es that do not correspond to its version? Or would that be bad practice any=
way?<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Jonas<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div></div>

--000000000000cc178b05bb7cd21f--
