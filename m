Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com [209.85.160.196])
 by mx.groups.io with SMTP id smtpd.web12.12386.1583333805174551589
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 06:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gl0WLDpi;
 spf=pass (domain: gmail.com, ip: 209.85.160.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f196.google.com with SMTP id o10so1527107qtr.7
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 06:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x0ut99HHB6n4m+Z+IxuMs6PVLAwMkk7QeEqMiUN9BkI=;
        b=gl0WLDpi2KPdjn+TTXoRQk+rkQfJO7MUgt/7ynjw2gjs/HiGjVOWgKmWP7LMX3pGu7
         QyKfdkSk6yQs/CfbaCIOxZrDOBko7BKdzhK1nGrWhx/0kwNJ3ZJBLEMB9B2sbbfOLWpy
         arMkfJ8NkYnnHQH4Z1F8jCw8IxJDtO1YBPNDw+P++0CTGVqy6P2r7qtMLgML47lp4vGO
         ++hRLwGCLxjCPsOMh0QL0Xz0EhhcCMB8IcvV93owLxe93Zb4mFw/5//41OoJ8wazYYGs
         DoM0Aj5pCNrV/bb7MQ+lu9XH0yirNDcfe4dQMO3nPoSwPBOMn4uwU879NnvXu3mG7NsL
         QHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x0ut99HHB6n4m+Z+IxuMs6PVLAwMkk7QeEqMiUN9BkI=;
        b=h5oaTIeN8SYPS+CN76xqWEkiIwawou0h8vByZ4PRNCuCmeZqh54rCSJc2MuRhyFH0z
         a1qffKGcEzgd+53mR3VnLPqvNab7oYwUbw/FMyFLkAPE2rKhY2Lo5RdYQsNMCQE+ariA
         KIdMP6WuoW/TMhMnTM10EgYeQ1qcxs2db6oMb1zPeSS0VJnyQcc6TbnggBpghHkoKOMi
         XOrPWUjFW7i2b1XLmrGCMBbyFNdyaiUTVSJBlL94vAW5DhjtQGhLKHZA/tECz8xdGcXa
         X2TmkHsJbwHTbGmLqMFjG1deFLSvieT3juFALHXvqr9rfJZg6+piw2G69x7ZjxkU6pyB
         yN+g==
X-Gm-Message-State: ANhLgQ29XPEsOynk/b7sa9WqxjbtIUYKhvlIAbrbucm3FYCatgSDDsmv
	0z5j2ElgLXvcsG9x8hOZyeE=
X-Google-Smtp-Source: ADFU+vutA9iTuUS+xtoAMeV5WmfMSfvqgSq/s3CMb7gpVv7pgnUORWO7YvwoxCRXji7UFftO3aYCyQ==
X-Received: by 2002:aed:2433:: with SMTP id r48mr2859702qtc.188.1583333804138;
        Wed, 04 Mar 2020 06:56:44 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id a141sm14350102qkb.50.2020.03.04.06.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2020 06:56:43 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/4] kernel-yocto: consolidated pull request
Date: Wed,  4 Mar 2020 09:56:38 -0500
Message-Id: <cover.1583333447.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Hi all,

As mentioned on the technical call yesterday, here's my latest set of
5.2 updates, 5.4 updates and more importantly, the removal of 5.2 from
master.

As usual, I'll continue to support and update 5.2, just without sending
SRCREV updates to master. The last set of updates to v5.2 put it in
good shape, and they are ready for backport to any stable branches.

I ran this through the AB and didn't see any issues or old references
to v5.2.

I'll follow up to other lists to drop a few of the old bbappends.

Cheers,

Bruce


The following changes since commit 92e172b5b4de8927d36409386dfce0fc2718f5d1:

  systemd: Fix service file for race issues (2020-03-03 13:06:29 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib zedd/kernel
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (4):
  linux-yocto/5.2: backport perf build fix for latest binutils
  linux-yocto: common-pc-drivers.cfg: add CONFIG_INPUT_UINPUT
  linux-yocto/5.4: update to v5.4.23
  linux-yocto: drop 5.2 recipes

 .../linux/linux-yocto-rt_5.2.bb               | 44 ---------------
 .../linux/linux-yocto-rt_5.4.bb               |  6 +--
 .../linux/linux-yocto-tiny_5.2.bb             | 32 -----------
 .../linux/linux-yocto-tiny_5.4.bb             |  8 +--
 meta/recipes-kernel/linux/linux-yocto_5.2.bb  | 54 -------------------
 meta/recipes-kernel/linux/linux-yocto_5.4.bb  | 22 ++++----
 6 files changed, 18 insertions(+), 148 deletions(-)
 delete mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_5.2.bb
 delete mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_5.2.bb
 delete mode 100644 meta/recipes-kernel/linux/linux-yocto_5.2.bb

-- 
2.19.1

