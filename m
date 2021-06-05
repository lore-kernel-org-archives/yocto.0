Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web12.17264.1622930586750187883
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cPSZJcUA;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id q25so10162335pfh.7
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xIzowVzCIPvv2ykf5bTHnJu2Fz3ZaTWQUfkB5a+N9q0=;
        b=cPSZJcUApkTjMoRweBU9c4AQhiKTNAHWx5E0ikMiJVev3NM/9KRHPCQvIqHE6NZpPm
         SNA5CXTNZLmdT2UH5BMSx+Zh9is75k1WzBiKrxxHfYWUYLlKKnkkNbbBXnBrqjYWbBxO
         0NcBMP08Wo3R8dcGW0J5iRTndaVZvgPQGVERfScN5clGNaQxaJnyJO9Ma4q3OE2FthG9
         MMxyRFCNrXAm9sxRupMwaZUZUI9kbekAeF5bGK7cjGAM08pYvpWQK0lEKO020/2ITbjQ
         o33OLg09Q0Zgmf7jbmIJOJ6di+PloB9fu9BeeQ7kixHtHmMIh6qQ2FV44jfABkcB98Af
         uwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xIzowVzCIPvv2ykf5bTHnJu2Fz3ZaTWQUfkB5a+N9q0=;
        b=RljxP5yoZ8rCdP+yUGla3wK71X7ueEuTBtbB2wwDv6y1Zcg+P2wVmVqssG9egb2goy
         XMxlFMrL08DdyvmFV80QcRUtAN07Y5zueu6tB4KrDEchW9ekLFVTKtqaGiQIOVgHxRqN
         EuhmPus+VsWmZspmfSnTcCVAVi9JRNQ5RSgtLwV8adjQtx/r7CCjTGoBwTPAsDCCDL7u
         +gY4D8SU5uiAnxZLXbl1h4/Vx2cdKzPnhSvoQx+OdJ6VD0dVI2h7V7kE248dlkmMrwvi
         Jc7FSwFQ+IMnJeUS+5OKiO1cEJFy2XSGI/SVL6k6GwMjo1h4VgR4PmDCjLwl8TAsU7TI
         5r6g==
X-Gm-Message-State: AOAM532BF9TEBXWRWQFjCrCt3JpCFcpda6FWe1ABeSo+B7WsfME0H7wb
	QnJsar7IKGztNk7oftp2bx2muY2DVvXRqg==
X-Google-Smtp-Source: ABdhPJw23F+KCyPew47G4J56R9tQ4yLGv7VjCgsiDBVrxQwOZk/ye+HLWH9W0V/003g7LeQJFMggjA==
X-Received: by 2002:a65:6103:: with SMTP id z3mr11327601pgu.61.1622930586184;
        Sat, 05 Jun 2021 15:03:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:05 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/7] meta-integrity/recipe-kernel: use sanity check
Date: Sat,  5 Jun 2021 22:02:58 +0000
Message-Id: <20210605220258.414233-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-kernel/linux/linux-%.bbappend | 6 +-----
 meta-integrity/recipes-kernel/linux/linux_ima.inc    | 5 +++++
 2 files changed, 6 insertions(+), 5 deletions(-)
 create mode 100644 meta-integrity/recipes-kernel/linux/linux_ima.inc

diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
index f9a48cd..be60bfe 100644
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -1,5 +1 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
-
-KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
-
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
+require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', 'linux_ima.inc', '', d)}
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
new file mode 100644
index 0000000..f9a48cd
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -0,0 +1,5 @@
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
+
+KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
+
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
-- 
2.25.1

