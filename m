Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.6844.1583253413949502181
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 08:36:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oyb4znkH;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id cx7so1572414pjb.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 08:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=x9RvxDuSRCrM9WlJamYGiorRONhTFJeLytd01afdXr8=;
        b=Oyb4znkHTg2hp8EZhVUL6wEUIzuL2izgQEVrNHgYzlPtX48556J4IFTmsLcs8hPRBB
         q/sTOaNpZCxd2HdzSBTKmzONfglNTMyry6YEC2rzq/AczdJGJSq6rH+TgOEt/pYI25NU
         wMUQCt6Nk3gMskGaPxm4GknJkWY2eIB2Q91LFYuU8sn9SeEkzC4OG2JoU6H0kTCYGd+g
         DrHg1RerR9xnNCpntS0BcMDbDiL52iMIvvWSAIrJiNF+FLvmyyfKa3DVKo2ik5An0vGq
         rRUk5VwjjrS3RFgYlYmtC3ZrRzxoJ966TYf7FiVMw8KBLHZVFriPQ/UNGraDi7b81kac
         YkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=x9RvxDuSRCrM9WlJamYGiorRONhTFJeLytd01afdXr8=;
        b=Twa4T6ezRDIL5DS1/ndnWKx0G+vBNzDUewscdWuuN4EQaCPZe1+43meCkn1uVRVyLL
         ph0TN2MthNWrBtR4yvJhFZ6bLvFQJbr+1sHZ+vvuUJsAi4qY6dLqWXHadNUct7SeVDTe
         ZJ2AroVykqLgkrvmgPR7u0xsbbtbQ2H+8v3lRSFtrlKv9osl40W2ac5EbR8mT1wRckhU
         AFNw0zxMj1eKJBln03ZZlTzGsNQY1/8knsMYm8oQgPhYJPDFdjGKuGwiEpC6ZtiXPGqW
         E1dP3V5ROLFHuVp5NKUvcCon0l/YG/wXK9e8eFt+ok0FMF2BbrKgJNsn6WpkATXGNS9R
         UKAg==
X-Gm-Message-State: ANhLgQ1NXudQogXejIFPtj7vSYCgJ8s54vX4SAAVOY4J20E61xMS5bve
	rQVS71Fw8Q3+gH3mQXcTF0UqIGu9
X-Google-Smtp-Source: ADFU+vuo3+y6NpqiATwRt08I7x9Ec7YB2sDSB9hYK9n1uiyzhDN24phS4x+y/hwabR9DjQ+AKleZOQ==
X-Received: by 2002:a17:90b:2301:: with SMTP id mt1mr5017040pjb.76.1583253412971;
        Tue, 03 Mar 2020 08:36:52 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o6sm27206735pfg.180.2020.03.03.08.36.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 08:36:52 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] libtpm: fix build issue over pod2man
Date: Tue,  3 Mar 2020 16:36:50 +0000
Message-Id: <20200303163650.11003-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

 /bin/bash: pod2man: command not found
| Makefile:585: recipe for target 'TPMLIB_CancelCommand.3' failed

inherit perlnative to fix

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
index d9863fa..4588c8d 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
@@ -8,7 +8,7 @@ SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-${PV}"
 PE = "1"
 
 S = "${WORKDIR}/git"
-inherit autotools-brokensep pkgconfig
+inherit autotools-brokensep pkgconfig perlnative
 
 PACKAGECONFIG ?= "openssl"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
-- 
2.17.1

