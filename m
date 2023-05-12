Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CD4C77B7C
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 15:23:13 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web10.27804.1683904992082561052
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 08:23:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@googlemail.com header.s=20221208 header.b=a+CSRsfd;
 spf=pass (domain: googlemail.com, ip: 209.85.219.174, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-ba745dee38eso192748276.2
        for <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 08:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1683904991; x=1686496991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P3+qTLOPdr90Bpx4ZYthR86Aj9nzF34tG2wjD/rx/NY=;
        b=a+CSRsfdfwmpFtXRrs4HM5V5pHeeA0C/3jGMCvc6wobLKSmgDP0v896hcaXxNSjRJF
         9ZRTKBVPpyM8850nAEHUumaDTgdnoWi5dP7cxyunlWU1uF8vgM8C/SWKTL+VeGJYDazJ
         hJbb9uLtdLiy9YcAj5/9osgtZ954Zf3utWPRWtlio1FryIitN2KvnXamRjYnCMk6Ia2r
         /YUhvsHGWn8DnS9opDLX6NcjmPZmHoY6u7yeU4vulP/v4cEHkh1+BDFUzXHZ3z0QIV7o
         QxmMmLrmjr9KhNRkomLuTz9ZGVvIQz28zI5RlY/C6AqrwtPoUjRonmMo/KZ+8tSem+Rw
         Jwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683904991; x=1686496991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3+qTLOPdr90Bpx4ZYthR86Aj9nzF34tG2wjD/rx/NY=;
        b=eWKhZxuN5/8PuJJ6E/V6h+BHKR8lyDt8TQ64hwz277ijcdFs80swVrem+MmSOeWG+j
         Bn18TUQA9t2hWjQAdVEIVSchxITWpTLKzpm7o59KL3ezxYDd3CjDgQFLvNM54+p9O59o
         zbd34qQmoKYUM++E0CLEJm0AbSrSXJy16olGF+crB+sK6QW2e//YVbFXOW0L+QLMLoau
         UczpG9p2OjKDyW2F5V/+DPqbu/C6JN615dv6ArWBmD0oq+bYCMaZawfM+K1y+HBlCDQR
         oEsPJz95HFSr7BA2Xk5rGM3PKGhNk3XBqP4VMmDmmjEAynSXMS3hvozVyW7e8VUMbbJ7
         ICkw==
X-Gm-Message-State: AC+VfDxnAitqzXO1ecHlN5FaM2VJrO+2S0q9oNl6F2hm0QJ4R79kcvZ2
	LG9k0mZM49SkBumhPuW+AFE9yjH5cW7+61ZEOd4=
X-Google-Smtp-Source: ACHHUZ5fQVj3EmgeqV5aPr9dfSP42JiySPb2fQB1Q4TFecAEGvnmifpeFVrDMvS2twHA5apcfNkemQYJLsTFNUmKXis=
X-Received: by 2002:a05:6902:1022:b0:b9d:853e:5ceb with SMTP id
 x2-20020a056902102200b00b9d853e5cebmr26344707ybt.47.1683904991068; Fri, 12
 May 2023 08:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com> <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
 <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com>
 <DC50ACAA-3952-40AE-B025-EE31B64BB0E9@arm.com> <CA+-BmJZXKw-=WViAmXKjSGpRzrpE7XBzNE4Vm0ZzbY-sJ55BcQ@mail.gmail.com>
 <CAMKF1sqiquGfRsBEf9YkvuCXin-v9ks2mik5sQ1WdqXKyWkPaw@mail.gmail.com>
In-Reply-To: <CAMKF1sqiquGfRsBEf9YkvuCXin-v9ks2mik5sQ1WdqXKyWkPaw@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 12 May 2023 17:23:00 +0200
Message-ID: <CA+-BmJYX4Ccmyd_y+-ofO5FDqC=kqQsEYJd0qY1JN7zS1GFeDw@mail.gmail.com>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <Ross.Burton@arm.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d4062605fb80aec2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 15:23:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60005

--000000000000d4062605fb80aec2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

@Khem Raj <raj.khem@gmail.com> thanks any tweak suggestions for the musl
toolchains in yocto are welcome

On Fri, May 12, 2023 at 2:45=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> On Fri, May 12, 2023 at 4:46=E2=80=AFAM Ayoub Zaki <ayoub.zaki@googlemail=
.com>
> wrote:
> >
> > After testing on the target, static busybox cannot be started, it looks
> like Cortex M7 (MMU less) cannot run ELF Binaries and need BFLT format:
> >
> >
> https://unix.stackexchange.com/questions/610094/kernel-cannot-execute-bin=
aries-error-8
> >
> > I saw that uClibc was removed and replaced with Musl, can Musl also
> generate  BFLT format binaries ?
> >
>
> you could use musl which has FDPIC support that is needed for running
> static bins on MCUs however it might need some
> tweaks to get it going in OE
>
> >
> >
> > On Fri, May 12, 2023 at 11:35=E2=80=AFAM Ross Burton <Ross.Burton@arm.c=
om>
> wrote:
> >>
> >> On 12 May 2023, at 10:24, Ayoub Zaki <ayoub.zaki@googlemail.com> wrote=
:
> >> >
> >> > Ross' suggestion to remove opkg-utils hard coded build dependency on
> python solved the issue
> >>
> >> I have some local patches to clean this up, so you never need to build
> opkg-utils.
> >>
> >> > but I noticed that there is a similar issue if PACKAGE_CLASSES =3D
> "package_deb" is selected.
> >> > wouldn't it be possible to disable in yocto completely package
> management e.g PACKAGE_CLASSES =3D "=E2=80=9D ?
> >>
> >> Images are constructed from packages, so this would be tricky.
> >>
> >> Use package_ipk and you get the leanest package manager.  If you don=
=E2=80=99t
> have package-management in IMAGE_FEATURES then you don=E2=80=99t get on-t=
arget
> tools, which saves building them at all.
> >>
> >> > Another issue I faced since my target is MMU less is that busybox
> enforce shared lib build:
> >> >
> >> >
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/bus=
ybox/busybox.inc?h=3Dkirkstone#n115
> >> >
> >> > what is the reason behind this? shouldn't yocto support mmu less
> target ?
> >>
> >> We don=E2=80=99t have any official MMU-less supported targets.  If rec=
ipes need
> to be cleaned up to support them, then please do send patches.
>
>
> >>
> >> Ross
>

--000000000000d4062605fb80aec2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a class=3D"gmail_plusreply" id=3D"plusReplyChip-0" href=
=3D"mailto:raj.khem@gmail.com" tabindex=3D"-1">@Khem Raj</a>=C2=A0thanks an=
y tweak suggestions for the musl toolchains in yocto are welcome</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May=
 12, 2023 at 2:45=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.=
com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">On Fri, May 12, 2023 at 4:46=E2=80=AFAM Ayoub Zaki &=
lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank">ayoub.zak=
i@googlemail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; After testing on the target, static busybox cannot be started, it look=
s like Cortex M7 (MMU less) cannot run ELF Binaries and need BFLT format:<b=
r>
&gt;<br>
&gt; <a href=3D"https://unix.stackexchange.com/questions/610094/kernel-cann=
ot-execute-binaries-error-8" rel=3D"noreferrer" target=3D"_blank">https://u=
nix.stackexchange.com/questions/610094/kernel-cannot-execute-binaries-error=
-8</a><br>
&gt;<br>
&gt; I saw that uClibc was removed and replaced with Musl, can Musl also ge=
nerate=C2=A0 BFLT format binaries ?<br>
&gt;<br>
<br>
you could use musl which has FDPIC support that is needed for running<br>
static bins on MCUs however it might need some<br>
tweaks to get it going in OE<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Fri, May 12, 2023 at 11:35=E2=80=AFAM Ross Burton &lt;<a href=3D"ma=
ilto:Ross.Burton@arm.com" target=3D"_blank">Ross.Burton@arm.com</a>&gt; wro=
te:<br>
&gt;&gt;<br>
&gt;&gt; On 12 May 2023, at 10:24, Ayoub Zaki &lt;<a href=3D"mailto:ayoub.z=
aki@googlemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Ross&#39; suggestion to remove opkg-utils hard coded build de=
pendency on python solved the issue<br>
&gt;&gt;<br>
&gt;&gt; I have some local patches to clean this up, so you never need to b=
uild opkg-utils.<br>
&gt;&gt;<br>
&gt;&gt; &gt; but I noticed that there is a similar issue if PACKAGE_CLASSE=
S =3D &quot;package_deb&quot; is selected.<br>
&gt;&gt; &gt; wouldn&#39;t it be possible to disable in yocto completely pa=
ckage management e.g PACKAGE_CLASSES =3D &quot;=E2=80=9D ?<br>
&gt;&gt;<br>
&gt;&gt; Images are constructed from packages, so this would be tricky.<br>
&gt;&gt;<br>
&gt;&gt; Use package_ipk and you get the leanest package manager.=C2=A0 If =
you don=E2=80=99t have package-management in IMAGE_FEATURES then you don=E2=
=80=99t get on-target tools, which saves building them at all.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Another issue I faced since my target is MMU less is that bus=
ybox enforce shared lib build:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"http://cgit.openembedded.org/openembedded-core/tre=
e/meta/recipes-core/busybox/busybox.inc?h=3Dkirkstone#n115" rel=3D"noreferr=
er" target=3D"_blank">http://cgit.openembedded.org/openembedded-core/tree/m=
eta/recipes-core/busybox/busybox.inc?h=3Dkirkstone#n115</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; what is the reason behind this? shouldn&#39;t yocto support m=
mu less target ?<br>
&gt;&gt;<br>
&gt;&gt; We don=E2=80=99t have any official MMU-less supported targets.=C2=
=A0 If recipes need to be cleaned up to support them, then please do send p=
atches.<br>
<br>
<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
</blockquote></div>

--000000000000d4062605fb80aec2--

