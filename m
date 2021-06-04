Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3695.1622776991950219558
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 20:23:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdOUcx24;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D60C738C06CD
	for <yocto@yoctoproject.org>; Fri,  4 Jun 2021 03:23:10 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id g8so12336778ejx.1
        for <yocto@yoctoproject.org>; Thu, 03 Jun 2021 20:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p2alsIlesLdIpT/VADiTJ7smwczRcp0NVoCodkd68Us=;
        b=kdOUcx24552OmfwOvyikDlNJ2VPKPzKx9BVxxIhG9D8ftA3R03FPSUyaNbrU98hicC
         rv9CjzcaYP7/5w9lBdG3W/HmGai0/GpXh+u7EoQ+hLnfE52KJrgPmaD0t+NqMgBiO8Ex
         GBk/AXX62WvGLdi3VZDeO9PswgogG9fZVmP0eDlDhYjFL3mP8JD3D5UJlP46vKzKmAM6
         Xm84OOfA9XzuDm04rcxa+rqb6O7R5USXYysh9PSkRpWGeWOAGUnHW4lcKueNJOuWAu/h
         znrF4DLIAEgcpBjp8E8Ozx/b9jYNbsbqM7iuMO/4bef7Q0yj7tFxARr8bNhP2xwF7wDf
         DyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p2alsIlesLdIpT/VADiTJ7smwczRcp0NVoCodkd68Us=;
        b=IiZfV64w4MAqVQhJYs96YPrWnee66ONtfxZK7qHJLPFFXUrq3TA0xA/1cztJZTBJkU
         1YD6WJBDAjuwfluTBkZ6HL/7VkLIVwgrwlmzWbRsL5DIobj3KQkYbaB9Xdj4lu7B+n/4
         rMm3UwYAQujULMRWLDc2sIvWF8yut904ddN6cX8SVcKzj6ACaPl6rxIOq9vJxVO+gldc
         YinHHhxLj802HwqjvF7g7V4LRUVbHoOrtZugfiVTTNOsmprGS51zE8KIrbSeOKbQ/jql
         KtUYlA/IxhjiSrQs50p2VzAmoMXfjTY0Fblvx+YdGZ4ZH/LaDc4Im3K1CnmMUIB6c6Fu
         AZDA==
X-Gm-Message-State: AOAM533siHirsX1MRpeUPCe+/QCENSsOms8tVYWtYC+i1qtNMTVZUFSy
	Tkez7O8lY9jkdi2jLfAYOx60XIxNK00y3Ejmqa4tw0SNceMciQ==
X-Google-Smtp-Source: ABdhPJymiFVLcywjVdQLIUWZ3lytjN9ecTYcdG4n9zRog47y5jZwE5IsjZDOloza+6Ou5ihoPHrq2NwciJt7XzgTmWg=
X-Received: by 2002:a17:906:8056:: with SMTP id x22mr2088116ejw.298.1622776989373;
 Thu, 03 Jun 2021 20:23:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210604030619.35679-1-kai.kang@windriver.com>
In-Reply-To: <20210604030619.35679-1-kai.kang@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 3 Jun 2021 23:22:58 -0400
Message-ID: <CADkTA4MrxoynTeBfnXsyH+YSX+c2MDo9PtdcgYDJqDS1cQ2u=g@mail.gmail.com>
Subject: Re: [meta-realtime][PATCH] layer.conf: set LAYERSERIES_COMPAT with honister
To: Kang Kai <kai.kang@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 3, 2021 at 11:06 PM <kai.kang@windriver.com> wrote:
>
> From: Kai Kang <kai.kang@windriver.com>
>
> Replace hardknott with honister in layer.conf which aligns with
> oe-core.
>

I had added this back in April, but apparently didn't push the change.

I also noticed that I've been updating the wrong branch with compatibility.

That should all be fixed now.

Bruce

> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 007f578..8ae67ba 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -15,6 +15,6 @@ BBFILE_PRIORITY_realtime = "5"
>  # This should only be incremented on significant changes that will
>  # cause compatibility issues with other layers
>  LAYERVERSION_realtime = "1"
> -LAYERSERIES_COMPAT_realtime = "hardknott"
> +LAYERSERIES_COMPAT_realtime = "honister"
>  LAYERDEPENDS_realtime = "core openembedded-layer"
>  LAYERRECOMMENDS_realtime = "meta-realtime-dl (= 3.2)"
> --
> 2.17.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
