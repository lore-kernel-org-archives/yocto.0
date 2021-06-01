Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.95.1622564612038651876
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 09:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nevJ/vXA;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id lx17-20020a17090b4b11b029015f3b32b8dbso1759867pjb.0
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jun 2021 09:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R7XGEYAueWh3/MQlb/Uzo0jXaAE/0GHzUSCY/lz9dlY=;
        b=nevJ/vXAsrz1u8lEh/2ha5yMKJQTNOVBCEUr1WpHfCKcPz2c7icNk3+0A+vwjVQFQr
         3UE7wXcd56yTKKKfEFyjAwm26FP/JgLexdpC2Jq5TIK1j35Yy3zaByFCd3t+n3yIKuN3
         Y+O2WHfbGxjRAS99wKku3hsK13yvYggqQxv8oi1OAKo4cy2rIN4WV6gbHmkid3EK+l+/
         hwB05dQ38GOJdlZKfRoObXqyJhSoS+Hp1ia78J1rjThuCQh+evIIWdrPPJp6LPHRW/+A
         19AZqWZEemlAq7dV7Rrzyr4kLvJmbhey4J42Fkc5c92CKkDhPP9zll+iBA3k5UpmSbv4
         ocqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=R7XGEYAueWh3/MQlb/Uzo0jXaAE/0GHzUSCY/lz9dlY=;
        b=o7hLwVRy5IVrsXkuaJUrGFph9Xq9avUuiW3XSR1fmPnvhtbfPC71zZbBzszZSZmSoD
         hz8ykiYzLtiJQmR8Pdv3upCAAifV7sQyBHjQIa4HtNKuLgQLLQFmBa5oTL8hSBSnbrc1
         2qpS7nH4oGSi2fgtVqfLw/GhPYHMj5HsQTh9inz0C2xW53gT0R+rZYxurtprCzMC4he9
         HHGUJ/sZdyrK2NVE9ORg67VV9g0oVHvKu3RhAD9gWfx6tCJ8fcbd1QFFB+O9/adquH98
         qAeipLnfBIuXVmYmbwQFIwW/XJsx606DlkCkTYkOarCrHv+M5sp+9b7oPy+ks/h1b3Yb
         aw0w==
X-Gm-Message-State: AOAM532lliQ0yWmmiAzz1SDr4gXUIFP7I+gzqqaiHr4uwW7p49NtGe4U
	XGO3UfFWSyWyITXheRkaFMIyREn5H0VVHA==
X-Google-Smtp-Source: ABdhPJwl3L1xRsUgdWBC0mWLP76YP7nwDZQDsOJ8BOj27wzuumJA1t3Z11tYA79w6w0o4mBUyBIpoQ==
X-Received: by 2002:a17:90a:1588:: with SMTP id m8mr663627pja.31.1622564611131;
        Tue, 01 Jun 2021 09:23:31 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2cb5:4fd9:8b7d:2e3a? ([2601:646:9200:a0f0:2cb5:4fd9:8b7d:2e3a])
        by smtp.gmail.com with ESMTPSA id f6sm2418035pfb.28.2021.06.01.09.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 09:23:30 -0700 (PDT)
To: Luca Boccassi <bluca@debian.org>,
 Paul Eggleton <paul.eggleton@linux.microsoft.com>,
 yocto@lists.yoctoproject.org
References: <20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <71099fe9-7acd-186a-e204-18347a83359b@gmail.com>
 <07ed91b66206ee237ce2831e2ac3792decbb3cd1.camel@debian.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] systemd, ELF binaries and runtime dependency tracking
Message-ID: <d54534bb-cc7e-498d-20a6-00c46a1662f0@gmail.com>
Date: Tue, 1 Jun 2021 09:23:28 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <07ed91b66206ee237ce2831e2ac3792decbb3cd1.camel@debian.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/1/21 9:13 AM, Luca Boccassi wrote:
> On Tue, 2021-06-01 at 07:58 -0700, Khem Raj wrote:
>>
>> On 5/31/21 3:40 PM, Paul Eggleton wrote:
>>> Hi folks
>>>
>>> Upstream in the systemd project, a proposal has been made to add a special
>>> section to output ELF binaries to record soft runtime dependencies, so that
>>> they could be read and utilised by distribution build systems such as ours
>>> (they would be translated into RRECOMMENDS in our case). At the moment that
>>> doesn't seem to have generated a huge amount of interest in the traditional
>>> distro space, but would it be interesting for us?
>>>
>>>     https://github.com/systemd/systemd/pull/17416
>>>
>>> For clarity, we (Microsoft) will volunteer to do the integration assuming the
>>> above pull request gets reopened and merged, which is more likely if we
>>> express our interest.
>>
>> Finding dlopen dependencies is a neat idea, but it has to be accepted
>> cross distro, and also applications have to manually declare it in code
>> if I understand systemd's patch correctly.  This will be hard to
>> accomplish as you can see changes are spread across apps from distro
>> point of view. Perhaps there is a smarter way of detecting adding them
>> in ELF spec itself and then have tools like linker help implement this
>> and also possibly collect the information or guide the users to achieve
>> this would be helpful.
> 
> Yes ideally ELF shared objects/the linker/the loader would support weak
> symbols (like dylib on OSX). Unfortunately they do not, and it seems
> there's no interest to add it becasue there's no concrete use case that
> shows it's useful. But that cannot happen until there's some support
> for it. Chicken and egg...

right and thats why I will be reluctant to go too far at distro level 
unless there is general interest in wider communities as it can make us 
an island.

> 
> There have been lots of theoretical discussions about pros and cons,
> and my hope was that if at least one distro could find it useful, and
> could show that it is in practice useful and the theoretical issues are
> not that problematic and could be solved, others would follow suit.

you could tool it as a packageconfig for systemd alone and run with it 
and see how it pans out.

> 
> So leaving aside other distros, is this something that would concretely
> benefit the Yocto project for handling the systemd recipe? There are
> currently 12 dlopen()-based optional dependencies in systemd, and the
> number grows with each release.

we could certainly try that, provided systemd upstream is supportive of it.

> 
