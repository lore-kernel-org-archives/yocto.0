Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web12.6750.1595917830516401318
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 23:30:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=POWmRX2R;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: ithijme@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id g7so11200869ejw.12
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jul 2020 23:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=zqsrUuiAPXAy4ThFpLnQIt8Iu3/BAqSZfmkcKVrxKas=;
        b=POWmRX2Ry+8YwWz63bSlDmINyaRoVnpsiCxpDYHm3C8O8CxFF/U2LmpdV6GrPtdHjE
         UeHEwldSJA9pMnZ9EXLWSF7SWdJBZejurxdoSTWQyxkqOliMWpqTPNHw7o7ksYrB2GfJ
         Xz+E00rrGgS5OWTVTxB6pTjEintTyX16vKNwGT4Gr9/OUwT3CHlqo5XEFVoMxtbM9ToT
         HyNf/G1oDEn6iAYCoQ4Xm4WN00UfFozJaSc8YegukBy2n4KwZgDg7sZ3Vff8gfExmImE
         cZ4uweKCmTRmXeRibP3SOY9JzEWARHA2fBkin/PyQ+NLVEish+4NMQBfPdZpnu/SBnYs
         N1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=zqsrUuiAPXAy4ThFpLnQIt8Iu3/BAqSZfmkcKVrxKas=;
        b=tUFIboIbIhrsuzf1aUolGrzSUDrcJj321pTVH2jSQpI5V1yjXQGVo5q13FWl54t23o
         /pBQJdb2h5PW8NxgA6y1LtLvnYhC2TycV0VbzKDCVexxG97xPMJFI2fToOEVaeMhBU3N
         ALIHJ4scDOPQZ+IS+aZsLumefBp9V39BAolJvoZl8wcnyxCGjJqf0GS9FKRW7MUmomAS
         aACTvvbYBzZziMmptwZCq8lFbfK+I4fWhU9g9VN8McFY10CFHmXWAXQ7y+Yi1sxUQwZH
         94wjtOzNiuqfHjn3OBV1Z6zgG1rm1ZPY/OFpH2In0RhuE8JZFBBmWAjvpWbf4G1m9jxO
         f+dg==
X-Gm-Message-State: AOAM530DY/mFJpUY3T1QV9FkmGU9fprH3orChr7cXpU2e3PTenj5svm6
	Rt8wXFXgL7LCSn0ntJxbjASg0Riehh0=
X-Google-Smtp-Source: ABdhPJyS6ABdygqW3JFDOkIxSbF67fcxk5j+ckuPqeU6i/QqlhtR2TEDmNOy2/KiD5xzS16lhd71VA==
X-Received: by 2002:a17:906:743:: with SMTP id z3mr24012059ejb.216.1595917828792;
        Mon, 27 Jul 2020 23:30:28 -0700 (PDT)
Return-Path: <ithijme@gmail.com>
Received: from [10.68.24.155] ([193.27.14.73])
        by smtp.gmail.com with ESMTPSA id e13sm183675eds.46.2020.07.27.23.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2020 23:30:28 -0700 (PDT)
Subject: Re: [yocto] [meta-java] icedtea7-native fails to build with error: cc1plus: all warnings being treated as errors
To: Robert Joslyn <robert.joslyn@redrectangle.org>,
 yocto@lists.yoctoproject.org
References: <u6iU.1595855785511775765.vBcd@lists.yoctoproject.org>
 <785c799e6974c0c7485cd682427cfa673760c5da.camel@redrectangle.org>
From: ithijme@gmail.com
Message-ID: <32dca10c-bb5d-09c9-c943-9e8a356c731d@gmail.com>
Date: Tue, 28 Jul 2020 08:30:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <785c799e6974c0c7485cd682427cfa673760c5da.camel@redrectangle.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Robert,

Thanks for the tip, it seems to have worked and I've gotten past the 
compilation step.

Unfortunately, now the build seems to be failing the do_package_rpm task 
with the following error:

Exception: bb.process.ExecutionError: Execution of 
'../build/tmp/work/aarch64-poky-linux/icedtea7-native/%-r0/temp/run.BUILDSPEC.153296' 
failed with exit code 127:
../build/tmp/work/aarch64-poky-linux/icedtea7-native/%-r0/temp/run.BUILDSPEC.153296: 
106: rpmbuild: not found
WARNING: exit code 127 from a shell command.

Did you also encounter this ?

Cheers
Jeff

On 7/28/20 5:28 AM, Robert Joslyn wrote:
> On Mon, 2020-07-27 at 06:16 -0700, ithijme@gmail.com wrote:
>> Hi,
>>
>> I am trying to build openjdk-8-native, however its icedtea7 dependency
>> fails to build.
>> The error is a little hard to parse but it appears to be due to warnings
>> being treated as errors.
>> There are a lot of logs like the following:
>>
>> | In function ‘int fprintf(FILE*, const char*, ...)’,
>> |     inlined from ‘void ADLParser::frame_parse()’ at
>> .../build/tmp/work/x86_64-linux/icedtea7-native/2.1.3-r1.0/icedtea-
>> 2.1.3/build/openjdk-boot/hotspot/src/share/vm/adlc/adlparse.cpp:1118:34:
>> | /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:24: error: ‘%s’
>> directive argument is null [-Werror=format-overflow=]
>> |   100 |   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1,
>> __fmt,
>> |       |
>> ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> |   101 |    __va_arg_pack ());
>> |       |    ~~~~~~~~~~~~~~~~~
>> | cc1plus: all warnings being treated as errors
>> | make[7]: *** [.../build/tmp/work/x86_64-linux/icedtea7-native/2.1.3-
>> r1.0/icedtea-2.1.3/build/openjdk-
>> boot/hotspot/make/linux/makefiles/adlc.make:207:
>> ../generated/adfiles/adlparse.o] Error 1
>> | make[7]: *** Waiting for unfinished jobs....
>> | cc1plus: all warnings being treated as errors
>>
>> I am using the following bblayers:
>> * poky/meta
>> * poky/meta-poky
>> * meta-openembedded/meta-oe
>> * meta-java
>>
>> All layers are from the dunfell branch of their respective repositories
>> and are up to date.
>>
>> Can anybody offer any advice on how to successfully build the openjdk-8-
>> native recipe ? Anybody have it working themselves ?
>>
>> Cheers
>> Jeff
>> 
> I had the same problem about a month ago. My quick fix was to create an
> icedtea7-native_%.bbappend in my own layer to disable turning that warning
> into an error:
>
> CFLAGS_append = " -Wno-error=format-overflow"
>
> I assume it's due to the compiler on your build machine being newer (or at
> least different) than what the recipe is expecting.
>
> Robert
>
