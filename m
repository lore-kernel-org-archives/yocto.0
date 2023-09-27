Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5D4E80AB8
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 14:35:13 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.19097.1695825308246894702
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 07:35:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=P22QkF5A;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.180, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1c60cec8041so52330865ad.3
        for <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 07:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1695825307; x=1696430107; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sOo9LBRNsre6fdq9isbvQp6YhTVdcE6lwQBvJc1g5MI=;
        b=P22QkF5A0XXbXCPVSsQspL0xmrTAMthi5FkbAntBm3kin8StV4P4Q33MatpjfPQxNf
         yLmyXoIG1ngvggHmisLPRGwkrCdTLbkpPfCxZP7WYt72I3OtTQFCZlzbuIsWsa233kgb
         VwyT3sXhAORKL4mTR2MSMUr0Rymgm9bcC4ZACxdHW4hDCc6laCwgLnRqgCql3NVzYodN
         0TrlMPhbi5bigvOsmkfrsQI12DwGz41P3QCSiUJSbiTQevSDjH5MuKt+qBpbdCA+PFAe
         KwWETEe/7mIIYeviSfyjEiqCiUDE5pkMxKdCIV6UYfXU1Q+jwtZ6p3lFcTHKF3Lajkqr
         6GtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695825307; x=1696430107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sOo9LBRNsre6fdq9isbvQp6YhTVdcE6lwQBvJc1g5MI=;
        b=n0LOx4/EoeMZjSMOHlkqtUGlfUYEe/YsNMHBNLJrjCwT0AuoOGsrQuHMV4VomTqcrN
         43qPx06yYcIaVJuiaRbavBgmGjDIIfthckcYzXX9YHragKGNtHMGcOqBn9fa7W1Zg1J9
         GUsZT7UD1ARzEbhOfk6GUCk3EohWjjRpWq/3ISEvkE7WHjc9uJ0QbY2ZvYRgYZMc+vCb
         IMFUHnsg+VBO5NW1joDOdF0vq7IOzObL6knfX5tzxnogn1RBBM86DezaLQsRNbbbDzwI
         85sFVZ/03+kL61yOD+Me+EwJvRf/LvCdlS2W7K4ORlMG/FSIbF7uWzUOqXfI53GunKPj
         UYrQ==
X-Gm-Message-State: AOJu0Yw+Mdsmz8uxtJF4/elnnePJx577g9CEPT8C8pEQ1GnWsSokMjkB
	gAvtNqFaKFk+2KeJBXhm3SWYhSUTEcRtYQYaipA=
X-Google-Smtp-Source: AGHT+IFAXJF6yZByPcSHiBuKsh3zfWT3ndYsccxDJYVw0uEWqbO7Ljg5+JDDPRMMN6AykiYjHT05gA==
X-Received: by 2002:a17:903:120a:b0:1c1:f27e:a55a with SMTP id l10-20020a170903120a00b001c1f27ea55amr2206704plh.46.1695825307240;
        Wed, 27 Sep 2023 07:35:07 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id u11-20020a170902e80b00b001bbb25dd3a7sm9592046plg.187.2023.09.27.07.35.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 07:35:06 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2 2/2] config.py: add fedora38 to workers_prev_releases for kirkstone
Date: Wed, 27 Sep 2023 04:34:54 -1000
Message-Id: <effb876d21cfeac0ef9aa5c144261f1b11dc97af.1695825197.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695825197.git.steve@sakoman.com>
References: <cover.1695825197.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 14:35:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61142

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index ca37dd1..a9433be 100644
--- a/config.py
+++ b/config.py
@@ -159,7 +159,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 # Worker filtering for older releases
 workers_prev_releases = {
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
-    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
+    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.34.1


