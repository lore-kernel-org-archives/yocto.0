Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F4EFC7EE29
	for <webhook@archiver.kernel.org>; Fri,  2 Jun 2023 18:01:28 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.2363.1685728884005479599
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jun 2023 11:01:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=dFXV8QpY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-3f603d4bc5bso23125705e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 11:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1685728882; x=1688320882;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CdwjLvII5VH1bhSs9vX6xyf9UuKtHlMYkYgnVGhSuIk=;
        b=dFXV8QpYzlSd0VOejG6ANnkxNeXHpwhoX+g4ogfJItsTDf6mSsAe+kGIfQ0VgE7U5H
         PLzZAsZGnkZtl/YEs/FxVYf1+4cShk18/vVp5vEW1r/Q/PySVLEFsSewqt8vQtJC9EfZ
         4OaCirfNxhlPsc+CuZAVYqT9C7uogXttPLtG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685728882; x=1688320882;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CdwjLvII5VH1bhSs9vX6xyf9UuKtHlMYkYgnVGhSuIk=;
        b=HsJJAcIIIyUhZyvQROX7b/7i/wpA7Y1Op5hYW0vkNGbDbbbDzo9o+rapXqpKMc4nRl
         pXOpgezuj5mprQzvgTAGpM7jmZK7pfVWfppy8P/hqqsUhVrkuxN5f44+wxdAXhIOt1WR
         9/K6V10BxSl2OZ86hX+ItuZt6/RGGb2SmkcbVeePRVN2xSxZYX+9bwXpA8jwULVBAePd
         dfFnkxhqzLH7tfBXs1g+h8vTXpVa0MAuHYw2yGHkBt2y36zWUvGd8aRcvOKExf8yksUy
         Ek3IKlGx8AodZzOGOy2v5LMNT5sXtl6YEK+UvVt4QNbmCXEutYD1VghTn8kHYMOm4mic
         h4uA==
X-Gm-Message-State: AC+VfDwFk9nERzOGUrLxYF1toeiSjmRTrLeNhBJ1h2t2PINwlUEbNTy+
	+qi0DoTd6k7Sja7fTl5Q1Om4Hg==
X-Google-Smtp-Source: ACHHUZ59e/HCGmNOvmdfzcid0OtO+EZNgWWD2t6uTVDRycTe0qSSjN9NcAn63JC0nfmziF8hf8+I1A==
X-Received: by 2002:a1c:7512:0:b0:3f6:af2:8471 with SMTP id o18-20020a1c7512000000b003f60af28471mr2288146wmc.26.1685728882441;
        Fri, 02 Jun 2023 11:01:22 -0700 (PDT)
Received: from max.broadband ([90.253.52.128])
        by smtp.gmail.com with ESMTPSA id w11-20020a1cf60b000000b003f423f5b659sm2634983wmc.10.2023.06.02.11.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 11:01:22 -0700 (PDT)
Message-ID: <ef667f6f589f8f0f4768649376f9ce940783a742.camel@linuxfoundation.org>
Subject: Re: [yocto] #Yocto #GitHub mirror - tags
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nemo <me@captnemo.in>, yocto@lists.yoctoproject.org
Date: Fri, 02 Jun 2023 19:01:21 +0100
In-Reply-To: <BEKi.1685692987886853227.LDnz@lists.yoctoproject.org>
References: <BEKi.1685692987886853227.LDnz@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 18:01:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60164

On Fri, 2023-06-02 at 01:03 -0700, Nemo wrote:
> Hi,
> I was using the GitHub mirrorfor shallow clones, and noticed that
> while its syncing commits, the tags aren't being pushed there.
> The last sync with tags happened in February, so its missing all tags
> since.

I've been trying to get this automated but I've resolved it for now.

Cheers,

Richard


