Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.19024.1628487701563041026
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Aug 2021 22:41:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=OzTGbZ70;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.128.48, mailfrom: jester@theyoctojester.info)
Received: by mail-wm1-f48.google.com with SMTP id d131-20020a1c1d890000b02902516717f562so10627511wmd.3
        for <yocto@lists.yoctoproject.org>; Sun, 08 Aug 2021 22:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=n/7z3nNzE8nT7Ogw9jXNejhhdjt9AoZRPGMy/A4iWe4=;
        b=OzTGbZ70CwcdwaYyFxoqzgb6Plbw3cOdF9wOaI8+LPq6r+gRQcW9dzgpkYO8MHSd6V
         BtTjQV5HTxfz+20cbYgeq44hbn5dU2xYyg1qmuLkB/D23sI49X26W16dNiEu/Dy5N2o7
         t7A3OB/Idh9ZIn2//M4Vl23wQh4De/mNtjLe+rM1enLJWXeVJrMiWfDAQVudSk4sof3S
         d+s1HrGBEoqF37mioISDtmfWn1UjtW7t516TpBNmL0+aPERBu00j8Om7oRCP+8ndQ2qH
         a+MGeac+EwenZ4fDWmNFGhtFda/s5+m4CJL18smjBOEwM6NTgNf6PGX4qdc8XlJL04Su
         LAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=n/7z3nNzE8nT7Ogw9jXNejhhdjt9AoZRPGMy/A4iWe4=;
        b=YOFlKzgBmhKHlwH+5xyMtrmFtmu/At0dmYaxJXPSDsbzXnvVOB6QMGO5RAYtqleZ4o
         6ReeXCgcBzWSl0aMAQF4Ou9ImORQlO8jHyzJOjW8GAr2Gj4QmpgHLVUxHmObqGf/bNEQ
         Vi5G4+H5st4yxsj6xkCLKbVEP0PiaipBcZ8n38c64XFCIf2mV3MqaCP+KisIbKtLHuTg
         6/KXCTa8khsqECAvTo9rYWWCL2Hun2GlZj8w5jhZLQFujokM8tHIffHJciUKe7fKsqEK
         5Z6BCs5DbdXEpMSvcNTt1OtzScgK9sY33PwKzXS98mEFiEGSA9qq7rU1KtOqjklpbWks
         Si3g==
X-Gm-Message-State: AOAM532g/rXQfkcw6G3dpVtK/MkP138+yrBNH6q2Tp0iYc+1yK2XQu0Y
	gKLhe8IZ8OGyOhaFFuUjIDg1TCQaR/k6kw==
X-Google-Smtp-Source: ABdhPJwv4vVrjLXlmAFOiEzStrCCEYL5XyCabh23oxv04WfuJroeSE3wnWCIKiANCIIcO+tPju01Zw==
X-Received: by 2002:a7b:cd86:: with SMTP id y6mr31785864wmj.181.1628487700232;
        Sun, 08 Aug 2021 22:41:40 -0700 (PDT)
Return-Path: <jester@theyoctojester.info>
Received: from [172.16.3.179] (p50933415.dip0.t-ipconnect.de. [80.147.52.21])
        by smtp.gmail.com with ESMTPSA id p4sm5276791wrq.81.2021.08.08.22.41.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 22:41:39 -0700 (PDT)
Subject: Re: [yocto] How does one add do_fetch, do_unpack to an image recipe?
To: yocto@lists.yoctoproject.org
References: <4b07fb124a79466a9e8ee0d138151931@multitech.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Message-ID: <2fc610b2-2a45-f41b-cc63-40af68632c66@theyoctojester.info>
Date: Mon, 9 Aug 2021 07:41:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <4b07fb124a79466a9e8ee0d138151931@multitech.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Howdy!

Am 07.08.2021 um 02:25 schrieb John Klug:
> I am using dunfell.
> 
> In the documentation I see:
> 
> https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#unsetting-variables
> 
> In case some filter removes the yocto URL, I am referring to:
> 
>      docs/current/bitbake-user-manual/bitbake-user-manual.html#unsetting-variables
> 
> Which has this example:
> 
>      unset do_fetch[noexec]
> 
> If I put this in my image recipe, the do_fetch noexec item still exists.
> 
> In order to fix this problem I had to patch openembedded-core/meta/classes/image.bbclass, and remove the line setting do_fetch[noexec]="1" and the ones following.
> 
> I need to do a fetch for my IMAGE_POSTPROCESS_COMMAND.

 From first glance, I'd guess that the approach is just not correct. If 
that thing to be fetched also needs to go *into* the image: make it a 
recipe on its own. If you only need it during build time, then it should 
probably be a -native dependency, and therefore again a recipe on its 
own. Then the image recipe can depend on it and use its contents during 
the build/postprocess stage.

Greetz

> 
> 
> Thanks.
> 
> 
> 
> 
> 
