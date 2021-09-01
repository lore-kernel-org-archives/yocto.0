Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.385.1630517382760918408
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Sep 2021 10:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jA4cz+qw;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id e18so237231qvo.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Sep 2021 10:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zhhYjOtYd8J0TBQrRnMjok+wT29yOhM+JAdQ6R/A0PQ=;
        b=jA4cz+qwByz/IzAqexagLMbcZgS2X4ue74kLWYuofLwqLXC50ptkOFxr9LEsN+emeK
         lLe8H0BU8ogMRdQQjluAUuj8kFs7II6vhnIDv0EpEd0lTGC1bVpO8MRxY8g/N6ZaRbz7
         aaFLbTe2kw8RVzo0dDobWFD98SE1DWN3qkKrxOEIV2wW4mriGVVS7pJrcogrJjYCGhG0
         vu9ChByOwkThuhoasO8oW3XOmYij3tl+8nyp3tVOHY+av+u5bYm9ggBtfQghed8Kq6Ae
         x0GaYLyppztO4NzjIcZmQFHvJc6cRKToRTqrNttPefKn7nBZPU22VyaH8BJ5KeKcZyzN
         5nbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zhhYjOtYd8J0TBQrRnMjok+wT29yOhM+JAdQ6R/A0PQ=;
        b=O24MVKmLgezvXTIXgnbmZoxcvBVsDmhUHjGhY4tYglUhTKALzbDvArLNU0eQTSXnUZ
         7K7DLzhn2VBUJgyOuHc5LPNgl7V8d4lj2ZwEOvZmJG9OG1V4Y6/nsebsdBfinLM81whc
         T98DqtzpXGFYCi0K8vOLH13poB+WbuFgYD7mHGOpNbG6c+vvPsRW+WjSXGY3nubVRAAf
         Wa99EPi6rGGurWIDm2Zb0hj3CszLcmEvaUMIeNAmv2Ki7tmCR1LXqyJYgivMwIqAYozt
         fSvyX8udeSJy5tLIDnMVst3yqC5T9mrXweZLoqhwtNxcTdX43ueQdMlJVHFHi8XM8BFG
         hVDQ==
X-Gm-Message-State: AOAM530v9wZ29NAhWiKXhVAgAAwLlyC1nfccCF1B6TPmXnmQY0I34DLa
	0LFhcERvD/vCK31xVdU+X8ktgoH0zgyOHTXwTCc=
X-Google-Smtp-Source: ABdhPJyePCoMzalG2pkp0mDo89LVe1UEdOMo4DjjqhiBBdoQtCulvPZz+4oz0iVlcuWvf4WTu/7aqC4yaTbtky4Kejg=
X-Received: by 2002:a0c:e883:: with SMTP id b3mr889135qvo.16.1630517381711;
 Wed, 01 Sep 2021 10:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <FaAm.1629388957926929267.SWXt@lists.yoctoproject.org>
In-Reply-To: <FaAm.1629388957926929267.SWXt@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 1 Sep 2021 10:29:15 -0700
Message-ID: <CAMKF1spLZiVfNJv42rqbR1fDRfDd8CVX4ZtSe+Kmt9fdWWtB7w@mail.gmail.com>
Subject: Re: [yocto] Issue baking a new layer for a custom kernel #kernel
To: nagesh shamnur <nagesh.shamnur@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ensure that you are using same release branches for all layer repos
generally RDEPENDS and RRECOMMENDS should be replaced with
RDEPENDS_<pkgname> etc.

On Wed, Sep 1, 2021 at 7:22 AM nagesh shamnur <nagesh.shamnur@gmail.com> wr=
ote:
>
> Hi Group,
>    I am trying to add a new layer for a custom RTOS which supports RISCV3=
2 architecture. When i run bitbake i bumped into following error:
> "
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: QA=
 Issue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembed=
ded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Var=
iable RDEPENDS is set as not being package specific, please fix this. [pkgv=
archeck]
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: QA=
 Issue: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembed=
ded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Var=
iable RRECOMMENDS is set as not being package specific, please fix this. [p=
kgvarcheck]
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-zopeinterface_4.7.1.bb: Fa=
tal QA errors found, failing task.
> ERROR: Failed to parse recipe: /home/gitee-ohos/ohos/AllScenariosOS/sourc=
es/poky/../meta-openembedded/meta-python/recipes-devtools/python/python3-zo=
peinterface_4.7.1.bb
> WARNING: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openem=
bedded/meta-python/recipes-devtools/python/python3-yappi_1.0.bb: Cooker rec=
eived SIGTERM, shutting down...
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA Issu=
e: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/m=
eta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable RDEP=
ENDS is set as not being package specific, please fix this. [pkgvarcheck]
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: QA Issu=
e: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembedded/m=
eta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Variable RREC=
OMMENDS is set as not being package specific, please fix this. [pkgvarcheck=
]
> ERROR: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openembe=
dded/meta-python/recipes-devtools/python/python3-werkzeug_1.0.0.bb: Fatal Q=
A errors found, failing task.
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: /home/gitee-ohos/ohos/AllScenariosOS/sources/poky/../meta-openem=
bedded/meta-python/recipes-devtools/python/python3-zipp_0.6.0.bb: Cooker re=
ceived SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
> WARNING: Cooker received SIGTERM, shutting down...
>
> Summary: There were 12 WARNING messages shown.
> Summary: There were 7 ERROR messages shown, returning a non-zero exit cod=
e.
> "
>
> Looking for the exact line which might have created a problem, found out =
that the issue is happening in the following line
> "PACKAGES =3D. "${PN}-test " from the file ./meta-openembedded/meta-pytho=
n/recipes-devtools/python/python3-zopeinterface_4.7.1.bb.
>
> i have tried the following options, but none of them have helped in solvi=
ng the issue.
> 1) I suspected that missing python3native might have resulted in the prob=
lem and included "inherit python3native" in my recipe file,
> 2) Also checked for presence of RDEPENDS in my recipe file as below: "LAY=
ERDEPENDS_xxx =3D"core meta-python"
>
> Please suggest a way out of this issue.
>
> Thanks!
>
>
>=20
>
