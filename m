Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0176AC4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 11:08:06 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web10.81545.1701947283460964508
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 03:08:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c6csiEC5;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: quaresma.jose@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3b9d65d184aso532175b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 03:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701947283; x=1702552083; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QKIJTDFfyBHw/ZvTbBb3VxoY5EK6/Jvdit/WyJKC6dk=;
        b=c6csiEC5AteOvFEllHiH6w+EatEbsYVZM01FiiDcbtPE9XM+BfhaWLS6zKo1urDxSD
         6rCqmkTE3RC6g+8fi1Myor2DKwFYbySbdVWkujP8zIRq4FcJv29FRfz2OCOQmSMX6jJf
         whmn5URWSHwb9kK+3M1Wqb6Bo21Q2kZtLSBteMEJT9u2XV9+ZWyGGe4JqrnG/tD/et8q
         UVKuiwVbkTR9w1lMOwpoitjIzgUVegU66zmMgheIKMYJ5WSFMatkU3nzGdYDmBWhscI6
         3r7rbRJqXjvGWlt+Gzg2YjAzcTWBe/IpId118XXTtR50pX/KJOaLE0UBwDoP64QObYK+
         GQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701947283; x=1702552083;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QKIJTDFfyBHw/ZvTbBb3VxoY5EK6/Jvdit/WyJKC6dk=;
        b=XcZPrBNmwFUskyyxdP3Ak3hTuPTQ5BiF+TYrln4/5qrUa/LeLbX1kd5aQcgL7UhBCm
         hX+uYmiHAnrjG454wKouLoWqt9bxp0lN0B58MxlsWtR+Az0vlanLEnmFeF/ZeQhW8YuR
         ADSW7cTgUy7c6iBTLWsXwi6VM52qYiju3eIoN9K7KFUlmqocAK83jLcTyPN/12rVuNxx
         4xGM2aDwnYdafwMbv5x99bo/+QasZ4QQUE7OI+4bo+6JUeRDyAKuQZUERCbW15NVEkNj
         qFySUQErNlSbP9BP3rt3cPA+EgUOcITgOJF7eK9396MonkoVk5APH2JtDPfR6dIH055t
         Pt2Q==
X-Gm-Message-State: AOJu0YzOj1E0PdBhk50K+LBQGY7eoeg7QCoR72n9n3QAzK8sc768I/R7
	LrH73LHoGS+gysAmFIm7b8bPdp37cwlogJFizUs=
X-Google-Smtp-Source: AGHT+IEGUv+IGUbffLknPIk/fuGIkFW8L975V/+W3G4aEadkWsEDUcXIwDySEhF6NgOoIF9gM5UD32uf2ea5zH37nbk=
X-Received: by 2002:a05:6808:10b:b0:3b8:b063:5d57 with SMTP id
 b11-20020a056808010b00b003b8b0635d57mr2714509oie.62.1701947282728; Thu, 07
 Dec 2023 03:08:02 -0800 (PST)
MIME-Version: 1.0
References: <20231204183055.29931-1-antonio@amsobr.com> <CANPvuR=iEOwO_Jt4M-GOPWxCPf00CfNe=A_sziLhbpFjkn4s=g@mail.gmail.com>
 <CAGfGMDERE=08mjBuugHFB=Xui20ZYmfK59_6vhGEgfsPg3kWuQ@mail.gmail.com>
In-Reply-To: <CAGfGMDERE=08mjBuugHFB=Xui20ZYmfK59_6vhGEgfsPg3kWuQ@mail.gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 7 Dec 2023 11:07:51 +0000
Message-ID: <CANPvuR=yAkLmmeY5smp_9HfgSnQoq25itpTX+4ZkSjShRfCn2A@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH 0/1] lts mixin: kirkstone/nodejs proposal
To: =?UTF-8?Q?Ant=C3=B3nio_Oliveira?= <antonio@amsobr.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000036aa66060be97b45"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 11:08:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61825

--00000000000036aa66060be97b45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia ter=C3=A7a, 5/12=
/2023 =C3=A0(s)
18:26:

> On Tue, Dec 5, 2023 at 10:44=E2=80=AFAM Jose Quaresma <quaresma.jose@gmai=
l.com>
> wrote:
> >
> >
> >
> > Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia segunda,
> 4/12/2023 =C3=A0(s) 18:31:
> >>
> >> Hi all,
> >>
> >> This patch contains my proposal for an mixin layer that adds nodejs v1=
8
> >> and v20 to kirkstone.
> >>
> >> Kirkstone ships with nodejs-16, whose maintenance window ended in
> >> October 2023 (a).
> >>
> >> Kirkstone will be supported until April 2026 and it would be nice to
> have
> >> some level of support for a maintained version of nodejs during that
> time
> >> window.
> >>
> >> This proposal seeks to address that by adding nodejs-18 and nodejs-20,
> >> which will be maintained until April 2025 and 2026, respectively.
> >>
> >> The recipes for nodejs-18 are taken from Mickledore and the recipes fo=
r
> >> nodejs-20 from master.
> >>
> >> The variable NODE_VERSION can be ser in local.conf to choose either v1=
8
> >> or v20 (the default).
> >>
> >> This is my first attempt at sending a patch upstream with git send-ema=
il
> >> so any comments or suggestions for improvement are welcome. That's als=
o
> >> the reason why I marked this as an RFC.
> >
> >
> > Hi Antonio,
> >
> > If the patchset was made with more and smaller commits it would make th=
e
> review easier
> > but it is perfect in my opinion with the context well explained.
> > The git send-mail is much simpler than it seems.
> > Thanks for your contributions.
>
> I thought of that but couldn't really settle for something.
>
> I guess I can break it down into smaller pieces, like:
> * layer config, license, readme...
> * nodejs-18
> * nodejs-20
> * setting the choice of node version in layer.conf.
>
> Would that work?
>

It will be better in my opinion but not strictly necessary.

Jose


>
> I can break
> >
> > Jose
> >
> >>
> >>
> >> Cheers,
> >> Ant=C3=B3nio
> >>
> >> Ant=C3=B3nio Oliveira (1):
> >>   initial commit
> >>
> >> --
> >> 2.34.1
> >>
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#61791):
> https://lists.yoctoproject.org/g/yocto/message/61791
> >> Mute This Topic: https://lists.yoctoproject.org/mt/102976461/5052612
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
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

--00000000000036aa66060be97b45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Ant=C3=B3nio Oliveira &lt;<a href=3D"=
mailto:antonio@amsobr.com">antonio@amsobr.com</a>&gt; escreveu no dia ter=
=C3=A7a, 5/12/2023 =C3=A0(s) 18:26:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Tue, Dec 5, 2023 at 10:44=E2=80=AFAM Jose Quaresma &=
lt;<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quaresma.jo=
se@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Ant=C3=B3nio Oliveira &lt;<a href=3D"mailto:antonio@amsobr.com" target=
=3D"_blank">antonio@amsobr.com</a>&gt; escreveu no dia segunda, 4/12/2023 =
=C3=A0(s) 18:31:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; This patch contains my proposal for an mixin layer that adds nodej=
s v18<br>
&gt;&gt; and v20 to kirkstone.<br>
&gt;&gt;<br>
&gt;&gt; Kirkstone ships with nodejs-16, whose maintenance window ended in<=
br>
&gt;&gt; October 2023 (a).<br>
&gt;&gt;<br>
&gt;&gt; Kirkstone will be supported until April 2026 and it would be nice =
to have<br>
&gt;&gt; some level of support for a maintained version of nodejs during th=
at time<br>
&gt;&gt; window.<br>
&gt;&gt;<br>
&gt;&gt; This proposal seeks to address that by adding nodejs-18 and nodejs=
-20,<br>
&gt;&gt; which will be maintained until April 2025 and 2026, respectively.<=
br>
&gt;&gt;<br>
&gt;&gt; The recipes for nodejs-18 are taken from Mickledore and the recipe=
s for<br>
&gt;&gt; nodejs-20 from master.<br>
&gt;&gt;<br>
&gt;&gt; The variable NODE_VERSION can be ser in local.conf to choose eithe=
r v18<br>
&gt;&gt; or v20 (the default).<br>
&gt;&gt;<br>
&gt;&gt; This is my first attempt at sending a patch upstream with git send=
-email<br>
&gt;&gt; so any comments or suggestions for improvement are welcome. That&#=
39;s also<br>
&gt;&gt; the reason why I marked this as an RFC.<br>
&gt;<br>
&gt;<br>
&gt; Hi Antonio,<br>
&gt;<br>
&gt; If the patchset was made with more and smaller commits it would make t=
he review easier<br>
&gt; but it is perfect in my opinion with the context well explained.<br>
&gt; The git send-mail is much simpler than it seems.<br>
&gt; Thanks for your contributions.<br>
<br>
I thought of that but couldn&#39;t really settle for something.<br>
<br>
I guess I can break it down into smaller pieces, like:<br>
* layer config, license, readme...<br>
* nodejs-18<br>
* nodejs-20<br>
* setting the choice of node version in layer.conf.<br>
<br>
Would that work?<br></blockquote><div><br>It will be better in my opinion b=
ut not strictly necessary.<br><br>Jose=C2=A0<br>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
<br>
I can break<br>
&gt;<br>
&gt; Jose<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Ant=C3=B3nio<br>
&gt;&gt;<br>
&gt;&gt; Ant=C3=B3nio Oliveira (1):<br>
&gt;&gt;=C2=A0 =C2=A0initial commit<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; 2.34.1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; View/Reply Online (#61791): <a href=3D"https://lists.yoctoproject.=
org/g/yocto/message/61791" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/message/61791</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/1029=
76461/5052612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/102976461/5052612</a><br>
&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.or=
g" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/uns=
ub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank=
">quaresma.jose@gmail.com</a>]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Jos=C3=A9 Quaresma<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000036aa66060be97b45--

