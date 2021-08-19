Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web09.70041.1629382571417535248
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 07:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y6OcITVq;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id h18so6117124ilc.5
        for <yocto@lists.yoctoproject.org>; Thu, 19 Aug 2021 07:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tDQ0+E1x5cUipZ65FgfeMXRqMTLGQAuLVldcPhqarpk=;
        b=Y6OcITVqUnMeBJbENqASrPLGMhH1wG7UpPM+2x2FuHAlcv8QyZNQ+z6YGYBWMT0sxA
         9WBUdKTbNjQKLzWzGuMDy6bOcMlxZ3KMuu/HZhCKQOdvS89Rupyw08NQHnVjy3Nw189l
         v8NKwpWoFud1sle4QB0+gOyQJ/GoMVl7kqsAicAjXUdPpK9+oJpLzh3iTYVA8Di62niR
         EB1wvQ91/0Tk1vAyjd8AftbokfrThEtJkcP8plMDMfhmnmCyp+Fz3hLxVLDpDeliHsmM
         oscdOOBfVCze5xf0dSSDPRFtwyEF2yNrBkFuZ1BJaZuP1NQCbTdKrWZ3P8nH2kVP4xeH
         y1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tDQ0+E1x5cUipZ65FgfeMXRqMTLGQAuLVldcPhqarpk=;
        b=o/iiGj2EX+LXYm7ZSKZXQnW/uwXyArzdA1DapIbZg+7jruKCWTSVEhwTVb4ChWQV5I
         R4JzFy+tHXKeGYjF32Mm7rNFyJEQgXV4SOwdtQWsrVUq3M/mYc/hSCfhJbhu5dfEtbGo
         f0KHHIaoXxp69hFIFFcKqJYc5DFOnEvq/WB+oUE+FbIPJLB6W8E9JhI1XKqKN5Oxk377
         3jnPh1TdRKKAnrSSQnCBU8KZQyXc3UarpBmZ+pnikAQk/Nca7PB03iVSUT+1K0h+cFMG
         blVECICCZt57Ya7l1nAG5607jd41Ch0jD0bX5or5rzxwleAB989WNRvwZ2YRr131p1L2
         f6wA==
X-Gm-Message-State: AOAM532QL42XTa0ud7LP1w7GS8Ka3slBa++OPBdy0USlMuchEgvXTKws
	OCboTGjipxKZ+XAcZ7PjsOGLsxBYoSqjXk7+GyU=
X-Google-Smtp-Source: ABdhPJzp9xC2PHhfqaqARXo9x/ZIQmpThKpA/sNEYAsqSwhbeaPWYMucXNSBu4t3ztm79rdLXX7WpCF07/7WsJSm5wU=
X-Received: by 2002:a05:6e02:15c8:: with SMTP id q8mr10106079ilu.285.1629382570801;
 Thu, 19 Aug 2021 07:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210818181601.3887274-1-raj.khem@gmail.com>
In-Reply-To: <20210818181601.3887274-1-raj.khem@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Thu, 19 Aug 2021 10:15:59 -0400
Message-ID: <CAHUNapSB+Ws8uC2bXKBrrk66H159fbACjABeLP6+GynEHp7dQw@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 1/2] machines: Adjust for new location of tune files in core
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000055fddb05c9ea3109"

--00000000000055fddb05c9ea3109
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 18, 2021 at 2:16 PM Khem Raj <raj.khem@gmail.com> wrote:

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/machine/include/rk3066.inc | 2 +-
>  conf/machine/include/rk3188.inc | 2 +-
>  conf/machine/include/rk3288.inc | 2 +-
>  conf/machine/include/rk3328.inc | 2 +-
>  conf/machine/include/rk3399.inc | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)


added to meta-rockchip master
thanks!

--00000000000055fddb05c9ea3109
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Aug 18, 2021 at 2:16 PM Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rk3066.inc | 2 +-<br>
=C2=A0conf/machine/include/rk3188.inc | 2 +-<br>
=C2=A0conf/machine/include/rk3288.inc | 2 +-<br>
=C2=A0conf/machine/include/rk3328.inc | 2 +-<br>
=C2=A0conf/machine/include/rk3399.inc | 2 +-<br>
=C2=A05 files changed, 5 insertions(+), 5 deletions(-)</blockquote><div><br=
></div><div>added to meta-rockchip master</div><div>thanks!=C2=A0</div></di=
v></div>

--00000000000055fddb05c9ea3109--
