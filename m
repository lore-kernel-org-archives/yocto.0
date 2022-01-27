Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CBFFC433F5
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 21:04:19 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.4067.1643317457936070341
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 13:04:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Yq/9c1ca;
 spf=pass (domain: gmail.com, ip: 209.85.160.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id y17so3552681qtx.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 13:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qCTcJalYNcPzz/pZlcn6HAOoFWy5wIvdc/JyTbLBYEE=;
        b=Yq/9c1carWbgz71HQrZoWyQ71KEYrC+9UtCeWbjompmHZLsqwHeyv0j2WIYexXHMYq
         GAJFIRz89XLt9BvwaYKJUoPHtGZOeHewyJec2igsnxxVUYiYr+9hYdP2WOxcuitdZEpv
         dRJ8WH2+UDV0os0X5AFTY3QKweqGgkNKZr6v1S8s1q25a+VFmB3TmI40cx2RxsjKi1Bt
         Ff9aygjvedR3rlsu0DaaPc6pRLUJlJIGhVg42fHxGKTbnbXDvGwdaT8K/SrDPMGTlPpw
         SxC+xa/u+SbksYEGHok5NDStfspfEdQzIzISCo7ZnSvmi5Bu2juK6GfENAmT7C9REAVt
         gEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qCTcJalYNcPzz/pZlcn6HAOoFWy5wIvdc/JyTbLBYEE=;
        b=xOeCGtoEvBio+xwffgVLnsqKOcS+EYBG9rTkyR55ahYChi5JZBwCoV/qkQ5SdeAclP
         vexDqd+BBaZ73sCpDtaSKYTMKCmajCFzylnrj2e6Rg973P8glGqZLdS20OCItCy1iube
         5KEwYTfUd7+/uLdKlz16eR1IU/sEOCbQ8wnLVlgtRMyuuMBnlz/vCP6gSHvrTxaOLDhZ
         dmMz99Fa/Dox5pt+H4ih3XPwcXulVzsBg1rlkGWmu4XtQxPCvH0eiHanQzW3Q4Ecs8B4
         wO1xKyb7VWrZJLOCJhJGcIFPh1EYd2JKW5Dac9JSNl91W0PUGss28Uz+9R6iHPhhGUWC
         lfEg==
X-Gm-Message-State: AOAM533e0o2lMlAF9wP9tBd5kGTqaydzB2VPmOwp8j94tfZV0L/Me/7P
	D03FAMtakWvOtmE+nkp20hJb0cQ9N+fBPEIUXjk=
X-Google-Smtp-Source: 
 ABdhPJyzF/bYxjIxhkclcHfIzmkvyFNbc2OYq46eh2WgtQZbxdlYsA0b65WjqLgRHmI1y6w+gS5qu8Hu0O9EPbYhwb0=
X-Received: by 2002:a05:622a:1a99:: with SMTP id
 s25mr4095606qtc.634.1643317456975;
 Thu, 27 Jan 2022 13:04:16 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
 <20220127200650.GX26229@denix.org>
In-Reply-To: <20220127200650.GX26229@denix.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Jan 2022 13:04:06 -0800
Message-ID: 
 <CAMKF1soTbS8cyW8VE+3SueFyksyoios+wkOQn42mZoVMoGHbkg@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Denys Dmytriyenko <denis@denix.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Michael Halstead <mhalstead@linuxfoundation.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000046bb9405d696a9c1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 21:04:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56004

--00000000000046bb9405d696a9c1
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 27, 2022 at 12:06 PM Denys Dmytriyenko <denis@denix.org> wrote:

> On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
> > A question specifically to Denys, how can I actually get this into the
> > mixin repo, and have commit rights to the branch? We've tested this quite
> > well in private, and there are further enhancements coming up.
>
> Michael,
>
> Would it be possible to create 2 additional branches in the
> meta-lts-mixins
> repository at https://git.yoctoproject.org/meta-lts-mixins/ called
> "dunfell/go" and also "dunfell/docker" and give Alex push rights to them?


How would one use new version of  both  go and say kernel in a project


>
> Please let us know, thanks a lot!
>
> --
> Denys
>
>
> > On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via
> lists.yoctoproject.org
> > <alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:
> >
> > > Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
> > > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> > > ---
> > >  COPYING.MIT     | 17 +++++++++++++++++
> > >  README          | 23 +++++++++++++++++++++++
> > >  conf/layer.conf | 19 +++++++++++++++++++
> > >  3 files changed, 59 insertions(+)
> > >  create mode 100644 COPYING.MIT
> > >  create mode 100644 README
> > >  create mode 100644 conf/layer.conf
> > >
> > > diff --git a/COPYING.MIT b/COPYING.MIT
> > > new file mode 100644
> > > index 0000000..fb950dc
> > > --- /dev/null
> > > +++ b/COPYING.MIT
> > > @@ -0,0 +1,17 @@
> > > +Permission is hereby granted, free of charge, to any person obtaining
> a
> > > copy
> > > +of this software and associated documentation files (the "Software"),
> to
> > > deal
> > > +in the Software without restriction, including without limitation the
> > > rights
> > > +to use, copy, modify, merge, publish, distribute, sublicense, and/or
> sell
> > > +copies of the Software, and to permit persons to whom the Software is
> > > +furnished to do so, subject to the following conditions:
> > > +
> > > +The above copyright notice and this permission notice shall be
> included
> > > in
> > > +all copies or substantial portions of the Software.
> > > +
> > > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS
> > > OR
> > > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY,
> > > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
> SHALL
> > > THE
> > > +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > > +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
> ARISING
> > > FROM,
> > > +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> DEALINGS IN
> > > +THE SOFTWARE.
> > > diff --git a/README b/README
> > > new file mode 100644
> > > index 0000000..5b22b72
> > > --- /dev/null
> > > +++ b/README
> > > @@ -0,0 +1,23 @@
> > > +"Mixin" layer for adding latest Go toolchain versions into the Yocto
> > > Project LTS.
> > > +
> > > +At the time Dunfell was released in April 2020, Go 1.14 was the latest
> > > version
> > > +and officially Dunfell supports only that. This thin special-purpose
> mixin
> > > +layer is meant to address this issue by backporting Go recipes from
> the
> > > master
> > > +branch of openembedded-core.
> > > +
> > > +You can see what Go versions are provided by listing recipes-devtools/
> > > content.
> > > +
> > > +Including the layer automatically picks up the latest Go version;
> > > different versions
> > > +need to be set explicitly by adding the following line to your distro
> > > config
> > > +or local.conf:
> > > +
> > > +GOVERSION = "1.16%"
> > > +
> > > +Please note: enabling these newer Go versions makes docker from
> dunfell
> > > branch
> > > +of meta-virtualization unbuildable as it is too old. If you need a
> > > working docker
> > > +recipe, you can use the supplementary 'dunfell/docker' layer from this
> > > meta-lts-mixin
> > > +repository.
> > > +
> > > +
> > > +Maintainers:
> > > +Alexander Kanavin <alex@linutronix.de>
> > > diff --git a/conf/layer.conf b/conf/layer.conf
> > > new file mode 100644
> > > index 0000000..5f74224
> > > --- /dev/null
> > > +++ b/conf/layer.conf
> > > @@ -0,0 +1,19 @@
> > > +# We have a conf and classes directory, append to BBPATH
> > > +BBPATH .= ":${LAYERDIR}"
> > > +
> > > +# We have a recipes directory, add to BBFILES
> > > +BBFILES += "${LAYERDIR}/recipes*/*/*.bb
> ${LAYERDIR}/recipes*/*/*.bbappend"
> > > +
> > > +BBFILE_COLLECTIONS += "lts-go-mixin"
> > > +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
> > > +BBFILE_PRIORITY_lts-go-mixin = "6"
> > > +
> > > +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
> > > +
> > > +LAYERDEPENDS_lts-go-mixin = " \
> > > +    core \
> > > +"
> > > +
> > > +GOVERSION ?= "1.17%"
> > > +PREFERRED_PROVIDER_go-native = "go-binary-native"
> > > +
> > > --
> > > 2.20.1
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56003):
> https://lists.yoctoproject.org/g/yocto/message/56003
> Unfollow This Topic: https://lists.yoctoproject.org/unft/88722205/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000046bb9405d696a9c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jan 27, 2022 at 12:06 PM Denys Dmytriyenko &lt;<a h=
ref=3D"mailto:denis@denix.org">denis@denix.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexan=
der Kanavin wrote:<br>
&gt; A question specifically to Denys, how can I actually get this into the=
<br>
&gt; mixin repo, and have commit rights to the branch? We&#39;ve tested thi=
s quite<br>
&gt; well in private, and there are further enhancements coming up.<br>
<br>
Michael,<br>
<br>
Would it be possible to create 2 additional branches in the meta-lts-mixins=
 <br>
repository at <a href=3D"https://git.yoctoproject.org/meta-lts-mixins/" rel=
=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts-mix=
ins/</a> called <br>
&quot;dunfell/go&quot; and also &quot;dunfell/docker&quot; and give Alex pu=
sh rights to them?</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto=
">How would one use new version of =C2=A0both =C2=A0go and say kernel in a =
project=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x" dir=3D"auto"><br>
<br>
Please let us know, thanks a lot!<br>
<br>
-- <br>
Denys<br>
<br>
<br>
&gt; On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via <a href=3D"http://=
lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctopro=
ject.org</a><br>
&gt; &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org"=
 target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; Reviewed-by: Martin Kaistra &lt;<a href=3D"mailto:martin.kaistra@=
linutronix.de" target=3D"_blank">martin.kaistra@linutronix.de</a>&gt;<br>
&gt; &gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linut=
ronix.de" target=3D"_blank">alex@linutronix.de</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 COPYING.MIT=C2=A0 =C2=A0 =C2=A0| 17 +++++++++++++++++<br>
&gt; &gt;=C2=A0 README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 23 +++++++++++++=
++++++++++<br>
&gt; &gt;=C2=A0 conf/layer.conf | 19 +++++++++++++++++++<br>
&gt; &gt;=C2=A0 3 files changed, 59 insertions(+)<br>
&gt; &gt;=C2=A0 create mode 100644 COPYING.MIT<br>
&gt; &gt;=C2=A0 create mode 100644 README<br>
&gt; &gt;=C2=A0 create mode 100644 conf/layer.conf<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/COPYING.MIT b/COPYING.MIT<br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 0000000..fb950dc<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/COPYING.MIT<br>
&gt; &gt; @@ -0,0 +1,17 @@<br>
&gt; &gt; +Permission is hereby granted, free of charge, to any person obta=
ining a<br>
&gt; &gt; copy<br>
&gt; &gt; +of this software and associated documentation files (the &quot;S=
oftware&quot;), to<br>
&gt; &gt; deal<br>
&gt; &gt; +in the Software without restriction, including without limitatio=
n the<br>
&gt; &gt; rights<br>
&gt; &gt; +to use, copy, modify, merge, publish, distribute, sublicense, an=
d/or sell<br>
&gt; &gt; +copies of the Software, and to permit persons to whom the Softwa=
re is<br>
&gt; &gt; +furnished to do so, subject to the following conditions:<br>
&gt; &gt; +<br>
&gt; &gt; +The above copyright notice and this permission notice shall be i=
ncluded<br>
&gt; &gt; in<br>
&gt; &gt; +all copies or substantial portions of the Software.<br>
&gt; &gt; +<br>
&gt; &gt; +THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF =
ANY KIND, EXPRESS<br>
&gt; &gt; OR<br>
&gt; &gt; +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANT=
ABILITY,<br>
&gt; &gt; +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVEN=
T SHALL<br>
&gt; &gt; THE<br>
&gt; &gt; +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR=
 OTHER<br>
&gt; &gt; +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, =
ARISING<br>
&gt; &gt; FROM,<br>
&gt; &gt; +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DE=
ALINGS IN<br>
&gt; &gt; +THE SOFTWARE.<br>
&gt; &gt; diff --git a/README b/README<br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 0000000..5b22b72<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/README<br>
&gt; &gt; @@ -0,0 +1,23 @@<br>
&gt; &gt; +&quot;Mixin&quot; layer for adding latest Go toolchain versions =
into the Yocto<br>
&gt; &gt; Project LTS.<br>
&gt; &gt; +<br>
&gt; &gt; +At the time Dunfell was released in April 2020, Go 1.14 was the =
latest<br>
&gt; &gt; version<br>
&gt; &gt; +and officially Dunfell supports only that. This thin special-pur=
pose mixin<br>
&gt; &gt; +layer is meant to address this issue by backporting Go recipes f=
rom the<br>
&gt; &gt; master<br>
&gt; &gt; +branch of openembedded-core.<br>
&gt; &gt; +<br>
&gt; &gt; +You can see what Go versions are provided by listing recipes-dev=
tools/<br>
&gt; &gt; content.<br>
&gt; &gt; +<br>
&gt; &gt; +Including the layer automatically picks up the latest Go version=
;<br>
&gt; &gt; different versions<br>
&gt; &gt; +need to be set explicitly by adding the following line to your d=
istro<br>
&gt; &gt; config<br>
&gt; &gt; +or local.conf:<br>
&gt; &gt; +<br>
&gt; &gt; +GOVERSION =3D &quot;1.16%&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +Please note: enabling these newer Go versions makes docker from =
dunfell<br>
&gt; &gt; branch<br>
&gt; &gt; +of meta-virtualization unbuildable as it is too old. If you need=
 a<br>
&gt; &gt; working docker<br>
&gt; &gt; +recipe, you can use the supplementary &#39;dunfell/docker&#39; l=
ayer from this<br>
&gt; &gt; meta-lts-mixin<br>
&gt; &gt; +repository.<br>
&gt; &gt; +<br>
&gt; &gt; +<br>
&gt; &gt; +Maintainers:<br>
&gt; &gt; +Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix.de" targ=
et=3D"_blank">alex@linutronix.de</a>&gt;<br>
&gt; &gt; diff --git a/conf/layer.conf b/conf/layer.conf<br>
&gt; &gt; new file mode 100644<br>
&gt; &gt; index 0000000..5f74224<br>
&gt; &gt; --- /dev/null<br>
&gt; &gt; +++ b/conf/layer.conf<br>
&gt; &gt; @@ -0,0 +1,19 @@<br>
&gt; &gt; +# We have a conf and classes directory, append to BBPATH<br>
&gt; &gt; +BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +# We have a recipes directory, add to BBFILES<br>
&gt; &gt; +BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recip=
es*/*/*.bbappend&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +BBFILE_COLLECTIONS +=3D &quot;lts-go-mixin&quot;<br>
&gt; &gt; +BBFILE_PATTERN_lts-go-mixin :=3D &quot;^${LAYERDIR}/&quot;<br>
&gt; &gt; +BBFILE_PRIORITY_lts-go-mixin =3D &quot;6&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +LAYERSERIES_COMPAT_lts-go-mixin =3D &quot;dunfell&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +LAYERDEPENDS_lts-go-mixin =3D &quot; \<br>
&gt; &gt; +=C2=A0 =C2=A0 core \<br>
&gt; &gt; +&quot;<br>
&gt; &gt; +<br>
&gt; &gt; +GOVERSION ?=3D &quot;1.17%&quot;<br>
&gt; &gt; +PREFERRED_PROVIDER_go-native =3D &quot;go-binary-native&quot;<br=
>
&gt; &gt; +<br>
&gt; &gt; --<br>
&gt; &gt; 2.20.1<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56003): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56003" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56003</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/8872220=
5/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/88722205/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000046bb9405d696a9c1--

