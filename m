Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C03AC46CD2
	for <webhook@archiver.kernel.org>; Wed, 27 Dec 2023 03:30:56 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web11.94940.1703647850363416003
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Dec 2023 19:30:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RSdgjKzJ;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: akuster808@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7bb0a93b7c7so19464639f.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Dec 2023 19:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703647849; x=1704252649; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=c0b/17aQdA5TU48uBd0vt5wrQ7DgA9Jycf5SvsZodco=;
        b=RSdgjKzJZweYTgtqeq65HMMvN9kbZyCk7QumnuiGdzXIRS3Ci+irHmnU0fuqqWEpAj
         /Uf3hkcDj+gv7T8u5seto7xNhIwkP0MLFVi9Os418AoQAsFzBbv/DopOYwRW19VGhjVI
         k1g7nG47zc6i2EOaUfcNjdMN104RMox6xfi8tPS3J0aWFiPxbnVwk5WFC648uR5T9taJ
         fSiouX6d5yPTCQs432g+iZI6jAwLnBehpKhDfk/j3M4DeerKUK6m2HZ85fCwI0Z9vPm7
         YnPooZvZvB56CXTaFMp5updk5pIvZZluzoh+g/UasflK+mDNUXdi41IPD1V9E3tYboZH
         stlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703647849; x=1704252649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c0b/17aQdA5TU48uBd0vt5wrQ7DgA9Jycf5SvsZodco=;
        b=w2phojKUN0UQDysd5gm9or6qBbLT43d/FJtyDx5bCJRALcoCtqZHLk16VintQhhIBm
         ix9RsklxSNuBSwkFgElK58q6JNaV3s13R3JS+XU7MA5aG8GmKkXkSgz4++jB3V7GkTZQ
         FBzBk3M9geHFeIgoaK0l6avSm3MaNWfEEUAlQBWf9EHQfIe0Cj0eDijtIanzTfngusge
         GZR/SgP8XBI8ILKdnooZ7OnJtXTkrddF1vURzE50wVluR1ryQunXTlMnGGxM/eM1FnlX
         wkxELYpz8EkEQwuekOadCcwiyA8zxCIgYmSTLzrDXJaf8QB4I2lHSbU6az5JBUREcUKu
         E11w==
X-Gm-Message-State: AOJu0YwhtPI9yndgKWVAfch/+zA/qUfTk8TEMp2XBKIds2jbuKMKCt68
	sEeneq4OqOlfh5PMWmHkmSCF/es5BTYg6g==
X-Google-Smtp-Source: AGHT+IG68a2nPJiGDZQ19J/24BMZXwZ5UArYbjLz/DoFG7dp41ujlPUeuzQbmbSrHhIeuo+fbvJjtA==
X-Received: by 2002:a05:6602:2814:b0:7b7:652a:7497 with SMTP id d20-20020a056602281400b007b7652a7497mr10516871ioe.3.1703647849263;
        Tue, 26 Dec 2023 19:30:49 -0800 (PST)
Received: from keaua.. ([65.140.45.62])
        by smtp.gmail.com with ESMTPSA id c23-20020a02a417000000b0046d17aff31bsm1892589jal.157.2023.12.26.19.30.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 19:30:48 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-pyinotify: fail2ban needs this module
Date: Tue, 26 Dec 2023 22:30:47 -0500
Message-Id: <20231227033047.528484-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Dec 2023 03:30:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62043

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../python/python3-pyinotify_0.9.6.bb         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb

diff --git a/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
new file mode 100644
index 0000000..8dd5e15
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-devtools/python/python3-pyinotify_0.9.6.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "Python pyinotify: Linux filesystem events monitoring"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ab173cade7965b411528464589a08382"
+
+RDEPENDS:${PN} += "\
+    ${PYTHON_PN}-ctypes \
+    ${PYTHON_PN}-fcntl \
+    ${PYTHON_PN}-io \
+    ${PYTHON_PN}-logging \
+    ${PYTHON_PN}-misc \
+    ${PYTHON_PN}-shell \
+    ${PYTHON_PN}-smtpd \
+    ${PYTHON_PN}-threading \
+"
+
+SRC_URI[md5sum] = "8e580fa1ff3971f94a6f81672b76c406"
+SRC_URI[sha256sum] = "9c998a5d7606ca835065cdabc013ae6c66eb9ea76a00a1e3bc6e0cfe2b4f71f4"
+
+inherit pypi setuptools3
-- 
2.34.1


