Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web12.140148.1598036888686878831
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 12:08:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dboGJKLM;
 spf=pass (domain: gmail.com, ip: 209.85.219.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f65.google.com with SMTP id t6so1110628qvw.1
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 12:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eFi5zOGWxWqvHhPdkV23PG6/XC+jkCBm99zeFTyTzFA=;
        b=dboGJKLMbE9VDHz2Xbe+hFuTdDNGobM4zqYLfEehutxT8dIdp/as+vDtCrFsaMgHEk
         wMXIMd5OSfzTXTda74YLy2G7sIAQa8np8ySGJpq2KC5SxRSHn+sMab0jUVOS22o6m32Q
         9bZwhJDPgLXiUoDt67qkMIlZ8eqlAIqszk7gceJ/xo8MvGclAkIiHhAxj0mlJyLvstqi
         Bmx+6s4IbHyWo13ZqeSQj2AeCQk2yIASTw3oyeUbzn75bRoxPisKMp3H5vvUasdN3s7h
         Y0KdObpzsO+MGLt0Z8YzV+adWrJYfz9tSkkMGERojUoNVx0TZXnVPPEKN68+wWmwIr81
         iLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eFi5zOGWxWqvHhPdkV23PG6/XC+jkCBm99zeFTyTzFA=;
        b=T7NHQwhIMJ/4wU2Y6ui2ZeZOB7eweH7EVRJHwa36GAh1tu34SXjQBeuUy4Ifs7qt4y
         CXBJiRr74+LfC2Ye+TolKcap01Og6pmiZE+6RGqeoCP9o5UMXGuuQzQCBzpsyub1w1ka
         faGjWVnq2YR0R+5042sv8iqMNYdq7+Vsm/9QDJdKqbVoav74JCKzsI3pYgt6xL6JiQKS
         mwIxUuVGEyCGnyPPfhZMkXnqVNGFDw9QEzFCUvoDvUibVDcmHbYQgGvUnCb100gHxodW
         Nuo+48AqXdQISU0sUXYTTcGyE2pBRvZilEUovmJXk5NI/WaxowcL2e6skmYufrL5VZiM
         QvMg==
X-Gm-Message-State: AOAM531O0AYF+DOZRJ2nB0166uR1UmXQgf37ni2GTpWMCOSs4cnyIt5/
	1E3zKGL3B2M3FaiKKGUjxCY=
X-Google-Smtp-Source: ABdhPJwPu5csEPhz/+TypeqMVV8p3DntreRk+lthVypH9HW3RjrRbxWgw/ltsZtv36F0yeOU0YUPhw==
X-Received: by 2002:ad4:450e:: with SMTP id k14mr3482102qvu.211.1598036887892;
        Fri, 21 Aug 2020 12:08:07 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id y46sm2927264qth.78.2020.08.21.12.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:08:07 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 3/3] yocto-bsp: update to v5.4.58
Date: Fri, 21 Aug 2020 15:08:02 -0400
Message-Id: <b13d8f1e1a58ec00e0e374c6aaeda74ddef180c4.1598036643.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1598036643.git.bruce.ashfield@gmail.com>
References: <cover.1598036643.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index e1c7372417..9c37f91bc1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_genericx86-64 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_edgerouter ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_beaglebone-yocto ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_genericx86 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_genericx86-64 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.56"
-LINUX_VERSION_genericx86-64 = "5.4.56"
-LINUX_VERSION_edgerouter = "5.4.56"
-LINUX_VERSION_beaglebone-yocto = "5.4.56"
+LINUX_VERSION_genericx86 = "5.4.58"
+LINUX_VERSION_genericx86-64 = "5.4.58"
+LINUX_VERSION_edgerouter = "5.4.58"
+LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.19.1

