Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web12.6509.1598420190181683076
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 22:36:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@successful-com-au.20150623.gappssmtp.com header.s=20150623 header.b=gnO6+Mvd;
 spf=neutral (domain: successful.com.au, ip: 209.85.215.174, mailfrom: brendan@successful.com.au)
Received: by mail-pg1-f174.google.com with SMTP id m34so464206pgl.11
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 22:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=successful-com-au.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language;
        bh=1Y0fDnU3P+tqOmx8+LvDI11VU4lGcBUGdLLk8iCqmUU=;
        b=gnO6+MvdoLHOsHcaOOI+HO9ZqeHgsfhLOJ7BZjhkg7mvAtdrNdE02kN6Upp/oye7Gi
         GuggNN8iGvR8i9zvfKZaVW2xXQIxBt6ZptdimnLcdzcxMGa/9tqdC5rzUgv2MQXzce1c
         SFxes6Mu1WZNd08Gl+XzHzlJho2X0tZF7THLTmSWjoH+rRLIQa1852XUjwIVmsAyu09P
         a+eGI2VmEhuKbTBVc1LekayTsbNv1P7ndKfTkKClcVZVVafTvbiaDndtC0hM/SwBe+Nt
         cku032b4jf8J92fKxky9eMdefL25UTNplH9y7nfQv0wAU5Jl21DAeDpP8RrEA39SyvTy
         n0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language;
        bh=1Y0fDnU3P+tqOmx8+LvDI11VU4lGcBUGdLLk8iCqmUU=;
        b=EKw8UPgxEFdlzcSF9Rm3Bu0PnJ47F4OBHKFRuZzUI4bb2GBJAc7qzP4MAdBzrlxuO0
         Mb+XRFMcJTMGLoNVpo6xR608nW27pT1AJFbZZKFVB5vYWvbWRTDZA5LZF+HvgDZleAuW
         9kZlu2X/nvqZiIxJPn3E9HsIeLj0amjydLMzQYB/7cuP0cgk1Vku4yQiM2fkt+UlVFfi
         INtnfNtOx6/9Wwy4DXcc67B7at7zpSFp6oXy5aN1wDo9X/xEOc7RC6IYSZbFNYucWXIv
         GS7nqG/qb0DE+lJyuw8U15Zkhd5o1bAwL74ILzynupaxPdpagVp5KooQfltZGos1JzaJ
         HMeQ==
X-Gm-Message-State: AOAM530dmWqE21Tf/GTglSp4doezMWyS7RmJ6VZZr1bVK3VQ67KAwWo2
	SZcMme08WbV+eKQGTQFdVial4zLiyuVGHAfu
X-Google-Smtp-Source: ABdhPJwtTrolquKJnyYTOKZB4RIH0J65OXyWDFp0q3e68XP78czXm11NOjUafuDu9rqdGDZ75W5O4Q==
X-Received: by 2002:aa7:9799:: with SMTP id o25mr329567pfp.109.1598420189017;
        Tue, 25 Aug 2020 22:36:29 -0700 (PDT)
Return-Path: <brendan@successful.com.au>
Received: from ?IPv6:2406:3400:314:db20:c09:4dec:5f73:be5c? ([2406:3400:314:db20:c09:4dec:5f73:be5c])
        by smtp.gmail.com with ESMTPSA id b18sm786738pjq.3.2020.08.25.22.36.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 22:36:28 -0700 (PDT)
From: brendan@successful.com.au
Subject: Help with yocto poky quick start
To: yocto@lists.yoctoproject.org
Message-ID: <67adbe86-79c9-2fac-3a16-4e768dc2a001@successful.com.au>
Date: Wed, 26 Aug 2020 15:36:23 +1000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------709A1C332BBCAD5AD3EF9127"
Content-Language: en-US

--------------709A1C332BBCAD5AD3EF9127
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm new to Yocto and am trying to follow the quick start guide to get up 
and running with poky.  I'm using the latest Dunfel 3.1.2.

I'm running Debian 10 Buster in a VirtualBox VM (guest), on a Windows 10 
Pro (host).

I'm having trouble with the build fetching files and getting checksum 
mismatch, however if I download the troublesome file with wget then the 
checksum is correct.

How do I fix this?

Everything seems very complex with Yocto, but maybe that's because I'm 
new to it.


    $ time bitbake core-image-sato
    Loading cache: 100%
    |###############################################################################|
    Time: 0:00:01Loaded 1312 entries from dependency cache.
    NOTE: Resolving any missing task queue dependencies

    Build Configuration:
    BB_VERSION           = "1.46.0"
    BUILD_SYS            = "x86_64-linux"
    NATIVELSBSTRING      = "universal"
    TARGET_SYS           = "x86_64-poky-linux"
    MACHINE              = "qemux86-64"
    DISTRO               = "poky"
    DISTRO_VERSION       = "3.1.2"
    TUNE_FEATURES        = "m64 core2"
    TARGET_FPU           = ""
    meta
    meta-poky
    meta-yocto-bsp       =
    "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2f81dc8dfe"

    Initialising tasks: 100%
    |##########################################################################|
    Time: 0:00:09Checking sstate mirror object availability: 100%
    |##################################################| Time:
    0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current 228
    (0% match, 8% complete)
    NOTE: Executing Tasks
    WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local
    file
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
    Cleaning and trying again.
    WARNING: m4-native-1.4.18-r0 do_fetch: Renaming
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
    to
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c
    WARNING: m4-native-1.4.18-r0 do_fetch: Checksum failure encountered
    with download of https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz - will
    attempt other sources if available
    WARNING: m4-native-1.4.18-r0 do_fetch: Checksum mismatch for local
    file
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
    Cleaning and trying again.
    WARNING: m4-native-1.4.18-r0 do_fetch: Renaming
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
    to
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
    ERROR: m4-native-1.4.18-r0 do_fetch: Checksum failure fetching
    https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
    ERROR: m4-native-1.4.18-r0 do_fetch: Fetcher failure for URL:
    'https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz'. Checksum mismatch!
    File:
    '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz'
    has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 when
    a077779db287adf4e12a035029002d28 was expected
    File:
    '/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz'
    has sha256 checksum
    6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
    when
    ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab was
    expected
    If this change is expected (e.g. you have upgraded to a new version
    without updating the checksums) then you can use these lines within
    the recipe:
    SRC_URI[sha256sum] =
    "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c"
    Otherwise you should retry the download and/or check with upstream
    to determine if the file has become corrupted or--- Starting bitbake
    server pid 6121 at 2020-08-25 19:29:32.273325 ---
    Started bitbake server pid 6121
    DEBUG: BBCooker starting 1598398172.2817702
    DEBUG: BBCooker pyinotify1 1598398172.2922668
    DEBUG: BBCooker pyinotify2 1598398172.2926114
    DEBUG: BBCooker pyinotify3 1598398172.2971811
    DEBUG: BBCooker pyinotify complete 1598398172.2975075
    DEBUG: Found bblayers.conf
    (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/conf/bblayers.conf)

    DEBUG: Adding layer
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta
    DEBUG: Adding layer
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-poky
    DEBUG: Adding layer
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-yocto-bsp
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:755:
    including conf/abi_version.conf
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:756:
    including conf/site.conf
    DEBUG: CONF file 'conf/site.conf' not found
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:757:
    including conf/auto.conf
    DEBUG: CONF file 'conf/auto.conf' not found
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:758:
    including conf/local.conf
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:759:
    including conf/multiconfig/default.conf
    DEBUG: CONF
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:760:
    including conf/mach...skipping...
      otherwise unexpectedly modified.
    ERROR: Logfile of failure stored in:
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.10440
    ERROR: Task
    (/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
    failed with exit code '1'
    NOTE: Tasks Summary: Attempted 17 tasks of which 16 didn't need to
    be rerun and 1 failed.

    Summary: 1 task failed:
    /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch

    Summary: There were 5 WARNING messages shown.
    Summary: There were 2 ERROR messages shown, returning a non-zero
    exit code.

    real    37m7.174s
    user    0m2.521s
    sys     0m1.431s


Thanks,
Brendan.


--------------709A1C332BBCAD5AD3EF9127
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font color="#663300">Hi,<br>
      <br>
      I'm new to Yocto and am trying to follow the quick start guide to
      get up and running with poky.  I'm using the latest Dunfel 3.1.2.<br>
      <br>
      I'm running Debian 10 Buster in a VirtualBox VM (guest), on a
      Windows 10 Pro (host).<br>
      <br>
      I'm having trouble with the build fetching files and getting
      checksum mismatch, however if I download the troublesome file with
      wget then the checksum is correct.<br>
      <br>
      How do I fix this?<br>
      <br>
      Everything seems very complex with Yocto, but maybe that's because
      I'm new to it.<br>
      <br>
      <br>
    </font>
    <blockquote><tt><font color="#663300">$ time bitbake core-image-sato</font></tt><tt><br>
      </tt><tt><font color="#663300">Loading cache: 100%
|###############################################################################|
          Time: 0:00:01Loaded 1312 entries from dependency cache.</font></tt><tt><br>
      </tt><tt><font color="#663300">NOTE: Resolving any missing task
          queue dependencies</font></tt><tt><br>
      </tt><tt><br>
      </tt><tt><font color="#663300">Build Configuration:</font></tt><tt><br>
      </tt><tt><font color="#663300">BB_VERSION           = "1.46.0"</font></tt><tt><br>
      </tt><tt><font color="#663300">BUILD_SYS            =
          "x86_64-linux"</font></tt><tt><br>
      </tt><tt><font color="#663300">NATIVELSBSTRING      = "universal"</font></tt><tt><br>
      </tt><tt><font color="#663300">TARGET_SYS           =
          "x86_64-poky-linux"</font></tt><tt><br>
      </tt><tt><font color="#663300">MACHINE              = "qemux86-64"</font></tt><tt><br>
      </tt><tt><font color="#663300">DISTRO               = "poky"</font></tt><tt><br>
      </tt><tt><font color="#663300">DISTRO_VERSION       = "3.1.2"</font></tt><tt><br>
      </tt><tt><font color="#663300">TUNE_FEATURES        = "m64 core2"</font></tt><tt><br>
      </tt><tt><font color="#663300">TARGET_FPU           = ""</font></tt><tt><br>
      </tt><tt><font color="#663300">meta</font></tt><tt><br>
      </tt><tt><font color="#663300">meta-poky</font></tt><tt><br>
      </tt><tt><font color="#663300">meta-yocto-bsp       =
          "my-yocto-3.1.2:569b1f5d67c57de957e243997c53ec2f81dc8dfe"</font></tt><tt><br>
      </tt><tt><br>
      </tt><tt><font color="#663300">Initialising tasks: 100%
|##########################################################################|
          Time: 0:00:09Checking sstate mirror object availability: 100%
          |##################################################| Time:
          0:36:41Sstate summary: Wanted 2547 Found 0 Missed 2547 Current
          228 (0% match, 8% complete)</font></tt><tt><br>
      </tt><tt><font color="#663300">NOTE: Executing Tasks</font></tt><tt><br>
      </tt><tt><font color="#663300">WARNING: m4-native-1.4.18-r0
          do_fetch: Checksum mismatch for local file
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz</font></tt><tt><br>
      </tt><tt><font color="#663300">Cleaning and trying again.</font></tt><tt><br>
      </tt><tt><font color="#663300">WARNING: m4-native-1.4.18-r0
          do_fetch: Renaming
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
          to
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_e64407f9097a607b4463e0c82d898c19b0a3bfd2199d30337b5464d8b416e59c</font></tt><tt><br>
      </tt><tt><font color="#663300">WARNING: m4-native-1.4.18-r0
          do_fetch: Checksum failure encountered with download of <a
            class="moz-txt-link-freetext"
            href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz"
            moz-do-not-send="true">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>
          - will attempt other sources if available</font></tt><tt><br>
      </tt><tt><font color="#663300">WARNING: m4-native-1.4.18-r0
          do_fetch: Checksum mismatch for local file
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz</font></tt><tt><br>
      </tt><tt><font color="#663300">Cleaning and trying again.</font></tt><tt><br>
      </tt><tt><font color="#663300">WARNING: m4-native-1.4.18-r0
          do_fetch: Renaming
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz
          to
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz_bad-checksum_6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c</font></tt><tt><br>
      </tt><tt><font color="#663300">ERROR: m4-native-1.4.18-r0
          do_fetch: Checksum failure fetching <a
            class="moz-txt-link-freetext"
            href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz"
            moz-do-not-send="true">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a></font></tt><tt><br>
      </tt><tt><font color="#663300">ERROR: m4-native-1.4.18-r0
          do_fetch: Fetcher failure for URL: '<a
            class="moz-txt-link-freetext"
            href="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz"
            moz-do-not-send="true">https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz</a>'.
          Checksum mismatch!</font></tt><tt><br>
      </tt><tt><font color="#663300">File:
'/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz'
          has md5 checksum 6a289f7da1478d63683eb4ad976c3c99 when
          a077779db287adf4e12a035029002d28 was expected</font></tt><tt><br>
      </tt><tt><font color="#663300">File:
'/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/downloads/m4-1.4.18.tar.gz'
          has sha256 checksum
          6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c
          when
          ab2633921a5cd38e48797bf5521ad259bdc4b979078034a3b790d7fec5493fab
          was expected</font></tt><tt><br>
      </tt><tt><font color="#663300">If this change is expected (e.g.
          you have upgraded to a new version without updating the
          checksums) then you can use these lines within the recipe:</font></tt><tt><br>
      </tt><tt><font color="#663300">SRC_URI[sha256sum] =
          "6a1537c79ea613aa70849d8f1f7eeb5a5dbbea3a9527d4aea33a1c8a88e80b9c"</font></tt><tt><br>
      </tt><tt><font color="#663300">Otherwise you should retry the
          download and/or check with upstream to determine if the file
          has become corrupted or--- Starting bitbake server pid 6121 at
          2020-08-25 19:29:32.273325 ---</font></tt><tt><br>
      </tt><tt><font color="#663300">Started bitbake server pid 6121</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: BBCooker starting
          1598398172.2817702</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: BBCooker pyinotify1
          1598398172.2922668</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: BBCooker pyinotify2
          1598398172.2926114</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: BBCooker pyinotify3
          1598398172.2971811</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: BBCooker pyinotify complete
          1598398172.2975075</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: Found bblayers.conf
(/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/conf/bblayers.conf)     
        </font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: Adding layer
          /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: Adding layer
          /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-poky</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: Adding layer
          /home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta-yocto-bsp</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:755:
          including conf/abi_version.conf</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:756:
          including conf/site.conf</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF file 'conf/site.conf'
          not found</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:757:
          including conf/auto.conf</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF file 'conf/auto.conf'
          not found</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:758:
          including conf/local.conf</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:759:
          including conf/multiconfig/default.conf</font></tt><tt><br>
      </tt><tt><font color="#663300">DEBUG: CONF
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/conf/bitbake.conf:760:
          including conf/mach...skipping...</font></tt><tt><br>
      </tt><tt><font color="#663300"> otherwise unexpectedly modified.</font></tt><tt><br>
      </tt><tt><font color="#663300">ERROR: Logfile of failure stored
          in:
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/build/tmp/work/x86_64-linux/m4-native/1.4.18-r0/temp/log.do_fetch.10440</font></tt><tt><br>
      </tt><tt><font color="#663300">ERROR: Task
(/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch)
          failed with exit code '1'</font></tt><tt><br>
      </tt><tt><font color="#663300">NOTE: Tasks Summary: Attempted 17
          tasks of which 16 didn't need to be rerun and 1 failed.</font></tt><tt><br>
      </tt><tt><br>
      </tt><tt><font color="#663300">Summary: 1 task failed:</font></tt><tt><br>
      </tt><tt><font color="#663300"> 
/home/brendan/SEPL/Projects/Erntec/PMU/yocto_trial/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_fetch   
        </font></tt><tt><br>
      </tt><tt><font color="#663300">Summary: There were 5 WARNING
          messages shown.</font></tt><tt><br>
      </tt><tt><font color="#663300">Summary: There were 2 ERROR
          messages shown, returning a non-zero exit code.</font></tt><tt><br>
      </tt><tt><br>
      </tt><tt><font color="#663300">real    37m7.174s</font></tt><tt><br>
      </tt><tt><font color="#663300">user    0m2.521s</font></tt><tt><br>
      </tt><tt><font color="#663300">sys     0m1.431s</font></tt><br>
    </blockquote>
    <font color="#663300"><br>
      Thanks,<br>
      Brendan.<br>
      <br>
    </font>
  </body>
</html>

--------------709A1C332BBCAD5AD3EF9127--
