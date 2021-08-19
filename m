Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web12.70534.1629382607772598204
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 07:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaTogBRw;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id j18so7834346ioj.8
        for <yocto@lists.yoctoproject.org>; Thu, 19 Aug 2021 07:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gP1DzJD3YLPg8VwhWgyrs3Q4Hg0Ned7Wy9uzEOpOb4A=;
        b=FaTogBRwk+HPLA22Fg8pV6DLuW6pPXuPWEvChi3n4x4ZUBGQG+A+Rar/YHHaFkCyOA
         cg5aovq1QVVCvQbWijNj0nz+DWD6ra0IQcDQARGdKPpDiWuMJk3N5Sn1gBMWZxegu45Y
         rUAgEjaqcVAhp++5hRREmYHi6wr9RuL5cEb3Z0MMAS0P7nLd1Gc4J1dalq1hh7iqkW3Y
         Qsf+5w/tcyieygRwAG+PbisB90t0iHehN2ipbj2Jv4Cl0F87eDLwmw/8N+Qq1UXljQ46
         0RVWVkfpTMrWVbPTcVI7ovL27igbv9+UnekzCqiRCM+QZ0iVy63HzZp4T6RB8rg5Me7j
         yhWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gP1DzJD3YLPg8VwhWgyrs3Q4Hg0Ned7Wy9uzEOpOb4A=;
        b=QnafYrNvHp5vfbHy2G3d3QgNLAOtW4oXHHa8XS6zgOQN+8FtHSucg86fu+WlLVtuKB
         xb4BYmkgVQPSgdDEvLvJmYaTH7VFbvqyU4YicjFLT/D9rIa8Rx73OG3WKji65RrE08v6
         dDfqyGTn8aUhbiHgqvRdRbtotX/rPwae4S6xhsQO6HtPay2aJisq9iDEIWHvmsQaHbDK
         gz4yn7YAzXrxyj7x8AYh/J+vI/1JhSsdFV6zOwlmeWqaJFq0w06KchdYZdvcFpSeey43
         MXYLxp2qNHdWxswcP39Wvr4BJzWBxEAenOBHMxXXD8UShYri3m+xVd0pirrZ8NgrWVYf
         90EA==
X-Gm-Message-State: AOAM533BByybMlFLhTOESkuy84hzVeh8qkCaAvctKw+u9dzso/u33EiG
	WxCzrXejdGlpcw9t5IM14018hzssAZ8vrAr2q9Y=
X-Google-Smtp-Source: ABdhPJzrh1jgGO4mXwAxUEKbY2mXaiVhxBzb4qd2sYH9vXZoOQIITZ8NnIntqP4sYeOBdR0/7urOPqNjL8ana72Af2M=
X-Received: by 2002:a02:8206:: with SMTP id o6mr12929987jag.92.1629382607265;
 Thu, 19 Aug 2021 07:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210818181601.3887274-1-raj.khem@gmail.com> <20210818181601.3887274-2-raj.khem@gmail.com>
In-Reply-To: <20210818181601.3887274-2-raj.khem@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Thu, 19 Aug 2021 10:16:36 -0400
Message-ID: <CAHUNapT2TFsk424tEXZowk2KKvi8Yig-=sLHKWZyTzOUpiBtsA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH 2/2] linux-yocto_5.4: Drop bbappend
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000082635105c9ea33cd"

--00000000000082635105c9ea33cd
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 18, 2021 at 2:16 PM Khem Raj <raj.khem@gmail.com> wrote:

> 5.4 recipe has been dropped from oe-core
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 -------------------
>  recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ---
>  2 files changed, 36 deletions(-)
>  delete mode 100644
> recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
>  delete mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend


added to meta-rockchip master
thanks!

--00000000000082635105c9ea33cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Aug 18, 2021 at 2:16 PM Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">5.4 recipe has been dropped from oe-core<br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
=C2=A0...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 ------------------=
-<br>
=C2=A0recipes-kernel/linux/linux-yocto_5.4.bbappend |=C2=A0 5 ---<br>
=C2=A02 files changed, 36 deletions(-)<br>
=C2=A0delete mode 100644 recipes-kernel/linux/linux-yocto/0001-ARM-dts-rock=
chip-Keep-rk3288-tinker-SD-card-IO-power.patch<br>
=C2=A0delete mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend</blo=
ckquote><div><br></div><div>added to meta-rockchip master</div><div>thanks!=
=C2=A0</div></div></div>

--00000000000082635105c9ea33cd--
