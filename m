Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8181C433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Oct 2022 19:21:19 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com
 [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.14998.1664911275809742715
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 12:21:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qRY81Gl0;
 spf=pass (domain: gmail.com, ip: 209.85.160.53,
 mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-131dda37dddso16599071fac.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 12:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=cbXrlIYHuX7RbYwf2Wz5s1Js7JDY9nKLowtjuJnZ/0s=;
        b=qRY81Gl0g+MT9sYm6rKyiYi0lf6wuSI+U3hTsYrmCShXwK0kRpGlHEFg6mN/uSJNLp
         DdLQaDPSfi9EDkbfA/y6sdq3lgOczBMaK2FcL9ggVrx/4vW8Em363lq8V1V1nGTCn0Ow
         WzOl/rbmflE1lg5H2gs5Vgn4aTxs4Y3mYBfJ10aaBtXM9f8t3PyeJjJyMsqMFqFQqOkA
         ENi3N1JcgZt8Rd+bhbidb40Hd8sTqnSh5UGIV++DgVUhSbYcTW4f2ftE/nQPqMWwD7ZA
         ZcY5RsXr4RQVDDLjov3R8pu0ftl1vsJmZInIc7GTw1yD+Z6xsg03S0ciyORQy8It32A+
         jn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=cbXrlIYHuX7RbYwf2Wz5s1Js7JDY9nKLowtjuJnZ/0s=;
        b=Ud+MgCWylTj3rXOc/ymIYOfaeJP4Nw9u9w0JpLgAMF29i8Ty9wtCVJa0sYrJF1HNw2
         9Grd+1GwQODPOqf1IJrEfHO+FbANoR0bJPtGMneTZKf36NbL3FBPt8NB9tg44UlGrmxv
         ZAaZVyTvBXxegY3fxg3v2OLWp1pLuzjuFYS4erKdxxwgqYVF8fh476kgyC55BaVaoRAd
         5BSxPX9cCGPjcd35WF1E8bh055kuN3ofUsyrfTHgm1wNlcssMXz84WuIywX00TGeicvp
         pwedSAH9x9lBggxSuTQJjL/r1+MrzzYb2Lt5BvDvcohcGd5vCw/vQjVghJENCNdln2Rc
         IvBQ==
X-Gm-Message-State: ACrzQf1//KjO37IfK+BIpmuz1bE+t/CSejiSuGM+upNl/cbzwUPDjETz
	iRfw9bBg9IM69zZHc0piG2dajRi8iel4UkZhCOM=
X-Google-Smtp-Source: 
 AMsMyM4JZ60dIQSIh0ZpJrPkqeFGQZVliO8LeKW+W4bXiNnSxToGOteNSHTVvX/6VipyCpSCR/2xY7wnSkvi14NRBhQ=
X-Received: by 2002:a05:6870:8982:b0:12b:49eb:887d with SMTP id
 f2-20020a056870898200b0012b49eb887dmr723650oaq.278.1664911275014; Tue, 04 Oct
 2022 12:21:15 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_KV7GRBubeCKGDho=CXe1xpkzE4XAiWoFDT25aO-VAYA@mail.gmail.com>
 <4602.1664720098520336517@lists.yoctoproject.org>
 <CANNYZj9sZr9YfKHqGFTO10_gOE9+vEcO6Kx3jhOicTYVgXYK7w@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9sZr9YfKHqGFTO10_gOE9+vEcO6Kx3jhOicTYVgXYK7w@mail.gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Wed, 5 Oct 2022 00:51:03 +0530
Message-ID: 
 <CAGQ3h14ka1rL7c-hdrWpWkTOJ7sTFUwPF2X0zg=2VkEeHhscdA@mail.gmail.com>
Subject: Re: [yocto] Run rt specific test in "core-image-rt" #patch #yocto
 #qemu #dunfell #linux
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000213d5e05ea3a5d32"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Oct 2022 19:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58265

--000000000000213d5e05ea3a5d32
Content-Type: text/plain; charset="UTF-8"

Hello Alexander

But core-image-full-cmdline is not going to give real time exposure, isn't
it?  The requirement is to make real time image so core-image-full-cmdline
will satisfy the requirement?

And would i need to run test of rt-suit one-by one or there is something so
i can run in one go? Can you refer me some documents in which I get all
these information as I didn't find all these info in one document.

As I am new in this thing please guide me . Your guidance is highly
appreciated.



On Tue, Oct 4, 2022, 18:31 Alexander Kanavin <alex.kanavin@gmail.com> wrote:

> The log file seems truncated?
>
> To enable the standard rt test, use
>
> TEST_SUITES:append = ' rt'
>
> as seen in
> https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n1138
>
> and build core-image-full-cmdline. core-image-rt is not well tested
> unfortunately.
>
> Alex
>
> On Sun, 2 Oct 2022 at 16:15, Nikita Gupta <nikitagupta2509@gmail.com>
> wrote:
> >
> > Hello Alexander,
> >
> > Please find log.do_rootfs file for the image.
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58250):
> https://lists.yoctoproject.org/g/yocto/message/58250
> > Mute This Topic: https://lists.yoctoproject.org/mt/94066549/1686489
> > Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> > Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> > Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> > Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000213d5e05ea3a5d32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello=C2=A0Alexander<div dir=3D"auto"><br></div><div dir=
=3D"auto">But core-image-full-cmdline is not going to give real time exposu=
re, isn&#39;t it?=C2=A0 The requirement is to make real time image so core-=
image-full-cmdline will satisfy the requirement?</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">And would i need to run test of rt-suit one-by one=
 or there is something so i can run in one go? Can you refer me some docume=
nts in which I get all these information as I didn&#39;t find all these inf=
o in one document.</div><div dir=3D"auto"><br></div><div dir=3D"auto">As I =
am new in this thing please guide me . Your guidance is highly appreciated.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 4=
, 2022, 18:31 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">The log file seems truncated?<br=
>
<br>
To enable the standard rt test, use<br>
<br>
TEST_SUITES:append =3D &#39; rt&#39;<br>
<br>
as seen in <a href=3D"https://git.yoctoproject.org/yocto-autobuilder-helper=
/tree/config.json#n1138" rel=3D"noreferrer noreferrer noreferrer" target=3D=
"_blank">https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.=
json#n1138</a><br>
<br>
and build core-image-full-cmdline. core-image-rt is not well tested<br>
unfortunately.<br>
<br>
Alex<br>
<br>
On Sun, 2 Oct 2022 at 16:15, Nikita Gupta &lt;<a href=3D"mailto:nikitagupta=
2509@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">nikitagupta=
2509@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello Alexander,<br>
&gt;<br>
&gt; Please find log.do_rootfs file for the image.<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#58250): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58250" rel=3D"noreferrer noreferrer noreferrer" target=3D"_=
blank">https://lists.yoctoproject.org/g/yocto/message/58250</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94066549=
/1686489" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/mt/94066549/1686489</a><br>
&gt; Mute #patch:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehash=
tag/patch" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/mutehashtag/patch</a><br>
&gt; Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehash=
tag/yocto" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/mutehashtag/yocto</a><br>
&gt; Mute #qemu:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/qemu" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https:/=
/lists.yoctoproject.org/g/yocto/mutehashtag/qemu</a><br>
&gt; Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/dunfell" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttps://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell</a><br>
&gt; Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehash=
tag/linux" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/mutehashtag/linux</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" r=
el=3D"noreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproje=
ct.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kanavin@gmail.com</a>=
]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000213d5e05ea3a5d32--

