Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02B54C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 22:33:15 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.1109.1740522791110570016
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 14:33:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=iEDBrlfs;
 spf=softfail (domain: sidebranch.com, ip: 209.85.216.50, mailfrom: leon@sidebranch.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2fa5af6d743so9542328a91.3
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 14:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1740522790; x=1741127590; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ert4OFOa3sxzSO8Fjc6YbI0+6ZjEaADr8gFBk/TicA=;
        b=iEDBrlfsOUGbICoTtcB3SoGT8RRjiYd5wVSXxhCtUiSJTys5mWbn0LcXKY7Vr0g/CU
         hKTHD2mWKsfhuEJgTmyZMqVH9cALQLZ0o0Cc2oqDpTky7H2R1aPI1H2bkhsInOOALBej
         5KKYjbI2GbZOHW2n+HSacpjK9d4W0wsWNa2PCO/WxQxLB+wscWfG7ST423VivjU368xa
         Lg9udL+nOeIWtJ8dm8aMqqlHBrjDIlEVYRtYdWizn1P+xWx4xv0EMegZ5snPOffmz3ca
         gK95mEWp3/pc0tTUEE/+kN7u+rJ9WV9cxyajUmItO00nDmL9JrpGHj/bNc6bHU2kCr9K
         ZsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740522790; x=1741127590;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Ert4OFOa3sxzSO8Fjc6YbI0+6ZjEaADr8gFBk/TicA=;
        b=wZcia59+i15ppGIlQ9Ksr1JaBfGfddJ9bCXtJJywOw7tx0uKaXh6wi/PsHr1PJhyGt
         OLj3eoSxPoH99WXPofK4O7SSf8r0gOJs3H4GVNt/Q8u/hr/FXLPCfc1mHO2LWmDcwT9w
         RBCRDY565nbO4WG9UpExClOgQ4oXJLbsMRx3zZlooDZfdm2w//S2ChqnguuVhJjwDq0j
         c/++U93exxKanCEBrEoS0NWwb9azs3oge22rYVyqSHgch3iP84EFaNUDVqI7c213Z82Y
         Ia20mTPVnuJylLsLkBtRvLFhfxIU2jgdbbrdyUgnjjVU5L06vpeMJZ4/OrG1a0vt/xZ2
         ehuw==
X-Gm-Message-State: AOJu0YwQyz99hPEQwVuqiobMXjUlrF6l8RZscmhcGYSeV+OeTHljnAOV
	caxuU+rzIESwXcpOLzhtD6WF8XoJQchGtGDlNraenrcNGEvLGU4iFC2saq3tlksvhsMdIM6mGC4
	ASd5dRsRtVO0AI/RJ0U58sO4hkRDoxKAdwaqLJOOnhSrqoHoacZQVIA==
X-Gm-Gg: ASbGncsLZbGdpm5YIKI9G9rFSPmXf6TXzSyYtpmi6qaLKooyQEJrtzzJcNrtzfN41Zs
	T3B7Pc3tCgV7PFUru7m4KNBMJBncCTc3BU+kUOduNRt8mBQkcre9uat+L/znl7+MGHVjgP2z/B9
	+ljqGauheHDS0VKZfPlKV4Xo3zczfXkpUPzw==
X-Google-Smtp-Source: AGHT+IHladeIMGmpNS7S6GtwgXbIzqITDaI1G2VL0gc4JHoZhqX2QM0IzBYDXOPWbSQDR4x1dbRkQ6ulof05wH2nFK0=
X-Received: by 2002:a17:90b:2809:b0:2ee:8e75:4aeb with SMTP id
 98e67ed59e1d1-2fe68ae2913mr9002927a91.17.1740522790011; Tue, 25 Feb 2025
 14:33:10 -0800 (PST)
MIME-Version: 1.0
References: <8cDU.1740519135015977787.rlM0@lists.yoctoproject.org>
In-Reply-To: <8cDU.1740519135015977787.rlM0@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 25 Feb 2025 23:32:57 +0100
X-Gm-Features: AWEUYZmf7xH1cOoJeOswVMthtiNPNWPYdHe1CuF3z9hMWJxO_IfAYqWK0fFglyw
Message-ID: <CAMjhiJi=+9Ta4aGsNWUYrMnwi+pxim44Q9MNpViBZV_fi+P2Wg@mail.gmail.com>
Subject: Re: [yocto] Btrfs Root Filesystem Remount Issue with systemd on Yocto
To: yocto@lists.yoctoproject.org, landervanloock@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 22:33:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64871

> Issue description: During boot, the kernel mounts the Btrfs root filesyst=
em correctly. However, later in the boot process, systemd-remount-fs attemp=
ts to remount the root and other filesystems with modified mount options, a=
nd fails with errors like =E2=80=9Cmust be superuser to use mount=E2=80=9D.=
 This failure forces the system into maintenance mode because subsequent mo=
unts (e.g. /tmp) also fail.
>
I am not suspecting the mount options, rather the permissions.

Are the device and mount points owned by UID 0 (zero)?

"The message must be superuser to use mount is a hint to a permission probl=
em.
The Linux system expects most system files to be owned by UID 0 (root)"

(source: https://stackoverflow.com/questions/71448426/mount-dev-mqueue-must=
-be-superuser-to-use-mount-when-starting-a-yocto-linux)

