Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D996C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 17:05:32 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.12744.1740848723344708796
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Mar 2025 09:05:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=inkjCwEM;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ab771575040so755350166b.1
        for <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 09:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740848722; x=1741453522; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tSDYqlRoh63/e8N2XLyP3zFd+r0q+tT7M1Btskr7q40=;
        b=inkjCwEMiRdDY5Tfqu+jPNGC7FEMkvXd21C3qfdfcfhBbyTzDLyWIsKPKT+wk+ogsp
         GbOxixAbJ5bavOTZkVkZcciJRFOQ/w85xFNl+6oBnXGXm+DUnXvzpVEqDS8kgTyrVu4w
         EN8ig4Ke1Y9n6jCjQX+a2lOdylc1FK5lAQSy5n4ZnWxaeGT6sPN2oFGpAAytDRa2ssVC
         Qi78/NQa/Bh0w2pSYQXhksygQgYERudD2vt6caTBEyHGhUU5LRl5iRoAPXWp8SQdkCGC
         EUCgze1DKio+Y27cp8ddW3TB6fZelJHZkrNVLFnwnapq5JVPh90PjaTu20AaBcajOX6o
         AcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740848722; x=1741453522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tSDYqlRoh63/e8N2XLyP3zFd+r0q+tT7M1Btskr7q40=;
        b=PwLaqmVn2AYkt/9kutQnGLBgxMtQFJMQsuIXgjHeO64LY0HokkvIRVFe2srCb6rX7b
         icAqJViNlqA8Or1nMYOXA91JLEhoM+HVrnLBVOBuXo/rVHMOgqOtJLDB09hRP0Ixz5S8
         X/Z/OQFODHcJhLHnwseOycLfCr7ZkMLpNrEHZwMcKp04o1uwwtsMow3qJcPvo7DQG7ao
         0pmS3Ku4N3jwRwmmMT453taSc1TBpUGsegAhIklW4hQx/fRYKIyH3Z2dxnwM2OnQ+W0H
         6im6NF8i22z8lfHCtj9TWZYyDE8vDrdW622K+Mh0GM3IaF3u7C9iOaxiMsSLKsZK/Lls
         kjRg==
X-Forwarded-Encrypted: i=1; AJvYcCUyah+81n0jCaNulz/g9+N2lvMBS+5tP862trX52N5BCGhnZHlgr0XpDHczBRcc4S53KN27uw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxOfkm2eCCZpz3u6IHFN6B/jOwMeSSA0r7yNnn4R0x/0IoAvVfk
	8KtKpt4sY5H7jS7KWt+bTUl17nzBfvk5+isIqYWFPQw21wGx5nER
X-Gm-Gg: ASbGnctgzOF06KgTZHlj3miwt+Od2OgTNLjKqGGfNHHx8mrE99R9459322MgbrH8K62
	avUcV5zOjt59UCgV/2O09GEAqvmpMkXLZkjOj3+iZ5QcuQ3j2oMDYeq8gfAHU+hlEwNiDk2JflU
	iy3OHE6OdQm41yKh/pOgP8yb1VthcP4PBmzWPBmuiVrHXscXfphwt21edFG+I9HxVPmE6aOC9oX
	7g9rQqEEnrGr/1k+/uUcZ67pMATLQcRgojAs8Uz4V1po9AGZRnaTjW9ymMK4cat+DlKtKJ2BBZM
	iBHQ7PVUQ5NQv5neqC+EPFpAC9RKSQDdf37KZp64+4bfYYxGCvAr
X-Google-Smtp-Source: AGHT+IHKbdS6vhs+eLkm3pZqpP/1suwmW8dt6zVqmH8rdyHvUjMtMxVBOQLTJznnepEUQx07SBnZZQ==
X-Received: by 2002:a17:907:7da0:b0:abf:24f8:cc1e with SMTP id a640c23a62f3a-abf24f8cca8mr811785666b.2.1740848721287;
        Sat, 01 Mar 2025 09:05:21 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b99a6sm509792966b.13.2025.03.01.09.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Mar 2025 09:05:20 -0800 (PST)
Message-ID: <cc0e95c4-8411-4ec8-abb0-61378d978c87@gmail.com>
Date: Sat, 1 Mar 2025 18:05:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: landervanloock@gmail.com, yocto@lists.yoctoproject.org
References: <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
 <4647.1740844594426429510@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4647.1740844594426429510@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 17:05:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64904

On 01.03.25 16:56, Lander0606 via Lists.Yoctoproject.Org wrote:
> Thanks for your response!
>  
> I did have a look at the pseudo and btrfs-progs repository and noticed
> that the pseudo repository contains the following code in
> ./ports/unix/guts/ for the nftw() system call:
>  
> rc = real_nftw(path, fn, nopenfd, flag);
>  
> So, it seems that the wrapper for the nftw() system call just forwards
> it to the underlying system (the host, right?). Is that the reason why
> the btrfs filesystem creation does work, but files are owned by the
> build host user?
> I'm guessing there need to be some code around it to support the "fake
> root environment" that pseudo is trying to achieve?
Yes, pretty much. I don't know from the top of my head if the
ports/unix/* files are used in Linux env at all, but regardless, your
understanding looks correct to me and I think you summarized the issue
pretty well.

