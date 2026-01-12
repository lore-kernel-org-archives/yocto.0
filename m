Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADAACF45DA
	for <webhook@archiver.kernel.org>; Mon, 12 Jan 2026 23:21:07 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.46769.1768260057432079121
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jan 2026 15:20:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=TAsLnvab;
 spf=pass (domain: smile.fr, ip: 209.85.221.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fbad1fa90so5960486f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jan 2026 15:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1768260056; x=1768864856; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rp94WTIqsxRBVZIQ1tUS9jH/Bu/5sAwkqzJfcGWHHCw=;
        b=TAsLnvabAlWZoSONf2IFMmjxYAgZbb06/rfT3ZXi9c88MZIPoBK5WoSEKoiDMoKKO5
         ZfiQ2fUOTuaDhS/1vtv5syNo2lufG2v58LAiisPIJpsYzIgrqvOl2lmMd56gxUV5vgih
         j1RjQ6pd6b0WEzbK7b4d7qktqCrKFAh6lsheU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768260056; x=1768864856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rp94WTIqsxRBVZIQ1tUS9jH/Bu/5sAwkqzJfcGWHHCw=;
        b=o101qH7d6r8xRCm8RTM3uxkr8IMc4UGSz1Fax5sti8V84SXhFvmu2KQwPZPn8ZzhAY
         lkalVgB0CWJmwWCt6lV2h4i8KXNkcbYLjJtNuiC/jX3KdJJTs7QsDxmUSdHFxuzgr4Fi
         g1vpoKwtGR3d8TL4mSif2cMeKvZCy9BH3Pt7wwnjdXFvoGTyPt9K6OA9JDPFm/h06BUf
         xknMf6jn64mVWg+vuf4vh/6y2mfqd8yp8fPu/o3oxZO1/QxJvCBBeNF1+F06AvywL0nO
         K2wKCERoE7eGGmFMB9BVFlCRgQLFFMN1vP6NW/XrKB80pZ7a7hyWq5QQS2ZeWG/wtaeE
         uCIw==
X-Gm-Message-State: AOJu0YymK7ws5Rmbz+HsRfHK0t2m0Zcc9sW0nZZ1XfdbnaWtUNKZQYbW
	zHB8PTdj6pmKPQfpjQKbOcjxx5gdAfsI+n4WAPyLySFmUUHvzCUlJcrWOgPATQZaUOaoG3MvtFx
	7HLDNoVLa4ZiGC1tRj7Y/mPjZp+3I+tBnBi2ETGMnCw==
X-Gm-Gg: AY/fxX5GVjjpwRbigIDoEKL+4YP8GNeQc/P1kWgdIwULpCX8rH1giXS6u2KCV/p5Kb2
	Sj/4vfac+rxk3J5zv7WifQCENcTwuOuRyOinF/Ka9+Tt2dC0QYWNj2+pEWM9FIdwz8lHjw02DXH
	17LUx+lgcLmR80dsRbE1UIEh7h93ET7ZNa7ICK33dVG/TAIIW3QmRddtGHqm9sq+sf8xNwhA/lb
	lHzBG/rXD/VbKg1xYJTqoV/wrtT5Lk+pITozu99rAhUV1DP4G9aygDdEEbLeAdrb/feulRuVRTP
	hOSGv+JqfMSOQmo80VgrxCcFfnCK
X-Google-Smtp-Source: AGHT+IGJkCkNvXIZPkLHUwMI6IKOWYhf6ywOwrB4CyNZEEleJO0pfkjMlCD+ixRjY7wE2RtpjTifVLHxXpbtAVNCPEc=
X-Received: by 2002:a5d:64e7:0:b0:432:86f5:18a1 with SMTP id
 ffacd0b85a97d-432c363510fmr20829239f8f.0.1768260055618; Mon, 12 Jan 2026
 15:20:55 -0800 (PST)
MIME-Version: 1.0
References: <0101019bb476ef27-8b7fdc51-0e56-4f57-96dd-07d91ed02b9a-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019bb476ef27-8b7fdc51-0e56-4f57-96dd-07d91ed02b9a-000000@us-west-2.amazonses.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 13 Jan 2026 00:20:21 +0100
X-Gm-Features: AZwV_Qj2HqQu8uyIvkKLMTe4LhqLrD2i2zP0z2mukxztObMis8d-5_dpzDLlnCA
Message-ID: <CAMSfU+6LBsach4GJYdHrLUHqRrro0SudYNU4p0pA4LEpmUpNCg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.3.1.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c65430648392039"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jan 2026 23:21:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66140

--0000000000007c65430648392039
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 13 janv. 2026 =C3=A0 00:07, Pokybuild User via lists.yoctoproject.o=
rg
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> a =C3=A9crit :

>
>     A build flagged for QA (yocto-5.3.1.rc2) was completed on the
> autobuilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.3.1.rc2
>
>
>     Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3041
>
>     Build hash information:
>
>     bitbake: 663021740bc086bd959a8457ad9ddb6da52a8278
> meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10
> meta-arm: 955b1d8e6921d8e03388c5013dfaebbb0cfc5099
> meta-aws: dde608c015c80442356bd180202f955cc9b61267
> meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871
> meta-intel: 9182026daca13f7efca0bb6ff1eacb039946c476
> meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10
> meta-openembedded: a4e768dcfae181dd99e39c4286fa0729ca7f4e47
> meta-qcom: dc5f692bff1032c40a19f4ab4cd7eb63afcfaab1
> meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff
> meta-yocto: 6973ca663aaa9c3ab517ee960ab7985a5bf54c07
> oecore: dd10706cfafb5574b7cf316fca2300d166ef71b0
> yocto-docs: 102a33294e63a5581c413555040f790161fc80ff


This was an "all green" build, so OK to proceed with QA

This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

--=20
Yoann Congal
Smile ECS

--0000000000007c65430648392039
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Le=C2=A0mar. 13 janv. 2026 =C3=A0=C2=A000:07, Pokyb=
uild User via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">l=
ists.yoctoproject.org</a> &lt;pokybuild=3D<a href=3D"mailto:yoctoproject.or=
g@lists.yoctoproject.org" target=3D"_blank">yoctoproject.org@lists.yoctopro=
ject.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><br>
=C2=A0 =C2=A0 A build flagged for QA (yocto-5.3.1.rc2) was completed on the=
 autobuilder and is available at:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://valkyrie.yocto.io/pub/releas=
es/yocto-5.3.1.rc2" rel=3D"noreferrer" target=3D"_blank">https://valkyrie.y=
octo.io/pub/releases/yocto-5.3.1.rc2</a><br>
<br>
<br>
=C2=A0 =C2=A0 Build URL: <a href=3D"https://autobuilder.yoctoproject.org/va=
lkyrie/#/builders/29/builds/3041" rel=3D"noreferrer" target=3D"_blank">http=
s://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3041</a><br>
<br>
=C2=A0 =C2=A0 Build hash information: <br>
<br>
=C2=A0 =C2=A0 bitbake: 663021740bc086bd959a8457ad9ddb6da52a8278<br>
meta-agl: fcc4176504cd4b5b9d27d20797b11be5330e9f10<br>
meta-arm: 955b1d8e6921d8e03388c5013dfaebbb0cfc5099<br>
meta-aws: dde608c015c80442356bd180202f955cc9b61267<br>
meta-clang: cf20f8bd1366d41094c945597b95dd746e87b871<br>
meta-intel: 9182026daca13f7efca0bb6ff1eacb039946c476<br>
meta-mingw: 00323de97e397d4f6734ef2191806616989f5e10<br>
meta-openembedded: a4e768dcfae181dd99e39c4286fa0729ca7f4e47<br>
meta-qcom: dc5f692bff1032c40a19f4ab4cd7eb63afcfaab1<br>
meta-virtualization: 28d26fd95397bf575e65fcca0cbb302b1e9bc7ff<br>
meta-yocto: 6973ca663aaa9c3ab517ee960ab7985a5bf54c07<br>
oecore: dd10706cfafb5574b7cf316fca2300d166ef71b0<br>
yocto-docs: 102a33294e63a5581c413555040f790161fc80ff</blockquote><div><br><=
p style=3D"margin:0px">
    This was an &quot;all green&quot; build, so OK to proceed with QA<br><b=
r></p></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
This is an automated message from the Yocto Project Autobuilder<br>
Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder2" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/yocto-autobuilder2</=
a><br>
Email: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_bla=
nk">richard.purdie@linuxfoundation.org</a></blockquote></div><span class=3D=
"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font>=
<div><font face=3D"Raleway, regular">Smile ECS</font></div></div></div></di=
v>
</div>

--0000000000007c65430648392039--

