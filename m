Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.9383.1605207997808812081
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 11:06:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DOLhOCn/;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d3so3286425plo.4
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 11:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=WWzxc/1SbWb21qXLEzFKSAQjhf9A9ONdJQrm1PlSYsA=;
        b=DOLhOCn/eWBPFXyRXVyj9ZUn4ny7e9N7uTSQHHaBdn/A/p6axg1MQMX0IFrr/T2xlW
         dEreEo+mvUaiFLq1wrwEZmr944hx8qimHNWVPDTrZgltmj/+Uh8VNHCI4q6tFHEP7hHb
         xq7HRPBFV0uKg0BHA6pe9sXNnQM3udKKVFvAoTYDF2FShL1U1vj1WU8WIid+X7sZ0qlt
         2MR8nnWpuhmlVI4JdjJr1Z1SNl/3ZEI31mZTpIiTI4YGW/U31/adED94C0Xxp6vXRQuo
         z7et3BYSZNINYXT7Et/fl75mV/6jp5oAJz6ahg7acNsoGLb4DdfkfbFHutzi8I32hg0L
         j5NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WWzxc/1SbWb21qXLEzFKSAQjhf9A9ONdJQrm1PlSYsA=;
        b=buUkS+z6L87+S9oXwfSnkrvF474Rts9ilKBQaybi2MKi//wv0YM0B/Ix3l/oe+3sJh
         vw+Ig57EvO6uGDRBT649YuZ9TSTa9YchibsoCwVzGDVSVxY9E3Nshj7PL6XYHBplGKHD
         +emkTkR9wWN2b11YVEj1vUYPaOxJvlcSjwh+tNZHpdyjgo8XoJ7i0DdIefHd6vAAglwu
         cdSMd/MTrcuUY6jGUqBnDA+XSvWSC13uPBKHKqK4rbHcNGgRW459jpRx8SeTBWTZDpa/
         izwr1tpBWFWsv74/lmg/EGyakI9US3W950CO7FM8Auz6xfE0kozTj2X6mhIEwE/XGHRa
         XmCQ==
X-Gm-Message-State: AOAM531u7mf7jUMJK13vjIpkndQsb2BfLjuZxsIvF7gA1no+HFepd6bE
	eRUDEGFbRckjpRsfdccbjXIOaYmQhnR89A==
X-Google-Smtp-Source: ABdhPJybhFikvG8miOiyNzxBxttF3YmERMfDAJT2s9cnxrjCJpysQXgL8lV+ToSNjM5F4hun73xLrA==
X-Received: by 2002:a17:902:6b04:b029:d8:cba9:a5f with SMTP id o4-20020a1709026b04b02900d8cba90a5fmr983644plk.17.1605207996698;
        Thu, 12 Nov 2020 11:06:36 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::740e? ([2601:646:9200:4e0::740e])
        by smtp.gmail.com with ESMTPSA id t16sm1910724pfl.75.2020.11.12.11.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 11:06:36 -0800 (PST)
Subject: Re: [yocto] Qtwebengine recipe in yocto zeus (latest version) #yocto #zeus #qt
To: anthony.marchand@navocap.com, yocto@lists.yoctoproject.org
References: <OqRF.1605198548382378294.0Na5@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <5f55678c-c668-792f-a6be-00d80738b715@gmail.com>
Date: Thu, 12 Nov 2020 11:06:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <OqRF.1605198548382378294.0Na5@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 11/12/20 8:29 AM, anthony.marchand@navocap.com wrote:
> Hello.
> I hope you're going well in this period.
> I'm working with yocto (zeus version) with a soc i.MX6 and kernel 4.19. 
> Actually, I meet a weird issue about the recipe "qtwebengine" in all of 
> my projects that are using zeus version.
> The compilation was working fine until there, but since approximatively 
> two weeks, with no particular reason, whatever the project I want to 
> compile, I'm unable to compile qtwebengine and making a rootfs image 
> with it inside.
> 
> So I have tested:
> 
> 1) bitbake qtwebengine
> 2) bitbake myimage
> 
> PS: myimage contain the recipe qtwebengine.
> 
> But whatever the bitbake commands 1 or 2, Bitbake shows me the same 
> error I don't understand and this error follows:
> 
> -----------------------------------------------------------------------------------
> | In file included from /usr/include/bits/errno.h:26:0,
> |                  from /usr/include/errno.h:28,
> |                  from /usr/include/c++/7/cerrno:42,
> |                  from /usr/include/c++/7/ext/string_conversions.h:44,
> |                  from /usr/include/c++/7/bits/basic_string.h:6361,
> |                  from /usr/include/c++/7/string:52,
> |                  from /usr/include/c++/7/stdexcept:39,
> |                  from /usr/include/c++/7/array:39,
> |                  from /usr/include/c++/7/tuple:39,
> |                  from /usr/include/c++/7/bits/unique_ptr.h:37,
> |                  from /usr/include/c++/7/memory:80,
> |                  from 
> ../../../../git/src/3rdparty/chromium/v8/src/torque/cfg.h:9,
> |                  from 
> ./../../../../git/src/3rdparty/chromium/v8/src/torque/cfg.cc:5,
> |                  from v8_snapshot/gen/v8/torque_base_jumbo_1.cc:5:
> | /usr/include/linux/errno.h:1:10: fatal error: asm/errno.h: No such 
> file or directory
> |  #include <asm/errno.h>
> |           ^~~~~~~~~~~~~
> | compilation terminated.
> ...
> | Makefile.gn_run:340: recipe for target 'run_ninja' failed
> | make[3]: *** [run_ninja] Error 1
> | make[3]: Leaving directory 
> '/home/yocto/Dev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src/core'
> | Makefile:82: recipe for target 'sub-gn_run-pro-make_first' failed
> | make[2]: *** [sub-gn_run-pro-make_first] Error 2
> | make[2]: Leaving directory 
> '/home/yocto/Dev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src/core'
> | Makefile:76: recipe for target 'sub-core-make_first' failed
> | make[1]: *** [sub-core-make_first] Error 2
> | make[1]: Leaving directory 
> '/home/yocto/Dev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src'
> | Makefile:48: recipe for target 'sub-src-make_first' failed
> | make: *** [sub-src-make_first] Error 2
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task 
> (/home/yocto/Dev/build_zeus/../meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_compile) 
> failed with exit code '1'
> -----------------------------------------------------------------------------------
> 
> I don't understand why bitbake don't find '<asm/errno.h>', because it is 
> present in the kernel 4.19 and in my host system ubuntu 18. Furthermore, 
> I don't understand the problem with run_ninja.
> 
> I try to change my PC for compilation, but I have got the same error. 
> The PC I use to compile with bitbake got 20 cores intel xeon and 32GB of 
> ram. I think the problem is not from here. :-)
> 
> Does someone already meet this problem?
> 
> Does someone know where could be the problem?

it seems to be failing to find files on build host install and there 
were similar issues seen on chromium browswer long time ago which has 
been addressed in meta-browser. you might disable building torque 
perhaps to workaround it.

> 
> Thanks for all and best reguards: Anthony.
> 
> 
> 
> 
