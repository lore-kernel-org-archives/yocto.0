Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A066C433EF
	for <webhook@archiver.kernel.org>; Sat, 21 May 2022 08:00:39 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.3543.1653120034400712487
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 01:00:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NUNLn2P9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id m20so2986766wrb.13
        for <yocto@lists.yoctoproject.org>;
 Sat, 21 May 2022 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=wbIDU7cazG18iJ8jkaVrZNhKYRhN99CNLR7vqDBdPnU=;
        b=NUNLn2P98z/9Hb+SqzIRlCbge4Bd5Pq4rrUjqbMRVj+teYw2yD1G2guBwtsm+j/w9P
         hm3eAxUouxTj9HWhj4637j1flY6VYe4MpDVP6IT1yCSO739ittoq4aqx+eAadqql4bVf
         EmKlEP7Abrtil8xkSWaa0iRNz1yUtEEBo1Oho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=wbIDU7cazG18iJ8jkaVrZNhKYRhN99CNLR7vqDBdPnU=;
        b=d8WxAmRM0ab1FGOFILLqcalsKqZcPSqnwKHdjDkBsNb20/v/sEnaNiGU4oHquPs2vt
         Pml8LgNPG+2yUEcLMr5y9CgA+pgl0IqJL60zCDOohwQxabG7xauxFsDOSVWUym+4OeZl
         dh9a+Q81Hn/m2D19P1330csA/yZEMiAlOw7Xmz+mWIChzBC5ZtAVX4AYLGxeD+6daBZE
         5GEOH1nnz/bm2mLhiVEIk3/y7FWkg3WK2dw+SZDuVjO4zPeG3y+M2qdrYlez0TDiUrAp
         qwrA1TnYzeD/xp/vAJHB59YH2+xhlCP2YdS1aKEO93qeQdLR8CiSlqJMTC+m33yYItNn
         GK0Q==
X-Gm-Message-State: AOAM530PrD6ySUXABwACO5VxvUXTf3uzThMKqBrdm/jJ2PGEtxWjXF2k
	qaXYmeoqFsb/jtWMYVmXhiK9iQ==
X-Google-Smtp-Source: 
 ABdhPJzPa+WqJEc6SXRUtZEda/Tfyk1arja5NBaUHQVrbpvpsF8En+qJBy3X6zUCnjVTcOnVrG0AtA==
X-Received: by 2002:a5d:6c6e:0:b0:20f:c39b:c416 with SMTP id
 r14-20020a5d6c6e000000b0020fc39bc416mr3271331wrz.463.1653120032889;
        Sat, 21 May 2022 01:00:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d812:46de:9e00:ca1c?
 ([2001:8b0:aba:5f3c:d812:46de:9e00:ca1c])
        by smtp.gmail.com with ESMTPSA id
 o9-20020adf8b89000000b0020d0351dbb6sm4560555wra.80.2022.05.21.01.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 01:00:32 -0700 (PDT)
Message-ID: 
 <30bc646fe9b5bce07c051da98aa4a706899f80ee.camel@linuxfoundation.org>
Subject: Re: [yocto] [psplash][PATCH] Improve warnings from probing for
 double buffering
From: richard.purdie@linuxfoundation.org
To: Zach Welch <zach.welch@timesys.com>, yocto@lists.yoctoproject.org
Date: Sat, 21 May 2022 09:00:31 +0100
In-Reply-To: <20211020205154.18972-1-zach.welch@timesys.com>
References: <20211020205154.18972-1-zach.welch@timesys.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 May 2022 08:00:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57149

On Wed, 2021-10-20 at 13:51 -0700, Zach Welch wrote:
> Adds missing newline characters in output, while clarifying that these
> messages are warnings that may be safely ignored.
>=20
> Signed-off-by: Zachary T Welch <zach.welch@timesys.com>
> ---
>  psplash-fb.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

This patch had some discussion at the summit and OEDVM.

For the record, it did actually get merged a day after it was sent!

https://git.yoctoproject.org/psplash/commit/?id=3Dfdbd111d6bab2fbbae62a0411=
23fc6b644aa97aa

Cheers,

Richard




