Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.10877.1595080363429373421
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jul 2020 06:52:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dJE/Q8Sl;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id l23so3498466qkk.0
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jul 2020 06:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fCkSxCNq0MLsRYnmgEgT5Dpt/2w9/Ujj9YfzfX3UvTs=;
        b=dJE/Q8SleVGjM04SH3NB1uYuX5XPidoBVrFiqocf3z1vSuw8WXtPOprzfUWppFCe73
         Jdi9jYsVGakjuBywlvXLY6A+lrpRLaa6jll0ZyEFB9dwW6xo9jw6vkrFmL9gOQHOp3BC
         NXmkRZM57b7dZfwGqjr7PNGubA9lZJX6cJqAM8Q+RYttctRpD+9i4j3FWCesIFAaLH4h
         AvvSSczmsl1DuACUz6YlfcXD8lKBz8A888P7EEbLxxbaTTtE7hke4TUZOsaCPoYNdM2u
         U0CaryRyLI5162xwbLiPZWIb5jqd/yZkcVXkuv2FluanuT40NqeRk2eOmqt7bMkb8yO0
         NAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fCkSxCNq0MLsRYnmgEgT5Dpt/2w9/Ujj9YfzfX3UvTs=;
        b=BNbe4V7aIqZgztVSje8+YOaJHmcUkrKHxbjHmr4Y3vf4UDE2mv56Yzh70A7DSR3MT/
         QKNXzXKpvGIILJBhXR60VV7z3brnOkJmIzgvXV+/Yb8MgUq2gjVOxEg0kROd+kEVNKxM
         KJAu5GOH2zV1rlsIRI+/6q3XwqMs5Ge3Ak9aPHPkl/gKl2NWvqRQ2fOCYTNGK80TFYh5
         gGy37RsuKpL0d0wCqyWJvnaJlOcuklMVXBU6v39A/8jwbDa4N67bTBpdwhEgiTWTXX9N
         9wIGNN7/Frr4mqLCrB+f60Bmko7dDEgCpx9ktcrC7pzxwf7fjhD+vCzYD9knvb1Ae9BR
         xt4g==
X-Gm-Message-State: AOAM530wP8DKZ90ibN5zLzSB/dP0N8OuypxWsYvdAwO+ZaC4IrkNApVY
	97bhpRia8QHrhDX/3bnaHwj6ywd4KQV3Zcq7oqk=
X-Google-Smtp-Source: ABdhPJyeKlJ8DkDdnOQV/6UqFBe+RdKxGltt5rT3kWWHglM1s8JpNOi64gGyRkOzeH7g1MFxsaGKYHwMTptibsKvvCE=
X-Received: by 2002:a37:46d5:: with SMTP id t204mr2943878qka.479.1595080362444;
 Sat, 18 Jul 2020 06:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJri5bfSpKg5BESA2oCQ5kZH_cbrZ=+E=sT0sNw+-3bQ@mail.gmail.com>
 <27359.1595069595268641163@lists.yoctoproject.org>
In-Reply-To: <27359.1595069595268641163@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 18 Jul 2020 15:52:31 +0200
Message-ID: <CAGAf8LyWDtm7d0WSMQzmmObAU+COahVmC5j7Dn-8LcEuhMo4EQ@mail.gmail.com>
Subject: Re: [yocto] openssh_8.0p1 on zeus - sshd.service not starting [RESOLVED} #yocto
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

> Finally was able to resolve the issue. It seems the sshd.service
> did not line Type=forking.
>
> I changed it to Type=simple and it started working.

Please, could you try with Type=notify ?

Thank you,
Zoran
_______

On Sat, Jul 18, 2020 at 12:53 PM <srijan.nandi@gmail.com> wrote:
>
> Finally was able to resolve the issue. It seems the sshd.service did not line Type=forking.
>
> I changed it to Type=simple and it started working.
>
> So now my sshd.service file looks like this:
>
>
>
> [Unit]
>
> Description=OpenSSH server daemon
>
> Documentation=man:sshd(8) man:sshd_config(5)
>
> After=network.target sshdkeygen.service
>
> Wants=sshdkeygen.service
>
>
>
> [Service]
>
> Type=simple
>
> PIDFile=/run/sshd.pid
>
> EnvironmentFile=-@SYSCONFDIR@/default/sshd
>
> ExecStart=@SBINDIR@/sshd -D $OPTIONS
>
> ExecReload=@BASE_BINDIR@/kill -HUP $MAINPID
>
> PermissionsStartOnly=true
>
> ExecStartPre=-/bin/mkdir -p /var/run/sshd
>
> ExecStartPre=/bin/chmod -R 755 /var/run/sshd
>
> KillMode=process
>
> Restart=on-failure
>
> RestartSec=42s
>
>
>
> [Install]
>
> WantedBy=multi-user.target
>
> Thanks,
> -=Srijan Nandi
>
> 
