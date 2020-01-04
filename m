Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web10.13316.1578180389590437953
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 15:26:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k189imTc;
 spf=pass (domain: gmail.com, ip: 209.85.216.65, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f65.google.com with SMTP id s7so6189341pjc.0
        for <yocto@lists.yoctoproject.org>; Sat, 04 Jan 2020 15:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=natqHxtMijizuwvpFbZ5XTKy6xJH6bf/nASmROCnBl4=;
        b=k189imTcn8O3UpFeAiLgHSeJ0EYGt9AivRsIYys9mRq47x4qcumV0E63DhNnxQRiRc
         5KwkWKajX57yWEy5HqD66OGliiiSpR/KhxpWRqFlDIypEkwU8aBa+b6MzN34Kj/6xpiO
         sALjGjfykUSQF9TKzi2ggS6I+it1gTGSiBHTAOsvLFT/137ShOdi+G0vz8lToidy5eJI
         svgVv5fX/VvX+LSrG9w1g9K8qpVhzGLeWFYLWnp4RI7J/EKBUgzilhgAwY8WrMpWrGKV
         2DN9jOsSgMrBCke/PADhNJAPh3eeTaSm9puh2UY9Y8+7NnxYWZde9b6bp4UrPb7pG21I
         lfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=natqHxtMijizuwvpFbZ5XTKy6xJH6bf/nASmROCnBl4=;
        b=V6zsdDtRAHomaFKbV82hNSIV1jl8SCSqfDuU6Ubrg7RBk5GmtccldG9usZFDPQ2kSf
         imhNF6OP+/70V6C899YnappBPMgeD55vXXf5dodlkWoBRfg+MrltHCH1/RMHLVcy8XhQ
         MHfewlHirz7JY26nj+FTJnDRMvyD1ft9W8+UKmlOLzjJ6r3Es/Zl+b+ePrRcJNVigeqJ
         fq10vJ02FfjQRClw3EHfvX5WHrk/gpYN7T8+WZwWfLcriIlYPmYQ2RM5CzLAQNlgb14N
         zPvt7OAE3QjiMTB/tR/34Dba+KyvbghU4QS96Wv1Lh1ifg7ojWdVlqMh1dOQdvJA/59z
         gldQ==
X-Gm-Message-State: APjAAAWZiACT01VYbEnlLXEARAAOZzQRyRXI3WAzUvTeRy8/LGGcEhhr
	nrX8Vb1nM/YQvIwsqAwFoaa+GyWs9F4=
X-Google-Smtp-Source: APXvYqy5YHcXrao8PP+weMjRkKWxg/2vtWu6vlPHGwyacn96VGz1wbgIIlNVLreTCr87zDZBZqhdRw==
X-Received: by 2002:a17:902:a40c:: with SMTP id p12mr97327789plq.292.1578180388770;
        Sat, 04 Jan 2020 15:26:28 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e812:6764:3882:fa62])
        by smtp.gmail.com with ESMTPSA id c199sm74484148pfb.126.2020.01.04.15.26.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 15:26:28 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] fail2ban: fix runtime error
Date: Sat,  4 Jan 2020 15:26:26 -0800
Message-Id: <20200104232626.25018-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

use success/failure calls in initd/function

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/files/initd | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-security/fail2ban/files/initd b/recipes-security/fail2ban/files/initd
index 4f4b394..586b3da 100644
--- a/recipes-security/fail2ban/files/initd
+++ b/recipes-security/fail2ban/files/initd
@@ -39,9 +39,9 @@ start() {
     RETVAL=$?
     if [ $RETVAL = 0 ]; then
         touch ${lockfile}
-        echo_success
+        success
     else
-        echo_failure
+        failure
     fi
     echo
     return $RETVAL
@@ -53,9 +53,9 @@ stop() {
     RETVAL=$?
     if [ $RETVAL = 0 ]; then
         rm -f ${lockfile} ${pidfile}
-        echo_success
+        success
     else
-        echo_failure
+        failure
     fi
     echo
     return $RETVAL
-- 
2.17.1

