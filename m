Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.10206.1599695896856318392
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 16:58:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MDo1yKV2;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id o20so3551244pfp.11
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 16:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H6crqpb76SlvLmDz75ZKI8UMRp4sHCBJzBS7lNlwK/c=;
        b=MDo1yKV27jhfU40vPBCAn0f3m1UgnFBuPI31LNbcvDKJgu8LMvisIXbiIkSsgr03qX
         1WqxL3uvxBu5+x4DjLtpm1jMv2IaeVZFR198JY5eRZr8iegVTj2jvVV9OYErytGc41Lt
         ptdWRme1WE3t6wu4VE9vbYsRdFJnt4N9uSlcZKIfYA2kHWsEpeYD8dwSzqwj88CoYwO+
         79zrg0VShBO8O46dDXIwyMjpR64dUKnW02VYbcyKsAY00hAj0vmn1i6zlSA1obJC2Q3K
         0fGREhMcXRBrEf9+5/Vw0R639QbW6WL1q6swtO9y4z95v5Muv418e4H9awy9vQqojSeb
         1Psg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=H6crqpb76SlvLmDz75ZKI8UMRp4sHCBJzBS7lNlwK/c=;
        b=KWe/9Y/BCNGcn0ggJDQy5HBLGbiW0zyn2BQNjekpl9nfT+p/4xj5BKbQnFX09RfOjU
         ao9QaN9AAqNduPCG6IH/RoE5MSyWs7WWdZSLI00AWetzyPuZZlrKIs8QougRdcyklAkk
         zfcQnVYDgJCoLw7l+dbdDGgNY8A6ZeeF7DXx0b7yKHl4lwGzeOrNievD0DCu0Bvf6PgX
         ab48AoRBagDtIS11RIZ/ZHPWgj9k8I2joTEivW7DdHLdrKZetxxPVCPPs+3C+TaKRdO6
         tbq1SEgzIkxt68DVh5X4ENfXvtw7mxcWMWyJbzoz7QGyfYSx4zWkVdRDgKhtcYr5BADt
         NbPQ==
X-Gm-Message-State: AOAM531yOwTvjARhMq4p3j+jEf6ywqDbSMc5v9sKozrG9r59XBmXUAno
	ZdLbpOwYoIwA+xi+mszMt8/xGW2st6UTMQ==
X-Google-Smtp-Source: ABdhPJzWMDP2IUocw/Q2lXQGY4XLWcoJTwuAF31vUyuCDDd7gfeLoTD0Chngck51ZVH3mDT/mJUjuw==
X-Received: by 2002:a63:ea4f:: with SMTP id l15mr2241889pgk.434.1599695895903;
        Wed, 09 Sep 2020 16:58:15 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ff6e? ([2601:646:9200:4e0::ff6e])
        by smtp.gmail.com with ESMTPSA id u10sm3723994pfn.122.2020.09.09.16.58.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 16:58:15 -0700 (PDT)
Subject: Re: [yocto] poky dhcpcd failed build
To: Yocto <yocto@optimcloud.com>, yocto@lists.yoctoproject.org
References: <1632BAF241A18982.9948@lists.yoctoproject.org>
 <ba50fb1b-8dca-86dd-4569-368c94257deb@optimcloud.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e12077a8-0a44-c224-9aa2-d8758045952e@gmail.com>
Date: Wed, 9 Sep 2020 16:58:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ba50fb1b-8dca-86dd-4569-368c94257deb@optimcloud.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 9/7/20 11:27 PM, Yocto wrote:
> 
> On 9/8/20 1:24 PM, Yocto wrote:
>> w
>> | collect2: error: ld returned 1 exit status
>> | make[1]: *** [Makefile:73: dhcpcd] Error 1
>> | make[1]: Leaving directory
>> '/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src'
>> | make: *** [Makefile:24: all] Error 2
>> | WARNING:
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983:190
>> exit 1 from 'exit 1'
>> | WARNING: Backtrace (BB generated script):
>> |     #1: bbfatal_log,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 190
>> |     #2: die,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 165
>> |     #3: oe_runmake,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 160
>> |     #4: autotools_do_compile,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 155
>> |     #5: do_compile,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 150
>> |     #6: main,
>> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/temp/run.do_compile.3649983,
>> line 194
>> |
>> | Backtrace (metadata-relative locations):
>> |     #1: bbfatal_log,
>> /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
>> |     #2: die, /var/home/dingo/overc/poky/meta/classes/base.bbclass,
>> line 56
>> |     #3: oe_runmake,
>> /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 65
>> |     #4: autotools_do_compile,
>> /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 243
>> |     #5: do_compile, autogenerated, line 2
>> ERROR: Task
>> (/var/home/dingo/overc/poky/meta/recipes-connectivity/dhcpcd/dhcpcd_9.1.4.bb:do_compile)
>> failed with exit code '1'
> 
> gcc/x86_64-overc-linux/10.2.0/ld: privsep-root.o: in function
> `ps_root_dogetifaddrs':
> | /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:374:
> undefined reference to `ALIGN'
> |
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld:
> /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:375:
> undefined reference to `ALIGN'
> |
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld:
> /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:376:
> undefined reference to `ALIGN'
> |
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld:
> /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:378:
> undefined reference to `ALIGN'
> |
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld:
> /usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:380:
> undefined reference to `ALIGN'
> |
> /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/dhcpcd/9.1.4-r0/recipe-sysroot-native/usr/bin/x86_64-overc-linux/../../libexec/x86_64-overc-linux/gcc/x86_64-overc-linux/10.2.0/ld:
> privsep-root.o:/usr/src/debug/dhcpcd/9.1.4-r0/dhcpcd-9.1.4/src/privsep-root.c:382:
> more undefined references to `ALIGN' follow
> | collect2: error: ld returned 1 exit status

Can you try adding
#include <sys/param.h> into socket.c and see if that help ? if it does
then please send it as a patch

> 
> 
>>
>>
> 
> 
> 
