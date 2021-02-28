Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web10.4738.1614552972304985739
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HZ+GM56I;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id g20so8750713plo.2
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3FEVVoiRQRtM4JNcCFBfCp/N/QT+eVB8uJ9lpNHKCSw=;
        b=HZ+GM56IGlLi6dMCwEQjahdTo8ICEAAgUuAM3uDcjTo47JGohRasZqD993aE/zWkxU
         1ppwe86xAVM58A9g66/eaSrvwTdCDMojU3eT+yl8CH3Yw2jeHctInXb4FmnNZYIZTk13
         5PdIQfQ2UY7TXfj1mq336TU5Rmf3YjDPykQIz+WyDOLCy7s4F3J3pAwVK54Swor0kKug
         rn632vuU/bvqYkoXwRezx+WjUoza5Ouaku8xDdPk8KLdEztzitUaWCAK10SMe6E8wPXa
         opJ/T2dvU8jN4dWu3y/zZYdI2mwWkcw6ko61IEgzXlQwWzZ1EYeoKgTjdRSYSQ1YKcSZ
         JUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3FEVVoiRQRtM4JNcCFBfCp/N/QT+eVB8uJ9lpNHKCSw=;
        b=X62UknL6A6awlBqVn+Yqx8/XFTCUzK9cem/Yti5AfyYubADKOc7qLfudUe4OcRAt8z
         sLVlxuMjXxRMzYp2sSH+JoxGU39rHqZzMlkwBIz0Dw/TWnc8fne5Yea+V7FUWxs7/NTO
         PDUT28xM9zjf7MVv7RDqoRIWj/P3+rYmdUtq1QAyv0Va+LQrrUI3LYI4H5vi+FN7o5TW
         vsJGWTxonCRgaZnbfDMZEXIaFNB3Lb3c9psM1siSdTnEeFyO85OBNIbdLRi3hKwjaSYA
         sB9aALUFHUZY1+tWdjUlnGHs3v1W6rg7tZkeZqzvf8PUPzWiotF64N4nB2chQRmc/Nf3
         wOoQ==
X-Gm-Message-State: AOAM533ZvsoPiqv1l1A2OJVnCRss1hairee03DPk01pi6J8e7mVcQtLH
	SCo0ji8H0IEMaR+9QfmQmeY9f6fU/kM=
X-Google-Smtp-Source: ABdhPJwKxcsLeWZxycepuDnHDGsiIQT6JXnoGspxPBB+qDDYDlrQU2iDtq6q8tHf7pA1BP1I62vtAQ==
X-Received: by 2002:a17:902:f1c2:b029:e4:6c23:489f with SMTP id e2-20020a170902f1c2b02900e46c23489fmr12833462plc.62.1614552971744;
        Sun, 28 Feb 2021 14:56:11 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:11 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 07/12] python3-scapy: upgrade 2.4.3 -> 2.4.4
Date: Sun, 28 Feb 2021 22:56:00 +0000
Message-Id: <20210228225605.3442507-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 .../scapy/{python3-scapy_2.4.3.bb => python3-scapy_2.4.4.bb}    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/scapy/{python3-scapy_2.4.3.bb => python3-scapy_2.4.4.bb} (96%)

diff --git a/recipes-security/scapy/python3-scapy_2.4.3.bb b/recipes-security/scapy/python3-scapy_2.4.4.bb
similarity index 96%
rename from recipes-security/scapy/python3-scapy_2.4.3.bb
rename to recipes-security/scapy/python3-scapy_2.4.4.bb
index 925f188..8d81ed1 100644
--- a/recipes-security/scapy/python3-scapy_2.4.3.bb
+++ b/recipes-security/scapy/python3-scapy_2.4.4.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 S = "${WORKDIR}/git"
 
-SRCREV = "3047580162a9407ef05fe981983cacfa698f1159"
+SRCREV = "95ba5b8504152a1f820bbe679ccf03668cb5118f"
 SRC_URI = "git://github.com/secdev/scapy.git \
            file://run-ptest"
 
-- 
2.25.1

