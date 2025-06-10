Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A335DC5B552
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 08:34:24 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.82126.1749544451210442735
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 01:34:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Ogaaxu38;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a376ba6f08so2873014f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 01:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1749544449; x=1750149249; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mVU8DHQ3ZKC4UMzX0TcX9NnYF6enJJguv4RGWFGmFL4=;
        b=Ogaaxu38+t0DiRnf5P3NdWjIn/+Sc9xqlHxsTdPg9PEpCOx4eaeZ9eenL9B0uw4HGZ
         vHW0sKPCxzR0rtTQF+uH18xxM6eVn1qATEc96D8ndnkULkxE/LvrrX15K1IHUkM+3tyv
         Pzy9gWFwSCWcWwjyuGmih+yXYj2PIpKN+rtRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749544449; x=1750149249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mVU8DHQ3ZKC4UMzX0TcX9NnYF6enJJguv4RGWFGmFL4=;
        b=iWVucnJBQLQ0qiZCaiF0o/1GeBDjQy9M+ANoLb2P8UpODKYzMzKOTv3T1leemL9Mum
         Jch+OtJis7nwRuD2q9D2l/CuHKNbAz8NdoIDz+/gigQXl0S5D+uGwKsR3pseOwcl3/2u
         WcofUyzYR7E5pZttLlzFhAlUZkbraHzZSEOetuWZQyTGBdeGn8CVb+59EN1DKjqxUyDP
         o5xJRLm++RSiwOyBtX3PboQ+3Q0y0cdOMVAdwSYVDUN3wHg0dwrG9PyeymyfR4REy0XC
         jMlh1eWYZuLeh6F7CcNebpy505lQh5GhpCjq5B4GTfw5fRNu97O/H/Aw/z4o+PZslGzQ
         32kw==
X-Gm-Message-State: AOJu0Yx0MtPhCobeXG/dKdwkfrI9zd6ms76ML0wD5nQUK/En/xhsf7T5
	/jzEvXCBWlCiGALMC+4AxbAU2IEKBjaRDoc5e0DYtO/XtlfW4xyJG9bsF0NRXAHiHl/B9Y/JyHT
	8oa3bzhxzjcl3mzCH9ScKpp+Y50j8s7mm2iN8w5iy3g==
X-Gm-Gg: ASbGncvszPY7CZtoDJEK0FwvIx08iVWhFMTgunRqdeMg2Cz80GpdAOew9jPyQuHLGX4
	zgZ6muOuBftgfrWnewfk5uYP/Z+8Xb7HcRi2k41+vtj2fe6xoSHReFV4EfYjbI0cOTAX92G8sK/
	rCn5wG0HKdDckTAgjIITuqyTi5Re+URYUF1jHDlhtxwJyaQ+GVNAEiJxpFZo4r+hW/qRqzOasMn
	lUdyqXMOnurYGNJ
X-Google-Smtp-Source: AGHT+IHc4k8KNH1btAXvRQNQmgqUNFUiKgqIYn8+Eu6hqS4m/AkXsjUvh0EHfpoF7Axlq+fmO5JsjqhNk4/Ael6ihqY=
X-Received: by 2002:a05:6000:40c9:b0:3a4:f6ba:51da with SMTP id
 ffacd0b85a97d-3a531786845mr13162398f8f.15.1749544449366; Tue, 10 Jun 2025
 01:34:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAMSfU+6UF+FqN_eWFwoNAMHDCqyZBMmnaTBHmyOqjXP4jQ6-TA@mail.gmail.com>
 <27221.1749534670455072587@lists.yoctoproject.org>
In-Reply-To: <27221.1749534670455072587@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 10 Jun 2025 10:33:43 +0200
X-Gm-Features: AX0GCFv0IwrtpwL5sOAJCyt-j1p1l4EY2yZ-d1MiDJ0EAntR41kTAiWvS026x-E
Message-ID: <CAMSfU+7wr96L8VHhy2bCWxgsEn8fa_+Yeadn-qXM-UUK3-MqeA@mail.gmail.com>
Subject: Re: [yocto] Inherit bbclass from bb file with a certain condition
To: haimbachar2008@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006c74440637338f18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 08:34:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65495

--0000000000006c74440637338f18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 10 juin 2025 =C3=A0 07:51, Haimbach via Lists.Yoctoproject.Org
<haimbachar2008=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi Yoann,
>
> In my case im working with the Kirkstone ditsro and its seems not support
> with inherit_defer.
>
> There are any way to to it in Kirkstone?
>
In kirkstone, that is done with a simple inherit but it does have
limitations (IIRC, around order of variable creation/affectation/evaluation=
)
https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/btrfs-tools/bt=
rfs-tools_5.16.2.bb?h=3Dkirkstone#n45
inherit ${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3-base',
'', d)}


> Regrads,
> Haim
>


--=20
Yoann Congal
Smile ECS

--0000000000006c74440637338f18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 10=
 juin 2025 =C3=A0=C2=A007:51, Haimbach via <a href=3D"http://Lists.Yoctopro=
ject.Org">Lists.Yoctoproject.Org</a> &lt;haimbachar2008=3D<a href=3D"mailto=
:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;=
 a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div>Hi Yoann,</div>
<div>=C2=A0</div>
<div>In my case im working with the Kirkstone ditsro and its seems not supp=
ort with inherit_defer.</div>
<div>=C2=A0</div>
<div>There are any way to to it in Kirkstone?</div><div></div></blockquote>=
<div>In kirkstone, that is done with a simple inherit but it does have limi=
tations (IIRC, around order of variable creation/affectation/evaluation)</d=
iv><div><a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-devt=
ools/btrfs-tools/btrfs-tools_5.16.2.bb?h=3Dkirkstone#n45">https://git.yocto=
project.org/poky/tree/meta/recipes-devtools/btrfs-tools/btrfs-tools_5.16.2.=
bb?h=3Dkirkstone#n45</a></div><div>inherit ${@bb.utils.contains(&#39;PACKAG=
ECONFIG&#39;, &#39;python&#39;, &#39;setuptools3-base&#39;, &#39;&#39;, d)}=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv>Regrads,</div>
<div>Haim</div>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000006c74440637338f18--

