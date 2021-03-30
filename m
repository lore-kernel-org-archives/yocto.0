Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web08.1317.1617145217632209545
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 16:00:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeMNKk8m;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id 11so13146553pfn.9
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 16:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/HSX600RHH6PO/DMlFDt0JKno24t/HzdioP7ZxbnjJE=;
        b=QeMNKk8mkiC6QJHAsMlhSWdlaGUps7yFRvgnlgvUXyPiFSHEY0pDWQh56O2gIrGZIk
         sXRjzO5JDwFpCOowVBO9ZV5Mz+pkaDxf0QDsPS49fQlO0Njt3ECuEpvONp4T1jX0b36k
         +L1ljyU65hze7ZsJqZ0vkL5cJwQNSFxErYJK3code4rRtT3G+kI0cWOA1arW+fkO+4BF
         d98TAJV+Lxr/4qCANH0PSgn1jJUsfhOVZQveXL/O80RGGzcMv5FC98CpnJ8b4HPMXYpB
         xut+8/M1pXJ1a2sWVrHzXW+xeSJrhBFG/UyXmpwp9cK6VwUxv5oYfDsIrDVdaFo4Law4
         HxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=/HSX600RHH6PO/DMlFDt0JKno24t/HzdioP7ZxbnjJE=;
        b=DUZrxiOAj06ezt2QdrI187CPijpgIyLxXJvs27XVEr6V9e5iXthdtWIm/EFCdYnDD7
         ISAm6ANcedfqaH7LS8p0oHXTWx6vJL03uykkEJCtWQlqOHPyvuhwqU/wS46F6FdttgoD
         nk07p4nszoRJTpsvhxl+WhZ9maY3cw6B5960Owxh2KgVO9bA35yCL3UPJa58Gvmes9/X
         c/kpNxqPuw47PFP8fUlMmLIFH1EvzR8MKWXNnGKG4FHIIxvjSMI/6ybFkx/R/e/kyEXB
         1n6kCmmMetATU3fy+152ylw8FQcpasTm4x+aco33ytI3Rl1DCvq2VVNRTd2Eoygzs9eQ
         jGVg==
X-Gm-Message-State: AOAM533GadywMQqzQsaBL+SDjEu0Rox/5nmKyroDwlIkO16hn2l+viHg
	cQuLSlhtaEg5HM5gZcAMiNdsnAqY+1msqg==
X-Google-Smtp-Source: ABdhPJwsOaPQmVQAt3bq3NjDnncPycRY38qepNTLmCeb97vsbNjbLNeIQaTZj2ByCb5JZRkF/Pv4Qg==
X-Received: by 2002:a63:c4f:: with SMTP id 15mr369997pgm.379.1617145216402;
        Tue, 30 Mar 2021 16:00:16 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:d828:cc50:358c:26a2? ([2601:646:9200:a0f0:d828:cc50:358c:26a2])
        by smtp.gmail.com with ESMTPSA id q19sm258915pgv.38.2021.03.30.16.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 16:00:16 -0700 (PDT)
To: rohitbjadhav1@gmail.com, yocto@lists.yoctoproject.org
References: <XSIe.1617090160270326998.hymp@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] How can I use old Package version with latest Yocto version. #cups #zeus
Message-ID: <48b05c22-d0ed-a9cb-e9b1-0b90d3f00a77@gmail.com>
Date: Tue, 30 Mar 2021 16:00:15 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <XSIe.1617090160270326998.hymp@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/30/21 12:42 AM, rohitbjadhav1@gmail.com wrote:
> Hi
>     I was using very old version of Yocto i.e. Krogoth. In that version 
> I am able to use following packages with respective version:
>      Package name   Version
>     Cups                     2.2.4
>     Cups-filter            1.14.0
>     qpdf                      6.0.0
>     Opencv                 2.4
> It was working fine. But When I switch to any other version of Yocto 
> like  Zeus [which I have tried on ].
> Specifically for cups-filter pakage observed following errors while 
> compilation and generation of rootfs
> ERROR: cups-filters-1.14.0-r0 do_compile: oe_runmake failed
> ERROR: cups-filters-1.14.0-r0 do_compile: Execution of 
> '/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/cups-filters/1.14.0-r0/temp/run.do_compile.17590' 
> failed with exit code 1:
> 
> It is observed due to wrong c standard while compilation as some log 
> says as follow:
> warning: ISO C99 doesn't support unnamed structs/unions [-Wpedantic]
> warning: ' LPT #' directive output may be truncated writing 6 bytes into 
> a region of size between 1 and 1024 [-Wformat-truncation=]
> warning: 'strncpy' specified bound 1024 equals destination size 
> [-Wstringop-truncation]
> filter/pdftoopvp/oprs/OPVPSplash.h:53:3: error: 'GBool' does not name a type
> 

it seems you are locking above said packages to revisions you want, but 
they also have additional dependencies, eg. the one which is causing 
issue here is poppler, since poppler version in zeus is 0.80.0 and 
krogoth has 0.41, however poppler switched to using standard types for 
bool starting 0.71,

my suggestion is to use the versions that come with zeus release and 
forward port your app to consume them or second option is to fork 
versions then you must look at what would be the right set of packages 
you need to lock to older versions in-order for you to keep things going 
forward.

> Just Need some guideline to resolve this issue.
> Please also suggest is there any way to use old pakage of Yocto version 
> to latest Yocto version.
> Thanks and Regards
> Rohit
> 
> 
> 
> 
