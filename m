Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.10337.1599696409932616764
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 17:06:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bpUH/MBT;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id z19so3572682pfn.8
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 17:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z1s4PGY0Yfgn5GBClnV1YkIhUaq26EIx+tvXIua68do=;
        b=bpUH/MBTko4jIF07XcJN0x6nP9glx3MOzUp5JApndMnvtt4OmB4C3cMMAtdEZauHwP
         /PLBjYsiuTP95T076kcm3U/M+E896XG/grF83ZLV8FvOCra6IFu61kX47VMjAnxTzz2D
         QWSyXxd60MePblYc+1XVUvQCAwtH9Anc7QTdE6qHn59kFZJThqAmuXV+Duh30iVyx/GC
         h1yqyAtEis/23QqbsurcTjKUa+DqfIMs2CaugxnEPUn4ud0MKFAhH/Seoj+WHzia4Xdc
         hMS5kKQ+2qGVwFRvSTE0f2m1tzBQojEJpkwDwYF1SFric7dYBll0Lmo7GSfr14uZ+1dU
         o1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=z1s4PGY0Yfgn5GBClnV1YkIhUaq26EIx+tvXIua68do=;
        b=BRGaAryip4TCpADFeI6RLYABmAbUCpSdRSEW6kl4N0H5ujizZ+GUfChbtJ9pzz6m4O
         jO2u2iydKbm3wtySugNJ5/Pz7pxAHxqLnvoPQFSGkrj1tzdwC3lxfJYdG5gjWuld6eh0
         T9/Z4EVIVOwCbaRkk5c3a+24K53wtgAfCBnX9lybPXjAQsXtV3ZAob6Hl9hV/RhJ7hQy
         WSPrEXqYzYBmv9b+Yjd13ab1EMCWo6srVSJKYULranJbXSMJJfk1qr1LTreY5hKX+ekG
         s5GLdGMHsmMCLsFFux4sDQJU8I81WIOf7qNyntwN1z6moksldS31bxE5hAc3N/o0maI8
         ntJQ==
X-Gm-Message-State: AOAM533ya7d+cJIXTKr2cIhFu2Zs1RWSz/kKtqqNpf/OkYkctzj9MdbL
	yeyca2dRehzvSVTMOrmlcwEa+FvJrXaYGw==
X-Google-Smtp-Source: ABdhPJy0hjSB4zSui0hoFIsTlykdzBruriWSqX3evsb9Qbv84l283mOPPfZWk0ctnOx212la1K4GFg==
X-Received: by 2002:aa7:9aef:: with SMTP id y15mr2771312pfp.119.1599696409031;
        Wed, 09 Sep 2020 17:06:49 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ff6e? ([2601:646:9200:4e0::ff6e])
        by smtp.gmail.com with ESMTPSA id u27sm3084230pgm.60.2020.09.09.17.06.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 17:06:48 -0700 (PDT)
Subject: Re: [yocto] apt segmentation fault #apt #yocto #rocko
To: Sourab B <sourab@relysys.co.in>, yocto@lists.yoctoproject.org
References: <geDM.1599631034106601409.S117@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <77b78e28-0d08-a3f4-f109-0da9f3187934@gmail.com>
Date: Wed, 9 Sep 2020 17:06:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <geDM.1599631034106601409.S117@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/8/20 10:57 PM, Sourab B wrote:
> Hello all, i was trying to install Google coral PCIe driver from this
> site:  https://coral.ai/docs/m2/get-started
> <https://coral.ai/docs/m2/get-started> on my device. But i got
> segmentation fault. I've done strace as well and I have attached
> the log. I'm not quite sure what the issue is. 
> *
> Commands :
> 
> *
> echo "deb https://packages.cloud.google.com/apt
> <https://packages.cloud.google.com/apt> coral-edgetpu-stable main" | tee
> /etc/apt/sources.list.d/coral-edgetpu.list
> 
> curl https://packages.cloud.google.com/apt/doc/apt-key.gpg
> <https://packages.cloud.google.com/apt/doc/apt-key.gpg> | apt-key add -
> 
> *ERROR:*
> curl https://packages.cloud.google.com/apt/doc/apt-key.gpg
> <https://packages.cloud.google.com/apt/doc/apt-key.gpg> | apt-key add -
>   % Total    % Received % Xferd  Average Speed   Time    Time     Time
>  Current
>                                  Dload  Upload   Total   Spent    Left
>  Speed
> 100   653  100   653    0     0   2176      0 --:--:-- --:--:-- --:--:--
>  2176
> 
> gpg: signal [  174.686462] audit: type=1701 audit(1598596554.214:5):
> auid=4294967295 uid=0 gid=0 ses=4294967295 pid=876 comm="gpg" exe="/usr/bi1
> Segmentation fault caught ... exiting
> Segmentation fault (core dumped)
> 

Discern between source distributions and binary distributions. Yocto
project provides tools to build either of those, but it does not support
  interoperability with other binary distros e.g. debian/ubuntu/fedora
etc. so while your yocto based distro might be using apt for online
package management, it does not mean it supports feeds from
debian/ubuntu or other dpkg based distros. You have to have yocto based
binary distro feeds.

> 
> 
> 
