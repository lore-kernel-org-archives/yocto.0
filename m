Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web12.8669.1601442938501892973
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 22:15:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J3p3ETBL;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id a4so309841qth.0
        for <yocto@lists.yoctoproject.org>; Tue, 29 Sep 2020 22:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jv67hluFyFx15cI2T8zae2YV7vBDYfP1P+YM3w4DJDE=;
        b=J3p3ETBLWlitxWYV/99v4jytc1TO8rvK4WaHEzzJLLK4FsLAg3gBGBrv3RVcym/+6c
         QGH8TxrQVkPEtvJ5cXl4WA3rNxQClnfFBWvWHOQhdCP/od1W6/TKeQX6YfSM/iPsVhVG
         gUPTBGv6etslOZMXlU8lqMky992imoN3tFrcTWwQuOR79FJsioHnU/UOOP8JNE4nhP5i
         Ui9nrO4lCR4Wl/Sgv+TkNrOL31P8YjcV72HYGqX0xxg08te5dW5/sCQVtwLuBIGzLdE7
         IT4Nj4hGojx0GsoeIHPmRP1+zszcmAnzZ2o2hLVdcuCty3Cix8+U4TyMJmUJIHaZYVhd
         ka8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jv67hluFyFx15cI2T8zae2YV7vBDYfP1P+YM3w4DJDE=;
        b=YGPLfZu2QKSC16JLEfELLjmCiRVCSqNxHA/bk684sNYI7eMX5MmNahazrgArIrBqy7
         2dlx6OYP4R6cB6UZTzUdv+pBuFa6Ce8D7FZ8AJB4Jz41wpUvMTESANgq2SAvom8Btay2
         81EE9eIqbqVoq8wbQ5ChLq20/98oTT+ttNL4/AyZEyjL8X+ZLot+MSbGh++/oXgIe+wc
         mqtEERfnD2pVSh+donST/4KCuDRGzqWa9krnfQhTs4ZazlRetY2rSYC315dH1ybQklux
         kZpYDYd6wR/JkU6hzW/bH/+DkeTqy5jDMbiu1FyNTTbBfoWpJWMf0p/tHFj2F/b9fBEa
         eIyA==
X-Gm-Message-State: AOAM533qpzx20+but0+uyFPv9cAPQuXG95DCVmWJdcAQxLF1ILVaAQwE
	dJf7Yra435A4fv0UMm0q6wW+LSGVRnKd6pY6GqQ=
X-Google-Smtp-Source: ABdhPJyQ+L0m81r1dASDIrIAU2OeL3NEIL+uR7/dOIaTfXQKZOqYCW0XrciWcKJ3cDD58sQzS+3qIeWrWajVawIHgCY=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr576828qtb.80.1601442937569;
 Tue, 29 Sep 2020 22:15:37 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16390554C73CDE44.27822@lists.yoctoproject.org> <2629.1601402747635234276@lists.yoctoproject.org>
In-Reply-To: <2629.1601402747635234276@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 29 Sep 2020 22:15:11 -0700
Message-ID: <CAMKF1sq4-=OaYmX2qLakrwCT2Pkt-LFr5-+OJ6orbfdtqvVppQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

what all functionality are you looking for. E.g. there is date utility
and hwclock  utility which can help you manipulate system time. you
could also look into ntpd and/or chrony for Network time setting etc.

On Tue, Sep 29, 2020 at 11:05 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.com@lists.yoctoproject.org> wrote:
>
>
> Currently not using system as our default init system (investigating why but this might not be an option).
>
> Is there any other utility I might use under Yocto to get similar data as that produced by timedatectl ?
>
> Thanks,
> Steve
> 
>
