Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web09.1599.1631205797856487284
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 09:43:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=X0LV9Hw1;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id gp20-20020a17090adf1400b00196b761920aso1873276pjb.3
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 09:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=ly3O8vbp7bhgk3D/a3QFJgPQtvXn5CIR8esHA1g7s6M=;
        b=X0LV9Hw1tSmHTk5sKfMNb626kV3LfimnWw4E9ht5ADPx190knDhwPxiTQTqw0+8Z5V
         eog5QQoNas/XqZ5IlTH78aImiGRTVK8+/ApvamEQpna0zKiBMuTRSM4ou9Ez2L95ddiP
         Qt5m2BF6sCONn4UXzTPEMD+ey41HPtrX2eiQnP54B/cYAlzboE5pPDS2lmWov1/NYGqu
         F85FPxQWqzAvIipO86igWS6XKPBqu822KjxPiV8BkqVWUy8CrCfduZqijbHB5atDHvmD
         64eMgl6bOW+hHZHUcpROi6Hkb3WXPZUt47hV8+F2A2SbsYvCOXTuK3z9J0u+QSIMjHh7
         LaHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=ly3O8vbp7bhgk3D/a3QFJgPQtvXn5CIR8esHA1g7s6M=;
        b=zKquX+HEnSCTVnGQtTSf9OoGEBZ7IEE36SzbKS1HTz6wkH2y26Kwntx8wcYS8+ZsLa
         IyrFGx+A5w3SteSfAAmqZQB3+HSJTECRvMLr6S7/0troyuipkSbFKHT8r8LxqoxHoI2V
         eB6XBKpgZNju3YS6MG11yKJI1cFtqjNjWn59k1QgeDHmdvqQWMqoX3iaT2ej9sehhijm
         Ayng9s7deKdpwNuuKEBZoKyaUyfsYBTOraXy77O1nWue5xUN1uGU5L5/7UcfJFaQsb4w
         Z554nKeWJwmlBlR0NcbipXMY6itLCxoMH4BLCTxfTJr8K0RkjGrFpSBiX+Nz5NcFX7Lw
         yXQw==
X-Gm-Message-State: AOAM533MG3C4fJ/Bi8iUOof8degpgjy4QpqaejWoH2Uvp62Cx5g0jAtv
	Yv1MEsm4/+ZKHZ4xWOQfHfA=
X-Google-Smtp-Source: ABdhPJwMksd5LTTBy3GMenNceozZ5zGLh5KHc3rwl3LkAQcqO4YW434KbfcY2w6LGmoD5Ug9H9vxIg==
X-Received: by 2002:a17:902:dccb:b0:13a:7db4:6d6b with SMTP id t11-20020a170902dccb00b0013a7db46d6bmr1088583pll.30.1631205797161;
        Thu, 09 Sep 2021 09:43:17 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:889e:9651:ed1e:11b0? ([2601:646:9200:a0f0:889e:9651:ed1e:11b0])
        by smtp.gmail.com with ESMTPSA id ev12sm2529729pjb.57.2021.09.09.09.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 09:43:16 -0700 (PDT)
Message-ID: <b27b2df1-f8f1-724a-a5ee-f77ce9837741@gmail.com>
Date: Thu, 9 Sep 2021 09:43:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.0
Subject: Re: [yocto] extra-cmake-modules #yocto
To: sateesh m <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
References: <2L6Q.1631168320241985290.EqNS@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <2L6Q.1631168320241985290.EqNS@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 9/8/21 11:18 PM, sateesh m wrote:
> Hi All,
> 
> I am trying to build an extra-cmake-modules package. Using bitbake 
> command "bitbake extra-cmake-modules" compiled succuss. But using 
> bitbake core-image-plasma-mobile throwing error. So I want to disable 
> native build on the x86 platform is it possible? or else can anybody 
> know how to fix this issue suggest me any corrections required.
> 

find if docs can be disabled during build, and perhaps that will get you 
moving forward

> 
> ERROR: extra-cmake-modules-native-5.79.0-r0 do_compile: Execution of 
> '/home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/temp/run.do_compile.20787' 
> failed with exit code 1:
> [1/2] cd 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs 
> && /usr/local/bin/sphinx-build -c 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs 
> -d 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs/doctrees 
> -b html 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/docs 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs/html 
>  > build-html.log
> FAILED: docs/doc_format_html
> cd 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs 
> && /usr/local/bin/sphinx-build -c 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs 
> -d 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs/doctrees 
> -b html 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/docs 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs/html 
>  > build-html.log
> Extension error:
> Could not import extension ecm (exception: cannot import name 'htmlescape')
> ninja: build stopped: subcommand failed.
> WARNING: exit code 1 from a shell command.
> ERROR: Logfile of failure stored in: 
> /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/temp/log.do_compile.20787
> -- 
> Regards,
> Sateesh
> 
> 
> 
> 
