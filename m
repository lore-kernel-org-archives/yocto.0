Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web09.9018.1604913310834696418
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 01:15:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=V05XPJ6p;
 spf=pass (domain: burtonini.com, ip: 209.85.208.170, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f170.google.com with SMTP id y16so3322943ljh.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 01:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BVgIpJyC4Dc1v1T8ySZdIJAy3c5vcM9+eWoYV7E7Z4o=;
        b=V05XPJ6pWEet99OKm3BiwjWOZLI/hJey7TJZKcOEMBlgl30/oivLrvV3QFtOQegeBD
         vzsCQw41U2HYthUfj1uQk32c8ITmH7LTOyUr/cQgqgp5bLvMdg91d6eyzN4NuIM/gBfF
         hr+PaGkKLRE5GNHa9El9ydH7SczeBJkDy4lBWnw2fLl6FTy909b/wbOa+DfC/dnVh67T
         ExA3BV9VM2st2/8MvwqZjDlzXKbuSppUHbvKsWASxoRyxV92M30j9VYzZIRbAas7V8L/
         NodQP7NdG2yorB6QTmC9/YwH7vbSnONo2rk2DzyFUwQizhCAOpN33Nr9L4tpElnL7jzX
         K/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BVgIpJyC4Dc1v1T8ySZdIJAy3c5vcM9+eWoYV7E7Z4o=;
        b=TjlmCRjWgAkmaQhJkzxWzvNc0Oh743EaypPrSZxy52MqrdZ4M5skP84/rsiE9gD1PY
         BBFn4I1UBaBalsG3ROTvOAxIP0VCDuxRCScYhNb56POGsdw3RcPELUvyCZZegk88x64D
         p3Jw+gbdZm5aeDNE1w4ikCbCG/sxo014lt+P057N0WtaOYuKuGPnjhEYSuictzq7RBdm
         8LF7JkEYuJRv5salTHGCrjr1mz5H2HWvmWvkEKieN5nS3DNOcf7M+sbqriFGwg1BXb6t
         dEvjc5mTlocAfHeoki5dBZ0H3K5pg0SDAZQvX5F5vhxsKhzkUmPvLI87kZKCtpd5aCHy
         WTZg==
X-Gm-Message-State: AOAM533e2W7Y9YOHw7ph7ujcNRt0gMWEb+ceOBWHEnfj4TKrqGBiG8gL
	gJML1SCR341P/UbSVzh2D8kGRSvrS0ASNvlp18Gk/g==
X-Google-Smtp-Source: ABdhPJxebRWWadv+6NCAPaKNzCfdXMY7fgS0sS/+W3qLZi1DtsG/UyxWRfKY7VE9Tp0RGjuHLH9x/gGiMkABUAFpKiA=
X-Received: by 2002:a2e:83d0:: with SMTP id s16mr6077333ljh.22.1604913308942;
 Mon, 09 Nov 2020 01:15:08 -0800 (PST)
MIME-Version: 1.0
References: <CAAnfSTu8N11SfDGCpPN=hsQNL-ahG6WMf62EK_-56iqMzzKVng@mail.gmail.com>
 <2541.1604655255009585774@lists.yoctoproject.org>
In-Reply-To: <2541.1604655255009585774@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 9 Nov 2020 09:14:57 +0000
Message-ID: <CAAnfSTuEHgJGJ2c2pOg4Lp+QTnQHHLDAEGkwBL9JC-4ekkm44Q@mail.gmail.com>
Subject: Re: [yocto] Why python3 is build native in yocto ??? #python
To: william.jacob@sama.com.sg
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

DEPEND on python3 and python3-native then.

Ross

On Fri, 6 Nov 2020 at 09:34, <william.jacob@sama.com.sg> wrote:
>
> I am sorry , I will explain in detail.
>
> so what I required is that my python3 binary should be present in both r=
ecipe-sysroot and recipe-sysroot-native both as I need to build some python=
 packages using python present in the recipe-sysroot directory.Currently my=
 python binary is present only in recipe-sysroot-native directory.
>
>
>
> If you want more details please let me know
>
>
>=20
>
