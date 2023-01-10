Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1A89C54EBC
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 21:40:25 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.6745.1673386821089346107
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 13:40:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=D6qmXmln;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.54, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f54.google.com with SMTP id dw9so12382789pjb.5
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 13:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/mym/0/1OeCLB43HN+yXHMv81Je8NgXllzG54GI2gjI=;
        b=D6qmXmlnklWoL1gukgmpYuQ5usZEZSmdjuMuDCF+ehRU86clZc3lG7zLCBp4Z2kIKa
         Lq9kaRqWpmz5rOpy6igHo6OzhjVfsSHJesuMnywnbGOlDwEvseg6E13pMmOTA+jbVhR7
         1O2Wf/3Q5lfoP3+w8+NrXv9XIX/QKz+bUYmB/QFwj67kctdXd412usV9outlcIZEMFsd
         6MmDJ1j7FVyVpwCLjmtu9MFPe0WyjgiRlyLwalx9zAqTw3AXFTF1uoyhHmgsRWnwVp/s
         wOD6tmGXUwPFLE8u+0lIVgxZbw9ty7mqQ/hjS6P+QivbctQNK48Alwcg+jS3AuDQFZUo
         mnCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mym/0/1OeCLB43HN+yXHMv81Je8NgXllzG54GI2gjI=;
        b=wlC9gbJZQtwVahZ2i9QBmcmpFth164pCZrOK/RL8rE1BhGg86vyxkNGyqodhvbxDvp
         nwumhXfiPybh5Va7OvJ7TX8wnliw8+xt2SsvK5JxEck9c/kD1R0dn9mUn24GtAAG2Vu0
         d7gR81fPBm28pBM2kEzWZHJLmRGIoItCVhK+3030PaWcC2CwXRLs51kUF/73jtKVKqkp
         JskCqpmessDHJVlFSt1bYn7e6RkB1lqSBc9d1vBrRMfWzXrvIQCcuuC7HFquJg7rvvMV
         VHiE7GXQaHXZvScCxRm+L0BnO90DQHcAH0x3dwyrT4B9fTB4A67R6DACeqwv473QLE/w
         +biQ==
X-Gm-Message-State: AFqh2kq2xWxOQCOLGN5uNof8wK2rL/y3/xIOnXlnicRaNkk3u7qwGMyC
	j54UKKLXqy7U1H/aADFdf2Psl9MxiU0AnPVEd3E=
X-Google-Smtp-Source: AMrXdXtGgLrBuucqfNKMgHAcx9RFjER/3B0HSAjmBV+oNEWivGSSSLuJZ5/o9UtUXGlpJdbz7Dcshg==
X-Received: by 2002:a05:6a21:1509:b0:af:d295:e2f0 with SMTP id nq9-20020a056a21150900b000afd295e2f0mr128143pzb.27.1673386819741;
        Tue, 10 Jan 2023 13:40:19 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-5-74.hawaiiantel.net. [72.253.5.74])
        by smtp.gmail.com with ESMTPSA id a8-20020aa78e88000000b0056bb36c047asm11980pfr.105.2023.01.10.13.40.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 13:40:19 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: add fedora36 to workers_prev_releases for dunfell
Date: Tue, 10 Jan 2023 11:40:08 -1000
Message-Id: <78e51c9158b78fbf70d7d9ddc871aa1d16fe123e.1673386745.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1673386745.git.steve@sakoman.com>
References: <cover.1673386745.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 21:40:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58963

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 7d5005a..f6dde69 100644
--- a/config.py
+++ b/config.py
@@ -159,7 +159,7 @@ workers_prev_releases = {
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.25.1


