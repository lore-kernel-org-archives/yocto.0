Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.391.1603812547372692576
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 08:29:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJSJrddm;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id m17so25674pjz.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 08:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=BvLhl95CF+7mnjBq2DzHBYBwPnRDOr/yo5QDLLmTcwE=;
        b=oJSJrddmi/pEMxmS8v+XUj20AXafaXSiXfMwEwbTKcaHBcrnxVrjG0q850dyrKfVk1
         MPYwEPGvz4dxMHW7unGP2l9ddCXcrB2ifpI3hY1lhITkbENBcjo8UBgV+zLqrVk44nvJ
         X6tmorG1gL42SCDoG3TF9DhZbveJqz0ac/5XCSulpnV3eXiqpcA4k+ajOtpfz/llNYuK
         o5oHzRdrVJjTipXWPCKk9Cw1RtuywJRV3PNSGxUl+BpyE3bd7HPa63Z2lnymSMUluBOF
         SyuScd1Ww/jr+qg/8az13/hoznsZWCaM5WR6x6eqLM9fJBr0iHfU0k5ZVMRlrfgaRsjL
         EEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BvLhl95CF+7mnjBq2DzHBYBwPnRDOr/yo5QDLLmTcwE=;
        b=P0dpB14hWgpim17CLbnIPEu8bPlbwXVdVGejfejgksWg+Xpm/1lBOo9gd5aSd0ZKLx
         8xio185EkOxQHkWZcba95PXfw3qWU3fSiu6eHTnAjwqUoxScrQm7WBKWONP4G2d7sflR
         dDuH9oERVNH5cPEPrlk1aVw/xC9Bi6hf5ZZmoq7MJnmZN3OmZuB8m0E2nqB80iTDMFIX
         oNq5y5ckkTlj1uPW1DazP3d8Ch7cy5+xWv/4kYbTRQ1Wo7b4zGVnz0p49kqPStxkC5PD
         c4ea/Pg1Vr1PRu2lLOsO6oJ4QJWfpid8d3vcfCYGwcgftWVigee4m6TElbTwLc37KCQS
         YuTQ==
X-Gm-Message-State: AOAM533O84rUxnDt4r5apmMeYsfYP/TSzRJ933B0FMCdHpyF6ai3CqDs
	Z7ekjBXsMrdKP79nznxKLhmAD/j7ZCzwhw==
X-Google-Smtp-Source: ABdhPJyIU7JnXKC9yXfP1T7TFAdkhV+twe4XH/BERP0FLs7V8XgXDyDujN3vhtF+uKru2TWj95Rsmg==
X-Received: by 2002:a17:902:7481:b029:d5:f56f:931a with SMTP id h1-20020a1709027481b02900d5f56f931amr2766219pll.8.1603812546614;
        Tue, 27 Oct 2020 08:29:06 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::bc1e? ([2601:646:9200:4e0::bc1e])
        by smtp.gmail.com with ESMTPSA id h13sm2365194pgs.66.2020.10.27.08.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 08:29:06 -0700 (PDT)
Subject: Re: [yocto] Cross compilation error finding libraries
To: Bel Hadj Salem Talel <bhstalel@gmail.com>, yocto@lists.yoctoproject.org
References: <jNpM.1603792334866771604.SbqP@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <0187eef8-2c60-1faf-7b23-7b0e096b69a1@gmail.com>
Date: Tue, 27 Oct 2020 08:29:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <jNpM.1603792334866771604.SbqP@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 10/27/20 2:52 AM, Bel Hadj Salem Talel wrote:
> Hi All,
> 
> I have an SDK populated from an image.
> After sourcing the SDK env file, I try to run make on a project with 
> this command :
> 
>     make CC="$CC" LD="$LD" CFLAGS="${CFLAGS}
>     --sysroot=/media/talel/data/sdk-multigate/sysroots/aarch64-poky-linux"
>     CXXFLAGS="${CXXFLAGS}
>     --sysroot=/media/talel/data/sdk-multigate/sysroots/aarch64-poky-linux"
> 
> I specified the CFLAGS and CXXFLAGS as mentionned in Yocto document 
> (part 5.2 Makefile-Based projects) : 
> https://www.yoctoproject.org/docs/1.1.2/adt-manual/adt-manual.html
> Now I have this error:
> 
> 
> ** Building dynamic library (debug, shared) 
> /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled.so
> aarch64-poky-linux-g++ -shared 
> -Wl,-soname,io.macchina.linux-thermal-simpled.so -o 
> /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled.so  
> /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/obj/Linux/x86_64/debug_shared/LinuxThermalSensor.o 
> /home/talel/Documents/macchina.io/samples/LinuxThermalSimple/obj/Linux/x86_64/debug_shared/BundleActivator.o 
> -L/home/talel/Documents/macchina.io/lib/Linux/x86_64 
> -L/home/talel/Documents/macchina.io/platform/lib/Linux/x86_64  
> -lIoTDevicesd -lPocoRemotingNGd -lPocoOSPd -lPocoUtild -lPocoXMLd 
> -lPocoFoundationd  -lpthread -ldl -lrt
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find crti.o: No such file or directory
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find crtbeginS.o: No such file or directory
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lIoTDevicesd
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lPocoRemotingNGd
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lPocoOSPd
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lPocoUtild
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lPocoXMLd
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lPocoFoundationd
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lpthread
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -ldl
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lrt
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lstdc++
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lm
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lgcc_s
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lc
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find -lgcc_s
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find crtendS.o: No such file or directory
> /media/talel/data/sdk-multigate/sysroots/x86_64-pokysdk-linux/usr/libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/real-ld: 
> cannot find crtn.o: No such file or directory
> collect2: error: ld returned 1 exit status
> /home/talel/Documents/macchina.io/platform/build/rules/dylib:54: recipe 
> for target 
> '/home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled.so' 
> failed
> make: *** 
> [/home/talel/Documents/macchina.io/samples/LinuxThermalSimple/bin/Linux/x86_64/io.macchina.linux-thermal-simpled.so] 
> Error 1
> 
> I need help.

I see that your linker is not using proper sysroot perhaps using 
LD=${CC} might help.

> Thanks, Talel
> 
> 
> 
> 
