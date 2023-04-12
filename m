Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9024C7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 17:21:09 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web11.49857.1681320067709361043
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 10:21:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=YwyHqbXz;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id v1so11124996vsg.5
        for <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 10:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681320067; x=1683912067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4EiFGJutjbmqX+aCXOnpFRJk64j+6ooqcNxQSiXbKrs=;
        b=YwyHqbXz9FO5PZjdqWEqpy4IJOC3sXJy7ecz4CQy7rOgdpczhfL7OeYvd0c0XKcvdk
         P3Eb7XIRjIilXdghhklGw9XXLazkw3T64MDqWTb4Jsyy/yRdeos/dx4NHPNJXJTqaZ1u
         ngJYuOrpFUEqfaIN9Ej72HgXZjfoFNrHtI3ZC27VgY8sFqavcLh/JodV4UQn+XVVB+NF
         Ss7YhYS1a/uPxjcLSvgLOYHQxjkAMmGPBe5IXdKDB1Fw74WVGvbiebBvEAo2eiVj17PA
         eW11e8CXnU5A/nkr8QooUj9WKRn3n6l4nfq5Ex+rXECtAjk02ay1MXM6w6Tvgs+KxsbW
         8Erg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681320067; x=1683912067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EiFGJutjbmqX+aCXOnpFRJk64j+6ooqcNxQSiXbKrs=;
        b=L3/SjhkdW+Jwu6zfXYhiz7Soi9MSTKyNYpTWfMQkOczoiVGRAYhs0LVGdR96tQbopb
         YnhdOmMQC8x6itDt/2oVyftROYdDDAfzHl/aJC1R71Re6xOX5csWWrbxp4kvUusVQWng
         qps7XarnngpvIp3f/Uj0DTAXJGMeAQPcdQ7Grd0g8wSLvtkmChWpMHzJA4fBO8Qkkcsm
         WeUZUbM36nKXmLSGV/AAix6UZPKRP6szhFpy3YPBA2TWliyCdEdjXuBgKFjVcwnGjaRz
         lmahtqwvRYtbHvNDBsq0zHBO3h9evBcZ/QGcf5twZ2/5hRU3PETQSh9mUgRrwHexACaB
         PnzQ==
X-Gm-Message-State: AAQBX9erMAHkXNcZQkAV2IHoecWOVCxMmJb5oI9XbY2A48ZYAoQt5TOB
	hqsAHYz6gpBScZteIKXj/oXE4VMAOSCDby2k+bI=
X-Google-Smtp-Source: AKy350a5KPPoHHklwLNOPr70IjvcMr1VbN00Om3FFpxkUqZgyhNuIQcySJhnUpNCbfyCiV2Frz0T0v8qmkd+DwSJH6A=
X-Received: by 2002:a67:c20d:0:b0:42c:47fa:5b86 with SMTP id
 i13-20020a67c20d000000b0042c47fa5b86mr1828573vsj.1.1681320066570; Wed, 12 Apr
 2023 10:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
 <CANNYZj9VGZ+-m77Brq=1jCt_+LyyUbadx6+WopzyVa-ED4Ft7A@mail.gmail.com>
 <CANPvuRm2Pwuq8WjFjzQL-cvQo1Ger=yAHHKn1Zhx+y_B1wWcog@mail.gmail.com> <CANNYZj8KX1W6fzBShSa9S0=onE7mp9xTJuLM8cG32vX0nrN2_A@mail.gmail.com>
In-Reply-To: <CANNYZj8KX1W6fzBShSa9S0=onE7mp9xTJuLM8cG32vX0nrN2_A@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 12 Apr 2023 18:20:55 +0100
Message-ID: <CANPvuRkd5J6qig1o-X6px0LHe03OTD4xM1Xw6PkB_VmAz8g6Fg@mail.gmail.com>
Subject: Re: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Jose Quaresma <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>
Content-Type: multipart/alternative; boundary="000000000000525ebf05f926d5e7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 17:21:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59694

--000000000000525ebf05f926d5e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Just to inform the mailing list that the branch is available on the
meta-lts-mixins yocto repo.

https://git.yoctoproject.org/meta-lts-mixins/log/?h=3Dkirkstone/go

Thanks for the help and feedback.

Jose

Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia sexta,
31/03/2023 =C3=A0(s) 18:49:

> You need to send your public ssh key to Michael (cc) and explain what
> access should be granted with that (which repo, which branch(es)).
>
> In this case,
> https://git.yoctoproject.org/meta-lts-mixins/
> kirkstone/go
>
> Alex
>
> On Fri, 31 Mar 2023 at 18:15, Jose Quaresma <quaresma.jose@gmail.com>
> wrote:
> >
> > Hi Alex,
> >
> > I don't have any account/keys that allow me to push directly
> git.yoctoproject.org
> > maybe I need to setup my keys somewhere like with poky-contrib [1]
> >
> > I will send all the patches to the yocto mailing list as recommended.
> >
> > [1] https://wiki.yoctoproject.org/wiki/Poky_Contributions
> >
> > Jose
> >
> > Alexander Kanavin <alex.kanavin@gmail.com> escreveu no dia quinta,
> 30/03/2023 =C3=A0(s) 11:08:
> >>
> >> I think I pushed the work directly to the respecitve branches in
> >> meta-lts-mixins. I'd suggest you send the patches here, and we'll sort
> >> out the technicalities (I can publish the branch on
> >> git.yoctoproject.org, or maybe you'll be able to push directly as
> >> well, provided you also send the patches here). There's no autobuilder
> >> testing; for mixin items the contributors are trusted :)
> >>
> >> Alex
> >>
> >>
> >> On Thu, 30 Mar 2023 at 11:20, Jose Quaresma <quaresma.jose@gmail.com>
> wrote:
> >> >
> >> > Hi,
> >> >
> >> > The golang version in kirkstone is the 1.17 and because of this is
> not possible to use some recent version of other projects like docker tha=
t
> requires a more recent version of the language.
> >> >
> >> > I have a kirkstone branch [1] available at Foundries.io with the
> golang backported from the oe-core master that I liked to submit to the
> meta-lts-mixins [2].
> >> > Alex is the maintainer of the dunfell golang backport and this
> kirkstone branch is based on that version.
> >> >
> >> > Would that be interesting for the project? How should I proceed?
> >> >
> >> > [1] https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
> >> > [2] https://git.yoctoproject.org/meta-lts-mixins
> >> >
> >> > Jose
> >> >
> >> > --
> >> > Best regards,
> >> >
> >> > Jos=C3=A9 Quaresma
> >
> >
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000525ebf05f926d5e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>Just to inform the mailing list that the branch=
 is available on the meta-lts-mixins yocto repo.<br><br><a href=3D"https://=
git.yoctoproject.org/meta-lts-mixins/log/?h=3Dkirkstone/go">https://git.yoc=
toproject.org/meta-lts-mixins/log/?h=3Dkirkstone/go</a><br><br>Thanks=C2=A0=
for the help and feedback.<br><br>Jose</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Alexander Kanavin &lt;<a href=3D"mail=
to:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; escreveu no dia s=
exta, 31/03/2023 =C3=A0(s) 18:49:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">You need to send your public ssh key to Michael (cc) and =
explain what<br>
access should be granted with that (which repo, which branch(es)).<br>
<br>
In this case,<br>
<a href=3D"https://git.yoctoproject.org/meta-lts-mixins/" rel=3D"noreferrer=
" target=3D"_blank">https://git.yoctoproject.org/meta-lts-mixins/</a><br>
kirkstone/go<br>
<br>
Alex<br>
<br>
On Fri, 31 Mar 2023 at 18:15, Jose Quaresma &lt;<a href=3D"mailto:quaresma.=
jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi Alex,<br>
&gt;<br>
&gt; I don&#39;t have any account/keys that allow me to push directly <a hr=
ef=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">git=
.yoctoproject.org</a><br>
&gt; maybe I need to setup my keys somewhere like with poky-contrib [1]<br>
&gt;<br>
&gt; I will send all the patches to the yocto mailing list as recommended.<=
br>
&gt;<br>
&gt; [1] <a href=3D"https://wiki.yoctoproject.org/wiki/Poky_Contributions" =
rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Pok=
y_Contributions</a><br>
&gt;<br>
&gt; Jose<br>
&gt;<br>
&gt; Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank">alex.kanavin@gmail.com</a>&gt; escreveu no dia quinta, 30/03/20=
23 =C3=A0(s) 11:08:<br>
&gt;&gt;<br>
&gt;&gt; I think I pushed the work directly to the respecitve branches in<b=
r>
&gt;&gt; meta-lts-mixins. I&#39;d suggest you send the patches here, and we=
&#39;ll sort<br>
&gt;&gt; out the technicalities (I can publish the branch on<br>
&gt;&gt; <a href=3D"http://git.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">git.yoctoproject.org</a>, or maybe you&#39;ll be able to push d=
irectly as<br>
&gt;&gt; well, provided you also send the patches here). There&#39;s no aut=
obuilder<br>
&gt;&gt; testing; for mixin items the contributors are trusted :)<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Thu, 30 Mar 2023 at 11:20, Jose Quaresma &lt;<a href=3D"mailto:=
quaresma.jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The golang version in kirkstone is the 1.17 and because of th=
is is not possible to use some recent version of other projects like docker=
 that requires a more recent version of the language.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have a kirkstone branch [1] available at Foundries.io with =
the golang backported from the oe-core master that I liked to submit to the=
 meta-lts-mixins [2].<br>
&gt;&gt; &gt; Alex is the maintainer of the dunfell golang backport and thi=
s kirkstone branch is based on that version.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Would that be interesting for the project? How should I proce=
ed?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; [1] <a href=3D"https://github.com/foundriesio/meta-lts-mixins=
/tree/kirkstone/go" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/foundriesio/meta-lts-mixins/tree/kirkstone/go</a><br>
&gt;&gt; &gt; [2] <a href=3D"https://git.yoctoproject.org/meta-lts-mixins" =
rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts-=
mixins</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Jose<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Jos=C3=A9 Quaresma<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Jos=C3=A9 Quaresma<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--000000000000525ebf05f926d5e7--

