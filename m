Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.1467.1616688234157684641
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=RbYjW2lj;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id v186so2240935pgv.7
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ABzhdyqfqDw+ynrj0bEKauIqQvkLl3qbUFgDzlSB9gE=;
        b=RbYjW2ljRE5l7MIEiP6tr5faDZorMgyj8qALyUpa0ZfAwuRNgbWz3lSLc0qkx53YgP
         7NmFJNoUlty1f62uiHsvRfghVQerBO0N6VfQxsc5/JncmdXmrXaNUhzcYknAuW6veGCg
         SRRVssY/WKqujnuTkha29lvHbD3lLBuwHtVNXK7hr40MbqILCs8sSn59dxNEhnWKkLAr
         jd5rwJU0fhbIII265c7ZQOgV5BJUcwZ6eVt4el4VkBIIgRGqTTdurQkyJ9FzxLIUpywL
         qcpDGZiNUUvevXMZCiYOJ63ZpRbcR7197nzRw2iOCFxgRAwsSOl3yrWIxM5n6cjsuCgV
         BWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ABzhdyqfqDw+ynrj0bEKauIqQvkLl3qbUFgDzlSB9gE=;
        b=o7cfdyUrnaFTjDXJnqfjyKO0a5yg10SYIAVZBUnAw3nRi85MvgTOyKNGRrCNyZj9x1
         4bQwxXEkG8GV8+rz7ZRrU2w3Dg0AoLCmx8jOs1odlu8xDSdp54NeHIbw9M/FkVFv8L1M
         WFCAVM1iBscO3hCQlKjAeFLwE2V84jP6FsRYlmr/4Jv7hguw27MhubGis2TUyj5aGlLi
         uq5bDIZJiJ3sYd60v7LuWvF90eNz/TpEUDmuefJfmebE9btFbIp14Tw/70tKf60uTjEJ
         Im1UU/VSMK3gZHKiDyipOBnPlY/DoLkyzDBpuGmunz54oKSS5faaMaYot5eMgUaA8Igo
         mn+g==
X-Gm-Message-State: AOAM532gcGPLyYmpIyDcIdTlQRJBpebVu6o2l5/0FNnJ6NtssTWtnHCf
	qOoQwIwsnxekisndgjFZEs/7xuXxa+W5TNpN
X-Google-Smtp-Source: ABdhPJy88PU+y9BryH3a+tHi+i4ees5f5K48tZnkB9frRsOsI5lSzlmo1K/XJkJLF2T5yC0V9y36PA==
X-Received: by 2002:a63:3806:: with SMTP id f6mr8033549pga.239.1616688233183;
        Thu, 25 Mar 2021 09:03:53 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.03.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:03:52 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 11/15] config.json: Unbreak qa-extras locked sigs test
Date: Thu, 25 Mar 2021 06:02:17 -1000
Message-Id: <715fcfdf2938693565e3a40bec478552a79ee7d7.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
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

