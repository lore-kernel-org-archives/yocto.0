Return-Path: <davidegarde2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31D4C43334
	for <webhook@archiver.kernel.org>; Mon, 18 Jul 2022 11:28:31 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web09.25959.1658143710179704131
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 04:28:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=biftT/cR;
 spf=pass (domain: gmail.com, ip: 209.85.208.46,
 mailfrom: davidegarde2000@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id y4so14813609edc.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 04:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oIzYKOflj8BL1lhKkeZpezse7m5cBq+8NqjmVsDaNf4=;
        b=biftT/cRH490O5MSHEulEJSF956+tSG1d6p17vbWldUIHvEttGbkA1YDCr1bqPnbpk
         5H7rmNTcTps1P5LebWZNx9sO+3UQl6ChzmyIk3I3zRR1C1jS76+8oOFAjUKHVm6govrg
         BdJ2kdIyEJSRuoR2TQu7o3FaZ0uHLX8saFR+hIyoB+9hBLdDQkMuT4aBNGti8oyB4v4G
         ngzTogoAxp0iXem9WwumGgI6qtHmuvG/s8rkwXGAwkpmKZey8rj+hQXYxoW/+rus8+Am
         7K/vy9Y6EwnC+8hlm2g2RoQn5pN87KlLq0tWhTXJ4KXJF6SgLx7hkfMUHGat2VVYihnQ
         za8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oIzYKOflj8BL1lhKkeZpezse7m5cBq+8NqjmVsDaNf4=;
        b=ISbS0fxEj2Be14axzKDIqxWjK8A7II3MOk4LNA1pDJ0pt5ccbUexGjfug1DKKDQA5c
         yaW7CWDuEGDkL/A2FFRPyX1oiIgeYVNmjeC28YSNH/LwLkTL5G5gSGtsjQK/GZOCOM8g
         OeF5ANka1j950HuHMSsMG4kuW0ZmV02xdXcJFXZPTaSWw/Bkil1nyf0CGfId8NwoaXox
         jbKoJny+mVlAKB0LSp53dLrGzANBZ1lz4b9r1JHjdx68JS+LD5pE0ZEMcux/1i9ejrYR
         fhGB7UL9eKc7piMhvm415v+X8R8h7kt/EIuQSem7Q7ZsZw5pJqmeqEQpRkmBz0+XcVGk
         O05w==
X-Gm-Message-State: AJIora9vYVDz1qjWuXtkNtR2VbUZ0fF1tOB4Xi7EiVsQmP7Qnj4IeClT
	WsEaDdG0xBW6HtR6riYQivyjZ8JXg28=
X-Google-Smtp-Source: 
 AGRyM1taObNgHBBmFPkYNlQTZ4XtchZeyvzYHhZF523JlU4FLrccApMlNj2l4jJGrX69P04c1tnrSw==
X-Received: by 2002:a05:6402:1909:b0:43a:64bb:9f27 with SMTP id
 e9-20020a056402190900b0043a64bb9f27mr36840604edz.24.1658143708171;
        Mon, 18 Jul 2022 04:28:28 -0700 (PDT)
Received: from tony3oo3-XPS-13-9370.home
 (host-87-5-19-208.retail.telecomitalia.it. [87.5.19.208])
        by smtp.gmail.com with ESMTPSA id
 ew11-20020a056402538b00b0043b4d43ebaasm5546681edb.58.2022.07.18.04.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 04:28:27 -0700 (PDT)
From: Davide Gardenal <davidegarde2000@gmail.com>
X-Google-Original-From: Davide Gardenal <davide.gardenal@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: Davide Gardenal <davide.gardenal@huawei.com>
Subject: [meta-security][kirkstone][PATCH] sssd: ignore CVE-2018-16838
Date: Mon, 18 Jul 2022 13:28:23 +0200
Message-Id: <20220718112823.306477-1-davide.gardenal@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Jul 2022 11:28:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57558

CVE-2018-16838 is patched in our version of sssd but it doesn't have
a vulnerable version range in the NVD database,
that's why it needs to be ignored.

Signed-off-by: Davide Gardenal <davide.gardenal@huawei.com>
---
 recipes-security/sssd/sssd_2.5.2.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 9f1d627..4c75e0a 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -28,6 +28,10 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
 
 SRC_URI[sha256sum] = "5e21b3c7b4a2f1063d0fbdd3216d29886b6eaba153b44fb5961698367f399a0f"
 
+CVE_CHECK_IGNORE += "\
+    CVE-2018-16838 \
+"
+
 inherit autotools pkgconfig gettext python3-dir features_check systemd
 
 REQUIRED_DISTRO_FEATURES = "pam"
-- 
2.34.1


