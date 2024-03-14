Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5181C54E5D
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 18:29:31 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.321.1710440969695786251
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 11:29:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YR5zPDke;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-60a068e26d8so14566587b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 11:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710440969; x=1711045769; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=flLYiZFeWeqFVc9vlIlpvoTn+Cr7uiIL4LKNGjHpMg8=;
        b=YR5zPDkeGP0XCpbtPdy4NgJvqlUyo5RNdPRcywYIIKXA9wWr+AayDK4AJ+Y3SrsapY
         F3iPtpO3+EfSTmca0zXuSdOLQoE/Dq5EBogkRefnEBSede/37x71zDnFUvx5bLNqc6r7
         uCz6fFZt/Xpz0SiXHK6W7BKHqye1Omi/T3z7+jqWMsNBorrGgqb7p9Rk3+Za0n6QVpkz
         M//5F/aM9JrvZtNOczXhg6SxlY0JmVmo1ZOVNEBVE0FhYwOziTomMbLeGvy2Li7n8+bc
         /qKVqzN0OCGvDV1OQj5GFkejy4mgcD8Vvdvx2G+5vldvBDlb+nXYvuDMHUP/+qYb50oH
         yHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710440969; x=1711045769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=flLYiZFeWeqFVc9vlIlpvoTn+Cr7uiIL4LKNGjHpMg8=;
        b=moaDi1LoKnV+8oPUJonlaqB9TGyheevyaca4LCuMDlo/G9hHeMzq2ykj5SyfMJhUI/
         myD7zKwVAZ5MbXTqYeUt9WbQyEUGWX6jk6adj3EqpV/hTaASYgbYOQdTuoZb/XT55Wpm
         qA07b+lD92OMBPnrVLc4Bcl0X1zE8FitUvII0nf5NZp28CPYCHtDFSrEhGqVViH20197
         wgQwQ3vST/CY2i3NNRySKMhDNWZRQR6rr+qMvOW3LZPx+stwD9OhZieE/UvCo97P/JyW
         Cp5zFC01A0pdETtquGR3P2F2Wq7QYtI/6MYvzQXfqQGaygfKhyiqfo8s5/hFl8IN1Tqa
         ghcQ==
X-Gm-Message-State: AOJu0YyKisTxsLsuN+xuFV74SQUxqswj9kzD6EwbiWV1/arInPiteZog
	IvY1SgtEs4ON/9Veszt2xKPe6uARVQXsw57SG5XtbZrf+u41sXIKTcJjDUhCIWDxc6ybrfCZU0W
	1rYpNlcvjWG1IPLKFvuQIVFhWjM1c8WHf
X-Google-Smtp-Source: AGHT+IGpFICaWW4q5UL95Qbew0ZDToSl9ZqBgBzQn9KlQ3OseElSPGhvDhLYqWCe05HxbhSDN7ZzWTsTC3kwiodrQ6Y=
X-Received: by 2002:a0d:c547:0:b0:60a:2452:c55 with SMTP id
 h68-20020a0dc547000000b0060a24520c55mr1699771ywd.2.1710440968597; Thu, 14 Mar
 2024 11:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org> <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com>
In-Reply-To: <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 14 Mar 2024 11:29:17 -0700
Message-ID: <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
Subject: Re: [yocto] No module named pkgconfig
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "ashujoshi35@gmail.com" <ashujoshi35@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000057bac50613a3123a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 18:29:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62764

--00000000000057bac50613a3123a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 14, 2024 at 11:21=E2=80=AFAM Ross Burton <ross.burton@arm.com> =
wrote:

> On 14 Mar 2024, at 14:40, ashujoshi35 via lists.yoctoproject.org
> <ashujoshi35=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Trying to install wirepas_gateway package from pypi. It fails with erro=
r
> no module named pkgconfig. Below is the error
> >
> > File "setup.py", line 17, in <module>
> > |     import pkgconfig
> > | ModuleNotFoundError: No module named 'pkgconfig'
> >
> > SUMMARY =3D "Recipe to install Python PiP Package wirepas_gateway"
> > LICENSE =3D "Apache-2.0"
> > LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9=
f4d8"
> >   inherit pypi setuptools3
> > PYPI_PACKAGE =3D "wirepas_gateway"
> > SRC_URI[md5sum] =3D "941a4407513445c64f16b57a1474fc43"
> >
> > It is not able to locate pkgconfig. tried to export the path as found i=
n
> one of the link using below, even that didn't worked out:
> > export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"
> >
> > Any idea how to make pkgconfig available to the setup.py file
> >
>
> That=E2=80=99s python code trying to import pkgconfig, so you=E2=80=99ll =
need to DEPEND on
> python3-pkgconfig (there=E2=80=99s a recipe for that in meta-python).
>
>
`devtool add <url to the git repository or pypi tarball>`
should have caught the dependency and mentioned it. It only knows about
what has already been built, however.


> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62763):
> https://lists.yoctoproject.org/g/yocto/message/62763
> Mute This Topic: https://lists.yoctoproject.org/mt/104927594/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000057bac50613a3123a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 14, 2024 at 11:21=E2=80=
=AFAM Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com">ross.burton@ar=
m.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On 14 Mar 2024, at 14:40, ashujoshi35 via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a> &lt;ashujoshi35=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" ta=
rget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Trying to install wirepas_gateway package from pypi. It fails with err=
or no module named pkgconfig. Below is the error<br>
&gt; <br>
&gt; File &quot;setup.py&quot;, line 17, in &lt;module&gt;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0import pkgconfig<br>
&gt; | ModuleNotFoundError: No module named &#39;pkgconfig&#39;<br>
&gt; <br>
&gt; SUMMARY =3D &quot;Recipe to install Python PiP Package wirepas_gateway=
&quot;<br>
&gt; LICENSE =3D &quot;Apache-2.0&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dcb6bb17b0d0cca18833907=
4207e9f4d8&quot;<br>
&gt;=C2=A0 =C2=A0inherit pypi setuptools3<br>
&gt; PYPI_PACKAGE =3D &quot;wirepas_gateway&quot;<br>
&gt; SRC_URI[md5sum] =3D &quot;941a4407513445c64f16b57a1474fc43&quot;<br>
&gt; <br>
&gt; It is not able to locate pkgconfig. tried to export the path as found =
in one of the link using below, even that didn&#39;t worked out:<br>
&gt; export PKG_CONFIG =3D &quot;${STAGING_BINDIR_NATIVE}/pkg-config&quot;<=
br>
&gt; <br>
&gt; Any idea how to make pkgconfig available to the setup.py file<br>
&gt;=C2=A0 <br>
<br>
That=E2=80=99s python code trying to import pkgconfig, so you=E2=80=99ll ne=
ed to DEPEND on python3-pkgconfig (there=E2=80=99s a recipe for that in met=
a-python).<br>
<br></blockquote><div><br></div><div>`devtool add &lt;url to the git reposi=
tory or pypi tarball&gt;`</div><div>should have caught the dependency and m=
entioned it. It only knows about what has already been built, however.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Ross<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62763): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62763" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62763</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104927594/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/104927594/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000057bac50613a3123a--

