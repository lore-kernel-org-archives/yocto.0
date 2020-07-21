Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.245.1595349259532098017
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 09:34:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uM9lQWYi;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id d4so12187629pgk.4
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 09:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Vpx6VMclmHCkrYYCqnHl46rwsDllHsI0RJh4ssOka74=;
        b=uM9lQWYiR/B/ohG8x6tSm/u6vj5B5gbh6wziu1ZHwSmI9JnEzRd0bShTEMMRBzKyqu
         UBGaP0u9zIwNOcrv2sMpKc4DHty04lzuhc7/yxt5c15VNdNVP7XFkl6yb16pF9YVH/nm
         OwDhRwWuTEwEKkn/Wmx3tISvI7wdknZ1Imz7R0MEkJMTaecLR17hkNcrjyzwSNRUXYs0
         bFoA0aBmyoR+YoTQQbQNisLCn/gT30iBRQO00WmIk1E7e/Srk0XxTTSkZjh6o02FVDHn
         iBl8yXYAAIcvLB3COUg7ocKUsNU3cI7dhlXMlHQ2nnBNV8HsdpJLH5H1CW5F1YGNwD0P
         HXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vpx6VMclmHCkrYYCqnHl46rwsDllHsI0RJh4ssOka74=;
        b=HWoxvt7ZUM5BVgNZHtHy2kvWsmUlXFX1vvlSeqlPoJWOYhf4RQ5Vc37FW4h3tGiWFi
         Vb8a7GkiGAKngZnSthmHgFoYGO4s/7+Gb33vNPDkTczm7sGo+d1ZWpYhSBzMEi0JSeHH
         J90Tu4t1pXP3ktcIXyKnEyFzXdSzON54g8TBGK6I9Uu2LZkWVJAq/k7nbyYiYdzESdLK
         W7SuL3ByOejITUVJfo/prbUxpcuqugntfuqc8HTbVKd62yrFQfomXltE5EXvflKt9mjX
         qAfuK5fz8QqSC51YcqCeSCWyCz4ZvmjtJPFWKoo2brl8k+VC2hojf9iXUFU18yhgRoHT
         IcXQ==
X-Gm-Message-State: AOAM530pG+JPWI04YqJG8sKnHj8whXf49MDtWAr+8dcctxfFL30xsMCR
	muPyfp05hg4nf9g545vYjttGBHWWrvo=
X-Google-Smtp-Source: ABdhPJw7gGHmwldp2QFUU1bk1bhtDlgPqWDkLab1mnFBD6GHs3SxXYZFjqX143xHIagvUnMWO2I9IA==
X-Received: by 2002:a62:8c92:: with SMTP id m140mr24462308pfd.245.1595349258270;
        Tue, 21 Jul 2020 09:34:18 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::6651? ([2601:646:9200:4e0::6651])
        by smtp.gmail.com with ESMTPSA id j26sm20404835pfe.200.2020.07.21.09.34.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 09:34:17 -0700 (PDT)
Subject: Re: [yocto] meta-kirkwood layer #yocto
To: jjvazha@yahoo.com, yocto@lists.yoctoproject.org
References: <fn2D.1594142718853789763.EJrE@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <80dee997-087c-6e74-2e1e-d88ae5ee63a9@gmail.com>
Date: Tue, 21 Jul 2020 09:34:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fn2D.1594142718853789763.EJrE@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 7/7/20 10:25 AM, jjvazha via lists.yoctoproject.org wrote:
> I saw this message thread ( 
> https://lists.yoctoproject.org/g/yocto/topic/61257317)  and wondering 
> how can I get this yocto compatible  layer  for marwell kirkwood ?
> I want to build a linux ketnel for marwell kirk wood  ( using the 
> sheevaplug.conf for machine) using yocto 2.7.3
> I down loaded this layer 
> (https://github.com/kelvinlawson/meta-kirkwood)   this is opnembedded 
> based , however upon building in yocto  it failed with the following message
> 
> Entering directory 
> `/home/jojan.vazhaeparampil/workspace/distro/build_zion/tmp/work-shared/sheevaplug/kernel-source'
> |   GEN     
> /home/jojan.vazhaeparampil/workspace/distro/build_zion/tmp/work/sheevaplug-poky-linux-gnueabi/linux-kirkwood/2.6.35-rc1-r14/build/Makefile
> | make[2]: *** No rule to make target `oldnoconfig'.  Stop.
> | make[1]: *** [oldnoconfig] Error 2
> | make: *** [sub-make] Error 2
> | make: Leaving directory 
> `/home/jojan.vazhaeparampil/workspace/distro/build_zion/tmp/work-shared/sheevaplug/kernel-source'
> | ERROR: oe_runmake failed
> 
> 
> When I checked the "sheevaplug/kernel-source' directory it is empty ?
> 

meta-kirkwood is kind of stale, last commit was 7 years, 9 months ago, 
perhaps look around for another machine layer or fix this one

> 
> 
