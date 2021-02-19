Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.10971.1613752269835352559
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Feb 2021 08:31:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=esCBAzmO;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id 204so1103399qke.11
        for <yocto@lists.yoctoproject.org>; Fri, 19 Feb 2021 08:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Om34k/BebpkJXvxSXIJuxmKyisk09FkuW89Gp3m9FDQ=;
        b=esCBAzmOPT514cF8mAUxY0T/uskvHW7gv9rPKVw3MQ4xaQKFtRhMei1+1bFZqLgf1s
         qRwiLabiIvaUO5OXwlUnWVXj4HlGtyy4yOXl0GefzsxXe+WR3WrAvxOfOTLu5zm8bROX
         EAhaoCgYDfS18pYerd0+SIMAjDWcCgY+N/4qXiU3CRogKdqRp2iw+JivPKZeqT1elgUz
         bHpbV/5bo4e3b7jJTC1iCnNuilqgytLG3hoiS+hm93UsUr54OPgGbTTURVpDGseNPPri
         NNRSbF84yaEY4hplzGWi+abG3tKUD3JQPNlQmV/Lx7E0MJqYHkyfmY0J0xtqasLTt9CE
         CCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Om34k/BebpkJXvxSXIJuxmKyisk09FkuW89Gp3m9FDQ=;
        b=EQyCerVdd5vDi0kdlnCmFEiEVqX7G0KkvnNdmacugd7Tk+9ROYY8uCfWQ8PxOtjTME
         ln0v3FYqOZK+Qm8HHFHNOdkVpqSZswVkmLeyC5bSF/8EFYzvsSw4B0tx1GEn1Eb0m9Z/
         IuptXNIiTQBncdLq6IAjoW9Oh9i9QoJI18J+qxvVc5iHqwgLLUuP4tn8+WOPzXp/dTH+
         9KxuPwEMh68FD33C57Fzq1YnIUCZqTTXcQGFDXD+G5xaMUBO0+r3j4VGE7Y/am1iIL/g
         aQBLCm1/qeeTsCJ6dgSnj8Sf7Gbd5lIXVkYJ+P4nMPMTx+sqDxM+Lub/Ab1nQyQOZ8wr
         VSSg==
X-Gm-Message-State: AOAM530CMlX/rAEn79f+edEJODAnXkEIMHQ4Plck+Xxc01zTRYQ2B6sy
	MGSl6XvZMDcKA807OeRYBU4WkbpmR9LtB+0l//Q=
X-Google-Smtp-Source: ABdhPJxILAsyAQL4vB7njsaGsxXysw17miQJ33/SeTQw/+ttGCjPHFQMU0Fsfy3P16inKTgQP4FkIVAbla6I3cYMWeM=
X-Received: by 2002:a05:620a:b95:: with SMTP id k21mr9981235qkh.125.1613752268854;
 Fri, 19 Feb 2021 08:31:08 -0800 (PST)
MIME-Version: 1.0
References: <CB9H.1613732031294621331.QmUO@lists.yoctoproject.org>
In-Reply-To: <CB9H.1613732031294621331.QmUO@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 19 Feb 2021 08:30:42 -0800
Message-ID: <CAMKF1sqhKxVPgtvDQs8ViNbqJH3WFj=SoxHLtF3bAHsftxbu6Q@mail.gmail.com>
Subject: Re: [yocto] Run aarch64 binaries using bitbake recipe
To: william.jacob@sama.com.sg
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

use MACHINE="qemuarm64" or some such machine which is based on arm64

On Fri, Feb 19, 2021 at 2:54 AM William Jacob via
lists.yoctoproject.org
<william.jacob=sama.com.sg@lists.yoctoproject.org> wrote:
>
> Hi, I have a yocto build system which currently cross compiles for armv7 (32bit) .
>
> I have a requirement of building 64 bit software .How do I modify my yocto build such that I am able to run create binaries aarch64
>
>
>
> Thanks
>
> William
>
>
> 
>
