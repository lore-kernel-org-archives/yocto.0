Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.12407.1596567656863683371
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 12:00:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jh/GSDrH;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: mr.nuke.me@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 25so13717133oir.0
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 12:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=sxNhU9gntfymHZMc4jX1m6WfECgBOZJjhiDI3sIyL8o=;
        b=Jh/GSDrHJ/yeWBrK9rMQ9Df1Jc/vXSx5D/o8QgltS5EJUbLj3UwG1HkvyY6u2QBeM1
         GHMM2ux29fcfJ5w4rVKqmFcyNag9261rUECJeI0c+OUfNboB6AIpJ9MTufB3KP2rRySX
         1QAF4+z5SATI2vIgoMyxJViIyVEe2MstvTuhpF3iLo5XXVacQHK0KWjc/VzrxCznS2Il
         PBLXzWkdNX1wLB19WS5gNAXEm1IflSKQSig+nE+7ZBIg927qVfzsrwv5JZ7Exq7GbXPW
         HCQdihBlU359I7/gK3iIlGnAcAsWpMBhSlMRFocU7Mc0qSLB2Dv1juVedePiGkCdcjRP
         Iz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=sxNhU9gntfymHZMc4jX1m6WfECgBOZJjhiDI3sIyL8o=;
        b=ic5UaBXq4RMdVu3Z1Vn43e8Ny36pwPKvqiydfQNTFFp/5OIT5bJTlj30oQdMfW8NVv
         c9rSfxG+aWvqsCFL9caYvd3TY5X4nD65Ut5bNW8pFobcuIAFTctjU8BhGGqmLH8Do7rA
         7g/Dq/t1VtIsXJEHxPh0rmOFvPt1hwEek2RFYKKonShwE8BLn4YVQ/WX92GXQYtbAT0b
         2xOcOHUuak+PnvPmQFnQhegD8nwQEoYx25Wi5zwWzR+3XXSOv1arnAfYTfa/eLYqsYkY
         OSElf+jT6zREVh1tNcb1A8SHjLGvtq/I/OwqXBegMXCq3gLv+Q504KT7fEocJboI0RBQ
         tivw==
X-Gm-Message-State: AOAM530b3fBJc1p4b0IRFImyWlNiJBQ2hrfEZDOn+2JkC3OYGMPewb7i
	tzS2uqlrACwy1lo0cmLZzgQFi1e40hs=
X-Google-Smtp-Source: ABdhPJzhLCvjpAw/B4QkGe/0+OCgNdBJ2JG38itU9ZdgtLzNqRA6sYZG0cmfuQFkMZTLP2NwzsXe9g==
X-Received: by 2002:aca:afd0:: with SMTP id y199mr4408726oie.47.1596567655968;
        Tue, 04 Aug 2020 12:00:55 -0700 (PDT)
Return-Path: <mr.nuke.me@gmail.com>
Received: from nukexps.gtech ([2601:2c1:8501:182d::edf])
        by smtp.gmail.com with ESMTPSA id j129sm2240368oib.20.2020.08.04.12.00.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 12:00:55 -0700 (PDT)
To: yocto@lists.yoctoproject.org
From: mr.nuke.me@gmail.com
Subject: Yocto build failure -- supposedly due to opkg-4.2 download
Message-ID: <a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com>
Date: Tue, 4 Aug 2020 14:00:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to get started with yocto builds. My builds keep failing 
trying to build the qemu-x86 image.

Here's what I did:

1. I got poky from git://git.yoctoproject.org/poky.git -b dunfell
2. $ source path/to/poky/oe-init-build-env
3. $ time bitbake core-image-minimal

I keep getting the following error:

ERROR: opkg-1_0.4.2-r0 do_fetch: Fetcher failure for URL: 
'http://downloads.yoctoproject.org/releases/opkg/opkg-0.4.2.tar.gz'. 
Unable to fetch URL from any source.

The file doesn't seem to be present on the server. I'm stuck. How do I 
fix this?

Alex
