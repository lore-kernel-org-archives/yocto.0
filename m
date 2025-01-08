Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13F54E77188
	for <webhook@archiver.kernel.org>; Wed,  8 Jan 2025 10:54:11 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.16647.1736333642530554920
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2025 02:54:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JZyPYzih;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6dd15d03eacso6724946d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2025 02:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736333641; x=1736938441; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X2IUhmpzCszUKuc/kx1B/UzeaYaaOX1ChINxxGQ+W0w=;
        b=JZyPYzihOqQD4ke9s4He/CpR6649K7T2fJZ9uuYvSA0ZimatLVdgFI6r98oTktFEtR
         Nseee4cxi+RoAQs3kWGtg53RqpaOhc+MNLAWiD9gYDJStSIXjOEk0m5TKxR/EYxlwEuk
         4WxVSKrV1poI2NrPGelhi/gUy8f/fCqmOl65a63Gn+hWjbWkQ4JUQ8lwtTaphQoH0MQR
         +xtTLQjLZaLwaCqm5d5bJK0ftJhjX8xY4Y9AYRoFeqTui+Q2vMMFDVHps0hqweh9ghYz
         GLZew4rcL0vrLBCNfA4xzLCGc9qHHr7PHCio7PQDSNhFNNYtd0QD3Eo7L7pHjGABgVdj
         zGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333641; x=1736938441;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X2IUhmpzCszUKuc/kx1B/UzeaYaaOX1ChINxxGQ+W0w=;
        b=bjYUSLl7vG5MU8OmxL9/hGYrF/QP0wLxlgViFX8WgPBvQji7+JT/A1lYGPENmbEnW4
         4yO2E5LntO6+aTS2lLy8R9QoBuDU1mHo/ei+5o8GuCETZIalfWXjSnXGhK/RpvXvRx8m
         L5Usao/LnWX7YfOb/FyNm8dU0wElxmR3pXqGVLbsS1TUCC5VyEW1LxUYu3ZD1s3jABxh
         m1ep+JwMkG13cofA4xb9rmftgi/3ucfsxVtBputi84vx/tJrQcfUswxjRjsrDcIYBcLv
         gGYBjZ/inRCqz/qQp1aidvrnXbsWMD1YzClkuVEAPnitUnuk7vx+eAslPsABdfFPG6HP
         377g==
X-Gm-Message-State: AOJu0YwVyGPTMep+CaSDoV/7nqMttC0F0ogMi97EdNarmcQSh0O/+LsM
	Qmel+0EKWPp4V9XXGieREOZUEJ+YQU7HCWXp6cyv+ZVvootM4LFpzjZgrhYF6BdDvOlFRR6xdVt
	MClJw2Y9a3yIoUWfkONuREWfc7mdjIA==
X-Gm-Gg: ASbGncsohqEjd01DbcQybV52ryrqznKRVQGTldRtehbeGQFkQVdP/67vOlvj+Y/yq1e
	47Pu3X4i0EnAKPEkNLv48EXnQ9oKRxB4rai5whbyoN8ArhH2W9ZEJiBCoqWXAZdBRz5rcUhUv
X-Google-Smtp-Source: AGHT+IHdsBNu48l/+rzG+AHFruhlpi6DpkVl3dIuWvwaQujkmFhEUTGyoMyENbGBpNkk70reU+1dg5fsKYMy1BCWh6w=
X-Received: by 2002:a05:6214:5409:b0:6d8:98a0:23b6 with SMTP id
 6a1803df08f44-6df9adb02f3mr40097416d6.4.1736333641539; Wed, 08 Jan 2025
 02:54:01 -0800 (PST)
MIME-Version: 1.0
References: <cDC4.1736313937266663680.rsfm@lists.yoctoproject.org>
In-Reply-To: <cDC4.1736313937266663680.rsfm@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 Jan 2025 11:53:50 +0100
X-Gm-Features: AbW1kvaN-YBnLObjczpxq-3YTelfOZr0A0FYfoWtsWfkKt1G_7NlgATbGlZDElM
Message-ID: <CANNYZj9eh1E2a0zXksS8RC=Uu2ZOw4xA2=E9qn0ouoBfRS=oeA@mail.gmail.com>
Subject: Re: [yocto] qemu-native_9.2.0 compile error during bitbake core-image
To: yocto@lists.yoctoproject.org, techforindians07@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2025 10:54:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64521

On Wed, 8 Jan 2025 at 11:52, techforindians07 via
lists.yoctoproject.org
<techforindians07=gmail.com@lists.yoctoproject.org> wrote:
>     log: /home/user/poky/build/tmp/work/x86_64-linux/qemu-native/9.2.0/temp/log.do_compile.1055306

You need to look at this log file. Or show it to us.

Alex

