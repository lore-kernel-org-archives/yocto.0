Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web09.340.1603812271950669530
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 08:24:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qp3XPH7G;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id bb8so79201pjb.0
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 08:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=yM6qvaK+Gd9SN6mEiBF1X9dciMr8Nc5pXUwcYbkXoGI=;
        b=Qp3XPH7GQI9qQ4kREdgVBDm10t8+A9LnxTJeOn9soQ66d7R8m5z5KkSY/KmJebVA9A
         s/46skHymvtBSvjYu1lmtIZvCvKQNwyJ18JzpGPlFWphqJGFW/HIExcI22USRn4U0Ia0
         rMgF8mywHf3UviKIn1ATG6mk9tpHpKiCLi43K3HcYL5V1yC0fZTBQAQXLuSlxs/HsnoR
         GVRJWDHr2/WBju0PhWn80n4BAKomtDGF7aqHtt8B75pAWdvkyN+SjGZdORud11jcSpgx
         y3pyp2DTC03nsx8GWZ428IASnhc4v65hF54lRZst6v6lIBiy8NQbPMtznX8scYryuSEz
         npbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yM6qvaK+Gd9SN6mEiBF1X9dciMr8Nc5pXUwcYbkXoGI=;
        b=tlyM4sd45reCK7V+SVj7qrLMBxfrsqU0e59K2YhKKSrjB7wwH36cWzS0+HMFT/J8Xd
         i25RuSWR1UE1PV5VwZSQY6GRCaWk2DoQUCn373Wsu/iTbK60sts/RiUhBhrkNMkKSpaI
         S/PAXe1QVM4Jt1HSIrdPl+TEok/PH4xRHUVilKqAWiK1nI7sxZ+VxzGZoH9KX5sVTsc/
         MPtMj5Zj/i1QZwK5F3sF72L1aCMKyHhTZVInxO4qLogrpUWi767dph8/mcV/6p6gihti
         8NnsZj94nUh+z/vr4VSQ6spnIPWqRuVELwkIzqMmhvdq0Oyhvb0uREc8BGHLULrit5YA
         P5mg==
X-Gm-Message-State: AOAM5339hsuXzYvJmTnsy2XXFj023/t7JF8sFmOME19k5l/P16PTgYgH
	rPg3OyEhnD6XhhOpubV4M2J/gkXlPh5ETg==
X-Google-Smtp-Source: ABdhPJxDqGY8rgVswxEieIqHAoDTeHeMbrc6d2WJ4ueAUthZufW1kXMPbTrd3xDNR2rcvsO+GNDRIw==
X-Received: by 2002:a17:90a:7d12:: with SMTP id g18mr2495658pjl.137.1603812271114;
        Tue, 27 Oct 2020 08:24:31 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::bc1e? ([2601:646:9200:4e0::bc1e])
        by smtp.gmail.com with ESMTPSA id r187sm2688506pfc.137.2020.10.27.08.24.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 08:24:30 -0700 (PDT)
Subject: Re: [yocto] Systemd, overlayfs, and machine-id problem
To: yocto@lists.yoctoproject.org
References: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <f5d78cec-328e-1917-bb63-bcd7672c1f44@gmail.com>
Date: Tue, 27 Oct 2020 08:24:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 10/27/20 2:23 AM, Morten Bruun wrote:
> Hi,
> 
> In our current Yocto project we are using an overlayfs on top of /etc
> 
> This seems to trigger the systemd-machine-id-setup service which fails 
> with the error below:
> 
> systemd-machine-id-setup[204]: Failed to unmount transient 
> /etc/machine-id file: Invalid argument.
> 
> The failed service then triggers an error in the test_systemd_failed 
> test in the systemd testimage suite.
> 
> As far as I understand the machine-id setup is triggered because 
> path_is_mount_point() can report false positives when using overlayfs.
> 
> Is there a way to fix this?

maybe pregeenerate machine ID sometimes you can seed it from CPU Id or 
soc ID from eeprom.

> 
> Kind regards,
> Morten
> 
> 
> 
> 
> 
