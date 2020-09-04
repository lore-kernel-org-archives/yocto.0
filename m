Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web12.31800.1599196736135249225
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Sep 2020 22:18:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RG9wv7Y8;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: thisisaash9698@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id m17so5952074ioo.1
        for <yocto@lists.yoctoproject.org>; Thu, 03 Sep 2020 22:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=gEyT1EUKP92TEQElPt2FSLRlUZnAChVpe0zyJtwopDc=;
        b=RG9wv7Y81OtFRlBwRtAHtIX6rLCHlNaFXMF3c7BIbU8a6d6H+f6Q50RKojLfgHYAXO
         HCaPQaWiuhfDhg3fWh/sQPrdwioxeAf0Ks1WDib2op4j+ZXTtQMn7opZZ4qWyimP6+9P
         f5Sz2oZCTdwyUh/H5E6sM4KIkxvniFwup+dJZcmIlAgGeazjIlXz36V8xTPomLxpQ25d
         1ZxsoaItApXy8a0J9Tcq8slET9II6IE8VP99ojy33ISjG+8bSwVIlBSyys4Se6mAgQZs
         4avbv66f8Z/iKVkuNenGjmgpXA4PwwPLVzzZesITZAgtr3FgKYAfZcmCRvZ3fyVNmkkK
         Z45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gEyT1EUKP92TEQElPt2FSLRlUZnAChVpe0zyJtwopDc=;
        b=rWAmcx6rNcLyO/x+IR1H/OzpgUE0NesDnoeRG8YGEpaMSnahaqovOGVYW6qhv9EVs5
         qK9wghh5PZ7i/UxXAr08z1T7ErO/IA02qOhMIu7/5uznMBpN8ilz0jfeHun9fjcE8QMF
         uZn6MzTpejfVwiIypQyAkXXmELO/eovHowy6XXlqK34zzf8fNPzPeShtxN/zo+8bAB5Q
         YoQ4nB81jf6t7y8ICpnBzpH1Zj0l67qP5ztaeS/QLUGLRzkLz1ME/JWE9Y1IBX5yFl6q
         M6VEb8MEH/hiFCFqCFsXGewnW178UAcq6Gn+mvOjNG4Jng/3iUPG4+A7rvdoqoYy8ryF
         li9w==
X-Gm-Message-State: AOAM531XmwxeyD/wZ4ZJI7tgUXavfPsvSaNgshMEkiyYZsM0lmppyEas
	hPvrDEYeYX/lrM1Oya0LEsy2dVXf2fmMIN7EUJLr7zjnFwCihQ==
X-Google-Smtp-Source: ABdhPJyX06V2jNqtDxJ5xRXa1wI/WMy+C7VJc2h1RI18dvOa1XmBhuWcV3FxVnwojZ8rC+B2DC+7a5KDPRu30x6Mopg=
X-Received: by 2002:a5d:954f:: with SMTP id a15mr6249881ios.53.1599196735103;
 Thu, 03 Sep 2020 22:18:55 -0700 (PDT)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Fri, 4 Sep 2020 10:48:43 +0530
Message-ID: <CANVQz1aNuRYNqpjsj+Z-SgtLx4N85a_BR_KCFajnD=cUUMtdAw@mail.gmail.com>
Subject: RootFS Size increase during Migration
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000052653f05ae76016f"

--00000000000052653f05ae76016f
Content-Type: text/plain; charset="UTF-8"

Hi Developers,

I am migrating my code from Yocto Thud (4.19) Kernel to Yocto Zeus (5.4)
Kernel.

The recipes and conf files are essentially the same, but I am seeing a
substantial increase in the RootFS Size and Subsequent final image size
(Close to 40 MB).

Any idea on how we can debug this or where we can start for inspecting why
the image size increase.

Thanks,
Aashik

--00000000000052653f05ae76016f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Developers,<div><br></div><div>I am migrating my code f=
rom Yocto Thud (4.19) Kernel to Yocto Zeus (5.4) Kernel.</div><div><br></di=
v><div>The recipes and conf files are essentially the same, but I am seeing=
 a substantial=C2=A0increase in the RootFS Size and Subsequent final image =
size (Close to 40 MB).</div><div><br></div><div>Any idea on how we can debu=
g this or where we can start for inspecting why the image size increase.</d=
iv><div><br></div><div>Thanks,</div><div>Aashik</div></div>

--00000000000052653f05ae76016f--
