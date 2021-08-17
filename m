Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web09.41838.1629218674373180816
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 09:44:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDFI5k63;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id j12-20020a17090aeb0c00b00179530520b3so6291546pjz.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 09:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=2HHxIgkzO6+1DyWrP6SL8wqIgszYqND/Bgq++K1O4Jw=;
        b=DDFI5k633HxOGL4pqip9EYmaa8kG3JYcBV7MAXBuM9OHp5nykpr07OThuthzCdIZ12
         gRm7MIsgOy8OMFrhY3E7to/i6HjTJ64nF/gbzm1UJ6iJWgc8LWpQdXuWRm0CO2Q4hzqc
         gusHYV5wxpJyUCtHkR7SjM2CHlmoKtbVyR5sbkZeHwC7P0jB8A7ZKPyGufQ4ZJigU/jD
         F98qBWhAkjGFPMKHHMik1FGIFR+A6JVD6aXGG8PGR4fMjNG69stV6aCMj3GYN0g7TjgR
         8cAVWl7kRB4rMyQFj6nrKUXGN3DPs6FDfhf7aHWXLb3fOzvbhSA9T7byxPcHpkIGpt+e
         UDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=2HHxIgkzO6+1DyWrP6SL8wqIgszYqND/Bgq++K1O4Jw=;
        b=jYY8UdoRDk/FrWGXnPFkQgz+VK+hYkQyO2SFZqO5wOQQeUlv8mGNz317Cgp9nPxZjy
         ZROYbgSEqZEZhdNS0ycifU06J4TAg9MjvgfeBoSO1A16AKQPsk4lt7FSTK7S3grrtR6r
         u/W8QXEwY/5j10OcuNRatVrGnC1Q/2nmIZNuojPmOn2+1hkBMbXj0LiMCMaCjVG1htx2
         BPp5SyAEKM/BsdqRcmGPSExAiwOptrrQp1/3kByyFxVF5fMSNx7XK1BeR+ZSVKBLTXjE
         BIY5zpiIHnaFZtI819q3MAOeYPYkhPY37E4v+cdsX994p8H0/Ss4p1Ru6NnYAarRh6go
         bU5A==
X-Gm-Message-State: AOAM530AAzXHWLMABb9aQixBIVomi3nIUneQTxCyBghOMwifjymiAG/Z
	Ybw8uSgaYGGrElcjZdUmLCw=
X-Google-Smtp-Source: ABdhPJyvZ+1K5XW5cIDC1qv6J1755MpawbEavGWCjxnhhBibaQPn+KMbj9mtVNY8b1TyKI1Pp1Q08A==
X-Received: by 2002:a17:902:7786:b029:12c:dac0:15ba with SMTP id o6-20020a1709027786b029012cdac015bamr3385951pll.27.1629218673790;
        Tue, 17 Aug 2021 09:44:33 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:1c82:e45d:69ec:9a23? ([2601:646:9200:a0f0:1c82:e45d:69ec:9a23])
        by smtp.gmail.com with UTF8SMTPSA id z33sm3885030pga.20.2021.08.17.09.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 09:44:33 -0700 (PDT)
Message-ID: <195aff34-e88c-f8cb-ee51-5acbb16fa782@gmail.com>
Date: Tue, 17 Aug 2021 09:44:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.0
Subject: Re: [yocto] Getting bitbake error after 54% recipes are baked. #dunfell #yocto
To: vishal.rana118@gmail.com, yocto@lists.yoctoproject.org
References: <YBth.1629214691621384185.kqQR@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <YBth.1629214691621384185.kqQR@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/17/21 8:38 AM, vishal.rana118@gmail.com wrote:
> Hi,
> 
> I am using*ubuntu 16.04* (host) in VirtualBox.
> 
> Memory allocated to VM machine is 100+ GB.
> 

how much DRAM is allocated.

> Poky*dunfell*.
> 
> While trying to build the project fo*r x86_64.*
> 
> Steps followed as per yocto quick guide for "dunfell"
> 
> ////////////////////////////////////////////////////////////////////////
> 
> after baking 54% of recipe I am getting error.
> 
> ////////////////////////////////////////////////////////////////////////////////////
> 
> | 
> /home/vrana/Desktop/yocto_Practice/build/tmp/work/core2-64-poky-linux/gcc/9.3.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/as: 
> out of memory allocating 4064 bytes after a total of 452272128 bytes
> 
> | Makefile:1117: recipe for target 'insn-emit.o' failed
> 
> | make[1]: *** [insn-emit.o] Error 2
> 
> | make[1]: *** Waiting for unfinished jobs....
> 
> | rm gcc.pod
> 
> | make[1]: Leaving directory 
> '/home/vrana/Desktop/yocto_Practice/build/tmp/work/core2-64-poky-linux/gcc/9.3.0-r0/gcc-9.3.0/build.x86_64-poky-linux.x86_64-poky-linux/gcc'
> 
> | Makefile:4328: recipe for target 'all-gcc' failed
> 
> | make: *** [all-gcc] Error 2
> 
> | WARNING: exit code 1 from a shell command.
> 
> |
> 
> ERROR: Task 
> (/home/vrana/Desktop/yocto_Practice/source/poky/meta/recipes-devtools/gcc/gcc_9.3.bb:do_compile) 
> failed with exit code '1'
> 
> NOTE: Tasks Summary: Attempted 1832 tasks of which 0 didn't need to be 
> rerun and 1 failed.
> 
> Summary: 1 task failed:
> 
>    
> /home/vrana/Desktop/yocto_Practice/source/poky/meta/recipes-devtools/gcc/gcc_9.3.bb:do_compile
> 
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> ////////////////////////////////////////////////////////////
> 
> looking for guidance.
> 
> Regards,
> 
> 
> 
> 
> 
