Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3251CC27C6E
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 13:28:03 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.8584.1718285275307294504
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 06:27:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eu4hEjWR;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52bc29c79fdso1456921e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 06:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718285273; x=1718890073; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6LZvap6x5/GtmS4V81IymJvdjHINg2vgNT5rwAAsXjw=;
        b=eu4hEjWRMC/x86RLlcLFddjqYvUZneElBNY2GPdX5ZP40g20HKe6byVupHHgzVvo5R
         ZVmLhREeA1a0Jz2fjT0qZLiWe2zLk82o4wwZtaP3vbnGQwvR8k9oA9ASir6mFZ2fouhk
         ydm5ekTW+8E86nk4m651pio5DnoB18QzvUoF8fDXdQ+danesBjaQPd5Gvj5CWNZrm2Lp
         7DVsE93Ugs7reZPJmNBfjMKkfTej58tdYYgZ9W4eIOlmQzJZE6rwEY5wP99moofjvd6i
         tknqMr9KOxLj8nOTA8tBNa39Bty6dbdgUHb+i0SGLvLVbvoRYKHaGOfsJPmdTf7n6V2O
         /Xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718285273; x=1718890073;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6LZvap6x5/GtmS4V81IymJvdjHINg2vgNT5rwAAsXjw=;
        b=FIic5kNR2Q0WFbd9kZRsNWRAGSnjMWipCB3M4P3ttdR4HTxNvFzLqc3j+LOfXNTyMu
         UHpvIfOtmGCpV/9qs7TRMHLrrvSjWTksxqmma9bC82iNbzclYBfgnv+HecE1H5rhXPTS
         3jns1Lbto+BjU8b4c888ofDSC0QYG035+A5FZE9dBxIoGiPyM6/UDwjGGj+ZWZhlWVen
         SV6goErNjOGCOMOWJ77HrCXkbMixKb2zdTq4SazFyXFcrCwkxg3Lp7/yVnBWGYru0YPh
         OLYw08rn1G4udavomsV3Td+GLL7lExacJbL2Sq6UPVh1cSLyivvHxf+oj8wcwxVPnAEw
         wCOw==
X-Gm-Message-State: AOJu0YzndjzDGAsbvMvLy0JmF7lz9MAnT3YoaHN5M0l1xQRcxfG168Yk
	3+Qu258WxbYAorktSa+aZMMY8s0jpIa3BN0o541qJik6zOLi0WMkQTyaFOE/mrMouoJp4PgEj88
	QC+SFSffQZcxOVQ5t4J9O3jsVfGhhlw==
X-Google-Smtp-Source: AGHT+IEgG9VQbPM8wkzHnpKT+Z+wYovvyDjmWGHK3iuPhNUzaXc3tzPDw3AXENHLEvII1UgUu6CkvRN59bGlSaSVodE=
X-Received: by 2002:a05:6512:2398:b0:52b:fac5:a3e9 with SMTP id
 2adb3069b0e04-52c9a3bfa91mr5193090e87.9.1718285273168; Thu, 13 Jun 2024
 06:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
In-Reply-To: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Jun 2024 15:27:52 +0200
Message-ID: <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jun 2024 13:28:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63340

On Thu, 13 Jun 2024 at 13:20, Mehmet Fide via lists.yoctoproject.org
<mehmet.fide=gmail.com@lists.yoctoproject.org> wrote:
> I was silently following the email list for a while.
>
> Today I have a question regarding dropbear and its default recipe provided in poky/meta/recipes-core/dropbear.
>
> It has been 4 years since ssh-rsa is deprecated by openssh followed by Linux distros and Visual Studio 2022 as of 17.10.
>
> As I checked today, the dropbear recipe with the master poky still uses ssh-rsa instead of ecdsa mode which is widely accepted today.
>
> Don't you think that it would be appropriate to change the recipe content to use ecdsa instead of ssh-rsa one?

Yes that would be much welcome. Can you work on that?

Alex

