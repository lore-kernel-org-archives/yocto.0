Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com [209.85.219.196])
 by mx.groups.io with SMTP id smtpd.web12.62161.1606753113729731217
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Nov 2020 08:18:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=YOhojvX/;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 209.85.219.196, mailfrom: andrei@gherzan.ro)
Received: by mail-yb1-f196.google.com with SMTP id x2so7923240ybt.11
        for <yocto@lists.yoctoproject.org>; Mon, 30 Nov 2020 08:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/dTkU3sqwUl8deyTCNLPMw86OKDaXIYinDtySd/uFa8=;
        b=YOhojvX/jinh7NmqNlSDEIWGS6S4fbfwa12IcWdNk6ExcXYQFuO7N0oZCa5dn8Yxsp
         LypONEcAA7p3NfiGzpaXpa57cTGBMojE9IFsziMm1fTihx3B54TnXOSUt1amkveOEIj+
         WH3tIFEs3agGMZoFE47As+KB/sYMlWPfcPad4Kh+hPcJ/slqhLaxfx9Tof5ALrHHFED5
         571DSiNUdkRp4c7xlTngHjxngDjwVchDzzRHuNoBoN8L1DqoJOlB22PytPftX/dJJDCk
         ENwr4IQU5AVcmMo99r2Z0wdFAwzQ6T1cDpY7bYEI9t4nrB/OjvT4pUiqN+nU8Pxb4Ajo
         bxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/dTkU3sqwUl8deyTCNLPMw86OKDaXIYinDtySd/uFa8=;
        b=BrmOoZcO528bOUsgSv0e2BH9jc2Gt7Gs9tdMoqGc2dp+oiI3l+iBAgTfzIzvDXl9Yd
         aD7LS9pde92OcJZjEgFfnDEnSZ1TIVjZloQbsfaB2ESZA/HDUnLP6sH0zRG0S0XlEkw4
         3wEeTn3KDlY7VEKzkAg9EZsoKYJ3BR6poH8HPh9/oIKChfsIaUMuxnR5/8Z6QkDPvszS
         BxuBgkkwoKJJa6CA4vhIfE+jlDJRK2b5xz6B2/y3dY2ZocYhG354t2w6IXsWWP1RMsjV
         egTYO7ynhcpz8SyMELr0b7U9YQrH3FKzUWqi0MM6vDyouejjOtTZtB3822RlPQFVpbLo
         IbGQ==
X-Gm-Message-State: AOAM5317faYdm17r4poK8kUzHlBT85Muz9XwGDEehqncr5uv+FB+JIjo
	YuPAt85KDroLlJ7S9/Ql2CiRNqcBJqNfQzTeUMUApw==
X-Google-Smtp-Source: ABdhPJw/piOzKUxuvMu57lETBhBZWw4ODWnqI1phmtSQspI5PfgAlUMjHDlFuzvHVDLjGoCBF+aYOpjSrth2/Yt5ttA=
X-Received: by 2002:a5b:74f:: with SMTP id s15mr30160093ybq.11.1606753112417;
 Mon, 30 Nov 2020 08:18:32 -0800 (PST)
MIME-Version: 1.0
References: <20201127101637.25274-1-twoerner@gmail.com>
In-Reply-To: <20201127101637.25274-1-twoerner@gmail.com>
From: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Mon, 30 Nov 2020 16:17:56 +0000
Message-ID: <CAK18fxFbG=y13eBAhVKkboqXAWot4iCMbQgV-nrODH=86V28MQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] userland: add knob for ALL_APPS
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000081fd9905b5555c08"

--00000000000081fd9905b5555c08
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Nov 27, 2020 at 10:16 AM Trevor Woerner <twoerner@gmail.com> wrote:

> The userland sources include a bunch of sample applications. Add an
> "allapps"
> PACKAGECONFIG to allow the user to build the additional optional
> applications.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>

Merged to master. Thanks, Trevor.

---
Andrei

--00000000000081fd9905b5555c08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Nov 27, 2020 at 10:16 AM Trevor Woern=
er &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The userland=
 sources include a bunch of sample applications. Add an &quot;allapps&quot;=
<br>
PACKAGECONFIG to allow the user to build the additional optional applicatio=
ns.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br></blockquote><div><br></div><d=
iv>Merged to master. Thanks, Trevor.</div><div><br></div><div>---</div><div=
>Andrei<br></div></div></div>

--00000000000081fd9905b5555c08--
