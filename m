Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.5365.1628143603392241380
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 23:06:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uz4nSqei;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so7059365pjh.3
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 23:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EnhJK/lwLdJSIqKfJKpMdtvzJo+Rqj24WUOyt6vdXNM=;
        b=Uz4nSqeiPUucHxEB8EJe3ghdDxFuam8P2sIWAtywmdllunS7eFNvivJYN5rk/0X+Bm
         CabzHCQLBmesLrY3E2q0o3THPVS8pwBE7qKCSJoa0L1cvd9R0XrJe833ohXXnOEs2txj
         WXAh98YqBolwE684nn2b27IWBLyGejEwuptE5pI2dTJtHBPTbXE5MBGO87F4Vrvg67C7
         XLEtCTD/sF7YgyAXgu88jvyq68B+gqRZthu0DMOxArlHtXroLae+adZFQ+IIJMnjfCs1
         /MV0Fhmay7N7WXnS1IBkwgeTK+ADlHeHAj7iaWSVK5rSiWtb3OFpG06Sln3hK6gl2sLF
         d80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=EnhJK/lwLdJSIqKfJKpMdtvzJo+Rqj24WUOyt6vdXNM=;
        b=HvDMqu3QoNVDnpgydDA+mneub7DeMxdKggL2ZsEDbULcM3i79g6RccFD3KaWKsg6sm
         /kPiIEI6XM5LC4fVWR5vgfxduYlb+0Inhg6xjHpUqYHeRkvrqiCwcYTcY8YqpkbkKvMT
         S+uQbFWM/Owu0cQZoDom/+Y0U7DjsE9MuhJwQOiPgDSAVM6wlPmO3jpu+5eMMV6DWGp4
         loL2PGX2+7IOFI7WwJJSz6DoQWNnqdU++csHFfkoKClH4eD34FB352oTWdD1BsbbWbAA
         ko1EFQDJwLXwAuRGsm1RBVzWW+Zojf03NUk1n2uJG0Nv9Uk1yumd1T6ocbiEu9otn2WR
         Kjmg==
X-Gm-Message-State: AOAM533Dat1k3BeixsVoHznoPdByLdFHF2ifXXZ35jrY5Cf+Z5VawdEI
	E29fHEkGJ8F/i5IWQktq21puQdp+KYWQ8g==
X-Google-Smtp-Source: ABdhPJwE98M6d1zUU6SUr/J0duCB0aiOOnASxfpuVYZRQimR87hN6CvbFS43FfU2LPGGXyliCOXYgA==
X-Received: by 2002:a17:90a:de16:: with SMTP id m22mr3097146pjv.54.1628143602784;
        Wed, 04 Aug 2021 23:06:42 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:61bd:9658:157a:c74c? ([2601:646:9200:a0f0:61bd:9658:157a:c74c])
        by smtp.gmail.com with ESMTPSA id a20sm8031722pjh.46.2021.08.04.23.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 23:06:42 -0700 (PDT)
Subject: Re: [yocto] cross compile python #raspberrypi
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <ieT9.1628065061432551162.p7cn@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5bbb4f0f-5c11-63f5-02d8-bdcdaacc79c0@gmail.com>
Date: Wed, 4 Aug 2021 23:06:41 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ieT9.1628065061432551162.p7cn@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 8/4/21 1:17 AM, yasminebenghozzi6@gmail.com wrote:
> Hello everyone,
> So m working on the yocto project, my image is ready, but i need to 
> cross compile my python script from my pc to the image. Is that 
> possible? because i ve been told that python doesn 't to be cross compiled.
> 

Sure, you will have to write a recipe to package your python script. you 
can use devtool if your scripts are in a git repo then it can generate a 
template recipe for you which you can use as baseline for your recipe. 
Or you can look at any python module recipe and model your recipe based 
on that. Once you have it done then you have to add your package to 
image which you can do via local.conf by adding IMAGE_INSTALL_append = " 
your-package"

which should build your python package and also bring in all python 
infra to run it on target.

> Thank you very much
> 
> 
> 
> 
