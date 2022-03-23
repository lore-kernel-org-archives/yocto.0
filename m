Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 283FFC433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 12:50:02 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.8721.1648039800485497779
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 05:50:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q0PA7geS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id
 p12-20020a05600c430c00b0038cbdf52227so874348wme.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 05:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CaM2k+UeJInCyA8qhbrb67d9MBwm2rnC+d19CTuesEE=;
        b=Q0PA7geS1wYPbn4nk/cJqZj8mICUEF942Bo/TGZaAZGpMRI+95JgnwkjbFOtQwGc7G
         RKR+Dvm0So3/kgrhP/sOr4iSh2YXBvxUJG9fOKQ1i+/rW5nQxl73WIjFn60ro4QgUEae
         Mftmb5UzugATaulJ9hFX0YCjcJ4OD1TWkvc0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CaM2k+UeJInCyA8qhbrb67d9MBwm2rnC+d19CTuesEE=;
        b=l6qpXvqXSIg9d0Z27guu450rWIa2mwwtbXar6Eo8PnWSvAi4wrr0b8xEQ3nyRLb1Cm
         IgqUwIWGqAbsbQ81sRrZ05LEJ5N2cDClSrYbM+ImwvCct0H8pNGJzqrkp3OXwqWL6yAi
         tmmkoxoEHosgR875OQwxpIvY/wXOOlzaoN8Dt+nQR4t33TX0ns6+ZSyjVBn9Mszh7joq
         h3IU3rq4Sb6Ud8TjA/OXCuOXECloBjyXCo5yj0uIMHk6LdPAlODz/yKaGnUsQ/Z7F5G6
         gqyGsNRG3MpZiwU7JYx4pj82wozJbz48ubOy+tVtdMLpcvEEDD0B78wCvI0Jn7pTWwZG
         m+2g==
X-Gm-Message-State: AOAM530d5NhnHQYMLycYEQ1tOUF42lCkdrzGJ4wBEypqCXBQ5gBQ4vFN
	FO6CWTjby5wUQxW6cdY2ZyH2EA==
X-Google-Smtp-Source: 
 ABdhPJxspTFqniHy2AMW5biMu7oSiWZ7pbiOZPobQhTwEInv7crhVHvTdQyLx8Ddwj5yRvryg1oXYQ==
X-Received: by 2002:a1c:f605:0:b0:37b:b5de:89a0 with SMTP id
 w5-20020a1cf605000000b0037bb5de89a0mr9020771wmc.88.1648039798816;
        Wed, 23 Mar 2022 05:49:58 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:aaba:716e:9c38:ad87?
 ([2001:8b0:aba:5f3c:aaba:716e:9c38:ad87])
        by smtp.gmail.com with ESMTPSA id
 p125-20020a1c2983000000b00389cc36a3bfsm4115103wmp.6.2022.03.23.05.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 05:49:58 -0700 (PDT)
Message-ID: 
 <db9511e9b564c448823645985f49b30206598ceb.camel@linuxfoundation.org>
Subject: Re: [yocto] SSTATE corruption
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chuck Wolber <chuckwolber@gmail.com>, Alexander Kanavin
	 <alex.kanavin@gmail.com>
Cc: Rusty Howell <rustyhowell@gmail.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 23 Mar 2022 12:49:55 +0000
In-Reply-To: 
 <CAB=6tBQTeCvvDYm0ATBMysKTzcStKHobuKMVUu3Sm_Tw=WCG7w@mail.gmail.com>
References: 
	<CAE+BM3meYkLa3J_CUbmvRiz7w5LFE_QqyqkoDrkibuk-ietPFQ@mail.gmail.com>
	 <CANNYZj8w_i+dPngM_4ucTTFhsCaH0dvqpK998i0hb6FEDNA5Yg@mail.gmail.com>
	 <CAB=6tBQTeCvvDYm0ATBMysKTzcStKHobuKMVUu3Sm_Tw=WCG7w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 12:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56535

On Tue, 2022-03-22 at 10:54 -0700, Chuck Wolber wrote:
> Alex is very much correct, you should not see corruption. But I think more
> detail is in order.
> 
> If your distro repository is a "garden variety" set of image recipes and
> recipe overrides that pull upstream source bundles, then your SSTATE cache
> should age nicely from release to release.
> 
> However, if your source code and associated application files ride along in
> the same repository as your recipes, or you add your own bbclass
> functionality, you may want to reconsider keeping SSTATE cache around for too
> long. There are still some issues to be worked out to make the local file
> fetcher as reliable as the other fetchers

Did we get that solved on master or not? I can't remember if there were
remaining issues or not?

Cheers,

Richard


