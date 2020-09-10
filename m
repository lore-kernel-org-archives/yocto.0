Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.10394.1599697046213362468
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 17:17:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWbOxWN6;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id kk9so2157711pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 17:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U7lTKof9Ij3pP0D9j49Rt2PU2LGxKJJiOdzKh8Ju/hg=;
        b=gWbOxWN6yQLcLPwRql8M/jhuXnIly+Rb0sWTzPeJjYY2E2LdhIVdkfwomonnjlJyoA
         4CClHFg2YecRh758peiBkbH2rOaoyvhsQ6pcFg0/P0XFHad4+slF2llMfbDSQB+YpzcP
         cCxjDDg7UBfGLbaoc5ILY2Cq4MDnAK9yJpxj4SMBWVthiPG9ekzJ4dJETZooY1S/1G8f
         skSPN2uwGSpV2AB7bzwoh5LHh1jXJSLbXdBolbN1gEFu9O5CsfM/7NHupuRlCItdedtH
         QNUZBha55C6Amd5/+nYc55yAHQLdLfpzl0uR3UUwUNqKzYsQwKiJ26w9tn8/ioKvplF/
         0gcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=U7lTKof9Ij3pP0D9j49Rt2PU2LGxKJJiOdzKh8Ju/hg=;
        b=TdqedM5ZllDAhdN/12x7P5DuuBEWsupcnWdd/Jms6PXyiI2jA1FCy8pFzSzynLZLcP
         V0R9Ej43f5dmmn2EZh4uSW8xwpBWBqVnjvg77hxSAcsJyeayQ4xLyakXZMBKSqUwUUMJ
         cFXGP02oVHQtWtrv2FvV7PzVSr/0BGkNdreXK8sk08QJL4ZvLkZb8570Q7xfGWAEv3Ei
         EPnPtaB0GEeL1uKiOQz1fDYWnHskt6ou7bPpmukOVc0eDlhbA2OXfIjhn/nZM7isrRDx
         PtS7rAOzsOuFymos54nVWZRYVEbV1ucHACXJpXo8aKYuDQ1B1EKfNxnAS22EST0926lh
         /wPw==
X-Gm-Message-State: AOAM530R5MgYkhMCObWbqY65LtsczR7T9SE9Jvg+uRGyUo7/p9eYGZsF
	p923k1qkCY6MSe7fRlKD9JH+hg0clRgTfg==
X-Google-Smtp-Source: ABdhPJzRKxw7vnfJHBxD/RwFi/HVJtHSX3K+XHP/FXrK2OAgLssptqt36PxlYL+uVVcDyUVM5h5f6Q==
X-Received: by 2002:a17:90b:a0a:: with SMTP id gg10mr2884931pjb.20.1599697045389;
        Wed, 09 Sep 2020 17:17:25 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ff6e? ([2601:646:9200:4e0::ff6e])
        by smtp.gmail.com with ESMTPSA id n128sm2990629pga.5.2020.09.09.17.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 17:17:24 -0700 (PDT)
Subject: Re: [yocto] #sdk #yocto Appears SDK searching host for files that are only present on target side
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.163328BFD191E99D.22921@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e8366385-c7a3-5313-0072-d19e05e2fb17@gmail.com>
Date: Wed, 9 Sep 2020 17:17:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.163328BFD191E99D.22921@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/9/20 8:57 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
>  
> 
> Looking to understand why the SDK is searching the host/native
> (x86_64-pokysdk-linux) side when it should be looking at the target side
> (corei7-64-poky-linux) …
> 
>  
> 
> All the “crt” files are present under the target side.
> 
>  
> 
> Can someone explain what might be miss-configured ?, or better, point me
> to a possible patch ?
> 
>  
> 
> I have seen some talk on-line about similar issues, but no clear
> indication what the issue was, or how it was resolved…
> 
>  
> 
> I am running Yocto clang 6.0.1, cmake 3.8.2, under “rocko”, my SDK is a
> standard SDK, not extensible.
> 
>  
> 
> 11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>make
> 
> Scanning dependencies of target gbeinterp
> 
> [  0%] Building CXX object
> backend/src/CMakeFiles/gbeinterp.dir/gbe_bin_interpreter.cpp.o
> 
> [  0%] Linking CXX shared library libgbeinterp.so
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find crti.o: No such file or directory
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find crtbeginS.o: No such file or directory
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find -lstdc++
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find -lm
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find -lgcc_s
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find -lc
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find -lgcc_s
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find crtendS.o: No such file or directory
> 
> /disk0/scratch/smonsees/yocto/testSDK/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/7.3.0/real-ld:
> cannot find crtn.o: No such file or directory
> 
> collect2: error: ld returned 1 exit status
> 
> make[2]: *** [backend/src/libgbeinterp.so] Error 1
> 
> make[1]: *** [backend/src/CMakeFiles/gbeinterp.dir/all] Error 2
> 
> make: *** [all] Error 2
> 
> 11:31 smonsees@yix490016 ~/yocto/test/beignet-Release_v1.2/mybuild>
> 


Perhaps you need to use ${CC} and ${CXX} etc. in your makefile, and also
source the SDK environment script in shell, before using it.
>  
> 
> Thanks,
> 
> Steve
> 
>  
> 
>  
> 
> 
> 
> 
