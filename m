Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77203C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 10:32:20 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.10267.1743676337134790832
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 03:32:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TmI5PIN1;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6e8fce04655so6892606d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 03:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743676336; x=1744281136; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LutVl5PFdbKjpwaZnCSfVW5RUHOeJ0dOyTouc9euWJE=;
        b=TmI5PIN16p/cYd7DxplbjdDif3Y+0O/vouq9HaC7iUMQ5iZZBxmOsylhU+biOqW5xJ
         2LddM9px7w3WRyXDZz31/lC/4RTHvl1eRgMb5zNTHpWw20ZpXK3lbUaYb4PY9r57iF2k
         unkWq8e7/wzNjPmNGhaClniZzzbv9q2r7rNUx8e4ImsK6j6YKyOlQTT730jL5YgSNANZ
         dPs67vLvgddiMoVkRET/YutzXcgJDO6m+s8F9rXEq52r8+5m3WLiFzAZ0rIj5VmBXtP2
         ru0j0J39xmgf5AdSbB9Sv2Inv7P31ImOpBDSSTh54dKPdOIY27jBPE83fn9IqvpMtHrt
         GAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743676336; x=1744281136;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LutVl5PFdbKjpwaZnCSfVW5RUHOeJ0dOyTouc9euWJE=;
        b=YhBVi1BNQUE4TRiv5cx+/sllCot8fGmKlFNSZjMgT+iPAxDFSTwV6dmMllx9btW+LH
         Q+GfsQUE389/97Uv8apnAD0BdahPfwcJOf8B+/LTabl5IPfNUZQli7Gs9yB7Kf8A72cB
         MA0qbH3jMfkhcPGwrraivVEAs/JsY0Hh/wJuGSqLNTWuyK+izGjQvZb9lKqXCL5r+sZa
         DSmHRXrd+xffDaXe5m5LLD4EsyObR+mxoFy4B1VLti3npWrRyk+I9/+pWjnJkT9COGHM
         gv8HctYqixM0N4ZSEQImtMMLPdcXeXQkXD2Y/tESViH2XuW7C2pNIRAxGiTInMgaxHgj
         T4Jw==
X-Gm-Message-State: AOJu0YxFd5dMn+a1j+fdSIovy0bhXIUh8jq+q3FWNzs7/PN4jo/i9Rfx
	ALHQpolJ73LWmsrvbJ63+UY6BpGDw3OZGfF8Ro0i6w1pRGgPNRwCZCwLnVLCbpUL8hMMd1YtbOC
	Z/Gca2zDiTm5FN67AuQNlQosqkaFWAw==
X-Gm-Gg: ASbGnctwMKS+P9xn5vDsEZWX7UjVomXtux85jAEV5xKNeVSFicr074AnGAbEM1WC6ag
	1JMhauHhfE7eHrCQemij+HpNG6OYOjhK8s/Y+p2u11xFegQNBU3lBiQXFG2ZQ5e1RL5sPD0qGDk
	Fm7bGSQQwEQ6O8gLZStRomYvtIe5GKutUw/OyZYHKIrrA+jo1jUUUNjy3s56Y+/j89L/6bieQ=
X-Google-Smtp-Source: AGHT+IEbxnwtXKphVuLTi5wGkGAkWEmO1y1iaqjBG1vxbTfbky+nL07tiBkqBzZ7lUYt1ZGyY7B+I50Tv2dUWe5iErQ=
X-Received: by 2002:ad4:4ee2:0:b0:6ea:d49f:ddeb with SMTP id
 6a1803df08f44-6ef02d0d8eemr104748016d6.31.1743676336087; Thu, 03 Apr 2025
 03:32:16 -0700 (PDT)
MIME-Version: 1.0
References: <4kFQ.1743675377918195082.vrBX@lists.yoctoproject.org>
In-Reply-To: <4kFQ.1743675377918195082.vrBX@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Apr 2025 12:32:04 +0200
X-Gm-Features: ATxdqUG0M7tasyxzDSm7EegO53TN-1cDQQoMAowhoAOzobMgrgbf4KZzTB8zA9k
Message-ID: <CANNYZj_LzJH1w_ieTQTbmpdhgaXKmjpWGkR=FqhvbG3zreKBkg@mail.gmail.com>
Subject: Re: [yocto] Error while building python3.11 as an alternative for
 scarthgap (OpenSTLinux) #bitbake #yocto #openstlinux
To: yocto@lists.yoctoproject.org, abhijithkannan45@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 10:32:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65070

Didn't several people tell you before: trying this is not a good idea,
and will cause frustration even for very experienced yocto users.

Rather, you should fix the python code that (presumably) needs 3.11 to
work with 3.12.

Alex

On Thu, 3 Apr 2025 at 12:16, Abhijith via lists.yoctoproject.org
<abhijithkannan45=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I am currently building a custom recipe to install Python 3.11 alongside =
Python 3.12, which is the default version included with OpenSTLinux (Scarth=
gap). I=E2=80=99ve created the custom recipe based on Python 3.11.5.
>
> When I try to compile the Python 3.11 recipe, I initially encounter the f=
ollowing error:
>
> user@M047DTRV:~/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/build-ope=
nstlinuxweston-stm32mp1$ bitbake python3.11
> NOTE: Started PRServer with DBfile: /home/user/Desktop/Testing/Ashish/02_=
STM32MCU/OpenSTLinux5/build-openstlinuxweston-stm32mp1/cache/prserv.sqlite3=
, Address: 127.0.0.1:41249, PID: 2386020
> Loading cache: 100% |####################################################=
######################################################| Time: 0:00:01
> Loaded 4984 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> Build Configuration:
> BB_VERSION           =3D "2.8.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-ostl-linux-gnueabi"
> MACHINE              =3D "stm32mp1"
> DISTRO               =3D "openstlinux-weston"
> DISTRO_VERSION       =3D "5.0.3-snapshot-20250403"
> TUNE_FEATURES        =3D "arm vfp cortexa7 neon vfpv4 thumb callconventio=
n-hard"
> TARGET_FPU           =3D "hard"
> DISTRO_CODENAME      =3D "scarthgap"
> ACCEPT_EULA_stm32mp1 =3D "1"
> GCCVERSION           =3D "13.%"
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-stm32mp"
> meta-python
> meta-oe
> meta-gnome
> meta-multimedia
> meta-networking
> meta-webserver       =3D "HEAD:1235dd4ed4a57e67683c045ad76b6a0f9e896b45"
> meta-st-stm32mp      =3D "HEAD:dd13b8318b78f956086efade81de9c72c0e97187"
> meta-st-openstlinux  =3D "HEAD:a25d4806880cdc73471e3c1824a87901b5a4e44f"
> meta                 =3D "HEAD:236ac1b43308df722a78d3aa20aef065dfae5b2b"
> meta-ust             =3D "<unknown>:<unknown>"
> Sstate summary: Wanted 38 Local 27 Mirrors 0 Missed 11 Current 788 (71% m=
atch, 98% complete)########################           | ETA:  0:00:00
> Removing 1 stale sstate objects for arch x86_64: 100% |##################=
######################################################| Time: 0:00:00
> NOTE: Executing Tasks
> ERROR: python3.11-3.11.5-r0 do_package: Error executing a python function=
 in exec_func_python() autogenerated:
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:extend_recipe_sysroot(d)
>      0003:
> File: '/home/user/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/layers/=
openembedded-core/meta/classes-global/staging.bbclass', lineno: 619, functi=
on: extend_recipe_sysroot
>      0615:                    if "/bin/" in l or "/sbin/" in l:
>      0616:                        # defer /*bin/* files until last in cas=
e they need libs
>      0617:                        binfiles[l] =3D (targetdir, dest)
>      0618:                    else:
>  *** 0619:                        staging_copyfile(l, targetdir, dest, po=
stinsts, seendirs)
>      0620:
>      0621:    # Handle deferred binfiles
>      0622:    for l in binfiles:
>      0623:        (targetdir, dest) =3D binfiles[l]
> File: '/home/user/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/layers/=
openembedded-core/meta/classes-global/staging.bbclass', lineno: 165, functi=
on: staging_copyfile
>      0161:        os.symlink(linkto, dest)
>      0162:        #bb.warn(c)
>      0163:    else:
>      0164:        try:
>  *** 0165:            os.link(c, dest)
>      0166:        except OSError as err:
>      0167:            if err.errno =3D=3D errno.EXDEV:
>      0168:                bb.utils.copyfile(c, dest)
>      0169:            else:
> Exception: FileExistsError: [Errno 17] File exists: '/home/user/Desktop/T=
esting/Ashish/02_STM32MCU/OpenSTLinux5/build-openstlinuxweston-stm32mp1/tmp=
-glibc/sysroots-components/x86_64/python3-native/usr/lib/libpython3.so' -> =
'/home/user/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/build-openstlin=
uxweston-stm32mp1/tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi=
/python3.11/3.11.5/recipe-sysroot-native/usr/lib/libpython3.so'
> ERROR: Logfile of failure stored in: /home/user/Desktop/Testing/Ashish/02=
_STM32MCU/OpenSTLinux5/build-openstlinuxweston-stm32mp1/tmp-glibc/work/cort=
exa7t2hf-neon-vfpv4-ostl-linux-gnueabi/python3.11/3.11.5/temp/log.do_packag=
e.2409035
> ERROR: Task (/home/user/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/l=
ayers/meta-ust/recipes-devtools/python/python3.11_3.11.5.bb:do_package) fai=
led with exit code '1'
> NOTE: Tasks Summary: Attempted 1892 tasks of which 1870 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 2 seconds
>
>
> However, if I rerun the bitbake python3.11 command, it compiles successfu=
lly. This happens every time I perform a clean state for the Python 3.11 re=
cipe and try building it again. On the first attempt, it fails, but on the =
second attempt, it works.
>
> Could you help me understand what might be causing this issue?
>
> Additionally, when I try to build the final image after successfully comp=
iling Python 3.11, the build fails when I run bitbake st-image-weston. I=E2=
=80=99ve attached the error log related to this issue as well. I have attac=
hed the custom recipes for your reference.
>
> Errors were encountered while processing:
>  /home/user/Desktop/Testing/Ashish/02_STM32MCU/OpenSTLinux5/build-openstl=
inuxweston-stm32mp1/tmp-glibc/work/stm32mp1-ostl-linux-gnueabi/st-image-wes=
ton/1.0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/./python3.11_3.11.5-r0.15_ar=
mhf.deb
> W: No sandbox user '_apt' on the system, can not drop privileges
> E: Sub-process dpkg returned an error code (1)
>
>
>
> Thank you in advance for your help!
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65069): https://lists.yoctoproject.org/g/yocto/messag=
e/65069
> Mute This Topic: https://lists.yoctoproject.org/mt/112062927/1686489
> Mute #openstlinux:https://lists.yoctoproject.org/g/yocto/mutehashtag/open=
stlinux
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

