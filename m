Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web11.960.1610092318595926095
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 23:51:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DKhjP07k;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id n4so8874812iow.12
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 23:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xDWgWUDdHdwO/IFWnuWAjrG/RbRGKcDcjJ7SnDuBBUQ=;
        b=DKhjP07kPZM71ULgONeKyFpflyzetldiZOgHBVthtRvso9tU8g5RobGzU+c8VpLSrH
         3qXBUfVHPk1a53QmYJ+cgTgcMILTaxlYT5opunEVFvTYfHObD2Zc6KvvKr5VgumALHki
         44nj+MY3CXVBo+dn2iSvdLDlRtNnhodCqlDD0V0bdoas00HR9zvAOvMcZ6BhBTxiBtt3
         S4sw4WCR2BI8lVenfnyrtzSnnsN454Dk1Ok2XFNRRGa9xBwU7sp3IJ1gIY1p/HzsGOcG
         apn+WsrqIOFqkgKz8x6kt8L2AGFfphr8nOvTsiqT067LQRN1X94FSczgCqRj0FyoZW0z
         xPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xDWgWUDdHdwO/IFWnuWAjrG/RbRGKcDcjJ7SnDuBBUQ=;
        b=QpfSab2QtqevM8sUufg0nmAUtKEF18ztes+wAZ+1MUZC20cV9wtw1HlAN5sOqvCTQc
         pL2X25ws69kZnTOikDzFaT8R4ZcU+Rq9v7jv5jxs708y1M6vZNd5zWa8MHRJYy5W3U2p
         uln7efxAuKgHYZNk56TbA14PIXUrTdsszC2M47CR71XbJiiZqV8Bs7Jp8E0DZEFZeEzr
         ZEA+lKmivZbwEm77CoadpI4n2qA7QnLoCZEXeVPqkOPT6VlmDw9q2D1qVoFUanziyKVl
         jDIjYrIE0IrHti7rHz6BbGhr1UyGJ2DQzfkIxEvWAFuiKckxOiq3GkKw2oedEtsXkEho
         zV2g==
X-Gm-Message-State: AOAM531bZCmOfXI+NVO19iwGCQANh73iVeP5InAxNatLbRkKTB39X0g0
	k7y00fO3w1fsQ7R0ju/1MbVrDfgQtyu84U8qwxU=
X-Google-Smtp-Source: ABdhPJy28+FWoHCjOGKX4n8CDciGqVHpMRqbTRyjo2356MTR90AoKrrlagzRewWPORWs0k/w7WEJ/eD9AxHkHjxFiDc=
X-Received: by 2002:a02:999a:: with SMTP id a26mr2275571jal.103.1610092317731;
 Thu, 07 Jan 2021 23:51:57 -0800 (PST)
MIME-Version: 1.0
References: <f9PC.1610003579307616752.mC3p@lists.yoctoproject.org> <7869.1610086716956778814@lists.yoctoproject.org>
In-Reply-To: <7869.1610086716956778814@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 8 Jan 2021 08:51:46 +0100
Message-ID: <CAGAf8Lx4TLQ98rk+BQBoFGWrBf57ST_EywDeKKvpsWdNb5RvSA@mail.gmail.com>
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Just maybe... This web pointer can help you!

https://stackoverflow.com/questions/46448682/cmake-error-the-source-does-not-appear-to-contain-cmakelists-txt/52068568

Zoran
_______

On Fri, Jan 8, 2021 at 7:18 AM Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Anyone, please suggest.
>
> Thanks,
> Vijay Rakesh
> 
>
