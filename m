Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web10.2.1628623877485491895
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 12:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=n7Dw97Wo;
 spf=pass (domain: gmail.com, ip: 209.85.166.174, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id x7so169646ilh.10
        for <yocto@lists.yoctoproject.org>; Tue, 10 Aug 2021 12:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/n/KubACwz3B/g2Km08im/DMgpMLehzvG4tdGjntiik=;
        b=n7Dw97WoHqV9IBJzNWDuMlYdRn8BiqWs7OHRtMiyS9UMBiwmfyIbWO/WL5L+sEirAD
         qZK0SRCJi9sZf0MMNb/wiS273izxRnAT50dJSpMcIAwb63lRgfuIkvULlry2URm0gmHY
         j5ltxonD/gp2FPFw8gwdX2PYpGkWvlbIkHDl2tFdtzjsXxvN4N/0TUPzldodo1wBNQnK
         57EG0TgNOmFXDZjRCevOYRqMctGkrzvtuu2zFvLUO3zyOk/Kxjhuj77MYl8iRXFj7/YV
         RiCQpaETkEyqbel5RBlRKq799xZtULtWsy4SxLHLoUyz7yQuU30x/HQ2J96ukbBYUwBb
         ArtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/n/KubACwz3B/g2Km08im/DMgpMLehzvG4tdGjntiik=;
        b=CCOrQdzGkEDsW8Vsxvs4jUPFrV91bWv1ugp1MjvAmN6GUme+q7hX2dG5jNkJHzlpe+
         w2YQ5aZTUckPvc3jrbeHfQKa1QR4AzXiMMALg2qzfzra7yhtsswSVbsOZPaQDO5z3fVB
         kcbGED7HJGaF8R3QKIReC5EZV48c9do8OZrgWCVg1q/jhSdhrU5lclmLn24CWkrPu7vs
         dU27QvQfnmiSuCLHj/2qpbypx/RK00aNkYgE49edPhQzLMqEubYdVqtDHF9Is93gRfqP
         XGtah1RIl6+ql8gc27Au+AT25UTbV1sGlckaXQve3Zddrrl4x7+RNQqqsj+9UHqTwtmR
         OTpQ==
X-Gm-Message-State: AOAM531NLSa3Z+5l/2EHphnUR0DGFmkfjtRDToO217hrhsx9PRLUjl+1
	Pf83h+Bxh6Z240LLCyq7AE37hdAImE+K4LtGgR8m9Lg2vP8=
X-Google-Smtp-Source: ABdhPJwHg5Suw46iAfh+APaXNDHeSniwY8GoxIopLg1NjNdw6hmadoW8EovzjkTgrqXFHrvvB0OJ1mDul1Lelm390w0=
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr109241ilq.24.1628623876644;
 Tue, 10 Aug 2021 12:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210806165644.2393-1-twoerner@gmail.com>
In-Reply-To: <20210806165644.2393-1-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Tue, 10 Aug 2021 15:31:05 -0400
Message-ID: <CAHUNapToW-BY+j8REF3JfJ1XxHRz7My2ADLSpg5EFd9nTsCdPQ@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] rockchip-gpt-img: fix for new override syntax
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a3e59f05c9398bd3"

--000000000000a3e59f05c9398bd3
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 6, 2021 at 12:56 PM Trevor Woerner <twoerner@gmail.com> wrote:

> It looks like I missed a case for the new bitbake override syntax. My tests
> weren't done from a fresh build so either a preexisting image was still
> available, or the unfixed syntax caused a race.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  classes/rockchip-gpt-img.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


applied to meta-rockchip, master

--000000000000a3e59f05c9398bd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Aug 6, 2021 at 12:56 PM Trevor Wo=
erner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">It looks like I missed a case for the new bitbake overrid=
e syntax. My tests<br>
weren&#39;t done from a fresh build so either a preexisting image was still=
<br>
available, or the unfixed syntax caused a race.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0classes/rockchip-gpt-img.bbclass | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)</blockquote><div><br></=
div><div>applied to meta-rockchip, master=C2=A0</div></div></div>

--000000000000a3e59f05c9398bd3--
