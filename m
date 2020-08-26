Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web12.7694.1598426894845160595
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 00:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@successful-com-au.20150623.gappssmtp.com header.s=20150623 header.b=dRt5TQfM;
 spf=neutral (domain: successful.com.au, ip: 209.85.216.51, mailfrom: brendan@successful.com.au)
Received: by mail-pj1-f51.google.com with SMTP id 2so476223pjx.5
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 00:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=successful-com-au.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=6KZVLKRLD9ufrf2i8bl14rEVsRocyk27GgB6J9tmMis=;
        b=dRt5TQfMWzZpVr4PVmWyQU3A8cNViXGHcbMxkm/gcVxRxglx1Clue8ES0tUsiWGT8Q
         tuZ2tUeQK1GEpJ0zlA9drK9Ao7sylTZO0Smrou4Wfob/Vd9j8TGV8Yhv2bpLI0BxbLvo
         1z5Rh+KSpPca9Wv7z/Yf96SAJwYJ3mZmmlLazl4lNMRvoHQksytmAoqr5p7XYhWKzwvY
         mjYCeF3cNUamVWvDq3DdJb5EoQCFVyj76cNwb2ZiTUPjzKoJEEAZ9az7AyL9/zo5QMt7
         p3fVxNgCypnkgZWUOWnW1ksxBjspqRb+gwliDwIDdmTCPxm37fSCqS74Z5ouuSsksodS
         YPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=6KZVLKRLD9ufrf2i8bl14rEVsRocyk27GgB6J9tmMis=;
        b=Ee4uQMwil3Gq6UUQ+pedp8NYnpWq3Kr6sM7Kf/JEwoN5TzXnmF9lGmZ3MN1rvnkIOl
         uNdaZ6Xbwc5gY56QaWLmmMIcCpbw852k2fwvvRuDHQ7m6YTxiKNRkpBvycm9yNf5G16H
         6UVhzJb/E5NfR0WaSt8MHEZR6JB/sQ3HKHpJEuVcy3Vf15MRnnSwYD+ZvbpgFalsb0ay
         sXT4zObYPsmexejdNKXOOPxTakDVPXHSmcG65627SHnqw/R4HbZb+1J2/M+wicU8+cAt
         51XAnyUqVRMPkCKkZq+S0XqpU15pSyrVzhUAunn9imXzbngrvcQTlfMTWfDkrcR9mZ0q
         76BA==
X-Gm-Message-State: AOAM530icbBE131mA0wRmSGZLH6pdExe5adfNpBvHNhWIzWV2fpVM6pH
	rnCJvreeZ0l8s8Apt60KHmIjB+5gEFEXeiAt
X-Google-Smtp-Source: ABdhPJyXA5lUeV7Fg4RpIv6Id2vV2+ij0ORB6yGixAr+2YhEAquVv3U9sJCt2mO22HOIbZHtYD64bg==
X-Received: by 2002:a17:90a:ac07:: with SMTP id o7mr5117869pjq.194.1598426893960;
        Wed, 26 Aug 2020 00:28:13 -0700 (PDT)
Return-Path: <brendan@successful.com.au>
Received: from ?IPv6:2406:3400:314:db20:c09:4dec:5f73:be5c? ([2406:3400:314:db20:c09:4dec:5f73:be5c])
        by smtp.gmail.com with ESMTPSA id y28sm1654856pfq.83.2020.08.26.00.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 00:28:13 -0700 (PDT)
Subject: Re: [yocto] Help with yocto poky quick start
To: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
References: <67adbe86-79c9-2fac-3a16-4e768dc2a001@successful.com.au>
 <CALNvYWP1kjafDMAKFQZLFKgzE9O2nmJkrt62Cj+LQcSiZQ8qqA@mail.gmail.com>
 <e5213d11-4739-8550-4f10-8bc94994d520@successful.com.au>
 <CAEt6Nwqra4OLe5XLw0HfAsVQhz_5o7J0ospJnUqcU2LVTAPWqg@mail.gmail.com>
From: "Brendan Simon (SEPL)" <brendan@successful.com.au>
Message-ID: <edebff43-048c-30df-7d3a-9b3d808bc307@successful.com.au>
Date: Wed, 26 Aug 2020 17:28:10 +1000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAEt6Nwqra4OLe5XLw0HfAsVQhz_5o7J0ospJnUqcU2LVTAPWqg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------8C24F51F6EE5A5384F207F05"
Content-Language: en-US

--------------8C24F51F6EE5A5384F207F05
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Josef,

It actually might not be that much of a long shot.  I am using WSL2 on 
Win 10 Pro, and I have had trouble with connecting my VS Code Remote SSH 
to my VirtualBox VMs.  Standard ssh from the command line works, but 
vscode remote ssh doesn't connect (when it used to).  Also having issues 
upgrading an Ubuntu 20.04 VirtualBox VM.

Might try disabling disabling WSL and see if that improves things.

Brendan.

--


On 26/08/2020 4:54 pm, Josef Holzmayr-Khosh Amoz wrote:
> Howdy!
>
> Its a long shot, but are you also using WSL2 on the Windows 10 Host?
> In that case, downloads into a VirtualBox VM can be corrupted, see
> https://www.virtualbox.org/ticket/19695
>
> Greetz
>
> Am Mi., 26. Aug. 2020 um 08:41 Uhr schrieb Brendan Simon (SEPL)
> <brendan@successful.com.au>:
>> Hi Erik,
>>
>> Nope.  It's ot a HTML file.  It is (they are) archives with a files/directories for m4 sources.
>>
>> $ find -name "m4*"
>> ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
>> ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
>> ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206
>> ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616
>>
>> $ find -name "m4*" | xargs file
>> ./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c: gzip compressed data, max compression, from Unix, original size 9789440
>> ./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c: gzip compressed data, max compression, from Unix, original size 9789440
>> ./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206: gzip compressed data, max compression, from Unix, original size 9789440
>> ./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616: gzip compressed data, max compression, from Unix, original size 9789440
>>
>> $ tar ztvf m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c | head
>> drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/
>> -rw-rw-r-- 0/0          195907 2016-12-31 17:00 m4-1.4.18/ChangeLog-2014
>> -rw-rw-r-- 0/0           63687 2016-12-31 16:34 m4-1.4.18/maint.mk
>> -rw-rw-r-- 0/0            3912 2016-12-31 17:37 m4-1.4.18/ChangeLog
>> -rw-rw-r-- 0/0           69156 2016-12-31 17:25 m4-1.4.18/aclocal.m4
>> -rw-rw-r-- 0/0            2590 2016-12-29 15:32 m4-1.4.18/BACKLOG
>> drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/tests/
>> -rw-rw-r-- 0/0            3126 2016-12-31 08:54 m4-1.4.18/tests/getcwd-lgpl.c
>> -rw-rw-r-- 0/0            6134 2016-12-31 08:54 m4-1.4.18/tests/test-dup2.c
>> -rw-rw-r-- 0/0            4998 2016-12-31 08:54 m4-1.4.18/tests/test-dup-safer.c
>>
>> Brendan.
>>
>> --
>>
>>
>> On 26/08/2020 4:22 pm, Erik Botö wrote:
>>
>> Hi Brendan,
>>
>> Could you inspect the file in
>> /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>> to see if it is some kind of HTML file stating a download error?
>>
>> Check the file size, if it's small it's probably an error so open it
>> using an editor to see if you get any hints. Many corporate networks
>> will require the use of a proxy server, see e.g.
>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy for
>> hints on that.
>>
>> Cheers,
>> Erik
>>
>> On Wed, Aug 26, 2020 at 7:36 AM Brendan Simon (SEPL)
>> <brendan@successful.com.au> wrote:
>>
>> Hi,
>>
>> I'm new to Yocto and am trying to follow the quick start guide to get up and running with poky.  I'm using the latest Dunfel 3.1.2.
>>
>> I'm running Debian 10 Buster in a VirtualBox VM (guest), on a Windows 10 Pro (host).
>>
>> I'm having trouble with the build fetching files and getting checksum mismatch, however if I download the troublesome file with wget then the checksum is correct.
>>
>> How do I fix this?
>>
>> Everything seems very complex with Yocto, but maybe that's because I'm new to it.
>>
>>
>> $ time bitbake core-image-sato
>> Loading cache: 100% |###############################################################################| Time: 0:00:01Loaded 1312 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION           = "1.46.0"
>> BUILD_SYS            = "x86_64-linux"
>> NATIVELSBSTRING      = "universal"
>> TARGET_SYS           = "x86_64-poky-linux"
>> MACHINE              = "qemux86-64"
>> DISTRO               = "poky"
>> DISTRO_VERSION       = "3.1.2"
>> TUNE_FEATURES        = "m64 core2"
>> TARGET_FPU           = ""
>> meta
>> meta-poky
>> meta-yocto-bsp       = "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2f81dc8dfe"
>>
>> Initialising tasks: 100% |##########################################################################| Time: 0:00:09Checking sstate mirror object availability: 100% |##################################################| Time: 0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current 228 (0% match, 8% complete)
>> NOTE: Executing Tasks
>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>> Cleaning and trying again.
>> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum failure encountered with download of https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz - will attempt other sources if available
>> WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
>> Cleaning and trying again.
>> WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
>> ERROR: m4-native-1.4.18-r0 do_fetch: Checksum failure fetching https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
>> ERROR: m4-native-1.4.18-r0 do_fetch: Fetcher failure for URL: 'https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz'. Checksum mismatch!
>> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 when a077779db287adf4e12a035029002d28 was expected
>> File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has sha256 checksum 6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c when ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab was expected
>> If this change is expected (e.g. you have upgraded to a new version without updating the checksums) then you can use these lines within the recipe:
>> SRC_URI[sha256sum] = "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c"
>> Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or--- Starting bitbake server pid 6121 at 2020-08-25 19:29:32.273325 ---
>> Started bitbake server pid 6121
>> DEBUG: BBCooker starting 1598398172.2817702
>> DEBUG: BBCooker pyinotify1 1598398172.2922668
>> DEBUG: BBCooker pyinotify2 1598398172.2926114
>> DEBUG: BBCooker pyinotify3 1598398172.2971811
>> DEBUG: BBCooker pyinotify complete 1598398172.2975075
>> DEBUG: Found bblayers.conf (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/conf/bblayers.conf)
>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta
>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-poky
>> DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-yocto-bsp
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:755: including conf/abi_version.conf
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:756: including conf/site.conf
>> DEBUG: CONF file 'conf/site.conf' not found
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:757: including conf/auto.conf
>> DEBUG: CONF file 'conf/auto.conf' not found
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:758: including conf/local.conf
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:759: including conf/multiconfig/default.conf
>> DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:760: including conf/mach...skipping...
>>   otherwise unexpectedly modified.
>> ERROR: Logfile of failure stored in: /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.10440
>> ERROR: Task (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 17 tasks of which 16 didn't need to be rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch
>> Summary: There were 5 WARNING messages shown.
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>>
>> real    37m7.174s
>> user    0m2.521s
>> sys     0m1.431s
>>
>>
>> Thanks,
>> Brendan.
>>
>>
>>
>> 


--------------8C24F51F6EE5A5384F207F05
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font color="#663300">Hi Josef,<br>
      <br>
      It actually might not be that much of a long shot.  I am using
      WSL2 on Win 10 Pro, and I have had trouble with connecting my VS
      Code Remote SSH to my VirtualBox VMs.  Standard ssh from the
      command line works, but vscode remote ssh doesn't connect (when it
      used to).  Also having issues upgrading an Ubuntu 20.04 VirtualBox
      VM.<br>
      <br>
      Might try disabling disabling WSL and see if that improves things.<br>
      <br>
      Brendan.<br>
      <br>
      --<br>
      <br>
    </font><br>
    <div class="moz-cite-prefix">On 26/08/2020 4:54 pm, Josef
      Holzmayr-Khosh Amoz wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAEt6Nwqra4OLe5XLw0HfAsVQhz_5o7J0ospJnUqcU2LVTAPWqg@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Howdy!

Its a long shot, but are you also using WSL2 on the Windows 10 Host?
In that case, downloads into a VirtualBox VM can be corrupted, see
<a class="moz-txt-link-freetext" href="https://www.virtualbox.org/ticket/19695">https://www.virtualbox.org/ticket/19695</a>

Greetz

Am Mi., 26. Aug. 2020 um 08:41 Uhr schrieb Brendan Simon (SEPL)
<a class="moz-txt-link-rfc2396E" href="mailto:brendan@successful.com.au">&lt;brendan@successful.com.au&gt;</a>:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi Erik,

Nope.  It's ot a HTML file.  It is (they are) archives with a files/directories for m4 sources.

$ find -name "m4*"
./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206
./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616

$ find -name "m4*" | xargs file
./m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c: gzip compressed data, max compression, from Unix, original size 9789440
./m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c: gzip compressed data, max compression, from Unix, original size 9789440
./m4-1.4.18.tar.gz_bad-checksum_d8a6ce0c8a97f9f13af9d15d72e4e398daf24ceba4afa4c6925314c39bd81206: gzip compressed data, max compression, from Unix, original size 9789440
./m4-1.4.18.tar.gz_bad-checksum_b295109d6ddd3c387b794fb6e4b4dfe31d42991a6a537bd92b1a385c2ed3b616: gzip compressed data, max compression, from Unix, original size 9789440

$ tar ztvf m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c | head
drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/
-rw-rw-r-- 0/0          195907 2016-12-31 17:00 m4-1.4.18/ChangeLog-2014
-rw-rw-r-- 0/0           63687 2016-12-31 16:34 m4-1.4.18/maint.mk
-rw-rw-r-- 0/0            3912 2016-12-31 17:37 m4-1.4.18/ChangeLog
-rw-rw-r-- 0/0           69156 2016-12-31 17:25 m4-1.4.18/aclocal.m4
-rw-rw-r-- 0/0            2590 2016-12-29 15:32 m4-1.4.18/BACKLOG
drwxrwxr-x 0/0               0 2016-12-31 17:37 m4-1.4.18/tests/
-rw-rw-r-- 0/0            3126 2016-12-31 08:54 m4-1.4.18/tests/getcwd-lgpl.c
-rw-rw-r-- 0/0            6134 2016-12-31 08:54 m4-1.4.18/tests/test-dup2.c
-rw-rw-r-- 0/0            4998 2016-12-31 08:54 m4-1.4.18/tests/test-dup-safer.c

Brendan.

--


On 26/08/2020 4:22 pm, Erik Botö wrote:

Hi Brendan,

Could you inspect the file in
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
to see if it is some kind of HTML file stating a download error?

Check the file size, if it's small it's probably an error so open it
using an editor to see if you get any hints. Many corporate networks
will require the use of a proxy server, see e.g.
<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy">https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy</a> for
hints on that.

Cheers,
Erik

On Wed, Aug 26, 2020 at 7:36 AM Brendan Simon (SEPL)
<a class="moz-txt-link-rfc2396E" href="mailto:brendan@successful.com.au">&lt;brendan@successful.com.au&gt;</a> wrote:

Hi,

I'm new to Yocto and am trying to follow the quick start guide to get up and running with poky.  I'm using the latest Dunfel 3.1.2.

I'm running Debian 10 Buster in a VirtualBox VM (guest), on a Windows 10 Pro (host).

I'm having trouble with the build fetching files and getting checksum mismatch, however if I download the troublesome file with wget then the checksum is correct.

How do I fix this?

Everything seems very complex with Yocto, but maybe that's because I'm new to it.


$ time bitbake core-image-sato
Loading cache: 100% |###############################################################################| Time: 0:00:01Loaded 1312 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.46.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "qemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "3.1.2"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2f81dc8dfe"

Initialising tasks: 100% |##########################################################################| Time: 0:00:09Checking sstate mirror object availability: 100% |##################################################| Time: 0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current 228 (0% match, 8% complete)
NOTE: Executing Tasks
WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
Cleaning and trying again.
WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
WARNING: m4-native-1.4.18-r0 do_fetch: Checksum failure encountered with download of <a class="moz-txt-link-freetext" href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a> - will attempt other sources if available
WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local file /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
Cleaning and trying again.
WARNING: m4-native-1.4.18-r0 do_fetch: Renaming /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz to /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
ERROR: m4-native-1.4.18-r0 do_fetch: Checksum failure fetching <a class="moz-txt-link-freetext" href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>
ERROR: m4-native-1.4.18-r0 do_fetch: Fetcher failure for URL: '<a class="moz-txt-link-freetext" href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>'. Checksum mismatch!
File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 when a077779db287adf4e12a035029002d28 was expected
File: '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz' has sha256 checksum 6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c when ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab was expected
If this change is expected (e.g. you have upgraded to a new version without updating the checksums) then you can use these lines within the recipe:
SRC_URI[sha256sum] = "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c"
Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or--- Starting bitbake server pid 6121 at 2020-08-25 19:29:32.273325 ---
Started bitbake server pid 6121
DEBUG: BBCooker starting 1598398172.2817702
DEBUG: BBCooker pyinotify1 1598398172.2922668
DEBUG: BBCooker pyinotify2 1598398172.2926114
DEBUG: BBCooker pyinotify3 1598398172.2971811
DEBUG: BBCooker pyinotify complete 1598398172.2975075
DEBUG: Found bblayers.conf (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/conf/bblayers.conf)
DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta
DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-poky
DEBUG: Adding layer /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-yocto-bsp
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:755: including conf/abi_version.conf
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:756: including conf/site.conf
DEBUG: CONF file 'conf/site.conf' not found
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:757: including conf/auto.conf
DEBUG: CONF file 'conf/auto.conf' not found
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:758: including conf/local.conf
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:759: including conf/multiconfig/default.conf
DEBUG: CONF /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:760: including conf/mach...skipping...
 otherwise unexpectedly modified.
ERROR: Logfile of failure stored in: /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.10440
ERROR: Task (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 17 tasks of which 16 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch
Summary: There were 5 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

real    37m7.174s
user    0m2.521s
sys     0m1.431s


Thanks,
Brendan.




</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------8C24F51F6EE5A5384F207F05--
