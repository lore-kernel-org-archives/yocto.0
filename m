Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26D05C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 11:13:13 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web11.13104.1668683587658395122
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 03:13:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=naxdA/F9;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: yishai1999@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id v81so1483007oie.5
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 03:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KavRq7FPjbSloLs3zSGzGs5Dl+zrIfPGZMPCV9kqkdU=;
        b=naxdA/F9wNtsTtHk6XUr1cb2Nm5m0whpcCwiHN/RlzOuWWosc1vwyEPbGN8cVHfCNt
         QwvMI66qbvZ5erK/W9ANRgO3DjufQfji3ys+sm2Rvman7yRf8LVp0jPASaQp3LAbz5uK
         +EGF84piBtL2JqfdUv2SnghIb2idbmPZAiPPQc+LHfzpTCh+RjwTz0lD06JpTDKxfcIz
         BKJKPzT8QqPkWYUQOKxDnKxksCrJHNf2VRiVNuk8vSwRZp06JcztGGmu2n2h5KhHYRML
         WtpazCoiZaUfVb92o+6v9aLa0VZk3Hku64M97avxtoGS+U1i/pAK80aNMLBGeJId4k/f
         JZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KavRq7FPjbSloLs3zSGzGs5Dl+zrIfPGZMPCV9kqkdU=;
        b=hTtQqivHYoWEPYHyn5FDOLZ7e981LA+UT/nbgEsQq8SDU2vaHa6UCx4p5aK/X4znFP
         VRKxOL607G7U7GbPnfj7ochrPOAumd5G6YFpY66Lhq4u4573Umte0uAYRrPQ6Wd/7CE7
         5z7yyei0IO+WU09AVspTkeX/7ZwQfSFhrNV38USe5GVtaXZ+2AYtFP3YMMzaGpIrxh8N
         h2UcQZbmKNA23KnMANb7SRR4AxY//6ZG73nMANhwFqIExLrQ02mSbMfZhECePE12hM0L
         dWgYc2wZ3IHRoszx0t7FIKXh3beGqEv5a1np9sFx3wpjYd2j7QSzlFtYP3MY5z+7qp/S
         ocqQ==
X-Gm-Message-State: ANoB5pk63UQHQTjckdueY8U5D7qxDreQLQDs+Pnr2uJoUTF2l8EFhEkL
	jZjxaMeld1mXkiGaOuIPDo+IYd1oc3Y2o/A4rp4=
X-Google-Smtp-Source: AA0mqf7/NcwWCNwt3n+mGGqzHEaovyawMU66R6q+TG7cYXdztXvX9HxMfLcbZLjV0sCstxxF+XetuJnhYP0uIEORfKw=
X-Received: by 2002:a05:6808:684:b0:35a:534a:4505 with SMTP id
 k4-20020a056808068400b0035a534a4505mr3617491oig.189.1668683586856; Thu, 17
 Nov 2022 03:13:06 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com> <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
In-Reply-To: <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Thu, 17 Nov 2022 13:12:55 +0200
Message-ID: <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006fec4805eda8ac31"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 11:13:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58579

--0000000000006fec4805eda8ac31
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

After some research, these are the numbers I came up with for compiling
core-image-minimal with python3-core:

Normal compilation:
tar.bz2 - 6.6MB
squashfs-xz - 6.1MB

With my pyc-only patch:
tar.bz2 - 5.8MB
squashfs-xz - 5.2MB

So that's about a 15% decrease in size.
Again, this is for an image only with python3-core. Logically that would
mean that if you had an image with more python packages it would be even a
bigger percentage.


Yishai Jaffe


On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Generally we slim down python installations by not installing all of
> the standard library, and rather having precise dependencies for
> specific modules. Can you illustrate the kind of space savings that
> can be gained in actual numbers?
>
> Another issue is that this should be supported upstream and in the
> wider python community. Is it?
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

--0000000000006fec4805eda8ac31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Alexander,</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">After some research, these are the numbers I came up =
with for compiling core-image-minimal with python3-core:</div><div dir=3D"l=
tr"><br></div><div>Normal compilation:</div><div>tar.bz2 - 6.6MB</div><div>=
squashfs-xz - 6.1MB</div><div><br></div><div>With my pyc-only patch:</div><=
div>tar.bz2 - 5.8MB</div><div>squashfs-xz - 5.2MB</div><div><br></div><div>=
So that&#39;s about a 15% decrease in size.</div><div>Again, this is for an=
 image only with python3-core. Logically that would mean that if you had an=
 image with more python packages it would be even a bigger percentage.</div=
><div><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div><div dir=
=3D"ltr" class=3D"gmail_signature">Yishai Jaffe</div></div><br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov =
13, 2022 at 5:12 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gm=
ail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Generally we slim down python installation=
s by not installing all of<br>
the standard library, and rather having precise dependencies for<br>
specific modules. Can you illustrate the kind of space savings that<br>
can be gained in actual numbers?<br>
<br>
Another issue is that this should be supported upstream and in the<br>
wider python community. Is it?<br>
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

--0000000000006fec4805eda8ac31--

