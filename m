Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39595C433FE
	for <webhook@archiver.kernel.org>; Mon, 14 Nov 2022 07:23:28 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web08.3020.1668410600011309647
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 23:23:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id bp15so17803624lfb.13
        for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 23:23:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W3Yy5GrOUAIy5JAnO8tc9iiXS+CEjWj8rTOOHo25E0w=;
        b=GHmomZWJfAPoz2GrLlhg+wAK1umTTCJ/7hDWWlmYbRQCG6gEWs3nP7gwxuA1OzWqag
         J9dkbymY9g2ohkJr5CcFqhydaYJgd5cLDI+zOzZJwbzcSmmkv5uQu+nCZSGytD/9S58P
         0Lvsq/swlcqQq56L3P19CN4zfNmEvY0+05gc4oWOVdUu/O639/puXlfwELYiLcrTOcjv
         zLKTTgUU0eseVykftOhE8K/3/Uv53v4bQ0w0tZngWRErFPZJKglclRkfDPTrYnrwvR3R
         c+fRKrwl+kOwiXdo+2JNMu9t8SqTw+GvGaEy+5IkXJfxUy7jwT5p9uiREtrMq5+E5M6A
         zWyA==
X-Gm-Message-State: ANoB5pkv0Pyj6X/rZEfFvKd9YWJsAumO/URZf16fmlFPp9TkOjbSLyEI
	drxkxCCUTGDXG2RPGqPIiUYcpzGQVzl24u4mSuo=
X-Google-Smtp-Source: AA0mqf64mqC9r534niMsK2ezBaoyftJfpT9afSG9uE+gNIeZLIMyv2VB6otaFmHM1b3rbrGJKMfUNSD5+n1BcGZino0=
X-Received: by 2002:a05:6512:1055:b0:4b4:8d47:7057 with SMTP id
 c21-20020a056512105500b004b48d477057mr4044087lfb.376.1668410597981; Sun, 13
 Nov 2022 23:23:17 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com> <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
In-Reply-To: <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Mon, 14 Nov 2022 08:23:06 +0100
Message-ID: <CAM6O0ZgWmE5NRg-65DKfUC_X5Ep_TvsPLSXhB1Ty4GXmZPYcag@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yishai Jaffe <yishai1999@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000842e705ed691d9a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 07:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58553

--0000000000000842e705ed691d9a
Content-Type: text/plain; charset="UTF-8"

Hello Alex,

Il giorno dom 13 nov 2022 alle ore 16:12 Alexander Kanavin <
alex.kanavin@gmail.com> ha scritto:

> Generally we slim down python installations by not installing all of
> the standard library, and rather having precise dependencies for
> specific modules. Can you illustrate the kind of space savings that
> can be gained in actual numbers?
>

Just to go with some concrete numbers from a Buildroot example I have under
my hands, with just very basic Python 3.10 support (so no additional
modules, just what gets in with only BR2_PACKAGE_PYTHON3=y) the difference
of size you have between using PYC only (BR2_PACKAGE_PYTHON3_PYC_ONLY=y)
and source only (BR2_PACKAGE_PYTHON3_PY_ONLY=y) of the generated
/usr/lib/python3.10 is 14Mb vs 17Mb. So roughly a 20% ?

Besides the space savings, using the PYC only brings also a speedup in
startup of course.

But strictly on space savings: one should also take into account that the
difference we see is not counting the fact that very often then one has a
compressed filesystem underneath. This is especially true when you have
space constrained embedded devices where you'd like to save space, but not
necessarily that -20% is effective, once you take into account the
filesystem compression.

(please note: not the original thread initiator asking to support this in
Yocto, just chimed in soon after as dealed with this in different context
;-) )


>
> Another issue is that this should be supported upstream and in the
> wider python community. Is it?
>

That is the problem IMO: if you look at the linked github issue I posted
last, I don't think there is a full agreement. So while things mostly work
(and pretty well), there are some edge cases for sure (ie trivially
handling pyc compiled scripts or modules that could be executed as scripts
as well as modules). (here is some discussion:
http://lists.busybox.net/pipermail/buildroot/2022-August/648686.html )

Cheers,
Federico





>
> Alex
>
> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org>
> wrote:
> >
> >
> > Hello,
> > Just as a small reference since I raised some doubts and questions in
> Buildroot community on this: there has been also some troubles to
> understand the correctness or not there (as I found some packages with
> problems due to this source-less management) and this then sparked, besides
> discussions in the Buildroot mailing list (roughly end of July / beginning
> of August if someone interested searching there), also an issue to the
> Python community, which albeit some discussion I think never arrived to a
> concrete conclusion. This is the issue:
> https://github.com/python/cpython/issues/95827 (see also the linked one
> maybe)
> >
> > These are just my 2 cents to this discussion, then of course the Python
> experts will probably chime in and describe the official/discussed position
> of Yocto regarding to this, but just felt like mentioning that although
> Buildroot is somehow offering this right now (and likely mostly works as
> well!), it's not really a so clean and/or agreed solution.
> >
> > Cheers,
> > Federico
> >
> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <
> yishai1999@gmail.com> ha scritto:
> >>
> >> Hi,
> >> I was wondering if there has been talk about support for source-less
> python on an image. Installing py and pyc files doubles the size of python
> on the rootfs. I can imagine this being implemented as an image feature.
> >> I know that in buildroot it is supported.
> >> Was this discussed and decided against? Is this an open issue?
> >> I have a working patch that implements this. I can submit it for review.
> >>
> >> Thanks,
> >> Yishai Jaffe
> >> Yishai Jaffe
> >>
> >>
> >>
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58549):
> https://lists.yoctoproject.org/g/yocto/message/58549
> > Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--0000000000000842e705ed691d9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hello Alex,</div><br>=
</div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il g=
iorno dom 13 nov 2022 alle ore 16:12 Alexander Kanavin &lt;<a href=3D"mailt=
o:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; =
ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Gene=
rally we slim down python installations by not installing all of<br>
the standard library, and rather having precise dependencies for<br>
specific modules. Can you illustrate the kind of space savings that<br>
can be gained in actual numbers?<br></blockquote><div><br></div><div><div d=
ir=3D"ltr"><div>Just to go with some concrete numbers from a Buildroot exam=
ple I have under my hands, with just very basic Python 3.10 support (so no =
additional modules, just what gets in with only BR2_PACKAGE_PYTHON3=3Dy) th=
e difference of size you have between using PYC only (BR2_PACKAGE_PYTHON3_P=
YC_ONLY=3Dy) and source only (BR2_PACKAGE_PYTHON3_PY_ONLY=3Dy) of the gener=
ated /usr/lib/python3.10 is 14Mb vs 17Mb. So roughly a 20% ?</div><div><br>=
</div><div>Besides the space savings, using the PYC only brings also a spee=
dup in startup of course.</div><div><br></div><div>But strictly on space sa=
vings: one should also take into account that the difference we see is not =
counting the fact that very often then one has a compressed filesystem unde=
rneath. This is especially true when you have space constrained embedded de=
vices where you&#39;d like to save space, but not necessarily that -20% is =
effective, once you take into account the filesystem compression.</div><div=
><br></div><div>(please note: not the original thread initiator asking to s=
upport this in Yocto, just chimed in soon after as dealed with this in diff=
erent context ;-) )<br></div></div></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Another issue is that this should be supported upstream and in the<br>
wider python community. Is it?<br></blockquote><div><br></div><div>That is =
the problem IMO: if you look at the linked github issue I posted last, I do=
n&#39;t think there is a full agreement. So while things mostly work (and p=
retty well), there are some edge cases for sure (ie trivially handling pyc =
compiled scripts or modules that could be executed as scripts as well as mo=
dules). (here is some discussion: <a href=3D"http://lists.busybox.net/piper=
mail/buildroot/2022-August/648686.html">http://lists.busybox.net/pipermail/=
buildroot/2022-August/648686.html</a> )<br></div><div><br></div><div>Cheers=
,</div><div>Federico</div><div><br></div><div><br></div><div><br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Alex<br>
<br>
On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin &lt;<a href=3D"mailto:fede=
@evolware.org" target=3D"_blank">fede@evolware.org</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; Hello,<br>
&gt; Just as a small reference since I raised some doubts and questions in =
Buildroot community on this: there has been also some troubles to understan=
d the correctness or not there (as I found some packages with problems due =
to this source-less management) and this then sparked, besides discussions =
in the Buildroot mailing list (roughly end of July / beginning of August if=
 someone interested searching there), also an issue to the Python community=
, which albeit some discussion I think never arrived to a concrete conclusi=
on. This is the issue: <a href=3D"https://github.com/python/cpython/issues/=
95827" rel=3D"noreferrer" target=3D"_blank">https://github.com/python/cpyth=
on/issues/95827</a> (see also the linked one maybe)<br>
&gt;<br>
&gt; These are just my 2 cents to this discussion, then of course the Pytho=
n experts will probably chime in and describe the official/discussed positi=
on of Yocto regarding to this, but just felt like mentioning that although =
Buildroot is somehow offering this right now (and likely mostly works as we=
ll!), it&#39;s not really a so clean and/or agreed solution.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Federico<br>
&gt;<br>
&gt; Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe &lt;<a href=3D"m=
ailto:yishai1999@gmail.com" target=3D"_blank">yishai1999@gmail.com</a>&gt; =
ha scritto:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt; I was wondering if there has been talk about support for source-le=
ss python on an image. Installing py and pyc files doubles the size of pyth=
on on the rootfs. I can imagine this being implemented as an image feature.=
<br>
&gt;&gt; I know that in buildroot it is supported.<br>
&gt;&gt; Was this discussed and decided against? Is this an open issue?<br>
&gt;&gt; I have a working patch that implements this. I can submit it for r=
eview.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Yishai Jaffe<br>
&gt;&gt; Yishai Jaffe<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58549): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58549" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/58549</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94997538=
/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/94997538/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">ale=
x.kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--0000000000000842e705ed691d9a--

