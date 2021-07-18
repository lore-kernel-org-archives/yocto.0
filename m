Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.15962.1626621457048217482
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 08:17:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=E7/KnM/2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id f10-20020a05600c4e8ab029023e8d74d693so3855508wmq.3
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 08:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=MVf6PjqRjsj/3bT30ctmWbEYy9kx2n4+AU0ORAxejhs=;
        b=E7/KnM/2Yjr+8/3E1gt5Kdg0V67jE+6FCj6N4YLtrayKaH0hI0fUVUCCCKEdkgsz1R
         TyjZiZhYp0HSu99PaNkkKRkB3WAQP4F/KZtE3wcwzyaF6fPK/7Doy0lvPL4M37lknKgy
         Tsxp25H1v1GUs5+Loo0gDBXL10ukadiwIcEWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=MVf6PjqRjsj/3bT30ctmWbEYy9kx2n4+AU0ORAxejhs=;
        b=ROfM5efzocLf6CM4t5ojxJH6aDsYvXtjQU+PsS1v28VRg7dyx/6Jazm8eb6aFSoNts
         UvfKCBgfPAbn8TpUaPMExexaLL6ugKPqru1EqlmE5kAIVGtnDjD9dS7sK2aQoKd/+lQ8
         JUMW7Bf/m6viChN++h5pq3iuiQN+cNbioyZNIImI0s9OBlLdiXbehLzvjNzCLbPqV6+8
         s4dzQdjuJ8ajFR1H2RN8pumSoX3dxib23dMiw8RX7uad2NBpahaO8sNIu8wcPufsGB0x
         Jj9p4h7uTdY13v9uZyST6GozilgwkqItmE/vzCYcLL3qKmJkxoKty78yyQEPqJvj3Zso
         S2eA==
X-Gm-Message-State: AOAM531t7XJGoQE2uoAt22ocxTFLWXPcJDLzrVOsspf2IkRBDeFIjMee
	xIcvWmNNQAyfY9W8LeN2hG/4OA==
X-Google-Smtp-Source: ABdhPJyQG0z8YVjWgBgc7cE6Mqp5nP72n1h2ZKAC3hgO1YuvaPsXq2kGs+8bWaTRKf8UCdGWg4n+VQ==
X-Received: by 2002:a7b:c1cd:: with SMTP id a13mr21285249wmj.94.1626621455485;
        Sun, 18 Jul 2021 08:17:35 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:5ff5:ebf1:b0ff:a94a? ([2001:8b0:aba:5f3c:5ff5:ebf1:b0ff:a94a])
        by smtp.gmail.com with ESMTPSA id f2sm16813240wrq.69.2021.07.18.08.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 08:17:35 -0700 (PDT)
Message-ID: <0d6d45ddbf0c5a6e74f0ee3a465f591347fdd40c.camel@linuxfoundation.org>
Subject: Re: [yocto] Exception: NotADirectoryError building Hardknott
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Simon Haines <simon.haines@scalardata.com>, yocto@lists.yoctoproject.org
Date: Sun, 18 Jul 2021 16:17:31 +0100
In-Reply-To: <CACrbFVdaFGVGaSw0+WHSxb4Z05khof1y67wc_XDOWEzPqXLQNQ@mail.gmail.com>
References: 
	<CACrbFVdaFGVGaSw0+WHSxb4Z05khof1y67wc_XDOWEzPqXLQNQ@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2021-07-18 at 14:01 +1000, Simon Haines wrote:
> I can't seem to find any information about this error, but I keep getting variations of this when building
> hardknott:
> 
> Exception: NotADirectoryError: [Errno 20] Not a directory: '/home/yocto/rpi64/build/tmp/sysroots-
> components/x86_64/gmp-native/usr/lib/pkgconfig/gmpxx.pc' -> '/home/yocto/rpi64/build/tmp/work/x86_64-
> linux/libmpc-native/1.2.1-r0/recipe-sysroot-native/usr/lib/pkgconfig/gmpxx.pc'
> 
> I'm building in a container, and I've tried building the tip of the hardknott branch, the hardknott-3.3.1
> tag, and the release tarball (
> http://downloads.yoctoproject.org/releases/yocto/yocto-3.3/poky-hardknott-25.0.0.tar.bz2). All fail with the
> NotADirectory exception in different recipes. I've attached logs from building the hardknott-3.3.1 tag and
> from the release tarball.
> 
> The additional layers I'm using are (cloned from the tip of their respective hardknott branches):
> meta-openembedded
> meta-raspberrypi
> meta-security
> 
> It must be something with my setup because I've searched everywhere for this issue and I can't find
> anything. Does this sound familiar to anyone?

How is your container filesystem setup/configured? It looks like the filesystem
isn't liking the build trying to create hardlinked files. It is odd it would
get as far as gmp-native before having problems. That file definitely isn't a
directory too, it is an odd error.

I'd suspect it is something like the copy-on-write mode of the filesystem
having issues.

Cheers,

Richard

