Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E16F6C77B6E
	for <webhook@archiver.kernel.org>; Fri, 14 Apr 2023 07:49:39 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.3855.1681458578827056365
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 00:49:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=fuIu2fmq;
 spf=pass (domain: linaro.org, ip: 209.85.208.179, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f179.google.com with SMTP id y35so3178530ljq.6
        for <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 00:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681458577; x=1684050577;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QURY2p72EYgIoQ0WgmGDTN4wDU1KfPL+zieP8Qb2tqA=;
        b=fuIu2fmq81hsV4pMJkPBSOIfoN6kYybVg2OrcfcyM5TEUTqk8QLiVKVKB2cGaZRxMI
         jM6dse3zz+f7jXxYE4gP38F0sPquW1nNQfDkfwph+c//Glt9xBpfmLD/fL4qNRR84lYM
         LgiDMl7gzW1SxHAbIc0rnx9hSjJjZ9B0966VrFUcZNOXnAbsoKEn/7wMVWRtCsoY+KXI
         aRPC8k0r7frIuNArzSZaMP2M2IHuG5Nb8UTG6pYG9JxIhqdms93XJUuEXPim5ZIoHarr
         +WThU5rz0DP2/8wDTIZ0sqcs2DtzIX5vL2vldzNaw7A3akzdyRQQJQUYvT+KWDCWWKUz
         UIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681458577; x=1684050577;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QURY2p72EYgIoQ0WgmGDTN4wDU1KfPL+zieP8Qb2tqA=;
        b=jNj4L3ZGwAWyZ6f31m9b6sZX7aRWKJSskWSYcg8oJpVUxjr/y+u56ORAeP2R3aiMBS
         9XABJYdFSyVDGCBNE11VuLItClnLYwOhRLG2nQ8uXzmr6IMsFckKfahA6hkWSEAXMDIi
         2MYDUjUqhpzw14B/s4rug3SMrIDk7Q3LGZMUrlAFYhlsxKzlq164L5K+5Fn/eLWPjqXw
         W5bzo6nJfMV/5ANa6aDJRJYDOJaMpYOYW5VM6xzFjV9YLVSxIvHUzUR3tC8P1To58AeM
         tNCMXgw0riOQo8iaoSS/JvXmE5SYdjSItf71xajReWWZuY1Wk+uiWN0588C0gSQpFKGr
         TFpw==
X-Gm-Message-State: AAQBX9eGSxIIpkjIrCSBSsjK4eq4ySx6DQugZu1B25pFaxvyTpMRP2pN
	gEIlHSdTBubIB0r1iLLyHUvtvQ==
X-Google-Smtp-Source: AKy350bxWoIRGnW+UGc398c2RwY5UpDLfgDN0yBTFvai1LSAIdMKu67DBtr641FfOF1dK4LmtvaGlA==
X-Received: by 2002:a2e:b163:0:b0:2a7:b165:7db3 with SMTP id a3-20020a2eb163000000b002a7b1657db3mr1672013ljm.21.1681458576903;
        Fri, 14 Apr 2023 00:49:36 -0700 (PDT)
Received: from nuoska (dc7g6tyjby-d304c4945t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800:e107:c77f:6058:ee33])
        by smtp.gmail.com with ESMTPSA id a23-20020a2e8317000000b002a77583b718sm675986ljh.12.2023.04.14.00.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 00:49:36 -0700 (PDT)
Date: Fri, 14 Apr 2023 10:49:34 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: philippe@rmds.ca,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Give access token to yocto build. (pass environment
 variable to bitbake)
Message-ID: <ZDkFjm79urHVqnTp@nuoska>
References: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
 <ZDj/mVscjqoHyegi@nuoska>
 <CAMjhiJgCyuFQCNi7r=Kg+wo66Dh6ZT_LT5igXd0iewThi+Padw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMjhiJgCyuFQCNi7r=Kg+wo66Dh6ZT_LT5igXd0iewThi+Padw@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 07:49:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59713

Hi,

On Fri, Apr 14, 2023 at 09:37:05AM +0200, Leon Woestenberg wrote:
> On Fri, Apr 14, 2023 at 9:24 AM Mikko Rapeli <mikko.rapeli@linaro.org>
> wrote:
> 
> >
> > The environment variables and thus secrets are easily leaking into build
> > logs so I would not use them.
> >
> > Instead, I would use .netrc for git and anything using curl (http
> > fetcher). subversion caches passwords into ~/.subversion directory once
> > the password has been given once.
> >
> > In CI, these can be deployed automatically using ansible etc and
> > developers should setup these for their own machines.
> >
> > Hope this helps,
> >
> I think this is wrong advice, we switched away from this years ago as with
> docker and CI/CD, as the security implications are easily exposable.
> There is not enough info in OP and I persist this is off-topic here, so no
> answer can be good. See:
> 
> docker secret
> 
> https://blog.gitguardian.com/how-to-handle-secrets-in-docker/

Yes, with docker this is much better. Without docker options may be more
limited and also depend heavily on IT infrastructure which in real life
has meant .netrc for me. This is no means secure or even best practice
but just works. ssh keys are much better, if that is an option.

Cheers,

-Mikko

