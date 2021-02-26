Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.11148.1614354317957261873
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 07:45:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OPhfdmMy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id b3so9011341wrj.5
        for <yocto@lists.yoctoproject.org>; Fri, 26 Feb 2021 07:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=T+GReMp0mbj19rBqeTfZG0tOlagA91b8vRy2gr+KS7I=;
        b=OPhfdmMyMpLw5zSbfvdgC5Vg+PQAXujmPkLYf581HMhXk9RlC/+miBV7aA/8CAuWcA
         xH9C57sKv7hjWHwgqs0xtwwuFfRmdbgM/sp6te6K4S0PV+NVbjODBmuYgHZripoy4d8n
         vnAOW8V6XCTjsg85HBzSriA/Ym3pP+ZigZkLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=T+GReMp0mbj19rBqeTfZG0tOlagA91b8vRy2gr+KS7I=;
        b=rzRgP8jr6EJ/etx3oKOnXGSudSOD32mGqBNeWBFceY4V2baPULiKumXcaNAg+yQcmG
         akKor7Mqfh7RQfCtbICEVd3rXvEHFX7O7N5rmPCtMKpNKCoTGXw3aNHi5bcYy5CgrG9L
         tnmEls6TFlTYopp9c3uTzvZh5r4M/uz/1tyztTun/hte0y7zWX/8jNmMt/oaemgll93f
         YBRUwnTRyivc1+pko7ugRoYTx/Ifq++KrGelZT3YvKAMxI1j9zMOyKOJGJMA4eSOsDoh
         GA1WrhTcaQCy44nkKQUeb7jt+8+MfONeJ4f7tMIMM5TnKj3DJt+ozJvGXthtPTP4+j4O
         Bnrw==
X-Gm-Message-State: AOAM530JvpBIOCQWqEKcWm7MSmIBEk7fACLsfmE5L/JUab62NHgLV4Yt
	JeKrTFDqbHrp71XvLoFeWhjbSw==
X-Google-Smtp-Source: ABdhPJx/TOl/XV9LPnMlCfWisoecHIOZL85zsUh8w7kBZVyZda2akNmzLxgB/nZ1hCpwvsGLxBj0sA==
X-Received: by 2002:adf:d0c5:: with SMTP id z5mr3790876wrh.289.1614354316310;
        Fri, 26 Feb 2021 07:45:16 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:e9fa:5b01:958e:e80f? ([2001:8b0:aba:5f3c:e9fa:5b01:958e:e80f])
        by smtp.gmail.com with ESMTPSA id f5sm5776030wrx.39.2021.02.26.07.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 07:45:16 -0800 (PST)
Message-ID: <d229b45a3409aeceda27d7aabed2652a37c3e447.camel@linuxfoundation.org>
Subject: Re: [yocto] Package names in IMAGE_MANIFEST and PACKAGES
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko Murto <mikko.murto@hhpartners.fi>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 26 Feb 2021 15:45:14 +0000
In-Reply-To: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
References: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-02-26 at 14:18 +0000, Mikko Murto wrote:
> Hello,
> 
> I'm developing a meta layer to save details about an image created by Yocto to an 
> SPDX document ( https://github.com/doubleopen-project/meta-doubleopen).
> 
> I've encountered two issues regarding package names in IMAGE_MANIFEST 
> and PACKAGES variables,   
> 
> https://github.com/doubleopen-project/meta-doubleopen/issues/2 and     
> https://github.com/doubleopen-project/meta-doubleopen/issues/3.
> 
> The crux of the matter is that I need to find packages created by recipes 
> and to link the packages listed in image's manifest files to these packages. 
> 
> First, the PACKAGES variable of all recipes doesn't seem to include all 
> packages created. For example util-linux's PACKAGES doesn't include 
> util-linux-sulogin, but util-linux-sulogin may be included in an image's 
> manifest and it has a directory in the packages-split directory of util-linux. 
> What would be the correct way to get information about all packages?
> 
> Second, the package names in the image manifest may differ from those in 
> the PACKAGES variable or in packages-split directory. As an example, a
>  manifest file may include libkmod2, but recipe for kmod creates package 
> named libkmod. How to make the link from libkmod2 to libkmod?

I'd suggesting looking at packagedata which is how do_package and friends 
internally looks up things like which recipe provides which package and 
what the final package name is.

An example of this in action is scripts/oe-pkgdata-util.

There is also meta/lib/oe/packagedata.py. Sadly the API is horrible, it 
was never really designed for "public" use but I would love to see a better
API around that (maybe one oe-pkgdata-util could use too).

Cheers,

Richard




