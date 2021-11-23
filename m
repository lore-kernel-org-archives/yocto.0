Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635EFC433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 10:09:05 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.9412.1637662144737937599
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 02:09:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o3OEzaKx;
 spf=pass (domain: gmail.com, ip: 209.85.222.53,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id o1so42621353uap.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 02:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=7rhjRHVR2CfVD6f3H0hMJvqs08d9KiQbnb2XSMNGP/Q=;
        b=o3OEzaKxeYd4mc4M5sWVaYcFff8q4AOXw1tDKSNGrTgstu83R9LWK+N5gMPF/fIKEi
         BHAixH+H9pd9hhYTVaCNAW5M+7JU/wQ84/ormNLSMCJySReEEnft8gqE84B/6YQCB9rc
         x2SpYO5XKqEnVkQcYszFMeA+3aj35z/Ae2mRHXMfM7wEm9jOFk6ENvpQMhKluCvBl5X3
         cyivkZmP5NrPsBNRrvCLX0CsVUedPHywIkvAhpvvD4B4i5aznv+QSznvBkrH4sDtxdrE
         vDtHf3sYkSoBEj/2Tq6kqSxjnyC67aPAW1TEjq2XiE8pkLDKYl1C4KjOin5arpEwCfTz
         e91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=7rhjRHVR2CfVD6f3H0hMJvqs08d9KiQbnb2XSMNGP/Q=;
        b=XP6VmpRn4lvui7PUY1RGXnfjTit0FJ1XWk1FV34NxFFo8rjM2g8WxoBUOyzJo3Ys6b
         Snj+8rMOX6F0JOXjj+XUEkdwPT88MHes9u508BMV5KK86MfwWyyY0vgaUURB8MOAgSQ8
         8nig/VdmbMbci0N1QJWxgPeaYOcwbdejSawPy2rplROVtU62baVA+cLDTaUN6n6HdbtH
         /7WoAgtBFqap7alYa7L/WHglGzzrtjXQRWJ4Z9hmzp8dvMc3tQRHD610buPXXz5U/zj8
         FqqfnKWRi7C/FOgOF2GZ5B4x9upN+ft0l/L6oBQYdKK5Yj6EBCpBWWVFAQ4uZh9GVeIH
         ocuw==
X-Gm-Message-State: AOAM532iiYcImjol9WRT1tqE4CQdMo78SSJsfvHOPjbwLtDdOuyDmdd4
	a1jKChflpbPSBfr+EQh6JpQxe8Kehpvwnn/Dczg=
X-Google-Smtp-Source: 
 ABdhPJwEmwq48N7XOYS0QcW31lGMCFZ5dWTM+qvE3hnhRq4LDoTbZE/kpg3Y+rJy28r3M/wRZl/37+QkkppvwPt1nuw=
X-Received: by 2002:a67:33d1:: with SMTP id z200mr7136808vsz.1.1637662142951;
 Tue, 23 Nov 2021 02:09:02 -0800 (PST)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Tue, 23 Nov 2021 21:08:27 +1100
Message-ID: 
 <CAA=hcWTGxMNJgUacD=ATZJDXvkWBKhryPXmhHd_qvgOcGPjtRg@mail.gmail.com>
Subject: Upgrade to version 1.40 broken WiFi
To: "connman@lists.linux.dev" <connman@lists.linux.dev>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 10:09:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55392

Hi,

I built connman version 1.37 and wpa_supplicant in zeus, it worked
well. I have just upgraded OE / Yoctor to Honister, I built the
connman version 1.40 and ran it with wpa_applicant, but it is now
completely broken, no WiFi IP address assigned. I heard that a new
version of connman is going to replace wpa_supplicant by iwd, is that
correct? If it is true, I am not going to debug it with wpa_applicant,
I am not familiar with iwd, the Yocto does not have iwd option, are
there documents to build Honister connman with iwd?

Thank you.

Kind regards,

- JH

