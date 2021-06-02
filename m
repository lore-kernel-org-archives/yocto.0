Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.6871.1622596596421761948
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 18:16:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RCkf8pmZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: sayinswapna@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id b18so651153lfv.11
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jun 2021 18:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+3JXSCvwIVsvYwbpQGV/l6K5aavbn2W21VhMeJ6R7f4=;
        b=RCkf8pmZhv9YPtj0v63SHg6h2I3LOJh8XqHCrzmWEHs3uhQquBvOlbCBXM1p6hTHEo
         COrgnqwrmHJ1GZaWjGzluBqHvtNvdss7tlTgytHxGleztasPo+q78t2akrckoaLqLwpL
         yX8E2wGSzeCppdFsYRGrQuPohUnIgBrh6cJDiW1bDii12GCnmriGQa5FkZdKd865OBr+
         XHWRYmmMANiNWOctSerrAfY35W9QwRzmnRrCnS44KFBm8HvOUOhD54Ma9PZ1hh6ytNdU
         88EvRiP7pNmZmRc2bHbqKl4MACEN2XECUNqFdaX3+jrx3bt1dJ8vf2IEDouU1nxMmceH
         bL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+3JXSCvwIVsvYwbpQGV/l6K5aavbn2W21VhMeJ6R7f4=;
        b=SSBufn4j2mrX42SyGpcQHp90cOp/IljoCEOdebrEX8T202/tiGV2yBSf1E3ZGc6185
         xRsXWnYCMpZMPKkfeFg/JtbXPVKbnUnZnt+aDcP79u3aXpTD+orY86jZeL8F9stJehs8
         VsRl/l+tIWkQF8pskuFyGZn7CfsBKrjtgb6WZEW3VTck+CpX3KKMUIYo9Rj5D3kPL7lD
         o9DhcY2yeVMpcAQh+AuWSEQ7J7bTZ3+uPm0cxXd8s/AnL4A3LqMCANwYZvlSLIbLFQRp
         aonp3gX/nbVIqfMgoEVCGn4SkCgz63TdXSiu37j4dXFSVNGwE2Gw2gwrEVPxErtYFpFW
         OlnA==
X-Gm-Message-State: AOAM533miST37yptQFpCsc20wxrd6PXAPLr+f/QLgZXRegCzLB3p45Df
	y+aGl5Y1k2OyoIHd6pvYXvZuD5hRmR8UOCf7Srk=
X-Google-Smtp-Source: ABdhPJyv65DtkvHDebj/1KbFkQXmcv8stbSnpez99Nv6JDinmeX/A2rfs5/LKABQUr0qChCrgFobSR9X4ISyOdI9LEk=
X-Received: by 2002:a05:6512:2305:: with SMTP id o5mr20345447lfu.490.1622596594370;
 Tue, 01 Jun 2021 18:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
 <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
 <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca> <CAGAf8Lwsnn36EbURP_UKi=x6z1N-by+FBvTjOzr1SL3D5eq1kw@mail.gmail.com>
 <CAHUEwNYCxdMWHzyec6TWOGcLWMA=Fyv1g6QErbxcxRj=UHkSmA@mail.gmail.com> <CAGAf8LwoY0hj5PdaVGayG8JjzRzsp1oQUXdW2RXrV8b7=LpQGg@mail.gmail.com>
In-Reply-To: <CAGAf8LwoY0hj5PdaVGayG8JjzRzsp1oQUXdW2RXrV8b7=LpQGg@mail.gmail.com>
From: "Swapna Nannapaneni" <sayinswapna@gmail.com>
Date: Tue, 1 Jun 2021 21:16:22 -0400
Message-ID: <CAHUEwNb7kQ6Eotdej280X0MZXL-bD9+YequuNK2JkTr6F9Mvfg@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009f0a8d05c3be3524"

--0000000000009f0a8d05c3be3524
Content-Type: text/plain; charset="UTF-8"

Example helps. Thanks!!


On Mon, May 31, 2021 at 2:05 AM Zoran <zoran.stojsavljevic@gmail.com> wrote:

> What about the following:
>
> https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection
>
> To be enhanced/added with the following:
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-hardknott/README.md
>
> Best Regards,
> Zee
> _______
>
> On Fri, May 28, 2021 at 3:02 PM Swapna Nannapaneni
> <sayinswapna@gmail.com> wrote:
> >
> > Typo. No leading space  INIT_MANAGER = "sysvinit".
> >
> > Thanks,
> > Priya.
> >
> > On Fri, May 28, 2021 at 8:55 AM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> > you don't want the leading space.
> >>
> >> I got the idea from reading
> >>
> https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection
> >>
> >> But this is exactly why we need some explicit examples. :-)
> >>
> >> Zee
> >> _______
> >>
> >> On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >> >
> >> > On Fri, 28 May 2021, Zoran wrote:
> >> >
> >> > > > Tried setting  INIT_MANAGER  = " sysvinit" in
> build/conf/local.conf
> >> > >
> >> > > Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit"
> (no
> >> > > blank at the beginning)?
> >> > >
> >> > > Thank you,
> >> > > Zee
> >> >
> >> >   you don't want the leading space.
> >> >
> >> > rday
>
> 
>
>

--0000000000009f0a8d05c3be3524
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Example=C2=A0helps. Thanks!!</div><div dir=3D"ltr"><br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, May 31, 2021 at 2:05 AM Zoran &lt;<a href=3D"mailto:zoran.stojsavljevi=
c@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">What about the =
following:<br>
<a href=3D"https://docs.yoctoproject.org/ref-manual/migration-3.0.html?hig=
hlight=3Dinit_manager#init-system-selection" rel=3D"noreferrer" target=3D"_=
blank">https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highligh=
t=3Dinit_manager#init-system-selection</a><br>
<br>
To be enhanced/added with the following:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb=
-releases/bbb-hardknott/README.md" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-h=
ardknott/README.md</a><br>
<br>
Best Regards,<br>
Zee<br>
_______<br>
<br>
On Fri, May 28, 2021 at 3:02 PM Swapna Nannapaneni<br>
&lt;<a href=3D"mailto:sayinswapna@gmail.com" target=3D"_blank">sayinswapna=
@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Typo. No leading space=C2=A0 INIT_MANAGER =3D &quot;sysvinit&quot;.<b=
r>
&gt;<br>
&gt; Thanks,<br>
&gt; Priya.<br>
&gt;<br>
&gt; On Fri, May 28, 2021 at 8:55 AM Zoran Stojsavljevic &lt;<a href=3D"ma=
ilto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; you don&#39;t want the leading space.<br>
&gt;&gt;<br>
&gt;&gt; I got the idea from reading<br>
&gt;&gt; <a href=3D"https://docs.yoctoproject.org/ref-manual/migration-3.0=
.html?highlight=3Dinit_manager#init-system-selection" rel=3D"noreferrer" ta=
rget=3D"_blank">https://docs.yoctoproject.org/ref-manual/migration-3.0.html=
?highlight=3Dinit_manager#init-system-selection</a><br>
&gt;&gt;<br>
&gt;&gt; But this is exactly why we need some explicit examples. :-)<br>
&gt;&gt;<br>
&gt;&gt; Zee<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day &lt;<a href=3D"m=
ailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt=
; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Fri, 28 May 2021, Zoran wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Tried setting=C2=A0 INIT_MANAGER=C2=A0 =3D &quot; =
sysvinit&quot; in build/conf/local.conf<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Is it INIT_MANAGER=C2=A0 =3D &quot; sysvinit&quot; , or=
 INIT_MANAGER=C2=A0 =3D &quot;sysvinit&quot; (no<br>
&gt;&gt; &gt; &gt; blank at the beginning)?<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Thank you,<br>
&gt;&gt; &gt; &gt; Zee<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0you don&#39;t want the leading space.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; rday<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000009f0a8d05c3be3524--
