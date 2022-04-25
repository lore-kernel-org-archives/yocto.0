Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C1EC5518D
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web09.27132.1650875083133888292
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:24:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WGp/Ubq4;
 spf=pass (domain: gmail.com, ip: 209.85.208.180,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 16so1724783lju.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C24Oq8HECMEWbflSwZYQKYxD2+unjTD+Kc4XfXrsT1Y=;
        b=WGp/Ubq4OAgqyh2cefjwnJYgaxH3gDbCvuuMAkZfwYkZF/5rWN7tWWJj7FG1z3Z5jd
         TzhO8E/2WPTnn6N/yAzYO2l5Q+efbhH+Clr2Wc2U7DFlU4zAxL1b9XtGDZ6zeAd45Bpd
         I8QfXhzn4UkPMJkok2qVofqkXPnk76ahrjVHVFJDDYS5ayvfJFe87O5VhILaOAvhhzQ6
         MEXjrql9lFeFpBLythjXKIr3kgo5PFEipRgH3aSWmIMgPfEBob7SXI3klwsMhvxB/NtR
         Ao1IIa2W5K+34H367Yk0A+aHD5an5YIfEkxJbd/2R3n5QNdZMaSZkDWGl/A/xYwRaA7M
         0bxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C24Oq8HECMEWbflSwZYQKYxD2+unjTD+Kc4XfXrsT1Y=;
        b=TYo0XGbM2DkKQ4xj6Kn61Q4+m6cFh+j+teVg76tJN1TWd4LIwSq3piO8x8SOSqJGho
         US8S/37TzAK4N2gDc8G4FX+oWzGig8MfSnaOgiEwzjeafNNTbUT/oWiiIk088q1bRRr5
         d+Ia/pEhm4PPSV95h9ss1cGBsaW+parL71QaEl/gD3S6AjjG5hXnzxrTKKzemwbdVfGQ
         gA+3ZybbTtOJfDMHefExcnL7xD5qJ4INjjW+/7ufu+rG2r2Er/BKpy9JKCEkXPi6W4y0
         Z5eyXmDYHYejlFZbMLOBvmqti9FdytkmD6cLz37hKwAP3eAfrCiMMA8d0Wbmtv4UmzrT
         C7Xg==
X-Gm-Message-State: AOAM531Q5Ft2/Nvu5eRkm+ppxvbN8/c05jGNnbPVHFo1scaNoSM9FS4F
	iZrVflFJIgKxAtqP8bMa5i9uv+cljs9IWFp6/Jk=
X-Google-Smtp-Source: 
 ABdhPJzpKH5e5gpYtv46TeGuPgLOm8Wia/3yIUfquokfPhOB3QfQD5WwJqlwzT6i+YhVXTqxHHmf3WYGFJ/0GJ5nLKg=
X-Received: by 2002:a2e:8887:0:b0:24f:10d8:4603 with SMTP id
 k7-20020a2e8887000000b0024f10d84603mr2706539lji.191.1650875081063; Mon, 25
 Apr 2022 01:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 25 Apr 2022 10:24:29 +0200
Message-ID: 
 <CANNYZj8bwSKiBR6=K+EdcbVtEA41v6BTMAP66e1tZQ+A-eec_w@mail.gmail.com>
Subject: Re: [yocto] [psplash][RFC PATCH 00/14] Implement DRM backend
To: Vasyl Vavrychuk <Vasyl.Vavrychuk@opensynergy.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56874

Hello Vasyl,

can you explain how this was tested? Is it possible to automate with
qemu targets?

Alex

On Mon, 25 Apr 2022 at 10:00, Vasyl Vavrychuk
<Vasyl.Vavrychuk@opensynergy.com> wrote:
>
> It is needed in case display does not support FB.
>
> The missing part is drawing splash screen over all connected displays. I think
> there should be loop somewhere for this, but I am not sure which level is the
> best to put it.
>
> https://github.com/r1mikey/psplash-drm/blob/drm/implement-drm/psplash-draw.c has
> psplash_draw_initial(_one), psplash_draw_msg(_one) and
> psplash_draw_progress(_one) implementing loop over scanouts. I am think about
> doing the same.
>
> Vasyl Vavrychuk (14):
>   Trim trailing spaces
>   Fix 'unused-result' warnings
>   Remove unused save_termios
>   Remove 'psplash-fb.h' from 'psplash.h'
>   Extract plot pixel from psplash-fb
>   Extract draw rect/image from psplash-fb
>   Extract draw font from psplash-fb
>   psplash.c: Make psplash_draw_{msg,progress} independent of FB
>   Rework flip as function pointer
>   Import drm-howto modeset.c as psplash-drm.c
>   Implement drm backend
>   Reverse modeset_list
>   psplash-drm.c: Allocate resources only for the first connector
>   psplash-drm.c: Implement double buffering
>
>  Makefile.am       |  15 +-
>  configure.ac      |   9 +
>  psplash-console.c |  34 +-
>  psplash-console.h |   8 +-
>  psplash-draw.c    | 295 +++++++++++++++++
>  psplash-draw.h    |  81 +++++
>  psplash-drm.c     | 787 ++++++++++++++++++++++++++++++++++++++++++++++
>  psplash-drm.h     |  17 +
>  psplash-fb.c      | 371 +++-------------------
>  psplash-fb.h      |  74 +----
>  psplash-systemd.c |  36 ++-
>  psplash-write.c   |  37 ++-
>  psplash.c         | 186 ++++++-----
>  psplash.h         |   7 +-
>  14 files changed, 1446 insertions(+), 511 deletions(-)
>  create mode 100644 psplash-draw.c
>  create mode 100644 psplash-draw.h
>  create mode 100644 psplash-drm.c
>  create mode 100644 psplash-drm.h
>
> --
> 2.30.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56871): https://lists.yoctoproject.org/g/yocto/message/56871
> Mute This Topic: https://lists.yoctoproject.org/mt/90680297/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

