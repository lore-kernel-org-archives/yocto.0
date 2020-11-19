Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web08.10349.1605797463738099960
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 06:51:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SQCYxD/Z;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id x11so3159691vsx.12
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 06:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lyS+G2BHJ742ZZa4CoBSLcfX4kyR46BBnu0ePjORtwY=;
        b=SQCYxD/ZgdN4S4qewv6LpQpmS/xON96PTUh7IMhSTsZHg35VjmiwiFJrmB9MiaZXwJ
         bynOcKAsIu2u32ncK2BXWyMH+i+ZuGloyeZ6CEzfww1xvFU3BB7UPNVoZ7td6A1jsqph
         alc6jAnibA9PSdwNL1pSIGPUEBZZ/uELbt2gWWV6iyVwow3ykT+CjIag4hujYyBiJrmf
         Qm2ZnapLWhD/fgx8n5yP8R6mRT+H0E07QbGV1ROMf8lZjjQoHKvcx6b48jtfVR+DgKWK
         uO1dO/zfT0rN12rubH4cF15P0tu/W14ZIaCdGUw19Hr9tpucxicC59XBguh7gGkeUaC/
         L8rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lyS+G2BHJ742ZZa4CoBSLcfX4kyR46BBnu0ePjORtwY=;
        b=SnvxEG1uO0oXy3Zl55cpjfIZQKKXMSU/z6lyTSdSVFsdeapsaa/Nlo+oPyyk3J1eXq
         1wDIMwgVQhYcXYamf9FK5VNzCMVmJLS440bX2XLYcLlzl0OqxZ/PEAK0wAYnbv5R3zmr
         7A3o25VmHr3l6KMMYdKK05WVZ7YwABOmulKPQ5H5mtqeGqJd4ZYSJvhd8RANpt4InUHO
         IC6WjS6/QFw0d7Bb02QmGjjYsN3fUr9Z5MsVhmZHH8fh9ZDFAGBXk8AqqqAUkjL7v1Kw
         4ChiR0E3b1B3xZaXAZpMo2zM4bPX9FKeH3uOxEe5lEnq3zSzJzgXg7N7aIct4rQNjqep
         Mj/g==
X-Gm-Message-State: AOAM530W35ml/0giL6F0b5LmFMX1FR9mju7pFMce9nfphVG8MzYES87H
	qKD/zTmXC95gRmENBq9uVCgzKh+ob3QVdk0kXdm8ojkuK2A9NQ==
X-Google-Smtp-Source: ABdhPJyhCVrabGPKkYnEghEqsPX48MwubtSWhF0g68UBRFHZiNgt52rfwPPSry9RaDSLeMjvs38NuT8UyvvQYWfx6/I=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr7796123vso.23.1605797462428;
 Thu, 19 Nov 2020 06:51:02 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 20:20:51 +0530
Message-ID: <CAJw=dJ8sqtcQygFVj4mF3G-oH5oPOV53EQmsXa_R4dPMjfyLaA@mail.gmail.com>
Subject: lib64 support for custome image
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000544e6405b476db34"

--000000000000544e6405b476db34
Content-Type: text/plain; charset="UTF-8"

 Hi,
      We are creating our custom image (core-image-xxx.bb)  in that lib64
support is not there . but for core-image-sato image lib64 support is by
default . so how we can add lib64 support for our custom image ?

--000000000000544e6405b476db34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0Hi,<div>=C2=A0 =C2=A0 =C2=A0 We are creating our cus=
tom=C2=A0image (<a href=3D"http://core-image-xxx.bb">core-image-xxx.bb</a>)=
=C2=A0 in that lib64 support is not there . but for core-image-sato image l=
ib64 support is by default . so how we can add lib64 support for our custom=
 image ?</div><div><br></div><div><br></div><div>=C2=A0 =C2=A0=C2=A0</div><=
/div>

--000000000000544e6405b476db34--
