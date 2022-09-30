Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D9AC433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 16:07:08 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com
 [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web09.787.1664554020179767031
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 09:07:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o1+48MoM;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id
 586e51a60fabf-12803ac8113so5946234fac.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 09:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=v9AByWXJ9pIY8xQ4UQmBcfljOshutAc5QI9c1X4YVrQ=;
        b=o1+48MoMRCvV7WTSY4Dg+A7ISLqvjSnsBMl5FKnQkBpOc9YUYhw2Yz9//n8GZeOGx3
         2xxlZHtuQJVYNI79YPDhlXn94pVSX5Yr8RZXBE5jqvmTYvaONw70NufaxarMzCMwMKQj
         gmLWmW3j/cMButUWtRbKZ66FqhffQhicsuoqN7x0MbHbaQGl7veoq1O5DFuwF95TneCA
         Tt+np2xrMh/gpuX/bC4KGq3YqaVZDi+DFPsUSwK12Kep9MhImVDnJg56aMMws4NyQCic
         t3s0Ql1FfPoRoAA14im0bcCph5hfLP+h/R9CMuEu7eFDJTgTIXRdZFR4+AR5iDXqBzCJ
         80OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=v9AByWXJ9pIY8xQ4UQmBcfljOshutAc5QI9c1X4YVrQ=;
        b=PH1Cw9XlGkmjLe2y461XFuPZD+p3xRvtitiPpJISXkjdCIpuNnI6jc/Rr2YPBbxgWV
         xVk6r2C6d5Ias4rAHY1YafXNb8Zoi6lOsBWFYOkCGSOH8TtOqr38TooyRTHCR4z/WNJC
         itZRPqfE89f/pKOXEYRuw9Gb73Kwc8ZFL/xb4VBdUYoJjQweim2Hud5FG4/k1XQ+2jOX
         QB8MfB14UCjG+Vm9zV7lTjDFTTYfyACMQAFxVfHSBVIHtnxFdl3CdbO1s7KmsZWl/INx
         9GEBV87pDYY/ONtVkN/cOJzbJh73L/kGACJG0bISzog0Qi0KAHHleQ7Q5/4hcwsAH8M7
         odzA==
X-Gm-Message-State: ACrzQf0PJmm1VW4t+hetKwYItYZdFmTWwJW2WKju153ByoqFH0ZzmOMV
	RbONYGZdv71WQBdJKKA8o2ur8joMTnQbgygW+8w310PZ
X-Google-Smtp-Source: 
 AMsMyM5DlLRNyF8sNHUhU8I52Ps4AJCgoMSYEWB63rcyy3hJMLK4U0Slftp5llX1aaO6xNrMIm7anGVOUmtUmJqUZpk=
X-Received: by 2002:a05:6870:d1c8:b0:132:1239:2550 with SMTP id
 b8-20020a056870d1c800b0013212392550mr618951oac.55.1664554019477; Fri, 30 Sep
 2022 09:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220929234506.3681015-1-raj.khem@gmail.com>
 <ff8eafe3-c02a-0aff-74bc-ba18b6e0e733@theobroma-systems.com>
In-Reply-To: <ff8eafe3-c02a-0aff-74bc-ba18b6e0e733@theobroma-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 30 Sep 2022 09:06:48 -0700
Message-ID: 
 <CAMKF1srKQizJzrhWJr0h4T+tSS8WdFv5EaAYXUcXpPLJLDB6sA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layers: Add langdale to
 LAYERSERIES_COMPAT
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: twoerner@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000a5eb705e9e72f32"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 16:07:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58232

--0000000000000a5eb705e9e72f32
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 30, 2022 at 5:04 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Khem,
>
> On 9/30/22 01:45, Khem Raj wrote:
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >   conf/layer.conf | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index a2661f9..0e28857 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
> >   # This should only be incremented on significant changes that will
> >   # cause compatibility issues with other layers
> >   LAYERVERSION_rockchip = "1"
> > -LAYERSERIES_COMPAT_rockchip = "kirkstone"
> > +LAYERSERIES_COMPAT_rockchip = "kirkstone langdale"
>
> Considering that we have a branch for kirkstone already, maybe we can
> just switch to supporting langdale only?


I was not sure of if it will break some use cases therefore I just wanted
to add what works and not delete anything I have not tested

>
>
> Cheers,
> Quentin
>

--0000000000000a5eb705e9e72f32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Sep 30, 2022 at 5:04 AM Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-s=
ystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Khem,=
<br>
<br>
On 9/30/22 01:45, Khem Raj wrote:<br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0conf/layer.conf | 2 +-<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/conf/layer.conf b/conf/layer.conf<br>
&gt; index a2661f9..0e28857 100644<br>
&gt; --- a/conf/layer.conf<br>
&gt; +++ b/conf/layer.conf<br>
&gt; @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip =3D &quot;1&quot;<br>
&gt;=C2=A0 =C2=A0# This should only be incremented on significant changes t=
hat will<br>
&gt;=C2=A0 =C2=A0# cause compatibility issues with other layers<br>
&gt;=C2=A0 =C2=A0LAYERVERSION_rockchip =3D &quot;1&quot;<br>
&gt; -LAYERSERIES_COMPAT_rockchip =3D &quot;kirkstone&quot;<br>
&gt; +LAYERSERIES_COMPAT_rockchip =3D &quot;kirkstone langdale&quot;<br>
<br>
Considering that we have a branch for kirkstone already, maybe we can <br>
just switch to supporting langdale only?</blockquote><div dir=3D"auto"><br>=
</div><div dir=3D"auto">I was not sure of if it will break some use cases t=
herefore I just wanted to add what works and not delete anything I have not=
 tested=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--0000000000000a5eb705e9e72f32--

