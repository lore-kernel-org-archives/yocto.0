Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9C9C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 00:15:09 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.18796.1633392908981709773
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 17:15:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=G2r8g5Zl;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id z15so1144339qvj.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 17:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x7RuQNIDbckxaB5t8BY/l2DuAOin8i6sGDl+M26tho8=;
        b=G2r8g5ZluHLYWI21hEZthRKI1YfDZvWbwUfkV3l/rhpIotnMNK+rnD6lKIMI+YtQ3O
         8LyvoW8saRSTHYOpi3XimjKHM0Tk24Ld7tg0ZfojQWwk0VSxkr+tFkg+Gbdjy2qOq8/z
         WFnU6As6ydF+SvS92Wa6g1pxNLZBIbWf7bBh9RqU23qgksMmjoS9i2kMcZ6Ws2GDpSXx
         4kKZHzyDmf2R92d3t97AtqVeaGgH7BnFQCQMi5Vvdh3X7jD/m9NyrNRhGreeNZaH/ZEg
         7S5eadcz2Fe68xbe7n3IH+FU3MRnrnUbPDbCB7OTV4fNLHtz7bslwyJPk9VRy4bEk1IN
         kJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x7RuQNIDbckxaB5t8BY/l2DuAOin8i6sGDl+M26tho8=;
        b=n7HI/gnvqY0vVKnRz8QzTz9gnjhaW5sIYj83NdF0QbU3xJfBF+7DBeauHhWF4ayOee
         kmGxF2OffACN7ElBDtd05+jZVVVfHMLWmwYm/QSTZR0QV3wL8hupQYxlwtPZ61mP7P0m
         y9pwNEdYic9HBnC47dx0OEi9Gw9lN6HYyXTIHdhRnf/g3a1wWVcvew6MYFsdgq8JyhDb
         ZNeMGA/Bwve/yHcMlNGvmNDZo9iVDzKqoHgLn3ucCyAY5jjO/CulTpHVio0UJRXsHjM/
         psHOCuzGKjrzaowm4ZM038cYChLzEngQ02C/T6mDUSwjn10jz7zb7SJUHvH0lgMtUla+
         X84A==
X-Gm-Message-State: AOAM531lyMvP7eVaLL7yg/WWGUnyCqWgwS8Ctlm8c+jP5UxnEjjFpIFi
	LZJsY0KpYBqqzKt0pAdvE7gojHrnkS/l6l88EDQ=
X-Google-Smtp-Source: 
 ABdhPJzwR+OllM60cBmLEZQz1L8p4dERKCUEY+2hQC05eMFnHhM9niMYAGnRSVzghNleh1xVX9Shg0+E6UBrITKJ83c=
X-Received: by 2002:a0c:8061:: with SMTP id 88mr24695960qva.5.1633392908055;
 Mon, 04 Oct 2021 17:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <0c6e789aba8141509bb31779a8393cbf@sakuraus.com>
 <0a038b52-6f11-662a-8d77-786919852079@gmail.com>
 <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
In-Reply-To: <aa11888f9dc34eed9383c55ceae3eb9f@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Oct 2021 17:14:57 -0700
Message-ID: 
 <CAMKF1srthNYZQq_N8p5s_z2KYyWhQ-xb8T5X=+JYri7G2iobmg@mail.gmail.com>
Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000010371505cd8fec13"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 00:15:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54947

--00000000000010371505cd8fec13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It should have automatically found user land package as one of providers
but if it is not doing so that means it=E2=80=99s being ignored because it=
=E2=80=99s not
compatible arch or something
Are you compiling 32bit mode ?


On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

> Hi Khem,
> Yes, the Raspberry Pi boards do use closed source drivers. What I need is
> how do I include the proper package that will bring in the necessary
> virtual/egl for the Raspberry Pi 4.
>
> Greg
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Monday, October 4, 2021 14:17
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>;
> > yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] virtual/egl on Raspberry Pi 4
> >
> >
> >
> > On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:
> > > Hello list,
> > >
> > > I'm working on a Qt supplied boot2qt Yocto build currently based on
> > > Zeus that is running on a Raspberry Pi 4. I recently updated the qt
> > > version to 5.15.6 and Qt changed something in the Yocto configuration
> > > that they are using and now one of the recipes that we use is failing
> > > saying that in needs 'virtual/egl' but that it is not provided by any
> recipe.
> > >
> > > In the searching that I have done I have found that the raspberry pi =
4
> > > is particular on which package supplies the virtual/egl but I haven't
> > > seen anything that indicates what I should do to re-enable it.
> > >
> > > Can anyone tell me what I need to do to enable the correct driver to
> > > get virtual/egl provided on the Raspberry Pi 4? Or maybe even better,
> > > how I could search through the packages that are enabled on the old
> > > and new Yocto trees so that I can figure out what changed between the
> > > releases and re-enable the virtual/egl.
> > >
> >
> > it should be provided by userland package if you are using closed sourc=
e
> > graphics driver.
> >
> > > Best Regards,
> > >
> > > Greg Wilson-Lindberg
> > >
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > You automatically follow any topics you start or reply to.
> > > View/Reply Online (#54943):
> > > https://lists.yoctoproject.org/g/yocto/message/54943
> > > Mute This Topic: https://lists.yoctoproject.org/mt/86076611/1997914
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > > [raj.khem@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
>

--00000000000010371505cd8fec13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It should have automatically found user land package as o=
ne of providers but if it is not doing so that means it=E2=80=99s being ign=
ored because it=E2=80=99s not compatible arch or something=C2=A0</div><div =
dir=3D"auto">Are you compiling 32bit mode ?=C2=A0</div><div dir=3D"auto"><b=
r></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Oct 4, 2021 at 4:08 PM Greg Wilson-Lindberg &lt;<a href=3D"m=
ailto:GWilson@sakuraus.com">GWilson@sakuraus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Hi Khem,<br>
Yes, the Raspberry Pi boards do use closed source drivers. What I need is h=
ow do I include the proper package that will bring in the necessary virtual=
/egl for the Raspberry Pi 4.<br>
<br>
Greg<br>
&gt; -----Original Message-----<br>
&gt; From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;<br>
&gt; Sent: Monday, October 4, 2021 14:17<br>
&gt; To: Greg Wilson-Lindberg &lt;<a href=3D"mailto:GWilson@sakuraus.com" t=
arget=3D"_blank">GWilson@sakuraus.com</a>&gt;;<br>
&gt; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoct=
o@lists.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] virtual/egl on Raspberry Pi 4<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; On 10/4/21 12:39 PM, Greg Wilson-Lindberg wrote:<br>
&gt; &gt; Hello list,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m working on a Qt supplied boot2qt Yocto build currently ba=
sed on<br>
&gt; &gt; Zeus that is running on a Raspberry Pi 4. I recently updated the =
qt<br>
&gt; &gt; version to 5.15.6 and Qt changed something in the Yocto configura=
tion<br>
&gt; &gt; that they are using and now one of the recipes that we use is fai=
ling<br>
&gt; &gt; saying that in needs &#39;virtual/egl&#39; but that it is not pro=
vided by any recipe.<br>
&gt; &gt;<br>
&gt; &gt; In the searching that I have done I have found that the raspberry=
 pi 4<br>
&gt; &gt; is particular on which package supplies the virtual/egl but I hav=
en&#39;t<br>
&gt; &gt; seen anything that indicates what I should do to re-enable it.<br=
>
&gt; &gt;<br>
&gt; &gt; Can anyone tell me what I need to do to enable the correct driver=
 to<br>
&gt; &gt; get virtual/egl provided on the Raspberry Pi 4? Or maybe even bet=
ter,<br>
&gt; &gt; how I could search through the packages that are enabled on the o=
ld<br>
&gt; &gt; and new Yocto trees so that I can figure out what changed between=
 the<br>
&gt; &gt; releases and re-enable the virtual/egl.<br>
&gt; &gt;<br>
&gt; <br>
&gt; it should be provided by userland package if you are using closed sour=
ce<br>
&gt; graphics driver.<br>
&gt; <br>
&gt; &gt; Best Regards,<br>
&gt; &gt;<br>
&gt; &gt; Greg Wilson-Lindberg<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; You automatically follow any topics you start or reply to.<br>
&gt; &gt; View/Reply Online (#54943):<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/54943" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/message/54943</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/860=
76611/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/86076611/1997914</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a><br>
&gt; &gt; [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem=
@gmail.com</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
</blockquote></div></div>

--00000000000010371505cd8fec13--

