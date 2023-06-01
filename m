Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76EF4C77B7A
	for <webhook@archiver.kernel.org>; Thu,  1 Jun 2023 18:11:29 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.2178.1685643083594593424
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jun 2023 11:11:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=w6tGtp//;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.181, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1b01bd7093aso6788295ad.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 11:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685643082; x=1688235082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/eM6VN/mIike9CfbsBWHzwdJb6FKoA0u1LTb8Fyb6yU=;
        b=w6tGtp//jljII+V2fJlORH7IrTzalaFlCov2/yexSaL373LKNjCPLhH/iBW/E35EWy
         FG+4tY4Vx/hgNVmmifXtGuwM1E/a6nSdgP+ePiYrsvvHgRoYf06y9FH+MsqsuHOr0tbZ
         eZLBDzRF4s9pjBQ5/fPqdktgHSCrEaKIHVb6TrjQ5AOWHfWaXcNgCIfzT2Q4+7GVxypL
         mWR4GYSiRqQQigpWW6y8Oqjio4mLKpjDVavoMfxcK/JKohA7e//QxS1o6OGamvsf3/pb
         DwliLYyouNC/xd2l4976I7edRvabNjo1amApwJgOs2oFwTAz2mteF8y/Y9c/JoLSe0N0
         4zCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685643082; x=1688235082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/eM6VN/mIike9CfbsBWHzwdJb6FKoA0u1LTb8Fyb6yU=;
        b=kGrJsKDjVx0u48nAxex4/FHk5TJ9LVTy4pqEQg6uxg1njkrJ8eN94xf93GBz0tXRdD
         9HX2DRjUTgTm/vjIFDFP3FTm6GAo2IUyqMtEeMztvvj1+f6vGqp/+i9STorfMgQdIXA8
         9BTJQRwq6jhIbttjgLfy6edTrPP2PR8IrTYqPqoslo1PrZlvLzbIe3CVUtn9PA7MU9j2
         rgEzJ/uZhDyp43RhMxUWemwRk2fuiJt1AvG7bM2py6ITepCEq8CnHQrQs/GezMeSmGLL
         +bWQ1YfeQM/IK3XPEuOvHcF4LjcMSPzTNbsgsucPM4b3FkVWM53uABSGNXH1K1McHQG/
         THdw==
X-Gm-Message-State: AC+VfDxN9sbASQfwl631GRm+LmHTV95el3hmYfBSoOoPMYSmxwc0UbnC
	7SksVIsa5LuU5kueBryPr8fe9755W1bz9dvobrs=
X-Google-Smtp-Source: ACHHUZ7nwnvNq/bscEH0AXrSvuRpt/xqRg71D0X0xNDMvXRv5KziC0I+4NO1QHVC/sAKY45OCNpChQ==
X-Received: by 2002:a17:902:e889:b0:1b0:7c3c:31ed with SMTP id w9-20020a170902e88900b001b07c3c31edmr142133plg.25.1685643082387;
        Thu, 01 Jun 2023 11:11:22 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id y19-20020a170902b49300b001ac5b0a959bsm3795046plr.24.2023.06.01.11.11.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 11:11:21 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][dunfell] config.py: add fedora37 to workers_prev_releases for dunfell
Date: Thu,  1 Jun 2023 08:11:15 -1000
Message-Id: <9524c249ee052899615196582726ba083a6bab3c.1685642988.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685642988.git.steve@sakoman.com>
References: <cover.1685642988.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 18:11:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60159

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index b64461c..aef76d0 100644
--- a/config.py
+++ b/config.py
@@ -159,7 +159,7 @@ workers_prev_releases = {
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2204", "perf-"),
+    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2204", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.34.1


