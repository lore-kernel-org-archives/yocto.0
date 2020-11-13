Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.8137.1605289816844850039
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 09:50:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+7xCkpm;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id y7so8198043pfq.11
        for <yocto@lists.yoctoproject.org>; Fri, 13 Nov 2020 09:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KoEgtz/4Gl1dRLtquJIDPpjMHWQhoCX45xoO+RZ3R0Q=;
        b=l+7xCkpmN5CnjGVBP+EpqcMDeDcjd45BWxAUK+ow0aRe7+a4JM9ab8b27Krfowj+Po
         PwO43jIPjgUY0vV4KuSPzjZcUl8yYUodH+JY0/TbtISqAFEpoUtKTEHzss9QViBjFFOj
         NEOPCV8cbObp7WArimEoEesPodHSvtbO8r7YmtWUKulyb+7k3Uj5ItOuEL7TfoWomqAS
         9UvXDsc0/N4H2U08hH91mvxpZIcCESsiFGwnqJ1Ntpef9rJ6h9CNjs7N0kh+2HBYRvCz
         xvnhbHlkUKuzpECslrLwUWs3yS5ybuQ3Cotq1Cd6bRI/ZjO2HpLuH5nOptf0cQyw/sSF
         efrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=KoEgtz/4Gl1dRLtquJIDPpjMHWQhoCX45xoO+RZ3R0Q=;
        b=btBX5Y7GFhiOlmcPMVtpZcVQSjtjsMM4Mz5/7PZ8rfAO48Upj+ru334RAgSJGlN6mk
         nJBSXXZlQTnWLqr8T8wyzcoHlqLDz/BcB3xbLT9tf2E/GCyLdmycX9hvurYy8M0xru8V
         xpDJXdmDWA7JVttqIzeboT++TrghYLzkcvQU5GpzOPW9CUXpw+Gefd2mJZfiAF6vpn6Q
         Ik7GSAOf5cbceSffdBzBhkPkRu9nEo5+5Hi1HTndDH8ZE+PwEcR6qPt8NF8gaGofwFVy
         W6lkmqNYfhG0hAvsyBsF5uC2vrOqjOzEamEZORABNi/m+GGF93+o/Za2Fwq+Ilnz1lQy
         NjYQ==
X-Gm-Message-State: AOAM5315OS9YUcNeVH9cBXjFOGs9Y/8c5VPwubTImDdREtrDifgvzrBw
	MVwOKk5TiMQBt1HOqWS9HcqXIi08QAqBMA==
X-Google-Smtp-Source: ABdhPJzHqSLsMzKooG1k8x7jqyiUBkNskeLFc4XIEvVv1oxINxrh0dBvv5Kld/g9mzBpmBGT+384kQ==
X-Received: by 2002:a05:6a00:2d9:b029:18e:f4a2:d1a7 with SMTP id b25-20020a056a0002d9b029018ef4a2d1a7mr3005408pft.75.1605289813265;
        Fri, 13 Nov 2020 09:50:13 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:2d0a:525f:8d30:8b71? ([2601:646:9200:4e0:2d0a:525f:8d30:8b71])
        by smtp.gmail.com with ESMTPSA id x123sm10507041pfb.212.2020.11.13.09.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:50:12 -0800 (PST)
Subject: Re: [yocto] How to remove Kernel headers from SDK
To: Bel Hadj Salem Talel <bhstalel@gmail.com>, yocto@lists.yoctoproject.org
References: <26L1.1605273643978706653.a0RI@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <72ddb61b-e70e-7273-1a18-19b8e49ff334@gmail.com>
Date: Fri, 13 Nov 2020 09:50:11 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <26L1.1605273643978706653.a0RI@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 11/13/20 5:20 AM, Bel Hadj Salem Talel wrote:
> Hi All,
> I need to deliver an SDK for arch64 but without Kernel headers that one 
> can build Kernel modules with them. (/usr/include/linux/* , ...)
> I only need to deliver an SDK with toolchain and minimal headers for 
> compilation such as "stdio.h" , ...
> 
> How can I do it ?


perhaps bitbak meta-toolchain would suffice

> Thanks, Talel
> 
> 
> 
> 
