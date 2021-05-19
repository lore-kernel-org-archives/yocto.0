Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web09.11319.1621430489713934916
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 06:21:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=HArF3Zr6;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.170, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f170.google.com with SMTP id o27so12611550qkj.9
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 06:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tm7CzEOiTjUPYSaXdIeXABzuxgR293rKQWd3Ildu69M=;
        b=HArF3Zr62Eb4EnqVuXovcF6f7ufGR+xywPCvzlqdxg1WrKmSb+S1kDFhGYv2A/gjTJ
         mN28YHPWz1bf7o58Lqc84oz1uy2ZGKq/MvdKf/4bEo4kLwLvGdWtQxswXB12sLrBepor
         PohU5iq8OFjUbd/jYK35vFbIZt18yWaSRKODp6b7eORaMLM5j/fplIrzXCzf1N+CZsOJ
         cdPjkIMiigtHzLswDyRfg8p/zMScvCvGklIzEy7qytLUHdeBKGgNg2cSf6zCvuA8pMF5
         PgkKHTIDixqNeEgl1mIhiaGEixHJiuGMqdFpO8AzkS867bzzPvoAsL94xbe3nOGU7NW/
         QDcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tm7CzEOiTjUPYSaXdIeXABzuxgR293rKQWd3Ildu69M=;
        b=eF6VYtzqDf+qGrNA0SPm2rsa1jbDXy5E3ZwA3MihGUJf7Z/jfFcYrSZC3qslJoBdwx
         yiGDcSL3LlnwcvXAB9HmR16cfQcepZxj3r0FRL9+4rfv1RsH8Yq8vLdg+utlpDerHYQU
         mH/5E4ETa9iHwKEA6O8oFxlJJ0xZjnq26yd0Js4gXSpVQeZs4SKOfAUTHO5via2p1RxC
         R2diwo++EY0/U4uZTpeBJDScA4osDkjO003l0XohfI5aPXmEVxGc55Wuh3izBqLDx6PC
         kMXdnHONbh8v8/s0hUqcQqi3MTHmsC+pSh/HgO340QcZh2I5/nG+v5HA8haBjLi/0Kft
         ofHg==
X-Gm-Message-State: AOAM5312Tv+Kl2/44oWDkVXyTGvDdlfsSoCRVbx2lQewtclQ2YTU8TrR
	subxzvOqGM1aSx3D2/rb/Z9CrLS8RG3ExHm707nfoQ==
X-Google-Smtp-Source: ABdhPJz5Hq/RULuuGYxG2jf0gcYhfN2US5dT5wqfeNbYN+C+QY97JAw4abAHczJXiwhPgL2wOvbLGBkMT87TlvUjC6c=
X-Received: by 2002:a37:a604:: with SMTP id p4mr11703762qke.215.1621430488672;
 Wed, 19 May 2021 06:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16807254A326FFBC.18081@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16807254A326FFBC.18081@lists.yoctoproject.org>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Wed, 19 May 2021 15:21:17 +0200
Message-ID: <CAMjhiJhayd7AH_nKof+wY9YMGwzMSRvD+PshAcgOOw83YNxVMA@mail.gmail.com>
Subject: Re: [yocto] PREEMPT_RT patches
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004e422605c2aeb40f"

--0000000000004e422605c2aeb40f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Steven,

Yocto does support switching kernels and configurations, so yes Yocto does
"support" it.

However, providing a well-tested PREEMPT_RT kernel might be more an
architectural meta layer topic.

We have been using the Intel provided PREEMPT_RT kernel for x86 with good
success in a system with hard real-time requirements.
In the end we chose full task isolation approach, where one task runs in
user-space task isolation, reducing latencies even further than what
PREEMPT_RT can provide, as we did not need kernel services in our main
processing loop (after setup).

Regards,

Leon.

On Wed, May 19, 2021 at 12:53 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

>
>
> Recently I heard somewhere that newer versions of the Linux Kernel will
> include the PREEMPT_RT patches, and configuration settings would be used=
 to
> set how the Linux would operate in a specific system.
>
>
>
> Does Yocto support =E2=80=9CPREEMPT_RT=E2=80=9D, and what versions of Yo=
cto have this
> option ?
>
>
>
> Is there documentation on this feature/option ?
>
>
>
> Thanks,
>
> Steve
>
>
>
>=20
>
>

--0000000000004e422605c2aeb40f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Steven,</div><div><br></div><div>Yocto does sup=
port switching kernels and configurations, so yes Yocto does &quot;support&=
quot; it.</div><div><br></div><div>However, providing a well-tested PREEMPT=
_RT kernel might be more an architectural meta layer topic.</div><div><br><=
/div><div>We have been using the Intel provided PREEMPT_RT kernel for x86 w=
ith good success in a system with hard real-time requirements.</div><div>In=
 the end we chose full task isolation approach, where one task runs in user=
-space task isolation, reducing latencies even further than what PREEMPT_RT=
 can provide, as we did not need kernel services in our main processing loo=
p (after setup).<br></div><div><br></div><div>Regards,</div><div><br></div>=
<div>Leon.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, May 19, 2021 at 12:53 PM Monsees, Steven C (US)=
 via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &=
lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org=
">baesystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_1605684533239389746WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Recently I hea=
rd somewhere that newer versions of the Linux Kernel will include the PREEM=
PT_RT patches, and configuration settings would be used to set how the Linu=
x would operate in a specific system.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Does Yocto sup=
port =E2=80=9CPREEMPT_RT=E2=80=9D, and what versions of Yocto have this opt=
ion ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there docum=
entation on this feature/option ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thanks,<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Steve<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--0000000000004e422605c2aeb40f--
