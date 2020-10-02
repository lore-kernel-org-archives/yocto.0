Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.719.1601659707410163271
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Oct 2020 10:28:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCNiHgL7;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id b13so1214847qvl.2
        for <yocto@lists.yoctoproject.org>; Fri, 02 Oct 2020 10:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GvQ+DaA5b+F/Vwtcdf4wtv+/z+fRWTdcvUuRwmglm/4=;
        b=nCNiHgL7lMs+C7rOOrx0Yy6e+qR3AWJddptu50aIc2bS4kKjD8PEt1hhDvLN7gKLrS
         dUIY+MBzCCc6hatl44uoXlpRE6A7VU19SJOs4efj8sdD5ILLf111ycby3op7fXlSQwsM
         FWSy8PYuU068ZE8R1w0NQs7RwvTtdHR05uoVmJT4bdI96EJn7uZ7Spkocm9JEfINV5eZ
         Nd2E3ZXGbR6KuSQ/+VBYnkyxdGYrE2r4rkQQZ9vNyloScNq92h1nOEEOuqgHN4gB1tCi
         qCStnFeb4mKmT8hqOVGJQqEEGkA0fsrALJSmGKdNLqJK6wIebUGgIr+fDckBrAw3QeDV
         7JZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GvQ+DaA5b+F/Vwtcdf4wtv+/z+fRWTdcvUuRwmglm/4=;
        b=lXtPhnNgySns2BVAS9eEWjEuMBbqvM2/fB6F/96LGa4W+a2XtAGANUqqovnkvU+dxb
         r1HHdr7jcRexsuLU94k2252OqFeMazgjJ4cTGjn/mkn2LuXMylphy7DerzbMRW0L7UlY
         HVIvLNuyo+ul+oFXk5JDNot+5ztXd0D/s0hRvG9/SjPk4yVknBXRbn9dYEThJ2iXvbYo
         splqu926hiODQ9COoxZKuJJ+Gw2sYe2PZEFq36naTBjg4X+IRbQV0zG4swkkiMYs6t2N
         jD4C44aKSpW5Ud/UK/B62giULfaCZdj1pcPO9pynrc8FF0npNn3PVUolxxSCXkKithB1
         w49Q==
X-Gm-Message-State: AOAM5303O96qrSDK6YW1J7xVmYo6jPLydy1wNwq1tGuA/H4a4wQmEH2U
	immlzUZyVXNQ2ipNOTTmibWnb007webpUaDN7QTbko4OWHo=
X-Google-Smtp-Source: ABdhPJzgcTcn5D60sILwh2RWefbWXkQHp+Xt+Baz4xkCMDZhBOsphsqnGcYxqtgFMrzEHtW8gFR2a14KQ74ukuzfv6k=
X-Received: by 2002:a05:6214:7a1:: with SMTP id v1mr3044602qvz.19.1601659706484;
 Fri, 02 Oct 2020 10:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
In-Reply-To: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 2 Oct 2020 10:28:00 -0700
Message-ID: <CAMKF1sp5vcZKJmO474gRvwNaUbtGiSFW-nAYGR5c=ROTbJsCYQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk How to add *-dev packages to sdk installer and not to target rootfs
To: hhj@trackman.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 1, 2020 at 11:58 PM <hhj@trackman.com> wrote:
>
> We use the "standard" SDK to provide a basic linux filesystem including =
libraries  to be used for application development (based on cmake) in the S=
DK. So we need the *-dev packages for the libraries to be available in the =
target "sysroot" in the SDK but not in the target rootfs. How can this be c=
onfigured?

standard SDK can only build applications and it has -dev packages
included in it per your image ( if you built SDK with -cpopulate_sdk)
where does target rootfs come from ?

> BR's
> Henrik
>=20
>
