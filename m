Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6038.1601502844833339006
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 14:54:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2hKR2nS;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B17A138C1292
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2020 14:54:04 -0700 (PDT)
Received: by mail-qv1-f54.google.com with SMTP id j3so1780340qvi.7
        for <yocto@yoctoproject.org>; Wed, 30 Sep 2020 14:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BN1cQ7n+V7mvxh914mWZM8t3yGl9ql1pfq3oX+zeVM0=;
        b=u2hKR2nSYu0DxbartnFFDmUu8ZIeE4b3u/wMnMlYqW3LmlRWpqQVN9ysks0OXh4iyG
         4OKzea8nzVpbg5AF9dMZSkRcE06ubHwoqGFpnUM13SKy93M+lqFEaqQDl/ouAYQpG8BJ
         NWQ64kNM0XG38DDY3v1NZ0NbfhUlvrmfaJzULzqs85obYdPPqCA8dXtCT/cgDnKsF73t
         qmoV0rxRXJQwVr/3B3czG5PqT9xGuHWr7kabXD5hzjOQiPSbVeKLfWo+xCERDgot+L4y
         szB4GRolEYhdkTSjH1FuzB5UlRYSU2jMBQiEoZVBvEH5Bhd35kIN7KjB491D7kmekcQa
         CxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BN1cQ7n+V7mvxh914mWZM8t3yGl9ql1pfq3oX+zeVM0=;
        b=bKqXuvPH6A7X61ZwKD0+HrCUyav3PJ/kkp3jdn/yXr5lUt6ZRoctR+QeV/mw0XLv/h
         8YeyZrbyLd2bZw/OhKX3zzpEZqSafQw5oOG3ncd38ThVbav+g/GXOXBPqkDLpCJ1PpzJ
         ZgaNEuccsJ7h7ojAP3gHw/LWHkuL341VDuQFNPQa2qX/1e7tlObUIqp5BRFJUWwzCidj
         tEYGKuJR7eqjtBy4NbwlZT8ebhEWfl5fyJryG+gG2xSCCiNS1PE5X252aBkVKzCg0RY6
         ZuExWx8J/jDbQVcwkQ1C07RJmDZbXtzTKIzaH5Sz5rbAK0oFxBQzZz2wbEja8wRlzvAA
         KB6Q==
X-Gm-Message-State: AOAM531MEiZmn1Jg6OLAZF5mUatZOhViLyQVUkOf4I7rXFFIrFnVI4Cz
	1l0EB9ZTogy6CQ8dqfaa3hBBnvd4MjWIUeIFspE=
X-Google-Smtp-Source: ABdhPJx9NxmIyjHFZp5+3Syu3a0ffAGiUL8z+r4TXKfqcszoMdLSQfurVc+9XQJD3idF0ymNGit5FjAHuA7eyO5j0Pg=
X-Received: by 2002:a0c:8f02:: with SMTP id z2mr4453981qvd.21.1601502843773;
 Wed, 30 Sep 2020 14:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34GQkg9=sqsJONK3JxPF-CRdN+jxEpg3zG+LqewdTCa8A@mail.gmail.com>
In-Reply-To: <CAAfyv34GQkg9=sqsJONK3JxPF-CRdN+jxEpg3zG+LqewdTCa8A@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 30 Sep 2020 14:53:37 -0700
Message-ID: <CAMKF1so4RwFehGNM_pczekY_gj8Lmod=+Y-4=iGTHJcF4Of8-A@mail.gmail.com>
Subject: Re: [yocto] development package in rootfs
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

do bitbake -g <your-image>

that should dump the dependencies in a dotty file.

On Wed, Sep 30, 2020 at 12:42 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm facing some strange issue that after my image rebuild I see in
> do_rootfs log that the -dev package of some go application is
> installed. Which is not what I want and I'm not sure how it get to
> rootfs because I don't have explicitly set -dev package. Any ideas how
> to debug it? I'm using rocko poky release.
>
> Thanks and BR,
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
>
