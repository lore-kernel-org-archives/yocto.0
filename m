Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.7249.1598424839495577417
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 23:53:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BseT8WAp;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id i13so447984pjv.0
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 23:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5RC6maTyOEoW0AHQWAG5k4D/tn9TLit3k5XbIc6DneI=;
        b=BseT8WAppXA4pk97HYjuq3XxJL1w4M2HVAvDsSJGB09eIX4fE6UfQVdThv6ff2ZyCV
         POu2zm294o+2cryNxwg6rLSoOs8mDULJO49zBDuGujpkLEcr9Hlk5UKLj3kXmEHPJ9hk
         kOSmD73F0TCkpPEbsN34mocGborzm5FI0v8J8TzIEUBd4ewaEwLrT4hSCFMcWMBhhY5c
         Z6HrAUfvfHo7YUBhTdkxHux3u2IrM291V7GRVu3I2NBVaznOhTpCgTuccqtt6duHUXZW
         dR61Kq/E5lGHB9az42rtcLI9rNL/9kLwM8dkT1xqngt7aKhbRtCETEmevljCGlNPJ4kf
         Fk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5RC6maTyOEoW0AHQWAG5k4D/tn9TLit3k5XbIc6DneI=;
        b=XmZHIpqaZMedythGUrFn7IsThYZ6ZDxAtlM0NAEDTejolc8uygoWaCIm4Rxoz4KY1d
         ByMRLz37pLmuGCmMyKCv/ohZCoaCgMQRm0xyr1El+i3evRHiOMe9IHUw1fci6vHHWREc
         XB14AkTktQCv2thAv0e3MEo5j63vWka07ku56rpzfnr6wzale2Txv/Q8/IF5FY2cvKXb
         gi2nz8E9CIFcjGzgdmAz7xMOrl3vnzDEy8plRpGbwDd2MiXZnjuvK9ulAZhaMnKw/WW2
         bKQBBrKLKVR/yCKd052V58A4EJSW0SjadrmBEt5lxaE8PSV4dmfuDeF748sT+c9mtyN1
         wGlQ==
X-Gm-Message-State: AOAM530yB15ubDPOwLrg+bNSxJmHxt1pR9SFABA9MPvPyXtoBruTumn4
	IQfLlCYb05anKXnhWzUh5r9kDfJTOB+UzQ==
X-Google-Smtp-Source: ABdhPJz3QcrpuPVsQFQvZlrbilIkC4zBUeC6Qm/GYKEI3wp71/LWsESoqMWurxRDsMe36gytMaa7dA==
X-Received: by 2002:a17:902:ab96:: with SMTP id f22mr10876843plr.292.1598424838230;
        Tue, 25 Aug 2020 23:53:58 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e8b6:ed97:4b5a:9e46? ([2601:646:9200:4e0:e8b6:ed97:4b5a:9e46])
        by smtp.gmail.com with ESMTPSA id 2sm1114221pjg.32.2020.08.25.23.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:53:57 -0700 (PDT)
Subject: Re: [yocto] Help with yocto poky quick start
To: "Brendan Simon (SEPL)" <brendan@successful.com.au>,
 =?UTF-8?Q?Erik_Bot=c3=b6?= <erik.boto@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <67adbe86-79c9-2fac-3a16-4e768dc2a001@successful.com.au>
 <CALNvYWP1kjafDMAKFQZLFKgzE9O2nmJkrt62Cj+LQcSiZQ8qqA@mail.gmail.com>
 <e5213d11-4739-8550-4f10-8bc94994d520@successful.com.au>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <997c7892-7030-9911-c816-06d4401bfc6d@gmail.com>
Date: Tue, 25 Aug 2020 23:53:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e5213d11-4739-8550-4f10-8bc94994d520@successful.com.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 8/25/20 11:41 PM, Brendan Simon (SEPL) wrote:
> Hi Erik,
> 
> Nope.  It's ot a HTML file.  It is (they are) archives with a 
> files/directories for m4 sources.
> 
>     $ find -name "m4*"
>     ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
>     ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
>     ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206
>     ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616
> 
>     $ find -name "m4*" | xargs file
>     ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c:
>     gzip compressed data, max compression, from Unix, original size 9789440
>     ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c:
>     gzip compressed data, max compression, from Unix, original size 9789440
>     ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206:
>     gzip compressed data, max compression, from Unix, original size 9789440
>     ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616:
>     gzip compressed data, max compression, from Unix, original size 9789440
> 
>     $ tar ztvf
>     m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
>     | head
>     drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/
>     -rw-rw-r-- 0/0          195907 2016-12-31 17:00 m4-1.4.18/ChangeLog-2014
>     -rw-rw-r-- 0/0           63687 2016-12-31 16:34 m4-1.4.18/maint.mk
>     -rw-rw-r-- 0/0            3912 2016-12-31 17:37 m4-1.4.18/ChangeLog
>     -rw-rw-r-- 0/0           69156 2016-12-31 17:25 m4-1.4.18/aclocal.m4
>     -rw-rw-r-- 0/0            2590 2016-12-29 15:32 m4-1.4.18/BACKLOG
>     drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/tests/
>     -rw-rw-r-- 0/0            3126 2016-12-31 08:54
>     m4-1.4.18/tests/getcwd-lgpl.c
>     -rw-rw-r-- 0/0            6134 2016-12-31 08:54
>     m4-1.4.18/tests/test-dup2.c
>     -rw-rw-r-- 0/0            4998 2016-12-31 08:54
>     m4-1.4.18/tests/test-dup-safer.c

everytime checksum is changing, thats not normal. Have you tried

bitbake -cccleanall m4 ; bitbake m4

and see if that helps ?

secondly, check for any mirrors or pre-mirror settings your distro might 
have which is getting this tarball from elsewhere, the checksums are 
correctly mentioned in recipe, it should match those of downloaded tarball.

> 
> Brendan.
> 
> --
> 
> 
> On 26/08/2020 4:22 pm, Erik Botö wrote:
>> Hi Brendan,
>>
>> Could you inspect the file in
>> /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>> to see if it is some kind of HTML file stating a download error?
>>
>> Check the file size, if it's small it's probably an error so open it
>> using an editor to see if you get any hints. Many corporate networks
>> will require the use of a proxy server, see e.g.
>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy  for
>> hints on that.
>>
>> Cheers,
>> Erik
>>
>> On Wed, Aug 26, 2020 at 7:36 AM Brendan Simon (SEPL)
>> <brendan@successful.com.au>  wrote:
>>> Hi,
>>>
>>> I'm new to Yocto and am trying to follow the quick start guide to get up and running with poky.  I'm using the latest Dunfel 3.1.2.
>>>
>>> I'm running Debian 10 Buster in a VirtualBox VM (guest), on a Windows 10 Pro (host).
>>>
>>> I'm having trouble with the build fetching files and getting checksum mismatch, however if I download the troublesome file with wget then the checksum is correct.
>>>
>>> How do I fix this?
>>>
>>> Everything seems very complex with Yocto, but maybe that's because I'm new to it.
>>>
>>>
>>> $ time bitbake core-image-sato
>>> Loading cache: 100% |###############################################################################| Time: 0:00:01Loaded 1312 entries from dependency cache.
>>> NOTE: Resolving any missing task queue dependencies
>>>
>>> Build Configuration:
>>> BB_VERSION           = "1.46.0"
>>> BUILD_SYS            = "x86_64-linux"
>>> NATIVELSBSTRING      = "universal"
>>> TARGET_SYS           = "x86_64-poky-linux"
>>> MACHINE              = "qemux86-64"
>>> DISTRO               = "poky"
>>> DISTRO_VERSION       = "3.1.2"
>>> TUNE_FEATURES        = "m64 core2"
>>> TARGET_FPU           = ""
>>> meta
>>> meta-poky
>>> meta-yocto-bsp       = "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2f81dc8dfe"
>>>
>>> Initialising tasks: 100% |##########################################################################| Time: 0:00:09Checking sstate mirror object availability: 100% |##################################################| Time: 0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current 228 (0% match, 8% complete)
>>> NOTE: Executing Tasks
>>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>>> Cleaning and trying again.
>>> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
>>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum failure encountered with download ofhttps://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz  - will attempt other sources if available
>>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>>> Cleaning and trying again.
>>> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
>>> ERROR: m4-native-1.4.18-r0 do_fetch: Checksum failure fetchinghttps://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
>>> ERROR: m4-native-1.4.18-r0 do_fetch: Fetcher failure for URL: 'https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz'. Checksum mismatch!
>>> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 when a077779db287adf4e12a035029002d28 was expected
>>> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has sha256 checksum 6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c when ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab was expected
>>> If this change is expected (e.g. you have upgraded to a new version without updating the checksums) then you can use these lines within the recipe:
>>> SRC_URI[sha256sum] = "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c"
>>> Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or--- Starting bitbake server pid 6121 at 2020-08-25 19:29:32.273325 ---
>>> Started bitbake server pid 6121
>>> DEBUG: BBCooker starting 1598398172.2817702
>>> DEBUG: BBCooker pyinotify1 1598398172.2922668
>>> DEBUG: BBCooker pyinotify2 1598398172.2926114
>>> DEBUG: BBCooker pyinotify3 1598398172.2971811
>>> DEBUG: BBCooker pyinotify complete 1598398172.2975075
>>> DEBUG: Found bblayers.conf (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/conf/bblayers.conf)
>>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta
>>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-poky
>>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-yocto-bsp
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:755: including conf/abi_version.conf
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:756: including conf/site.conf
>>> DEBUG: CONF file 'conf/site.conf' not found
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:757: including conf/auto.conf
>>> DEBUG: CONF file 'conf/auto.conf' not found
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:758: including conf/local.conf
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:759: including conf/multiconfig/default.conf
>>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:760: including conf/mach...skipping...
>>>   otherwise unexpectedly modified.
>>> ERROR: Logfile of failure stored in: /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.10440
>>> ERROR: Task (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 17 tasks of which 16 didn't need to be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch
>>> Summary: There were 5 WARNING messages shown.
>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>>>
>>> real    37m7.174s
>>> user    0m2.521s
>>> sys     0m1.431s
>>>
>>>
>>> Thanks,
>>> Brendan.
>>>
>>>
> 
> 
> 
> 
