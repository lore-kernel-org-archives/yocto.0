Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.7903.1620872715030000926
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RM/v1Nn5;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id n3so1441820plf.7
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rtTRcruSswq3/adIwfzU6oCQP+WxEf1Ynm1rJHb8nhE=;
        b=RM/v1Nn5P37+M4Po/o8IguzeBukDMTAdTLnvzTbzZDZk0dflCW6g2N6ANVjJd+DSME
         w26VvADADVk6ZZAErXMEFcA1hZJazZcYXk17n7HCJIZCSVlIsZrsM3hPcLHwoCfVzbMS
         IqU7qTlfAAxwHlmqrGh6u/kebBeUDFaGo8SfVT7NSfs6uOjvaWy9FPHiF+xsIFuOmuHE
         a8CwLBIsW90rpuF6bycksnoif36WFH7ZZTKW5ZvfusVAmDgCsjxvS/HpaODAeIm/MDAk
         WHyTshArAZNL89+2yxGJVUhy6YDoN4d//n9BU7I1VW0r7vOUlVVjF2yQSWWRQY4uFl7g
         qADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rtTRcruSswq3/adIwfzU6oCQP+WxEf1Ynm1rJHb8nhE=;
        b=eM1xAg1LewuGjyP+OPaW1Cw7lLla8MmUGzoJpC+C+1U4fvR78ELs00hjXiF+932k9K
         2soBWifXLf4FZ0yQNJI/YxivqeQl0luApqusoOU/mT+q8mWRD2wxBCzJaIto8V8eXiQ3
         6eX+jdidASkst8zWw61R5WZMSmv/sLFMtmnMKnvP67oR9LK9c0jomVdKzWeB6KRIRuF1
         wuhf1UuvWOWkDsHQ/ejQhwSxyY4b9eUyIgrBuYWC4Poe3UPxMkBIjaU47oKP/F9ARxm+
         9Miu7Oa1Je77pO7aMudlPX2svVQn7/Qw86lmxeTHQCUw0gIzUiwN34rMPmdzVmQa8MHh
         BBqA==
X-Gm-Message-State: AOAM5335X9CFBd6CNQrIlDlMTKXXZW3L4m8dci1kstRvcB1mUf23hL5S
	JFkciaE7ghWdXGtxOtVukjC/h0PiQxc=
X-Google-Smtp-Source: ABdhPJwZ//mJTQ6HQMq16QqtqBy6W9lli2LhsnnNfnTowz7WPoEQweNFQZNO4oBUYBzuJIMWjIQYxg==
X-Received: by 2002:a17:902:6b81:b029:ea:dcc5:b841 with SMTP id p1-20020a1709026b81b02900eadcc5b841mr37691666plk.29.1620872714387;
        Wed, 12 May 2021 19:25:14 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:14 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] Apparmor: fix multi config build issue.
Date: Thu, 13 May 2021 02:25:08 +0000
Message-Id: <20210513022510.3370797-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210513022510.3370797-1-akuster808@gmail.com>
References: <20210513022510.3370797-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_3.0.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.bb b/recipes-mac/AppArmor/apparmor_3.0.bb
index 015205d..d9c3e4d 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.bb
@@ -177,8 +177,9 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
+FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
+FILES_${PN}-dbg += "/lib/security/"
 
 DEPENDS_append_libc-musl = " fts "
 RDEPENDS_${PN}_libc-musl +=  "musl-utils"
-- 
2.25.1

