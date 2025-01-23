Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83EC1C02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 05:01:48 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.4845.1737608500026920547
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2025 21:01:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hCIUroI9;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5db689a87cbso982429a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 21:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737608498; x=1738213298; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r96a0Nrqo2UkkrFg0KDZFSz7KN4Czt0PvmXacFz6ic4=;
        b=hCIUroI9g851mqJ74dmqDgZkVsiADCRwyeyZgviA0OT+oTqyf0hxTV+t5Fgb1TYPpW
         ZncuKnMReHSXSMdFzy0iRHTqI1oI2ySzBTo3XLlLkhvX6SieNeNf4Oeiru3V71rSYTlp
         PxtJHIlG5uDa4iKiI8/FkKmqzi+OpzCkKlos2aQicrcbDAyux6OuEhtNgL1FTDUxl8ra
         RQegQn2AO6XqALgspP6H+GWcHmOUtQSv8Fua0maDEN4ZVgcR+JZ4ZlJ1qLbTjWV6Rir1
         kPjb7sbAik25DqBLs11TzWwLCC/cCllpsVf7GIpXHudGakjnTZyVqhKYClFHWFDGZALD
         JHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737608498; x=1738213298;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r96a0Nrqo2UkkrFg0KDZFSz7KN4Czt0PvmXacFz6ic4=;
        b=KNg7Bo+xV5XR8x238rCeiWbl8FJ3DZooZwFDaOIDDNqnosWDShnXAkF1xufCfM0dl3
         hKHURsfxsUJ6gZyTUkwucMnWj3zHrkDWpnBd+WXb0fVWercyUDagS9O69nPfPSJuEVsb
         nkrI9Rrp9dKzwsQEFHqA62sTU7n16bGsH79WTWxHj8itSYyoitfWgQyOAHdH9cYaJIyX
         LtbwaxQFdo/0M0GZxusVZKgU5L9tdaOG4iCEEwCZ3ibveHqFfxxj3A7Nm+qObgYO2w9D
         fjm8YeaH+ILONPc+AmCoEKZyjnlZ2a8UAhDWloKw8hwwY1JoWXkqqK2m1MscZBnYCCqC
         OWyw==
X-Gm-Message-State: AOJu0Yzod7DWpIDFoLWwMkjfx9i29kvtMdJQLySLaxtLFSJ2KH7OFUVR
	sufoxUyWh2nW+OIf2EPiwEckkjGfDVxIjzNHMHSFOUQyc6I8V9usNcDW30MWXyUcgMv47D81CaL
	U4saA1ZzTmGGjyfHnPq4aw2OFq7Y=
X-Gm-Gg: ASbGnctsDfOCweLZXiL4kRBlT38+TL7Xfmtlkxumb+9X7MC8dyPBr2GOrX2MxuHNNtP
	TNWSQiHtZISmwT+zxguLALNMvwEiVcW9Sdol2dL4KM7I7Z2Tp6QCZq8FKsx6o8ziIZm53ww==
X-Google-Smtp-Source: AGHT+IEC84/6YKi3CN0Vk3kVq+eDecZWuI6GPU/6Ld+vU0j0FrAEXn+qdHfD5N3sapfz7CJJsTqzZibg7P5a85b2yT8=
X-Received: by 2002:a17:907:3da4:b0:aa6:7933:8b31 with SMTP id
 a640c23a62f3a-ab38b3707bdmr2461000266b.46.1737608497907; Wed, 22 Jan 2025
 21:01:37 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org>
 <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com> <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com>
In-Reply-To: <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 23 Jan 2025 10:31:26 +0530
X-Gm-Features: AbW1kvb666FfP1uAoQNX8gieamGYdoGTfc2gGf6mb5Hw8OcrlHutSniXLcQLqwo
Message-ID: <CAPJWBnj++FkR+qG5vUcWb88bO4oCK2fsMvg-3+HJ07VbpBix2g@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000046d352062c588130"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 05:01:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64612

--00000000000046d352062c588130
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I believe bluez5 should add it but it isn't happening for now. *So I
wanted to add it manually to my build.*
So i needed suggestions on how to do it.



On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> It helps to step back and consider what your actual goal is. A library
> without applications is not useful on the target image. And if you
> install applications into target images, you do not need to worry
> about libraries, they will be pulled into the target image through
> package dependencies.
>
> So what is the task you have?
>
> Alex
>
> On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via
> lists.yoctoproject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > An update,
> > I notice the files are not being added in my image recipe. I have calle=
d
> it correctly but can't see it. Do I need to set any packageconfig variabl=
es?
> >
> >
> >
> >
> > On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via
> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.or=
g>
> wrote:
> >>
> >> Hi guys,
> >> I am facing an issue with the glib-2.0 library. I have added the
> package to my image baserootfs as glib-2.0 . On manually verifying the
> image folder under work directory I can see the /usr/lib and other system
> library file present. But they are not getting added in my final image. i=
.e
> I can see them on my target device. What should I do?
> >>
> >> The build is successful and I don't see any errors so dont know what t=
o
> share with you guys.
> >>
> >> Regards,
> >> Hassan
> >>
> >>
> >>
> >>
> >>
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64608):
> https://lists.yoctoproject.org/g/yocto/message/64608
> > Mute This Topic: https://lists.yoctoproject.org/mt/110748308/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000046d352062c588130
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, I believe bluez5 should add it but it isn&#39;t=C2=
=A0happening for now. <b>So I wanted to add it manually to my build.</b><di=
v>So i needed suggestions on how to do it.</div><div><br></div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jan 22, 2025 at 2:10=E2=80=AFPM Alexander Kanavin &lt;<a href=3D=
"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It =
helps to step back and consider what your actual goal is. A library<br>
without applications is not useful on the target image. And if you<br>
install applications into target images, you do not need to worry<br>
about libraries, they will be pulled into the target image through<br>
package dependencies.<br>
<br>
So what is the task you have?<br>
<br>
Alex<br>
<br>
On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; An update,<br>
&gt; I notice the files are not being added in my image recipe. I have call=
ed it correctly but can&#39;t see it. Do I need to set any packageconfig va=
riables?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via <a href=
=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lis=
ts.yoctoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@l=
ists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</=
a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi guys,<br>
&gt;&gt; I am facing an issue with the glib-2.0 library. I have added the p=
ackage to my image baserootfs as glib-2.0 . On manually verifying the image=
 folder under work directory I can see the /usr/lib and other system librar=
y file present. But they are not getting added in my final image. i.e I can=
 see them on my target device. What should I do?<br>
&gt;&gt;<br>
&gt;&gt; The build is successful and I don&#39;t see any errors so dont kno=
w what to share with you guys.<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Hassan<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#64608): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/64608" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/64608</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11074830=
8/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/110748308/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000046d352062c588130--

