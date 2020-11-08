Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.17658.1604840394883336624
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 04:59:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KlgQ8WPx;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3F51038C0636
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2020 04:59:54 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id b8so5953048wrn.0
        for <yocto@yoctoproject.org>; Sun, 08 Nov 2020 04:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8tCNRIXqLBW8rNbw9oEvmJmpS8PCW2/zW2WD0ftaHQg=;
        b=KlgQ8WPxmDjZ6Yl4LGOHmQEJ/wXVwBk8q2G7Z614L0SAtGzuMRrJFoAFLugyVSd8/u
         ty/sfQ+ELqvw3hn9hpk+YDONovR7IixeYw7TAJtZDA0uHi+bqbBL/sXrKvtRtXXe3wK1
         5AOelPxTLVBvGxEqFQosqNugbW/OQUsUB0KH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8tCNRIXqLBW8rNbw9oEvmJmpS8PCW2/zW2WD0ftaHQg=;
        b=Pn1tOPW8wvVPcPGmPJdRXStf6WsBZeAz3H86nvJ7OEVug/cMrhmQm0CJ/F8Wkib3M0
         4KUvzXJGIEPx8cBYrvXDxZAUF1ltjlp/VHr0hLJWXy5LicmCKE9zhpG3SMtUIcOuxy95
         WG0YIf/3NsSvpNbg04iEoeMoxsIPFKd68eeVidnJ5O1ORJQ9iWbuL21nykphM41zJCjV
         0WxO5J6iTqF/nBzPVHTA0VeDwYR4zizPFojDuDPTCQ4aGP9u3RcjooyYUhYujgwSS4vM
         g7cQDgPlKC/l2FCwvp8ThWEBOWsy0lxkYuBdLHc+Joqf/WsZwBQW8+65dow/PBKDVgdW
         FGfw==
X-Gm-Message-State: AOAM531mtSNXh3wbdz5O6C8U1it++RCNYSD21UX1Vwiw+EoTqvqe9u3L
	lk7BWXrTe0LDipL1pvsmIOvEuw==
X-Google-Smtp-Source: ABdhPJwswpCxr+byKA8ipLQS88+a/KttoH1SR698hVfVOby4SLZSPj0ac26szrmhQ/fkU9jaB3ckdw==
X-Received: by 2002:adf:e88b:: with SMTP id d11mr4230237wrm.4.1604840392850;
        Sun, 08 Nov 2020 04:59:52 -0800 (PST)
Received: from 7.e.4.c.9.7.4.3.c.6.2.9.7.2.8.5.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (7.e.4.c.9.7.4.3.c.6.2.9.7.2.8.5.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:5827:926c:3479:c4e7])
        by smtp.gmail.com with ESMTPSA id v19sm1076704wrf.40.2020.11.08.04.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 04:59:52 -0800 (PST)
Message-ID: <9f76d20390e74a51e338ade333a1f7a11ae7daec.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] schedulers.py: run performance builds only 2x a day, not 4x
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@yoctoproject.org
Date: Sun, 08 Nov 2020 12:59:49 +0000
In-Reply-To: <20201108090923.3079-1-alex.kanavin@gmail.com>
References: <20201108090923.3079-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-11-08 at 10:09 +0100, Alexander Kanavin wrote:
> The same builds are included in a-full, so they tend to get queued up
> and cause delays in builds completion, as there's only a single worker
> allocated to them. Let's run them less frequently to mitigate the delays.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  schedulers.py | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/schedulers.py b/schedulers.py
> index 2e8f3d5..ca63c9f 100644
> --- a/schedulers.py
> +++ b/schedulers.py
> @@ -306,11 +306,11 @@ schedulers.append(sched.Nightly(name='nightly-quick', branch='master', propertie
>  schedulers.append(sched.Nightly(name='nightly-full', branch='master', properties=parent_default_props('a-full'),
>                    builderNames=['a-full'], hour=1, minute=0, dayOfWeek=6))
>  
> -# Run the build performance tests at 3am, 9am, 3pm and 9pm
> +# Run the build performance tests at 3am and 3pm
>  schedulers.append(sched.Nightly(name='nightly-buildperf-ubuntu1604', branch='master', properties=parent_default_props('buildperf-ubuntu1604'),
> -                  builderNames=['buildperf-ubuntu1604'], hour=[3,9,15,21], minute=0))
> +                  builderNames=['buildperf-ubuntu1604'], hour=[3,15], minute=0))
>  schedulers.append(sched.Nightly(name='nightly-buildperf-centos7', branch='master', properties=parent_default_props('buildperf-centos7'),
> -                  builderNames=['buildperf-centos7'], hour=[3,9,15,21], minute=0))
> +                  builderNames=['buildperf-centos7'], hour=[3,15], minute=0))

I've been wondering about this but I suspect we should drop them from 
a-full instead...

Cheers,

Richard

