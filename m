Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.14516.1604681444511968214
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Nov 2020 08:50:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcIrmSfA;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id d1so727580qvl.6
        for <yocto@lists.yoctoproject.org>; Fri, 06 Nov 2020 08:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bN9wySLmg1zAoOeDdzyOO+yXQfOOmM0hbXon4icxj/0=;
        b=jcIrmSfA23k2vU03GFNXVdW72itMsT8nEH1C+gYPeFnih5CWLyXX9iFsE/qE68vE2r
         FBj1TdeKPcP9FUX6+hIYWGZYhBbuxSAJpuZSoWGExOQO8jt2SesEBZOQUhGvB2EtqzLv
         FKfAeN7kJv5nTLVgK2M7WnI5Acm7cyVyRxLmj+TBXgMuyi3XU9dB+PkfkdlmyMZZxOcN
         RVAbYx8wqggAwPskRJNWJNfveH0jSk23iOxOW3I1bvSDHR7t2x/jLQcglysM3lLHb0hu
         LymudV8LjjmiLuePl52AVTdo93BE8ynaW8j0nyQeFkOft9x3YTyOPnQWFn4sJGSbIbmV
         z/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bN9wySLmg1zAoOeDdzyOO+yXQfOOmM0hbXon4icxj/0=;
        b=QsypslBtZldpVNGQUs/dYUng7t48HLuHszCy6swJ54r9l+C85b04GTAwZSkhFlXy4R
         QNpoC0bYLXEcPZC7NKeqIIjYKDjtPIBFNTcHSfIpn+Iw536sSd186XxSKx+ATSv4GLsu
         o395eoWdAKl31dcIlmwqR/iKRSyFm6lge6MyZz1C2TpVT8V6JKwjHn6dTI0QJk261m68
         lBZwOsReGHtV2iul8v2H6PY+shIXLbPGviuJUbBktOAAMJ/Eymq9VK/XZYcYaOmvP30O
         IaT+iFEs2L8mj9Z90CMpPrFzPGhN9ZyoHjWpclEaOx/jpTPhORc4tgOZRABQPPbbOgcB
         ylAw==
X-Gm-Message-State: AOAM533HGj71Amww/zz/KnI/mJTQH29Ktp+YZayeKUWcJwTxwuEoCmpD
	bVAWwqi5tJ1T5EPVb7cmuIYPurRjuEs0vMmiNkM=
X-Google-Smtp-Source: ABdhPJwOH3doB+AvgcneQTqBbfrSavSEA1xAsenQS5VizPJUUWKNPgBp7csFiPXkVfZZN7uRFRfUukeYkX6OVdDGrso=
X-Received: by 2002:a0c:ecc8:: with SMTP id o8mr2342827qvq.19.1604681443509;
 Fri, 06 Nov 2020 08:50:43 -0800 (PST)
MIME-Version: 1.0
References: <BywH.1604657205718354370.pcI9@lists.yoctoproject.org>
In-Reply-To: <BywH.1604657205718354370.pcI9@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 6 Nov 2020 08:50:17 -0800
Message-ID: <CAMKF1sqivB8jJazAOhkpdHnfTMMjAyyEvj1NrPKOFsc6L-P=Xw@mail.gmail.com>
Subject: Re: [yocto] I am compiling scikit-learn python package for arm board but I am facing some errors. #python
To: william.jacob@sama.com.sg
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 6, 2020 at 2:06 AM <william.jacob@sama.com.sg> wrote:
>
> Hi,
> I am compiling scikit-learn python package for arm  board but I am facing below errors
>
> william@william:~/sagitta/build-as371$ bitbake python3-scikit-learn
> Loading cache: 100% |##########################################################################################################################################################| Time: 0:00:01
> Loaded 3665 entries from dependency cache.
> Parsing recipes: 100% |########################################################################################################################################################| Time: 0:00:07
> Parsing of 2414 .bb files complete (2403 cached, 11 parsed). 3605 targets, 374 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'lapack-native' (but virtual:native:/home/william/sagitta/meta/recipes-devtools/python-scipy/python3-scipy_1.5.2.bb DEPENDS on or otherwise requires it). Close matches:
>   tclap-native
>   lua-native
>   atk-native
> ERROR: Required build target 'python3-scikit-learn' has no buildable providers.
> Missing or unbuildable dependency chain was: ['python3-scikit-learn', 'python3-scipy-native', 'lapack-native']
>
>
>
>
> It seems lapack is not compiled native because of it I am facing the issue
>

right, add

BBCLASSEXTEND = "native" in lapack recipe and fix the needed bits to
get it going.

> Thanks
> William Jacob
>
>
> 
>
