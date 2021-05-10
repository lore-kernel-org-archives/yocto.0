Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web08.31448.1620652374189693267
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 06:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g5jDCM8W;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id f24so24429158ejc.6
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 06:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=10vQSfdqMwW7i5rdUeVGO0WXHIKqFCw469C6H4BvqI4=;
        b=g5jDCM8WoHWfXJHglsfFx2WtNojkyK5WoXPyExD7vufkIRCssXpgcV6eOP91pY0/T0
         OUNj8IuAPXqXsQODHsJSILyB6FouDNWXeHiFm8k0TRGYIbnOx+809RrfSXwRBUwYT8of
         cXGKTGwylg+ogHK849bK2b4j5V04eJPOdlOx33qbplkJd2qY+vueRJih3MW9K0Nql7/2
         XCaXEqblGWVA6L6+vlr0ALD5SCTOBh1VbI3wJD9hvsMcwc1XvjIxJuZhp5Z0zaRbjrq1
         Mk118ZEx9sNhyFXC/Djid8iPy55qkcZthkjBfIg0Q3XzEX9O7dt7vz7ShUd2lSecTNqX
         Rspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=10vQSfdqMwW7i5rdUeVGO0WXHIKqFCw469C6H4BvqI4=;
        b=qNeGHDjFIeOey6NkDwgbdQekhFNOMZ6fOPvOH3/tRXiCk9UCAx6UsTpp5WvtNt7N8v
         p9AxomO21ea7ttIWoAQ/44QPFZGOMi0Ax0kLtCafZ5mK+dgklxluDGAvam+oRfDwLbBN
         VFRfo4qQgeGMMBVo26PU8hwzRIyea1cclDcaG0hVUt02Cq3o6QxZzIQkcR68tMjKckz2
         OPIPl3NQNL3PsrfQmr8zNqzpliq3Pd0U+wJBALLvEeF1n42MSXwnzoCuDSjnVx3RJvwk
         1e99q2k8B+aDL0mWO7GCYJVZqT983hP78FJUpU4Gktf1Si/Vn3NWJy/TlbGsXzkxZfnL
         qpGA==
X-Gm-Message-State: AOAM531t7vLn/zE4RXBuNNwbhHxfa9PAzXRjYg63qWy+v0fDv84XPZ1W
	3PZtcwteteIkxkWxB3YOz1iNPQgZD/U=
X-Google-Smtp-Source: ABdhPJx9h3UlXu5Ibb7iozP1V8cg/FscknxjBvfdcXE055SYO7VZ1EBg8NphNbMcXOkecob0Z08Mbw==
X-Received: by 2002:a17:906:4a55:: with SMTP id a21mr24841775ejv.215.1620652372802;
        Mon, 10 May 2021 06:12:52 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id s4sm11473338edq.96.2021.05.10.06.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:12:52 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 3/4] config.json: pam is required when weston starts under systemd
Date: Mon, 10 May 2021 15:12:39 +0200
Message-Id: <20210510131240.940687-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510131240.940687-1-alex.kanavin@gmail.com>
References: <20210510131240.940687-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index ef1637e..72b7af2 100644
--- a/config.json
+++ b/config.json
@@ -998,7 +998,7 @@
                 "BBTARGETS" : "core-image-weston",
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "TEST_SUITES_append = ' systemd'"
                 ]
@@ -1018,7 +1018,7 @@
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
-- 
2.31.1

