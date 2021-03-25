Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web09.1473.1616632836174244932
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hMS0qgOB;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id v186so91970pgv.7
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ABzhdyqfqDw+ynrj0bEKauIqQvkLl3qbUFgDzlSB9gE=;
        b=hMS0qgOBB0Az9f3V5OJEq7T7k4mIrH+fFMDojh0nsdhuK/QvlPcxANUp0sJYRbtM7T
         X2l7CW3eecJ7D3tjUGNnEmPu4FHx74c3hz3ezILzbpHKoo2wI0Wv+J3ZxsXSsu2ykjX7
         UbzriVg7wnxGcQGWloCk+dR0+FEqljmQMPy+YGJXjsyv+7DxM6g2JUDFyVIKEaYFA85X
         HJokMHELc2cj++QS+9ElUvsiHdzffuqlw0BWL95YZ4ApKznWx3F3X4XzD6Q6kuFUTrEp
         mSca2ZWquz1bb9N7s7THQd1TuKGfmqwMyRPpV6wKeBLYskmch5ZdQk6R+LOwIimO/3c4
         m2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ABzhdyqfqDw+ynrj0bEKauIqQvkLl3qbUFgDzlSB9gE=;
        b=JaALE6VRxjqVjeA4xhgjqxeskZ1uoBaEmFVw+iquH3wazUBDR6Di3IvS0hSYkb5Nvf
         7IEvBocc2osbD5Z4+OgCCsHVroSKvAIJRn5EmCFvqprvA8qz8QBAZN2rUZ3Hz1uinrv3
         3rGvHDHv7FoeMLMLhpA8QupqHjV3cDpi4euEfxzCx6oT3QA6XRI+FCIJ4DDgIeYr9Ywb
         bKtGOsMt5bkxcL7RrzlX1ov0GG1XsorQaaWNrIyOB2guSJPw++OMy8mJkLQD/AeT/xQC
         oPi9RuJKVwVN/KLWQ2XOe+MIgr93ySoARKkpHq0A49ATPe6Gy+Bi3BoTPil3tasizdOu
         iaUw==
X-Gm-Message-State: AOAM532lh2ZLGGd6xDARtdxIPiaF+5HYHH/McZyPRvl3ZmffqEpA3pfP
	nVXOXUSoyw2PytT0HrJcix4YQWvynPlYH/YI
X-Google-Smtp-Source: ABdhPJyX/fLC51ghXwfNiKNMsV1IXYtWcf8GqiayhCwN2U4eVOWB3NYC4dgnDASwzTAqwGEMRqMQxA==
X-Received: by 2002:a62:160c:0:b029:20a:7b41:f10f with SMTP id 12-20020a62160c0000b029020a7b41f10fmr5452294pfw.67.1616632835234;
        Wed, 24 Mar 2021 17:40:35 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:34 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 18/23] config.json: Unbreak qa-extras locked sigs test
Date: Wed, 24 Mar 2021 14:39:27 -1000
Message-Id: <13d2f38ae812b972b221b7ce088ad5500db3826c.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

qa-extras and qa-extras2 were split incorrectly, fix this.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 80fe0ab06972c46c82cde29cbdfcdac6e87dde99)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/config.json b/config.json
index 4856507..ddf36ae 100644
--- a/config.json
+++ b/config.json
@@ -802,18 +802,18 @@
                     "TMPDIR = '${TOPDIR}/newtmp'",
                     "require ../locked-sigs.inc"
                 ]
-            }
-        },
-        "qa-extras2" : {
-            "MACHINE" : "qemux86-64",
-            "step1" : {
+            },
+            "step7" : {
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-sato:do_populate_sdk_ext",
                 "extravars" : [
                     "TMPDIR = '${TOPDIR}/sdktmp'"
                 ]
-            },
-            "step2" : {
+            }
+        },
+        "qa-extras2" : {
+            "MACHINE" : "qemux86-64",
+            "step1" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -821,7 +821,7 @@
                     "TEST_SUITES_append = ' logrotate'"
                 ]
             },
-            "step3" : {
+            "step2" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -829,7 +829,7 @@
                     "TEST_SUITES_append = ' pam'"
                 ]
             },
-            "step4" : {
+            "step3" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -838,7 +838,7 @@
                 ],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-skeleton"]
             },
-            "step5" : {
+            "step4" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -847,7 +847,7 @@
                     "TEST_SUITES_append = ' systemd'"
                 ]
             },
-            "step6" : {
+            "step5" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -855,7 +855,7 @@
                     "VIRTUAL-RUNTIME_init_manager = 'sysvinit'"
                 ]
             },
-            "step7" : {
+            "step6" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
@@ -865,7 +865,7 @@
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
             },
-            "step8" : {
+            "step7" : {
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-- 
2.25.1

