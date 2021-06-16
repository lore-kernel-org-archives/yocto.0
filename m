Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web09.395.1623864291580652026
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 10:24:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bFlbjfmb;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id f21so1460883vsl.4
        for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 10:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cp82IhIMeCe/wepUfgLbQALKI1HOrjZRtpvc5Slgky0=;
        b=bFlbjfmb9TS5Bh7wzVOKN7F5DJLPCFLFogJGZxaKtdKd1Ziya2kyTJPTbyubX38VBs
         fw0+uqzF00f5x17/bekXGu0eJ03gaPZp/V6bBetukc9b0wHzYqPPXUYIxSnw1swo32+Z
         A0GxhfWn64wuwZl6D5CHBSFYb0JfSEufZZnKWpK4nkl1/1CDdN8/cZM+b7bnlG2De1RN
         DpbBI/KPRDqTg68OpuHHzTzVojJRtbICXQCaVymAII4BQkIyGXEEdVjb2Xh8Cg75xIfJ
         G8k/TyIEVs4J2fimnK8cjGS5J+iMuFGf+paUD1F02mnUett/Mh3i6NwkipYAqYUv0lUq
         7tsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cp82IhIMeCe/wepUfgLbQALKI1HOrjZRtpvc5Slgky0=;
        b=icgkMbNF5ldLDlEbH4jMOrIE81/Vcb0xgUeK6fKxWtGp8bCDgA9v/bgwtzF+VGofDR
         LXMf9e7bgFQKAGsPk4CjA4Q3sktNcM51eiKVMHLuirk9FiRfKAD5Z0YacChV9EgZR1EO
         J1i1VanmJI9WVC2jC4OxlOa2SVICRgaTtIGe3aZrJvVt66t2rKh4YmRcG7GUvNQhyQzF
         ZgD6wVJsevksqgj78xNt3AGqj4HO8dsUmhixmBdaJgBAjvJAx8P4lsRBdx4QLRcXePFA
         NHbMP6+cEcF8yxnAyKfKJ4kg/QvJU/26/pl7WKBWNcriXX4vZuGhV4ZSEIp0VCjStaVe
         Ij2w==
X-Gm-Message-State: AOAM5314qAdBAiEaNt1VLS1LPdhnKpoJsw/u0Ngq0YXpyAmZ/VNFQWSL
	RQWN8DanBRa3w2OxZotxYNAYgDn7l7qA5zZWkrg=
X-Google-Smtp-Source: ABdhPJy59LIE6BseI9QN5j5RFTHwhZYGu+9WjIqeYZhacdkr2dayRbC4MMrTpGlAntEnojNPQEL7KXIHqe3wc8zTrFU=
X-Received: by 2002:a67:1005:: with SMTP id 5mr130164vsq.51.1623864290720;
 Wed, 16 Jun 2021 10:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <16874B1938B81CC8.31512@lists.yoctoproject.org> <0088e07248160343a9b7a01dd29d278d@rogue-research.com>
In-Reply-To: <0088e07248160343a9b7a01dd29d278d@rogue-research.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 16 Jun 2021 19:24:39 +0200
Message-ID: <CANNYZj-GGpd2Kk0XkoGOJP22RMVkhT=H84XC1QnVrPsjDHVixA@mail.gmail.com>
Subject: Re: [yocto] [meta-intel]: support for NUC11
To: simon <simon@rogue-research.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000036406a05c4e55e20"

--00000000000036406a05c4e55e20
Content-Type: text/plain; charset="UTF-8"

On Wed, 16 Jun 2021 at 16:58, simon <simon@rogue-research.com> wrote:

> - There's a warning about not finding the IRIS driver:
> MESA_LOADER: failed to open iris: /usr/lib/dri/iris_dri.so: cannot open
> shared object file: No such file or directory
> failed to load driver: iris
>
> But from what I was able to understand, I was expecting it would be
> available with mesa 21.0.3 since I've seen some commit about fixing
> issue with it in the change logs.
>
> I've tried to force the driver to both i965 and i915 but I either got a
> warning that this GEN cannot use it or still got the same fps.
> Am I right to assume that it goes to a default driver that uses the CPU
> instead of the GPU?


Hello Simon,

I honestly don't know how Intel folks have overlooked this, but mesa in
yocto not only does not enable iris, the mesa recipe does not even have an
option to enable it.

However, it should be pretty easy to add. Please take a look at
poky/meta/recipes-graphics/mesa/mesa.inc, specificially any lines that
mention GALLIUMDRIVERS and matching PACKAGECONFIG,
and you should be able to add iris there, and rebuild your image. Then you
can submit your first patch to yocto via oe-core mailing list ;)

Alex

--00000000000036406a05c4e55e20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 16 Jun 2021 at 16:58, simon &lt;<a href=3D"mailto:simon@rogu=
e-research.com">simon@rogue-research.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
- There&#39;s a warning about not finding the IRIS driver:<br>
MESA_LOADER: failed to open iris: /usr/lib/dri/iris_dri.so: cannot open <br=
>
shared object file: No such file or directory<br>
failed to load driver: iris<br>
<br>
But from what I was able to understand, I was expecting it would be <br>
available with mesa 21.0.3 since I&#39;ve seen some commit about fixing <br=
>
issue with it in the change logs.<br>
<br>
I&#39;ve tried to force the driver to both i965 and i915 but I either got a=
 <br>
warning that this GEN cannot use it or still got the same fps.<br>
Am I right to assume that it goes to a default driver that uses the CPU <br=
>
instead of the GPU?</blockquote></div><br><div class=3D"gmail_quote">Hello =
Simon,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"=
>I honestly don&#39;t know how Intel folks have overlooked this, but mesa i=
n yocto not only does not enable iris, the mesa recipe does not even have a=
n option to enable it.</div><div class=3D"gmail_quote"><br></div><div class=
=3D"gmail_quote">However, it should be pretty easy to add. Please take a lo=
ok at poky/meta/recipes-graphics/mesa/mesa.inc, specificially any lines tha=
t mention GALLIUMDRIVERS and matching PACKAGECONFIG,</div><div class=3D"gma=
il_quote">and you should be able to add iris there, and rebuild your image.=
 Then you can submit your first patch to yocto via oe-core mailing list ;)<=
/div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<b=
r></div></div>

--00000000000036406a05c4e55e20--
