Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD8DC4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 04:30:40 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.11630.1671597034968730945
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 20:30:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Thzd2w1S;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: chuckwolber@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso596736wmp.3
        for <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 20:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h4SyWBq1+5HgY+Dej5bn9eojsugVOd+fhHkVkh0IMZE=;
        b=Thzd2w1S4YyOslXo7DgV/4Ru6DWIHkLMWBTrGH510STmlt/Nt4N1q54S7/NVQaz3oT
         J0z7lR9AO5lF9v3iVOe68DY6Pc+g8fTqqIIhgRVNy2VXiOtbcAnt5z0MHWepk00D88l8
         /H++Sn6+v1chRqn4jnEbEiAsG0egCwC/PEXLUfWg74vUxkWoJjtVAbAaA0VXJEg35vVL
         bSHApOXdMmGPXPl8z4AByVJMli6YZIyBrXscFirQWe/FhHlZLxMd5uztXVxjCZEvmFgp
         BRC/pA7G9kn0uWV0IGySJaokJkWJ8KhsVisQPzvwfzFryMGbOtbO8v7sJofAmGG2WORG
         ZNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4SyWBq1+5HgY+Dej5bn9eojsugVOd+fhHkVkh0IMZE=;
        b=ZvOCYq17+VCIb0Ao29CcYalZ6ChU8s7DvZ6Hg8O7YiA/e1YFIpPEkMkwUJ095TptmV
         bbW4i5jXGXRKR5Jx0Xh1jDrr8TZ3UQu/ONJBJ6CuKIzsSnttqxTkLKChMMIHFMCNLsc/
         I0fwpRp+VPz17nKGOsglNNXfyvdPaW0ki8p39gfIMR9cJI76e432RxAgl27+y1i+TGuu
         MjUpMDnZtoGuKmiL7gVyjC8OPMpvQTwAt6jWa4jFNHI/KW46V5xkzhYDE5HZlFD+obgf
         xvKpO20mbrEcNwoQK4F9Om8RgzyMFJiJO/XPBKgPgDEb1pa3WnIKR2C+AQxhMaI1IBcn
         5aLg==
X-Gm-Message-State: AFqh2koCENkHsFSlvlFw9KkxYW2z53BFjKnrotmIbfX9/0r3eiPADsB3
	2bn63P1UnVe7kV26qo5Se0jNVPVrosivwY2Pebk=
X-Google-Smtp-Source: AMrXdXvbBs6sNSaJWtcZacZUiEpBVOn8xe0KJiK0WB+TtvuBR4vJvoGnVxAEOQ5DCruwl5WkAyIp3OAO0Pqw17KFe/0=
X-Received: by 2002:a1c:1901:0:b0:3cf:878c:6555 with SMTP id
 1-20020a1c1901000000b003cf878c6555mr53918wmz.38.1671597033202; Tue, 20 Dec
 2022 20:30:33 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
 <CAB=6tBTsmaXOCe6jMJfU1ustd2PJgOU52JL_RAeb0ygtwLqe-A@mail.gmail.com> <SY4PR01MB6797E5EA90D2F833FC675A11B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
In-Reply-To: <SY4PR01MB6797E5EA90D2F833FC675A11B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 20 Dec 2022 20:30:21 -0800
Message-ID: <CAB=6tBR1LFQ+PyVj=WiWx8=ZGMp2wQKs7hr7EOFofPrERp2Veg@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: David Antliff <d.antliff@unsw.edu.au>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005f2b0a05f04f0390"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 04:30:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58850

--0000000000005f2b0a05f04f0390
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 14, 2022 at 11:19 AM David Antliff <d.antliff@unsw.edu.au>
wrote:

> How do you handle that in Yocto though? What mechanisms do you use to
> refer to your code? Do you just keep it all under the files/ directories?
>

Sorry for the slow reply. Yes, keeping it under the recipe is the approach
we use. For example...

yocto
=E2=94=94=E2=94=80=E2=94=80 meta-abc
    =E2=94=94=E2=94=80=E2=94=80 recipes-xyz
        =E2=94=94=E2=94=80=E2=94=80 helloworld
            =E2=94=9C=E2=94=80=E2=94=80 files
            =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 LICENSE
            =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 src
            =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 Makefile
            =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 helloworld.c
            =E2=94=94=E2=94=80=E2=94=80 helloworld.bb

Your bitbake recipe would be fairly straightforward. The only difficulty is
in doing IDE driven development without seeing a sea of red if your project
is broken up into a lot of dependencies managed by separate recipes. There
are ways of resolving that as well with a lot of pros and cons depending on
how your project works.

..Ch:W..


--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000005f2b0a05f04f0390
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Dec 14, 2022 at 11:19 AM David An=
tliff &lt;<a href=3D"mailto:d.antliff@unsw.edu.au">d.antliff@unsw.edu.au</a=
>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>How do you handle that in Yocto though? What mechanisms do you use to =
refer to your code? Do you just keep it all under the files/ directories?</=
div></div></div></div></blockquote><div><br></div><div>Sorry for the slow r=
eply. Yes, keeping it under the recipe is the approach we use. For example.=
..</div><div><br></div><div><span style=3D"font-family:monospace">yocto<br>=
=E2=94=94=E2=94=80=E2=94=80 meta-abc<br>=C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=
=94=80 recipes-xyz<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=
=80 helloworld<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=
=80=E2=94=80 files<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82=
=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 LICENSE<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 src<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82=C2=A0=C2=A0 =C2=A0 =
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 Makefile<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =E2=94=82=C2=A0=C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=
=80 helloworld.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=
=94=80=E2=94=80 <a href=3D"http://helloworld.bb">helloworld.bb</a></span></=
div><div><br></div><div>Your bitbake recipe would be fairly straightforward=
. The only difficulty is in doing IDE driven development without seeing a s=
ea of red if your project is broken up into a lot of dependencies managed b=
y separate recipes. There are ways of resolving that as well with a lot of =
pros and cons depending on how your project works.</div><div><br></div><div=
>..Ch:W..<br></div><div><br></div></div><br>-- <br><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:mo=
nospace">&quot;Perfection must be reached by degrees; she requires the slow=
 hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--0000000000005f2b0a05f04f0390--

