Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.8214.1590655336756934358
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 May 2020 01:42:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=vBasgZfc;
 spf=pass (domain: burtonini.com, ip: 209.85.167.51, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f51.google.com with SMTP id 202so16105867lfe.5
        for <yocto@lists.yoctoproject.org>; Thu, 28 May 2020 01:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rVYIf1vQgr/LLNYgKcisI5YlGhYF5aUYIll5VCTg6Sk=;
        b=vBasgZfcwRGh+XEyGmMQ5g/k4/k3jv0BjmLyUWc7V/eofSoedf+37xtPE8V2F5FzBN
         ew76gCgNPZWhpsGBojXLhtu2ojbopUHcvUUdkQ2QK2lgGGy8ejPBxBIEo63pjf2md6zT
         nnZv5t9DWSiQZ4kqPGrzjHxIuJMbIBtQ6yPSMJnxZne5IYjXuM0GbO/72sBYzclk1Nut
         JiMK0KRz35sh4st2iVtL5dQsTDPwrSGOi8WdNoqBbqEAm2msixkPe/N1V1lff3b+ytkf
         ub4g7wJmqSkrniWUDy2qTA2YwW8MhzE3xKRX/OfW4VnnbD5xAnROjZrjmwKQV2zL1D42
         /Jhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rVYIf1vQgr/LLNYgKcisI5YlGhYF5aUYIll5VCTg6Sk=;
        b=lH1sauw86wYXRfyZ+QbvVf/O7/8ZunPv9TmGo2DalgvnABJEBHcH5E05Y6Hxlwb/UN
         ZAvidGFPpn/5qFpsMWtk6+Y16uBiJW1a/t/NVm/1VdnwEGUWOMq8JWWbjCm3ovdWIB0y
         rpMFl8woNJ3kPA6c89JIKFR4H4CiN5GlgLmpn6tNA9+sXKewdYHxNM6W2DoDc+JKpeJZ
         XHIVaURZOFWAjwpDErkFmWyWeLtrkDNbaelUpsR2zW4cWihOLIe2VdWtUyePz4kM5ZNH
         n4s4IF2NZ6pZ5GO+Nh6IZGuhUCe9iKjr0+gXSwN71bG80sNWYmtTKYtQt7hyIgoG264F
         gtTg==
X-Gm-Message-State: AOAM5309TbYaDews2FGVEYLEAmuKbAcglqJASQ8IOl5vzoIlwdpR52XP
	9xaRuZ4SZZZZ4zwGyO8e67Rajmg7/K5wZhtGoujOKQ==
X-Google-Smtp-Source: ABdhPJyWulBi6Ofo81vFHNhKMqZ9C394AxegBKZFwsx4OhbPq/Pk4Lss7FcJ0BnLFqaf8NtppudyRfOHmoyRfpxi0eM=
X-Received: by 2002:ac2:490f:: with SMTP id n15mr1139401lfi.39.1590655334896;
 Thu, 28 May 2020 01:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
In-Reply-To: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 28 May 2020 09:42:04 +0100
Message-ID: <CAAnfSTuWAqfEDTVaDs=fDWXxu5vowmGDF8-BSTjRJcab5H_k2Q@mail.gmail.com>
Subject: Re: [yocto] #apt #linux #yocto #raspberrypi., apt, gcc, sudo not present
To: Siddhartha V <Siddhuvgowda.18695@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003280f105a6b14ebe"

--0000000000003280f105a6b14ebe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 27 May 2020 at 11:06, Siddhartha V <Siddhuvgowda.18695@gmail.com>
wrote:

> Hello,
>
>   I built the image for Raspberrypi3B+ board. But when boot the board gcc=
,
> apt, sudo were not there. Actually only the poweron and poweroff and few
> basic commnds like, ls, mkdir, whoami were working. May I konw what wrong=
 I
> did while building please.
>
> I am using yocto warrior. I used *"bitbake core-image-base"* command for
> building.


You did nothing wrong, precisely. core-image-base is a base image that
doesn=E2=80=99t do much beyond boot into a working command line environment=
.

If you want a working toolchain (gcc and friends) on the image then add
=E2=80=9Ctools-sdl=E2=80=9D to IMAGE_FEATURES. By default toolchains are no=
t included
because they=E2=80=99re huge and not needed.

If you want apt then first change the package manager to deb by changing
your explicit assignment of PACKAGE_CLASSES. This builds the image with
apt, and if you also want a working apt and package database in the image
then add package-management to IMAGE_FEATURES.

To add sudo, simple add sudo to IMAGE_INSTALL.

I recommend looking up those variables in the documentation to understand
what they do.

Ross

--0000000000003280f105a6b14ebe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>On Wed, 27 May 2020 at 11:06, Siddhartha V &lt;<a href=3D"mailto:Siddh=
uvgowda.18695@gmail.com">Siddhuvgowda.18695@gmail.com</a>&gt; wrote:<br></d=
iv><div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<b=
r><br>=C2=A0 I built the image for Raspberrypi3B+ board. But when boot the =
board gcc, apt, sudo were not there. Actually only the poweron and poweroff=
 and few basic commnds like, ls, mkdir, whoami were working. May I konw wha=
t wrong I did while building please.<br><br>I am using yocto warrior. I use=
d <strong>&quot;<span style=3D"font-family:Consolas,Menlo,Monaco,&#39;Lucid=
a Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bi=
tstream Vera Sans Mono&#39;,&#39;Courier New&#39;,monospace;font-size:15px;=
white-space:pre-wrap;background-color:#f9f9f9">bitbake core-image-</span><s=
pan style=3D"font-family:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;,&#3=
9;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans =
Mono&#39;,&#39;Courier New&#39;,monospace;font-size:15px;white-space:pre-wr=
ap">base</span>&quot;</strong> command for building.</blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">You did nothing wrong, precisely. cor=
e-image-base is a base image that doesn=E2=80=99t do much beyond boot into =
a working command line environment.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">If you want a working toolchain (gcc and friends) on the image =
then add =E2=80=9Ctools-sdl=E2=80=9D to IMAGE_FEATURES. By default toolchai=
ns are not included because they=E2=80=99re huge and not needed.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">If you want apt then first change =
the package manager to deb by changing your explicit assignment of PACKAGE_=
CLASSES. This builds the image with apt, and if you also want a working apt=
 and package database in the image then add package-management to IMAGE_FEA=
TURES.</div><div dir=3D"auto"><br></div><div dir=3D"auto">To add sudo, simp=
le add sudo to IMAGE_INSTALL.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">I recommend looking up those variables in the documentation to unders=
tand what they do.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ross<=
/div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blockquot=
e></div></div>

--0000000000003280f105a6b14ebe--
