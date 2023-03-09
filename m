Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33D17C64EC4
	for <webhook@archiver.kernel.org>; Thu,  9 Mar 2023 07:24:49 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.7839.1678346686042260499
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Mar 2023 23:24:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20210112.gappssmtp.com header.s=20210112 header.b=coERGHe1;
 spf=pass (domain: smile.fr, ip: 209.85.208.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f44.google.com with SMTP id a25so3457994edb.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 23:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112; t=1678346684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0VMT5LxWLmeCqmpC78zCa5EY2vxyWfpJTc1uKM/W2Q4=;
        b=coERGHe1Nz0dCQENG55QWkU4jUv62jZoUuI4QiX5HMgy3jB4+FI8Vi7JU4K+ALW4bu
         TV4+HZLf2/tgmuH1eDByzqi6SJhcJRQ+99F6keRgJ3edCT0sx82i2YxoJN6cYvnyMLK3
         z0NtsewYMVV4T3CXWgDzneR02WvQn8fnoNnSJwvI6nfJ8dmyd6w9YrS/WtuF7HWKPXkP
         o2nZh2LUNLsQx0ds8CYn0vdkp1JDVPJQFQCm/iqUvPrEC20Ao8RICoaB4NjwXmeeqKMV
         AZRfJjvL97p1aAqxh1lfoTragngw1sgIOD1Tm9lHQm4bpbQY0TJn5zyIVMHPMuoMlKie
         P54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678346684;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0VMT5LxWLmeCqmpC78zCa5EY2vxyWfpJTc1uKM/W2Q4=;
        b=mvTJkG8J9Mhzmjv0ZqTpznvnqNVnuYnNgNwOjkAEWbXkdLC8BVxNJUVhrAPtCAI7Iu
         Hbh2TuB1ZTlRkb8947d8JGvYtHW/xsaeJx6ayn/hM2w7PVaFnF3rj7yfb0iR8cPmcwz7
         AZGjBElbPeHgZHoO1GaJgb9k3p460mRFnmp73KWRfzhwUNOBD5ttA8osO9H5ja8wYp5d
         9vq/Cvo/SkfFsBBL4VcNZdWju6k1Fpdzl2+zvptCHTyjyLHMVRiAWYxOphJYsLjFC0T3
         Se1JWIITgYtyr7ZJjpoLQl4AIciSCnUXKTU42VxCZ5e0CZfF7OqjnYFyX14DLbbeJM4D
         6SsA==
X-Gm-Message-State: AO0yUKU6NmoWXRGyQfvuB1kMy/ltkSrJFRhFAUX9n0SvvopioQz1CtNW
	gw1kre2svde6W7SJvFENRq/SXxDYHVtKTnhWWOQv3Q==
X-Google-Smtp-Source: AK7set9R22DqX3PAMmumfduJLJUlA+sJ+V0xO1W04OdCpSZERy7ar1/HMjTgQSBVHM63YJgpyh8YuOyLXiL+Rq4+J/M=
X-Received: by 2002:a17:906:388d:b0:877:e539:810b with SMTP id
 q13-20020a170906388d00b00877e539810bmr10711330ejd.2.1678346683725; Wed, 08
 Mar 2023 23:24:43 -0800 (PST)
MIME-Version: 1.0
References: <206017df-f3ed-2806-7381-80e0c24ef140@faresoftware.it>
In-Reply-To: <206017df-f3ed-2806-7381-80e0c24ef140@faresoftware.it>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Thu, 9 Mar 2023 08:24:30 +0100
Message-ID: <CAMSfU+4hGgXC5M1NTGxqTe-2FQDbveeM-QfcWBO12fkN-ZhhBA@mail.gmail.com>
Subject: Re: [yocto] Skipping recipes depending on MACHINE
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e4d07a05f6728912"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 07:24:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59372

--000000000000e4d07a05f6728912
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le jeu. 9 mars 2023 =C3=A0 08:11, Mauro Ziliani <mauro@faresoftware.it> a =
=C3=A9crit :

> Good morning.
>
> I made a project for IMX6 platform.
>
> Now I ported it to x86.
>
> I made a layer for IMX6, but some recipe.bb cannot be compiled fo x86,
> or some recipe.bbappend has not a mother, so the bibtake stops.
>
> I to adapt the layer to x86 architecture I put some BBMASK +=3D "" in my
> conf/bblayers.conf for x86 build environment and I excluded every
> unneeeded file for x86.
>
> Can I put the BBMASK in some conf file inside the layer to do the same,
> dependig on MACHINE, using OVERRIDE?
>
> The first idea was put BBMASK in layer.conf, like this
>
> BBMASK_intel-corei7-64 =3D " \
> .... \
> "
>
> I'd like to became my layer "auto-configurable" about MACHINE value
>
>
> Any idea?
>

Have you looked into COMPATIBLE_MACHINE?
=3D>
https://docs.yoctoproject.org/ref-manual/variables.html#term-COMPATIBLE_MAC=
HINE

Looks like a perfect match for what you are trying to do!

Regards,

--
Yoann Congal

--000000000000e4d07a05f6728912
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,<br><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Le jeu. 9 mars 2023 =C3=A0 08:11, Mauro Ziliani &lt=
;<a href=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; a =
=C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Good morning.<br>
<br>
I made a project for IMX6 platform.<br>
<br>
Now I ported it to x86.<br>
<br>
I made a layer for IMX6, but some <a href=3D"http://recipe.bb" rel=3D"noref=
errer noreferrer" target=3D"_blank">recipe.bb</a> cannot be compiled fo x86=
, <br>
or some recipe.bbappend has not a mother, so the bibtake stops.<br>
<br>
I to adapt the layer to x86 architecture I put some BBMASK +=3D &quot;&quot=
; in my <br>
conf/bblayers.conf for x86 build environment and I excluded every <br>
unneeeded file for x86.<br>
<br>
Can I put the BBMASK in some conf file inside the layer to do the same, <br=
>
dependig on MACHINE, using OVERRIDE?<br>
<br>
The first idea was put BBMASK in layer.conf, like this<br>
<br>
BBMASK_intel-corei7-64 =3D &quot; \<br>
.... \<br>
&quot;<br>
<br>
I&#39;d like to became my layer &quot;auto-configurable&quot; about MACHINE=
 value<br>
<br>
<br>
Any idea?<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Have you looked into COMPATIBLE_MACHINE?</div><div dir=3D"auto">=
=3D&gt; <a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#=
term-COMPATIBLE_MACHINE">https://docs.yoctoproject.org/ref-manual/variables=
.html#term-COMPATIBLE_MACHINE</a></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Looks like a perfect match for what you are trying to do!</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">--</div><div dir=3D"auto">Yoann Congal</div></=
div>

--000000000000e4d07a05f6728912--

