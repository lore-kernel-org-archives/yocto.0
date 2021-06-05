Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web09.17357.1622930584337747099
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CN0wWQBL;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id t9so10794695pgn.4
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nfPFDjgJX05ZYR+qNT0IztlmIxlr7KVXu73gykLnnSQ=;
        b=CN0wWQBLlo71p2P6sTh19mXkwbQK6vRueXd/TQ+4bEXfH0ngqJAGWNF9nnv7HIi7oL
         9vPovm0pprvmFIvctkJ1K4vaeQgYWxnnAo6ITO8Atrhr/BploNaqqXNbtR3A/HbImZ1Y
         2g/xUfFXAsOtExnEjoCy1dlQLEo5L/mQcKwMuNVbFbicNhL2aNACxXCqvM9ASt8EuHyf
         c9JIZ2PplkYPxcY+zffIVbz8IoaBioWXmAGnICds8iOYMtn49rUJzx1wd2c893xB9iYR
         AhPJgxbu70jVeeMkzIBQM9+Am6sXw2+Zw8tjr9hadEvf6TdWSgC34KbwF4SnirLid51k
         hM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nfPFDjgJX05ZYR+qNT0IztlmIxlr7KVXu73gykLnnSQ=;
        b=jcGnzy+4VkUvn2Q8WRnSyoDfJSHwSHChKJEoceZ/zbu2qwt7BCXFwqotMUCSEBemJx
         teK5LCPZ09TTKbvx2JqEGC1rcZlGEFXx9gyK29Gez54F6XyyF+1cr2tFVYFFPVMDqmHO
         E/dtwxlDw7eplSGeJkkx/6YTXQnoshrnyHurzRWDtrDzp2HIHHvatalhNe8aefAdsbRY
         /ZRZrqPWzKJIJ1ZsM4BTqhw1IenXZ90xnpJNeSmpBsuRSWPQ3xPkVYfTtYx4wWRhMlpS
         NtgUsRrHm8L0zGIpxq7P4CW6OKFnBfkUE76KYjidto5KHxlG8lUbqRVpxxJB1tKWdSgf
         vVew==
X-Gm-Message-State: AOAM533qkwDhNQ6VtH3E8qOgZwG9vdxoNfIGm3rUAxb5lQxJlHXRQ5yg
	4OnPNiGgU2MqTc1vgL2hnRTavnmE+hi3UA==
X-Google-Smtp-Source: ABdhPJyzuwn3SVnwT7OPOvBGgfO5Xk3Kyll5kzepQOttuzgEmDRVavRm39K9JhXE+rkYr8RLCOaHcg==
X-Received: by 2002:a63:fe52:: with SMTP id x18mr5127556pgj.224.1622930583688;
        Sat, 05 Jun 2021 15:03:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:03 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/7] meta-tpm: add layer sanity check
Date: Sat,  5 Jun 2021 22:02:55 +0000
Message-Id: <20210605220258.414233-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/README                          | 19 +++++++++++++++++++
 meta-tpm/classes/sanity-meta-tpm.bbclass | 10 ++++++++++
 meta-tpm/conf/layer.conf                 |  4 ++++
 3 files changed, 33 insertions(+)
 create mode 100644 meta-tpm/classes/sanity-meta-tpm.bbclass

diff --git a/meta-tpm/README b/meta-tpm/README
index dd662b3..59d2ee3 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -1,6 +1,25 @@
 meta-tpm layer
 ==============
 
+The bbappend files for some recipes (e.g. linux-yocto) in this layer need
+to have 'tpm' in DISTRO_FEATURES to have effect.
+To enable them, add in configuration file the following line.
+
+  DISTRO_FEATURES_append = " tmp"
+
+If meta-tpm is included, but tpm is not enabled as a
+distro feature a warning is printed at parse time:
+
+    You have included the meta-tpm layer, but
+    'tpm' has not been enabled in your DISTRO_FEATURES. Some bbappend files
+    and preferred version setting may not take effect.
+
+If you know what you are doing, this warning can be disabled by setting the following
+variable in your configuration:
+
+  SKIP_META_TPM_SANITY_CHECK = 1
+
+
 This layer contains base TPM recipes.
 
 Dependencies
diff --git a/meta-tpm/classes/sanity-meta-tpm.bbclass b/meta-tpm/classes/sanity-meta-tpm.bbclass
new file mode 100644
index 0000000..2f8b52d
--- /dev/null
+++ b/meta-tpm/classes/sanity-meta-tpm.bbclass
@@ -0,0 +1,10 @@
+addhandler tpm_machinecheck
+tpm_machinecheck[eventmask] = "bb.event.SanityCheck"
+python tpm_machinecheck() {
+    skip_check = e.data.getVar('SKIP_META_TPM_SANITY_CHECK') == "1"
+    if 'tpm' not in e.data.getVar('DISTRO_FEATURES').split() and not skip_check:
+        bb.warn("You have included the meta-tpm layer, but \
+'tpm or tpm2' has not been enabled in your DISTRO_FEATURES. Some bbappend files \
+and preferred version setting may not take effect. See the meta-tpm README \
+for details on enabling tpm support.")
+}
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 1b766cb..0b102c5 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -17,6 +17,10 @@ LAYERDEPENDS_tpm-layer = " \
 "
 BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
 
+# Sanity check for meta-integrity layer.
+# Setting SKIP_META_TPM_SANITY_CHECK to "1" would skip the bbappend files check.
+INHERIT += "sanity-meta-tpm"
+
 BBFILES_DYNAMIC += " \
 networking-layer:${LAYERDIR}/dynamic-layers/meta-networking/recipes-*/*/*.bbappend \
 "
-- 
2.25.1

