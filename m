Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.42799.1593975493448821205
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:58:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QhfFcQ4r;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id k4so309216pld.12
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=GxKQeRczgqHcm0SAW1PZV6hcP6M4EVBN9q00gwVRdOo=;
        b=QhfFcQ4r5/UIh1WYNCFzoCH/7CutTJEY8RbxyHgZS0OTP5Ym3xXrxe5SjajJdy7bdn
         pgMPo43QjxWzm+QnzIZcCbUj3saMNSPvbS49vDDUvwdJYhY8uK6MS0caBIFz7eaXp76u
         dlwFqcUDV7saJDo/q7Oc6WiRRWGbePZMF0WblLjAFp2S3dvWvxvLH5cB+rbMC3CaC1B5
         nVViPCIQF0i9EZ2B56cADynHpO+V1sgdK09BO7rBabIu0Djll6G1Qu6LFkmod3G6ac+k
         oMXbfTPbB8dEhys0KPzKeUFLGwAlES0ulR0RFpHGb5Zbx+NS1Jn7I6GnBuTWqcfao4vJ
         cv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=GxKQeRczgqHcm0SAW1PZV6hcP6M4EVBN9q00gwVRdOo=;
        b=WoJpfG/TqdS83D8hBF8eCXGVwOpkHLTFJyHi8Jcg0VmNb8vPTMLAasBwHVorVOQfXd
         9ighz8wZfBdB4d2VGM1mC7VALQUEUSWg4OEZlRqf89NNnjF0emR+mcr2lDrjo92VqhEi
         QlDTONbkBqHXpf4CUrGtHtMvW6bPBt0uNmpEFNVLJL4be2g6c/OCCcR65lSDDz1QShtK
         ZNDtKUJPYc2lIS43H02jHORZ9+ahWuPfvFwVc6gDf5ILvcgHoeJjITAsGX39DhDtwNFj
         NJhWHTWn9jUyNoBlNubWJ/jCGVrEA4PtEzkSUBSwz3PY/aqqgQy2fwHdUFfIlIltRlYk
         o3rQ==
X-Gm-Message-State: AOAM533zSfVYhR4UzvKAQcnDFg/kGVYuOFLSnjuYB6CRQN868wvC2YwH
	tc+PVRKusLn3lLomc/8zixhSOyi22n4=
X-Google-Smtp-Source: ABdhPJzl9gjEAJwcEqxKZBnjM7Lc9xNmxTyKh/WfaUr6wEOR8aizhVQDNl7b+AvtLRHWPYZfLXacNg==
X-Received: by 2002:a17:90a:ea05:: with SMTP id w5mr30320219pjy.175.1593975492922;
        Sun, 05 Jul 2020 11:58:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id d5sm15464534pjo.20.2020.07.05.11.58.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:58:12 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] python3-ecdsa: add recipe
Date: Sun,  5 Jul 2020 11:58:07 -0700
Message-Id: <20200705185808.3912-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200705185808.3912-1-akuster808@gmail.com>
References: <20200705185808.3912-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-python/python/python3-ecdsa_0.15.bb | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-python/python/python3-ecdsa_0.15.bb

diff --git a/recipes-python/python/python3-ecdsa_0.15.bb b/recipes-python/python/python3-ecdsa_0.15.bb
new file mode 100644
index 0000000..79df4ed
--- /dev/null
+++ b/recipes-python/python/python3-ecdsa_0.15.bb
@@ -0,0 +1,10 @@
+SUMMARY = "ECDSA cryptographic signature library (pure python)"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=66ffc5e30f76cbb5358fe54b645e5a1d"
+
+PYPI_PACKAGE = "ecdsa"
+SRC_URI[sha256sum] = "8f12ac317f8a1318efa75757ef0a651abe12e51fc1af8838fb91079445227277"
+
+inherit pypi setuptools3
+
-- 
2.17.1

