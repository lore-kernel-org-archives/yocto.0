Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web08.728.1615582717443821822
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 12:58:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJqTLuC5;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id y13so2711178pfr.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 12:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lHt/CKCwjV9CSeJlN4W19yWEmUrB1DGrQKVd5LMuek4=;
        b=EJqTLuC57VZQYUD2TfpSxu06UeGdVJqY4iLFaF9g+6iLo9bfTj+JsZMikwntbeuO/A
         0K5YNKmo+JOiIpOPR6Tx/nar/TiRq5dTpRZHl/t4ZAXirZ5Y+AF3Ynxaaf5A0CJXd4KU
         JHl+Ht6AYEtpffnq/csmxmluzv9aDhGY1rHSjxGppiVuSH3L/WFUJQDXy/7Ww2op00MQ
         A5AxeyDL2Mtjenf5WoKYOi85a4tRFxm/XLfguoGdsOYCQ6e8TjzaVqDW/l25pjQypCe7
         KadGXe3OvAXkKEwgbrxHd9ZLXXH1Gf7JtwlVMkvZzyKat9uWdV6sJlgUiqyoZuhr/ap6
         kDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=lHt/CKCwjV9CSeJlN4W19yWEmUrB1DGrQKVd5LMuek4=;
        b=FnbrKlt9rhs4m0iMFzuXdrlirUhZHuA1sy0aem9EuQf5DcBBvhrtqd0ORRDs3brCrn
         C0K5B0z/5KfkCxVGqLciqGb/DXiS1cAL/A239gnDkNxmeA74Tn7cL4t43pwRHjpHMq5I
         RLkBxSERXO7/NVTmep3VIC0TQgZZdDhCSjoZxlIRm0syqOjiMLkqn/JfwoqzdDNnIZj5
         40juOCQdfvfmH02hG7mdxsC0zl5knke/U5NJhu8SWW3UF1lu59CmGNrzUSC3ivpQfHds
         hwq81koi1QBn/1iLkR7/GCRVUgmEOXzol2HLIsOqpKBKR5MVCItv8ASC0gkdoZjwgui7
         v7Rg==
X-Gm-Message-State: AOAM533PYzLGrrAfwA5tB3T9lP54pC9e2eAQdAmYCJ4gnCJhAR5mVy5P
	RW6j3rHqsvy6OHYfozdcQT2090sWXoNaKg==
X-Google-Smtp-Source: ABdhPJxYXhY1aVEqSMcwL7BQQn+hsH/e290bMSLXqz6ksCjYXY3qd6If2dGASoaPB5nLPZ0tAf8q5Q==
X-Received: by 2002:a63:5c07:: with SMTP id q7mr6915440pgb.52.1615582716386;
        Fri, 12 Mar 2021 12:58:36 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:9c7e:15b:d723:6fd9? ([2601:646:9200:a0f0:9c7e:15b:d723:6fd9])
        by smtp.gmail.com with ESMTPSA id p190sm5989101pga.78.2021.03.12.12.58.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:58:36 -0800 (PST)
Subject: Re: [yocto] debug symbols and INHIBIT_PACKAGE_STRIP = "1"
To: AFraser <afraser@gmx.de>, yocto@lists.yoctoproject.org
References: <95b72d76-a731-dd29-3385-1bf03de08f58@gmx.de>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <3c7c1b3e-8628-f372-10a8-2a6c09be0ca9@gmail.com>
Date: Fri, 12 Mar 2021 12:58:34 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <95b72d76-a731-dd29-3385-1bf03de08f58@gmx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

check the build logs for the binary, see if there is some sort of symbol 
stripping happening. Perhaps its using install -s ?

On 3/12/21 3:17 AM, AFraser wrote:
> Hi,
> 
> I'm using bitbake to build an application and I'd like to troubleshoot 
> some segfaults that are taking place. I've set up gdbserver on a virtual 
> machine running the application and can connect. My problem is that I 
> cannot seem to get the image to build my binaries without stripping the 
> symbol table.
> 
> Whenever I run:
> 
> |objdump -t _binary_|
> 
> it shows 'no symbols' under 'SYMBOL TABLE'.
> 
> So far I've added the following to build/conf/local.conf
> 
> |EXTRA_IMAGE_FEATURES = "debug-tweaks dbg-pkgs tools-sdk tools-debug "|
> 
> |INHIBIT_PACKAGE_STRIP = "1"|
> 
> |INHIBIT_PACKAGE_DEBUG_SPLIT= "1"|
> 
> I also tried adding the following to bitbake.conf:
> 
> |export CFLAGS = "${TARGET_CFLAGS} -g"|
> 
> |export LDFLAGS = "${TARGET_LDFLAGS} -g"|
> 
> Strangely, the size of the binary I'm looking at has increased. Since 
> making these changes and the new build took much longer to run.
> 
> Running |bitbake -e _recipe_ | shows the environment of my recipe and 
> reflects the changes made in local.conf.
> 
> Is there a way I can look at the exact gcc command that is being run to 
> make sure it's not still being stripped somewhere? I can't seem to see 
> it in the logs
> 
> 
> 
> 
