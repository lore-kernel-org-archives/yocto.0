Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58F2C54798
	for <webhook@archiver.kernel.org>; Sat, 24 Feb 2024 02:13:59 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.12046.1708740834298777933
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 18:13:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ikGzOetn;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6e3ffafa708so1538147b3a.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 18:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708740834; x=1709345634; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z91HZxayUkpsyBrHXcmE8BJVNPmOm14+OlCVzU0CKes=;
        b=ikGzOetnLzL2NFHcYPpb6/9TZOH6y7lzD9KgsF/XDJWUTjqN7fugA2f2iIymJpfkP2
         OQudKktk2/XE6e+qSPVr2ijmQno21yl8xYxN3O57dn/PyzNgVxbY4oP4664MC3XZuUi+
         5IfLN1I8Juab1w1SM2/JTLxh3dylAFaT/8ZwPSwO59TJD1KdQWSX2iN+vxGOphlxa514
         jJf8dz0QxdPc6ossYBMSvgAf/n7zvQsM6ZdggcygsFoEgjgpQU32qA33tmeiFFEx9j3d
         C8BYmLZa0NJe1ZTK4YLm36J/LFNSOTIMOon/sSayfBUmzqoaR3CwdRZH8HbREKx5zTqX
         ng1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708740834; x=1709345634;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z91HZxayUkpsyBrHXcmE8BJVNPmOm14+OlCVzU0CKes=;
        b=R/0hLeENDot42Nv7dZaaXKDl/D6If1J1VyUVQqVNVx4q08YnXHipZep5LP/tvUXR6w
         20NsqUBKRhWMPFsts+3YQ/3+Vlhorwv8Hyxa4vFTpZR2JmALucrIoWaPuQBj8SxpYltm
         NQbQCm/XrDyFtNH6MQfNtoByrHBc2IQ9lzFXIOSmh43/fZNfIq3cNzllkzkT8D4oCfUf
         YWe5Y2bGA1t0OZyznm72dJ2VGfIEqn+cZPOsmD7ooz9RSq9od/yb8BQBHd0TV+G31UE7
         xNFpXhP+d8ZrggqONlU5mCouuZiFR21ccsOHnvPlGhTFcadYdtUYXWL/Jb2JF6kq0TSO
         Xzaw==
X-Forwarded-Encrypted: i=1; AJvYcCXceYpFUJH5clDB3sDRTi5MB2XE8tCHbpXsp9eznLKhpXTKuPNC3OqLXvW+BZg8LBW2bDxFTCFSdF+UzPx45bOFabI0KiYcDaRuOe7A
X-Gm-Message-State: AOJu0YwApq+AE+luGoN9T359IfVJydCpod9dTgzi2P6W2qwwCpcpZOlK
	Xc6OEvE7RpRTScAroYLjxQxs6rooihb6CC2QOn2roLZXYB4705Ttp8rtnWrpfO2rFCmdvZJ+zgh
	RJe8gzJJKzqFlVDw/yt8xEGZYlPQ=
X-Google-Smtp-Source: AGHT+IHoNh+lOjfF8Qk//wbfnS4U/A2ItEUIp7GaOGIgJF9n2Hci9WhN6LOxoX2UEU3ICtlKtksXIS8UMVKIN/2KXPk=
X-Received: by 2002:a05:6a20:d487:b0:1a0:6f51:edee with SMTP id
 im7-20020a056a20d48700b001a06f51edeemr2077205pzb.56.1708740833661; Fri, 23
 Feb 2024 18:13:53 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com>
 <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
 <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
 <CACSj6VV4WYA-QMrRub=dj70+V4Luf317Mt3j9yeLuA6YK9MJ2Q@mail.gmail.com>
 <CADkTA4OanM6BovM-1iLW=-gU3=UZQZYg7bomc-nzR5+3qEncMg@mail.gmail.com>
 <d0fe9e8b0ee7b8ee3c36189c297ac8194fd13326.camel@linuxfoundation.org> <CACSj6VWqwY633wrkZ1j3P5+Yz2feaTiKFndatBe85-N4QA-FYA@mail.gmail.com>
In-Reply-To: <CACSj6VWqwY633wrkZ1j3P5+Yz2feaTiKFndatBe85-N4QA-FYA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Feb 2024 21:13:52 -0500
Message-ID: <CADkTA4PPJ1NM4N=jiEw4HQR9cv4KpM3+4k1-z9kOfJ1C-6rmzA@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	yocto <yocto@lists.yoctoproject.org>, Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000675ec70612173a8d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Feb 2024 02:13:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62595

--000000000000675ec70612173a8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024, 5:26=E2=80=AFPM Konstantin Aladyshev <aladyshev22@gma=
il.com>
wrote:

> Thanks Richard! That did the trick!
>
> I've made the following changes to the "kern-tools-native_git.bb":
> ```
> diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> index 941160ea9c..7f8ea3e050 100644
> --- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> +++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> @@ -9,7 +9,7 @@ LIC_FILES_CHKSUM =3D "\
>         file://Kconfiglib/LICENSE.txt;md5=3D712177a72a3937909543eda3ad1bf=
b7c
> \
>  "
>
> -DEPENDS =3D "git-native"
> +DEPENDS =3D "git-replacement-native"
>
>  SRCREV =3D "7160ebe8b865dd6028aef278efa219433db93f7e"
>  PV =3D "0.3+git"
> ```
> Is it ok? Can I send this patch to the mailing list?
>

It is easier if I just make the change locally and send it to the list as
part of my next pull request.

Thanks for the report and testing, I'll send a patch shortly.

Bruce



>
> Best regards,
> Konstantin Aladyshev
>
> On Sat, Feb 24, 2024 at 12:07=E2=80=AFAM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Fri, 2024-02-23 at 13:45 -0500, Bruce Ashfield wrote:
> > > On Fri, Feb 23, 2024 at 12:15=E2=80=AFPM Konstantin Aladyshev
> > > <aladyshev22@gmail.com> wrote:
> > > >
> > > > Should I see the new git version in the linux-yocto devshell?
> > > > """
> > > > bitbake linux-yocto -c devshell
> > > > """
> > > >
> > > > I've tried to check it in the current poky master, and it gives me:
> > > > """
> > > > $/data/poky/build/workspace/sources/linux-yocto# git --version
> > > > git version 2.30.2
> > > > $/data/poky/build/workspace/sources/linux-yocto# which git
> > > > /data/poky/scripts/git
> > > > """
> > > > So in this case host git is used. "bitbake kern-tools-native -c
> > > > devshell" gives the same result.
> > > > Can this be considered as a proof that git-native is not used?
> > > >
> > >
> > > It is likely ASSUME_PROVIDED that is causing the issue, git-native is
> > > in there, which means it is going to use the host version and not
> > > build our -native recipe for it.
> > >
> > > We'll need some guidance from Richard on this, because the use of
> > > that
> > > flag in the git operations is in fact required for security reasons,
> > > so it isn't going to be optional. If that means we need a minimum git
> > > version or to use our own built one (and possibly the buildtools
> > > tarball, etc), then those are the hoops we'll have to jump through.
> > >
> > > When I pulled git-native out of ASSUME_PROVIDED locally, I ended up
> > > in
> > > a dependency loop.
> > >
> > > I can have a closer look at this again on Monday, but i'm out of time
> > > for it today.
> >
> > We do have a way to handle this.
> >
> > DEPENDS +=3D "git-replacement-native"
> >
> > should do it.
> >
> > Cheers,
> >
> > Richard
>

--000000000000675ec70612173a8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">On Fri, Feb 23, 2024, 5:26=E2=80=AFPM Konstantin Aladyshev &l=
t;<a href=3D"mailto:aladyshev22@gmail.com" target=3D"_blank">aladyshev22@gm=
ail.com</a>&gt; wrote:<br></div></div><div dir=3D"auto"><div><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks Richa=
rd! That did the trick!<br>
<br>
I&#39;ve made the following changes to the &quot;<a href=3D"http://kern-too=
ls-native_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">kern-tool=
s-native_git.bb</a>&quot;:<br>
```<br>
diff --git a/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-na=
tive_git.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">kern-tools-nat=
ive_git.bb</a><br>
b/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_git.bb=
" rel=3D"noreferrer noreferrer" target=3D"_blank">kern-tools-native_git.bb<=
/a><br>
index 941160ea9c..7f8ea3e050 100644<br>
--- a/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">kern-tools-native_git=
.bb</a><br>
+++ b/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">kern-tools-native_git=
.bb</a><br>
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://Kconfiglib/LICENSE.txt;md5=3D712177a72a3=
937909543eda3ad1bfb7c \<br>
=C2=A0&quot;<br>
<br>
-DEPENDS =3D &quot;git-native&quot;<br>
+DEPENDS =3D &quot;git-replacement-native&quot;<br>
<br>
=C2=A0SRCREV =3D &quot;7160ebe8b865dd6028aef278efa219433db93f7e&quot;<br>
=C2=A0PV =3D &quot;0.3+git&quot;<br>
```<br>
Is it ok? Can I send this patch to the mailing list?<br></blockquote><div><=
br></div><div><div class=3D"gmail_default" style=3D"font-size:small">It is =
easier if I just make the change locally and send it to the list as part of=
 my next pull request.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Th=
anks for the report and testing, I&#39;ll send a patch shortly.</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Best regards,<br>
Konstantin Aladyshev<br>
<br>
On Sat, Feb 24, 2024 at 12:07=E2=80=AFAM Richard Purdie<br>
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" rel=3D"noreferrer=
" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, 2024-02-23 at 13:45 -0500, Bruce Ashfield wrote:<br>
&gt; &gt; On Fri, Feb 23, 2024 at 12:15=E2=80=AFPM Konstantin Aladyshev<br>
&gt; &gt; &lt;<a href=3D"mailto:aladyshev22@gmail.com" rel=3D"noreferrer" t=
arget=3D"_blank">aladyshev22@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Should I see the new git version in the linux-yocto devshell=
?<br>
&gt; &gt; &gt; &quot;&quot;&quot;<br>
&gt; &gt; &gt; bitbake linux-yocto -c devshell<br>
&gt; &gt; &gt; &quot;&quot;&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;ve tried to check it in the current poky master, and i=
t gives me:<br>
&gt; &gt; &gt; &quot;&quot;&quot;<br>
&gt; &gt; &gt; $/data/poky/build/workspace/sources/linux-yocto# git --versi=
on<br>
&gt; &gt; &gt; git version 2.30.2<br>
&gt; &gt; &gt; $/data/poky/build/workspace/sources/linux-yocto# which git<b=
r>
&gt; &gt; &gt; /data/poky/scripts/git<br>
&gt; &gt; &gt; &quot;&quot;&quot;<br>
&gt; &gt; &gt; So in this case host git is used. &quot;bitbake kern-tools-n=
ative -c<br>
&gt; &gt; &gt; devshell&quot; gives the same result.<br>
&gt; &gt; &gt; Can this be considered as a proof that git-native is not use=
d?<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; It is likely ASSUME_PROVIDED that is causing the issue, git-nativ=
e is<br>
&gt; &gt; in there, which means it is going to use the host version and not=
<br>
&gt; &gt; build our -native recipe for it.<br>
&gt; &gt;<br>
&gt; &gt; We&#39;ll need some guidance from Richard on this, because the us=
e of<br>
&gt; &gt; that<br>
&gt; &gt; flag in the git operations is in fact required for security reaso=
ns,<br>
&gt; &gt; so it isn&#39;t going to be optional. If that means we need a min=
imum git<br>
&gt; &gt; version or to use our own built one (and possibly the buildtools<=
br>
&gt; &gt; tarball, etc), then those are the hoops we&#39;ll have to jump th=
rough.<br>
&gt; &gt;<br>
&gt; &gt; When I pulled git-native out of ASSUME_PROVIDED locally, I ended =
up<br>
&gt; &gt; in<br>
&gt; &gt; a dependency loop.<br>
&gt; &gt;<br>
&gt; &gt; I can have a closer look at this again on Monday, but i&#39;m out=
 of time<br>
&gt; &gt; for it today.<br>
&gt;<br>
&gt; We do have a way to handle this.<br>
&gt;<br>
&gt; DEPENDS +=3D &quot;git-replacement-native&quot;<br>
&gt;<br>
&gt; should do it.<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
</blockquote></div></div></div>
</div>

--000000000000675ec70612173a8d--

