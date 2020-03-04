Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web09.190.1583361639879519175
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 14:40:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l6JhAu/n;
 spf=pass (domain: gmail.com, ip: 209.85.217.43, mailfrom: aljoscha.lautenbach@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id n27so2331260vsa.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 14:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=fhMLZPmnRikinyBQPWEkOhVDd3I2XwxQG02t3ZcvrHo=;
        b=l6JhAu/nRtfZVib9pNEbND/o9Osp4kfF2J6TdIKU0qZFqumlSEPnZAYgp6lS858ujU
         6m8IdUdxGn5BJ1qZw44hBBTmi0dLLp4jGuyEuEtGndMiSoslZfu4zbtltq+FKQGM/BkU
         3lNKBOWEQdgSr0n4tKBDK/cO9jErofRt+gfoO/s2duzMS1m86x8x3CC+UxjXL39Iie1i
         7v9q2l6UfrBz/9NM3GBp6RJrNjGeH0+4T1u2KG9s/jCqVELQ2luAvUk2jxVSTOd+YIbH
         zhhRdLysRgK2LfevAOZgFBwSWST5XYml7dVPwiQa72hrV4h9vBW991hvOaPg/HkGXRd8
         qfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=fhMLZPmnRikinyBQPWEkOhVDd3I2XwxQG02t3ZcvrHo=;
        b=OGosFCok9ED8E2oXzRGonAILRez1iWt7Un0xuOucrGTBDrOQRppxSvPJaa8fi3zRYd
         BXxQVrKM0b5vXI/xwmBeWDl6uHCxviq29TLMvXl1n+oYlJ2B78y6BHiiYzIaXzKVjxD0
         hGQYgzvsckOB7/XW8dyl9DRXa7uX1MgnBOsT4Yxbq0ZI9+PbIIS/vH1x8FrU6XF0eHOd
         LDWXyvG+q+EbxsjGXuAYs/rvHtD1f04PfOmzXdrZrevu6ZHxlCXHrumC/ffu4Xm0ha6k
         GtBIdtcRJb9mLRGd3Go4LkKe/rRwgRDWtR8222992vTa3KaLayQFeYV7i9tRivarYrDt
         +l+w==
X-Gm-Message-State: ANhLgQ2al5t+Om87xRlKtXMrOAoYZ8RJnv77KETW0NsTBw9pxMaKTRJ2
	R54h7Vwy3Rmyk2DibO6BaUfrzczfuemAFBqbabGBxTeJNAFbWg==
X-Google-Smtp-Source: ADFU+vsZ2eJ4A7tRez6ij3jgL1psNlwf1q2VSxGY0x8hOAwAT7cuAe3VbpzosLdQTyJqztG/adha3vvN5QLQUVNNd8k=
X-Received: by 2002:a05:6102:322a:: with SMTP id x10mr3216139vsf.30.1583361638685;
 Wed, 04 Mar 2020 14:40:38 -0800 (PST)
MIME-Version: 1.0
References: <15F8A029CD47E18B.3851@lists.yoctoproject.org>
In-Reply-To: <15F8A029CD47E18B.3851@lists.yoctoproject.org>
From: "Aljoscha Lautenbach" <aljoscha.lautenbach@gmail.com>
Date: Wed, 4 Mar 2020 23:40:27 +0100
Message-ID: <CA+yZB6ZiLuxr2AybgM_sJRrhvWiOGJQ62hHvdRbkh0jnvdesPw@mail.gmail.com>
Subject: Re: [yocto] Building xen-image-minmal for raspberrypi3-64: kernel-module-xen-* not being built
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I made some progress on this today. After running =E2=80=9Cbitbake -c
menuconfig virtual/kernel=E2=80=9C and searching for the config parameters
that xen.cfg was supposed to set, it was obvious that they were in
fact not set, as the mailing list reply I mentioned earlier suggested.
By manually setting them, I managed to build the kernel modules and
boot.

I don=E2=80=99t know if this is a bug in meta-virtualization or in
meta-raspberrypi, or if this is expected behavior? If it is expected,
it is not documented.

It also turns out that the =E2=80=9Cunbootable image=E2=80=9D I mentioned p=
reviously
was probably a console or display problem instead, because I have the
same problem with the now succeeding xen-image-minimal build, but I
figured out that I can ssh into it.
Unfortunately /proc/xen still does not exist, and xl still complains
=E2=80=9Ccannot init xl context=E2=80=9D, but that is a separate issue.

Best regards,
Aljoscha
