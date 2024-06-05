Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0053C25B76
	for <webhook@archiver.kernel.org>; Wed,  5 Jun 2024 10:21:16 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web10.11819.1717582868095764422
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jun 2024 03:21:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hjUA11kf;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6f941dac526so545042a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 03:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717582867; x=1718187667; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d0bwXrKQTy/65fkojgEWAnrmp12I1iFl7ukFC2nHFDo=;
        b=hjUA11kfmL98Uu5YHEBc9cly03XSQmTBaAkJKjdWmaEu8EoBSlznHd8d2pAHZuUBAu
         hYJlixiXj8QEKxK6JjRb0q7AUN4kSHMx0BfIV9XL9pYbuJpevBioLwSULRj4b83b82oM
         Z9zUhfL3ylGOyy4JpqOjDhRO5x6XpQAI7CObJZLwtDfTEwQHLg1VeiAF/a1h+99LSw8r
         PYLjD0aPAryYSow+/rLtZJquPdmGSB6xB0iFOLPXDRHR6gfnauq6pTdeOiDKwOOeYX1H
         hH1eGTiO5zKektH67P5vQbUecVtb13a+sJ+EjtTLSZxyueYUhXNtehjrL1eNUEEfghUO
         rc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717582867; x=1718187667;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d0bwXrKQTy/65fkojgEWAnrmp12I1iFl7ukFC2nHFDo=;
        b=Q3Uf4yI8cC47oaZmUcP7uNNtpmTHjAuTRcu32qwHLz2q12USb5uG3lIf9FEFp8Tc3J
         n887kcYMXbNJ7V+rMQhZHhxd9PJAFb57r3Hg8BTsYSfF2UmBNv+j5CqURXsqmx8vDLC/
         Dynyc07TeX53Lh2Gjgf1nWhpBkFUeMaiB9R8hRD8qTWI+f2ggWW5IDBDZ5SuQoJ3n5cC
         +MJBktp6rTj3sOY43zOd6cZx+RQRfd+pk0Glqn2HlI2bQYo3soeGvRtnM2pwaeDyqoUf
         ijoMuoQtTaubSiwL8WYIdXyyClXjX1zJHA1dSyW/o9vPsiUGrsm2nbSvLyH0e3QXyF/c
         SaWA==
X-Gm-Message-State: AOJu0Yx4I8cpbixJ5SqUsqgfQWCu+e5Y+3AsH5PnbFbCP1PDgsHEWbky
	vsUZ43LsUTlkDxu+gGONwVSTcuLwbd2PW8KKPtcI3oDs3DS3i4DorIWeRmXRCAcUzUM3NeteDI9
	uM832Lg2lsd+Gw5DgldjwDi1xAYg=
X-Google-Smtp-Source: AGHT+IHk6e1bCp+OUzBogg2JbWOIWHpCLv116Bb0evzxTHC4Xn4gGLm1kj6lSYwcVrZs4rNAAVTK4Tv0qhwM64UCv9o=
X-Received: by 2002:a05:6870:d88a:b0:250:866c:5bda with SMTP id
 586e51a60fabf-25121de4eccmr2394909fac.24.1717582866971; Wed, 05 Jun 2024
 03:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
 <CANNYZj-fyCD3f_2RtDhKKMuO9dFk=pt7yb0fazez0v1Z_DAoBQ@mail.gmail.com>
In-Reply-To: <CANNYZj-fyCD3f_2RtDhKKMuO9dFk=pt7yb0fazez0v1Z_DAoBQ@mail.gmail.com>
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Wed, 5 Jun 2024 15:50:55 +0530
Message-ID: <CAKe-BNqwwFzMFFAgy7DjG4oi37E0HBx6jRJTeCPe4E+seF7wUQ@mail.gmail.com>
Subject: Re: [yocto] Need to add TEMPLATECONF in Custom layer.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a8903f061a21ecef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 10:21:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63282

--000000000000a8903f061a21ecef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

Can you help me with the example?
As I am using the Kirkstone version of yocto, I am not able to get a proper
idea how to set.
Do we need to export the TEMPLATECONF?


Thanks & Regards
Saswati

On Tue, Jun 4, 2024 at 3:54=E2=80=AFPM Alexander Kanavin <alex.kanavin@gmai=
l.com>
wrote:

> If your yocto version is recent enough, use
>
> 'bitbake-layers save-build-conf' to save build/conf/ as a template. In
> older versions you need to do what it does by hand.
>
> To set up a build from template, use oe-setup-build (from scarthgap
> onwards) or TEMPLATECONF=3D . oe-init-build-env in older versions.
>
> Alex
>
> On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via lists.yoctoproject.org
> <saswatinayak2010=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello All,
> >
> > I want to add a custom templateconf in my build directory.
> > Can anyone help me how to create Templateconf from our local source so
> that it will point in the build/conf/templateconf.cfg .
> >
> > Thanks & Regards
> > Saswati
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63270):
> https://lists.yoctoproject.org/g/yocto/message/63270
> > Mute This Topic: https://lists.yoctoproject.org/mt/106479728/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000a8903f061a21ecef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander,<div><br></div><div>Can you help me with t=
he example?</div><div>As I am using the Kirkstone version of yocto, I am no=
t able to get a proper idea how to set.</div><div>Do we need to export the =
TEMPLATECONF?</div><div><br></div><div><br></div><div>Thanks &amp; Regards<=
/div><div>Saswati</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:54=E2=80=AFPM Alexander Kan=
avin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">If=
 your yocto version is recent enough, use<br>
<br>
&#39;bitbake-layers save-build-conf&#39; to save build/conf/ as a template.=
 In<br>
older versions you need to do what it does by hand.<br>
<br>
To set up a build from template, use oe-setup-build (from scarthgap<br>
onwards) or TEMPLATECONF=3D . oe-init-build-env in older versions.<br>
<br>
Alex<br>
<br>
On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a><br>
&lt;saswatinayak2010=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" =
target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello All,<br>
&gt;<br>
&gt; I want to add a custom templateconf in my build directory.<br>
&gt; Can anyone help me how to create Templateconf from our local source so=
 that it will point in the build/conf/templateconf.cfg .<br>
&gt;<br>
&gt; Thanks &amp; Regards<br>
&gt; Saswati<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63270): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63270" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63270</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10647972=
8/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/106479728/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000a8903f061a21ecef--

