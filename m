Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EA3BC02192
	for <webhook@archiver.kernel.org>; Mon,  3 Feb 2025 10:26:58 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.84828.1738578409839648210
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 02:26:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=pS9naGqp;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43690d4605dso28345455e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 02:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1738578408; x=1739183208; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qXhxznT0Hq0L0CgrVmyri4PlAoSRYEukIWzd0JPRFYs=;
        b=pS9naGqpevjgJRrrNwkj0gR9B+G5O0IGsP0DGINTUyzzZPQ6gL2qFMHxNAj1Pd09FX
         Hfk0c/k09sGHNKblIrB9fX72chsa77DGXHSpsR97IazUkTvNgxUJ/ntkJCDxWHKV/PpH
         KNCFTxlf28GbmrwAIPfdtDLXKaw5PJSb9mAk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738578408; x=1739183208;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qXhxznT0Hq0L0CgrVmyri4PlAoSRYEukIWzd0JPRFYs=;
        b=DYkWD/P3grl8mL7wEII0Ao7+En1NeRNi1buETMFZCV0r0hCXlFTrHFtSN5+XP1/xX9
         79jrVpgkRTgfGdoDRZpyinEPYlLh/jM3TIFXf/R6ssAI0Eiq50sIg8QUY5TYu/670+qL
         xq2AQbht8s8cp4kzVc5YnPbjmoEmzJF3OtLaUntntaVQo1xXmCHCtNNZtgFTrMIPtdrx
         p2vFACvjPKy+ntBFK5rOU0VWMsXxubWrkHLZAReTTPDwXzuLA/0vodoV5ynhU+MNbrS5
         3Zi4oLU8iw8pIHGu19IKuI04WdNLJaJQQGNSGNnXMFDvglgx7zjJKnc19kFpypVaHkpH
         U0hw==
X-Gm-Message-State: AOJu0Ywrz9R209xY6yNeM3YzkOURyRiRHntnWeuy2Z5ZCJaIiniz3lkQ
	x7Rs2hXgC4EaJUqkP+KEyWLOfHotvZi9QoEc6LJ5kbV+YUyhc/WsrnnT8dNRqSvz3CXBqzWr5i5
	/2b/U0DUxczroSVG6/A7iws2FX8CQcSj5iiGUueRBe8ahpy3WjSDI3A==
X-Gm-Gg: ASbGncsjbLGptkN9TUSu+u+8eqaUa6+jX2YwRfJzfJr82ePDJVRzXpDkICYdDOwRfTq
	bSxs5tNM8+qLGkcEpEJ0khGPA+nS0zHip1WPXJ+79CIcSeO/O1DeN5CKsmW8grrP1TO3Uev9SFF
	enTK49FAUp1i/C5ZQeZeJVPOrgXf/0CQ==
X-Google-Smtp-Source: AGHT+IGq8qKWYfsEmJWTt1vo21em8/BAUdtUKkLXDWKCb2AsGb+UqOoBwaeGoOGrpvr21jlx0OThzs2IfjWqLctkKew=
X-Received: by 2002:a05:600c:1d27:b0:436:5fc9:30ba with SMTP id
 5b1f17b1804b1-438dc429771mr191684245e9.29.1738578407611; Mon, 03 Feb 2025
 02:26:47 -0800 (PST)
MIME-Version: 1.0
References: <CAOOAcKdtLmVtz0r5SYwmqyrUgf+PzMhhovg9jen=k6h5UVKvXg@mail.gmail.com>
 <CAOOAcKcCJNjTECq6eqWi+E4-rPG1aAC5Hy=Yj4KP-45J57Bqyg@mail.gmail.com>
In-Reply-To: <CAOOAcKcCJNjTECq6eqWi+E4-rPG1aAC5Hy=Yj4KP-45J57Bqyg@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Mon, 3 Feb 2025 11:26:21 +0100
X-Gm-Features: AWEUYZnFtLOd0q0aGQDA-Nx_EJaSyxC3CqNOtK9KXI5zCa1HWlgdnR-PeOeSm0c
Message-ID: <CAMSfU+6fz9nyqz+vmQOE6saVkexT=DHVqUoitWyCs1=Vqu4GGA@mail.gmail.com>
Subject: Re: [yocto] Incompatible license in yocto
To: yocto@lists.yoctoproject.org, manjurrnayak96@gmail.com
Content-Type: multipart/alternative; boundary="0000000000006678ef062d3a54db"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2025 10:26:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64698

--0000000000006678ef062d3a54db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lun. 3 f=C3=A9vr. 2025 =C3=A0 11:04, Manju RR via lists.yoctoproject.org
<manjurrnayak96=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

>
> ---------- Forwarded message ---------
> From: Manju RR <manjurrnayak96@gmail.com>
> Date: Mon, 3 Feb, 2025, 3:14=E2=80=AFpm
> Subject: Incompatible license in yocto
> To: <main@lists.yoctoproject.org>
>
>
> Hi Team,
>
> I'm trying to add INCOMPATIBLE_LICENSE =3D "GPL-3.0* LGPL-3.0*"  to yocto
> build. I made this changes in distro include files but after making this
> changes getting lot of compilation errors. Could you help me with this?
>

You may want to explore using
https://git.yoctoproject.org/poky/tree/meta/conf/distro/include/no-gplv3.in=
c
in your distro. That may fix some of the problems.

Regards,
--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000006678ef062d3a54db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div></div><br><div class=3D"gma=
il_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=
=A0lun. 3 f=C3=A9vr. 2025 =C3=A0=C2=A011:04, Manju RR via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;manjurrnayak96=3D<a=
 href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproj=
ect.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto"></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message --------=
-<br>From: <b class=3D"gmail_sendername" dir=3D"auto">Manju RR</b> <span di=
r=3D"auto">&lt;<a href=3D"mailto:manjurrnayak96@gmail.com" target=3D"_blank=
">manjurrnayak96@gmail.com</a>&gt;</span><br>Date: Mon, 3 Feb, 2025, 3:14=
=E2=80=AFpm<br>Subject: Incompatible license in yocto<br>To:  &lt;<a href=
=3D"mailto:main@lists.yoctoproject.org" target=3D"_blank">main@lists.yoctop=
roject.org</a>&gt;<br></div><br><br><div dir=3D"auto">Hi Team,<div dir=3D"a=
uto"><br></div><div dir=3D"auto">I&#39;m trying to add INCOMPATIBLE_LICENSE=
 =3D &quot;GPL-3.0* LGPL-3.0*&quot;=C2=A0 to yocto build. I made this chang=
es in distro include files but after making this changes getting lot of com=
pilation errors. Could you help me=C2=A0with this?</div></div></div></block=
quote><div><br></div><div>You may want to explore using <a class=3D"gmail-t=
heme gmail-markdown__link" href=3D"https://git.yoctoproject.org/poky/tree/m=
eta/conf/distro/include/no-gplv3.inc" rel=3D"noreferrer" target=3D"_blank">=
<span>https://git.yoctoproject.org/poky/tree/meta/conf/distro/include/no-gp=
lv3.inc</span></a> in your distro. That may fix some of the problems.</div>=
<div><br></div><div>Regards,<br></div></div><span class=3D"gmail_signature_=
prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=
=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div></div></div><=
/div>

--0000000000006678ef062d3a54db--

