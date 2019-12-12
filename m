Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
 by mx.groups.io with SMTP id smtpd.web12.3236.1576132281362786853
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 22:31:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m2II7Vbc;
 spf=pass (domain: gmail.com, ip: 209.85.166.172, mailfrom: raj.khem@gmail.com)
Received: by mail-il1-f172.google.com with SMTP id b15so1046527ila.7
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 22:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eAYvaDCaxssLmWR1suIgWRI6FBwUYO3lkcbh5KxGmGE=;
        b=m2II7VbcmY6wXyzfl7wBOJZn19ZXKUa7lNh+Y2lpq/f4iVylCvLfjNufLT57yvX1FV
         o2iJVNMpvQtV1ggjxjCmO52Cao1CRYXHmTSALHuAg5RbGoPltvOxg/cIAfYNEzP+2uSk
         2S97yAhpSBwqJDl9p3yERcB7jLzfAfwpfITa6ZW8RN5BVVj22oJMwq5kS6aocHJRMzgC
         aPApWpJtnTZOFIA1mImjpjdR3CjmIqVkZQnOg9tkZBc8qfBJ6QSOuwDcn8GrliR7e6c8
         IAsqfJoELsDkzBaC1C7JXM2mGU8M4BP/Oi+9qBCjbRB9mHMVu8xacNEqpT7w3vHve4O7
         IzJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=eAYvaDCaxssLmWR1suIgWRI6FBwUYO3lkcbh5KxGmGE=;
        b=XIY40F2GdoT0pj+WZfz8VbK6bppQkQIwk11a6OzEVTRqMfDjo0uDxUbSswjUEi0lmy
         +gdJQ4cCzFjsAIAh2osAR/nQoo39cgAN+fWwHhgDG9+SjqcVasKknCBHi35pVxmfeTEC
         wEzOGNeFSZ310RY2qLjkjDj51mBRYySLJ+5fBfMG/o7oYp6QCLtHmwRyVf9X+W3QBIK3
         e76mLqF90305NfZLcHZB4wgZihh+bmyhA78AtY5rj5zVpS80YWRXBKwmIITtAOfZJ2k8
         KEqL162nQSMORct2OmxS4UbrKNi6z16DtdnSsY4A8qFVL3U919oFwb6tztRJ/PtQXHks
         PpFg==
X-Gm-Message-State: APjAAAVP7mERAg4VZfs5zrMrYF31ZFUe927rVr3WvDQaK8ifEPSd+dDC
	cvQ+Ec2T4QDEc1KJJkz4RPpmYqYdRho=
X-Google-Smtp-Source: APXvYqyvANi3k/dcsdWkfPpiXC+IVnGrOfRxvGjHIeNvt9prVs9c2bimkMbZ1C+WK/5aXF9jGio5kw==
X-Received: by 2002:a92:8995:: with SMTP id w21mr7020706ilk.231.1576132280165;
        Wed, 11 Dec 2019 22:31:20 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:9937:f7df:9687:6369? ([2601:646:9200:4e0:9937:f7df:9687:6369])
        by smtp.gmail.com with ESMTPSA id t88sm1430408ill.51.2019.12.11.22.31.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2019 22:31:19 -0800 (PST)
Subject: Re: [yocto] Build issue - newbie
To: yocto@lists.yoctoproject.org
References: <9izc.1576130373846027647.fA8A@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <c866ace5-04bc-fa47-5010-627f815cb12b@gmail.com>
Date: Wed, 11 Dec 2019 22:31:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <9izc.1576130373846027647.fA8A@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/11/19 9:59 PM, Sujoy Ray wrote:
> Hello,
> I am trying to build yocto project and having following error:
> ==========================
> ERROR: Unable to start bitbake server (None)
> ERROR: Server log for this session 
> (/home/sujoy/OpenBMC/openbmc/build/bitbake-cookerdaemon.log):
> --- Starting bitbake server pid 2104 at 2019-12-11 19:23:03.474760 ---
> ERROR: Layer microsoft-layer is not compatible with the core layer which 
> only supports these series: zeus (layer is compatible with warrior)
> =============================================
> The above error happens when I run /bitbake obmc-phosphor-image/ in 
> Ubuntu 16.04 running in VMwarer ( Windows 10 as HOST).
> The above command succeeds when I use Ubuntu native installation.
> 
> Could anybody please help?

it seems your project has mixed releases of different layers. So please 
describe how you setup your project. Usually you should be using same 
release/branch for all layers, unless a layer states otherwise

> Thanks,
> Sujoy.
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47646): https://lists.yoctoproject.org/g/yocto/message/47646
> Mute This Topic: https://lists.yoctoproject.org/mt/68263780/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

