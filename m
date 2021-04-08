Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web12.360.1617900118731663001
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 09:41:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sKdKA4FF;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id m11so2228607pfc.11
        for <yocto@lists.yoctoproject.org>; Thu, 08 Apr 2021 09:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9LWuzYEgvsiFOtd2F51QvBgFa5T6tDYjRr1Ndttql34=;
        b=sKdKA4FFIqw9JrNTfEXUuCC6VAoHOa+1hlDpDpriQ8kZ9l/78dzctRkybpV8BUeNr6
         OqPGRbHEABCyBIBZTA+DlMdits/oYxHvNnqUDrvGNuWKCRhBktkdbivCl99eXIqpq1ep
         1VSEV5puowuZra3lLmwWNoRjGDMo1Bj/4Y5638krSyX3R7mm96vQ3JN7TRQK5lUwXK+j
         kTNOI7o+2wLR35x2l0fw9uFWYOGYv7hmJUaR1ypeSYxSAduXps6aeG+LjdTbw+ZojD4Y
         qnXoyq63a+A6A9ZtbfOgUlJ4t2tN8c/ndwNVSUbzqGTM6eESrrjUv+mb5e40iwnuc5Db
         /WuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=9LWuzYEgvsiFOtd2F51QvBgFa5T6tDYjRr1Ndttql34=;
        b=P6oJ/UPrWHfT5ZBY4dzRhtJJpMMXcLBWhc4nD+kO3/i2ew9O17RWPj26Xx0Gv3ppbU
         9YSENfjreUAavfdwPHqDsGHb/Sh4lky0bZPdJZQX4JXRfYax2IDDfU0DiLbsAchbtzgS
         wD9rwySAWfJpORdwztfFEaudcQyv15+SNwkG6iG1mG3v6+/BN7Ye6TEcPyy9/RkoOpi1
         XKcUVDLP46fo0bcwj+dw6iLHnaRGj9KEDpiajR33cW2psMf6XMODg/smJ+aKIAuNIVdd
         UrpXmTO13rUz+/XgxY5v+ffPTn0VZ+1Qj7pih6HRURrr6VnCBX7/vESo1xglCdLRJVUX
         94RQ==
X-Gm-Message-State: AOAM533pu204eh95EdYyI1qzaRT7UDcqeQWn8P+3JcbosjqpRkSMfmzB
	aaw9hiz7DnLPbfXdqwbfEylrTqPatF53nQ==
X-Google-Smtp-Source: ABdhPJxHuuPyiiIHfJDCjaYy39SdidHxTGdlYpVmhJsSc6tbe9f8YXRpBVYRf3N+eivqNioWSpIpcA==
X-Received: by 2002:a63:e712:: with SMTP id b18mr4632452pgi.2.1617900117877;
        Thu, 08 Apr 2021 09:41:57 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:b8fd:d0e9:5b84:68b6? ([2601:646:9200:a0f0:b8fd:d0e9:5b84:68b6])
        by smtp.gmail.com with ESMTPSA id iq12sm5864251pjb.9.2021.04.08.09.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 09:41:57 -0700 (PDT)
Subject: Re: [yocto] esdk issue using gatesgarth sources
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
References: <NPNi.1617868588737091497.PZd2@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <ed3183dd-1da9-f534-1e2e-6fc0d09f03d8@gmail.com>
Date: Thu, 8 Apr 2021 09:41:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <NPNi.1617868588737091497.PZd2@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

can you post detailed log

On 4/8/21 12:56 AM, sateesh m wrote:
> Hi Guys,
> 
>                 I am trying to build  core-image-base using gatesgarth 
> sources to generate esdk. But i am facing issue with 
> opensbi_0.8.bb:do_fetch failed with exit code 'setscene whitelist'. can 
> anybody help me to fix this issue.
> 
> 
> Regards,
> Sateesh
> 
> 
> 
> 
