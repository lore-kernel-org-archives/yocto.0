Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web12.6813.1619581441502355086
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 20:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mUtq1kAM;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: akuster808@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id b10so3987515iot.4
        for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 20:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=2g2c3YokpuL/rmK0Z9gpzsxYvu3lkzc1nmirssmphT4=;
        b=mUtq1kAMfKKIUVbf54r7OU7iSejwRZOCSD3RwzF83cPTnQfIJi7UyKdouiOMPTBAL8
         hW5cyXIaxBJl9icQtUb9+cqP9a/PHHNkz1quu2Jl0ZKrtub7uvDnH57tz4vCkhzJM50m
         nxLzzz/wXMVqOu+cxQiEZ4GPraPMHlVMDnUMa3BA2je9Xdv2gviC/l/LNln1LEq6+0P6
         m39mhQToSPJqjldR9/SJK5T+4gtE5rbZlJ8xfizNF0w+/Ff9Z+KVm1IJINPldaCsyX8F
         5OJ4BRc11oRKUSqX8MPI0mzkc9Xi9x/TNKDE7LkylX22WqKB/Y9NWY93j6hXpUy/PuVp
         tR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=2g2c3YokpuL/rmK0Z9gpzsxYvu3lkzc1nmirssmphT4=;
        b=f3TU4YgXeq/jFWwNS6eEmMm+YTyB0lD7yJ139fdcQztHE2997bui/TADp+cTzj2ugn
         0QnA6NjpOVKXauGMosynWqS0Zy33zbwA9of+CdXp6gxm8afeS6tzVUxTDv5IDQ3QpBAS
         Je3VcdSQ5TkX3hIZBT3mU0whDzZ5vKhTiryPZs1HqxHq9hjw23e0Wv8QT9RYkQIcRtr/
         FQ6kj167Tp5A8GYUf/xu0rrzUz+AB9YCYpL+1oqIAtWEG/Bn00TRL50EINy6QU/OsfWq
         3MgwYMhCRtbeARK+y0fdmUt1x7Wsmou+sWKhXXoL3pYLJzBHaxogZptUlGViy3V1n9K3
         ZH6A==
X-Gm-Message-State: AOAM532FBxIk4nY2LW1H/s1l3dT8UWWrUNPmaipW3iZiVw9gmMWCSFSg
	r2JtuMvgTTJdD65F8EKpGSrcc5pi2e2h6Q==
X-Google-Smtp-Source: ABdhPJwmKxE9Int+jRf4IARxiKNQ87RiRJH0VXYyMvMvkX+NXXhCNPAN0EKLu+HK/Muzl7V+oUsDaQ==
X-Received: by 2002:a05:6602:24d1:: with SMTP id h17mr3830439ioe.99.1619581440796;
        Tue, 27 Apr 2021 20:44:00 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:39ec:8994:a513:9932? ([2601:202:4180:a5c0:39ec:8994:a513:9932])
        by smtp.gmail.com with ESMTPSA id o26sm862425ioo.7.2021.04.27.20.43.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 20:44:00 -0700 (PDT)
Subject: Re: [yocto] AppArmor with BusyBox
To: Khem Raj <raj.khem@gmail.com>,
 Konstantin Aladyshev <aladyshev22@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
 <20210426140851.e2g7okmtyt25rrna@qschulz>
 <CACSj6VVqDkssoEEXNjMQw7DGzeMgFBObGJQmucT7=PH64=Ppdw@mail.gmail.com>
 <CAMKF1spbzK=qGDwRthCBo1x+P8Z9h1=pL+N4hGZCzF07iHLDYg@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <a190af0e-cb27-01cd-1e9e-73dea69b50e7@gmail.com>
Date: Tue, 27 Apr 2021 20:43:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spbzK=qGDwRthCBo1x+P8Z9h1=pL+N4hGZCzF07iHLDYg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 4/27/21 8:33 PM, Khem Raj wrote:
>
>
> On Tue, Apr 27, 2021 at 3:34 PM Konstantin Aladyshev
> <aladyshev22@gmail.com <mailto:aladyshev22@gmail.com>> wrote:
>
>     I've added `IMAGE_INSTALL +=3D "findutils"` to my `conf/local.conf`
>     file, and it seems like it was enough. There weren't any build
>     conflicts.
>
>     Should the AppArmor recipe be upgraded in some way to indicate that =
it
>     needs a full-featured findutils package instead of a busybox one?
>
>
> I think it will be useful to dig a bit further and find out what
> option does it need from findutils package sometimes this could be
> solved by using compatible options etc=C2=A0
>
> If we find out that it has hard dependency on findutils then it should
> be added to apparmor recipe RDEPENDS

You are using systemd.

There is a comment regarding coreutils and findutils

|# Add coreutils and findutils only if sysvinit scripts are in use

Patches welcome.

- Armin


|
>
>
>
>     Best regards,
>     Konstantin Aladyshev
>
>     On Mon, Apr 26, 2021 at 5:08 PM Quentin Schulz
>     <quentin.schulz@streamunlimited.com
>     <mailto:quentin.schulz@streamunlimited.com>> wrote:
>     >
>     > Hi Konstantin,
>     >
>     > On Mon, Apr 26, 2021 at 01:45:30PM +0300, Konstantin Aladyshev
>     wrote:
>     > > I'm using the OpenBMC system
>     (https://github.com/openbmc/openbmc) and
>     > > I've tried to enable AppArmor functionality from the
>     'meta-security'
>     > > layer.
>     > >
>     > > To achieve this I've added these strings to my local.conf file:
>     > > DISTRO_FEATURES_append =3D " apparmor"
>     > > IMAGE_INSTALL +=3D "apparmor"
>     > >
>     > > The AppArmor functionality was installed to my image, but
>     > > unfortunately I've come to this issue:
>     > >
>     > > kernel: AppArmor: AppArmor initialized
>     > > kernel: AppArmor: AppArmor Filesystem Enabled
>     > > kernel: AppArmor: AppArmor sha1 policy hashing enabled
>     > > systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT
>     > > -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP
>     -GCRYPT
>     > > -GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD
>     -IDN2 -IDN
>     > > -PCRE2 default-hierarchy=3Dhybrid)
>     > > systemd[1]: Starting AppArmor initialization...
>     > > apparmor[113]: Starting AppArmor profiles
>     > > apparmor[128]: xargs: invalid option -- 'd'
>     >
>     > Busybox implementation of xargs does not support specifying a
>     delimiter.
>     >
>     > I suggest you to install the full-featured xargs which is
>     provided by
>     > the findutils recipe.
>     >
>     > You probably need to disable xargs Busybox implementation otherwis=
e
>     > there'll be a conflict (you'll know, Yocto won't create the image)=
.
>     >
>     > Cheers,
>     > Quentin
>
>
>
>
>=20
>


