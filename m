Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web12.2.1616793792034008510
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 14:23:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2vmTezN;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id 97so2046220uav.7
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 14:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sb736hSzV5Npha9DjUZPTrdP4T+tw7iRYyeHpz+1DYU=;
        b=R2vmTezNX0VXg0hCMyzgjt+iOZCwzlUgKK3JRheme5rh9AinfydtAp+mVBmTAlFGAo
         KPTzHdqRG3NJwCNw9OYnT6scQ2PAp7/xdO2ovH5sDGwIsnPVhnt0lyuuIw1CqxURmiNY
         QTautoV7PGB7oIVE9XbIeG5Nzlyin3ILgpMgJUoyXKfpx6XZw9FbQm8amHDhi3K0KtXU
         O6WHNcbIqvmQBN9LAw/L0q0ExOs7oIW1GO1Uq41hDEZXJDUpBHj0DWkdTEJjGNiveCgc
         ecQDswqSmS8Z3rlmvXnEQaUuEj+2zUTEBXSUU4XcneQyTrjBPLhGI4pl9TUUo/B+NkrN
         Z4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sb736hSzV5Npha9DjUZPTrdP4T+tw7iRYyeHpz+1DYU=;
        b=pEjUwplRw8Ycz1/LP9/bXm1VqEhrKWHLr/s9YtNYJTvK7yYwNGOYE0nVrhAoCR31ID
         df6XhiNHZWaRdl0zWFWE+IqYSwxnynwrwtKcOJa/eocM2AyNsc1tT5uzBnInAlJipPQk
         3//YDTNw57fX/F9DIQROcOqlKjCRjfvMLrUnrPLVn420m8St9bwd1Ji7IVNhp5QNu36O
         1CHDtdjHMKWztg+Sgt/c9tloQSLKVSGTRJ2kX8sxRRCsLm/2blZmbZbtPMZ/XCkKws6o
         WNAAlX6ZnJaJhn5KzRVh1GywXmISohqo1p4Y7NMv94elPr9yxlLMjxfj9seiCqMmd58Z
         SRKw==
X-Gm-Message-State: AOAM530hTWJaFpTXk15vQMvU5UupCCxU8Y9VA1+awwGUOUFM+2x5lPz/
	f/0h/GXSkgKySvZEQb9Dvhwcz6B6R1EdaC24FIk=
X-Google-Smtp-Source: ABdhPJzk/OlWXKSdY2vYNh1ZbGcgloIvP4Qr3axEf5EpOANxql7YHToCdhEUWWskdcrjleQUTJm4wA2upX3V8iV3jgg=
X-Received: by 2002:ab0:7150:: with SMTP id k16mr9840905uao.71.1616793791155;
 Fri, 26 Mar 2021 14:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210326204350.GA26379@localhost>
In-Reply-To: <20210326204350.GA26379@localhost>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 26 Mar 2021 22:22:59 +0100
Message-ID: <CANNYZj8+ARGD1HkDEsGTv=Vw7U4dE8RgHsxinAU0JdOy_HieCA@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for March 23, 2021
To: Trevor Woerner <twoerner@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098d15e05be7723d0"

--00000000000098d15e05be7723d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 26 Mar 2021 at 21:44, Trevor Woerner <twoerner@gmail.com> wrote:

> RP: if anyone knows any RISC-V companies, we=E2=80=99d like to get some o=
f them
>     interested in becoming members. i=E2=80=99d really like to add RISC-V=
 as part
>     of our matrix, but that would be hard if it doesn=E2=80=99t have a so=
urce of
>     funding
>

I guess SiFive is the one you could approach? I actually sent them my CV a
few weeks back, as a long shot to try to see if they're interested in Yocto
and someone like myself to help them with it.
https://www.sifive.com/

Alex

--00000000000098d15e05be7723d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 26 Mar 2021 at 21:44, Trevor Woer=
ner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">RP: if anyone knows any RISC-V companies, we=E2=80=99d like=
 to get some of them<br>
=C2=A0 =C2=A0 interested in becoming members. i=E2=80=99d really like to ad=
d RISC-V as part<br>
=C2=A0 =C2=A0 of our matrix, but that would be hard if it doesn=E2=80=99t h=
ave a source of<br>
=C2=A0 =C2=A0 funding<br></blockquote><div><br></div><div>I guess SiFive is=
 the one you could approach? I actually sent them my CV a few weeks back, a=
s a long shot to try to see if they&#39;re interested in Yocto and someone =
like myself to help them with it.</div><div><a href=3D"https://www.sifive.c=
om/">https://www.sifive.com/</a></div><div><br></div><div>Alex<br> </div></=
div></div>

--00000000000098d15e05be7723d0--
