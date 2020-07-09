Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.8046.1594304507804647367
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jul 2020 07:21:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=i3du2lJI;
 spf=pass (domain: linaro.org, ip: 209.85.128.47, mailfrom: anibal.limon@linaro.org)
Received: by mail-wm1-f47.google.com with SMTP id l17so2030809wmj.0
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jul 2020 07:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W6t8Zq+iLONJ5106wMHk85VwzFPl10m7X2IiWz0t3mI=;
        b=i3du2lJIXaZjGyGDrmkIHG9YRa81BgnO/P9266jRse/ydCJldf3F/NPqXc3qG+5dLn
         abZtceqo5xRPhFfxBezfK99dxLS3PZAcgul88xHlhvNH+PiQzuOMMZbk6uc3PTUFPuvg
         FK4OTuvQMPdSDSqYb0OvXfVuxOfflI49uTmmFSbr4Va8SME5Fby7vc8dM1x8qkjqJDwv
         YbB6U6UweRUixeDdymK684r75LsMDUIr1q30EEAwekeahdZAJutmvT+RTzUH9kuHJliY
         t3LUL6lT9wVAHOPN9p/4BQeJPITh9aj20tHOe88H1V5j8/12QpZT/mYENNaspoa2SCZJ
         FKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W6t8Zq+iLONJ5106wMHk85VwzFPl10m7X2IiWz0t3mI=;
        b=Z45crpJe1ixG62y8t5DWekUVLquagIF6rMh68dLodo9vX6DV5unte2KBhehCFnukzk
         z3WN+laNwFKXwoUHtbWumzX/A5iYMsRRpboEtJouwkADUPbY6rVOYl9Bwsvtwb+JpUEX
         nPxOO26jFZgWfdqm6mRBXBrYMW4Zg1F7EWp7v1gBHXWzgv8xtSSFNwDO3naIATXNKq6Y
         8+IoV4OUyV8q+g+G2uH2OWee/5zXHSdsMuAZKN92CSQcwcX0Vud3yNdbxT8d8vZCxQGF
         ws4fRSoTTfGnB2ZtH9ropJuCkqEbyFH4qtrt69VgzaoEYctVsy5HIgVR3dUX78D0hk2z
         A/OA==
X-Gm-Message-State: AOAM532zBiF/tBJQSj2/pXUrEqa+wYCpQut3vbdziL5IAnshZ4tQ7UMQ
	uW8VCGYPcV3Dbt9VG1VFMql+AHIIP/OKFYXoKa6YXw==
X-Google-Smtp-Source: ABdhPJyXKCTy74Z0lcQTRLl5lfi4qDEcRWMoa6Lj0+xpwpi7kQdFboicAl+7TS1t5yqyqI62xq6IKuxei5WQTyF69xU=
X-Received: by 2002:a1c:6788:: with SMTP id b130mr303071wmc.100.1594304506254;
 Thu, 09 Jul 2020 07:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <CA+_Aqit9G99McMscX24hr5OqS0-WCcOWP5H2f6iqbQ=OvKM2Pg@mail.gmail.com>
 <23411.1594190803615791620@lists.yoctoproject.org>
In-Reply-To: <23411.1594190803615791620@lists.yoctoproject.org>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Thu, 9 Jul 2020 09:21:35 -0500
Message-ID: <CA+_AqitvFQuu-k3NKskQLrkb_+qrU61Mg20S8qHxYB9jXZU=RA@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner][PATCH] Fix inappropriate ioctl when detaching tty
To: Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c26b8c05aa02f152"

--000000000000c26b8c05aa02f152
Content-Type: text/plain; charset="UTF-8"

On Wed, 8 Jul 2020 at 01:46, Tero Kinnunen <tero.kinnunen@vaisala.com>
wrote:

> On Tue, Jul 7, 2020 at 06:49 AM, Anibal Limon wrote:
>
> First thanks for the patch, Is there an option to test for isatty(fd) for
> run ioctl instead?.
>
> Hi Anibal,
>
>     if (isatty(0) && ioctl(0, TIOCNOTTY) == -1)
>
> would help for ssh case but not to errors between tests. There fd 0 is a
> tty but detach should
> be done only once. Now it is inside loop. It could work if it was also
> moved outside the loop,
> before PTEST_LIST_ITERATE_START?
>

Agree, Add isatty(0) and move that validation outside the loop.

Anibal


>
> Kind regards,
>
>     - Tero 
>

--000000000000c26b8c05aa02f152
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 Jul 2020 at 01:46, Tero Kin=
nunen &lt;<a href=3D"mailto:tero.kinnunen@vaisala.com">tero.kinnunen@vaisal=
a.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On Tue, Jul 7, 2020 at 06:49 AM, Anibal Limon wrote:<br>
<blockquote>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>First thanks for the patch, Is there an option to test for isatty(fd)=
 for run ioctl instead?.</div>
</div>
</div>
</blockquote>
Hi Anibal,<br><br>=C2=A0 =C2=A0 if (isatty(0) &amp;&amp; ioctl(0, TIOCNOTT=
Y) =3D=3D -1)<br><br>would help for ssh case but not to errors between test=
s. There fd 0 is a tty but detach should<br>be done only once. Now it is in=
side loop. It could work if it was also moved outside the loop,<br>before=
=C2=A0PTEST_LIST_ITERATE_START?<br></blockquote><div><br></div><div>Agree,=
 Add isatty(0) and move that validation outside the loop.</div><div><br></d=
iv><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>Kind regards,<br><br>=C2=A0 =C2=A0 - Tero
<br>
</blockquote></div></div>

--000000000000c26b8c05aa02f152--
