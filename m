Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF033C4167B
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 10:58:04 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.49225.1699009083343828542
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 03:58:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TwJgYZa8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4083f613272so16880295e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 03:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699009081; x=1699613881; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=2PpETKOd8wWwBkvQAurJtvhnzRuOLFjiuMfT9V0BSr0=;
        b=TwJgYZa86U2obL+qh3bnBq9G8eaI5BqE6gxTjWn2iGhY7vUdaNfHRXWyANGhdsI5ze
         xowakSRO3vpGCFsMWISIm1hV4GTm9wY5pq92MTjmyyVstbY3P2XNKIzQkVoTi0QLrJhU
         jNeBWEkwWQa1fsjJg2mlWMgbIZe3PtSbfmUw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699009081; x=1699613881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2PpETKOd8wWwBkvQAurJtvhnzRuOLFjiuMfT9V0BSr0=;
        b=o7Q8nZhcCW3V9KHg10UgjeGHEQiv8wZPRAqVe6TvKaxrAdkXxT3iatbA9KobvfclzC
         DUllLEMqpe4tcpc4aA7zc7sJR0GWB0GxdtixWg7huCF75FT/AqKupRLmvi9zwe8mb1O3
         zRUQDhoeKuVvs/3W4tHxwYfsyZW5HCdf82czoGh09zP0XSBlDIhIVrXNN9u566NEvK80
         l4Wplni6Y6Ud/oAULUjp+GdJVXCYNljxRKrBYGA/Oz/5ltvxdFFXV3TfSx82M7DWEK4N
         EY0rpzbmZhTEQXC9NLZWFDA+PvcOfVx7R9tIN9OZZkm9DdLKs8eSU3MRjDeViGNoUbqg
         ruag==
X-Gm-Message-State: AOJu0YyrCyRX+CQY8FHDw0MvptXYP/1iTd79I5ETRJb5C8WuMOvixqoy
	W87a2AXY4p/LGDY58aq+lffO/KkA9ZhlNGoM2G0=
X-Google-Smtp-Source: AGHT+IGgT8EX2dM8i6mhfexrQtBZKsuYckuJkgytA7Ffh/P+nCIlxoI5EqDkCqrG+/wlMmt3qNABXg==
X-Received: by 2002:a05:600c:1913:b0:405:499a:7fc1 with SMTP id j19-20020a05600c191300b00405499a7fc1mr16768499wmq.40.1699009081199;
        Fri, 03 Nov 2023 03:58:01 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b0040651505684sm2090111wmn.29.2023.11.03.03.58.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 03:58:00 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] auh-meta-oe: Send to the openembedded-devel mailing list, not core
Date: Fri,  3 Nov 2023 10:58:00 +0000
Message-Id: <20231103105800.2638436-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 10:58:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61592

To do that we need a separate config file.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json                                   |  2 +-
 .../auh-config/upgrade-helper-meta-oe.conf    | 42 +++++++++++++++++++
 2 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 scripts/auh-config/upgrade-helper-meta-oe.conf

diff --git a/config.json b/config.json
index dd45578..7505e59 100644
--- a/config.json
+++ b/config.json
@@ -1504,7 +1504,7 @@
                     "git -C ./meta-openembedded config user.email auh@yoctoproject.org",
                     "git -C ./meta-openembedded config user.name 'Auto Upgrade Helper'",
                     "git -C ./meta-openembedded switch -C tmp-auh-upgrades HEAD",
-                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper.conf ./upgrade-helper/upgrade-helper.conf"
+                    "install -D ${SCRIPTSDIR}/auh-config/upgrade-helper-meta-oe.conf ./upgrade-helper/upgrade-helper.conf"
                 ]
             },
             "step2": {
diff --git a/scripts/auh-config/upgrade-helper-meta-oe.conf b/scripts/auh-config/upgrade-helper-meta-oe.conf
new file mode 100644
index 0000000..14c6957
--- /dev/null
+++ b/scripts/auh-config/upgrade-helper-meta-oe.conf
@@ -0,0 +1,42 @@
+[maintainer_override]
+# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
+#ross.burton@intel.com=anibal.limon@linux.intel.com
+
+[settings]
+# recipes in blacklist will be skipped
+blacklist=linux-libc-headers linux-yocto alsa-utils-scripts build-appliance-image
+
+#maintainers_whitelist=anibal.limon@linux.intel.com
+
+# SMTP server
+smtp=localhost:25
+
+# from whom should the mails arrive
+from=auh@yoctoproject.org
+
+# who should get the status mail with statistics, at the end
+status_recipients=openembedded-devel@lists.openembedded.org
+
+# who should be CCd with upgrade emails
+cc_recipients=openembedded-devel@lists.openembedded.org
+
+# clean sstate directory before upgrading
+#clean_sstate=yes
+
+# clean tmp directory before upgrading
+#clean_tmp=yes
+
+# machines to test build with
+#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
+#machines=qemux86
+
+buildhistory=yes
+
+#testimage=yes
+#testimage_name=core-image-minimal
+
+#workdir=/home/auh/work/
+publish_work_url=https://autobuilder.yocto.io/pub/auh
+
+commit_revert_policy=all
+
-- 
2.39.2


