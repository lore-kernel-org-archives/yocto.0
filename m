Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web09.8737.1604910749266729946
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 00:32:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5g52t3V;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id q3so7776157edr.12
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 00:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f/J1I0AHucUCSXClhokwFUWwc0V+eoTrIZiVS6lCWeo=;
        b=o5g52t3VTS/YZW8/7mBMOeIc3S5USXErUwpA+9YuO2OPhNNvgyx5py4LN5AyIjJ1PN
         LolDPgNLpsBjvXnOJ/ULjUj671w0Hc3ecRCG8n0L++j/obfX37Y4eSc9Z7wcfU1P5w/L
         /92RBgKn2QY4HZlsBfnNyd1codNENsrscGx1uxNnP/MDh/MTEEBHExrl07Mfcgjlv+Hm
         +/9Y97XM4ynfbr0JD63Ef5BvabwSHsmnRxG50gTz4WeX5HQ4TfxNIPZUdygIxdJkOpZL
         uBHOZeP7Qrzd6roQ+4Xq9EuQIkfRZSQVuqwrAwiXRO4NAdOgaOjdo57j/QRL2vmyXU5E
         +zzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f/J1I0AHucUCSXClhokwFUWwc0V+eoTrIZiVS6lCWeo=;
        b=EpL+Ebv7VDd8Dzghe+C9v/2wOAv6mGroduaFYvdYF8f/qf57zl1j8V/oBMO6icRVoR
         wOXoFhIkT8/t8Y0nVZs8tDKJDlNVbLHgRT6mMhkWImFDLRqf504MQJeHgu1qxZDttoZO
         2wJDAZ1QKKyLKmWV8W9f7uokK89BtZMZwpbZjyMJTXG7zDuHD+6wx6LSe5DslZ6oPRTM
         UmwRJq5faA1j5r4ZseSU1ldAjp69vCiqxarp/Zfp0jJzFsBwWPsFEhs1NQJIj3FE5jpf
         JSQyKDfB0yugZMTr7/1PbiL3BWeOilFZgBgNoDQXnBOWT/lZ2YKPyb2gjCql+VCsMe37
         ZcKQ==
X-Gm-Message-State: AOAM533Ass2LtDhjzNWyUAjO9q47yZoSEu1B1fUhyCqvESi2zVFQ+ijd
	imsFfLfG5j12vcCg1Eo6hDZKeN7OCY4C7g==
X-Google-Smtp-Source: ABdhPJxPbguFNT3W6NFYHQm4nCKE/DqSCBAE4p1bSozzLuIqAmGmgwvdlYQSG6K/HsrkAObXMnQm2g==
X-Received: by 2002:a05:6402:b3b:: with SMTP id bo27mr13739775edb.376.1604910747645;
        Mon, 09 Nov 2020 00:32:27 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id d23sm8191927edp.36.2020.11.09.00.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 00:32:27 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 4/5] config.json: pam is required when weston starts under systemd
Date: Mon,  9 Nov 2020 09:32:05 +0100
Message-Id: <20201109083206.16832-4-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201109083206.16832-1-alex.kanavin@gmail.com>
References: <20201109083206.16832-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index def8d5a..51a540c 100644
--- a/config.json
+++ b/config.json
@@ -861,7 +861,7 @@
                 "BBTARGETS" : "core-image-weston",
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "TEST_SUITES_append = ' systemd'"
                 ]
@@ -879,7 +879,7 @@
                 "SANITYTARGETS" : "core-image-weston:do_testimage",
                 "extravars" : [
                     "TEST_SUITES_append = ' systemd'",
-                    "DISTRO_FEATURES_append = ' systemd'",
+                    "DISTRO_FEATURES_append = ' pam systemd'",
                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
                 ]
-- 
2.29.1

