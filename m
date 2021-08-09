Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web12.19070.1628487541048760475
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Aug 2021 22:39:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=jUwKwQP7;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.128.44, mailfrom: jester@theyoctojester.info)
Received: by mail-wm1-f44.google.com with SMTP id k38-20020a05600c1ca6b029025af5e0f38bso13595365wms.5
        for <yocto@lists.yoctoproject.org>; Sun, 08 Aug 2021 22:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=1Wcg8pF5orCCIr6Fd997OxD2L9nJVWs+mu4mvGQZfqM=;
        b=jUwKwQP7dCSGs60Q3hXA1e+YZMGWjC39vcow89lJxwGf6vbc3a0E/aGbVaf/VENYr5
         kGTGk6DjpkBqZtMq8rxltvYE8yWQX/Z0tlqmWDKH1RM8tRGfaU9jnqRYVYwztR4PtguZ
         zWkQNfKbQwZJTc0V4qnq/RUk6dTU83hJhMtzosSQQv0J3kaAlczZdXkatdcXqHO7cepH
         Z5Z4ktnTvCMbCmEhoFvcIxJ0mh6sg42pYv9ROTkrksCwSFbTbAueHuFwRNqnWVCkEHgi
         cGu6D9vN4P5tLQhwHm42FaDByiRM9KPPVggtgLKmMyC8NOontgaNnG2viDFyfEdJE/XC
         Tgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=1Wcg8pF5orCCIr6Fd997OxD2L9nJVWs+mu4mvGQZfqM=;
        b=knja4nMkZBdBhuy38hL8Bor2hjxmAAp4dUBXTmil9xjddFS6nNxuRx+Jrs+3f83Iq3
         XpaX4v/6ONY6FoRWP3GNvoucy3CG4k0vt/I/rsCrh4bOgB/TRWiBepj/7oXAlEEu4ceU
         2btbdcN7VfxWuoc19vI5AYOl9rV71EMWtQUbetDzTJ4BNb9fzFcot+DX9BB8tIwPA5Qr
         +8mPNLUUGUw91PZ3YWHdDrZMC4tiNIOQK7E2sm3iG1QmOgB92e9SDKwqSv1OtN6vcjs9
         96neMwp3v5/BxAcA1kVZcoAwUcZ+HzUFCoA4ImbSYj2phTVNZ2JQ4eTBYohyXj8lC5k+
         Jqqg==
X-Gm-Message-State: AOAM532wSg/+uoNZE38t+n6ant63A3zT4ljAoSyRGlACrq5iF0scjRgO
	HdMWOkNXp0D7/5E4GL/rdsJNaJWnk3hEcA==
X-Google-Smtp-Source: ABdhPJzcpuSDwg6c5dRXvhWE+mtZmgwm8PdDemhM1w337yv4o4FIWUq4If5wabswcKotawq/e/CW9w==
X-Received: by 2002:a05:600c:304a:: with SMTP id n10mr32165489wmh.79.1628487539104;
        Sun, 08 Aug 2021 22:38:59 -0700 (PDT)
Return-Path: <jester@theyoctojester.info>
Received: from [172.16.3.179] (p50933415.dip0.t-ipconnect.de. [80.147.52.21])
        by smtp.gmail.com with ESMTPSA id s14sm16228332wmc.25.2021.08.08.22.38.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 22:38:58 -0700 (PDT)
Subject: Re: [yocto] linux-hotplug recipe
To: yocto@lists.yoctoproject.org
References: <EqA1.1628431891241983229.VQoe@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Message-ID: <f7a56922-87ba-d946-92ae-c3bde47569b9@theyoctojester.info>
Date: Mon, 9 Aug 2021 07:38:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <EqA1.1628431891241983229.VQoe@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 08.08.2021 um 16:11 schrieb chiefsleepyeye@gmail.com:
> I'm new to yocto so forgive me if this has been answered before.  I 
> searched a number of resources and wasn't able to find an answer.  I've 
> been able to install yocto and make modifications to the bblayers.conf 
> and local.conf files to add recipes and layers that provide recipes for 
> the components I need.  I wanted to add hotplug and  found there is a 
> "meta package" from yocto called "linux-hotplug".  The problem I'm 
> having is finding out which layer provides that recipe.  Can someone 
> point me in the right direction and/or point me at a tool that allows 
> searching through all recipes, configured for use or not, for recipes.  
> I've used oe-pkgutils-tool and bitbake-layers but, as far as I can tell 
> they only search in layers configured to be used.  I also tried the 
> layer search tool on the open embedded website but got no hits for the 
> aforementioned recipe.  I feel like I'm missing something here but I 
> don't know what.  Any help would be appreciated.  Thanks to all.

http://layers.openembedded.org

respectively for you 
http://layers.openembedded.org/layerindex/branch/master/recipes/?q=hotplug 
obviously... gut it doesn't seem that the information you based your 
question on is accurate, no "linux-hotplug" there. If I had to guess, 
then you found either something massively outdated, or referring to a 
non-openly accessible layer.

Greetz


> 
> Mike
> 
> 
> 
> 
