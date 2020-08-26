Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9311.1598436595068662193
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 03:09:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibpRnCeb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9636AE0209C; Wed, 26 Aug 2020 03:09:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D675E0205B
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:09:52 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id i129so643545vsi.3
        for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FZDeUzNjgZjPyNuwqH7e1dj/izhV3tTXYs9yICMJD/8=;
        b=ibpRnCebCWzqcgpk9O4DqKyFfRiJFUelKR3rSbPjAn2nQhkEWGNGLL9WC1Q/lCGMpg
         IxycwwsyEeLxFUGctOnqPW8Jn8n2+QeOI8IfVUNtfg5Dr8TwVS8vyzGD68xisEZi3Xe2
         qxduTmdJKGu7/CgjM/o6HtE0fv4YVeKdADLsuSeVTx/ZBSpV92bde2T8doC8Sh3J/+e6
         I6frDSfvpK4qAxZ2xoraDHPFi4sQr3DQSeolcD/4hyj/68FLoPBJlaCM0PULvhos1a6D
         omE6ATLZ39rW3bNX/4NkXx21JY8h5fWzmX9vZYTP1EUWc6NabHN1WGegbrca4dD7IHCX
         eGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FZDeUzNjgZjPyNuwqH7e1dj/izhV3tTXYs9yICMJD/8=;
        b=Co1moxJIo8D9TYLbKfQAVIYLZhbXnv1swSVBNVRxfHdljXv3mPCCR6vWgt9dVY1LKx
         Ryko9NbO+58Arr/nxeZjUQxpAtUUY1FiX4ZgOo3CCjEZejTykgmUtcuF1ma0oQaNYF38
         Nz/vpGyVsQU0F79ASJUf/7pVhBBVUWJJaX/Gx4EvnZ7sqH7H0aMc8vm6vuWhnSpTuxTE
         uVvzBjBQ0tPLz6FgOgJ8VZTnTgO6fNHqPuwklCIDQ8Ch9rmIuRWTj94/YFIRP3wsG3Mr
         obAMIoXfKVnFhPqMt22A/v+F2udST+KxAfnHJJL/yf2bFZUuVo2RM+IdWP+8bwCoBh3Q
         k2nQ==
X-Gm-Message-State: AOAM530Ysm3EO6v+uI3DUgSDhGpKO9FOoxDnEEixy1XbNNJqn/T6Jrhu
	6+jkE7jR50M+K7XDOvcC+vFyyn5/iI9wQlOgJgE=
X-Google-Smtp-Source: ABdhPJwSReZiIjlrbAw05SjoB59f2LLE/11uCNYPJCm6vLmfMWl1NMZ6lJ8EcXXq1gN0yXGjIS+rdDCCoAduTzfQPI4=
X-Received: by 2002:a67:7f46:: with SMTP id a67mr8803211vsd.169.1598436591986;
 Wed, 26 Aug 2020 03:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37Ak_W5My6m22Lv2iLEJBTDKqJU5HK52MON5siHf0NDNA@mail.gmail.com>
In-Reply-To: <CAAfyv37Ak_W5My6m22Lv2iLEJBTDKqJU5HK52MON5siHf0NDNA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 26 Aug 2020 12:09:40 +0200
Message-ID: <CANNYZj9eT1KUxM4EuKK2jX1N2S5FO0bdbw_9h79PUivdjf0fSw@mail.gmail.com>
Subject: Re: [yocto] meson cuda compilation
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000042ea9d05adc5051c"

--00000000000042ea9d05adc5051c
Content-Type: text/plain; charset="UTF-8"

You probably need to adjust meson.cross which is written out by
meson.bbclass.

Alex

On Wed, 26 Aug 2020 at 11:58, Marek Belisko <marek.belisko@gmail.com> wrote:

> Hi,
>
> I'm trying to compile a simple cuda application which is built using
> the meson build system. I have an issue that meson looks for nvcc
> compiler on my host and I don't have installed cuda-nvcc compiler
> (just use cuda-nvcc-native as dependency). Can we somehow force meson
> not to search the local host for compilers?
>
> Thanks and regards,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> 
>

--00000000000042ea9d05adc5051c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You probably need to adjust meson.cross which is writ=
ten out by meson.bbclass.</div><div><br></div><div>Alex<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 26=
 Aug 2020 at 11:58, Marek Belisko &lt;<a href=3D"mailto:marek.belisko@gmail=
.com">marek.belisko@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi,<br>
<br>
I&#39;m trying to compile a simple cuda application which is built using<b=
r>
the meson build system. I have an issue that meson looks for nvcc<br>
compiler on my host and I don&#39;t have installed cuda-nvcc compiler<br>
(just use cuda-nvcc-native as dependency). Can we somehow force meson<br>
not to search the local host for compilers?<br>
<br>
Thanks and regards,<br>
<br>
marek<br>
<br>
-- <br>
as simple and primitive as possible<br>
-------------------------------------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: +421 915 052 184<br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blan=
k">http://open-nandra.com</a><br>
<br>
</blockquote></div>

--00000000000042ea9d05adc5051c--
