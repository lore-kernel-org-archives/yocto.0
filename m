Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web10.566.1601009302745099684
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 21:48:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XKTyphyg;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: thisisaash9698@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id q4so1162144ils.4
        for <yocto@lists.yoctoproject.org>; Thu, 24 Sep 2020 21:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hL0sY2UuJkpr/prCrDiA71hSonNSpgfcJwBNHEfeJvg=;
        b=XKTyphygMv0FrTcUhezkgKIM3Mv3bZZwJ2QMomu7LegscAhsptMu7SJjagiC4AZ57u
         VhshPg51/WCZRkIeoDGgXMgqqdKeyPw/vLgtYuvqw2jGcU1Ba3Qixvms30GwlwUgzGgH
         ixWApKwPlamOG+EAVTE8+VJ6Ouh88IOIDYkYi8u54PTzC4prvfbQMYcq+58yqUYoWdYK
         emdA74wykmBXlfHJmteF6377j1aBM95Xk2UM5cP2/KjFAHxy2pnvqRiycUOJvupAiSwU
         9sii0CI7Of1tVo8v70Yce9vQBfv/JicUvjko1q6rC8fW/e+zpNigMbatBPFFgyZXWIfa
         4mTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hL0sY2UuJkpr/prCrDiA71hSonNSpgfcJwBNHEfeJvg=;
        b=QqT9NqiVva0cq3hTKd2bkhLZ/k79plMfi3/kVEFd7om6ezxB101qVQlHZCvW+m2fWx
         Y36+M9Kxh7IzvLIQaw8LyJ+A/blrHtkTCs95jBWEhqGKQESru/NCFHDkW+tTFKBdpS8F
         Q+B+fpJiOObI9rCFbTcq8LyMPih3pqxBm1pvh7qC31JNCG6rLBYX7PyFEkRHuZcw+nnz
         gmMjFLfgaNpyX05kt/Rpemmbzujlcb9KD1IAQ5/NUsGMpdEcTAo9QFdZiTXP5PaJiLmH
         6xWfdLpkOWH1xfyT45S5ww3BPCxPfgDQFjZuXRmM0UGnze98wefNwIu4ElBzNTcGWb92
         q29A==
X-Gm-Message-State: AOAM531J5RWrxis8TDBb5d/M9UduokxXLhC7vTaEwHum/seGlQBbQFNC
	RAzNrm3M0b7kexTUpQrtlI8vPyQXzyVxipwNNzoqI6bGWQ1t1g==
X-Google-Smtp-Source: ABdhPJww+e0pDqz9/ING+HuqrSwW9t/LX0eFJasw+tz7c0FRpwFrtW335YYZxGpn6j4M24Cld6uA9HUOshvhZCicoTw=
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr1709083ilj.291.1601009301707;
 Thu, 24 Sep 2020 21:48:21 -0700 (PDT)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Fri, 25 Sep 2020 10:18:10 +0530
Message-ID: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
Subject: SIGINT Issues with Zeus Migration
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b5e04805b01c06d5"

--000000000000b5e04805b01c06d5
Content-Type: text/plain; charset="UTF-8"

Hello Developers,

I recently migrated all my platform Recipes from Thud (Linux 4.19) to Zeus
(5.4). I understand there might be compatibility issues and was able to fix
most of them.

However one issue I am facing is that in the newly migrated Zeus Image is
that I am not able to send SIGINT to commands such as Ping, tail etc. I am
only able to run them in non-interactive mode. I have to reboot the box if
I executed those above commands in interactive mode.

Can anyone suggest which recipe/config can be a good starting point?

Please let me know your suggestions.

Thanks,
Aashik

--000000000000b5e04805b01c06d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Developers,<div><br></div><div>I recently migrated a=
ll my platform Recipes from Thud (Linux 4.19) to Zeus (5.4). I understand t=
here might be compatibility issues and was able to fix most of them.</div><=
div><br></div><div>However one issue I am facing is that in the newly migra=
ted Zeus Image is that I am not able to send SIGINT to commands such as Pin=
g, tail etc. I am only able to run them in non-interactive mode. I have to =
reboot the box if I executed those above commands in interactive mode.=C2=
=A0</div><div><br></div><div>Can anyone suggest which=C2=A0recipe/config ca=
n be a good starting point?</div><div><br></div><div>Please let me know you=
r suggestions.</div><div><br></div><div>Thanks,</div><div>Aashik</div></div=
>

--000000000000b5e04805b01c06d5--
