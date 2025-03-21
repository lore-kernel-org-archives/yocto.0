Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67719C36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 14:29:50 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.1214.1742567385836205239
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 07:29:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OR4JrFuw;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4768f90bf36so19996091cf.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 07:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742567385; x=1743172185; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=62IPXgy/SXWScaoiwRDa/zdGq+MCZwMLMA9nsSnGY3c=;
        b=OR4JrFuw/FSK4LHP7mHN9jA8sTZBRDgSuUP9BGrRIJGuYIc6sdsE+m/K2B9t38u0gP
         UMyR4vzVXVluZWuxzm0LceH00ogRU8pfcxbctC6PfQ4Tdq0XuHmdKVWLtOrHPP0WO5yu
         JAWnXouCY8qxXA+DY302+I+Leob0hz8x7MgUNHXtLyk2Q3/Dhg7ChrQQ5wpVyCJCY3X6
         Nzvm3H3CYKvnKBl31TQh0g4KRflyeHUlYET5J29taIk3FnO1WwkvHnl/kwJ6J0FZgou8
         htsEddUIMbrmcTslG/dSMHkUuZiSMNFiiqgcLuSEy1mArM5bNo9WvUiYMrnwzSv/AVuy
         lkDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742567385; x=1743172185;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=62IPXgy/SXWScaoiwRDa/zdGq+MCZwMLMA9nsSnGY3c=;
        b=DkLiZRUSsX3P/3CmMDHxeFZyUcH3B/cOauPlMTiu0xiA6W9JvAy/6K0k5Ha27lIUEd
         lSkq6Wo+QAQi5hwPxJnxhXkvTKp+vgydgFxqFkMcV8Wld9f+NAeKIwwOJF/aP3aMmDSR
         rBztYfF8tqonRP4UsXuuqoW7HnFUYhzhsSI1L5HZ4QPfBS8+BjZLE22tIHBmAt5uZW1N
         d7uEHcHEyU/I1ro7YW/uBJv7cR2sVvcvBazwAdiKDWLCqb2mcSxtbj03LnaxlbnOrTBJ
         q7s5VmdDtAWPTP9g2l/8avueohkkASg522OYR3MaNIz7/xFAoxJDZJwWkEpWpgMkLEDK
         ZAOA==
X-Gm-Message-State: AOJu0YzBo/YLqL/+QQLF4ZXclnSaND1q/voFY5dwyiUwZTNVKY9gEwmF
	WDRDAnIqjO1GoOLoPXZed2LX2Xa0oQp62skaab6hX4axVfi4ugQKHU/91H1eZF/qMtBxyJtK+/p
	hMDX5ccVKkI1U4fFfO4Zls8PPo2wDRw==
X-Gm-Gg: ASbGnctEg2cMbsjStDfVc3UyTZRGo++0dreljBDr9yMh4Q88gn0hBsYlT5j7Hf73VVA
	7DfqzGsxs09vmsCvo0hfcD1lL1yuTKDYS1AN6rBH1vRa2Msvmezr4/+zyvYTD/rl/hxOrJLZu35
	Nvvtk98RJkSXbz/ty0kO/cu5FzVRmXN8S7SHSxhqGSCGD6ziklejsCBAbAqA8S
X-Google-Smtp-Source: AGHT+IGUyQjFpiB8tU7H+LlNvO/m2sTZyoKgquzsi7/140R1QkIeNN6ChBblfLPu0PVfGLq9uWG27k5z77s4ZF5/LR8=
X-Received: by 2002:a05:6214:2488:b0:6e8:89bd:2b50 with SMTP id
 6a1803df08f44-6eb3f279d9dmr53856386d6.7.1742567384664; Fri, 21 Mar 2025
 07:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34APw3tfs=C08zMH6U-OXYwXK1b2GRZ25RHdA6DmWVBEg@mail.gmail.com>
In-Reply-To: <CAAfyv34APw3tfs=C08zMH6U-OXYwXK1b2GRZ25RHdA6DmWVBEg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Mar 2025 15:29:32 +0100
X-Gm-Features: AQ5f1Jp-eXP0x_wPPBlC1U97JdrCi-gdqSS3TBp-R8TB0OTf-EzlPxe_QiE7Zec
Message-ID: <CANNYZj8=an2MEYi2Kdr-DQ7m8vDfUpJ4r0Dt1hvcadqfEveYTA@mail.gmail.com>
Subject: Re: [yocto] weston screen capture tool
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 14:29:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65004

Probably this is not the best forum for wayland questions?

Alex

On Fri, 21 Mar 2025 at 13:53, Marek Belisko via lists.yoctoproject.org
<marek.belisko=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I need screen capture (image only) from my system which runs weston (scarthgap poky release). Do you have any recommended tools? I've tried grim but it report an error:
> grim
> compositor doesn't support wlr-screencopy-unstable-v1
>
> I've tried checking wayland-protocols but the above protocol is not present and even manually added it behavior is the same.
>
> Thanks and regards,
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
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65002): https://lists.yoctoproject.org/g/yocto/message/65002
> Mute This Topic: https://lists.yoctoproject.org/mt/111827084/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

