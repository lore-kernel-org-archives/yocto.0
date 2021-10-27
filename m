Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4161FC433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 14:04:11 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web08.11929.1635343450121863430
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=H2KolkeW;
 spf=pass (domain: gmail.com, ip: 209.85.222.178,
 mailfrom: jandryuk@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id bj31so2515345qkb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nuk2ksLzy/UgNQ86eHygYUJ85Qlo9+vmPGtuEi2Qxgg=;
        b=H2KolkeWJitWVRzpUWwaUzicaqD7QSd925kc7gJHv0djuk4NYavsvQUTIgFO/5mpLM
         whPR7yzSU8oleoe0Dd1XMJws7VzeUYvPRed1V0EbP6hHHXpZP2jHcxKXtxNeInT92nnj
         HtRB74cQ0rMzwE4ELwAh97Ffaa5PZGh+2kFh0ouNC0lcgga7E9oSGpazcp6aQQYESCyc
         Wpwd4hmDLLZwYIXLDXv/xuKDkSDauzPieSGmhWBBl1t0htIEZZy8akX9OcWNAoiPJX/4
         Hvby2JfwkSo8HsXEYZ0U+FNMMBkQ1KmKzbWskaeQ7irhIRXcH5Qd/BQucsxFySKgfoMD
         jiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nuk2ksLzy/UgNQ86eHygYUJ85Qlo9+vmPGtuEi2Qxgg=;
        b=5DJPJ16pjjI7jzlwtZrIl6xu7P5jiuaCO5bCZrB837Q3tDrkLvcZl0ei8ooXugmUHX
         +V6UQXzZw9BQaqkGhtqfMlyoIISM+8rieTy1fwfkXfXKL/z69PrWLn6PGsumpgYJbX2d
         tMx1/j0hIKyypVjAwHzl+0QE+aozYUL5F0ZXHpxTZRBEYhIDjNqiRP3+ofv+K5vaeDEu
         GUDOIwZrAn17oflwmQmLy+apuflxTEnZh+m1gh7X6rF3FkPybCo1HdJRULuzivOEh3kC
         19RSH34WdAsSEL1yovq9V/BSld/Cdjne4D53pKyAX81E1TMd3/ny+07OO9mYj7d88iC8
         N/SA==
X-Gm-Message-State: AOAM531zeAFFHl0bpPRGse3vZjxMrZ0KGIIQ6hiBVgb+0e+fOokaK6Jc
	BNV/kJ3FmMGWM4unHcv7XP9b6rATNN8=
X-Google-Smtp-Source: 
 ABdhPJxFG8fkY0OxsJcw9B6n3I9OorwnqKzWZJKU1khB4+Jy/fAE2SQjjCYVijYvx2HpsdKWeLLdlw==
X-Received: by 2002:a05:620a:578:: with SMTP id
 p24mr3027510qkp.237.1635343446886;
        Wed, 27 Oct 2021 07:04:06 -0700 (PDT)
Received: from pm2-ws13.praxislan02.com ([2001:470:8:67e:ba27:ebff:fee8:ce27])
        by smtp.gmail.com with ESMTPSA id
 bi17sm51597qkb.115.2021.10.27.07.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 07:04:06 -0700 (PDT)
From: Jason Andryuk <jandryuk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joe MacDonald <joe_macdonald@mentor.com>,
	Philip Tricca <flihp@twobit.us>,
	Yi Zhao <yi.zhao@windriver.com>,
	Jason Andryuk <jandryuk@gmail.com>
Subject: [meta-selinux][dunfell][PATCH 0/3] Fix dunfell build
Date: Wed, 27 Oct 2021 10:03:54 -0400
Message-Id: <20211027140357.66739-1-jandryuk@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 14:04:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55174

meta-selinux fails to build libselinux and e2fsprogs.  These patches
fix that and then removes the unused e2fsprogs overrides.

Jason Andryuk (3):
  e2fsprogs: Remove misc_create_inode.c-label_rootfs.patch
  Remove e2fsprogs override
  libselinux: Fix restorecon_set_sehandle.patch context

 .../e2fsprogs/e2fsprogs_%.bbappend            |  1 -
 .../e2fsprogs/e2fsprogs_selinux.inc           |  3 --
 ...t2fs-ext2_ext_attr.h-add-xattr-index.patch | 20 ---------
 .../misc_create_inode.c-label_rootfs.patch    | 45 -------------------
 ...e-in-selinux_restorecon_set_sehandle.patch |  4 +-
 5 files changed, 2 insertions(+), 71 deletions(-)
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
 delete mode 100644 recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
 delete mode 100644 recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch

-- 
2.31.1


