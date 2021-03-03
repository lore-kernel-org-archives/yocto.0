Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6988.1614780603637794691
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 06:10:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D4a9ZBeh;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DBD7438C0627
	for <yocto@yoctoproject.org>; Wed,  3 Mar 2021 14:09:59 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id u75so24628912ybi.10
        for <yocto@yoctoproject.org>; Wed, 03 Mar 2021 06:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=oEI3dgr3GnXUDAAL8Qtb8xEk2g4J5ekCbPU6kWKhco4=;
        b=D4a9ZBehx6o/hDwnT5gSW+uJgXGIF0cemJG6Wsh1s070lD/cGPJzZdOEsLJdFZzYhW
         5yJMbYt+UsB4s4Xpvi3i1TOTYFQYy1ZLTyHWA+BR9gBdpvMkS9FOx/zf/2eca+WJL60C
         XXZxhDQwUX3ybEiLFGFjsKtMdmJ2GR5Kc7iVvd0LCZjjNlSIq7EBclZQkx9Yer+XRpfA
         4cF+1k2LEFWS+FHBwKF9NiG1IWUaTX/iDIjY1NyFe1df8dQpct6wN8asvSv9xdO818z/
         Czl6CaHoDiXYOfwK0aVlJcmhJIKzMc18Qvgt0GRU/uF/CGh2XzTdTyd4HEJ74k/jg2By
         JruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oEI3dgr3GnXUDAAL8Qtb8xEk2g4J5ekCbPU6kWKhco4=;
        b=Diqw7hXNzrljApad19vjtfpfd3DnWVtVrn0QBBcU/Nzg2gJeW6ExRNJUj0Gvh8PHnf
         NNaHEV75OlEuc1cYnxImwJf1ePntFfIgx/FaaspyDTmKmbDs56doMIC8Bk3zfAmINDoP
         YbS0q3vAJ8/sglzMIuz9XTGUSoGuFp8dcv2xHyckWWFPCXN120+An5e1MmcyNhlBrE2t
         ZArNvqTf1rqhmWBeM/dvQHtm4Icqa6yOGKq9QcdVH7mbPMGKtgQ6pc8RfrLEtqZOriYP
         iW1YcAb85kQFC2S22cBRFdsjrnT8wRdyfRMT2IWoo8Snh28jw70Eud2mUvRnR/saJZcQ
         h5GA==
X-Gm-Message-State: AOAM533qsCv6AqFN+sAa+5YGFP+jGk7YMeyEzcSu0m7dtmhMyPNfuZxs
	fXFDLdtqGIWC45r0BJHQn+4+ZyBWQLBfwUhJfnr3RqYspklVuuy5
X-Google-Smtp-Source: ABdhPJwfndU0F1qSF2dRQsWqG2OimQ8R0ZeBEFuzWVCmIU+jHV2lkxWSCofFe4qPEZdJ8d/ugMoN0vNbSa0DoBC0dqM=
X-Received: by 2002:a25:4e83:: with SMTP id c125mr34987482ybb.343.1614780598602;
 Wed, 03 Mar 2021 06:09:58 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 3 Mar 2021 15:09:47 +0100
Message-ID: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
Subject: cc1 binary in final rootfs even when no reference to it
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

on dunfell images I start seeing that cc1 binary (checked by buildhistory):
files-in-image.txt:-rwxr-xr-x root       root         17674124
./usr/libexec/gcc/arm-poky-linux-gnueabi/9.3.0/cc1

is present in the final image. I check taskexp but cannot find any
reference which pointes to it.
Any ideas how to check or it's a common problem?

Thanks and regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
