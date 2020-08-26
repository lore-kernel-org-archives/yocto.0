Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
 by mx.groups.io with SMTP id smtpd.web11.4630.1598475652203733409
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 14:00:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ID7SIlln;
 spf=pass (domain: gmail.com, ip: 209.85.222.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f66.google.com with SMTP id k18so998657uao.11
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 14:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZcEdPfDU3WZKJHslimccCrY9KK1ioZ1WiK7W1udk95w=;
        b=ID7SIllnZrykX6BBVfFuCvxHEBEzU5LF4pke9TCVGKvN33XaKRtrsmAb+n6Bqq3c/7
         iFWdJUHU5Dx+RfdkM19RoYIYhqQPLyr08YV5t9+zkB2Kmnk5pPirPIhpVWpVfpFh4Ae4
         sDtps3EJHBtNNDp1LAkrt61h1eoTuHZFUcLVv5ExRzOA9e9A6XW50cmn6nBbXexJMXdF
         a7Vtv5avw2wGIz4hBhkcmRC0O7Q2UtrDTHmzIcInTah3agndnGwY67OEFBtRTTsE4r55
         /PP3hl2qWU1fjQEJlgECTpDZl81uOg74JAuQ1zgcwqaHahsbT3xnMe1ZdDpA0ocmqltK
         HM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZcEdPfDU3WZKJHslimccCrY9KK1ioZ1WiK7W1udk95w=;
        b=Ayz2tkJ30AY1DvONVW7Mq4GOh227v/eYvQGlXR/T++13qodD5M1d0n8xZc1fRoxR71
         bXnGIwxoHAW1Dv7kn/lagAMIJnw2K1GByfxm5rezyVrRXKImKnCKnmxpOiW/UxBX3xnS
         MoCbzAfCoMPGb0jyUFJqs6qZMVH3uT/MBccZuP/GWfyyXMKeQn5rqhz4icVSRAKqCCM9
         A538fZKOAGuCCl2oST089JZZVj+QJHO+8+Bl4jDbCc1qiPklm5is8zJGH2jVB40XLbaT
         BN6be+FtO+Cn2f7eTCC2Ru/4B8pc9MnuxBsWDDoB8wbYo8R8o73t8Und+0/y1oSDFVeP
         2BEQ==
X-Gm-Message-State: AOAM532B+fP0l6YPdrzxqP5KuzO9gt5BjuHVFJ0X6Ub5K8+c/qwxzgRg
	gwAxzLWOYCR7YRhpZAMphfBogO5Wn5e18bN/Pz0=
X-Google-Smtp-Source: ABdhPJxUY9mnB6ePGUpFyB4SpblNHGEvu5U1OTt83cMid3rO5SZYz0k8TCW97IUDwtz3vZh41HY935XASWzcH2GCYPI=
X-Received: by 2002:a9f:2c9a:: with SMTP id w26mr9773835uaj.89.1598475651261;
 Wed, 26 Aug 2020 14:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200826155433.16346-1-alex.kanavin@gmail.com> <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
In-Reply-To: <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 26 Aug 2020 23:00:39 +0200
Message-ID: <CANNYZj-Fg0aiqK2QM__OC+3r2N5-THnsUYX5Pgtt+mjWDDq5zg@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000060266905adce1de8"

--00000000000060266905adce1de8
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 22:50, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> I suspect we need binutils-symlinks instead of binutils?
>

binutils-symlinks is only an alias to the main package according to
binutils.inc:

RPROVIDES_${PN} += "${PN}-symlinks"


> Also, thinking about this more, why aren't these tests scp'ing the file
> to the host system and running readelf there? That would remove the
> need for the dependency?
>

 I didn't write either of the tests, but yes - I can work on this tomorrow.

Alex

--00000000000060266905adce1de8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 26 Aug 2020 at 22:50, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfo=
undation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">I suspect we need binutils-symlinks instead of binutils?<br></b=
lockquote><div><br></div><div>binutils-symlinks is only an alias to the mai=
n package according to binutils.inc:</div><div><br></div><div>RPROVIDES_${P=
N} +=3D &quot;${PN}-symlinks&quot;</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
Also, thinking about this more, why aren&#39;t these tests scp&#39;ing the =
file<br>
to the host system and running readelf there? That would remove the<br>
need for the dependency?<br></blockquote><div><br></div><div>=C2=A0I didn&#=
39;t write either of the tests, but yes - I can work on this tomorrow.<br><=
/div><div><br></div><div>Alex<br></div></div></div>

--00000000000060266905adce1de8--
