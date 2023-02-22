Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A24C61DA4
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 14:10:17 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.9680.1677075008501785428
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 06:10:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=3ELvZEOg;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.51, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f51.google.com with SMTP id ee7so15814009edb.2
        for <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 06:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YrLXQKiCJF5hGfCdfULU2r38TnuVcBIIPbedY+NToZI=;
        b=3ELvZEOg09rsNoAUiDjjFdxHjfD1N73t+LpCIF0/BQMa7e/4nIxKhaav0gKqnNtXdI
         KSSZiTtgGsJ7VER2QKfM7PQG490bRSKsQbcwSA3Opt4ZAv406EK0s0ENtRLLoU6xw+bL
         DXD4RrkX8peEY8AhaSMXiSOvXacMRvlCG8SBDCwoCnSt4UjlxlGIgdguICX8Xae68pF3
         BHhlxafLnE+waKp2uYFviOHxCQ2Kzxrek4rSHZGkBhOfZJj23amZP6yEfU8ThlXAAtdP
         epcttBjcbx1Q/1KPU0zPsGBj9i2ZCJPZJyJlrqHgOLp2dWcbJlnawHy+XKG+YGOmFMIc
         LVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrLXQKiCJF5hGfCdfULU2r38TnuVcBIIPbedY+NToZI=;
        b=ZcyrWGUsobDNf2TOxDDKCQ176SseuA1oOuuMpjbAN5aGc5m3hoe7UIOhGwRUmHCsSp
         OK/i12dGEjiMIoK2yJfVh9qOaDDfLVhsVXhMwD/jv7dfAwY0gp/rfe3xZZnbgYon4cm3
         u4DKNpuzebt6oBBKwHtzPaF5v4kzZi6ksGS6Msc0x/jQhhgQXdH31tj3Cj5WANLy4hXT
         d66sElqNgzn1zxLidmF8CNfqIjYoutVsBVjzsiRhi+juK2tMZgkRt0PaUq60t2gkHajv
         ewjnKsWxDemBkMK9UONdxsZMrO9Ppb9N+bpTHxOXFLmOLQhKH7B65BK06jqQKdEm9z2n
         Accg==
X-Gm-Message-State: AO0yUKWt7yVz2Cj+YsH2zx9mpgT2yYjYM+ZQ76vzB/nTFHErXzAkz/d3
	uT/O7g1SvJ6JwV13akJuYMPCCBpa0ewFHsJwadcAHw==
X-Google-Smtp-Source: AK7set9kMdAQt0NHqfcnTIgcNLcYf7fjts0CGmI+ysA1Z0nYoIQLmuSZ+jKgb5+133/zPBTu6fxf/58gfvGBbXssdE4=
X-Received: by 2002:a17:906:f88a:b0:87f:e5af:416e with SMTP id
 lg10-20020a170906f88a00b0087fe5af416emr7851918ejb.7.1677075006667; Wed, 22
 Feb 2023 06:10:06 -0800 (PST)
MIME-Version: 1.0
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com> <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
 <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com> <657dc629d58e38f649b028aba7d9a614356886c7.camel@linuxfoundation.org>
 <c15be7b4-5cfc-8d5a-2513-9c707b60b532@amd.com>
In-Reply-To: <c15be7b4-5cfc-8d5a-2513-9c707b60b532@amd.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 22 Feb 2023 04:09:55 -1000
Message-ID: <CAOSpxdY2a4siZHkmzSBFY6QFBESrsR9Fm4dp0zykWwqoJO2exQ@mail.gmail.com>
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Kris Chaplin <kris.chaplin@amd.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 14:10:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59277

On Wed, Feb 22, 2023 at 4:06 AM Kris Chaplin <kris.chaplin@amd.com> wrote:
>
> On 22/02/2023 11:27, Richard Purdie wrote:
> > Just to loop back, we've updated all the branches to mention 8.7 now
> > and tweaked some of the other entries too (thanks Steve!).
>
> This is great news - thank you for your help on this, and to Steve.
> Will the page at
> https://docs.yoctoproject.org/ref-manual/system-requirements.html auto
> update at some point to reflect this?

If only :-)  I'm preparing docs patches for langdale, kirkstone, and dunfell.

Steve

