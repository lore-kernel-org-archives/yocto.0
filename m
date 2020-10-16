Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5417.1602812975344449803
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 18:49:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CqgkcI2q;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7C85438C119A
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2020 18:49:34 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id a4so583231ybq.13
        for <yocto@yoctoproject.org>; Thu, 15 Oct 2020 18:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RGRY48sZi2ACRjJPEQXzGd/YVd2WgfY+VqIE+KfgL3M=;
        b=CqgkcI2qboKSE8N+0BPM2Xgys+3CjBAfK1akJy3RMI7DSdkJx7htySIhYRKcuVjCCM
         DnnzV91erS8QSB14zjNUlErrioAmelvgYV/fetz+BLTJpjLSd6RYtjabBpWM3r3XwmzO
         3QGNPTE9+gno/95xERbcmZIQ6kPnJrOrl22SMG6OleMajZVh6f8P/F1Vt8ztOuk2GxWD
         jWmHK8hHOo4euSLLTRUYHwD7h4LhPf7feZaMkPi64ATspSrAMqyNIgFA+xxj/1LUrJLb
         En03rdSjUh2YuLstR2DhcwnaTvN5gVgsA731sVVpsHXwD6/JIyVyh4XQdxtj/ODi56Uo
         6jvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RGRY48sZi2ACRjJPEQXzGd/YVd2WgfY+VqIE+KfgL3M=;
        b=O7qrjjyXLpHl/SGzdf5+WMlRQBR0X+uRvW7t3xxYi9inMhHlCmvpm16R5ueKBOZMMB
         bSwSBsjEjRxfX7da+XBuoRd8WUS9/clyLhJVdqawLkizgqgLk0UnWkgD8w4V9/wFlDRc
         EShIUSZeAQWVxuqiAeP0XpY6RYC78LKXEPMouzdoFF5ihONi42g94oZbF94PrqCXmKBQ
         8NOZ4P5j1z2YLT9IyvznDxaPnn77G11AUkchG7UqIHaxMCQzQUe3rQbOoVx+w9J4q7Rb
         mYr84j33ZMOOf2SY6YNInflSYCi0FuzFwYuLCe7f7AsGRePZXmqbWzedYcne7pYExztG
         V6qw==
X-Gm-Message-State: AOAM533kxERRpFKgOHPo/Wx1g7KfKLwcNuOexSlkKtCu5m0kBLBXAN2W
	afAn4bxz9HRtagrlVMNrOOe0OSx7OWR3fbthMsy9nEfrufzIqQ==
X-Google-Smtp-Source: ABdhPJxZFlwEIBvdmcBZWSA8m/+Ugg5NkXOyReXTU68GJbs1BYK/IwLTV6UFauZXHWd89R7CjqDmKTFNRP7Lr223s1E=
X-Received: by 2002:a25:d0cc:: with SMTP id h195mr1941574ybg.74.1602812973502;
 Thu, 15 Oct 2020 18:49:33 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 16 Oct 2020 12:48:57 +1100
Message-ID: <CAA=hcWQqbp4fn87-s7SxRtfoF8gbhUvUmZAwrP2BDzL30q+ORw@mail.gmail.com>
Subject: Where to download zeus 0011-linux-user-remove-host-stime-syscall.patch?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I failed to run zeus at following error:

x86_64-linux/qemu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657:
undefined reference to `stime'

Googling to find a patch
0011-linux-user-remove-host-stime-syscall.patch is needed, appreciate
helps to down that patch, I am not in the position to update zeus to a
new version.

Thank you.

Kind regards,

jupiter
