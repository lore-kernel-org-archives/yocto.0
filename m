Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web09.5263.1628142921199058272
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 22:55:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YHIjOVXA;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id a8so6433961pjk.4
        for <yocto@lists.yoctoproject.org>; Wed, 04 Aug 2021 22:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q0g4p3je+gcBBiDCU6XhmvJw+TDyW61DdmHbMAIhWxw=;
        b=YHIjOVXArYnJYPsa4ISz2fkNj2OSBSlAC/pfNw0GB3uHsCpXjkenpgjhCqbjy9Wbzt
         +kzeIoEBpGc8RwP8mA/Und5VzYbCqBMhM+YBPmtUgYLShL1Teea1W165Yfs0IXBhSDOw
         nlw/VDqwtTNk2AcgIRzT/7BwJMQQ1nepLnY4hFqs92KsCGHEPh/YKSotD61oIp1LoMVy
         Mqlw/kbowchXyDFTUPFxCV+mdvoc9we8hUxXHWEyhXg0Vt8GOo+E66VVlwnIH7yDFf0N
         VzmJJXVV3vbVNDqNFpZ/X4Zz4nDl7d9p7xjAcSrPAN/WyQFvqCYFax1r7gFZMrGNlz+h
         Pb8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=q0g4p3je+gcBBiDCU6XhmvJw+TDyW61DdmHbMAIhWxw=;
        b=Y8udZ1LenEUBi9Tr4TKcXqc6M6XuY4/HZcCI3bW5gIF6kxeBGugQmn8R12uGBCQpCd
         HwPRr/3W0BtQm1oEfc4Fol1t82uS3W7WMSQV8XrEM/TFlzgbbxkP+0XaYq6eNDKXz2Hm
         iW+IHc80Q1STJ/NfCRC5gPh1W9EqdByUrCyFOu33CnnZ0gQx7Erpm5izW7cZ5wq4y82D
         67whnXSJGWSvhWCu1DgZNaY83UK+G1gQrYwrnSWYPjRFXjm3T9dRo5GFJAGZJxoxBwzF
         o/nlNzlpirB+xP7O7TKmq5qdvPenQKe9g2auaFUWWJ4XO/MpkwOxGuprJZ26tJfXgVzk
         U8pw==
X-Gm-Message-State: AOAM533voCr1hpkreRERihkeuvut6ENG647a4FLQV99bHK/mZxWI2OWu
	vKjAMe5J8B52rQDUvEdJSiu6mXcotpFJpQ==
X-Google-Smtp-Source: ABdhPJzx/KEoGlCHFT21aRXkno3x9i+rjbFXpWjm9yugY1+IsGBd7zUbyGThOOdX5Cu68qo65NEOOw==
X-Received: by 2002:a63:5c04:: with SMTP id q4mr2741909pgb.127.1628142920361;
        Wed, 04 Aug 2021 22:55:20 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:7855:55f7:d28b:c03? ([2601:646:9200:a0f0:7855:55f7:d28b:c03])
        by smtp.gmail.com with ESMTPSA id j3sm5196269pfe.98.2021.08.04.22.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 22:55:19 -0700 (PDT)
Subject: Re: [yocto] Recipe dependent on Debian package - How should I approach? #debian #yocto
To: Mitch Gaines <gainesmitch2@gmail.com>, yocto@lists.yoctoproject.org
References: <CADa-vC0G7_-YqCpEm_UQZLDX3Gwz-mffZG9OuZhRz1J_UEQp1w@mail.gmail.com>
 <24004.1627308437391399679@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <f0a9ff01-dbce-9f0d-deec-5fb0c3cb03eb@gmail.com>
Date: Wed, 4 Aug 2021 22:55:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <24004.1627308437391399679@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 7/26/21 7:07 AM, Mitch Gaines wrote:
> So, that is something I already have. What I really need are the systemd 
> header files in order to build my recipe. Looks like the log output 
> didn't format well. Let me re-post that below with some better 
> formatting and you'll see what I'm referring to. How can I get those 
> header files to build with my project? I thought just adding it as a 
> DEPENDS would do it, but that doesn't seem to be the case.
> 
> |NOTE: Executing Tasks ERROR: <recipe-name> do_compile: oe_runmake 
> failed ERROR: <recipe-name> do_compile: Execution of 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/run.do_compile.13271' 
> failed with exit code 1: make[1]: Entering directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> CC file-name.c ../file-name.c:6:10: fatal error: systemd/sd-daemon.h: No 
> such file or directory 6 | #include <systemd/sd-daemon.h> | 

Please post full compiler cmdline, it will show what all include paths 
are specified.

If systemd is added to DEPENDS and also ensure you are using systemd for 
init system as well.

Search for sd-daemon.h in
/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/

I wonder if it got staged into recipe specific sysroot or not.


> ^~~~~~~~~~~~~~~~~~~~~ compilation terminated. make[1]: *** [Makefile:93: 
> build/file-name.o] Error 1 make[1]: Leaving directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> make: *** [Makefile:72: some-recipe] Error 2 WARNING: exit code 1 from a 
> shell command. ERROR: Logfile of failure stored in: 
> /home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/log.do_compile.13271 
> Log data follows: | DEBUG: Executing shell function do_compile | NOTE: 
> make -j 24 my-project | make[1]: Entering directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> | CC my-file.c | ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No 
> such file or directory | 6 | #include <systemd/sd-daemon.h> | | 
> ^~~~~~~~~~~~~~~~~~~~~ | compilation terminated. | make[1]: *** 
> [Makefile:93: build/my-file.o] Error 1 | make[1]: Leaving directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> | make: *** [Makefile:72: my-project] Error 2 | ERROR: oe_runmake failed 
> | WARNING: exit code 1 from a shell command. | ERROR: Execution of 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/run.do_compile.13271' 
> failed with exit code 1: | make[1]: Entering directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> | CC my-file.c | ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No 
> such file or directory | 6 | #include <systemd/sd-daemon.h> | | 
> ^~~~~~~~~~~~~~~~~~~~~ | compilation terminated. | make[1]: *** 
> [Makefile:93: build/my-file.o] Error 1 | make[1]: Leaving directory 
> '/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' 
> | make: *** [Makefile:72: my-recipe] Error 2 | WARNING: exit code 1 from 
> a shell command. | ERROR: Task 
> (/home/mitch/bin/yocto/project-name/layers/meta-project/recipes-main/my-recipe/my-recipe_git.bb:do_compile) 
> failed with exit code '1' NOTE: Tasks Summary: Attempted 2166 tasks of 
> which 2163 didn't need to be rerun and 1 failed.|
> 
> 
> 
> 
> 
