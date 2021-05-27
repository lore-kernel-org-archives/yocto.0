Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.1512.1622158093860127034
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 16:28:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NXAU+pUl;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id m124so1123796pgm.13
        for <yocto@lists.yoctoproject.org>; Thu, 27 May 2021 16:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2ZMBDYjcgyL+cmG8qn3QbxmOX4vxH9Ku+4DaxDrkOWQ=;
        b=NXAU+pUl3cdIepgBCzptv0kzHmxpaxHcp8ZtJGHrnXoN0fZl49wza9Pgpr1QXyyn/W
         oRxLCSyUq45i2cACy84h1fbaFQCFOmuqkDkfcFEvaLZg5bdMrzpUJOqzAzwtQH7Vy/gV
         fXMNaMMYtz+63DaOR6k1U3kvkhjFwaBAKh60jlRYgw5iFNz+UkvK6a0hhhhxQdci7mid
         HvHTiI83vhEWKqcDfaeKC6vTR0k0dVzR9as2KN4kJYD8j+HA6SKzhYyccBOdhacHwYS9
         xtad7+PsEXUnS4b2u86yeIr4ipJah1Uq89bH7MUIjrgPuJqAPPDL1iYLqRJpbsG8SvDR
         r65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=2ZMBDYjcgyL+cmG8qn3QbxmOX4vxH9Ku+4DaxDrkOWQ=;
        b=kVe/o6rm65+J7kgf73lI8JOIwXxNxQY5i2/DtJM6yx8PfrYXWrkGA0AhzfU44uG6ag
         h7r7kSETVXOugNOwU1KOsbGNjgj6oAGQDN/5U9vYc6ngdo0in1GEVc5+oNj9z+OMwJHR
         /1cKiR/zCYrh5DtMA989RCziIG+UBCrofrwamDisNWQ1B7aTeFkCG2hRjdkIw76yniwj
         mGbdN6uhvQ84UkwdQR//02vek0kjpUaEccDuWzrylvQve0DkEZ6zBxlxlTzQlA1FN0cv
         6NReNSigeY3kvSmmQ9N8J7Fcrqm4jWT5vYAocms9+R1MM/B0LAQ8UtHfVYihu+dfHfcm
         xuBg==
X-Gm-Message-State: AOAM532vGBI7SKKz75mvKyFS6R2bi7iuESyyeq4jVILrqQORiKn/vNqC
	UV8enGFzTNyaUiilwEIgT3zoWwdm1Y3WCw==
X-Google-Smtp-Source: ABdhPJytW1ffRaUz9scKThY0Z8lhAeIRzmNCYnZDZ/6P9dUKT3LqTeLrPuMm3K1q2+5f2KID2n3S7Q==
X-Received: by 2002:a63:b30a:: with SMTP id i10mr6012362pgf.306.1622158093151;
        Thu, 27 May 2021 16:28:13 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:1d7:355f:d5bb:1bea? ([2601:646:9200:a0f0:1d7:355f:d5bb:1bea])
        by smtp.gmail.com with ESMTPSA id h22sm2686348pfn.55.2021.05.27.16.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 16:28:12 -0700 (PDT)
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: sayinswapna@gmail.com, yocto@lists.yoctoproject.org
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com>
Date: Thu, 27 May 2021 16:28:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/27/21 3:04 PM, sayinswapna@gmail.com wrote:
> Hello Yocto team:
> 
> I just started with yocto and would like to know the process for 
> switching the init manager from systemd to sysvinit.
> 
> I tried this options in config file
> VIRTUAL-RUNTIME_init_manager = "busybox"
> PREFERRED_PROVIDER_udev = "sysvinit"
> PREFERRED_PROVIDER_udev-utils = "sysvinit"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> DEFAULT_DISTRO_FEATURES += " sysvinit"
> 
> I see a warning when building my machine:
> 
> No recipe for target:
> /recipes-core/sysvinit/sysvinit_2.88dsf.bbappend

Please find out which layer is adding this bbappend you could use

bitbake-layers show-appends sysvinit

It seems recipe version is newer perhaps and the bbappend is still made 
for older recipe, these things happen when you mix release branches for 
different layers.

> 
> When I run this build on my target it still shows me systemd init manager...
> 
> Not sure if I am missing any options.
> Could you please let me know if there are any pointers I can refer to?
> 
> Thanks,
> Priya
> 
> 
> 
> 
> 
> 
