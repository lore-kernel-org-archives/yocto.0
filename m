Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.31805.1624183397408868341
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 03:03:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rRc+MGVn;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C6FBE38C082B
	for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 10:03:15 +0000 (UTC)
Received: by mail-vs1-f50.google.com with SMTP id x12so401918vsp.4
        for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 03:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VKiORuljVAiPzmW7RHkfp0gYQ5bXDkZSeV8OfMENrOk=;
        b=rRc+MGVnhHWqXIEQrU/VqFP5vjaC5PrJnJf7EMzpkkjdr9TW9/L50SyFOO04kxo9pb
         eFCly/f1qCGWUjNJlKT7y6VizjTpjWP13N85PIEjifQ9TBsffFKJVYH2t5yuTpgQ0Zq1
         f1qRAQ5Vw1+R96jXWZpva7/QfQNr2o7wSx7rKrNZVxksmqz+CI18+A/m8CUHii6AWryI
         8pxCERvhcWJ+fShy1cPb6ssCWi4HKvjo8THt2h384yZqO0s/Tpt1wfrKrouL8xm1rPrn
         L6Gh33XAgEBRDMlZdz2aYVgYqOhGFhlzs2mfqQCfPtCMxVX28j5ONcuWUyzbG5cYRA/m
         DtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VKiORuljVAiPzmW7RHkfp0gYQ5bXDkZSeV8OfMENrOk=;
        b=Q5Jq/ggoX36u5YjAD8xNZPOqsO2fzjBzNJEmqL8uSSkoStXM7/ynEvyQJrxmd7okaT
         FaLQT4VdzG1o5J+cNRMgzahcvnHfzJ80qiN40h9c+MI7nY1SudTodxAXfPVjKOkKONXz
         CuRtLrXKBB8S/WarcLKzfSfKqWFV0pN1YRuaIrap/CRsimEJoZi0vKyzlqXv/6WJyX7K
         hLk6hX8Or/xBSZQ8gmc8AKv+EOpStnBfdlalCK6aqTWwPOHLTuRJ3lgzHjT87ERRYdwS
         3LFQBMmFrLsgwx5dK4dir4ImtKuKUopdvfZe6Uz7GAUod1BXL+pnyRPBYL+fFKIvpvr2
         ENHA==
X-Gm-Message-State: AOAM533O/SY4Xx8lB3Q2bwsLUmyeWwdxADIXcE46j/imjA2fsgUDPPMg
	BlglJtV0AZH2wyGFNOfX6NNStPJ8SzLgXwy6t6CHUmSfack=
X-Google-Smtp-Source: ABdhPJyWZcjySGMTGfWxZMOiSjq6vEnPeB0Sop/gj0u3fYWo5pNk+5Ih1ki9mqD4BecBAzHU3QVus23LNLPIKeLBNeU=
X-Received: by 2002:a67:1005:: with SMTP id 5mr12857410vsq.51.1624183394353;
 Sun, 20 Jun 2021 03:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca>
In-Reply-To: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 20 Jun 2021 12:03:03 +0200
Message-ID: <CANNYZj_NG9i8=zVEu385rj6-QSt1e4kEw5GqHWvCm=eFbYSk2Q@mail.gmail.com>
Subject: Re: [yocto] the downside of parallelism
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000045455505c52faa6a"

--00000000000045455505c52faa6a
Content-Type: text/plain; charset="UTF-8"

This is hardly Yocto's fault: putting a 6 core CPU into a laptop should be
validated by saturating all cores for several hours and ensuring the
cooling and frequency throttling can handle it. Laptop OEM is trying to be
cheap I'd say.

Alex

On Sun, 20 Jun 2021 at 11:55, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   refactoring existing (legacy) code base into more bite-sized
> bitbake recipes to speed up build by taking advantage of 6-core
> (12-thread) dell laptop ... end result is that i get so much
> parallelism that laptop shuts down from overheating.
>
>   le *sigh* ...
>
> rday
>
> 
>
>

--00000000000045455505c52faa6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is hardly Yocto&#39;s fault: putting a 6 core CP=
U into a laptop should be validated by saturating all cores for several hou=
rs and ensuring the cooling and frequency throttling can handle it. Laptop =
OEM is trying to be cheap I&#39;d say.<br></div><div><br></div><div>Alex<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, 20 Jun 2021 at 11:55, Robert P. J. Day &lt;<a href=3D"mailto=
:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 refactoring existing (legacy) code base into more bite-sized<br>
bitbake recipes to speed up build by taking advantage of 6-core<br>
(12-thread) dell laptop ... end result is that i get so much<br>
parallelism that laptop shuts down from overheating.<br>
<br>
=C2=A0 le *sigh* ...<br>
<br>
rday<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000045455505c52faa6a--
