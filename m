Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
 by mx.groups.io with SMTP id smtpd.web11.194293.1598274188498518623
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 06:03:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a267xkyd;
 spf=pass (domain: gmail.com, ip: 209.85.218.68, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f68.google.com with SMTP id oz20so6840486ejb.5
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 06:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V7Wgp5a4T2nZxvPLqwxrhLork6p4ZIVvEkr7V6onKZs=;
        b=a267xkyd110Gw5P4pLVEf1JOkGRugekAkPL9y4bhLBX2CEuL82tKQjhf196bMGcCXI
         PutZgtJdAK9pclX8pQeU5U6wqCYN4ltSq0ao2K7P6pm9OLnL+pmo90F+6X0KLbB1wubj
         fwe6BlqXMTY2pg+jTUwWVTpwNip24ruu9ViL4IHY+louwuZIvGh+w32CwpQ7bJbgeSE9
         OCYy2X/lDMi74wMAZPpKgLF3U3oHq53r/0ikN0ic9x6ivsftPkXWZmBLh9wYDzENs5RI
         tdN0qgFNrIVaOI0mkIN4DWgs1avpWmbYR/ffmhUEH3+f37iKNjOJVRNnKJdJYqy6vXP+
         wvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V7Wgp5a4T2nZxvPLqwxrhLork6p4ZIVvEkr7V6onKZs=;
        b=FvFNx70rByYQcsGZ9EiZeiwdJ24XhmUqQq2Vkr7rccfhz0l9I7QOYdbJDzUd/Nt1Fv
         Fi1xMTDUkjx1x2B1bv2+2twptI+9BHuYDl1vqyx2K5NCXulOpf6zb3y8szityRdDfqCc
         /oM1b89cYW4MS30/7to1cDtfCDQUESl+2QMeI8gbOBrJTLaqsbi++NS37a9z/mrJm/gI
         FlaKrZKIF5ZWPPx5Rc7ociY8tFhxNeegTooKrN0GchM2gDCK8lb6AP57HA0rKeDGYC60
         hWNIIctPPAH846QnlS/bzIMLElhsskb/6SsemtZCnZYeqNdDgtj6WHpkgvq7/iF9zLnk
         cdhA==
X-Gm-Message-State: AOAM5338LVP228XaJuCI3+OaaTO9GBsIUD0icPz9imXel6p9yrKSncST
	sF5mN4BtWzv0Rb/4KbH3o64X96frsLyxhGRFoEc=
X-Google-Smtp-Source: ABdhPJz2DsYTif3+/FRC3iQBHLoZJJvQ+nbUZybJIVdCm0ubOiPF/ge+IzDWoX3Gb0flnUSkFN3lf8OPPFor6YYt/8E=
X-Received: by 2002:a17:907:205c:: with SMTP id pg28mr5235348ejb.22.1598274186855;
 Mon, 24 Aug 2020 06:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1598036643.git.bruce.ashfield@gmail.com> <7c55666a460654d83b53caba996e787981d9f4ff.camel@intel.com>
In-Reply-To: <7c55666a460654d83b53caba996e787981d9f4ff.camel@intel.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 24 Aug 2020 09:02:55 -0400
Message-ID: <CADkTA4PMZL9BubYWJQ0-LxEy+DkLQSfJ9ZADpzrvZCkhojZdWw@mail.gmail.com>
Subject: Re: [yocto] [PATCH 0/3] yocto-bsp/poky: kernel updates and default
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000029470705ad9f35e3"

--00000000000029470705ad9f35e3
Content-Type: text/plain; charset="UTF-8"

On Sun, Aug 23, 2020 at 11:23 PM Mittal, Anuj <anuj.mittal@intel.com> wrote:

> Hi Bruce,
>
> On Fri, 2020-08-21 at 15:07 -0400, Bruce Ashfield wrote:
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> >
> > Richard,
> >
> > Similar to oe-core, these are the patches I'm carrying to update the
> > reference BSPs to the latest 5.4 (we still need a 5.8 bbappend and
> > confirmed booting), as well as a switch to 5.8 as the default.
> >
> > That being said, I'm not sure of the way you'd like the default
> > kernel
> > set to differentiate between the reference BSPs and qemu. So
> > currently,
> > I just have the single preferred version set.
> >
>
> Should we also update PREFERRED_VERSION for linux-yocto-tiny for poky-
> tiny DISTRO? It is currently pointing to 5.0 ...
>
>
Yup.

I take it that no one has been building that lately, since 5.0 zero has
been gone for a while.

I'll take the action to check that out and make the changes. I'll do it
along with some -rt preferred versions.

Bruce



> Thanks,
>
> Anuj
>
>
> > Cheers,
> >
> > Bruce
> >
> > The following changes since commit
> > c9d0bb421a2f7c6783f2c2bbf47c95da5537985d:
> >
> >   linux-yocto/5.8: update to v5.8.2 (2020-08-21 14:55:05 -0400)
> >
> > are available in the Git repository at:
> >
> >   git://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
> >
> >
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> >
> > Bruce Ashfield (3):
> >   poky: set preferred version for linux-yocto to be v5.8
> >   yocto-bsp: update to v5.4.56
> >   yocto-bsp: update to v5.4.58
> >
> >  meta-poky/conf/distro/poky.conf                  |  2 +-
> >  .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++----
> > ----
> >  2 files changed, 9 insertions(+), 9 deletions(-)
> >
> > 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--00000000000029470705ad9f35e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sun, Aug 23, 2020 at 11:23 PM Mittal, Anuj &lt;<=
a href=3D"mailto:anuj.mittal@intel.com">anuj.mittal@intel.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Bruce,<br>
<br>
On Fri, 2020-08-21 at 15:07 -0400, Bruce Ashfield wrote:<br>
&gt; From: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com" =
target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Richard,<br>
&gt; <br>
&gt; Similar to oe-core, these are the patches I&#39;m carrying to update =
the<br>
&gt; reference BSPs to the latest 5.4 (we still need a 5.8 bbappend and<br=
>
&gt; confirmed booting), as well as a switch to 5.8 as the default.<br>
&gt; <br>
&gt; That being said, I&#39;m not sure of the way you&#39;d like the defau=
lt<br>
&gt; kernel<br>
&gt; set to differentiate between the reference BSPs and qemu. So<br>
&gt; currently,<br>
&gt; I just have the single preferred version set.<br>
&gt; <br>
<br>
Should we also update PREFERRED_VERSION for linux-yocto-tiny for poky-<br>
tiny DISTRO? It is currently pointing to 5.0 ...<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D=
"font-size:small">Yup.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I =
take it that no one has been building that lately, since 5.0 zero has been =
gone for a while.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I&#39;l=
l take the action to check that out and make the changes. I&#39;ll do it al=
ong with some -rt preferred versions.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
Thanks,<br>
<br>
Anuj<br>
<br>
<br>
&gt; Cheers,<br>
&gt; <br>
&gt; Bruce<br>
&gt; <br>
&gt; The following changes since commit<br>
&gt; c9d0bb421a2f7c6783f2c2bbf47c95da5537985d:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0linux-yocto/5.8: update to v5.8.2 (2020-08-21 14:55:05 -0=
400)<br>
&gt; <br>
&gt; are available in the Git repository at:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0git://<a href=3D"http://git.yoctoproject.org/poky-contrib=
" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/poky-contrib</a=
> zedd/kernel-yocto<br>
&gt;=C2=A0 =C2=A0<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=
=3Dzedd/kernel-yocto" rel=3D"noreferrer" target=3D"_blank">http://git.yoct=
oproject.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel-yocto</a><br>
&gt; <br>
&gt; Bruce Ashfield (3):<br>
&gt;=C2=A0 =C2=A0poky: set preferred version for linux-yocto to be v5.8<br=
>
&gt;=C2=A0 =C2=A0yocto-bsp: update to v5.4.56<br>
&gt;=C2=A0 =C2=A0yocto-bsp: update to v5.4.58<br>
&gt; <br>
&gt;=C2=A0 meta-poky/conf/distro/poky.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 .../linux/linux-yocto_5.4.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 16 ++++++++----<br>
&gt; ----<br>
&gt;=C2=A0 2 files changed, 9 insertions(+), 9 deletions(-)<br>
&gt; <br>
&gt; <br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for c=
haos and madness await thee at its end<br>- &quot;Use the force Harry&quot;=
 - Gandalf, Star Trek II<br><br></div></div>

--00000000000029470705ad9f35e3--
