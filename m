Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2409C433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 21:07:49 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web09.3928.1643317669042771863
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 13:07:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WXTuZhK3;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id y4so6564237uad.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 13:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nRsUMto+idKco4/5i+xpmENw6g+4pw9cd2kXk3wL4bM=;
        b=WXTuZhK3w7O7L5geiLuWuFTLLqxQXOBsWA0grzwE2c54Pdw+40GyQaDGksDigIKvms
         VfuG96+IOnSynaGdtyZoyS86hwHV8c43BwnpYBxhzYyGR7nyr/xS2ElVW3e6l8BThG1j
         XFN4sqPKd8PJwx5sQV7lZMTnP1LACOtRHKs7tVkzeAj/FJWaRxTc6TjGgaLt8z8OKjbn
         3SsftBHvbJp3XC3INzKNRZDrVLoK6qu1wnUrAwMcymi8dHmaYpHUZ+ViUs/iM1eKTpPN
         eEQ+nItsg2/IMz7+V15/BVKwHL3UZRTp9DubDWuXuDrvDNlWwJ47us1myZAZBIMaKwWy
         2Y9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nRsUMto+idKco4/5i+xpmENw6g+4pw9cd2kXk3wL4bM=;
        b=4gzhudNO8DjeO5C4B6vwYQwLWIJU5kGnfBv6GQz0NYT1nGSqYYlR1udUETuXFWOSCk
         Ym5QNA5rnJv9UyWdVO9kTR4YzheOgSROsEwtHmf4VWvEtuYlFncxWGhx6JxSrHnR1Oax
         l7guGqdHkurPcyfLXMJl7WIllSFu15JYm6+vfHs8iGj0+Atz92m5G5sUXkn84fl/9ZNE
         0yciKnXJ5qtVzndtfStzjJMMpmm0Ddtr7ARpIQfweo4LxOXEJ6kfkL6j1pdQ789O4kCC
         OfO6QEp01iFoZBTtRBDs3n0Vx4e8vCHQ99ED/QvSfpFwZ7AhMXQawo4PY/j1QYxGB0qT
         DoFw==
X-Gm-Message-State: AOAM5300ONo9LzoFjB1zpOMBLA+WljaLAtSOFVfAGf2/epMTZXoDnox/
	kmuN+BhjYs3jvRn2Cg9E+2XY3L0B6ewSFCoDrFw=
X-Google-Smtp-Source: 
 ABdhPJz+OnmlXJzczFGUkYJAxvjS1qb0n6iJZcRtwNR7fCAFGFZQQWx+pYgrIOUInk7jWDZxIZ6lJ0n8gUFKXoz/aBA=
X-Received: by 2002:ab0:604e:: with SMTP id o14mr2712308ual.71.1643317668152;
 Thu, 27 Jan 2022 13:07:48 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
 <20220127200650.GX26229@denix.org>
 <CAMKF1soTbS8cyW8VE+3SueFyksyoios+wkOQn42mZoVMoGHbkg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1soTbS8cyW8VE+3SueFyksyoios+wkOQn42mZoVMoGHbkg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Jan 2022 22:07:37 +0100
Message-ID: 
 <CANNYZj8syi_OULbDVg8KW61Wdn716oTY8o7pTS+da1MwMUpcRA@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Khem Raj <raj.khem@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000dd098405d696b5f2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 21:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56005

--000000000000dd098405d696b5f2
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jan 2022 at 22:04, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On Thu, Jan 27, 2022 at 12:06 PM Denys Dmytriyenko <denis@denix.org>
> wrote:
>
>> On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
>> > A question specifically to Denys, how can I actually get this into the
>> > mixin repo, and have commit rights to the branch? We've tested this
>> quite
>> > well in private, and there are further enhancements coming up.
>>
>> Michael,
>>
>> Would it be possible to create 2 additional branches in the
>> meta-lts-mixins
>> repository at https://git.yoctoproject.org/meta-lts-mixins/ called
>> "dunfell/go" and also "dunfell/docker" and give Alex push rights to them?
>
>
> How would one use new version of  both  go and say kernel in a project
>

Checkout the branches from the same repo into two different directories.
Yes this is unusual, and slightly confusing. But that way the branches can
be maintained and included into builds independently.

Alex



>
>
>>
>> Please let us know, thanks a lot!
>>
>> --
>> Denys
>>
>>
>> > On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via
>> lists.yoctoproject.org
>> > <alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:
>> >
>> > > Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
>> > > Signed-off-by: Alexander Kanavin <alex@linutronix.de>
>> > > ---
>> > >  COPYING.MIT     | 17 +++++++++++++++++
>> > >  README          | 23 +++++++++++++++++++++++
>> > >  conf/layer.conf | 19 +++++++++++++++++++
>> > >  3 files changed, 59 insertions(+)
>> > >  create mode 100644 COPYING.MIT
>> > >  create mode 100644 README
>> > >  create mode 100644 conf/layer.conf
>> > >
>> > > diff --git a/COPYING.MIT b/COPYING.MIT
>> > > new file mode 100644
>> > > index 0000000..fb950dc
>> > > --- /dev/null
>> > > +++ b/COPYING.MIT
>> > > @@ -0,0 +1,17 @@
>> > > +Permission is hereby granted, free of charge, to any person
>> obtaining a
>> > > copy
>> > > +of this software and associated documentation files (the
>> "Software"), to
>> > > deal
>> > > +in the Software without restriction, including without limitation the
>> > > rights
>> > > +to use, copy, modify, merge, publish, distribute, sublicense, and/or
>> sell
>> > > +copies of the Software, and to permit persons to whom the Software is
>> > > +furnished to do so, subject to the following conditions:
>> > > +
>> > > +The above copyright notice and this permission notice shall be
>> included
>> > > in
>> > > +all copies or substantial portions of the Software.
>> > > +
>> > > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
>> EXPRESS
>> > > OR
>> > > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
>> MERCHANTABILITY,
>> > > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
>> SHALL
>> > > THE
>> > > +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
>> OTHER
>> > > +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
>> ARISING
>> > > FROM,
>> > > +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
>> DEALINGS IN
>> > > +THE SOFTWARE.
>> > > diff --git a/README b/README
>> > > new file mode 100644
>> > > index 0000000..5b22b72
>> > > --- /dev/null
>> > > +++ b/README
>> > > @@ -0,0 +1,23 @@
>> > > +"Mixin" layer for adding latest Go toolchain versions into the Yocto
>> > > Project LTS.
>> > > +
>> > > +At the time Dunfell was released in April 2020, Go 1.14 was the
>> latest
>> > > version
>> > > +and officially Dunfell supports only that. This thin special-purpose
>> mixin
>> > > +layer is meant to address this issue by backporting Go recipes from
>> the
>> > > master
>> > > +branch of openembedded-core.
>> > > +
>> > > +You can see what Go versions are provided by listing
>> recipes-devtools/
>> > > content.
>> > > +
>> > > +Including the layer automatically picks up the latest Go version;
>> > > different versions
>> > > +need to be set explicitly by adding the following line to your distro
>> > > config
>> > > +or local.conf:
>> > > +
>> > > +GOVERSION = "1.16%"
>> > > +
>> > > +Please note: enabling these newer Go versions makes docker from
>> dunfell
>> > > branch
>> > > +of meta-virtualization unbuildable as it is too old. If you need a
>> > > working docker
>> > > +recipe, you can use the supplementary 'dunfell/docker' layer from
>> this
>> > > meta-lts-mixin
>> > > +repository.
>> > > +
>> > > +
>> > > +Maintainers:
>> > > +Alexander Kanavin <alex@linutronix.de>
>> > > diff --git a/conf/layer.conf b/conf/layer.conf
>> > > new file mode 100644
>> > > index 0000000..5f74224
>> > > --- /dev/null
>> > > +++ b/conf/layer.conf
>> > > @@ -0,0 +1,19 @@
>> > > +# We have a conf and classes directory, append to BBPATH
>> > > +BBPATH .= ":${LAYERDIR}"
>> > > +
>> > > +# We have a recipes directory, add to BBFILES
>> > > +BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>> ${LAYERDIR}/recipes*/*/*.bbappend"
>> > > +
>> > > +BBFILE_COLLECTIONS += "lts-go-mixin"
>> > > +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
>> > > +BBFILE_PRIORITY_lts-go-mixin = "6"
>> > > +
>> > > +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
>> > > +
>> > > +LAYERDEPENDS_lts-go-mixin = " \
>> > > +    core \
>> > > +"
>> > > +
>> > > +GOVERSION ?= "1.17%"
>> > > +PREFERRED_PROVIDER_go-native = "go-binary-native"
>> > > +
>> > > --
>> > > 2.20.1
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#56003):
>> https://lists.yoctoproject.org/g/yocto/message/56003
>> Unfollow This Topic: https://lists.yoctoproject.org/unft/88722205/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--000000000000dd098405d696b5f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, 27 Jan 2022 at 22:04, Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><br></div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 27, 2022 at 12:0=
6 PM Denys Dmytriyenko &lt;<a href=3D"mailto:denis@denix.org" target=3D"_bl=
ank">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kan=
avin wrote:<br>
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
project=C2=A0</div></div></div></blockquote><div><br></div><div>Checkout th=
e branches from the same repo into two different directories. Yes this is u=
nusual, and slightly confusing. But that way the branches can be maintained=
 and included into builds independently.<br></div><div><br></div><div>Alex<=
br></div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div><div class=3D"gmail_quote"><div dir=3D"auto"><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex" dir=3D"auto"><br>
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
</blockquote></div></div>

--000000000000dd098405d696b5f2--

