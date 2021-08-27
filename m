Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.5952.1630057474725098265
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 02:44:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=EH8v/sP7;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.128.54, mailfrom: jester@theyoctojester.info)
Received: by mail-wm1-f54.google.com with SMTP id j17-20020a05600c1c1100b002e754875260so3900961wms.4
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 02:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=6A5cvVffLJcCzklp+387yRJ2zVtdnQD5ArFU0N43828=;
        b=EH8v/sP7TPkfkahgl1e+6uqy5p/t0JddbZjzxBCvVNyP3bgxHVT48XVp9FlEomMIOp
         6M8HtO/z1bJ/tEGzpiyuQWV+5xsvdwAyBrLCH0VUkMTEirRACZyfIddBQaRZQkCoqZZ0
         BwelfeTi+DA19OGunk4HQTMpGKnidolvIHtC5I3hBufayyt9bBp2IomwOLHIq9Y9BnTS
         jVXw+3eQdj0c2YXfKxlsRFd7tOHmasAaYj0QCRQkISCN5LLHZcEoM2zJKBYvNs9/A7wW
         lpmALEoCASRJNtIwfNt+PPIfurN26iGVvA+xpwgFpkdJbwcNVt38jC9pFIJaZoFDEZQ4
         4RSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=6A5cvVffLJcCzklp+387yRJ2zVtdnQD5ArFU0N43828=;
        b=f3DqJsheouYpn5Fk12AAgDzxA9jSJhOLLJ8yujiB/DGli/hDOOzSDFS8gsfDsaJI4l
         nNXFSmunOGeflAx2abD/Z3PjD6x6bSl4cwPPXq72Uo3glJeMR54nzCso9ehK9QEv5xOG
         THdGSRLub0xjwspcaG6LVGNHMSU8zKgJNyvSp/n4h0i0rJh3y7zXmEyDab5dctGXqWs3
         Ox2USvhw8jtPyWphXecZ/BFJTLy7YkBik9Ckk7lEj6js0oDT6AEInK17+Cx2odHDfoHl
         2k7dO/42XVfj35Us1grJrcRs8RIu1FakfmwUsXhEseTzzCmq/dx//hpqgrt4L6f8sn6q
         6ASQ==
X-Gm-Message-State: AOAM532WOHMZVZP/OB2sce6xMZ52/2qO2CxyKBtF5V8s4nF065vuZfr8
	U9xGhIulNrAqhnmgPZQ1Leted9RHk9iBX4yV
X-Google-Smtp-Source: ABdhPJz+WOuFnUznM7nFCaQptPWSbXXlr8vk5y47GE6sUR9LPqtzEgBa0z7C/mGTDWfbjFQWHSqqyA==
X-Received: by 2002:a1c:40c:: with SMTP id 12mr18443987wme.158.1630057473074;
        Fri, 27 Aug 2021 02:44:33 -0700 (PDT)
Return-Path: <jester@theyoctojester.info>
Received: from [172.16.3.179] (p50933415.dip0.t-ipconnect.de. [80.147.52.21])
        by smtp.gmail.com with ESMTPSA id p11sm5284207wma.16.2021.08.27.02.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 02:44:32 -0700 (PDT)
Subject: Re: [yocto] building mbpoll
To: Ivan Riabtsov <ivriabtsov@gmail.com>, yocto@lists.yoctoproject.org
References: <CAKAnv4HzhLS+X1Ld9EOCVDaSR4G25i6v7sou0h2=g2p_60SE-w@mail.gmail.com>
 <e4035b54-f2e2-d50d-a56a-dec61d8264fe@theyoctojester.info>
 <CAKAnv4HxRVZDwAgF4Umf7MQATc_MPWOBuHZbe01A96DnjbeV6g@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Message-ID: <2cd3cc61-158d-8f4d-433c-c86fb11a36f4@theyoctojester.info>
Date: Fri, 27 Aug 2021 11:44:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKAnv4HxRVZDwAgF4Umf7MQATc_MPWOBuHZbe01A96DnjbeV6g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

(re-adding list)

Am 27.08.2021 um 11:17 schrieb Ivan Riabtsov:
> maybe mbpoll is not cloned? I found the custom-rts.c file on the
> mbpoll website and try to search for it in the build directory, but I
> can't find anything
> 
> my mbpoll_1.4.11.bb file:
> 
> SUMMARY = "bitbake-layers recipe"
> DESCRIPTION = "mbpoll recipe"
> LICENSE = "CLOSED"
> 
> SRC_URI = "git://github.com/epsilonrt/mbpoll"
> SRCREV = "2bf602817370000e69221eb50c4ece813d10c0b4"
> 
> DEPENDS = "libmodbus"
> 
> S = "${WORKDIR}/git"
> 
> inherit pkgconfig cmake
> 

again, any particular reason why you're poking the recipe by hand 
instead of just using devtool (which perfectly works in this case)? it 
would even give you a good start on the licenses, as well as not having 
missed the inherits.

Greetz
