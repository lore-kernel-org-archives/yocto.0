Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4350.1616149100352797560
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 03:18:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kvy0Kn0I;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: nicolas.dechesne@linaro.org)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9294338C083A
	for <yocto@yoctoproject.org>; Fri, 19 Mar 2021 10:18:19 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id x21so10094654eds.4
        for <yocto@yoctoproject.org>; Fri, 19 Mar 2021 03:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ajfApQ6MgH5+JFEp3zmLixZwMdd6QxqB2AG3znrR8t8=;
        b=kvy0Kn0IZwHrecgqaHlwU8vcihHizUOYu17VhOV2k3pb+FbEmQVvka584UViHHvbvr
         x+8kZwir6y3qkbmBLhXoMMcJjl2AtaMyyeUldPitsdxaL1dD5a2FUhDnr0rnRWD7cqLX
         afhJv6cs/o/xb0zvTwfbtUAtteuY4Nwlxc2eMUDKztlAPhY/+eU4nlq/rFcMGY7BsFN8
         Zn/5MJtmGpsLVzHq/dU+Cw0KndujhTcdOUwykxsJcirU/Wto127qLIvqnauaBFqguRgw
         lrdfA58rwDRcwGZADHjMmzJ2ec/aCPWYWWn9Jsc9SYwrQm+rp7fbwXlChwhZLCNNmmlZ
         JdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ajfApQ6MgH5+JFEp3zmLixZwMdd6QxqB2AG3znrR8t8=;
        b=WxaAWiB3g8AAm7j3IFQ1lu7mJFV4bRynOnJZWehnH2Yjc8eQdYZ/mt+xgDlO4fpPfb
         fIHHrT9AV7x+yuo+AwpdTKqEVj1TNLa6f74HAFyClowwiYlTGBmiZcL8wmJVERbPMam5
         6nqjuCCBD2w0s50NIt2/IYiLb5wD+3kvB+MSnWUeHtqcGzF3LHeJ0mJuGoIoACa1eZOF
         or0Ak9NFMv3hdQmfW+3y6v+FO3LkuMVLjTd8rTwu/NovwwxbZml3IFIzbuRITjxtPjKb
         WhSoULoo8zQTOIu/nILnNZDia6X5d661S7tIO6zch/IY0UKnubIBWKoTzEeNZVwrx/7X
         LX9w==
X-Gm-Message-State: AOAM533UOjOV69HeJ/Nl0nHqGAkUQVzfnvjSoI4/N8JcLmXL/Q7BhV6j
	7wMfYvxWVDsjUZW9df6622RxP5AJReN5KTWavC/kSw==
X-Google-Smtp-Source: ABdhPJwAYSVdmrP3waHnIBVfBWdAkpClqN5lSpTHRRPIbpz6EWGuqYB2QMOgPlV234q2raGNYUQ2Ns6PlMZLRmFXzKo=
X-Received: by 2002:a50:f391:: with SMTP id g17mr8571804edm.26.1616149097935;
 Fri, 19 Mar 2021 03:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <51f8bfd1-43-c9e4-e67d-dbcc1f62a840@crashcourse.ca>
In-Reply-To: <51f8bfd1-43-c9e4-e67d-dbcc1f62a840@crashcourse.ca>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Fri, 19 Mar 2021 11:18:07 +0100
Message-ID: <CAP71WjyS1OzSaJEcOA9boq0=x6x9b3fk-TqXRriTdpLiw052HQ@mail.gmail.com>
Subject: Re: [yocto] does current bitbaking of core-image-minimal still need docbook stuff?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 19, 2021 at 10:47 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   testing building qemuarm64 core-image-minimal from scratch, and
> noticed it fetching for docbook-xml and docbook-xsl stuff ... is there
> something that still needs docbook support? i'm about to take a quick
> look to see what's demanding that, does anyone know?

It's not related to yp-docs at least. most likely some recipes that
use docbook for their docs/man pages, no?

>
> rday
>
> 
>
