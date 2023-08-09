Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE28C001DE
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 21:11:21 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.3084.1691615481048637830
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 14:11:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Nv2VWPW9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-31771a876b5so258532f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 14:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691615479; x=1692220279;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6f+EBjHhttb+uMzohLGr6xeW5ga+h7qQPJrGzBBfV4g=;
        b=Nv2VWPW9fl1V84drgfFVMI5JAmXR3NO2guV76NEUAym7ic3AiHBs1IPKeNlYocTGa8
         NJZEjlyT4cO5etbT16Rr7yz5HbfVMX84VfXddm8AcZaKhyoSonegy2ymN13AO8TFtxYP
         g0vycK3HAMcbyHN4tiA89WpHfuAxVjAE90uEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691615479; x=1692220279;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6f+EBjHhttb+uMzohLGr6xeW5ga+h7qQPJrGzBBfV4g=;
        b=Pg455TqKJ0r0lUIIiWQqMrOkk6v492AI7F6mjHeagP00mjCY6ZO8nYvmOepsWorlH6
         j8CElpWUg4dBCOV6tYbf7ibR+5hACJAt0g2Y4d+CB/lyL4ZyQ/IGfHaKRRKk5xizVXJP
         vCwtwtjjtGMO7NQfumyHDUCR3W2AjL7iH8rQXejyqtatc0owez1UAfoaIIUL/B3Q4oYZ
         I0LrwbiSMjyuNVLSXRWm6w4YmqfCiZ+BIHlfExbGP/AJkRQV7seHNWHBle3mPz9teDlM
         DUumKQ9P9zT6ZYFegd3YAwUzQGwhvv9c5LsK0r9BQAYRohDMy9duZIJ+CHxY7DCAq2GB
         L+WA==
X-Gm-Message-State: AOJu0YyAlGnNF095l6NX97Bh/wY9llfH9nLTGhvzw6/wBjpvCvA06D3n
	3B5PmS78WvxzDC4A2kT6Tbhw8g==
X-Google-Smtp-Source: AGHT+IHyDgsh9yArHLCS/FIRkqYWX4eDIR/uX0vGwEUXjY1wNqGF76uB7YZYWqH26ikYDRMjl8ux3A==
X-Received: by 2002:a5d:67c6:0:b0:314:49e4:b0c4 with SMTP id n6-20020a5d67c6000000b0031449e4b0c4mr398145wrw.70.1691615479486;
        Wed, 09 Aug 2023 14:11:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8ad4:8961:8732:8a5a? ([2001:8b0:aba:5f3c:8ad4:8961:8732:8a5a])
        by smtp.gmail.com with ESMTPSA id x10-20020a5d490a000000b00317ab75748bsm17816226wrq.49.2023.08.09.14.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 14:11:19 -0700 (PDT)
Message-ID: <3517ed356e4370fc0d15e45ee50902411c1de528.camel@linuxfoundation.org>
Subject: Re: [yocto] sstate-cache miss analyzation
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 09 Aug 2023 22:11:18 +0100
In-Reply-To: <CAE+BM3=XOQrMOkb2tG9hz6zE1doD_ACZHtGYguUfES8cEx+-YQ@mail.gmail.com>
References: 
	<CAE+BM3=XOQrMOkb2tG9hz6zE1doD_ACZHtGYguUfES8cEx+-YQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 21:11:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60764

On Wed, 2023-08-09 at 13:31 -0600, Rusty Howell wrote:
> Hi, I was reading this very old mailing list post about SSTATE and
> cache hits.
>=20
> https://www.openembedded.org/pipermail/openembedded-core/2014-June/211563=
.html
>=20
> Is the information in that message still accurate?=C2=A0 Are there any
> newer tools available to help understand why a recipe got a cache
> miss?

The basics haven't changed and bitbake-diffsigs is still the tool which
can compare two sig files.

The basic idea is to take the siginfo file for the recipe that missed
(from the stamps directory) and compared it to the one you think should
have matched from sstate.

Cheers,

Richard

