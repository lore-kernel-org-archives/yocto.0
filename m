Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
 by mx.groups.io with SMTP id smtpd.web10.8358.1582388694209166163
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 08:24:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EuU1zW9s;
 spf=pass (domain: gmail.com, ip: 209.85.215.193, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f193.google.com with SMTP id u12so2622651pgb.10
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2020 08:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=AGN2HuMSFrB10eP4A011OAPXSlUdOWqhoW2lW5XwBbU=;
        b=EuU1zW9stmwGqIbYzg1mHvjaC2BApNwN3oj1+GApN7VIWr5J1qYmwe+F8AlZUnrBlx
         1fagbrrEdlM9uDN/FL5s/T8lDFfVQ40XPPaN2Suk5uzjTcxRmWI/Uqrulxu9NnddUXNY
         QyoDKZUW3867vdSfiYnueVfczx4HRTADazSlFV7rZ8J1agDmw7zNorfJbMBUcX0VaM6G
         TUXO+rON6icJ9f9qefX3Anp4reYw7ti6A3cOFbwz5y3/9kwdVXwB5tzoENoKx140xDKJ
         I5coM6xp9gIs1nXeO2RlXDO4Ug0hvp3R6APd1MHSMkcS1JIvc4pXdj6kFMM2vN1jwvt5
         XsFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=AGN2HuMSFrB10eP4A011OAPXSlUdOWqhoW2lW5XwBbU=;
        b=ssUtmSffS+vJGhb6LszZoLbV1EMaGxxZx8GrM4ODvZUvD6xQ/qDGZtjuHIjkxg8NcT
         sVLEaHnXlGsNmtYqMqhIOQPMdfIqOZkzmm209uaOdyxQquBnt2bKT/oO2yJAtYx+kLTF
         hRPXFzK9fxdFVelzd+5mkelIQRx2UKiQogI6rDdmiJ6jFQ124NAP2x+ZOcDZ2heAk+jA
         4dOoqBUZQZh0JInrd2X9fHkU9pk5IbIv910B3qJmTctX3okJQQbjgvPMr9tBBu0T44KV
         83e8wOrC704yClSD6q5wsMK6xoUBeQyxJEUTpCIcILAaCOJ4JzA3L0vF/6MoAOGodqNj
         U1DA==
X-Gm-Message-State: APjAAAVENc+tlL2a0vLYnjImFd7xMx6AZhPJa+b+InkrduldOISLrkEt
	tAxTHb0aMCorIztikFCUYkMXb4O6
X-Google-Smtp-Source: APXvYqzSqo1re7Ung9AVjawk8iyqC0zOTq4uU39kjcg7urywZLPQQABsa274YM23wvvfJzUkqguBSA==
X-Received: by 2002:aa7:8f33:: with SMTP id y19mr41675665pfr.47.1582388693374;
        Sat, 22 Feb 2020 08:24:53 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f455:4f9:e4a2:b3f5])
        by smtp.gmail.com with ESMTPSA id q17sm6851209pfg.123.2020.02.22.08.24.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 08:24:52 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-isafw][PATCH 2/4] isafw: fix to work against master
Date: Sat, 22 Feb 2020 08:24:47 -0800
Message-Id: <20200222162449.20014-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162449.20014-1-akuster808@gmail.com>
References: <20200222162449.20014-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../classes/isafw.bbclass                                 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename {meta-security-isafw => meta-security-isfafw}/classes/isafw.bbclass (97%)

diff --git a/meta-security-isafw/classes/isafw.bbclass b/meta-security-isfafw/classes/isafw.bbclass
similarity index 97%
rename from meta-security-isafw/classes/isafw.bbclass
rename to meta-security-isfafw/classes/isafw.bbclass
index bec8d88..146acdf 100644
--- a/meta-security-isafw/classes/isafw.bbclass
+++ b/meta-security-isfafw/classes/isafw.bbclass
@@ -105,8 +105,8 @@ python process_reports_handler() {
     os.environ["PATH"] = savedenv["PATH"]
 }
 
-do_build[depends] += "cve-check-tool-native:do_populate_sysroot ca-certificates-native:do_populate_sysroot"
-do_build[depends] += "python-lxml-native:do_populate_sysroot"
+do_build[depends] += "cve-update-db-native:do_populate_cve_db ca-certificates-native:do_populate_sysroot"
+do_build[depends] += "python3-lxml-native:do_populate_sysroot"
 
 # These tasks are intended to be called directly by the user (e.g. bitbake -c)
 
@@ -180,14 +180,14 @@ fakeroot python do_analyse_image() {
 
 do_rootfs[depends] += "checksec-native:do_populate_sysroot ca-certificates-native:do_populate_sysroot"
 do_rootfs[depends] += "prelink-native:do_populate_sysroot"
-do_rootfs[depends] += "python-lxml-native:do_populate_sysroot"
+do_rootfs[depends] += "python3-lxml-native:do_populate_sysroot"
 
 isafw_init[vardepsexclude] = "DATETIME"
 def isafw_init(isafw, d):
     import re, errno
 
     isafw_config = isafw.ISA_config()
-    # Override the builtin default in curl-native (used by cve-check-tool-native)
+    # Override the builtin default in curl-native (used by cve-update-db-nativ)
     # because that default is a path that may not be valid: when curl-native gets
     # installed from sstate, we end up with the sysroot path as it was on the
     # original build host, which is not necessarily the same path used now
-- 
2.17.1

