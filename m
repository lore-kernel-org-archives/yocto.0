Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.11783.1579010448338718221
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 06:00:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=I0kfAvsl;
 spf=pass (domain: linaro.org, ip: 209.85.208.176, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-lj1-f176.google.com with SMTP id o13so14459983ljg.4
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2020 06:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sIHjn76ULtu15IER71fUu8rYhY4RhZ3rAixAYIAlbOc=;
        b=I0kfAvslihJuygoVA4iTY51su/r8X6oxW7VG+SPZ7IxZgcIifDcGHTWvDMRKXASKqm
         EfRs//V190xhur3wScc+WnUi3Tu2ECqIAe4o481w6gURJR0c6oqAxZMj6KAaojrmSxyh
         YGL/i5jSiuKHSJkRtXVuByrDnKQ8ZFFJIn79SrRiiTnGSasoH/OObvWm9BVQLm3PAZwz
         K2CQnUI8a1bIOqfPI5j0y9wUY3HqpDzNAnBg/zwFMwMJ8sKLj+XpB5btSJXTC+EgI8uy
         Wr1RET7E2G2HuiZ100bSGk9t71ca/r324o5oShMiQyNnJrC7sLIjMeocUmkaJ4D8zLEh
         wNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sIHjn76ULtu15IER71fUu8rYhY4RhZ3rAixAYIAlbOc=;
        b=icJTKCXwK4M5iCrHEFCD3eqwoP6Na2Wf4EKoLPARGfvEY8PlvSJo6YH3RlmqpJ4WYG
         Feu6D0wz8/GE4fjJQ882RSqv72K5Tt1w3T/mCvvyJNVpnPc/wa2g4kjJQMdsQWAWt9Zs
         Hw6oXZk0oO29PAMeuQCrybi7Xe2Jr2uJghAjbdAajiJTKPJTJVWvZAjzvBdaYoAZzLg2
         Ye405EGP6qrgwD1tGmtve6jH3uuezPTGDQ6GPGRXG0bXF2ZfAjXUbCbHhcaSy0gVq/6L
         u2UfdjibcZW9in+Iy2BbuMgd4+mpePOVULcKszPCZII4kzjb6CJ567nVJn6tvUNIKvpI
         c4Mg==
X-Gm-Message-State: APjAAAVbktDYfKfpjSN+pqA38rVXfT6oSQCY6NLNx1RkNDWskowA7Uqo
	XKFMkmiycro1Ov3fqO9lmaZ3MR9XyPf2R//ZFV9qZA==
X-Google-Smtp-Source: APXvYqywO9g6ufOGMxlKp5CstNo6BCR2EWUbO0ppcb+VFuHFFfFNzOiMbzkQtDmRz9IPoHnWP7vbY+jgRvuLl1CKsCo=
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr14728947ljn.0.1579010446313;
 Tue, 14 Jan 2020 06:00:46 -0800 (PST)
MIME-Version: 1.0
References: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 14 Jan 2020 15:00:34 +0100
Message-ID: <CAP71WjyhVZbfmB3jvvwyxHe7aB_j+BfP3gvOdK3YVUy2_2UWNQ@mail.gmail.com>
Subject: Re: [yocto] Switching to OpenSSL 1.1.1 in Yocto Morty release
To: Nikolai Merinov <n.merinov@inango-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

hey,

On Tue, Jan 14, 2020 at 2:51 PM Nikolay Merinov via
Lists.Yoctoproject.Org
<n.merinov=inango-systems.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> Our company interested in updating an old Yocto releases (especially the Morty release) to use the OpenSSL version 1.1.1.
>
> Can Yocto Project integrate all necessary changes if Inango prepares all required modification to compile all the code that exists in Poky Morty distribution with OpenSSL 1.1.1b (version used for Thud release)?

morty is no longer maintained by the project. I suppose you will get
more voices here.. but I don't expect such changes would be merged in
the morty branch in poky. Also API/ABI breaks are typically prohibited
in releases.
however what you could (and should?) do is to create your own layer
and share it with everyone, in case someone wants/needs morty +
openssl 1.1.1. A similar layer exists here:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102
It is for users of recent releases willing to use the old version of openssl..

You can submit your layer to the OE layer index, so that users can
easily find it.

>
> Regards,
> Nikolai
> --
> Nikolai Merinov
> Architect, Arch Group
> n.merinov@inango-systems.com
> T +7 343 298 0147 C +7 912 229 2564
> inango.com
> 
