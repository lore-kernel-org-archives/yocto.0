Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.11407.1603790610678924940
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 02:23:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=QWEXcKWO;
 spf=pass (domain: apide.com, ip: 209.85.160.179, mailfrom: morten.bruun@apide.com)
Received: by mail-qt1-f179.google.com with SMTP id j62so482085qtd.0
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 02:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=z9ErfFmCanAYcm3mnKQzjUFqEx5yoM2LUo/SaDN7LBQ=;
        b=QWEXcKWOZxkhoD8+OajVpxXNw2LuQwc3T/9Mfra8pxlElrTvhl0qkUr0f2F7hXjodV
         qvKVMbTAGCPm9dDcpz8c2p7FRc8OyGPnWKvINlfegM1x5H5bb1sP+awLpwP9pCQ6Gx95
         0BK5CmAVtQJ/mgLtmM0lKiEXf0S+kXvq7Htzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=z9ErfFmCanAYcm3mnKQzjUFqEx5yoM2LUo/SaDN7LBQ=;
        b=fl9hsCipW+7GUA35LfaWF80seXXVEZnqbChsaQdzfHevTYBDRWvN3eg02E6TGeiDSd
         FuGOftOWaxtKvJ0Ds7GuoWpIjZ6TQz5ftkc0s2vu3GTurRoJwONyuCiBJfOFwoqC7zW2
         HBLoN6cWAatX23Whsy/zMsooINTpBKClyfE9iKz044oQ/Upbm6RxHMvreDhbqW46yp+J
         BfkzEydq4D9+nV2ltMyIvAtAwK5iEc8q/sApmvxrAPayMoa9cittgXyz4dmEwApBABBp
         rjvXhsV/bzmRgKEd+Fd+USklflAB637X4hP3X+RRbQzAsw+B9hV/XpXuN5y4sGDHkkpj
         qvJw==
X-Gm-Message-State: AOAM533WkOxVnX9SeVF2TlCt70j0Ae3tjUkwFRx3r8Gt6wvmZOwB7wS4
	ktPKUziQ5aIuJxRapQMvwvO32lCbb/EzJ9lE2LXwnARiQx84uPvd
X-Google-Smtp-Source: ABdhPJydSWGgeXRzo8aSArWHO8YKnyXAUg9LOM6wHBy8+WBd1heP2Tu9CuRooaN3+AAHbC7Uw645K6aDwzXVeOWLOBo=
X-Received: by 2002:ac8:51cd:: with SMTP id d13mr1152787qtn.148.1603790609309;
 Tue, 27 Oct 2020 02:23:29 -0700 (PDT)
MIME-Version: 1.0
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Tue, 27 Oct 2020 10:23:18 +0100
Message-ID: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
Subject: Systemd, overlayfs, and machine-id problem
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008ff4f005b2a399ef"

--0000000000008ff4f005b2a399ef
Content-Type: text/plain; charset="UTF-8"

Hi,

In our current Yocto project we are using an overlayfs on top of /etc

This seems to trigger the systemd-machine-id-setup service which fails with
the error below:

systemd-machine-id-setup[204]: Failed to unmount transient /etc/machine-id
file: Invalid argument.

The failed service then triggers an error in the test_systemd_failed test
in the systemd testimage suite.

As far as I understand the machine-id setup is triggered because
path_is_mount_point() can report false positives when using overlayfs.

Is there a way to fix this?

Kind regards,
Morten

--0000000000008ff4f005b2a399ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">In our current Yocto project w=
e are using an overlayfs on top of /etc</div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:arial,helvetica,sans-serif">This seems to =
trigger the systemd-machine-id-setup service which fails with the error bel=
ow:=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:arial,helv=
etica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">systemd-machine-id-setup[204]: Failed to unm=
ount transient /etc/machine-id file: Invalid argument.<br clear=3D"all"></d=
iv><div><br></div><div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif">The failed service then triggers an error in the =
test_systemd_failed test in the systemd testimage suite.</div><div class=3D=
"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">As far as I understand the machine-id setup is triggered because path_is=
_mount_point() can report false positives when using overlayfs.</div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sa=
ns-serif">Is there a way to fix this?</div><div class=3D"gmail_default" sty=
le=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif">Kind regards,</d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif">Morten</div></div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><span><div dir=
=3D"ltr" style=3D"margin-left:0pt"><br></div></span></div></div></div></div=
>

--0000000000008ff4f005b2a399ef--
