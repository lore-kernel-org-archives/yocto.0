Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.17263.1622930586010922353
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vT2lvL6H;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id q15so10765759pgg.12
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wUgh5nO20RjsPw+N2frH4JgWF8oHIjlp/g8YVJw6anw=;
        b=vT2lvL6HbcHTbGajopsgpG5vTZmcU28j4lIPaQ7BDTV/rU4Fa5T4ovCZzJk8yk5vU2
         JyJwZLEAJttAk56zx1i4kO5ZlZ7HpZVJGQNHLTQoGAKJVRXHvWMIOJuPuRSgAQzGJ4ap
         aLHWO6fn3y4V8Evzss/kJIB+A2PDvWCmIQHZAlXtchQSx22Z+PU7hBl0yNB0HdJMJCjY
         /0WXP3SKsXqhd/maixzmh5HDzE0FnzGUTGsK4XRj3+xCsDMzm6mBdo4sQHK1TBrU5DJJ
         E/9HEFHgzMTvR2+PvDHHdwCNLuCqoc0L/FQdO/AOIc3se4++D0ANbjYG5PgnlmD4KgD8
         /fwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wUgh5nO20RjsPw+N2frH4JgWF8oHIjlp/g8YVJw6anw=;
        b=oTKcV+u/Bqv+c2AYEJzBgfhm1Ws/f7ap3vsJLu+UNjQ/TLRxQyCX271mY1OHcJ4b+G
         MgPe9FhQ94hDZlm1mfjL/OZXAi/Q9PU7EqpcwiKlH9r6SDFeWxmsGy+49qi/PjHaKNd6
         IO9d3azKF6Qcl/Sc/InTUv0pdzeVgsU8kFmhtDdzae5OamEazXqZ6UgFwPsu75lWo3uB
         g/CDcRdKW8l1w2CZq9k84qqMDcfJVoG/Vv/ynglB7I+t8oOjpciMft6H+yZD2xasYjDv
         Q+bIa8QnH5ElDQrFuiGNvOQ4P43JIbJRhYw15kyJNARAtqgwyHwgOgKEYEcvRdXzD2Kw
         hJuQ==
X-Gm-Message-State: AOAM533GSmxaenSdtZqSlY5/1AXo+3OAREIkcZAGPp5kqKL/ukRugAeI
	nlFrV9DSQLXlsPjRaSA+K3BNlVkbHoE2rA==
X-Google-Smtp-Source: ABdhPJykpYv2efxXVSsL/vAGx+txqgN97iSJfRRGjGV7FD7++9VhUEQJ3I/q/uWrQXEPSjU3knxN1g==
X-Received: by 2002:a63:2ac4:: with SMTP id q187mr9374640pgq.370.1622930585390;
        Sat, 05 Jun 2021 15:03:05 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:05 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/7] meta-integrity: add sanity check
Date: Sat,  5 Jun 2021 22:02:57 +0000
Message-Id: <20210605220258.414233-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/README.md                       | 18 +++++++++++++++++-
 .../classes/sanity-meta-integrity.bbclass      | 10 ++++++++++
 meta-integrity/conf/layer.conf                 |  4 ++++
 3 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 meta-integrity/classes/sanity-meta-integrity.bbclass

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 5048fba..8254b0d 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -1,8 +1,24 @@
 This README file contains information on the contents of the
 integrity layer.
 
-Please see the corresponding sections below for details.
 
+The bbappend files for some recipes (e.g. linux-yocto) in this layer need
+to have 'integrity' in DISTRO_FEATURES to have effect.
+To enable them, add in configuration file the following line.
+
+  DISTRO_FEATURES_append = " integrity"
+
+If meta-integrity is included, but integrity is not enabled as a
+distro feature a warning is printed at parse time:
+
+    You have included the meta-integritry layer, but
+    'integrity' has not been enabled in your DISTRO_FEATURES. Some bbappend files
+    and preferred version setting may not take effect.
+
+If you know what you are doing, this warning can be disabled by setting the following
+variable in your configuration:
+
+  SKIP_META_INTEGRITY_SANITY_CHECK = 1
 
 Dependencies
 ============
diff --git a/meta-integrity/classes/sanity-meta-integrity.bbclass b/meta-integrity/classes/sanity-meta-integrity.bbclass
new file mode 100644
index 0000000..6ba7e3f
--- /dev/null
+++ b/meta-integrity/classes/sanity-meta-integrity.bbclass
@@ -0,0 +1,10 @@
+addhandler integrity_bbappend_distrocheck
+integrity_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
+python integrity_bbappend_distrocheck() {
+    skip_check = e.data.getVar('SKIP_META_INTEGRITY_SANITY_CHECK') == "1"
+    if 'integrity' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
+        bb.warn("You have included the meta-integrity layer, but \
+'integrity' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
+and preferred version setting may not take effect. See the meta-integrity README \
+for details on enabling integrity support.")
+}
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index ba028da..37776f8 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -26,6 +26,10 @@ LAYERDEPENDS_integrity = "core openembedded-layer"
 
 BBLAYERS_LAYERINDEX_NAME_integrity = "meta-integrity"
 
+# Sanity check for meta-integrity layer.
+# Setting SKIP_META_INTEGRITY_SANITY_CHECK to "1" would skip the bbappend files check.
+INHERIT += "sanity-meta-integrity"
+
 BBFILES_DYNAMIC += " \
 networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
 "
-- 
2.25.1

