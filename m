Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web08.3599.1609311835221671368
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Dec 2020 23:03:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=aW6SYf7K;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.128.49, mailfrom: michael@amarulasolutions.com)
Received: by mail-wm1-f49.google.com with SMTP id e25so3994988wme.0
        for <yocto@lists.yoctoproject.org>; Tue, 29 Dec 2020 23:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+xMXYFCmkr4H6UjwFrVOTOcBKcZLUlBjdDSYXnri+AQ=;
        b=aW6SYf7KPRBD5tFyRYRLSIUDaUDnOEjrosBu0A6+BggnYtxHNNALeVITkwVQR1Sav6
         UXj0TdV47KQJ1bqpLtEcjr2lJiF3u9rIvWV3ftp8fpAEbAKY2WV6ee5qOmGr4sXEIJhK
         Bb4nKA2i+psUugU43UPIGTlpM1F5mzaA7rYlQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+xMXYFCmkr4H6UjwFrVOTOcBKcZLUlBjdDSYXnri+AQ=;
        b=XFgXZmszdbmOc5O1Nvd7gCBxDZAaibSBSPbUmmSVOLCh1y1m0DKeySrspYlQsHcDmE
         21R+WIIkxchQheNQpY/V9+hdT2+3eBkR2rBUnZcSwwYm/eqTilpLkcKTsAipzR2b0gFR
         qpLFSXMwzZgo75Jjedbz7/zoPzuKATskiIwLqZ6k8hj01jbQZ48qUoKbPVWuANu6HdG/
         zO1ttCnX9Dacfd7j1oYOZ/aSoLU+ULUEiKEewanKZHAzkCSWMhx4kx+iqSXzWz/FWios
         3Rr0AiNM6+sgss78DkjoyDC+eqwy2J7WbEMrHLDqH9WgGV73ZFQBWlYovjZXpGnnrevb
         pKaw==
X-Gm-Message-State: AOAM532+kQJjK/bsguTY/aM3ZOnHuBIi+xrfygPUhVYpBbGv0siJOCze
	rD2JZSPKzl5IFLPhoUZz9buQt9y+EVwZE5wyIKCCkw==
X-Google-Smtp-Source: ABdhPJyMWnRZZFwfoUXnkV2SMdEptvOJDmohWZNpb5aG03KnppXxeBTiQN2JSzEava79vowYkCGLRqrYBQfpDocxmb0=
X-Received: by 2002:a1c:9ac6:: with SMTP id c189mr6355144wme.137.1609311833668;
 Tue, 29 Dec 2020 23:03:53 -0800 (PST)
MIME-Version: 1.0
References: <I3tE.1609310783787551578.aC8k@lists.yoctoproject.org>
In-Reply-To: <I3tE.1609310783787551578.aC8k@lists.yoctoproject.org>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Wed, 30 Dec 2020 08:03:41 +0100
Message-ID: <CAOf5uwkptPEZbfZJU4uCMNd46oWU_MWfxUh1WD84pN3-8e71MQ@mail.gmail.com>
Subject: Re: [yocto] quit-native issue #yocto #yocto
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002dce0c05b7a91c20"

--0000000000002dce0c05b7a91c20
Content-Type: text/plain; charset="UTF-8"

Hi



On Wed, Dec 30, 2020, 7:46 AM sateesh m <sateesh0457@gmail.com> wrote:

> Hi Guys,
>
>         I am trying to build core-image-sato using dunfell sources. i am
> facing bug quilt-native configure issue. its present in
> meta/recipes-devtools.
>
> Below i am attaching  my issue odt file. can please check it . help me to
> solve this issue.
>

mktemp -d seems to fail so you could have a broken permission on your temp
directory

Can you run it manually?

Michael


>
>

--0000000000002dce0c05b7a91c20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi<div dir=3D"auto"><br></div><br><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 30, 2020, 7:=
46 AM sateesh m &lt;<a href=3D"mailto:sateesh0457@gmail.com">sateesh0457@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Guys,<br>=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am trying to build core-image-sato using =
dunfell sources. i am facing bug quilt-native configure issue. its present =
in meta/recipes-devtools.<br><br>Below i am attaching=C2=A0 my issue odt fi=
le. can please check it . help me to solve this issue.
<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>mktemp -d seems to fail so you could have a broken permission on your temp=
 directory</div><div dir=3D"auto"><br></div><div dir=3D"auto">Can you run i=
t manually?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Michael</div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
<br>
<br>
</blockquote></div></div></div>

--0000000000002dce0c05b7a91c20--
