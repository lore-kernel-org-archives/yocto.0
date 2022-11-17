Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCC7C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 12:27:53 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.14250.1668688065929284514
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 04:27:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nk3CqcWd;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: yishai1999@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-13bef14ea06so1959467fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 04:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jxc7Rk6ev2GdYHz46M5HWdLaOMiQlIXaj+6/4Pn9ifQ=;
        b=Nk3CqcWdA92QWVQNgbacuChX1+mt91FNxrgRK2fTNu87a578Nppxoc3qGMLye1qzm8
         NKWQ6ulylqcQvuRfDGK48iT4NmM3xwIGY+WxOvBOQHo84giFMybeeXSWjI6pmJP2dyX5
         RsU8vEBgZywgGu77ZH/wBaYJR3PdU5chKZiGHeHL4Cmbr6rPGKp98KqUjZDp7M6vM4Tx
         J5pISrFDmgg0UQrnnPMkFC6aLUcrtbwLd+Nw0NYVOvlLA58YT+0xv7EqXRqF3HuLaneH
         cuPaGPMmJ9TCWunrZOTqEvGjbN4/VfLUcZSOpogiP8X8JnOLMV34lAbR1Spwc2kPzKD6
         pzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jxc7Rk6ev2GdYHz46M5HWdLaOMiQlIXaj+6/4Pn9ifQ=;
        b=3C2SvsNl7ND5oZnwHGpwG58yePWf1kLlFsYtYRfnakgylNL9KdUCFwXdk+B5r9K5dm
         /IRhwIExHAUDIb8yuSNhKFzs9/jRW0Z3z5Bhz6X+PlzECs3aRxrfaHo/90167rxxVnUk
         jPGBv8ju1XhtWxmDQux2T03BMJ+9hGLGWJpFxnsWzu0x1GasNoWCIGxha1fi0sRY+Q7L
         S0PJ6Yp2hUHnfABO4qyTBRf8t/SKtb0YY+rFyPc9N1XEmzq3rVLiyXKZDGN98AWJw177
         +1VFPha39ZsIlyISVCw0tLVs1UK+VO7vhljywtaoj8PeyfmWdiSyDxuD9HCdUYBhqbfi
         S0kw==
X-Gm-Message-State: ANoB5pnlY+OFfm0V2V3vVcMKhnvMONHXW6rwyhguKFJBF21cjbtzleNc
	FoNUumqjfH0EjM6F250BjA+wKtCe7A5WwdbWmnU=
X-Google-Smtp-Source: AA0mqf5g9H0eyOGW8a5aDT354/rkFaH95HMc+ykXOAKolszhIvw+W1i7HvZTPlrvJWLe5ddb4Mpj4wW0cqJX7V75ww4=
X-Received: by 2002:a05:6870:89a1:b0:13c:45c8:ab01 with SMTP id
 f33-20020a05687089a100b0013c45c8ab01mr4085337oaq.189.1668688065168; Thu, 17
 Nov 2022 04:27:45 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
 <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
 <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
 <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com> <CANNYZj9Jg9z25eK_jjZFSgOi5Vok_50+DCXih15zUs-q77eLyA@mail.gmail.com>
In-Reply-To: <CANNYZj9Jg9z25eK_jjZFSgOi5Vok_50+DCXih15zUs-q77eLyA@mail.gmail.com>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Thu, 17 Nov 2022 14:27:33 +0200
Message-ID: <CAJw49vrQnOVJEZkYQMWCe2jwdEE=WfG5Tv7U7pEgcpF0ez1KDQ@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005d8a5b05eda9b738"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 12:27:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58583

--0000000000005d8a5b05eda9b738
Content-Type: text/plain; charset="UTF-8"

What layer would you suggest?

Yishai Jaffe

On Thu, Nov 17, 2022, 2:21 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You can start by placing it in a separate layer?
>
> Alex
>
> On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe <yishai1999@gmail.com> wrote:
> >
> > I assume by core you mean openembedded-core/poky, yes?
> >
> > So where would you add it to?
> >
> > Seems to me like a very useful feature that many people would use if
> they knew the option exists.
> >
> > Also, I noticed that in the recipe for python there is a variable named
> INCLUDE_PYC which does exactly what you think it would. This looks to me
> like someone did think about the whole python size subject but didn't
> exactly go through with it all the way. You can decide if to include pyc
> files but not the opposite. Also, this feature which does exist only
> applies to the python recipe but not to all other non-base python module
> recipes. Maybe this can be added to setuptools3 bbclass?
> >
> > Yishai Jaffe
> >
> > On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
> >>
> >> I just wonder if this should really be in core. The standards for core
> >> are high: it needs to be both testable and tested, and there's only so
> >> many possible options and tweaks where things can regress that we can
> >> take. On the other hand, there has not been much demand for it.
> >>
> >> Alex
> >>
> >> On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com>
> wrote:
> >> >
> >> > Hi Alexander,
> >> >
> >> > After some research, these are the numbers I came up with for
> compiling core-image-minimal with python3-core:
> >> >
> >> > Normal compilation:
> >> > tar.bz2 - 6.6MB
> >> > squashfs-xz - 6.1MB
> >> >
> >> > With my pyc-only patch:
> >> > tar.bz2 - 5.8MB
> >> > squashfs-xz - 5.2MB
> >> >
> >> > So that's about a 15% decrease in size.
> >> > Again, this is for an image only with python3-core. Logically that
> would mean that if you had an image with more python packages it would be
> even a bigger percentage.
> >> >
> >> >
> >> > Yishai Jaffe
> >> >
> >> >
> >> > On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >> >>
> >> >> Generally we slim down python installations by not installing all of
> >> >> the standard library, and rather having precise dependencies for
> >> >> specific modules. Can you illustrate the kind of space savings that
> >> >> can be gained in actual numbers?
> >> >>
> >> >> Another issue is that this should be supported upstream and in the
> >> >> wider python community. Is it?
> >> >>
> >> >> Alex
> >> >>
> >> >> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org>
> wrote:
> >> >> >
> >> >> >
> >> >> > Hello,
> >> >> > Just as a small reference since I raised some doubts and questions
> in Buildroot community on this: there has been also some troubles to
> understand the correctness or not there (as I found some packages with
> problems due to this source-less management) and this then sparked, besides
> discussions in the Buildroot mailing list (roughly end of July / beginning
> of August if someone interested searching there), also an issue to the
> Python community, which albeit some discussion I think never arrived to a
> concrete conclusion. This is the issue:
> https://github.com/python/cpython/issues/95827 (see also the linked one
> maybe)
> >> >> >
> >> >> > These are just my 2 cents to this discussion, then of course the
> Python experts will probably chime in and describe the official/discussed
> position of Yocto regarding to this, but just felt like mentioning that
> although Buildroot is somehow offering this right now (and likely mostly
> works as well!), it's not really a so clean and/or agreed solution.
> >> >> >
> >> >> > Cheers,
> >> >> > Federico
> >> >> >
> >> >> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <
> yishai1999@gmail.com> ha scritto:
> >> >> >>
> >> >> >> Hi,
> >> >> >> I was wondering if there has been talk about support for
> source-less python on an image. Installing py and pyc files doubles the
> size of python on the rootfs. I can imagine this being implemented as an
> image feature.
> >> >> >> I know that in buildroot it is supported.
> >> >> >> Was this discussed and decided against? Is this an open issue?
> >> >> >> I have a working patch that implements this. I can submit it for
> review.
> >> >> >>
> >> >> >> Thanks,
> >> >> >> Yishai Jaffe
> >> >> >> Yishai Jaffe
> >> >> >>
> >> >> >>
> >> >> >>
> >> >> >
> >> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> >> > Links: You receive all messages sent to this group.
> >> >> > View/Reply Online (#58549):
> https://lists.yoctoproject.org/g/yocto/message/58549
> >> >> > Mute This Topic:
> https://lists.yoctoproject.org/mt/94997538/1686489
> >> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> >> >
>

--0000000000005d8a5b05eda9b738
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What layer would you suggest?<br><br><div data-smartmail=
=3D"gmail_signature">Yishai Jaffe </div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 17, 2022, 2:21 PM Alexa=
nder Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You can start=
 by placing it in a separate layer?<br>
<br>
Alex<br>
<br>
On Thu, 17 Nov 2022 at 13:04, Yishai Jaffe &lt;<a href=3D"mailto:yishai1999=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai1999@gmail.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt; I assume by core you mean openembedded-core/poky, yes?<br>
&gt;<br>
&gt; So where would you add it to?<br>
&gt;<br>
&gt; Seems to me like a very useful feature that many people would use if t=
hey knew the option exists.<br>
&gt;<br>
&gt; Also, I noticed that in the recipe for python there is a variable name=
d INCLUDE_PYC which does exactly what you think it would. This looks to me =
like someone did think about the whole python size subject but didn&#39;t e=
xactly go through with it all the way. You can decide if to include pyc fil=
es but not the opposite. Also, this feature which does exist only applies t=
o the python recipe but not to all other non-base python module recipes. Ma=
ybe this can be added to setuptools3 bbclass?<br>
&gt;<br>
&gt; Yishai Jaffe<br>
&gt;<br>
&gt; On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noreferrer">alex.kanavin@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I just wonder if this should really be in core. The standards for =
core<br>
&gt;&gt; are high: it needs to be both testable and tested, and there&#39;s=
 only so<br>
&gt;&gt; many possible options and tweaks where things can regress that we =
can<br>
&gt;&gt; take. On the other hand, there has not been much demand for it.<br=
>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe &lt;<a href=3D"mailto:y=
ishai1999@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai1999@gmail.=
com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Alexander,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; After some research, these are the numbers I came up with for=
 compiling core-image-minimal with python3-core:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Normal compilation:<br>
&gt;&gt; &gt; tar.bz2 - 6.6MB<br>
&gt;&gt; &gt; squashfs-xz - 6.1MB<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; With my pyc-only patch:<br>
&gt;&gt; &gt; tar.bz2 - 5.8MB<br>
&gt;&gt; &gt; squashfs-xz - 5.2MB<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So that&#39;s about a 15% decrease in size.<br>
&gt;&gt; &gt; Again, this is for an image only with python3-core. Logically=
 that would mean that if you had an image with more python packages it woul=
d be even a bigger percentage.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Yishai Jaffe<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noreferrer">ale=
x.kanavin@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Generally we slim down python installations by not instal=
ling all of<br>
&gt;&gt; &gt;&gt; the standard library, and rather having precise dependenc=
ies for<br>
&gt;&gt; &gt;&gt; specific modules. Can you illustrate the kind of space sa=
vings that<br>
&gt;&gt; &gt;&gt; can be gained in actual numbers?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Another issue is that this should be supported upstream a=
nd in the<br>
&gt;&gt; &gt;&gt; wider python community. Is it?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Alex<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin &lt;<a h=
ref=3D"mailto:fede@evolware.org" target=3D"_blank" rel=3D"noreferrer">fede@=
evolware.org</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt;&gt; &gt; Just as a small reference since I raised some doubts=
 and questions in Buildroot community on this: there has been also some tro=
ubles to understand the correctness or not there (as I found some packages =
with problems due to this source-less management) and this then sparked, be=
sides discussions in the Buildroot mailing list (roughly end of July / begi=
nning of August if someone interested searching there), also an issue to th=
e Python community, which albeit some discussion I think never arrived to a=
 concrete conclusion. This is the issue: <a href=3D"https://github.com/pyth=
on/cpython/issues/95827" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tps://github.com/python/cpython/issues/95827</a> (see also the linked one m=
aybe)<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; These are just my 2 cents to this discussion, then o=
f course the Python experts will probably chime in and describe the officia=
l/discussed position of Yocto regarding to this, but just felt like mention=
ing that although Buildroot is somehow offering this right now (and likely =
mostly works as well!), it&#39;s not really a so clean and/or agreed soluti=
on.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt; Federico<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaff=
e &lt;<a href=3D"mailto:yishai1999@gmail.com" target=3D"_blank" rel=3D"nore=
ferrer">yishai1999@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt; &gt;&gt; I was wondering if there has been talk about sup=
port for source-less python on an image. Installing py and pyc files double=
s the size of python on the rootfs. I can imagine this being implemented as=
 an image feature.<br>
&gt;&gt; &gt;&gt; &gt;&gt; I know that in buildroot it is supported.<br>
&gt;&gt; &gt;&gt; &gt;&gt; Was this discussed and decided against? Is this =
an open issue?<br>
&gt;&gt; &gt;&gt; &gt;&gt; I have a working patch that implements this. I c=
an submit it for review.<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;&gt; &gt; Links: You receive all messages sent to this group.<=
br>
&gt;&gt; &gt;&gt; &gt; View/Reply Online (#58549): <a href=3D"https://lists=
.yoctoproject.org/g/yocto/message/58549" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/58549</a><br>
&gt;&gt; &gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproje=
ct.org/mt/94997538/1686489" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>https://lists.yoctoproject.org/mt/94997538/1686489</a><br>
&gt;&gt; &gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.y=
octoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoc=
toproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.o=
rg/g/yocto/unsub" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gma=
il.com" target=3D"_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br=
>
&gt;&gt; &gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;&gt; &gt;<br>
</blockquote></div>

--0000000000005d8a5b05eda9b738--

