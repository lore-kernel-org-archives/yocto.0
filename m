Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.345.1578602249993979487
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 12:37:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NLjr6qMZ;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id c16so8629701ioh.6
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 12:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=x/bjcg1pSrbcdvsjnkl4XysarCy0+yoe4Jh2p23HL48=;
        b=NLjr6qMZvMeG0EEwGYMm9B6GB0U/TwM8W6OQRzfSKA2Y91xxJcksM/U9fV+J9G+EE4
         vM1Lw+yxBXbahuP6tgwdvgVtFu6cvvmUufZnZfRiM+bCu25G5+B+CZa07GrwrXyxipBm
         680oOYHsmetln5D1S3/A8jILaDMxZN348vUqEL+bSy9+BtLbDbio/ci1q2sQzturAl/o
         iisbnFoq9mul90nA5158+1yuwUCP5HyrlBXdsAvqP1Zh8nMOweARHdjDhrGnYSLJTktZ
         vlVQqpT34VqX0R4D1eWP38AaiNnP2Ta5Zwg/T47IS5ZevDD+5OausLKh1CVD15RI4Sgn
         AwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=x/bjcg1pSrbcdvsjnkl4XysarCy0+yoe4Jh2p23HL48=;
        b=Xiz6kGYLm8tB50sDQLNRHuR9oVxqSYa5ZzATcQjicvhdOqElH6xxUmDqG+jqn4Ewqn
         iL5hxQ9mQZ4Z1uCUCkHHRoxpUn2eY5SSfcILjr42y3RYjrBNGmA6Zjj3BqXlhYrvoks2
         yDoZXr5fpnyeelQylDsBgZcxEMkg4w3N8E/0slByBFZwk+v03xgl1HCMjPNoeFwhZZap
         5G4aYVGsN6U+skWDtcqI7dt4vBCzpMIyqsoRXohI5H/1gtP/2apkcY0VJnJ6FvGyhLw0
         zRrTtgjaoC7lZDVB396SZd2qtTgbolWscJ9AV1KFfZlWKy2uvMHGErZD7J+AQtfw8gIZ
         yv3g==
X-Gm-Message-State: APjAAAXyQAIeFvd4JTE5fbc7q1x7GkygiJlo2z3njCMolmfeBTmHT/mG
	u/KK50SqIodpLirAiNLJZNtgD0gZ/q8LmjlRR7ZzNxH34Zs=
X-Google-Smtp-Source: APXvYqxOLWaZ3+0zEGlJ2qdXyDc9492nSZbZJDs/0o1YwvQVvTwVkHpCQ+MNzCw1KVCuwTrpnfn22PteNDUgcF9MJSI=
X-Received: by 2002:a5d:8582:: with SMTP id f2mr9118345ioj.252.1578602249125;
 Thu, 09 Jan 2020 12:37:29 -0800 (PST)
MIME-Version: 1.0
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Thu, 9 Jan 2020 15:37:17 -0500
Message-ID: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
Subject: Yocto host not found
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004d0347059bbafafb"

--0000000000004d0347059bbafafb
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to go into the following:
http://downloads.yoctoproject.org/

I get the following error:

Host Not Found

DNS error (the host name of the page you are looking for does not exist) or
Server did not accept the connection.

Please check that the host name has been spelled correctly.

Regards,

Ripu

--0000000000004d0347059bbafafb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I tried to go into the following:</=
div><div><a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank"><=
span class=3D"gmail-il">http</span>://<span class=3D"gmail-il">downloads</s=
pan>.<span class=3D"gmail-il">yoctoproject</span>.<span class=3D"gmail-il">=
org</span>/</a></div><div><br></div><div>I get the following error:</div><d=
iv>=C2=A0</div><h1 style=3D"color:rgb(0,0,0);font-family:&quot;Times New Ro=
man&quot;">Host Not Found</h1><p style=3D"color:rgb(0,0,0);font-family:&quo=
t;Times New Roman&quot;;font-size:medium">DNS error (the host name of the p=
age you are looking for does not exist) or Server did not accept the connec=
tion.<br><br>Please check that the host name has been spelled correctly.</p=
><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-=
size:medium">Regards,</p><p style=3D"color:rgb(0,0,0);font-family:&quot;Tim=
es New Roman&quot;;font-size:medium">Ripu</p></div>

--0000000000004d0347059bbafafb--
