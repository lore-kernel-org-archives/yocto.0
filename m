Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.20260.1604530495030950197
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 14:54:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o/JwWd9i;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7CE6038C02B9
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2020 14:54:54 -0800 (PST)
Received: by mail-pf1-f177.google.com with SMTP id 133so18561463pfx.11
        for <yocto@yoctoproject.org>; Wed, 04 Nov 2020 14:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ot9gZXgLXxJUjoRPD7gyEEmvBsjhVGS9zcYMt3Oi0U0=;
        b=o/JwWd9iwp/VQfpDap1hBLussg6EhXGEgIJBBsN21VycCG2eU3kxGnzUNyD1JtAY7+
         KLK/BJ1msXgbQ8C4rATpMdY/HddwgkOUvy+D8dwVYx3URNE+aGjXOy2Ro56i1hT4DqKQ
         tchMeswVM5dzSMwTbmRIeLBDr4a6mD4t0BMArniZE5qA096vJA3gzPQuhXhMBHg+4PRE
         RxBaVtmu9reaePTKTxGrw/dJ4HczATj+HcHfkii0GUp1khxNTOgCPWbIGNKDiAai7pNM
         sxfIk562h9hmibjqT+0U5w3czg32vlbM0sbsna/GUWy3deYGtuByBXbQVKxp81PReEYT
         lFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ot9gZXgLXxJUjoRPD7gyEEmvBsjhVGS9zcYMt3Oi0U0=;
        b=EWO/6TQ5afhgk+ZNNi1NQr+ZnObTJ7z2hCb4cyU6C1ZQ4yinWpQkHm0SR5whQw/7oA
         dep7vmNuMFQVTlXrMv7Nqxo/hdr9Bi49EnRkzk/L1q/AQrtKNqzSDZBtYPgs8MAWDJVf
         tvQsW+rc5UWxQXbjkdkYxNSM1k8yk+XReXqXQt4MrpPvCC9Xu3gBUjkbUEFhipWh0rF1
         CV7GsEKyXDojELNIscbwlL2bZXGqj/8j97E3zb3LaSGYmhpwsCvnQXcjxrACQfJ/wfyy
         a75GlnGoig1i6SSZUWDnD00SBQeQv+cGviUS1AKwOk7/d4sbkiK22Y5PTo4JwqD1cfte
         3bQQ==
X-Gm-Message-State: AOAM530UDKdp8zkUPGi8g9geCX0Tu27Qn3sNqDTl41/Ww6TDL3FiNTS5
	cDPI1t/6wpKfCGy9to/WTjGF/MM+WzlR7A==
X-Google-Smtp-Source: ABdhPJyTJRjZc3NWcjKt3iC/GS/YGvVNOBMEJ/oWj5i44kmY8R2qEZuBj0r9zA/dZKjrKBix7su3hw==
X-Received: by 2002:a17:90b:1098:: with SMTP id gj24mr179143pjb.140.1604530493418;
        Wed, 04 Nov 2020 14:54:53 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:e1b6:7072:230a:1b80? ([2601:646:9200:4e0:e1b6:7072:230a:1b80])
        by smtp.gmail.com with ESMTPSA id 21sm3654038pfw.105.2020.11.04.14.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 14:54:52 -0800 (PST)
Subject: Re: [yocto] how to use meta-cpan layer in a reproducible way?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <3f3317dc-a3f8-60d9-e7b0-1328af1ca7a2@crashcourse.ca>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <df3b6858-8469-3639-8847-ec552c484756@gmail.com>
Date: Wed, 4 Nov 2020 14:54:51 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <3f3317dc-a3f8-60d9-e7b0-1328af1ca7a2@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/4/20 6:29 AM, Robert P. J. Day wrote:
> 
>    colleague wants to add some perl recipes to a zeus-based image, and
> found the meta-cpan layer, which contains a number of desired recipes,
> but the structure of that layer seems a bit sparse.
> 
>    first, here's the entire set of branches:
> 
>    $ git branch -a
>    * master
>      thud
>      remotes/origin/HEAD -> origin/master
>      remotes/origin/daisy
>      remotes/origin/jethro
>      remotes/origin/jethro-next
>      remotes/origin/master
>      remotes/origin/master-next
>      remotes/origin/rocko
>      remotes/origin/thud
>    $
> 
> where you can see that the branches jump from thud to master with
> nothing in between, so there is no "zeus" branch to focus on. also,
> there are absolutely no tags.
> 
>    finally, it seems that the recipes simply upgrade versions
> arbitrarily, all on the master branch, so if you grabbed the "master"
> version of any recipe, there's no telling when it might change, which
> makes reproducibility a bit iffy.

right, so usually it means maintainers keep master moving forward and 
perhaps test with latest release or master or perhaps all releases after 
the thud branch, you have to ask this question to the maintainers. but 
yes forking and then branching your development from master is perhaps fine.

> 
>    what is the proper way to take advantage of a layer like this? you
> can't even use PREFERRED_VERSION for a given recipe since you can
> never predict when that version will suddenly disappear from the
> master branch.
> 
>    i imagine the best approach is to simply clone the layer, check it
> out to a specific commit ID that works for all desired recipes, and
> just leave it there. or just individually copy each version of each
> recipe one wants into a local layer (yuck).
> 
>    thoughts?
> 
> rday
> 
> 
> 
> 
> 
