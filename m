Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0264C28B20
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 10:12:55 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web11.7845.1743156773196991911
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Mar 2025 03:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YCuud9ya;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e8f4c50a8fso16542376d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Mar 2025 03:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743156772; x=1743761572; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbnz6FS9kvOgGMX3xSPyMLuJt+aBwo48ebLWeZoeUPM=;
        b=YCuud9yacYbmJc8Pm+bg4RF/cmdavJWA2Tm+nF/oMpPfekVNAiepWcuXDjwkeLF2MS
         rj5erNJ1mQrtoHlNbxzsGxXduS1rLLULhZKuVep3XOPtUMFm+E7tCpjbzE8o+h1XDzgh
         YbZ+gD54+YumUaQNMt/w7YJ3kNkpsuslldJd0oWJ/3/3bze3qO+BatH9pYhCbBDMm4wy
         mXEpHiN6ubyPgzZUPyEuEs4/CySCnBK1qxaF4wl7OOfwIP0/8eJXdW3sYpDHwvhhI2UN
         epe5LPkOCWWcD6rqzVwe8eQC6hHaMnQp/84GdeQPELYevgO3C60f1pQj+z7ROSwSCgIW
         svlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743156772; x=1743761572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gbnz6FS9kvOgGMX3xSPyMLuJt+aBwo48ebLWeZoeUPM=;
        b=fEFZqG7KP96Yy6tbjk8pGS3GeMGA8m3M9I0XVzT+5CSILOLiLgDBzJoAsj3Zwmj+po
         JvUdDun1UEm36HTf2DVFjyFazLs8UcizrGnrmqgjamisPmNzlifL687NxJfB+pwVRKpS
         nm4SjpSwADw1DAQLyuzcrBm83wxM9jy1TpurGgxj4UldiYSTd869LE9w3svX4XxtdT8n
         ewVTdLELPUR8iGq6KZ3vVP0JTWg0mc99+xlAlGKf0YGWKzeaIu3YBvDfIv1yXIxY+gm+
         1rXExr/dcjDMQ5cmq7m1ma+xjya2UJLyYijqbvfTQcXCUovHAbQqWLQ75IvcQVXK8agX
         /iyg==
X-Gm-Message-State: AOJu0YyW8MMYX8ys/DNLjDqp+Nas7OBoKJ59gXGyVaPlVCm/n7NFXRQc
	2CiCG+zzMRzsQYxGwKDHd7At2gs1KOUVQmzZcKbZx7WN0bWatySd8Y+BVKyiywGiZFZsap/6ZOp
	tpqNTonRx2+neXYgO8kere0v0mBs=
X-Gm-Gg: ASbGncuyHgsIOV/Ozkc9jVh2UiQNDe4lG4v+gpzdODy44saUT/w/1hfNUy1XdrqHKOk
	MTvyEdx+HAOn+hRNKxnnOiJYD/iAc+l9Edyza5Tx4vdtnD+zy2kXmrkKcHIyCS4/CdogKhefV3Q
	nbaELMowmQZq+BXaIVsYU91mmiBBar9Oj5c21HHwk/Mfqvx/1Embz/21xs7fbN06SD3Z/574s=
X-Google-Smtp-Source: AGHT+IGAsAa/6K00tCcIcexkxZ1m7TCeIJagN1AbfQDfdhS9Ll9Qp4zEku7NO76gEF0MkZB6MJd/IOXWvkVY7Mqx2JU=
X-Received: by 2002:ad4:5d68:0:b0:6eb:2e88:d47b with SMTP id
 6a1803df08f44-6ed2389057fmr95588336d6.17.1743156772099; Fri, 28 Mar 2025
 03:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj851ggRKVPnbQY2qGELeOKU1aW5aLJdZ7S=d5xQorxXMg@mail.gmail.com>
 <28798.1743156292218400183@lists.yoctoproject.org>
In-Reply-To: <28798.1743156292218400183@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 28 Mar 2025 11:12:41 +0100
X-Gm-Features: AQ5f1Jr4BiQ5uaP7nJopTDICjTKvjA2LZkF-pLFq5QWQOLuOKg6gF8SuUD_dmUw
Message-ID: <CANNYZj9axQ4GmTvrUFPrRbQZzf5Fe6E+nZNAyeEQ6=B=dj5wKQ@mail.gmail.com>
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
To: rajesh.d@mindteck.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Mar 2025 10:12:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65031

I suspect sato runs into X11 driver regressions on intel hardware.
What happens with minimal, I don't know, you need to show that too.

Note that you can try switching to different virtual terminals and see
if you can login there. Or even add an ssh server to the image and
login via that to check boot logs.

Alex

On Fri, 28 Mar 2025 at 11:04, Rajesh D via Lists.Yoctoproject.Org
<rajesh.d=mindteck.com@lists.yoctoproject.org> wrote:
>
> Hi Alex,
>
> I built the Yocto image (core-image-sato) for MACHINE="intel-corei7-64" , as .conf file provided in the meta-intel/conf/machine/  directory. However, after a successful build, I encountered the same boot issue on my target board.
>
> To check further, I built a core-image-minimal Yocto image using MACHINE="intel-core-i7-64", but the issue remain same. Interestingly, when I switched to MACHINE="genericx86-64" and built the core-image-minimal image, it booted successfully.
> Are there any additional steps required to ensure compatibility with my hardware and build a bootable core-image-sato image? Any guidance would be appreciated!
> For reference, I have attached a video (Scarthgap_testboot_video.mp4) showing the boot issue I am encountering. Please let me know if any further details are needed.
>
> Rajesh D

