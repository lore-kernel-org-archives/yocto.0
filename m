Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.885.1606331657301897018
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 11:14:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=es1sgmgs;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id k11so596319pgq.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 11:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yeybs4k283juEog9q1NzKa3IdhBT4IS/q4yYO0PMiAA=;
        b=es1sgmgsnPI6d5PMyeUpw7gAnVwX0KFCkLj1g5bnaP3MTtV+hJxQ5D56WC4XgpIhpU
         JVRG5+oaMxV1YW+RDMnc+34yq99TdujWSm0lGbqfEb3KuFDat88aqVwtgZ/e5ZdPxSUB
         XQQh5LuFd63SIbzopY4cG+wOpwR2ZF2lCaX3XKMnDK7AfjHzP/meYPFbKe7F5ZbrM5+n
         6nx/Jds9bSmderBMTF7Gi6N+HLMVcjRcaHUBhPs0B88U02LQgSXnQvaCT/lS8G1hkoVv
         CPAa6rOO7kCDUdc71E8VzXxjkpsw3kDrAPaRQXmx43iAMNhiwa8t83jUbSWIpHE739mc
         eWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=yeybs4k283juEog9q1NzKa3IdhBT4IS/q4yYO0PMiAA=;
        b=Vlc27YJdDwQ9QPGEnk3XLNP+eeuZ962eUxnb2IVFZtn5v0WjISAF6dt0Jib6/eJ5q7
         QHMzU6uUu6BXVVEGygciQZw3Q9zYi4BPi1BaWYFgfF2E+VzRiGQc/Xsxev4lYmqntTFw
         wsMCxbK96IhSQdycSncb7IzoTgQTVPyaKBJEhhemvD/i/VUbwzln5HGG2GYRnCtqf+0o
         MiTp/FSVT1ID2kEBA7RvMK4HwKNtWYi9OIH0GUmK0p1tYpqNWFuL9mvsUC1p96jjpt4W
         f1h62R0i7dQTTtUsJhTu8+LeeFP7VAGQkFEqZ0+zjuWDm2K3Z0lpnG5+l1SsIQxtcLCa
         QKDw==
X-Gm-Message-State: AOAM531N6nkh4sulhoA0TDX0xyydilmEW6MUGkUHrhwca4mDn9UmDxx0
	Vw8dOv2y7PQCPJMRkEs8Z2VniJVr5pn47g==
X-Google-Smtp-Source: ABdhPJyW7Oq9cPDCi1sdzrjAB8jCOQCcMSFu1R7flHaeuBvXlb+b+yLO0r8zltIlGwOvV/6hJZfJIQ==
X-Received: by 2002:a62:52d7:0:b029:18b:7093:fb88 with SMTP id g206-20020a6252d70000b029018b7093fb88mr4368785pfb.76.1606331656362;
        Wed, 25 Nov 2020 11:14:16 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:ecdb:94e8:2d6c:dea4? ([2601:646:9200:4e0:ecdb:94e8:2d6c:dea4])
        by smtp.gmail.com with ESMTPSA id s21sm2584102pgm.65.2020.11.25.11.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 11:14:15 -0800 (PST)
Subject: Re: [yocto] Problem with recipe that depends on a binary that is generated during its build
To: Matteo Iervasi <matteo.iervasi@edalab.it>, yocto@lists.yoctoproject.org
References: <fc5a5e16-61ad-d9c0-92c8-87714d040f95@edalab.it>
 <29421.1606293459720479059@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <4b493f53-1d13-22f7-c356-a6d3bde4ad69@gmail.com>
Date: Wed, 25 Nov 2020 11:14:14 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <29421.1606293459720479059@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 11/25/20 12:37 AM, Matteo Iervasi wrote:
> Ok I've found a solution by myself. Basically I just used the trick 
> showed in the Technical FAQ and put a bunch of install commands in the 
> do_install task.
> Now the only problem I have is that the do_install task for target 
> complains that needs administrative privileges (maybe I'm just doing it 
> wrong, I'm still not that experienced with Yocto).
> 
> | [100%] Built target boosttest-test-livestatus
> | make[1]: Leaving directory 
> '/home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/build'
> | 
> /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/recipe-sysroot-native/usr/bin/cmake 
> -E cmake_progress_start 
> /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/build/CMakeFiles 
> 0
> | make -f CMakeFiles/Makefile2 preinstall
> | make[1]: Entering directory 
> '/home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/build'
> | make[1]: Nothing to be done for 'preinstall'.
> | make[1]: Leaving directory 
> '/home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/build'
> | Install the project...
> | 
> /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/recipe-sysroot-native/usr/bin/cmake 
> -P cmake_install.cmake
> | -- Install configuration: "Release"
> | CMake Error at cmake_install.cmake:36 (file):
> |   file cannot create directory: /usr/share/doc/icinga2.  Maybe need
> |   administrative privileges.
> |

this just means that its not able to relocate the install location to 
${D} which is what default do_install should do. So the package needs 
some work to respect an option to relocate the installation directory 
once you have that then you can specify that vi OE_EXTRACMAKE += 
"-D...=${D}" or some such. That could be a fix sent to upstream as well 
otherwise your fix it ok too for your needs.

> |
> | Makefile:74: recipe for target 'install' failed
> | make: *** [install] Error 1
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at 
> /home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/tmp-glibc/work/cortexa7t2hf-neon-angstrom-linux-gnueabi/icinga-core/2.12.0-r0/temp/log.do_install.25788)
> ERROR: Task 
> (/home/matteo/boxio/toradex/colibri-imx6ull/build-boxio-colibri-imx6ull/../layers/meta-boxio-colibri-imx6ull/recipes-extended/icinga-core/icinga-core_2.12.0.bb:do_install) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3457 tasks of which 3447 didn't need to 
> be rerun and 1 failed.
> NOTE: Writing buildhistory
> 
> The recipe that now compiles ok is attached here.
> 
> Thanks
> Matteo Iervasi
> 
> 
> 
> 
