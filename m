Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5031.1620816224983190533
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 03:43:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qVwZ7JpE;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: onyx22574@gmail.com)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9FE3738C06F9
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 10:43:43 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id b21so11105342pft.10
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 03:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3pkLffxcRitXG9VSwGyu/HMhJPf/Bx3j7pkWUW0jhG8=;
        b=qVwZ7JpECgdGuPoNVezJJgj7hL7GoeACh+Too64mRUTZbWVddjpApM54cEWRFGOWQR
         DweQeX4kaqNZKl9wNYsomkDzQgu9RgCbNx0omM42kbDRpnRISk1Cc7Z6mYj1LajFIA3V
         ztoMR/TL5Ow+asUEp2AVmm2eWMXW9bhnMjXz+I6yUX54B/xUGxNno63gNukXD3sB7uHS
         ZGsqieI25U7EqfBMxxv8PibOyHDRlExtonGXfzCbOWEOrArOuSXgLYz9RvNhOcxIVJqI
         pR+zQza0PGddtN2c9mboSj2m9B7qKiiEG/t1ty0bN5xfuDpzgh11+Ef2sH8iySMviFuu
         Vk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3pkLffxcRitXG9VSwGyu/HMhJPf/Bx3j7pkWUW0jhG8=;
        b=QCsFvka4yBUksXM3/5Jaf/dhTKdrSm2aEquMUog+38m4Oj/+A0zbDe0kPDKBtuJYni
         hJkFTuZMjhD4EleDhx8clzTSwCQENwEn4ILjtoIjrkoZgh2EX8F9P5yuecigDQ/1Jrs5
         cd8JE1w9T95PqAe580r/+Iw+fmhEFCd4n29B0kTW29749eIb54XSAl5EEmgCeBRtqLbx
         Egd64WbsuWnLPs8nNQJ4elCv5R1RV5fqHkAAssbVMNjcqLb15OHX60ext5q38o1P4FGH
         FZ6JRTzb1s2cjCLYRR5FI4Xmjtu1j4YmZT13IemELZis7MHzZka3MTcMcH2sImWXf+hj
         Q9wQ==
X-Gm-Message-State: AOAM533l0v2Lpi3nAlkajiGWU3fR7KcYGF7tfrt+ZsWEXqKdJh2Lv7mN
	UyGfndmj0JOtT74jh8ABjRtvgwQLfM1xcaaAQaISxG1kmyGCZUkT8OlDSw==
X-Google-Smtp-Source: ABdhPJzzusAntV40Bbgmo8ozFd1j1KqKgZqW75N8iRe8DQndXesTfZPy5jOuU/eoP7yIGTsZ0jl75VeEtevRsOTF4YM=
X-Received: by 2002:a63:580b:: with SMTP id m11mr36136291pgb.448.1620816222527;
 Wed, 12 May 2021 03:43:42 -0700 (PDT)
MIME-Version: 1.0
From: onyx22574@gmail.com
Date: Wed, 12 May 2021 12:43:31 +0200
Message-ID: <CAF2aNtzrjYOUYdevN83fJ-Dn6Jjp1SsNh1Q5zO0MXFEjW4xcUg@mail.gmail.com>
Subject: Yocto with xtensa
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000030a3a705c21fafa1"

--00000000000030a3a705c21fafa1
Content-Type: text/plain; charset="UTF-8"

Dears,

I am looking for a way to include sample code for DSP (xtensa) with
Yocto/Linux. what would be the procedure to include such a code and
eventually interprocessor communication between xtensa core and CPU under
Yocto/Linux?

Thank you.
BR/J

--00000000000030a3a705c21fafa1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(36,39,41);font-family:system-ui,-=
apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Ubuntu,Roboto,&quot;No=
to Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size:15px">Dears,</spa=
n><div><font color=3D"#242729" face=3D"system-ui, -apple-system, BlinkMacSy=
stemFont, Segoe UI, Ubuntu, Roboto, Noto Sans, Droid Sans, sans-serif"><spa=
n style=3D"font-size:15px"><br></span></font><div><span style=3D"color:rgb(=
36,39,41);font-family:system-ui,-apple-system,BlinkMacSystemFont,&quot;Sego=
e UI&quot;,Ubuntu,Roboto,&quot;Noto Sans&quot;,&quot;Droid Sans&quot;,sans-=
serif;font-size:15px">I=C2=A0am looking for a way to include sample code fo=
r DSP (xtensa) with Yocto/Linux. what would be the procedure to include suc=
h a code and eventually interprocessor communication between xtensa core an=
d CPU under Yocto/Linux?</span><br></div></div><div><font color=3D"#242729"=
 face=3D"system-ui, -apple-system, BlinkMacSystemFont, Segoe UI, Ubuntu, Ro=
boto, Noto Sans, Droid Sans, sans-serif"><span style=3D"font-size:15px"><br=
></span></font></div><div><font color=3D"#242729" face=3D"system-ui, -apple=
-system, BlinkMacSystemFont, Segoe UI, Ubuntu, Roboto, Noto Sans, Droid San=
s, sans-serif"><span style=3D"font-size:15px">Thank you.</span></font></div=
><div><font color=3D"#242729" face=3D"system-ui, -apple-system, BlinkMacSys=
temFont, Segoe UI, Ubuntu, Roboto, Noto Sans, Droid Sans, sans-serif"><span=
 style=3D"font-size:15px">BR/J</span></font></div><div><font color=3D"#2427=
29" face=3D"system-ui, -apple-system, BlinkMacSystemFont, Segoe UI, Ubuntu,=
 Roboto, Noto Sans, Droid Sans, sans-serif"><span style=3D"font-size:15px">=
<br></span></font></div></div>

--00000000000030a3a705c21fafa1--
