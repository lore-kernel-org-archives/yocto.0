Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.17151.1622930581816685047
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOhchHIB;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id u18so10143946pfk.11
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cKCVhrUc2p74oe81tWXD8cZ+zGooeeqw3Y7aVTBaKl4=;
        b=uOhchHIBtAXdbDkofmMLtIwxeRir/l8qs5NFh5E6AuFzlsdI0PlhvvpgfQ1jt/mU6K
         skXGMbx9hI9Cg8Re7/9kMBGBTU95VuH/g7a7c4dwWlsy0ny/uzeM3S5fIp3CwJhyXXu0
         YWygOyTiusyKJLQ3KD/2CNzjGXzazn8/oH4p8N4hBOEM2R7It1M07oTtboYz/uQAIY4b
         KgTfWezu/BP4cKr5TmRAURCDxYf6OtzD/yTqf4dFMNZnpdTAQT3gJV04kvRJJVpIQqRe
         ByK647zdatVCLOLIbfeEk8ns0p2WherepPRlb7XXzImduwdz2FNPMKNMMp3KO32zu4Qh
         5W2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cKCVhrUc2p74oe81tWXD8cZ+zGooeeqw3Y7aVTBaKl4=;
        b=Xl1NP/L8xRxtH2HOjldcjRRDMYrTkuKFSgriWkrU4q9zQQoR1hWgVEQvarVgsqL61/
         oIPyzb2RpPpE6TYGg87mqluWRbIPUl9Q9Nrb8qBC5AeSaxmkdG20sxb06xIg4vokbMol
         lp2xLJ9NjozYngrSMxnKZv6zIkLXzfXfHByJtEsn4rxVYVLyF2WMmMupwQV+sy4h/xcs
         0gpzvrf46y9sM+gCsOGMWaZ+1PYdC+Urjx1pEvwsg2Ecg8UUAW7U6AB1z8zeJ4G38suo
         GJJEcjZSEmY4nWq68JKD4NfxrMwbtJfmYmTSI/s7LUwu1B4JvDilzi8usFQJ1uDTTnCn
         FbvA==
X-Gm-Message-State: AOAM5310cLzXZppWOZXWixX4sFCKohGfUSFNOljxu0VmfrtF1D27xOFm
	EX2nhyV1peKZuODvfmBEc891+kiex3PosA==
X-Google-Smtp-Source: ABdhPJz2XD7AazpLp3D+JNsVPxLpnX1S+3BZDRAuTyMxCNMOS4O1HLbHGhkhELqc6PEFGJ7tyZSmKg==
X-Received: by 2002:a65:63cb:: with SMTP id n11mr11267015pgv.357.1622930581103;
        Sat, 05 Jun 2021 15:03:01 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:00 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/7] meta-security: add sanity check
Date: Sat,  5 Jun 2021 22:02:52 +0000
Message-Id: <20210605220258.414233-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README                               | 18 ++++++++++++++++++
 classes/sanity-meta-security.bbclass | 10 ++++++++++
 conf/layer.conf                      |  4 ++++
 3 files changed, 32 insertions(+)
 create mode 100644 classes/sanity-meta-security.bbclass

diff --git a/README b/README
index eb15366..4047b86 100644
--- a/README
+++ b/README
@@ -1,6 +1,24 @@
 Meta-security
 =============
 
+The bbappend files for some recipes (e.g. linux-yocto) in this layer need
+to have 'security' in DISTRO_FEATURES to have effect.
+To enable them, add in configuration file the following line.
+
+  DISTRO_FEATURES_append = " security"
+
+If meta-security is included, but security  is not enabled as a
+distro feature a warning is printed at parse time:
+
+    You have included the meta-security layer, but
+    'security' has not been enabled in your DISTRO_FEATURES. Some bbappend files
+    and preferred version setting may not take effect.
+
+If you know what you are doing, this warning can be disabled by setting the following
+variable in your configuration:
+
+  SKIP_META_SECURITY_SANITY_CHECK = 1
+
 This layer provides security tools, hardening tools for Linux kernels
 and libraries for implementing security mechanisms.
 
diff --git a/classes/sanity-meta-security.bbclass b/classes/sanity-meta-security.bbclass
new file mode 100644
index 0000000..b6c6b9c
--- /dev/null
+++ b/classes/sanity-meta-security.bbclass
@@ -0,0 +1,10 @@
+addhandler security_bbappend_distrocheck
+security_bbappend_distrocheck[eventmask] = "bb.event.SanityCheck"
+python security_bbappend_distrocheck() {
+    skip_check = e.data.getVar('SKIP_META_SECUIRTY_SANITY_CHECK') == "1"
+    if 'security' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
+        bb.warn("You have included the meta-security layer, but \
+'security' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
+and preferred version setting may not take effect. See the meta-security README \
+for details on enabling security support.")
+}
diff --git a/conf/layer.conf b/conf/layer.conf
index 906e024..7853d6e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,6 +13,10 @@ LAYERSERIES_COMPAT_security = "hardknott"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
+# Sanity check for meta-security layer.
+# Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
+INHERIT += "sanity-meta-security"
+
 BBFILES_DYNAMIC += " \
 rust-layer:${LAYERDIR}/dynamic-layers/meta-rust/recipes-*/*/*.bb  \
 "
-- 
2.25.1

