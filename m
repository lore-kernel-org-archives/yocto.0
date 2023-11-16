Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD051C54FB9
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 06:51:45 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.1953.1700117500976199199
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 22:51:41 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: fede.evol@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-547e7de7b6fso913589a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 22:51:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700117499; x=1700722299;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XJgWOhrFLMizdihdxGvpfI/nN1Ib5pCBS/JEASvY3FM=;
        b=ltDxXDgFcEuWveCL142tMR/WD1n66OW1+UzmgX7iFHyb9KhRLWenp6A9CSqLQ6uXrO
         IAhw8+J1GK+23a19qvvJmrdgCK9YgAZZ9pgCd488JPltAQMpHBpnd10+vjObBp0ontKS
         3tV3oSA/328didCH2ITjie/84MWLIN963gwGSZK/O4WQ3cGyOSIWqFhZ5UkLL6lY7Q85
         UZKyukSO3QNVJapgKaBMX/Y4ssxD5XeJK9TbGX9TRNFbirn6ehc3pYZc4h97Gg4EpvlF
         /gmuGKCwvFtcQ5uRqO/+hhBFGTptV9DzbtHh7WNbTuA5vfEXcZjBlLqW1+Plq29k8vja
         7amw==
X-Gm-Message-State: AOJu0Yzi4mMIItU7r8BX6rhBnHun48Gvie76TF2qP47Uxy3kMMnJTMKZ
	cCIC/qyh3LXOEsG9Rna5o3dAa+yXSWg2Mz8U0Xs=
X-Google-Smtp-Source: AGHT+IEK/fRsFA/pmMHStjE80WqUpOgx7qTEXBivXhDHyt7TLMGNwJrlmgb+sgHwyeJj9pIZgGLlMLGJZcl1VjWG/2A=
X-Received: by 2002:a05:6402:546:b0:545:27f5:3bd8 with SMTP id
 i6-20020a056402054600b0054527f53bd8mr652726edx.20.1700117499208; Wed, 15 Nov
 2023 22:51:39 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBnhmDJyFPSCC+_tuAhqGiH8=efYRcV41keDRq+WpBeVvMg@mail.gmail.com>
In-Reply-To: <CAPJWBnhmDJyFPSCC+_tuAhqGiH8=efYRcV41keDRq+WpBeVvMg@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Thu, 16 Nov 2023 07:51:28 +0100
Message-ID: <CAM6O0Zh_=A878ek3djmidg4RoQFJiLcGwfuiZ3rWNQo04M2Gkg@mail.gmail.com>
Subject: Re: [yocto] install: cannot create directory: File exists
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009de766060a3f73d9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 06:51:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61707

--0000000000009de766060a3f73d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Il giorno gio 16 nov 2023 alle ore 07:26 MOHAMMED HASSAN <
hassanchattarki@gmail.com> ha scritto:

> *| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/package-lock.json=E2=80=99:
> File exists*
>
>
>
>
> *| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/package.json=E2=80=99:
> File exists| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/udp.js=E2=80=99:
> File exists| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/watchdog.js=E2=80=99:
> File exists| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/wifi.js=E2=80=99:
> File exists| install: cannot create directory
> =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-=
gnueabi/lib32-testing-firmware/0.1-r0/Edge/wifi.js~=E2=80=99:
> File exists*
> | WARNING: exit code 1 from a shell command.    install -d
> ${WORKDIR}/Edge/* ${D}${bindir}/Edge/*
>     install -d ${D}${bindir}/Edge/node_modules
>


man install:

       -d, --directory
              treat all arguments as directory names; create all components
of
              the specified directories

So you are trying to install all normal files (Edge/*) as directories (as
you use -d). This then, as per error message message, will fail.

Maybe you meant -D (to create previous dirs)? Or just had it copied by
mistake.

Cheers,
Federico

--0000000000009de766060a3f73d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi,<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorn=
o gio 16 nov 2023 alle ore 07:26 MOHAMMED HASSAN &lt;<a href=3D"mailto:hass=
anchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; ha scritto:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><b>| =
install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/arm=
v7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/p=
ackage-lock.json=E2=80=99: File exists</b><div><b>| install: cannot create =
directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib3=
2-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/package.json=E2=80=99: F=
ile exists<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_=
sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmwa=
re/0.1-r0/Edge/udp.js=E2=80=99: File exists<br>| install: cannot create dir=
ectory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/watchdog.js=E2=80=99: File =
exists<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/=
tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0=
.1-r0/Edge/wifi.js=E2=80=99: File exists<br>| install: cannot create direct=
ory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linu=
x-gnueabi/lib32-testing-firmware/0.1-r0/Edge/wifi.js~=E2=80=99: File exists=
</b><br>| WARNING: exit code 1 from a shell command.=C2=A0 =C2=A0 install -=
d ${WORKDIR}/Edge/* ${D}${bindir}/Edge/*<br>=C2=A0 =C2=A0 install -d ${D}${=
bindir}/Edge/node_modules<br></div></div></blockquote><div><br></div><div><=
br></div><div>man install:</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0=C2=
=A0 -d, --directory<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tre=
at all arguments as directory names; create all components of<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the specified directories</div><div>=
<br></div><div>So you are trying to install all normal files (Edge/*) as di=
rectories (as you use -d). This then, as per error message message, will fa=
il.</div><div><br></div><div>Maybe you meant -D (to create previous dirs)? =
Or just had it copied by mistake.</div><div><br></div><div>Cheers,</div><di=
v>Federico</div><div><br></div><br></div></div>

--0000000000009de766060a3f73d9--

