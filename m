Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web09.5378.1627348000445083293
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 18:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HgF5Oxi+;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: twoerner@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id e25-20020a05600c4b99b0290253418ba0fbso1177440wmp.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 18:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=KwrbKbKK29uCRYEaevY7GR0q3z1LY0zWUAQZXmJ7oos=;
        b=HgF5Oxi+p+SyEbSw6AXkHHNXUSekjMx/Xd/Jz5r/Q7tOJw3EDvCI13/vrgIeOnmk+9
         a2qKJuRNEdLcRJzPJsbWT0f4twfTFhpe2RCLzUkWRe0fLkebk6Nxw2Tb/mzPdAfp0enw
         q9lCm87x0I/GA5oZb6/xN8iwMYRTgbSfEAoGfDDswwCuouUua6XhFv/qFk6lzhq7kvZp
         F0KGsKJ4sWhlpPquwifSeM8lNySpb1Q/WmY54iCojly2Jlygpn0AVJWk5ePfkMa46qIy
         NrfMbbgCPdF/daCnIKFlxmfk6qTyK5M0bYyb6KrhZaY6tEVfhAwoNo9pAV6QAHeYvqAZ
         ukww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=KwrbKbKK29uCRYEaevY7GR0q3z1LY0zWUAQZXmJ7oos=;
        b=nIU4SFBwt2pBXapprcHfQVJQ2q2HottwzB9QFau9Q4stmVK1u2vrkhRJaD24TaAZJ+
         VbJznFjf1EzUcaEIbiLoSax82bfwwTGVodIjMha5SsJKnwUR7RBrYcQ2u3El2tjMWPJl
         B+FvsaVZR09gPJQDByi9xMA5t+dM/dDEWVg7YSCdPyAvEB0EUKgSw7XUr2N+4xpTHE4o
         eEkZenhC6Snj6+H390oRHI9Hoy4hJizmfHPaI+IkboIxTuuCQ6prN+LY3DZQ8tOT//45
         i0qvpud2bDXfhdi3v9sE7t0cEeE9I/vmkLvxEQ/8WMmDU1U0juB8E9RFnatWykbBGQOq
         hIvA==
X-Gm-Message-State: AOAM533wlYcRxGCbwcpNv7BeajS/OC7oxkctO0Sol/9JUt+8xkb4Zrm1
	yZ2X55XKDHdBz3Kk1z966dqa2sd6s01rRm4ZBXwvHIWE
X-Google-Smtp-Source: ABdhPJxr2LVWfwKIyJ2czF6aCrCpHJTijv2x5ukXB27UbY75jOGD6O5LtUhgpTsShoSV2iziVqysRGhzqE2vB9arIE4=
X-Received: by 2002:a05:600c:4105:: with SMTP id j5mr1488929wmi.86.1627347998324;
 Mon, 26 Jul 2021 18:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210713233204.11476-1-twoerner@gmail.com>
In-Reply-To: <20210713233204.11476-1-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Mon, 26 Jul 2021 21:06:27 -0400
Message-ID: <CAHUNapSkVOURkaGkVM3UVV7Lq=CXOBKEX6GUger5b68g9=2jHA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] remove LINUX_VERSION_EXTENSION
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005dba1105c8107ba3"

--0000000000005dba1105c8107ba3
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 13, 2021 at 7:32 PM Trevor Woerner <twoerner@gmail.com> wrote:

> Adding "-rockchip" to the Linux kernel name implies, to me anyway, that
> this
> is a vendor kernel. The PREFERRED_PROVIDERs of all kernels specified in
> this
> BSP are upstream linux-yocto kernels, not vendor kernels. Therefore remove
> the
> version name extension to avoid confusion.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-defaults.inc | 1 -
>  1 file changed, 1 deletion(-)
>

applied to meta-rockchip master

--0000000000005dba1105c8107ba3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jul 13, 2021 at 7:32 PM Trevor Wo=
erner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Adding &quot;-rockchip&quot; to the Linux kernel name imp=
lies, to me anyway, that this<br>
is a vendor kernel. The PREFERRED_PROVIDERs of all kernels specified in thi=
s<br>
BSP are upstream linux-yocto kernels, not vendor kernels. Therefore remove =
the<br>
version name extension to avoid confusion.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rockchip-defaults.inc | 1 -<br>
=C2=A01 file changed, 1 deletion(-)<br></blockquote><div><br></div><div>app=
lied to meta-rockchip master=C2=A0</div></div></div>

--0000000000005dba1105c8107ba3--
