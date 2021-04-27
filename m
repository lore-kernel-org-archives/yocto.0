Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.10486.1619538925565117995
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 08:55:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mGCrJmqy;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: aladyshev22@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id l22so61396461ljc.9
        for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 08:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=EEQLnUFYwG8PxqG65A0rp9pJY0xcnQDv6PlhLcE8v7k=;
        b=mGCrJmqytLpuKph5wCq88yZIjNrZwmdxcyFXjyX1lKfrZiyTK73Cjkps+QQFJhe+O9
         3lvaEj2485QVY3fELnjxGTJlttFtQSKQiTmbYS8+y42V9c4mnToxjZJvbNOl9N2TCTWC
         Vb23//4Hc1gTqlSvSWF1W54VllgHlfVkF7iFDxlr+aECHs3BZVvO/N+uEYCylEnZhHZt
         Z0a5P3ZCr1btodrXr8AXDYrQXjSdXqt95rJyGKZLsyevroXq1Sau5JI7inbndGnMg8T6
         OMNeQr9dix/+HTXGPubZs7892xHn5tf4HtksCTEk+f5dz5aXMwydDQkAT1sr7Q0FK/Ix
         fzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=EEQLnUFYwG8PxqG65A0rp9pJY0xcnQDv6PlhLcE8v7k=;
        b=jVpxMLxYK4qN59c2Scj1bgaCx64zobbhwYDvHpGFp4MQ15Vfew2ll6VIi1LHXlYrgN
         u9jVXQ6BIPQExngVOsI2gDx6IDd4yXAtHyEF5otBUxkWmeE9QJTidUQ6PXKZxp4n1V54
         RmHYaUimqNfZHZ8ATWfBf5bgR3RmppNA94SaOCl3bMSbS1aDv35v9UeQ3jlqO9qgfBb1
         N++0/eAKwdYbR4SPPdfRDdP38zLl2i1RV6r3wxgrTHxcHDe2WWa8Bhf4n/dwjwvOznus
         B3wVBpQlEgRPs4zVPpmNCtMnHs5JdCb4cX2kfzrner71noPErG25QHttyU+CET8wUzkF
         WeIA==
X-Gm-Message-State: AOAM531noPV+4g4p3s6pTb61SJTzTgGnlGh1sLWjRh5AzBMPFF206XOg
	q/tezIbn0RJt/oTj4WyhI9jBNVI1RUaDFYCEKB35BoNu2yF1eg==
X-Google-Smtp-Source: ABdhPJyCb2Dh1ICQkZRcpy6PGadDuKSD/ATNlb1QXjL5ORaHPqFPvG+Q3IVwDhh66vydNh0sAImStOT9cs9AeNTWhyI=
X-Received: by 2002:a05:651c:124b:: with SMTP id h11mr17033960ljh.131.1619538921916;
 Tue, 27 Apr 2021 08:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
 <20210426140851.e2g7okmtyt25rrna@qschulz>
In-Reply-To: <20210426140851.e2g7okmtyt25rrna@qschulz>
From: "Konstantin Aladyshev" <aladyshev22@gmail.com>
Date: Tue, 27 Apr 2021 18:57:20 +0300
Message-ID: <CACSj6VVqDkssoEEXNjMQw7DGzeMgFBObGJQmucT7=PH64=Ppdw@mail.gmail.com>
Subject: Re: [yocto] AppArmor with BusyBox
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I've added `IMAGE_INSTALL += "findutils"` to my `conf/local.conf`
file, and it seems like it was enough. There weren't any build
conflicts.

Should the AppArmor recipe be upgraded in some way to indicate that it
needs a full-featured findutils package instead of a busybox one?

Best regards,
Konstantin Aladyshev

On Mon, Apr 26, 2021 at 5:08 PM Quentin Schulz
<quentin.schulz@streamunlimited.com> wrote:
>
> Hi Konstantin,
>
> On Mon, Apr 26, 2021 at 01:45:30PM +0300, Konstantin Aladyshev wrote:
> > I'm using the OpenBMC system (https://github.com/openbmc/openbmc) and
> > I've tried to enable AppArmor functionality from the 'meta-security'
> > layer.
> >
> > To achieve this I've added these strings to my local.conf file:
> > DISTRO_FEATURES_append = " apparmor"
> > IMAGE_INSTALL += "apparmor"
> >
> > The AppArmor functionality was installed to my image, but
> > unfortunately I've come to this issue:
> >
> > kernel: AppArmor: AppArmor initialized
> > kernel: AppArmor: AppArmor Filesystem Enabled
> > kernel: AppArmor: AppArmor sha1 policy hashing enabled
> > systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT
> > -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT
> > -GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
> > -PCRE2 default-hierarchy=hybrid)
> > systemd[1]: Starting AppArmor initialization...
> > apparmor[113]: Starting AppArmor profiles
> > apparmor[128]: xargs: invalid option -- 'd'
>
> Busybox implementation of xargs does not support specifying a delimiter.
>
> I suggest you to install the full-featured xargs which is provided by
> the findutils recipe.
>
> You probably need to disable xargs Busybox implementation otherwise
> there'll be a conflict (you'll know, Yocto won't create the image).
>
> Cheers,
> Quentin
