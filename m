Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609D0C43334
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 17:54:30 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.1307.1655574860924841660
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 10:54:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=N4Phfxuj;
 spf=pass (domain: gmail.com, ip: 209.85.210.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id p14so1100003pfh.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 10:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=1e8OgMl5HZJgMZA0bR/2O2yu3KbncQteN4wV95GFIXA=;
        b=N4PhfxujUH9AY90pz03/qIGqZ3guP1DPosYGpeHo5a/SKNbKcNpmtFA40ZLWV/Garq
         NVaQxTcVil5jOelDvbyuTtPo65r0fKnDMM94a/lER1HTOiI9eF90ermiRHu6rQizdfUN
         PCYOvfk+Mdja1mxe2Ge8wWn/WHs8mrsRF/wd8aTUaNDyo7NvJiBYoKcJxNOu4U06o4Iv
         QkAkbXvAkb3rIyTbfijvVR1a99Jp2BVtcNeQ08P8bXvRdNEvkHxbPv1vkr4hd4LcPp+o
         qeV9X04dRr2CstllrHJJnpwKHbBmIdoj3ff/kwKG+tvLyD58iazRCwjwqiRXak+ieK2O
         Eusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1e8OgMl5HZJgMZA0bR/2O2yu3KbncQteN4wV95GFIXA=;
        b=bDx8bZx5HPtQ8w4lql5QqDgYzueKl0AQfwrSVWjbJA60+gCpjbvaMizlibumdYrHP3
         vkKbBcvNt7myLoHKdTpSVhUZfqy6Fe2YDJjWrFOUGrw6ArFfkhirbbBmyGuOjNpLlqDW
         Jucx2vavEw45aVNVY0rLhIm6N/sfWjJZCHEBDCI7Gklo556lESOg3YRt7H0wVTGPAU65
         xkKFuqociSnmXo3AcEDkJqgxqaNfyrtqZOkJknXyntUygKbZNeAYd5bOOm3+Y+ofx4X0
         WnFsDy3+zkj710eWAEQCKvOPv2d6tJHc88P8c6puZPzIFkkx+A+St6w1YkOmDY85vDVu
         bByw==
X-Gm-Message-State: AJIora9/eYAEYxD4n3EObqkCe9PDpaoEz6oAuXGBKJYcppSbr1wMynmx
	EpIcZ3G7XcznYeeHH86QFRM+LrsZGTA=
X-Google-Smtp-Source: 
 AGRyM1svtx+OXZ4GDC1UOC9s1jz8vl1gd7ITpRVl762HKJf2ktaH71s1OKDU5tf64jxvXVym5IR7TA==
X-Received: by 2002:a63:b94d:0:b0:40c:88a5:117c with SMTP id
 v13-20020a63b94d000000b0040c88a5117cmr2580693pgo.98.1655574860117;
        Sat, 18 Jun 2022 10:54:20 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:3fa4:9838:f434:b609])
        by smtp.gmail.com with ESMTPSA id
 q4-20020a170902f78400b001641670d1adsm5668776pln.131.2022.06.18.10.54.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 10:54:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] oeqa: Add a very basic firejail test
Date: Sat, 18 Jun 2022 10:54:16 -0700
Message-Id: <20220618175416.65055-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618175416.65055-1-akuster808@gmail.com>
References: <20220618175416.65055-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 17:54:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57353

Currently check if --help works.

RESULTS:
RESULTS - ping.PingTest.test_ping: PASSED (0.07s)
RESULTS - ssh.SSHTest.test_ssh: PASSED (2.41s)
RESULTS - firejail.FirejailTest.test_firejail_basic: PASSED (1.30s)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/firejail.py | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 lib/oeqa/runtime/cases/firejail.py

diff --git a/lib/oeqa/runtime/cases/firejail.py b/lib/oeqa/runtime/cases/firejail.py
new file mode 100644
index 0000000..88a8dda
--- /dev/null
+++ b/lib/oeqa/runtime/cases/firejail.py
@@ -0,0 +1,18 @@
+# Copyright (C) 2022 Armin Kuster <akuster808@gmail.com>
+#
+import re
+
+from oeqa.runtime.case import OERuntimeTestCase
+from oeqa.core.decorator.depends import OETestDepends
+from oeqa.runtime.decorator.package import OEHasPackage
+
+class FirejailTest(OERuntimeTestCase):
+
+    @OEHasPackage(['firejail'])
+    @OEHasPackage(['libseccomp'])
+    @OETestDepends(['ssh.SSHTest.test_ssh'])
+    def test_firejail_basic(self):
+        status, output = self.target.run('firejail --help')
+        msg = ('Firejail --help command does not work as expected. '
+               'Status and output:%s and %s' % (status, output))
+        self.assertEqual(status, 0, msg = msg)
-- 
2.25.1


