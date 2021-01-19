Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.11348.1611064901520815096
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 06:01:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XRivl6Ny;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id c12so1308934wrc.7
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 06:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=pW5BbBwxs3J0SAGzry1b851rCqFJ6f+qSE5p66Ly5CA=;
        b=XRivl6Ny8Co3YhjJRK1ZqFwCjqVaydnfNbK1844ywplSOHKm3I9N4yKAMqhRzoH3TT
         nIB72s4tEwmJ9jAFVShuzRi5B1B+HpL9Xn2NTK/Y5b8bQ7r4UPlR0zmlX39ZPPqKcF9c
         D6xG3F2A9fTq3p1PeoP9G+Y33R36tUpvUvi3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=pW5BbBwxs3J0SAGzry1b851rCqFJ6f+qSE5p66Ly5CA=;
        b=dc+bMY/ftniZDe5F0C7Sy/ZogAJ9biJJgei64OBvExuP+gc/CqnLbs+ul9TxFqnpMG
         4D6cxjdR/1NB1g8PGS4f61zQB572CivYWdS+3gLwVtqTRcR8anSK+4q5IzESG96CruuV
         reVCqPqzX0I8Yg30gav6U6baLCeZ1Ydd+n/UaXtKgtBD0ED3AEw8MxL7ZSTvB5e/h0bx
         vhB5EPuYjQqnLvLR7KvyXkgwn8BJ95LjLbCeDLvQKWXsUmmGPYUXEJiEH3yiDsoIKxOZ
         37IZCzecIt/xWa6oSdgZ0K27PVa1Mx6EcqfrxczS3lSwQe0v71Ta3COrRBBTIgYom7Fk
         Y/Lg==
X-Gm-Message-State: AOAM532PrQDpN4YeNDbdOcGVE9lbEOlBSKg6AsQekZ1SKFhNw/bOjIRw
	Ig/pK0J+9MRVC+Tn9PDznozESw==
X-Google-Smtp-Source: ABdhPJxRKoWizv6/zVkijXVAM//SbTe5KIL0u0d/ppxuf2mpiX1NzL5NMkhbKdfAC8IZz9r8LGlhjw==
X-Received: by 2002:adf:decb:: with SMTP id i11mr4620970wrn.26.1611064899940;
        Tue, 19 Jan 2021 06:01:39 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f7a4:851a:48d5:440b? ([2001:8b0:aba:5f3c:f7a4:851a:48d5:440b])
        by smtp.gmail.com with ESMTPSA id y13sm37455508wrl.63.2021.01.19.06.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 06:01:39 -0800 (PST)
Message-ID: <98759b01ae06675bb16dfbe4711fda63f230a0d0.camel@linuxfoundation.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: steven.monsees@baesystems.com, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 19 Jan 2021 14:01:38 +0000
In-Reply-To: <MADEUP.165BA5F71253BD01.16848@lists.yoctoproject.org>
References: <MADEUP.165BA5F71253BD01.16848@lists.yoctoproject.org>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-01-19 at 13:42 +0000, Monsees, Steven C (US) via
lists.yoctoproject.org wrote:
> When I generate MIRROR TARBALLS for my build it does not appear to
> generate all the required tarballs…
>  
> I tested by tested by rebuilding with “BB_NO_NETWORK = 1”, and
> received the following build Error (see below).
>  
> Is there something else I need to define to get all the required
> tarballs in build ?

Did you set:

BB_GENERATE_MIRROR_TARBALLS = "1"

If not you need to set that. Also, you may need to refetch things
initially to ensure all the right things are generated with that set.

Cheers,

Richard



