Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61719C48286
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 22:30:04 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.9349.1706826595882752060
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 14:29:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EM1GzkXt;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3637860f03bso5435165ab.3
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706826595; x=1707431395; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cEu/LXYdHAzQbVzatFyNO9dLUf/hOsvM6sPHwJoUMec=;
        b=EM1GzkXtZZ3X+VH6lUUqtTJyiND2xX0qoKgdaYzEo0YoieNJsTUIXmb0uCYqEhNbYX
         gGUciq519/YcrIjZ+VSOObwHBmH/FMEFluFGMU6WXv5wf3UO5AlAqmEGNZRPhCFYi8k3
         sKFjtxc0/tekGeI6dE908qXoGqQQRQt4bHBDwcIjA82wC/zhbPds0Mf+upRdv8DUMwY6
         VCF56m5KMhCV/g2fgiYTHX1Dy90SvVBxwSDthItu5vpTjYnyV63CV+ibJn+xi0H6bc6p
         C9s8FgsgyOjJ7rVLZgwl3gH5FxNGutWMEpUMvdvkM+yKAsrXYZ5hNKK99GNhWYA5in4t
         /91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706826595; x=1707431395;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cEu/LXYdHAzQbVzatFyNO9dLUf/hOsvM6sPHwJoUMec=;
        b=fx/IqnIYgkcAQlP34GVfn9+5BFmozF68pWyObSiuM6qHqpRekQFJqtir4fkDIFT2h5
         6DkwKrJxi2AH7pJI/Pl8lzbAfIGF5egQBvxdi8DxlhjwVe4b6R23luUFXzUJe5mipk0I
         l6oDd3ct57PpDVKs7gRS3aj/T/3hzKRFr5I8JAalzYasNNUU5jVwpeKk2Oumd5RgMiel
         xQRmbvhCdqI5JFatiZuPd146J7PuP8KEDQD6GsYEkYuyiOL/PyC2alHIrUukv3+QJ21W
         wnSGbKwPZ0ndhT9itN5VjOPWJq8NPE7d+NeiNkaze16qqmeEVG3k1pTg9yh6GhSX5QVL
         bDEQ==
X-Gm-Message-State: AOJu0YypTOFU8o64YxP6atY+AWgSw7ML3nzf7izCwLfDarS4EwmbXq8T
	aVQILfNvLE3iJPIhgtTrA1KSBVQxi/CaLkXYjRePylU/tCnHReP35qZk7h0jDk2s/F34L24tkBp
	n4/llYwWYvl8uixKyOwrV8solngRIarC/TKI=
X-Google-Smtp-Source: AGHT+IHKW92OoCrWHxdhNvVc5cAK78w+YK/RMpcOM6JJ3n0ME9RRA5L/FIEQFYBPSpvcc5hmX6oY0xuyCGqZZYACtYk=
X-Received: by 2002:a05:6e02:786:b0:363:acf8:7700 with SMTP id
 q6-20020a056e02078600b00363acf87700mr955975ils.14.1706826594830; Thu, 01 Feb
 2024 14:29:54 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR16MB50871DC44FDB421C1D679248BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB50871DC44FDB421C1D679248BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 1 Feb 2024 14:29:43 -0800
Message-ID: <CAB=6tBQ8Gv1vMEoKQsWUMyFmd22S-n9y_o=qreKK7XEZyScDAw@mail.gmail.com>
Subject: Re: [yocto] Correctly packaging projects into systemd_system_unitdir
 with CMake's GNUInstallDirs module
To: yocto@lists.yoctoproject.org, Logan.Grosz@b9c.com
Content-Type: multipart/alternative; boundary="000000000000e0d2dc0610598880"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 22:30:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62373

--000000000000e0d2dc0610598880
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 1, 2024 at 9:58=E2=80=AFAM Logan Grosz via lists.yoctoproject.o=
rg
<Logan.Grosz=3Db9c.com@lists.yoctoproject.org> wrote:

$< SNIP %< SNIP


> I am attempting to package this with a recipe. Everything packages
> correctly except when using systemd.bbclass and `SYSTEMD_SERVICE:${PN} =
=3D
> "update-manager.service", the systemd_check_services function cannot find
> the service file. This appears to be because the bbclass is only looking =
at
> /lib/systemd/system (expanded from ${systemd_system_unitdir} while CMake
> has installed my service file under /usr/lib/systemd/system.
>

That depends on how you have your distro configured. The root_prefix value
is what makes
up the difference between /lib and /usr/lib in your scenario. This is
controlled by the presence
of usrmerge in your list of DISTRO_FEATURES.

Reference:
https://git.openembedded.org/openembedded-core/tree/meta/conf/bitbake.conf

..Ch:W..


--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000e0d2dc0610598880
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 1, 2024 at 9:58=E2=80=AFAM Lo=
gan Grosz via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.=
org</a> &lt;Logan.Grosz=3D<a href=3D"mailto:b9c.com@lists.yoctoproject.org"=
>b9c.com@lists.yoctoproject.org</a>&gt; wrote:</div><div class=3D"gmail_quo=
te"><div><br></div><div>$&lt; SNIP %&lt; SNIP<br></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-5049356895=
53734091"><div dir=3D"ltr"><div><span style=3D"font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">I am attempting to package this with a recipe. Everything p=
ackages correctly except
 when using systemd.bbclass and `SYSTEMD_SERVICE:${PN} =3D &quot;update-man=
ager.service&quot;, the systemd_check_services function cannot find the ser=
vice file. This appears to be because the bbclass is only looking at /lib/s=
ystemd/system (expanded from ${systemd_system_unitdir}
 while CMake has installed my service file under /usr/lib/systemd/system.</=
span></div></div></div></blockquote><div><br></div><div>That depends on how=
 you have your distro configured. The root_prefix value is what makes</div>=
<div>up the difference between /lib and /usr/lib in your scenario. This is =
controlled by the presence</div><div>of usrmerge in your list of DISTRO_FEA=
TURES.</div><div><br></div><div>Reference: <a href=3D"https://git.openembed=
ded.org/openembedded-core/tree/meta/conf/bitbake.conf">https://git.openembe=
dded.org/openembedded-core/tree/meta/conf/bitbake.conf</a></div><div>=C2=A0=
</div><div>..Ch:W..<br></div></div><br clear=3D"all"><br><span class=3D"gma=
il_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Per=
fection must be reached by degrees; she requires the slow hand of time.&quo=
t; - Voltaire</span></b></div></div></div></div>

--000000000000e0d2dc0610598880--

