Return-Path: <michael.williamson@criticallink.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C1CA0EE4
	for <webhook@archiver.kernel.org>; Sun, 17 Aug 2025 14:11:20 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web11.53269.1755439879752896129
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Aug 2025 07:11:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@criticallink.com header.s=google header.b=Ft+xC0zU;
 spf=pass (domain: criticallink.com, ip: 209.85.160.176, mailfrom: mikew@criticallink.com)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4b109c63e84so36102961cf.3
        for <yocto@lists.yoctoproject.org>; Sun, 17 Aug 2025 07:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1755439878; x=1756044678; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DQRO438j9oYEDfSlTvEFEbtbA6r1V1BQn8vNzVDRcqY=;
        b=Ft+xC0zUhoBjioCa2TZdY9913WZNmtX05uJFy7cJBH0Go0TB/5+CnRXVQBfJ9bF5GH
         SHsMkXnf/xkS0s5WrL35jUPr77GWpwy0VpQKvyTwh32FalHc46yDz4ICDSBbGwoVLgz/
         od75xxcLKfSQLH4VSP3PYGtHhH9MQ3sIjP+lPDSZ5tdPcQoxPxntJA5Ir4FmwaTxgNXQ
         J+YVUCiYxA9/y6SKIOZBnWp/r+/T7MLWi5PukE/INNtDwYT+bQAdKY3OBVIJ3TGT6vhz
         fAKM13aIt5SLF1v9V144EYTT/dGoWnqIa5t85zRLrTwSKDPOcCTluDot535O87lOd5sO
         Ot5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755439878; x=1756044678;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DQRO438j9oYEDfSlTvEFEbtbA6r1V1BQn8vNzVDRcqY=;
        b=Ld8p261qSEUoHLuK/qvFXrHx5lU9C+jVsXywh/0/3CzD8fQzlqwqb3N/rFuLWHnXjq
         ncyx4rWSFTCY8QYrQ6oEPezBvunJf0IxuttYG0MY8RXgqVQLYFRmyPCm+YaBVsOOIwZv
         u8s+UvirC5PXdefAfZ9aew0yPDl7YEwbTVoWGAHC5KWGyXaVYfPQqV9qquqS6RR+UgjV
         mOdydEFnS/M9ZO6TZvtBXdWpJfrGTNN0xEPXEzGRhPZM+0T0itHW5yPaoLk0hb2lzfVv
         KGcK7Wq2quwmRsX3ywxpZG/zh0aPIkgQHKttlRWugpbqix/Z35dfvj1MvcI7WyjYGOJP
         CoTA==
X-Gm-Message-State: AOJu0Yxko1BlcwXRAtNwO5OvCc5rKImXqUBhHcs483lyqrBSAD2po2F0
	8tOZ3jvYZ7uVLPk1Ou1HHKW4GeY1MkMJzf1RFZ2lvFSu9zYJ+L2SDXPEqTeLfMOdNZoNR88OfPa
	trhjqvrXrJUESU+Nq6zEbr3hfU8O2LHpcIC/GfQiihjwCZY8goByrvw==
X-Gm-Gg: ASbGncvxAc6mnw7aUDZixweM8K5Zv/WsohhMsuYQA5gQJEn8+KLDfb/aF4iKEFU0RC6
	umtHT7GJercW2h3rXgUn4gGUQ63wNesT8etqvuJVey61iQFdEeEmd6Mv+4thxStJTAaFdNRUg35
	pwVS2tbwZl8qSCFmolqlnESJSQtwzs0wJrlYU9wiOgsdVE6UV3WnyiQhYok9MZ5g89xXdNO1YCv
	hjyyQ==
X-Google-Smtp-Source: AGHT+IHcazNcI3KG+pHhV7AlhHsecIuvtxoPFX2DPkCjfrqK10QCD+stkoQyC/gp9HfVQnwj2CyBsAPA1g18KOdMg7I=
X-Received: by 2002:a05:622a:2c1:b0:4b0:e934:6ff4 with SMTP id
 d75a77b69052e-4b11e27d216mr106780221cf.52.1755439878164; Sun, 17 Aug 2025
 07:11:18 -0700 (PDT)
MIME-Version: 1.0
From: Mike Williamson <michael.williamson@criticallink.com>
Date: Sun, 17 Aug 2025 10:11:06 -0400
X-Gm-Features: Ac12FXz9zrfTZ_qxDSYQzMK3GUSgTuf4lWVfOkY3onyiHGelqPaGzb16IBdkOOs
Message-ID: <CAHEoWwt8tL-QMTB=jT1VQNitMm+sFwc=jVwjs=HmpNFm=ue94w@mail.gmail.com>
Subject: Need help debugging devtool modify command.
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Aug 2025 14:11:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65762

Hello,

I am trying to debug a devtool error running the following command:

devtool -d modify --keep-temp virtual/kernel

The process seems to get through the source fetch / download but is
failing with the following messages:

...
NOTE: Executing Tasks
ERROR: Logfile of failure stored in:
/work/build-qcom-wayland/tmp-glibc/work/qcs6490_mitysom_devkit-qcom-linux/linux-qcom-custom/6.6/devtooltmp-gbt8vdph/temp/log.do_symlink_kernsrc.4320
NOTE: Tasks Summary: Attempted 103 tasks of which 100 didn't need to
be rerun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 5 seconds
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 5 seconds
INFO: Preserving temporary directory
/work/build-qcom-wayland/tmp-glibc/work/qcs6490_mitysom_devkit-qcom-linux/linux-qcom-custom/6.6/devtooltmp-gbt8vdph
ERROR: Extracting source for linux-qcom-custom failed

When I look at the logfile, there isn't any indication of a problem:

mikew@5cacb0e4f8ce:/work/build-qcom-wayland$ cat
/work/build-qcom-wayland/tmp-glibc/work/qcs6490_mitysom_devkit-qcom-linux/linux-qcom-custom/6.6/devtooltmp-gbt8vdph/temp/log.do_symlink_kernsrc.4320
DEBUG: Executing python function do_symlink_kernsrc
DEBUG: Python function do_symlink_kernsrc finished
DEBUG: Executing python function patch_task_postfunc
DEBUG: Python function patch_task_postfunc finished

We'd like to make some patches to the kernel using the devtool
process.  Any tips to help isolate the problem?

Thanks,
Mike


-- 
Michael Williamson
Principal Engineer

Voice:  315.425.4045 x230
Cell:     315.663.4604

http://www.CriticalLink.com
6712 Brooklawn Parkway, Syracuse, NY 13211

