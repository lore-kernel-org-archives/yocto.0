Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.4771.1581677436703683454
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 02:50:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jpWFGG8p;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id r18so5946970vso.5
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 02:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HeBfY3KvB3LtB+XqOfE9VDU2eOCymwTflkJc364G6kE=;
        b=jpWFGG8p8LSBE/6I5iNhUqr3FkQAeF79ROnyk7FYnUeWxliJol0NjubJONvVGQfCul
         /la4M2+w2rJPzDJSxWAtB3mzKpN7mf2lYRLQ/4T9V30ivOaTBKb4NtYbF+Vdx+rZFap8
         RsGQDuDQXlIGgCVs6NOf7F+aIUryfZzCkb+kZsCamNXWItvQTQYVE5I9CtHK3Ov149Ki
         q+XUx0eV+H855GbBGIz/fogVisHsk+LSDQzEoAQ8AZsxf+oAZVVj2W5xPwmRhMv/vwFD
         r6QzdHrXP4gxwSUABXK+dNZ565cSBUCHv3jbEZiy80/IabhWYJuH1uWjp5BklG4Du7B7
         EETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HeBfY3KvB3LtB+XqOfE9VDU2eOCymwTflkJc364G6kE=;
        b=PfRHTyEKTpzKmxUVZBv7SZuD1o+QpOyaZOVwBJpJhUCmEaCAwpWn+x65VJFZvBD5bq
         9A+mEZY+IwkqoQwmq4Bqgv21bTV+CZBinZSdCFrhsd+3lN4+brOEMjztSVjSPLfY/OCc
         TfuvK1bJjzgtBMRZzqdaP9b6NSWzaFIEpRlfDDQo3HpNPYGQ3WoQBUlDu1sXnM4Or1V0
         3yGhbRt6Clo1FG3r5v+Y9BbcQVHDmMOUJk07xJFbnZMWvBj2iL0l6Vz7gazyAmEPcvhU
         xw5Qr2OXEUCHC6T9ueggvx+Rzkr8cxo0ne3FSFEo4nsxGFq3PwdbiSaiQL17dqQvlp48
         3zig==
X-Gm-Message-State: APjAAAXrZReJFk6ecbcHPR5y5JLrLtjThk5IOcRekSujylM2PL1oGIA+
	Xf9TL2Zo0thnQ3bbtAuuLl0hl1q3Plku98bOxHk=
X-Google-Smtp-Source: APXvYqyarg/xxmUr7ynfJYNW1J4ek7MGFXJNjfwts1yWxouOIS4e4zvCyDvdT0MG8US52+OzoSabmr4npRnRwYP2QTc=
X-Received: by 2002:a05:6102:103:: with SMTP id z3mr1036195vsq.23.1581677435926;
 Fri, 14 Feb 2020 02:50:35 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-WtCPOUTD5tsq3_3K2w6tAaB9FK4E_SEE2jwR-tMYfvQ@mail.gmail.com>
 <3765.1581677134264794712@lists.yoctoproject.org>
In-Reply-To: <3765.1581677134264794712@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 14 Feb 2020 11:51:03 +0100
Message-ID: <CANNYZj8TgCiE8uWM9Y=5ryNdx6u-GmG=+tqLBZC=qjjhpe+moA@mail.gmail.com>
Subject: Re: [yocto] Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: Pieter Smith <smipi01@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b7bdd5059e86f964"

--000000000000b7bdd5059e86f964
Content-Type: text/plain; charset="UTF-8"

This should simply work; what exactly doesn't work for you?

Do wipe tmp/ before proceeding further, as -f 'taints' the build.

Alex

On Fri, 14 Feb 2020 at 11:45, Pieter Smith <smipi01@gmail.com> wrote:

> Thanks Alex!
>
> This also works if files/src is a symlink to the actual sources. I just
> need to take into account that the sources land in $WORKDIR/src.
>
> I still need to do the following though to get the behaviour that I
> actually need:
>
> bitbake -f -c clean my-application && \
> bitbake -f -c fetch my-application && \
> bitbake ...
>
> Can you suggest a more elegant way to achieve this?
>
> Pieter
> 
>

--000000000000b7bdd5059e86f964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This should simply work; what exactly doesn&#39;t work for=
 you?<div><br></div><div>Do wipe tmp/ before proceeding further, as -f &#39=
;taints&#39; the build.</div><div><br></div><div>Alex</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 14 Feb 2=
020 at 11:45, Pieter Smith &lt;<a href=3D"mailto:smipi01@gmail.com">smipi01=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;border-left-color:rgb(204,204,204);padding-left:1ex"><p>Thanks Alex!</p>
<p>This also works if files/src is a symlink to the actual sources. I just=
 need to take into account that the sources land in $WORKDIR/src.<br><br>I =
still need to do the following though to get the behaviour that I actually =
need:</p>
<p>bitbake -f -c clean my-application &amp;&amp; \<br>bitbake -f -c fetch =
my-application=C2=A0&amp;&amp; \<br>bitbake ...<br><br>Can you suggest a mo=
re elegant way to achieve this?<br><br>Pieter</p>
<br>
</blockquote></div>

--000000000000b7bdd5059e86f964--
