Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.312.1582149699696090753
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:01:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nufhGekI;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id y1so642705plp.7
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 14:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=v5zShKuP6r0mXJ82KhDCw9jVJphsfIpdbJkjTuyqd2g=;
        b=nufhGekIYGv4QcUl0+uVksu5SiRbmm6M08+nA+6EPykFv8nyF3Lqik4Jb229tzc2oU
         Vz4U14fhJh4mxAHJZ2gin3YCpclNqWZ4Mi0g2sY3NkILe0pzh8iG2NwRChVoPY8pFHvT
         bQY5Iz2vJoDuktUZvDSxVQ48z0r+AZ3gRz2v2FJEyBOdgL30yUaFyQuAJP9nAa1YdWUW
         XMCXK2vdTP7biIlovQ9FlPjT8CYABo+1EHgU1bYoiTiMCPdJGmzQh8LtxDfXCpdyeS42
         h6MnfsZQbi8/4lY8sBjZshv7MVNP6mRX+ZvejngXvRMaF3uivGW1FJWspY7eqRgSupad
         gkwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v5zShKuP6r0mXJ82KhDCw9jVJphsfIpdbJkjTuyqd2g=;
        b=AP30DldiI1FxPYUmHpT8cIw4dQ93YGKg2HT4apvb6IKd9yQFjJWLA8KZs+myI1gbfa
         RTABuWP3/sUiowXd7lAtL4Mdd+LaLVvfcd1jhwGmxMdZ30TN+Iv73AgV4ViW6Oe1uuu7
         70pycvl0FRtl026lAA0/IE6MfjMoZlcX9hZbX02vAnM54+jBRwnrL5F9rFKqaBu9Xidy
         NofJ7ge+o1GBdz3kMmn7bTkopxr0ZSdfT/aJoqjUu/mb5ma6miTzd3QAzBRkrzMi4B1c
         2lws9Wp929/B986VzjZ0e5Wics8g8LNzXcJxwoD0pT1DBmQ260uOBAfdXIhnikefBcsy
         YZzg==
X-Gm-Message-State: APjAAAWr/NWPgtm0WcCyy6+nkogW95AXHfUuN5vevmVsSaLYll3EiErD
	kl9bMBFYwZpJ1UcAjqFFeYiz28Xvp58=
X-Google-Smtp-Source: APXvYqx1Wso/OUVLqbimZa+F/cDftwaVu+/JAPWC1j/5p5GQwMaz7bReNHwZp7aWSl1xSh0+JYGYUg==
X-Received: by 2002:a17:902:a715:: with SMTP id w21mr20508129plq.244.1582149698586;
        Wed, 19 Feb 2020 14:01:38 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:cca7:f312:1961:a4b9? ([2601:646:9200:4e0:cca7:f312:1961:a4b9])
        by smtp.gmail.com with ESMTPSA id e1sm594759pfl.98.2020.02.19.14.01.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 14:01:38 -0800 (PST)
Subject: Re: [yocto] do_rootfs task took long time to finish
To: yocto@lists.yoctoproject.org
References: <CAAfyv37jKciEwgCZ362VgHK5r7poixgu3tqONxopJ8rWsJYvyA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <53405c57-f54e-f625-08b6-87e9b5d190d3@gmail.com>
Date: Wed, 19 Feb 2020 14:01:37 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv37jKciEwgCZ362VgHK5r7poixgu3tqONxopJ8rWsJYvyA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 2/17/20 11:55 PM, Marek Belisko wrote:
> Hi,
> 
> I'm debugging strange issue that do_rootfs task took ~50 minutes. I
> enabled buildstats and from that I learned it's quite long. Any ideas
> how to debug this issue? My idea was to add timestamp to do_rootfs
> tasks but I'm not sure if it's even possible. Thanks.
> 

how big is the image its creating, might affect the time. Secondly
use some system perf monitor to see which tool is taking so long.

> BR,
> 
> marek
> 
> 
> 
> 
