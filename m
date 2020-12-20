Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.24350.1608473411914637309
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Dec 2020 06:10:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmC5hWtD;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id b64so6637420qkc.12
        for <yocto@lists.yoctoproject.org>; Sun, 20 Dec 2020 06:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aqXnfJuoxVA3/l7g/xDBl9xzrlDjsKTwqX0ZR6bbl7U=;
        b=VmC5hWtDhpyFw1jgCSJiBqwV1cGgegIqo0vVK8NcV82nXgNpBhoz3uSbXLAAaIqH4A
         fALyeZeabGCPe0MopSt7fKSTeh9PTvTCVpQzRNOhKhNwDIh/vqudOUx7pBlHyIA/5kvr
         DUaWJA1dEoZ6lkmskTtzqMVFcK2c4L6ldRs1uRfxWe8kM447Krf17jw6wo91s8EJAgGH
         xwbN1ICeA2ckdrunyjaS6iujwWqZnc1IOIfA56wCkpP0Y+iya2uP7w2FoxGMj799jm4w
         pK/ZluLQYhQ3tCbqj53GSaX1cQN/QFmEWu9kxqoBPAD577b78atekY4oo1TLXmw61tw9
         5Rag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aqXnfJuoxVA3/l7g/xDBl9xzrlDjsKTwqX0ZR6bbl7U=;
        b=r5VXIVxWHPROyYP916shE+fmzV6iENHMUBHHQB/eVpk1dww21wTTbsKIObxhBEmj+l
         nz0uAeWmQGoond6zY7aVvS7EODFfQFQsRxHE03J/IPhDPCVxAvonky4dNP6yZA+jEA97
         eU80nJFVZrfcR9qIClILvk3Ec+qFd3NOXrN/G2UlnW+uAsil87xz3mQYvc4ShXQfIVMh
         7NKYa3/KXay2jKKtKlb4W38j5NhNdUux+vsnQ+cBKu+PbK9PIMLkPeRXd940nGcqB/GR
         Hh780r577sX/TTP3+cIkKLpFN05XhZ5IZjFTz6NIhDYvKhpti63ue1X/ZH04OPk8JLFZ
         QVUg==
X-Gm-Message-State: AOAM532fPIUVwrKoIha5Dwdy6yiysYVOg/KlUI17k7Qgu06bpWtude8h
	LHqH8R3MMBYpdHQC2dJyJdGNjHaGGb7wjZCC9S8=
X-Google-Smtp-Source: ABdhPJwrtwX4E+800i8PkN+3359Oz7NIXUrbh1R/w9ZFN9/K6OZTVPLkXwv922tyW0V+QU10SKzWvyc04mWsZTzaZnc=
X-Received: by 2002:a05:620a:11ab:: with SMTP id c11mr13405946qkk.282.1608473411131;
 Sun, 20 Dec 2020 06:10:11 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nEw6=TZ62bnBbBUGfN+qT4w1W8rNpOy6ADQbwTu81bAQw@mail.gmail.com>
 <CAM9ZRVt8u5_kt49hhw7Sr1u63ifVM117xiMoR4c=bDo89Le7ug@mail.gmail.com>
In-Reply-To: <CAM9ZRVt8u5_kt49hhw7Sr1u63ifVM117xiMoR4c=bDo89Le7ug@mail.gmail.com>
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Sun, 20 Dec 2020 15:10:00 +0100
Message-ID: <CAEyb4nFrfJ-SNDirKMoJL3iJKfDHJtspV_Q_0m4jbv_ivyShrw@mail.gmail.com>
Subject: Re: [yocto] Using U-boot in Yocto
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004d1ce305b6e5e635"

--0000000000004d1ce305b6e5e635
Content-Type: text/plain; charset="UTF-8"

Oh, for some reason I had not found the docs. Thanks a lot, that looks
really good!

On Sun, Dec 20, 2020 at 2:13 PM Paul Barker <pbarker@konsulko.com> wrote:

> On Sun, 20 Dec 2020 at 09:02, Jonas Vautherin <jonas.vautherin@gmail.com>
> wrote:
> >
> > Hello!
> >
> > I am new to Yocto, and hope that this is the right way to ask for help
> :-).
> >
> > I would like to have a way to flash my RPi over USB using `fastboot`,
> and it seems to me that one way to do that is to enable a "fastboot mode"
> in U-boot. Therefore, I am trying to use U-boot in my Yocto image.
> >
> > There seems to be a recipe for it, hence I just added the package to my
> `-image.bb` file:
> >
> > ```
> > IMAGE_INSTALL += "u-boot"
> > ```
> >
> > However, I am not really used to bootloaders, and I am not sure it is
> booting with it. How can I check if my system is booting with U-boot? It
> does not seem like it's appearing in `dmesg` (which I presume is only
> starting with the kernel). Do I need to observe that with a serial
> connection to my RPi, or is there a log saved somewhere on the system?
> >
> > Note that my image uses `meta-raspberrypi` for MACHINE "raspberrypi4-64"
> (Raspberry Pi 4 Model B).
>
> The IMAGE_INSTALL variable is used for packages to install into the
> rootfs. Typically bootloaders need some special handling and simply
> adding them to IMAGE_INSTALL either doesn't work or isn't sufficient
> to enable booting via the chosen bootloader.
>
> For Raspberry Pi we made this simple by adding the RPI_USE_U_BOOT
> variable which you can set in your distro config or in local.conf. See
>
> https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#boot-to-u-boot
> for more details.
>
> The layer documentation for meta-raspberrypi is actually pretty good,
> you can find it at
> https://meta-raspberrypi.readthedocs.io/en/latest/index.html.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--0000000000004d1ce305b6e5e635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh, for some reason I had not found the docs. Thanks a lot=
, that looks really good!</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sun, Dec 20, 2020 at 2:13 PM Paul Barker &lt;<a=
 href=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, 20 Dec 20=
20 at 09:02, Jonas Vautherin &lt;<a href=3D"mailto:jonas.vautherin@gmail.co=
m" target=3D"_blank">jonas.vautherin@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello!<br>
&gt;<br>
&gt; I am new to Yocto, and hope that this is the right way to ask for help=
 :-).<br>
&gt;<br>
&gt; I would like to have a way to flash my RPi over USB using `fastboot`, =
and it seems to me that one way to do that is to enable a &quot;fastboot mo=
de&quot; in U-boot. Therefore, I am trying to use U-boot in my Yocto image.=
<br>
&gt;<br>
&gt; There seems to be a recipe for it, hence I just added the package to m=
y `-<a href=3D"http://image.bb" rel=3D"noreferrer" target=3D"_blank">image.=
bb</a>` file:<br>
&gt;<br>
&gt; ```<br>
&gt; IMAGE_INSTALL +=3D &quot;u-boot&quot;<br>
&gt; ```<br>
&gt;<br>
&gt; However, I am not really used to bootloaders, and I am not sure it is =
booting with it. How can I check if my system is booting with U-boot? It do=
es not seem like it&#39;s appearing in `dmesg` (which I presume is only sta=
rting with the kernel). Do I need to observe that with a serial connection =
to my RPi, or is there a log saved somewhere on the system?<br>
&gt;<br>
&gt; Note that my image uses `meta-raspberrypi` for MACHINE &quot;raspberry=
pi4-64&quot; (Raspberry Pi 4 Model B).<br>
<br>
The IMAGE_INSTALL variable is used for packages to install into the<br>
rootfs. Typically bootloaders need some special handling and simply<br>
adding them to IMAGE_INSTALL either doesn&#39;t work or isn&#39;t sufficien=
t<br>
to enable booting via the chosen bootloader.<br>
<br>
For Raspberry Pi we made this simple by adding the RPI_USE_U_BOOT<br>
variable which you can set in your distro config or in local.conf. See<br>
<a href=3D"https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-co=
nfig.html#boot-to-u-boot" rel=3D"noreferrer" target=3D"_blank">https://meta=
-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#boot-to-u-boo=
t</a><br>
for more details.<br>
<br>
The layer documentation for meta-raspberrypi is actually pretty good,<br>
you can find it at<br>
<a href=3D"https://meta-raspberrypi.readthedocs.io/en/latest/index.html" re=
l=3D"noreferrer" target=3D"_blank">https://meta-raspberrypi.readthedocs.io/=
en/latest/index.html</a>.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--0000000000004d1ce305b6e5e635--
