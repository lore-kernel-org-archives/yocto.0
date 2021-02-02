Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web09.52095.1612274219948519520
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 05:57:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cMEatgNG;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: simonkbaby@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id b9so10496889ejy.12
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 05:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8t8/GbdA2WrVOrTr2WjabOqdyFXXhPPFXScOWphpZ5g=;
        b=cMEatgNGenlvjyrthjgTqQPGkuuMjafOaIW5uEkgGMBHY/ZTvJavPD+3CMZPhun3Ip
         XxRnaHsHAAJ95cQP6Eoa8+1c2xs3mgoje4onzcEP6qN7PM7KtgwyxmxzkoHYocfA1IEG
         X5AcDKeOo/VsRpmpQDQi21VTGXf9e+9Zs4q2W2XXFs2h10BUHbmxyuOK5FHWsVV/JcB9
         JMDuI0sxWvqDKh5y2aeUKsJGTPpPlNmVOPPTeXcRX4DmDG0vtmwCKFckU+I085WIzSs+
         +pODuwPue6DjwvFlHBFtYL65fKrqQrHu5XIAgNKWtYU5m0z9s/s3h4wtIiL2gZzjY+de
         VUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8t8/GbdA2WrVOrTr2WjabOqdyFXXhPPFXScOWphpZ5g=;
        b=SI8jocF0JvWiFIEHSa99abzqHZtTcK2H4FpaVuEcuJEYbBAUDAFnROR3bkLEXxPUcg
         9Uk5tCumMH9cYTcw0YeIjVxF6dkUTfXwo1dk4FRem3NpTkD8N7TJu71HsHtQwXFoEgim
         FPIMgpqWp2Ji3cIC/bmlFi+eY5jTFV4HXVtMhXACbq7PyEEF0pDWNWZf5tX59Bs7JA8f
         MWR7DIOYK3io8qBoUAzMuaYC8r+KHK8dlINLB8xbVg8Q9O8r1nPVtc5iW0x52fN6oHoF
         YcHso6YrwU5cKi+7ztiHWBnoI0Zn4196NoijAm5FGlJfhkyU/0NdjPU0J7jJQaw/M6yE
         BRMA==
X-Gm-Message-State: AOAM533iHEhBofxTUYBAbBckmPe65e3cXA+Xw7Z96ih6qOPathy4Xwh+
	SxkCcmyLIJa42MNFvbweN70oh/Li2HfbhQ00dvHicDZRwoc=
X-Google-Smtp-Source: ABdhPJwDSuAWSZ9bw7NyRa51koJKUuOhInHA1YFKY77Dyj0/t/US3mRYBRnqZw4oGqQT8dhx3Vhn0zD/IlUsSQSvEpo=
X-Received: by 2002:a17:906:fca1:: with SMTP id qw1mr13901912ejb.130.1612274217880;
 Tue, 02 Feb 2021 05:56:57 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:aa7:d706:0:0:0:0:0 with HTTP; Tue, 2 Feb 2021 05:56:57 -0800 (PST)
From: "SIMON BABY" <simonkbaby@gmail.com>
Date: Tue, 2 Feb 2021 05:56:57 -0800
Message-ID: <CAEFUPH0xrs09-3DUp4bA1zGkkf1vpStw-rA3BHN-vs8fFwiVxg@mail.gmail.com>
Subject: Query on kernel configuration change
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000990d805ba5ad84c"

--0000000000000990d805ba5ad84c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Details
Hello.
I have a question about modifying kernel flag using bitbake virtual/kernel
-c menuconfig . When I tried to do this command it failed with error  =E2=
=80=9C
failed to create child process =E2=80=9C on the second pop up screen . Did =
anyone
know a way to modify it manually ?

Thank you
Regard
   Simon

--0000000000000990d805ba5ad84c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div id=3D"cvcmsgbod_17763011ea929cf5" class=3D"aj" style=3D"color:rgb=
(34,34,34);font-size:14px"><div class=3D"Ni"><div class=3D"Si"><div class=
=3D"Ti" style=3D"height:220px"><div class=3D"ei" style=3D"height:220px"><di=
v class=3D"ni pi  di" dir=3D"ltr"><div><div class=3D"M j Zi Mi" tabindex=3D=
"0" style=3D"color:rgb(34,34,34)"><div class=3D"Xh"><div class=3D"cj"><div =
id=3D"cvcstrecip_17763011ea929cf5" class=3D"kj Pg Bh"><div class=3D"M j lj =
h" tabindex=3D"0"><div class=3D"V j nj"><br></div></div></div><div id=3D"cv=
cstrecip_17763011ea929cf5" class=3D"kj Pg Bh"><div id=3D"cvcshowdet_1776301=
1ea929cf5" class=3D"M j lj h" tabindex=3D"0"><div class=3D"V j nj">Details<=
/div></div></div></div></div></div><div id=3D"cvcmsgbod_17763011ea929cf5" c=
lass=3D"aj"><div class=3D"Ni"><div class=3D"Si"><div class=3D"Ti" style=3D"=
height:220px"><div class=3D"ei" style=3D"height:220px"><div class=3D"ni pi =
 di" dir=3D"ltr">Hello.=C2=A0</div><div class=3D"ni pi  di" dir=3D"ltr">I h=
ave a question about modifying kernel flag using bitbake virtual/kernel -c =
menuconfig . When I tried to do this command it failed with error =C2=A0=E2=
=80=9C failed to create child process =E2=80=9C on the second pop up screen=
 . Did anyone know a way to modify it manually ?=C2=A0</div><div class=3D"n=
i pi  di" dir=3D"ltr"><div><br></div><div>Thank you=C2=A0</div><div>Regard<=
/div></div></div></div></div></div></div></div><div style=3D"clear:both"></=
div></div></div></div></div><div style=3D"clear:both"></div><div class=3D"S=
i"><div class=3D"Ti" style=3D"height:36px"><div class=3D"ei" style=3D"heigh=
t:36px"><div class=3D"ni qi  di" dir=3D"ltr">=C2=A0 =C2=A0Simon</div></div>=
</div></div></div></div></div>

--0000000000000990d805ba5ad84c--
