Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.7905.1620872716402549381
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N/uWk5fM;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id m124so19866230pgm.13
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jUQMBvm6zAXNRkp0LJX4t/ZwqHQH+i+Fel0CVpfkE7s=;
        b=N/uWk5fM3Um+PqPkc9IX3PT95hIAdzhl9/QEk4crBSVhe/Niik8GVq9Ta7uTQfjhMX
         Fw4rXvRDiY//WAfWOnsaDx4VTvxFchfsF9sIsIVVRP/db7XXde4bjwpFLscOfn7Dbqd/
         EEp9+Mbd/ICfIjB/YYkyPvXKAfKu1Iy/lkh7icpPqEtuViVAz6ERe35Q0ip8hdItB3vp
         xIOKg43O8D0nyqvxjzFu5mo8Cb2m9hcZdx+wLCiiIcOeapYjVuI+XbvhCt328RzXucGH
         l80oJ4I5DyWIhCVOI+qK+QQ79Zhwhc2SiimzGMsnaM4jPnYQBNjzs4iLZ+NJAHcVWpWL
         NaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jUQMBvm6zAXNRkp0LJX4t/ZwqHQH+i+Fel0CVpfkE7s=;
        b=AOEazcla90/cv/s8xNncyB6BeaFo6OBG4rPJoa0ZEFPKn8f7BSY7y9I+TbqUy7p1XN
         Nm/m4i1G2xGZ+aKybSk4xu3KGhH2lVYmNwh4Yy93rkLpS/gU+9lsxZdcI/7M9Jn1l0+k
         Qq9rvc4dzIan4ZQ+xeH7JpS3UfeNHSGF6+0D0q1gpeNMe8WVcL3cv95txZUnyfq0h+9Y
         vYiopFAgcNHgoufeUmxdW/VKvjgY6O8BkKP76JLi7BSyrK3/4xmsKdhXRptMFyZFz1nR
         g9mHuuF4HPHZezcW7zdrftarXFYvyXfRn+6rZS7XcYyM1QCW8rFDvJrdKoP5GY5jMOyx
         QLgg==
X-Gm-Message-State: AOAM531RbVzVnFfB+c6WkKuMPxhdmMzSko2ZFz75m3l/qV769CO5E6Ef
	ibvfwYmmQh/NXyAadZOfSEjPofMCm8w=
X-Google-Smtp-Source: ABdhPJyTzjX3EGBW84ySSu5ahp5IbtaVhG3mGCiQl7i71Wh+I+HQanp6KDwlg9Z1sc6NR+tvB9mbGw==
X-Received: by 2002:a63:4b21:: with SMTP id y33mr39701602pga.287.1620872715775;
        Wed, 12 May 2021 19:25:15 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:15 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] packagegroup-core-security: add aide and ossec
Date: Thu, 13 May 2021 02:25:10 +0000
Message-Id: <20210513022510.3370797-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513022510.3370797-1-akuster808@gmail.com>
References: <20210513022510.3370797-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 54b8297..0bddf64 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -70,6 +70,8 @@ SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
 RDEPENDS_packagegroup-security-ids = " \
     samhain-standalone \
     ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata",d)} \
+    ossec-hids \
+    aide \
     "
 
 SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
-- 
2.25.1

