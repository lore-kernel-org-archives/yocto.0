Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.6487.1621175688180451088
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 07:34:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=izSyR4+6;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: b.hutchman@gmail.com)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 709C938C04F5
	for <yocto@yoctoproject.org>; Sun, 16 May 2021 14:34:47 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id t21so1807011plo.2
        for <yocto@yoctoproject.org>; Sun, 16 May 2021 07:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bzkq9zJ0JUP62gvmgtZqVaCMWAD3wYePVaP9YxqLMBM=;
        b=izSyR4+6S8JQu1UvEONVBZeJfz3P2egq/L1JabyK9Xgtfo5CbA9IhTxqz6f+ilwDOk
         7TJ9iD3ravLJX+UxjSJ8Lclmuh290hsX6aEgM85OoQeOPin30gHvutfuM66ufOwmuax1
         UAU891lntwK3MmKSBa86wuuMz3zrjeUGewB6NwJGBTE/nolJYs5XueJhyZBDjHGHwpRp
         Co6MOn3Yqoyo3tEvVfaES81ezd0X6PGTTbahiYUxRixe0ZmzEwVnbENK005Uk4TfdNUc
         Wk6fOfbP2NpqDm+EprmbOeAgmPoHzu4rVA6ddeW2SlMWZk7HWEqKSxYjB8rDuT1PUwy7
         hOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bzkq9zJ0JUP62gvmgtZqVaCMWAD3wYePVaP9YxqLMBM=;
        b=E/szBIEg3dVd1QZRB7RX8XRpR3e+qBh0a1Sui+qRMGHQ1KeF6+dL+kV/YuBHEr0Oa6
         +Njd5ZLCOAbIYlCpc8Fq2BpBwejCrcQ2uZ2FF79gjCTuvQnMOQ0ZMn7iWzJ+wgj5HZnB
         fmp/rlBufWXh5EkmB5TkXX6m8xicyNYlsSSfSx/z8eUS2O4gT0CgSOJKus7KM3zo+kje
         6AuWdtALDtfKp6FFUOeTQSzWfRKdG9e3YPen6RaKhauqflU84C6YMKMWlk+h1cVkPnvp
         OBU9u/DzA5GTg4xd4m9akjqwIWnakSNHYBjrFlmyijJSRUSx0RqrCnrqnP+1+xf2It8g
         9Q8w==
X-Gm-Message-State: AOAM532hSqxh/l7afNzbnVfQqv5eck/p42WsUGDqRZxW876wZVaKWMyS
	wuGV6+31KpZpi3Ft261IbCz5uJTTE2ea9+f90i4=
X-Google-Smtp-Source: ABdhPJwK6fRFMklqyaMer+u0GA4DNoDzsKo5Ah+JkyxqHA2PBNi337j6p0KS3zNwxehi98QfWA6e2RPRu/th4gaIn9Y=
X-Received: by 2002:a17:902:e850:b029:f0:baa0:19ea with SMTP id
 t16-20020a170902e850b02900f0baa019eamr7481091plg.47.1621175686857; Sun, 16
 May 2021 07:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
 <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com> <CAFZh4h-8ApWCC1qr_M0biAwe6W0iEON6PBSkV9qpVi59w4823g@mail.gmail.com>
 <799da4c98526a5830bd42e14556ccbfa192e9946.camel@linuxfoundation.org>
In-Reply-To: <799da4c98526a5830bd42e14556ccbfa192e9946.camel@linuxfoundation.org>
From: "Brian Hutchinson" <b.hutchman@gmail.com>
Date: Sun, 16 May 2021 10:34:35 -0400
Message-ID: <CAFZh4h-V2UZVnFvN2X=e5v+eUfcJx-_tf_NitmBB4uT_zKoXhA@mail.gmail.com>
Subject: Re: [yocto] meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ef06dc05c27360e9"

--000000000000ef06dc05c27360e9
Content-Type: text/plain; charset="UTF-8"

On Sun, May 16, 2021, 9:07 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Sat, 2021-05-15 at 22:15 -0400, Brian Hutchinson wrote:
> >
> >
> > On Fri, May 14, 2021 at 12:35 AM Yi Zhao <yi.zhao@windriver.com> wrote:
> > >
> > > On 5/14/21 9:40 AM, Brian Hutchinson wrote:
> > >
> > > > Hi,
> > > >
> > > > Pretty new to selinux.  I've worked through a lot of issues to get
> this far but am stumped at the moment
> > > > so any pointers, clues are appreciated.
> > > >
> > > > I'm trying to add selinux to my custom image.  After running into
> problems, I decided it was best to
> > > > start with building core-image-selinux for my NXP imx8mm-evk board
> as a reference for getting my custom
> > > > image to work.
> > > >
> > > > I'm using fscl-community-bsp meta-freescale Dunfell release which is
> building a 5.4.114 kernel.
> > > >
> > > > My first issues were getting kernel config options right (.config
> attached).  I kept booting my rootfs
> > > > and sestatus would result in selinux not being enabled.
> > > >
> > > > After getting kernel config somewhat worked out, then I started
> getting either boot loops or locked out.
> > > >
> > > > I'll stay focused on my core-image-selinux image as hopefully if I
> can get it working it will help me
> > > > get my custom image working too.
> > > >
> > > > Here is my last iteration of my local.conf that results in me not
> being able to log in.  With core-
> > > > image-selinux image, it freezes before it gets to login prompt.  On
> my custom image, I get log in prompt
> > > > but when I try to log in a root I get audit messages and dropped
> back to login prompt.
> > > >
> > > > local.conf for core-image-selinux:
> > > >
> > > > MACHINE ??= 'imx8mmevk'
> > > >  DISTRO ?= 'poky'
> > > >  PACKAGE_CLASSES ?= 'package_rpm'
> > > >  EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> > > >  DISTRO_FEATURES_remove = " sysvinit"
> > > >  DISTRO_FEATURES_append += " acl xattr pam selinux systemd"
> > > >  VIRTUAL-RUNTIME_init_manager = "systemd"
> > > >  DISTRO_FEATURES_BACKFILL_CONSIDERED = ""
> > > >  PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-mls"
> > >
> > > You can try refpolicy-mcs or refpolicy-targeted. The mls policy
> doesn't work for systemed on dunfell.
> > >
> > > //Yi
> > >
> >
> >  Thank you very much for that!  I made that change to my
> core-image-selinux build and it worked!  When it
> > booted I saw a systemd process take a while to finish, I assume that was
> the relable process.  And when I
> > logged in as root, there is a significant delay before being logged in,
> not sure what is going on there.
> >
> > When I made the same change to my imx8mm-evk core-image-base image with
> selinux added, I saw the same
> > systemd process run but it didn't take quite as long and it made the
> system reboot.  Once it rebooted I did
> > get a login prompt but it won't let me login as root.  So something is
> still miss-configured and still at a
> > loss as to what to look at next.
>
> I know nothing about this but I was surprised you were using busybox login
> utilities with selinux. I'm not sure if that is well tested or not...
>
> Cheers,
>
> Richard
>

Hey Richard,  good to hear from you again (last was ELC-E).

I really didn't change anything except add selinux layer and (attempt) to
follow instructions on meta-selinux README.

I guess we're the blind leading the blind.  This is my first attempt to
incorporate selinux into custom image so be gentle ;).

Regards,

Brian

>
>
>

--000000000000ef06dc05c27360e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, May 16, 2021, 9:07 AM Richard Purdie &lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfounda=
tion.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Sat, 202=
1-05-15 at 22:15 -0400, Brian Hutchinson wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Fri, May 14, 2021 at 12:35 AM Yi Zhao &lt;<a href=3D"mailto:yi.zhao=
@windriver.com" target=3D"_blank" rel=3D"noreferrer">yi.zhao@windriver.com<=
/a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; On 5/14/21 9:40 AM, Brian Hutchinson wrote:<br>
&gt; &gt; =C2=A0<br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Pretty new to selinux.=C2=A0 I&#39;ve worked through a lot o=
f issues to get this far but am stumped at the moment<br>
&gt; &gt; &gt; so any pointers, clues are appreciated.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I&#39;m trying to add selinux to my custom image.=C2=A0 Afte=
r running into problems, I decided it was best to<br>
&gt; &gt; &gt; start with building core-image-selinux for my NXP imx8mm-evk=
 board as a reference for getting my custom<br>
&gt; &gt; &gt; image to work.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I&#39;m using fscl-community-bsp meta-freescale Dunfell rele=
ase which is building a 5.4.114 kernel. <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; My first issues were getting kernel config options right (.c=
onfig attached).=C2=A0 I kept booting my rootfs<br>
&gt; &gt; &gt; and sestatus would result in selinux not being enabled.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; After getting kernel config somewhat worked out, then I star=
ted getting either boot loops or locked out.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I&#39;ll stay focused on my core-image-selinux image as hope=
fully if I can get it working it will help me<br>
&gt; &gt; &gt; get my custom image working too.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Here is my last iteration of my local.conf that results in m=
e not being able to log in.=C2=A0 With core-<br>
&gt; &gt; &gt; image-selinux image, it freezes before it gets to login prom=
pt.=C2=A0 On my custom image, I get log in prompt<br>
&gt; &gt; &gt; but when I try to log in a root I get audit messages and dro=
pped back to login prompt.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; local.conf for core-image-selinux:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; MACHINE ??=3D &#39;imx8mmevk&#39; <br>
&gt; &gt; &gt; =C2=A0DISTRO ?=3D &#39;poky&#39; <br>
&gt; &gt; &gt; =C2=A0PACKAGE_CLASSES ?=3D &#39;package_rpm&#39; <br>
&gt; &gt; &gt; =C2=A0EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot; <br=
>
&gt; &gt; &gt; =C2=A0DISTRO_FEATURES_remove =3D &quot; sysvinit&quot; <br>
&gt; &gt; &gt; =C2=A0DISTRO_FEATURES_append +=3D &quot; acl xattr pam selin=
ux systemd&quot; <br>
&gt; &gt; &gt; =C2=A0VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot; <=
br>
&gt; &gt; &gt; =C2=A0DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot; <=
br>
&gt; &gt; &gt; =C2=A0PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpol=
icy-mls&quot; <br>
&gt; &gt; <br>
&gt; &gt; You can try refpolicy-mcs or refpolicy-targeted. The mls policy d=
oesn&#39;t work for systemed on dunfell.<br>
&gt; &gt; =C2=A0<br>
&gt; &gt; //Yi<br>
&gt; &gt; <br>
&gt; <br>
&gt; =C2=A0Thank you very much for that!=C2=A0 I made that change to my cor=
e-image-selinux build and it worked!=C2=A0 When it<br>
&gt; booted I saw a systemd process take a while to finish, I assume that w=
as the relable process.=C2=A0 And when I<br>
&gt; logged in as root, there is a significant delay before being logged in=
, not sure what is going on there.<br>
&gt; <br>
&gt; When I made the same change to my imx8mm-evk core-image-base image wit=
h selinux added, I saw the same<br>
&gt; systemd process run but it didn&#39;t take quite as long and it made t=
he system reboot.=C2=A0 Once it rebooted I did<br>
&gt; get a login prompt but it won&#39;t let me login as root.=C2=A0 So som=
ething is still miss-configured and still at a<br>
&gt; loss as to what to look at next.<br>
<br>
I know nothing about this but I was surprised you were using busybox=C2=A0l=
ogin=C2=A0<br>
utilities with selinux. I&#39;m not sure if that is well tested or not...<b=
r>
<br>
Cheers,<br>
<br>
Richard<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Hey Richard,=C2=A0 good to hear from you again (last was ELC-E).</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">I really didn&#39;t change =
anything except add selinux layer and (attempt) to follow instructions on m=
eta-selinux README.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I gu=
ess we&#39;re the blind leading the blind.=C2=A0 This is my first attempt t=
o incorporate selinux into custom image so be gentle ;).</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Brian</div><div dir=3D"auto"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
<br>
<br>
</blockquote></div></div></div>

--000000000000ef06dc05c27360e9--
