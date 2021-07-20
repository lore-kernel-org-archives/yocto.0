Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.5279.1626771786511828353
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 02:03:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=BzF3KSir;
 spf=pass (domain: burtonini.com, ip: 209.85.221.53, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f53.google.com with SMTP id f17so25172305wrt.6
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 02:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6M4kuwHWmmcNByq5U7s+u2kv91goORraUKLLKwdDu+I=;
        b=BzF3KSirGpvQQhTJ+4UtqfwqNxubDRgMg7EATqeOggYK+VaLxwMs9GFh0nFUCBwnG1
         lffWpbSCUItz3B6VXjkBMwqAAVB+GLpCqdy7HMkZxeT0b0J12I3W3yncJruWKQZVZJyZ
         xSHzZF53/K0UMaWbnyPJ/tVCXgGyqDbdK9b9Dre//yF2xJ5wSlPYF0V/EkyEH4SxWwyr
         C2D3Qt8X6P1vlX4oROYGBqQGdGAdz6qrEoLxzs+bmFPxYNRRnfGGjRAlOtm2+PWV0S+x
         cWrI1mau0Po3JwV9iEXtzIywwO5apsF9MHfV4ryqQ4QP1r+mn+0n52Z79EjeYdgo5HMz
         t/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6M4kuwHWmmcNByq5U7s+u2kv91goORraUKLLKwdDu+I=;
        b=oHqWJGXqozMee5vOkCdOm/bin/AE4V8asSxfZJmJYaSATT1XJw6NFnZXR/1DlIJj8f
         uxHz2P/gKa9QPBduQrBlGqYU7EDWAd2ni9Y9wDwcpKXBPwEvKiz17mP4Qv+Omp7UZ5Rf
         GLF9Ku6glKRRlWn+OU+BV1me9Ml/byyHGjVCjm6IqQ2DCR95jDGeE8i3SuyMQquf9ek2
         6o97dBYvjwd9obZpHZQeYEUBX1s31KtExglLJpkyv9LcaYiO8Psh566xZ9ADxg/sZW9C
         fmSucerjMipqbbHkTxzapGxaoTajCWa2kB4C1naNLlVbVM7DCz1bbW0v9XOyNsCteY/K
         i3Ug==
X-Gm-Message-State: AOAM530FjPwPQtM2dr124519TLEqqguZG603b3SDpJQtOIcrpchfXANg
	75U4V7hSpQkGk5G5dAtt8XF4QgO7aRkCort4MuAEnQ==
X-Google-Smtp-Source: ABdhPJzYfZY072X+xZRY66krIZDbCJWv+EuSgPAB7pCJavvgs3qh7s8+8oj+7ifUfFz37FSHZjneF5Fe4idlynFGqac=
X-Received: by 2002:a5d:420b:: with SMTP id n11mr34665659wrq.395.1626771784963;
 Tue, 20 Jul 2021 02:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.1693372A3FC7F77B.32641@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1693372A3FC7F77B.32641@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 20 Jul 2021 10:02:54 +0100
Message-ID: <CAAnfSTtAeE9YN8RrM0QyoYqtQaARLpUYmSAzj_+pe8YpU02rGw@mail.gmail.com>
Subject: Re: [yocto] #yocto
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Not deleting the source tree is the default behaviour.  It sounds like
you've inherited rm_work, so if you want to not delete build trees
after completion then add the recipe name to RM_WORK_EXCLUDE.

Ross

On Mon, 19 Jul 2021 at 15:22, Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> What flag do I set in order to keep the source code for a recipe being built within the build tree after compilation  ?
>
>
>
> Thanks,
>
> Steve
>
>
> 
>
