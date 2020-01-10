Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web09.13561.1578677327837643072
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2020 09:28:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Li5OxVT3;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id w1so2939239ljh.5
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jan 2020 09:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=O/PtuRNrIVMlWhyBd39iWJ3yeAqVEnKIhmPeS/Sc1yY=;
        b=Li5OxVT3u9Jd8ArqZLZdKt6B5l9S7JDwO8VVZXKQCwk6E6gWZkKAxdR5yJy5/DSvKQ
         Yy3j3IJFrxP7ZiuVvYgzZ0BkQFhjC9ckjOGk4Esd7FFzl4o6ZuYAQdS67HaaAunTKoWy
         XL5ApNPs2ttXXFoDm3EKaYhKME19D9JpIkWDAF1W6/v6L2isF58FLwzVpK2tr9Md0Apq
         SgT3JxSp67n2OFwGsWsdDXwPTo45JTOvUMuHXeKNaLmRFC92nR/kTclbHsgSC1NVt9CW
         NogmNin+eyfhkbvUKDJdSGZ6/e8EfFqFxlVTTY5TIvDVaaoBDEmGs6cc5ZXAL17BSCtm
         zkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=O/PtuRNrIVMlWhyBd39iWJ3yeAqVEnKIhmPeS/Sc1yY=;
        b=qcVZvqKjema8fCkvwYITpMWd7DEGmoZtgAttOLmLdy3/u8380GLEu8H/CVEMzvdRDw
         AxSFj9JLizSeH6CszT8IuJ/ewj07vZInUpanA7lRvijqAh6cgNj2ow5MMwm7vRTpA6Tq
         pSjzW/LPM0hjqbcgz/EBTy7OR1diO7NjJFdHt4M0U3PIDnLOxFpPrBWPCeuPfr8VaOLH
         uh5UvAoqh0mpjajJQCYxwsHKdKsemAqXoYG2PXHcvjXb6Vn9YcHiJo6X3rQElmkyuMSG
         /oygnC08nSs4PuYXnSGgm/jCyXgRfLjGworPta96Vx+kRBofgRVwoEL3tuneWNUPUKOb
         sX6Q==
X-Gm-Message-State: APjAAAWy5rzGkW/48lZuyScxp7TMuFc8vHnh/pKhSgZQZSekm0zF0Hx5
	9whVGpLSJzaB5uIkqL1SPM7B9SjlHw+qsZS31K2b1Q==
X-Google-Smtp-Source: APXvYqy3EERSFYghXy+MWGctyfm5+7fnDSOarco/4477WhwrT9DGx4yvHhKngeVuWW71KQ+9rp4lQGr4DgHsvlhbjGs=
X-Received: by 2002:a05:651c:102c:: with SMTP id w12mr3334005ljm.53.1578677325878;
 Fri, 10 Jan 2020 09:28:45 -0800 (PST)
MIME-Version: 1.0
References: <15E744ED02F41EEB.31817@lists.yoctoproject.org> <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
In-Reply-To: <62036ece5b4308f78ce3e9b517472e32b98b29b8.camel@andred.net>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Fri, 10 Jan 2020 18:28:34 +0100
Message-ID: <CAP71WjxqsYGRx8cn0JeyqrhvJbNQkQH_S7N0eURmJ411C9JAew@mail.gmail.com>
Subject: Re: [yocto] mailing list mangling name?
To: "Andr? Draszik" <git@andred.net>, Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 8, 2020 at 3:45 PM Andr? Draszik <git@andred.net> wrote:
>
> The mailing list started mangling my name.
>
>
> The From is sent as:
> From: =3D?UTF-8?q?Andr=3DC3=3DA9=3D20Draszik?=3D <git@andred.net>
>
> but it comes back as:
> From: "Andr? Draszik" <git@andred.net>
>
> (and of course the patches in git look funny now)
>
> Could sombody please look into that?

Your name was mangled in the groups.io database (because of the "=C3=A9").
I have updated it.. though I am not sure if this will fix the actual
problem. I guess we will know with your next message..

>
>
> Cheers,
> Andre'
>
>
>=20
