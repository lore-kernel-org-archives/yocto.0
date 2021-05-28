Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web08.7157.1622202451622652939
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 04:47:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ahsIbeev;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: sayinswapna@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id w7so4866252lji.6
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 04:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nAQChp62y0+KWQ3JvGGwBcLJjwGmUlOE6smrAy1DO+8=;
        b=ahsIbeevxqwMOPZtSnWDe4MJlhXSAeRTAr60BR4ggsXjK/awbv5uj+Do7xs01rOw3e
         HeqbgsoESLa4p7E7e7z9XQZCZK0NAzE2y2Zb/yxr4asnU25GAJ9yBHGAkkbmWquGsuKm
         QRLgI7Gijfr5fyyBrXFCdK7D4TN2cIDMeKN4NJuDicj8crWf+zfKF2FoFe8qPIeiRzKJ
         OPglBRWKjeNe3WwoNoITFouvapX+/RMlzQ6XA5kHUV7DQMLWzt7jZQ3lRvr1kGDh85KI
         WZdbFiADdUaEG2q4MmeyzaxNCh4w1E13satXia/DhC7S5gY5VzOvUWhZZREgBzBFpswb
         SIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nAQChp62y0+KWQ3JvGGwBcLJjwGmUlOE6smrAy1DO+8=;
        b=mbHuF4Qe98vF1iXhRUbfGnWdvPHISTEHjke5b17mrEzHdfnaRmhc7doDwu1W20e0Qu
         YhHQ+fKGmAhptBv9qh0bUm+441buGlb1dlXykf8OfmDewYTRXBHm94xy1YusnZphX33O
         BnKcVYIPGqcHig6OYmSoQsoT9vX/JNAjWLDhAGCAb4d2Jn37bNb8I1cG/kC8L30KVjPq
         7io8QR9XiR5psdjsYB04Tu8M8w5oUMLjqBcrOektbR2eqblfEWwjV1fTtFsk5p2AMcMd
         yV2J1ia1SWD6izGCwEs3ht8AcKbz6AGSpvIPL38qAlVOUSPT1IB5iEdlMbY+xSIHU+Dm
         eWfQ==
X-Gm-Message-State: AOAM532nxPi2kWUynfoZ8Va8699+7pSjsuvRRV6953w5bGH6n5htYpN9
	yGsmCoFJ7tVpdoG0NvcljU6DpIdqdO9P2OYpK+o=
X-Google-Smtp-Source: ABdhPJwlrePk7rKZa4bvIOoc3WkhoYozuc5TqlomA5RImR3pXIDIMXso45g/WxS6kvZhr8MUj/9FwzTZMPvRWGNr6G8=
X-Received: by 2002:a2e:b052:: with SMTP id d18mr6133173ljl.192.1622202449433;
 Fri, 28 May 2021 04:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org> <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com>
In-Reply-To: <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com>
From: sayinswapna@gmail.com
Date: Fri, 28 May 2021 07:47:18 -0400
Message-ID: <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c099c205c362707e"

--000000000000c099c205c362707e
Content-Type: text/plain; charset="UTF-8"

Thanks Robert and Raj!!

I am using Yocto 3.1 Dunfell release.

You are right about the .bbappend file. Changed the name in the overlay to
new-ver.bbappend  and no longer see the warning.

Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf but
looks like generated rootfs has init file pointing to init ->
../lib/systemd/systemd

Priya.

On Thu, May 27, 2021 at 7:28 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/27/21 3:04 PM, sayinswapna@gmail.com wrote:
> > Hello Yocto team:
> >
> > I just started with yocto and would like to know the process for
> > switching the init manager from systemd to sysvinit.
> >
> > I tried this options in config file
> > VIRTUAL-RUNTIME_init_manager = "busybox"
> > PREFERRED_PROVIDER_udev = "sysvinit"
> > PREFERRED_PROVIDER_udev-utils = "sysvinit"
> > DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> > DEFAULT_DISTRO_FEATURES += " sysvinit"
> >
> > I see a warning when building my machine:
> >
> > No recipe for target:
> > /recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
>
> Please find out which layer is adding this bbappend you could use
>
> bitbake-layers show-appends sysvinit
>
> It seems recipe version is newer perhaps and the bbappend is still made
> for older recipe, these things happen when you mix release branches for
> different layers.
>
> >
> > When I run this build on my target it still shows me systemd init
> manager...
> >
> > Not sure if I am missing any options.
> > Could you please let me know if there are any pointers I can refer to?
> >
> > Thanks,
> > Priya
> >
> >
> >
> >
> > 
> >
>

--000000000000c099c205c362707e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Robert and Raj!!<div><br></div><div>I am using Yoct=
o 3.1 Dunfell release.</div><div><br></div><div>You are right about the .bb=
append file. Changed the name in the overlay to new-ver.bbappend=C2=A0 and =
no longer see the warning.=C2=A0</div><div><br></div><div>Tried setting=C2=
=A0 INIT_MANAGER=C2=A0 =3D &quot; sysvinit&quot; in build/conf/local.conf =
but looks like generated rootfs has init file pointing to init -&gt; ../lib=
/systemd/systemd</div><br><div>Priya.</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 27, 2021 at 7:28 PM =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>
<br>
On 5/27/21 3:04 PM, <a href=3D"mailto:sayinswapna@gmail.com" target=3D"_bl=
ank">sayinswapna@gmail.com</a> wrote:<br>
&gt; Hello Yocto team:<br>
&gt; <br>
&gt; I just started with yocto and would like to know the process for <br>
&gt; switching the init manager from systemd to sysvinit.<br>
&gt; <br>
&gt; I tried this options in config file<br>
&gt; VIRTUAL-RUNTIME_init_manager =3D &quot;busybox&quot;<br>
&gt; PREFERRED_PROVIDER_udev =3D &quot;sysvinit&quot;<br>
&gt; PREFERRED_PROVIDER_udev-utils =3D &quot;sysvinit&quot;<br>
&gt; DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;<br>
&gt; DEFAULT_DISTRO_FEATURES +=3D &quot; sysvinit&quot;<br>
&gt; <br>
&gt; I see a warning when building my machine:<br>
&gt; <br>
&gt; No recipe for target:<br>
&gt; /recipes-core/sysvinit/sysvinit_2.88dsf.bbappend<br>
<br>
Please find out which layer is adding this bbappend you could use<br>
<br>
bitbake-layers show-appends sysvinit<br>
<br>
It seems recipe version is newer perhaps and the bbappend is still made <b=
r>
for older recipe, these things happen when you mix release branches for <b=
r>
different layers.<br>
<br>
&gt; <br>
&gt; When I run this build on my target it still shows me systemd init man=
ager...<br>
&gt; <br>
&gt; Not sure if I am missing any options.<br>
&gt; Could you please let me know if there are any pointers I can refer to=
?<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Priya<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--000000000000c099c205c362707e--
