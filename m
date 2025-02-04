Return-Path: <manjurrnayak96@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630AEC0218F
	for <webhook@archiver.kernel.org>; Tue,  4 Feb 2025 04:19:15 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.108856.1738642752626475611
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 20:19:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BmJF8mqI;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: manjurrnayak96@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6f768e9be1aso35504207b3.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 20:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738642752; x=1739247552; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bQ4Bm1AvdoP9TW+9ceKGVyPIKe7Hwgl/P3IJH7pk1pU=;
        b=BmJF8mqIC4tj173nrFBbe0OyGvBd0fGgBsZQOBuvXQMvcyxqDWM0heaXgcazf5MAEd
         GDi/NsNniG0tJXg4TelBMwL0Y0VwLxBkqGjZO7/sO5gZO4n8dCLvpOKsu7KLYYsk16bm
         HA++TW6vWnVu9UjyVX+925UH3UoGzH/5kKN/MZAXrVVLropdsiNI2HGHrfHEJrLhplDX
         gI0NRXE3oaJh/1swN8M/hZShlMxYTupBVO2rPsxTYM0rJzEOJmQ27Uve73HmkXl7nGbl
         5YB/Yr8eXihL2IF9f7fI7w9O+Jdk1kJuZqkk84+DiBxLd5vOaYONDhsBiEIQCSLJkmrc
         xHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738642752; x=1739247552;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bQ4Bm1AvdoP9TW+9ceKGVyPIKe7Hwgl/P3IJH7pk1pU=;
        b=mJZttXUUrhI0wtb+cUFLX5D1Tyd4va+zr/Qg1Rx8T7T4dEoyQi5Ygdsj68TE70yChF
         fosb2k6Ef/xzIFx70uEeIBy/vNDXilV7LvQT6Pk9oZP0TPtlHzbVFDl9Sb91CJOoD6Ct
         nRNL2PUiZkLNEANsuE3sQvEb/0Mpm/+yn6qkNr/b78S1zG6cLaz5Lowz+rwIWdLsq27O
         MPmTYtwPbTYQccZMBze6EHF5vbQSyAd0cpkGaXoVM90B2I4JBDox3rDidi7yOdx4045j
         +COjfn/3wdsLuaXSl7EdbRxnPQR1tefIiORnekflXlO7O7r8yRfJgyYNr9BLuMZrbfnY
         275Q==
X-Gm-Message-State: AOJu0YzmzjnUjydTIqe5wgbR3FUpk3/kDh20G0dkOl/wVA++GhIf1cS/
	0QLXfjZuxvOcobeOHqJktIvBXdBOIrSkLG8dgIy3YwZj1s38uvdpKR2H7i34u/JZuBACc3iPxGO
	40EDUHUdSMFOyEaJ5kdlWwKRMzg0=
X-Gm-Gg: ASbGncs/MZtodQI2xPu/X/pl0+9TPxJkLJBwhlgH/bMLJDl2aEJmXWfO/hl/uTkv1C8
	fPTXBznlj76TlViA8VAM72F0OkuYxtGbpN0hEe3dFIdr6dCmN6t020iZ9e23tHteP2V/NeXBx
X-Google-Smtp-Source: AGHT+IEaRdx4gXB1Rp75amkpLdB6BGv7/xzErjyWUwrFfdJojMRjQ8QKO+M3W+cwfIU5W4awzUSq5K71sVQGBld3EM8=
X-Received: by 2002:a05:690c:3691:b0:6f9:544f:67ec with SMTP id
 00721157ae682-6f9775d0b59mr15886347b3.18.1738642751731; Mon, 03 Feb 2025
 20:19:11 -0800 (PST)
MIME-Version: 1.0
References: <CAOOAcKdtLmVtz0r5SYwmqyrUgf+PzMhhovg9jen=k6h5UVKvXg@mail.gmail.com>
 <CAOOAcKcCJNjTECq6eqWi+E4-rPG1aAC5Hy=Yj4KP-45J57Bqyg@mail.gmail.com>
 <CAMSfU+6fz9nyqz+vmQOE6saVkexT=DHVqUoitWyCs1=Vqu4GGA@mail.gmail.com> <CANNYZj8dHU8-VmXPjX9nkC4nvUr-CzM4VczNt=P_jp59UjiEyA@mail.gmail.com>
In-Reply-To: <CANNYZj8dHU8-VmXPjX9nkC4nvUr-CzM4VczNt=P_jp59UjiEyA@mail.gmail.com>
From: Manju RR <manjurrnayak96@gmail.com>
Date: Tue, 4 Feb 2025 09:49:01 +0530
X-Gm-Features: AWEUYZmZBHFEt7eg38VAfrSuuEuodV-IhRjv2K_Dxev2qlV_THr62ZSYg-iMNSc
Message-ID: <CAOOAcKdebh4g_oj3aQdzJ3mE5qmDkNqJ_Xp68R=N5BxtyMd9mw@mail.gmail.com>
Subject: Re: [yocto] Incompatible license in yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Content-Type: multipart/alternative; boundary="0000000000009bc19c062d494fdb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Feb 2025 04:19:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64702

--0000000000009bc19c062d494fdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here I need to check for everything image build. After making this change
I'm trying to build every image and seeing lot of compilation errors.

On Mon, 3 Feb, 2025, 4:22=E2=80=AFpm Alexander Kanavin, <alex.kanavin@gmail=
.com>
wrote:

> On Mon, 3 Feb 2025 at 11:26, Yoann Congal via lists.yoctoproject.org
> <yoann.congal=3Dsmile.fr@lists.yoctoproject.org> wrote:
> >> I'm trying to add INCOMPATIBLE_LICENSE =3D "GPL-3.0* LGPL-3.0*"  to yo=
cto
> build. I made this changes in distro include files but after making this
> changes getting lot of compilation errors. Could you help me with this?
>
> I'd like to know where the advice to set this global setting came
> from. It's deprecated in favour of per-image license restrictions.
>
>
> > You may want to explore using
> https://git.yoctoproject.org/poky/tree/meta/conf/distro/include/no-gplv3.=
inc
> in your distro. That may fix some of the problems.
>
> The first thing is to set the restriction only in the product image,
> and then see what the remaining issues are.
>
> no-gplv3.inc is meant as a showcase of examples for breaking
> dependency chains when issues occur, but it just as well may result in
> a unusable configuration for the actual product.
>
> Alex
>

--0000000000009bc19c062d494fdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Here I need to check for everything image build. After makin=
g this change I&#39;m trying to build every image and seeing lot of compila=
tion errors.</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, 3 Feb, 2025, 4:22=E2=80=AFpm Alexander Kanavin, &lt=
;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On Mon, 3 Feb 2025 at 11:26, =
Yoann Congal via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferre=
r noreferrer" target=3D"_blank">lists.yoctoproject.org</a><br>
&lt;yoann.congal=3D<a href=3D"mailto:smile.fr@lists.yoctoproject.org" targe=
t=3D"_blank" rel=3D"noreferrer">smile.fr@lists.yoctoproject.org</a>&gt; wro=
te:<br>
&gt;&gt; I&#39;m trying to add INCOMPATIBLE_LICENSE =3D &quot;GPL-3.0* LGPL=
-3.0*&quot;=C2=A0 to yocto build. I made this changes in distro include fil=
es but after making this changes getting lot of compilation errors. Could y=
ou help me with this?<br>
<br>
I&#39;d like to know where the advice to set this global setting came<br>
from. It&#39;s deprecated in favour of per-image license restrictions.<br>
<br>
<br>
&gt; You may want to explore using <a href=3D"https://git.yoctoproject.org/=
poky/tree/meta/conf/distro/include/no-gplv3.inc" rel=3D"noreferrer noreferr=
er" target=3D"_blank">https://git.yoctoproject.org/poky/tree/meta/conf/dist=
ro/include/no-gplv3.inc</a> in your distro. That may fix some of the proble=
ms.<br>
<br>
The first thing is to set the restriction only in the product image,<br>
and then see what the remaining issues are.<br>
<br>
no-gplv3.inc is meant as a showcase of examples for breaking<br>
dependency chains when issues occur, but it just as well may result in<br>
a unusable configuration for the actual product.<br>
<br>
Alex<br>
</blockquote></div>

--0000000000009bc19c062d494fdb--

