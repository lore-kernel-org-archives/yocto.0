Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.14192.1612656075878649827
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Feb 2021 16:01:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=WMaIdLQI;
 spf=softfail (domain: sidebranch.com, ip: 198.145.29.25, mailfrom: leon@sidebranch.com)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DAC8938C06A6
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2021 00:01:14 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id a12so10873597qkh.10
        for <yocto@yoctoproject.org>; Sat, 06 Feb 2021 16:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9bt6vvGBAs73HdZWgYPapeE7wKRmG+q/bhG0TSP93a8=;
        b=WMaIdLQIWE4IL3KZ/nwCck2urPUVojmivwwPq46zkwA0/DsvqaCtqSbM+fv3zhy55d
         UkCM1ruT8OuffK8DmGEtETG+vJBTzKGUOvw6oWvyakwItY1++lBRwBalgpo2Q3KZgE5x
         SEc93Kc8S0k1fhlccW6rFnceT5YvfwaFh6q7eoCIugQgI06Wnosob3wc3U6khB7BHLtm
         eHRvwiu7NaJBb4HronnVHQ3gnb8xXo075I+FpMmcRI08oAs7Wg+LUzpNHzbyPGq6AQwf
         98KWhi/EUOHwxoeNGk+YcKlFIQqPUkQJ7hapd+DD6CwSylOfB7JM1K5zItqj+U9y4CXc
         dmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9bt6vvGBAs73HdZWgYPapeE7wKRmG+q/bhG0TSP93a8=;
        b=rpfWBixXP6Pu+86obXSbgq55EvHnhTHVBAlK0Z+eO2AV5mjXqx7+YGwEl619baylsf
         ECUYJkfHWZSYU37X+7qcOlvYAvFEDuTie5d5Jh3hXYRIPSPyQN0EIh8yRc0aAWky3w9m
         qEgY2/qP2AJMtVGGFrecM1TJGNXq19ScWl2Y88wVrtl/pJIx3QfNVT7n8dGa5/iCVK3R
         Qu/f/wm90ZluEBKozg2GDXLe2o9HzVjgRdskxToSKMQFs4uW9q6usPzfJAL48Mwe/jMm
         ijxJyHTsKj5YEhMm8vHZvq9SnQhF13ZVtBvmpjfm3xUov+RIQIIWYXliIsgcH2t0rIQ8
         6vkw==
X-Gm-Message-State: AOAM533DWXxdcsvTTjLGtILyYhsi/gpy6URdUV3lkgw9R6h6iobX/WiJ
	pnZPBOglAfaqp0ghN9akZDxDrv3Ka3s8n6ljjqfjjA==
X-Google-Smtp-Source: ABdhPJwVx2+Bl5dSeZanoRXKdo65iaSGv0lS7yY5D9skm1A8V7B/TlIlNBtSnzR1v48bfFE2oaJDUWcStrlG3BT0abk=
X-Received: by 2002:a37:64cd:: with SMTP id y196mr1271878qkb.61.1612656073842;
 Sat, 06 Feb 2021 16:01:13 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
In-Reply-To: <CAAfyv35in+eJF2k_vf+6=ZwDby8DPx-bindvqWA-VqKE7kVWBg@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Sun, 7 Feb 2021 01:01:04 +0100
Message-ID: <CAMjhiJjW08m2nZb+2F02EOLRE==4fRHbzYgudKpJHv5mrJYVHQ@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization]: dunfell docker run issues
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Marek,

This might indeed indicate a configuration mismatch. Lots of stuff
comes up on Google that you might want to check.

One is a change in systemd that affects this. Sorry I don't have a
link ready anymore.

Regards,

Leon.




--
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Thu, Feb 4, 2021 at 4:04 PM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm trying to run docker containers on orangepi and use
> meta-virtualization layer to add docker. I've installed the docker-ce
> package and everything seems to be fine.
>
> But docker service seems fails to start with:
> Feb 04 15:00:01 orange-pi-zero dockerd[495]: failed to start daemon:
> Devices cgroup isn't mounted
>
> I was trying to add various options to kernel command line like
> described here: https://github.com/docker/cli/issues/2104
>
> but it doesn't work. My command-line looks like:
> ...systemd.unified_cgroup_hierarchy=0 cgroup_enable=memory
> cgroup_memory=1 swapaccount=1 cgroup_no_v1=all
>
> Any other ideas what to check? Thanks a lot.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
