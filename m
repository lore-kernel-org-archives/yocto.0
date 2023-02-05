Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2EEDC636CC
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 17:08:08 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.33120.1675616885328763728
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Feb 2023 09:08:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CpYY+5jY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id i5so1297040wrc.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 09:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YhJ3FxjN+P/Gx+3yJFirSc+PdbvuOyev1KuJw9rQWfg=;
        b=CpYY+5jYd+MKkE5AJwqMqr4v9xWTurSJ2IFrbGES4bxHpk6xdfzdDITtSYumldiqE6
         o+OpLUtJ+4Gc5xMLW06hR00J9BCfJ6K3jG3K6XjrrAEoLQrLqA/ns+dRDX3I0XksdTPN
         l0soJxIAQhzBIleg0RBTEeoxuYmVtM5BurVgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YhJ3FxjN+P/Gx+3yJFirSc+PdbvuOyev1KuJw9rQWfg=;
        b=d+ytLTvaqe70KKAec4xF342R/KipkY97YXBAGkiI9LUwgM71CS9XW5ox+qQvZyfxuH
         oOYvbtrLtPYLGMJgvDphOSUXI0aNZNUla4t26PY0Q4H2REF4hRvueMTXvsZUIyP2fLS6
         Ksx3pnyBcfgVG7r744HOJtioLrweTwmLD56F5jUYivw1VuQMn7hN4pEp/iZHmELYraYA
         cCgx6xbJPf9qaxftmLa/kJpjPReo6Qzt04ROYY6t/djowUv2ZgUPd5mmAV87FQ90N3xi
         om3lGZ3xaiCkVlpmjfednNNkNdwk+D4LOfpGUbafYsYRs9XtKA6lFfXUaVjUMdwMPKeW
         5I2Q==
X-Gm-Message-State: AO0yUKXD34T5laA7QXg0xf6UaE/661saOyPeDA/UJqzQamD0o+AHsXVS
	M3Wn1/Vs8Gx6O9CusYdwNbLLQg==
X-Google-Smtp-Source: AK7set9K9SzyfQKykKtMC+I9gYgfvkilfGocB5pmPSZjGabwEfE8xId4aNj46rqKtKe3KdzGAaUEaQ==
X-Received: by 2002:adf:ce0c:0:b0:2c3:db40:31b6 with SMTP id p12-20020adfce0c000000b002c3db4031b6mr6567621wrn.57.1675616883639;
        Sun, 05 Feb 2023 09:08:03 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:512e:205c:f28a:2b5b? ([2001:8b0:aba:5f3c:512e:205c:f28a:2b5b])
        by smtp.gmail.com with ESMTPSA id h1-20020a5d4301000000b002c3b2afae00sm6831367wrq.41.2023.02.05.09.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 09:08:03 -0800 (PST)
Message-ID: <39760b676a3d2a628a446e3031724b53c8941a88.camel@linuxfoundation.org>
Subject: Re: [yocto] error when try to use sudo command in recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: SIMON BABY <simonkbaby@gmail.com>, yocto@lists.yoctoproject.org
Date: Sun, 05 Feb 2023 17:08:02 +0000
In-Reply-To: <32073.1675615489615210493@lists.yoctoproject.org>
References: 
	<efae481688d50d97920bc1e8471427a75bc9d6fd.camel@linuxfoundation.org>
	 <32073.1675615489615210493@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 17:08:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59172

On Sun, 2023-02-05 at 08:44 -0800, SIMON BABY wrote:
> On Sun, Feb 5, 2023 at 01:54 AM, Richard Purdie wrote:
> > something
> Hello Richard,
> I am building this layer for adding container images into the root
> file system and load on the target as part of the image download. The
> sudo command when i run outsidethe yocto build directory=C2=A0
> seems to be good. when I trued using bitbake it fails always. I see
> the user and group ids are different when i printed inside the
> bitbake recipe.
>=20
> =C2=A0-rwsr-xr-x 1 nobody nogroup 166056 Jan 16 13:06 /usr/bin/sudo
>=20
> it should like below:
> tdydev@eadlng-build-machine:~$ ls -ll /usr/bin/sudo
> -rwsr-xr-x 1 root root 166056 Jan 16 05:06 /usr/bin/sudo
>=20

Are you running bitbake directly? How did you dump those sudo
permissions from inside bitbake?

Cheers,

Richard

