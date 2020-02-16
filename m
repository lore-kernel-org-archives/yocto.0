Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web09.1424.1581884146508950982
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 12:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6ENPCzq;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9so5856008plo.11
        for <yocto@lists.yoctoproject.org>; Sun, 16 Feb 2020 12:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=qS3Kuf30PkVyNvDJlp8/f+7SIbKQz3fIr1KFCvi2UGc=;
        b=a6ENPCzq1TsFQKiFIOHIsb5nkAZXuHxmSQ2CG86sXs4XqBiIv/2lqMi9gJGouP42GW
         hkPS0t2yVl4UZIwtSfuO4kmIymw3QommO9IyVdFrWDtDgP4OkKgwSJyQ2jxVjO/xQaGL
         Wf3YPXYwoLNdEyBLQuDwDx6dwYddUgUy1M4tz+EmLV0Oi5Rkb++WsrN3RRxwdnVdn92U
         Cu4+YqQGSBDcGupVi3Z79gLvHWThF7nojQrN3UQgGURFXdjumPOYpf3dtdLDSImDtnl6
         Sa+UMdM3mD/g3BoOtaFYmlKhnCKJ31dAudt81AKherZqOGavJcvOVQGw9xWVT2RfaaSq
         bu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=qS3Kuf30PkVyNvDJlp8/f+7SIbKQz3fIr1KFCvi2UGc=;
        b=aRujmeI/CwKsolgUgYB2V0qREhFrlo5LV7Z0wpFDARxjbLqtyhCVSsxxqO9KaQ9QSX
         v5dwdfdd6wuk+6+BC3zrHB6B5Lo4bqxzY86qxrufDwjDLdapnDd8ujlvrwRCU37kKci3
         IKwonQcf0Qkrp73X4TfA/SLV1hjn7VNiTFvziuWWl3s8WyIxQHKR6yfdmAmcczOg7Tdv
         QPcBapWTLCwVW6N2dDcvA6gEWe52etVyja6JHvuEH+FC32ZqR23B4yjqQvHlrS4hKVil
         QiteWhWQLXfgzDn88v3qGy5L74OvNZe0ODmuDvYXmRR4q5KRnAASO0Uk2NSzdPtAJjQr
         NJgg==
X-Gm-Message-State: APjAAAU1Z6JAaBJJXPvBLm5wdUKYdY2vqAchdR3afP4YthewcQ9lO1tu
	rQvVSOveAzEev3SHjX9s9JL1x06F
X-Google-Smtp-Source: APXvYqy2+sb5vnYbtMPk3CeNoCt2v2406ZAhFxkwrHUeVbVA3AATnwZBmcVFYAc2RC4Rn8YlfBxWRw==
X-Received: by 2002:a17:90a:868b:: with SMTP id p11mr16194546pjn.60.1581884145462;
        Sun, 16 Feb 2020 12:15:45 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y16sm13450390pfn.177.2020.02.16.12.15.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2020 12:15:44 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] apparmor: update to tip
Date: Sun, 16 Feb 2020 20:15:43 +0000
Message-Id: <20200216201543.31936-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

fixes Python3.8 configure issues

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index fa60752..11c931d 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -25,7 +25,7 @@ SRC_URI = " \
 	file://run-ptest \
 	"
 
-SRCREV = "2f9d9ea7e01a115b29858455d3b1b5c6a0bab75c"
+SRCREV = "d779dbf88a664f06c1265b9e27b93f87de4cfe44"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
-- 
2.17.1

