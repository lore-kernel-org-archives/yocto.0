Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web08.18533.1621255582890574031
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:46:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NUEwghQV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id u4-20020a05600c00c4b02901774b80945cso1644684wmm.3
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ynpaSw4OinsQeFjB92FsUDWNbAsIgi9vubQ5YivgE1g=;
        b=NUEwghQVnC0QU4aOQ9CpZ9Fbmv4IGFOSCgzT6NLRnLbRv59vMCQ41ukhZY2cV0Jnml
         FT1T6O0868dS1eUZCjD0Rj5rTmzr5hSXk9u1Ovorb/EhJZabA3tiYXjgUyrI9oNR1mmB
         DcjxBlNoMEk1XuNQ9G2sN40wS2DX5Q8yFbg1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ynpaSw4OinsQeFjB92FsUDWNbAsIgi9vubQ5YivgE1g=;
        b=W96nu9582vGHzUTbhM8sw7POUab0gGOAW61sx83p9DeXImhBJyGIF3emVukQpbN9oj
         jHwQV9kbZ9174nFh2OHiQ0ovsUJpEb5k/sN4LBZDRcNPzfeD+SLtMOwvGQzy/L/AWOGE
         8J2PhkrfFItblcBXaodbKPrgWkfehCYB9lBZRv7Qi/lRtS4Z5EKbQOT36QLBrluMlwDJ
         pwzB2HZfFieu1JgFellkVh7D2eshii1ZqszBLE+TCWifKsBo7u26lDyH53jUC3Ba1xZD
         q2thsCJimiX4dCYQ2FRbyvsFgkWX3GrVuKrIVcK720lVyCxDx1ErJRRfmmW1/bITz40c
         Xp4g==
X-Gm-Message-State: AOAM531ofHQr4yA82ew2pkiQNdHEA23L/FeiiFs3k2spe8rb6fEunWv/
	wST4MarzlyzXkaHDe7Lcglbcqg==
X-Google-Smtp-Source: ABdhPJxcVdiEj5iC+bXPO/V/bD1u5DtqICSTA7ilyKuB0Z15hyrE5HtqvaGegS7rge5eC96cvyhz+g==
X-Received: by 2002:a1c:b003:: with SMTP id z3mr23877173wme.7.1621255581254;
        Mon, 17 May 2021 05:46:21 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1b39:2a3f:a2c2:a4fc? ([2001:8b0:aba:5f3c:1b39:2a3f:a2c2:a4fc])
        by smtp.gmail.com with ESMTPSA id p10sm16084951wmq.14.2021.05.17.05.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:46:20 -0700 (PDT)
Message-ID: <aa483a731d47cc1a7d89139d8c684e080dc1dbc4.camel@linuxfoundation.org>
Subject: Re: [yocto] Opencv build generates Pseudo Abort
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Morten Bruun <morten.bruun@apide.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Mon, 17 May 2021 13:46:19 +0100
In-Reply-To: <CAMrUZLiHJw4sUDQBdHycq9hFSV+qLucX_=tHOVQZC0VQsRuNAg@mail.gmail.com>
References: 
	<CAMrUZLiHJw4sUDQBdHycq9hFSV+qLucX_=tHOVQZC0VQsRuNAg@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2021-05-17 at 13:25 +0200, Morten Bruun wrote:
> Hi,
> 
> When building on the new hardknott branch I often get the error below, so far the solution is to delete the
> tmp directory. Any suggestions?
> 
> debug_logfile: fd 2
> pid 6668 [parent 6667], doing new pid setup and server start
> Setup complete, sending SIGUSR1 to pid 6667.
> creat for ' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
> r0/package/usr/lib/stMOsGHa' replaces existing 11214613 [' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-
> linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_xfeatures2d.so.4.5.2'].
> creat for ' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
> r0/package/usr/lib/stUxt79H' replaces existing 11214665 [' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-
> linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_sfm.so.4.5.2'].
> creat for ' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
> r0/package/usr/lib/staYWmKL' replaces existing 11214480 [' <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-
> linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_imgproc.so.4.5.2'].
> db cleanup for server shutdown, 00:12:21.579
> memory-to-file backup complete, 00:12:21.579.
> db cleanup finished, 00:12:21.579
> debug_logfile: fd 2
> pid 4234 [parent 4192], doing new pid setup and server start
> Setup complete, sending SIGUSR1 to pid 4192.
> db cleanup for server shutdown, 00:19:10.704
> memory-to-file backup complete, 00:19:10.705.
> db cleanup finished, 00:19:10.705
> debug_logfile: fd 2
> pid 17609 [parent 17585], doing new pid setup and server start
> Setup complete, sending SIGUSR1 to pid 17585.
> path mismatch [3 links]: ino 12076677 db
> 

This is the key part of the log:

> <path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
> r0/package/usr/src/debug/opencv/4.5.2-
> r0/contrib/modules/intensity_transform/include/opencv2/intensity_transform.hpp' req
> '<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
> r0/contrib/modules/intensity_transform/include/opencv2/intensity_transform.hpp'.

and the question is why a file that looks to be in what I'd guess is ${S}:

<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-
r0/contrib/modules/intensity_transform/include/opencv2/intensity_transform.hpp

was created under pseudo context. Does the recipe give any clue about that?

Cheers,

Richard



