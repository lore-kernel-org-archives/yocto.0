Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48A4C54E66
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 16:44:26 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.637.1710348263676732324
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 09:44:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jWr6Kdha;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-513b022a238so90321e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 09:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710348262; x=1710953062; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SgIdeokVSzib/QgAVRc3YeaQBNnwuzgTS7UEIug5Qpc=;
        b=jWr6KdhaIZzNuI9OrxL1Mw6WOLMuCvkLVePNFyEF8a+r8S0XM9ZzzuBUW3MuiQw/wx
         FO1lTt8lWRuOYsWCxS5ILXTSLNP4EkV3154a5a29qWTZt2384+WHDHjvWRj69F1KkGPX
         bpJjMhaCnc1NBxdzEhc5uiRYBjjdvzPCXgx95YFiRp934M0ZRZ3NVDeb7cpZlmPOFqI8
         2M1M35ytLtaPw5j3OB0Tihk/ci1XffMTcJkPAuaimFovEKwCfeaSCLp4PToNpHNo8QBp
         P1orsj+nsi9GpqlBPQUpjV/qalNOXhwRW9SWFoQi0e4Ggdr0c/l94GHpW4giRFJvbIxc
         lF5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710348262; x=1710953062;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SgIdeokVSzib/QgAVRc3YeaQBNnwuzgTS7UEIug5Qpc=;
        b=wZ+Oiz5LeDDI3o7o3jUvP2KNsDDofKfrZLlbJCCXr/k80ddCooRRWnJJLcFElpCdb0
         y5PvU3lHpxKhPJWh823/c9yWPqYFRaZxS6eWoYYpTuu1Ic8wNfeU8MMymFeNt/u2pgzv
         hZBhnM7ROPLqHip9Ilx1jycWImj0tH0d872LREKAOIaQhX/qc1vcd3ocfLXlPO3tdrhm
         SQMS2NxAtJkbuxsrJaJbRMmhZ38CpETEEse6ZZ68kNnVYYSRljG3pgRmLuluXvECymwW
         Daqix27QCev/THiyHmdEJzMaWZtv8rpLnYbBokMSV9QbHJzc6nOA6O8r2Urprqnsqzht
         +8jg==
X-Gm-Message-State: AOJu0Yzxo6xZrxqaM8fgtNhSatjZ1H1zcWwdL0ym6aVHXZVBTR6+iyMv
	2hI8ZaWL50J7bM9cShIPRGsyYVJXQucQImlz42kyYN3xYOSr1V330FaR7Kb5VivQ53i8jgfys2l
	fGE50xvR8gMQs2g/8mMUYnDWiiE5nMB8U
X-Google-Smtp-Source: AGHT+IGUC6kkvQKCwqxVQUooFg2iWBtDw/TluSnM5AV65xKXY6U4P8b1x6cTwZV9gR73BPuxYAEpwDLRZpddyfeGWUY=
X-Received: by 2002:a05:6512:3487:b0:513:45af:4c71 with SMTP id
 v7-20020a056512348700b0051345af4c71mr3289640lfr.60.1710348261577; Wed, 13 Mar
 2024 09:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPJc0BbU0owt6dVnmOBSrT+Ji=sBNMYhgWtgRUhxT2RN_A@mail.gmail.com>
In-Reply-To: <CABKMkPJc0BbU0owt6dVnmOBSrT+Ji=sBNMYhgWtgRUhxT2RN_A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Mar 2024 17:44:09 +0100
Message-ID: <CANNYZj-kae1ozTWxhTOoXT3N-4gfLcJBphfbTw9gfcOeZfNChw@mail.gmail.com>
Subject: Re: [yocto] PACKAGECONFIG variable related patches
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 16:44:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62752

The idiomatic pattern is to reject conditional patches in code review,

Seriously, not a good idea - try to find a way to apply the patch
without conditions, and trigger the condition through a configuration
option, or runtime check.

Alex

On Wed, 13 Mar 2024 at 17:40, Joel Winarske <joel.winarske@gmail.com> wrote:
>
> What's the idiomatic pattern for applying (a) patch(es) if a PACKAGECONFIG variable is set?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62751): https://lists.yoctoproject.org/g/yocto/message/62751
> Mute This Topic: https://lists.yoctoproject.org/mt/104909451/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

