Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF68C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 12:04:13 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.13867.1668686650691480272
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 04:04:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Zut3Xpmb;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: yishai1999@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-13bef14ea06so1896426fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 04:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ACLe6naHVx5WN8KcDp0kasLZUJM3pBNv0yHXB8+4RRc=;
        b=Zut3XpmblY6TAILQs0010iyY5VoDxGOFJgLPUA4DHakveic2lege/XkhptfkN3Ei0s
         hm95+sHeawaHepgvzzwT0eDp08S3j0e5Ti8UesVb2irGoN8MEcEfXTDfHAdw6oyAVa+B
         mqxvyOvzpAyu5hhHePmf3hVc6w64B/BHIWziYwmvcGTPGi6DtWI+/Xs7VUKADj8jES4y
         ifXZS5JNQOxhldbQRIB1v74krt7Vdy9W/GIuCEALLpjaAo0hnt00PdGyXfCcWv+XMmkd
         gtq2c5DIG+FaUMGzOxbUBf0pwAVcQXkQ8ry/ceisqnN4Xsf7Fl2qT/lz128X90yXAQb9
         Kf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ACLe6naHVx5WN8KcDp0kasLZUJM3pBNv0yHXB8+4RRc=;
        b=48EZz3XkQtYLeBIuLLGk3awvCBZ0jep0baWfF1eNvf9fMZKRnYZw0n565PptKczOia
         3zDK2Hhw3xXiuuD5Xr0BD7aAeu5o3FisdYSqufcediIgWCg5TKDp2vIUd8BrsE7MGaRR
         EU0jTeJJyzR55WUaNvXajDrmJKUlwEI8l3LaA5R2zkMBo0xyEcQ635Ymosh3A/gzvopk
         I2D3nJ9f7U+3K4oq0rilh42AGcgA+c0L2yvM1L7832/1a4l3a9MrLGmemzuZm9IH3Wdl
         yfssXbJCVqlh7nTE/YkeI/H8GIswXg+xM380KNTltaqbThNmseiZ+HOoSmqUSe+h400W
         MA6Q==
X-Gm-Message-State: ANoB5pmN2zOGucMSFrzPZfy4gJVVldQjhhN3eBnCrrBIlGnWUmK5m35q
	YVIk7cwsqI7WRpZRrPhYr5vCP5HVwMB4xgLcZYk=
X-Google-Smtp-Source: AA0mqf5FXSeOge2WMHN/QBZTTY/6kvttWW+A6t/otJHHHtR4i6NMaV3s3fYdubz6aVGWwAvivHKVLbm4vxZslC6rUZU=
X-Received: by 2002:a05:6870:89a1:b0:13c:45c8:ab01 with SMTP id
 f33-20020a05687089a100b0013c45c8ab01mr4036334oaq.189.1668686649859; Thu, 17
 Nov 2022 04:04:09 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
 <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
 <CAJw49voA19vhm-zKszFYOa6cVy567qy6gaBJb+H2Oy9PkxYdpA@mail.gmail.com> <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
In-Reply-To: <CANNYZj-8A2JD1JSxOEvkuSLtyg+QtaLj5P6DzNKveh5dW6so1A@mail.gmail.com>
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Thu, 17 Nov 2022 14:03:58 +0200
Message-ID: <CAJw49vp4MTCYM3aWnGVpA47iFD+ENwCdMo7j4xoOkyxfszWjog@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000001a1e105eda9630e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 12:04:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58581

--00000000000001a1e105eda9630e
Content-Type: text/plain; charset="UTF-8"

I assume by core you mean openembedded-core/poky, yes?

So where would you add it to?

Seems to me like a very useful feature that many people would use if they
knew the option exists.

Also, I noticed that in the recipe for python there is a variable named
INCLUDE_PYC which does exactly what you think it would. This looks to me
like someone did think about the whole python size subject but didn't
exactly go through with it all the way. You can decide if to include pyc
files but not the opposite. Also, this feature which does exist only
applies to the python recipe but not to all other non-base python module
recipes. Maybe this can be added to setuptools3 bbclass?

Yishai Jaffe

On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I just wonder if this should really be in core. The standards for core
> are high: it needs to be both testable and tested, and there's only so
> many possible options and tweaks where things can regress that we can
> take. On the other hand, there has not been much demand for it.
>
> Alex
>
> On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe <yishai1999@gmail.com> wrote:
> >
> > Hi Alexander,
> >
> > After some research, these are the numbers I came up with for compiling
> core-image-minimal with python3-core:
> >
> > Normal compilation:
> > tar.bz2 - 6.6MB
> > squashfs-xz - 6.1MB
> >
> > With my pyc-only patch:
> > tar.bz2 - 5.8MB
> > squashfs-xz - 5.2MB
> >
> > So that's about a 15% decrease in size.
> > Again, this is for an image only with python3-core. Logically that would
> mean that if you had an image with more python packages it would be even a
> bigger percentage.
> >
> >
> > Yishai Jaffe
> >
> >
> > On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> Generally we slim down python installations by not installing all of
> >> the standard library, and rather having precise dependencies for
> >> specific modules. Can you illustrate the kind of space savings that
> >> can be gained in actual numbers?
> >>
> >> Another issue is that this should be supported upstream and in the
> >> wider python community. Is it?
> >>
> >> Alex
> >>
> >> On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org>
> wrote:
> >> >
> >> >
> >> > Hello,
> >> > Just as a small reference since I raised some doubts and questions in
> Buildroot community on this: there has been also some troubles to
> understand the correctness or not there (as I found some packages with
> problems due to this source-less management) and this then sparked, besides
> discussions in the Buildroot mailing list (roughly end of July / beginning
> of August if someone interested searching there), also an issue to the
> Python community, which albeit some discussion I think never arrived to a
> concrete conclusion. This is the issue:
> https://github.com/python/cpython/issues/95827 (see also the linked one
> maybe)
> >> >
> >> > These are just my 2 cents to this discussion, then of course the
> Python experts will probably chime in and describe the official/discussed
> position of Yocto regarding to this, but just felt like mentioning that
> although Buildroot is somehow offering this right now (and likely mostly
> works as well!), it's not really a so clean and/or agreed solution.
> >> >
> >> > Cheers,
> >> > Federico
> >> >
> >> > Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <
> yishai1999@gmail.com> ha scritto:
> >> >>
> >> >> Hi,
> >> >> I was wondering if there has been talk about support for source-less
> python on an image. Installing py and pyc files doubles the size of python
> on the rootfs. I can imagine this being implemented as an image feature.
> >> >> I know that in buildroot it is supported.
> >> >> Was this discussed and decided against? Is this an open issue?
> >> >> I have a working patch that implements this. I can submit it for
> review.
> >> >>
> >> >> Thanks,
> >> >> Yishai Jaffe
> >> >> Yishai Jaffe
> >> >>
> >> >>
> >> >>
> >> >
> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> > Links: You receive all messages sent to this group.
> >> > View/Reply Online (#58549):
> https://lists.yoctoproject.org/g/yocto/message/58549
> >> > Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686489
> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> > -=-=-=-=-=-=-=-=-=-=-=-
> >> >
>

--00000000000001a1e105eda9630e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I assume by core you mean openembedded-core/poky, yes?<di=
v dir=3D"auto"><br><div dir=3D"auto">So where would you add it to?</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Seems to me like a very useful f=
eature that many people would use if they knew the option exists.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Also, I noticed that in the recip=
e for python there is a variable named INCLUDE_PYC which does exactly what =
you think it would. This looks to me like someone did think about the whole=
 python size subject but didn&#39;t exactly go through with it all the way.=
 You can decide if to include pyc files but not the opposite. Also, this fe=
ature which does exist only applies to the python recipe but not to all oth=
er non-base python module recipes. Maybe this can be added to setuptools3 b=
bclass?<br><br><div data-smartmail=3D"gmail_signature" dir=3D"auto">Yishai =
Jaffe </div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Nov 17, 2022, 1:24 PM Alexander Kanavin &lt=
;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">I just wonder if this should =
really be in core. The standards for core<br>
are high: it needs to be both testable and tested, and there&#39;s only so<=
br>
many possible options and tweaks where things can regress that we can<br>
take. On the other hand, there has not been much demand for it.<br>
<br>
Alex<br>
<br>
On Thu, 17 Nov 2022 at 12:13, Yishai Jaffe &lt;<a href=3D"mailto:yishai1999=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">yishai1999@gmail.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt; Hi Alexander,<br>
&gt;<br>
&gt; After some research, these are the numbers I came up with for compilin=
g core-image-minimal with python3-core:<br>
&gt;<br>
&gt; Normal compilation:<br>
&gt; tar.bz2 - 6.6MB<br>
&gt; squashfs-xz - 6.1MB<br>
&gt;<br>
&gt; With my pyc-only patch:<br>
&gt; tar.bz2 - 5.8MB<br>
&gt; squashfs-xz - 5.2MB<br>
&gt;<br>
&gt; So that&#39;s about a 15% decrease in size.<br>
&gt; Again, this is for an image only with python3-core. Logically that wou=
ld mean that if you had an image with more python packages it would be even=
 a bigger percentage.<br>
&gt;<br>
&gt;<br>
&gt; Yishai Jaffe<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Nov 13, 2022 at 5:12 PM Alexander Kanavin &lt;<a href=3D"mailt=
o:alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noreferrer">alex.kanavin=
@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Generally we slim down python installations by not installing all =
of<br>
&gt;&gt; the standard library, and rather having precise dependencies for<b=
r>
&gt;&gt; specific modules. Can you illustrate the kind of space savings tha=
t<br>
&gt;&gt; can be gained in actual numbers?<br>
&gt;&gt;<br>
&gt;&gt; Another issue is that this should be supported upstream and in the=
<br>
&gt;&gt; wider python community. Is it?<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin &lt;<a href=3D"ma=
ilto:fede@evolware.org" target=3D"_blank" rel=3D"noreferrer">fede@evolware.=
org</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt; Just as a small reference since I raised some doubts and ques=
tions in Buildroot community on this: there has been also some troubles to =
understand the correctness or not there (as I found some packages with prob=
lems due to this source-less management) and this then sparked, besides dis=
cussions in the Buildroot mailing list (roughly end of July / beginning of =
August if someone interested searching there), also an issue to the Python =
community, which albeit some discussion I think never arrived to a concrete=
 conclusion. This is the issue: <a href=3D"https://github.com/python/cpytho=
n/issues/95827" rel=3D"noreferrer noreferrer" target=3D"_blank">https://git=
hub.com/python/cpython/issues/95827</a> (see also the linked one maybe)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; These are just my 2 cents to this discussion, then of course =
the Python experts will probably chime in and describe the official/discuss=
ed position of Yocto regarding to this, but just felt like mentioning that =
although Buildroot is somehow offering this right now (and likely mostly wo=
rks as well!), it&#39;s not really a so clean and/or agreed solution.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Cheers,<br>
&gt;&gt; &gt; Federico<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe &lt;<a =
href=3D"mailto:yishai1999@gmail.com" target=3D"_blank" rel=3D"noreferrer">y=
ishai1999@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt; I was wondering if there has been talk about support for =
source-less python on an image. Installing py and pyc files doubles the siz=
e of python on the rootfs. I can imagine this being implemented as an image=
 feature.<br>
&gt;&gt; &gt;&gt; I know that in buildroot it is supported.<br>
&gt;&gt; &gt;&gt; Was this discussed and decided against? Is this an open i=
ssue?<br>
&gt;&gt; &gt;&gt; I have a working patch that implements this. I can submit=
 it for review.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt; Yishai Jaffe<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; &gt; View/Reply Online (#58549): <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/58549" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://lists.yoctoproject.org/g/yocto/message/58549</a><br>
&gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/94997538/1686489" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/mt/94997538/1686489</a><br>
&gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproje=
ct.org" target=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject=
.org</a><br>
&gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/unsub" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;<br>
</blockquote></div>

--00000000000001a1e105eda9630e--

