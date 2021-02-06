Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4349.1612602174483239448
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Feb 2021 01:02:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZQxXewW;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: robert.berger.yocto.user@gmail.com)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 201C638C089D
	for <yocto@yoctoproject.org>; Sat,  6 Feb 2021 09:02:53 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id z6so10403160wrq.10
        for <yocto@yoctoproject.org>; Sat, 06 Feb 2021 01:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qajPf/Dh0bEW3+/xsguyRiMX8bb9sXWPdXRSVmlcBMw=;
        b=jZQxXewW3FPgElt2ILIilqnQm0K2QmCJRf8Bm7Y5s5G8gvb9ZFdWv30dJREl7R0Vu7
         OVjrn3BfLliKU6UNTxdF0BAQxf0liiMlBunOtDWh6XpPKGat7m3+gGh+BCbU6aq1zs4C
         zW1sYf2dtD8M3wy6f/gKY0WPbktlz7j5VOuSP1CUEYUVigoGe4VmB3u20gnRmxsKkbWJ
         pVR/SwoiQrE9/zhPMumDZqhxEIZnV1LoRpuWx1X6pZ4Et6LVNR6waM42GIl2YqNgA+ZZ
         L3Z+uBFADT7pUoS/ajbDaGfw6xia743nbgm5vbH54YuOptAaD69wR1cFBlwo1/apebtj
         LU8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qajPf/Dh0bEW3+/xsguyRiMX8bb9sXWPdXRSVmlcBMw=;
        b=TLg4/2/NCMCrscJO+O6cbz9MMKQJdA/GQyes9GTs8vIlaAk8tqVMU/lBW50be8tRa1
         GWaFTZijFlZGezK9EeK28XNsY4CGxD/FXqUJJrlmaEwbYVdMqFVsH5bewfYlG3CmWcab
         Qh7NXl65YtYS0Z5XiGoYoVQm6BKQWh6ztJv7g4VrIlDHnSubL34GZ/3ahJxfvrg/psUX
         APHiW7lyYlI251R8b7Tp3DQrro/RKODYpFpXsWndS2OyL5K6qGeVUO0WMbs2lQ6cqjOk
         y4amYHiOgOmQWZzVuc71O7Tzq0KRxN2vs5D4nLAcXn2ICyDhaLXGtQ6GF5S5rM0CUrCt
         ox9w==
X-Gm-Message-State: AOAM533oEV6CbvuuzuXcYWPKKBp+LS7nlkgz+plJ6QuxV7veIawBd7Og
	ll999qSWDgi+0v8a4XuH+ys=
X-Google-Smtp-Source: ABdhPJzCNCO2Yh4XNe2XiyGaKX7dwR+XzVZk3/e/vM+PlhYFOaXzm+GAu1TStG6EtS76USTHqKWsgg==
X-Received: by 2002:adf:f905:: with SMTP id b5mr9069516wrr.129.1612602171563;
        Sat, 06 Feb 2021 01:02:51 -0800 (PST)
Received: from [192.168.42.52] (ppp-2-86-140-5.home.otenet.gr. [2.86.140.5])
        by smtp.gmail.com with ESMTPSA id b3sm12032563wme.32.2021.02.06.01.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 01:02:50 -0800 (PST)
Subject: Re: [yocto] [meta-virtualization]: dunfell docker run issues
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <cf75f9b1-c511-dbf8-fef4-8cd12fe32c42@gmail.com>
Date: Sat, 6 Feb 2021 11:02:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 04/02/2021 17:03, Marek Belisko wrote:
> Hi,
> 
> I'm trying to run docker containers on orangepi and use
> meta-virtualization layer to add docker. I've installed the docker-ce
> package and everything seems to be fine.
> 
> But docker service seems fails to start with:
> Feb 04 15:00:01 orange-pi-zero dockerd[495]: failed to start daemon:
> Devices cgroup isn't mounted
> 

Can you please tell us which version of yocto this is?

Also which kernel and especially which kernel config.

I use something pretty recent (master kind of) and I am able to start 
docker and podman with a custom kernel, but networking is very wrong.

e.g.
1) if I run a web service in a container and open port 8080 to the 
outside world it is not accessible.

2) it's also not possible with docker-compose/podman-compose to 
communicate between containers

... unless I put everything on the host network.

Once you reconfigure your kernel and get it up and running could you 
please also test the issues I mention here?

BTW will dunfell it seems to work, I need to retest, but I have some 
boards running with it, I believe.

If you manage to get an upstream kernel to run on your orangepi zero I 
guess I could even give you my layers to give it a try. You will need 
another device tree and boot loader, but the rest should work.

Regards,

Robert
