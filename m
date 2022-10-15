Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79981C433FE
	for <webhook@archiver.kernel.org>; Sat, 15 Oct 2022 00:45:42 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.14875.1665794733847917463
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Oct 2022 17:45:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=LIk6ck/3;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.177, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f177.google.com with SMTP id n7so6196293plp.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 17:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=saW6/zHmYfCYcO4LZ0bWBXqdwhU3zYh9CUBBDk6xhEA=;
        b=LIk6ck/3KmaHtBBmsZTvBWeiunamBXga/y8vdwiTvIewDmfbcuL6XyhU+F59fQVJBh
         2sdLnFdLtbwGKlZu4LAowJ492SUbbal/cF965XaYcoDXyB2LtFyru5CVNQ9ovW85jSJ9
         4HX+juLSHu5UmQ+iKRJHPVTzjWdIsSoodY9a363LSZ/RdK/4vKz2qgsLrspCiIoQbx6R
         M1LmGRuru5UU3m/POp83nlZCA7/XvrCB/5UzdfVzN3xOO0nM2AFapq3q2u1/87Frr0XH
         G8qBbAgyN6tHR7A5zCQ8Sb3RezsgciHhKL976wuBYPcAJ8wau58E6S0wLWgeiVMRxi7W
         ee3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=saW6/zHmYfCYcO4LZ0bWBXqdwhU3zYh9CUBBDk6xhEA=;
        b=dUjIB3FvfHZqPtTpjTfT6ZZXQkr+7s8KPaFdXoVMB6gkcyr0m3XseGWW20sn1l1Nh1
         /ZR8kWWeCQ1LPtrTjY8KqA+NA1k/fLmpYxsEYcGt3Nqa/kdEDCppEtpiRaQBmSmPzA/Z
         C4zKjOqoO0jmHI4qIqaWXycxj8KXuAbNa0Ln47v60KnUN6TgCk5ou/56PbIXa0jlM7MP
         R1ITxJtrLmJS5G3AyZmD0mY85rUCX7s/idF3YJjNQ8Foi5mS7gfPkzx10m3ZMYmHQLMI
         zx7HPmxO1zBCMHiQkR8gDYpIyUE+gclb0W9xkVyxKlSoB16RPuvhIm2/Ku13JcszFERM
         d+GQ==
X-Gm-Message-State: ACrzQf3WSgS2gklIPJfc+9uHMnVKhUv91Pc6IQc4ayowuMPoX+JTpcHN
	x+fSPePmq0a9fJckWu9/ZJY9HntpMhnIFlhu
X-Google-Smtp-Source: AMsMyM4y7wugatay0OXifaKjJjqhARtVM24wJe6t6YxD93HfX4VK/DCH54cO15p378S650n30jKp4w==
X-Received: by 2002:a17:902:724a:b0:177:fd96:37bf with SMTP id c10-20020a170902724a00b00177fd9637bfmr320489pll.25.1665794732333;
        Fri, 14 Oct 2022 17:45:32 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id f131-20020a623889000000b00561382a5a25sm2331716pfa.26.2022.10.14.17.45.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Oct 2022 17:45:32 -0700 (PDT)
Message-ID: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
Date: Fri, 14 Oct 2022 17:45:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: yocto@lists.yoctoproject.org
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: do_kernel_configme - Could not generate configuration queue
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Oct 2022 00:45:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58337

I am running into a bizarre problem with kernel configuration.

I have an existing build environment that builds for an i.MX6ul machine. 
That works fine and the linux-fslc kernel 5.18 builds without any 
problems. Now within the that build environment I changed the machine to 
imx6ullevk and then the kernel configuration fails with this error message:

| DEBUG: Executing shell function do_kernel_configme
| NOTE: do_kernel_metadata: for summary/debug, set KCONF_AUDIT_LEVEL > 0
| [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
| /develop/projects/altec/tcu/build/tmp/hosttools/dirname: missing operand
| Try '/develop/projects/altec/tcu/build/tmp/hosttools/dirname --help' 
for more information.
| ERROR: Could not generate configuration queue for imx6ullevk.
| WARNING: 
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395:209 
exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
|     #1: bbfatal_log, 
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395, 
line 209
|     #2: do_kernel_metadata, 
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395, 
line 382
|     #3: do_kernel_configme, 
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395, 
line 150
|     #4: main, 
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287395, 
line 484
ERROR: Task 
(/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc_5.18.bb:do_kernel_configme) 
failed with exit code '1'

I tried to debug do_kernel_configme. The issue seems in the scc script 
more specifically, I think, in the kconf command that is called by scc 
when parsing the temporary configuration queue file in /tmp: tmp.owmBptYrba

#
# spp v0.8
# processed: Fri Oct 14 09:49:02 PM UTC 2022
#
# This is a preprocessor output file, do not edit
#
#
prefix 
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
kconf non-hardware 
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig
# run time: 0 seconds
# processed files:
# _cfg 
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/linux-fslc/defconfig

Apparently a call to dirname is missing the argument. However, I do not 
understand why.

I wiped out build/tmp directory entirely, ran a cleanall on 
virtual/kernel but to no avail. The problem remains the same.

Has anybody seen this issue before?


Rudi



