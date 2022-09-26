Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DA6C32771
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 19:11:08 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.2042.1664219466663733086
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 12:11:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=q3xkN4wP;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.128.54,
 mailfrom: jdmason@kudzu.us)
Received: by mail-wm1-f54.google.com with SMTP id
 z13-20020a7bc7cd000000b003b5054c6f9bso7581900wmk.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 12:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=uUizGClc5VL7icjP/0CuccwV3KdtxEm8V/uEtooen2o=;
        b=q3xkN4wPvju9M7gv0a7cxAjmmDwk2dPCbhGDZ18naUdMnWOZGRoHtpNQbzzr1gnDG9
         6KomRgwbgW7gwwSbFEQp1ecFdJIjTcGzsi4FWk4fBbCT5dUGnQgiuqK3mm+d/HxSPybx
         2EOtWnojdyWN5/THXQZQyU4pAPsqqHWB+2mKmrWKeTIvAsxMa6k64r7uCZgewHEHMB/8
         VcwAgWFkONHpR3SrflaFJpS4qVP+nUSoMpUQbsTkXhAL2viz5r0fsqwlc/tnoO4gdOEw
         ls0Nz76wBuvabvPZ1aeQqtN3+iqLMCf5T57I81eTb8w6Jfxfm7tCK8aHUk8TYvWlRnN9
         bb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=uUizGClc5VL7icjP/0CuccwV3KdtxEm8V/uEtooen2o=;
        b=dhjltNIYIWCUxaz+aHwO/6LJZeud2+eG4ms21UrrT1YCcg+ekQwPbKcK/eDmiYf3Yw
         u0vFqCXf4ToNievOtIKuL+xI8Oijj7x5U2y8SekzJaO7LXrwv6mkByK5WqP7K/NY9Vky
         7+BwIBlizU4/C6aoOEOqm2GV6RM4C3K+KImHP/bdIsm7SkCp/ZVJ2GuQ55n9ROEc33kn
         0MlJnbLJkILrzIXc2HzFPyUIRmx0+MEoh0FNIjpuLn57Dhc+Ry8+s4ovU02dyJUmEVHv
         xY329WfySJOHzhZDIE2w149WKWw0edrYdzTKwjdw1JVTBIdEcMjsOkrNgq3wcrq2oPsl
         gtpg==
X-Gm-Message-State: ACrzQf39Njv8GZONUx0mS1lq4mqzXRrR3882/rWZzPns+Fi6cC2YhEhJ
	y7sTjYKXLT9zMVdSHa18ZqnvirwRa5Uppd/JnAc5+yztYba/7Q==
X-Google-Smtp-Source: 
 AMsMyM7ReAnK7oDJOUIfBUtM3vgLEF2JS2VVgXgn7AUuon2lvxBDT1JzbVkOE4AM2e24Mat9G9rejhnnJMWDsx4fpAo=
X-Received: by 2002:a7b:cc15:0:b0:3b4:ca90:970d with SMTP id
 f21-20020a7bcc15000000b003b4ca90970dmr141177wmh.198.1664219464330; Mon, 26
 Sep 2022 12:11:04 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 26 Sep 2022 15:10:53 -0400
Message-ID: 
 <CAPoiz9wdF=-sq8+QFyosW-KTbsLQiYmYXG=W=TaYS=1bWi4wiQ@mail.gmail.com>
Subject: [meta-zephyr] new qemu version breaking qemu-cortex-a53
To: yocto@lists.yoctoproject.org
Cc: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 19:11:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58170

The recently updated version of qemu (v7.1) is causing qemu-cortex-a53
tests to fail.  See
https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3082086509

I was able to bisect the issue to that commit.  I'm not certain of the
cause beyond that, but other issues are being seen with the new qemu
and meta-arm.  Let me know if you want me to open a bug.

Thanks,
Jon

