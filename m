Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web10.15652.1600233103000351906
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 22:11:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TwhW2Gj8;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id t138so7019099qka.0
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 22:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hsv/9CJ2/zU1RWT3xZPvhX5m3HzlqumHon6V3P/NoTs=;
        b=TwhW2Gj8/S3wbXO+QRIf4k6JEkuvQD7x2QH/0gY1JpErz0/g/2+9lmOwE1dKXzXK93
         OOQG+oXEuKbnvUKbtk0SVAge3w5CUaf6YprhwttWOXTQG6w154X+L3Zb2b/hPCjZv90N
         8pRJ38NuGUnz0FQ7QI4YfmjoG7W2oIo1w9JjpWfBKVaKPQhlL7b05kxefQRfm/NOa7CK
         ZLRVAxba7vNM63jad3/mrhtiunovUi+8khat9bF2WmMEpEhNhbmGILXusjmFwdOA2xTo
         bW6M2fccBRBLQrMGPnGpJs6XIfiFMulPLU/f5xqeKfqfX/c18xhef1cTD24dol3IFDi/
         qkLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hsv/9CJ2/zU1RWT3xZPvhX5m3HzlqumHon6V3P/NoTs=;
        b=PmFyYbUlg7yF/9YTmUUJevsrYgTIOzCL9t85HHyd3rn9fnesWfyvyVznWHFbSUvThl
         MWqoezvGm/fx4voxS/LJtxi+Vv5hSwL7EbIpCkP6b8Kg5hX42LkVgMBRNUWGwBeACN32
         2prnIODCDQmrPwsMvPb2SX3+MrfiWtYLaDQ46vrlIAqSqR2s7qbrc4kOwxHlU9ww/Njt
         Jc7HMc4WRynp5RPt6OOtpDqBt+QPigMw+NEMp9Fe7yagHGO7el+lho2i2el+xVixHsXp
         SNPct4Z2JPxTNDwhqxVovm6Nhp7AWEW6MpEbUNx9CKUtoQ1lVSyOn0kPhtGgUZKhG6yj
         TvAg==
X-Gm-Message-State: AOAM5308sfT132YCG12AAwp3ctj1TBFDjl7dRbfifcCENRNgG+VlCaw3
	y7aOhFpai46iW3s/NQ0NJHWluqen/V9ppEtQfIc=
X-Google-Smtp-Source: ABdhPJycaLmrTpbsENNHlhsjXt9+3bM+UGyUwIBU+Pm1jcjGEGEz1ghOjtV/HnwneaP4dCjtzB19u2rZ8NlCnhVQhq8=
X-Received: by 2002:a37:c408:: with SMTP id d8mr20343614qki.71.1600233102128;
 Tue, 15 Sep 2020 22:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200916031205.9456-1-akuster808@gmail.com> <20200916031205.9456-2-akuster808@gmail.com>
In-Reply-To: <20200916031205.9456-2-akuster808@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 15 Sep 2020 22:11:16 -0700
Message-ID: <CAMKF1sr-T58eyLZN3bHdojsDgVD-kmHgS2JDusHrjvjs3qLfsA@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 2/2] apparmor: exclude mips, not supported
To: akuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

title says mips but it actually is for mips64 only it seems.

On Tue, Sep 15, 2020 at 8:12 PM akuster <akuster808@gmail.com> wrote:
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-mac/AppArmor/apparmor_2.13.4.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> index 552cac7..dcdc1f7 100644
> --- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
> +++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
> @@ -30,6 +30,8 @@ S = "${WORKDIR}/git"
>
>  PARALLEL_MAKE = ""
>
> +COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
> +
>  inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd features_check
>  REQUIRED_DISTRO_FEATURES = "apparmor"
>
> --
> 2.17.1
>
>
> 
>
