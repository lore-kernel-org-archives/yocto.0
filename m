Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web11.19658.1583613532058099916
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 12:38:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XK9E7L4h;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id n7so2909156pfn.0
        for <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2020 12:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=0wJjUPpPQb2/Jf2A91G+XRtHcyifX4IFPwb7JStWyus=;
        b=XK9E7L4hdYmXdhcn3H4KjrPEdJtrHie7sf3sz4yBnjgmXW8JEnbt6gkrWMBhiu6Xg3
         Aa0kC5J1f1VUci1JUWbi5Jw762iihc2RTI4lxQKztbEeYDNRScnipCrsKwOT8iUMXXSd
         SNk8CLytQXQjAnjQ5ePgGdJ0NQ51Hf8pVpjT2g32MTmAX0BJ/gjE3N30Lcs5wcNsDmFb
         ttUWK89Gnex4EIp90IBirU3xVwE9WVBopq62o8vuuvyYLGDwigRUQZpXnuQFYd6iGsqh
         cEdLQA66z58+/fr1EBDlgWPW6w5lFfmB/mB80K8BeyKnlJTKHtQl9Kk0syAq45hZoNPe
         m3wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=0wJjUPpPQb2/Jf2A91G+XRtHcyifX4IFPwb7JStWyus=;
        b=XwhC55vaXNYTmU8YT2jKBoi1Yz9jpzi44LiRUztd7ZfB8zKJ5D2gD+wKH1FCgDtWys
         nyshl5yRwJ3MR3+EPTJV+eYJDSYROJljvH1pQQaSxl11nH/72Ymwfrkxjyu+vD63FrCG
         HBjI2tZ8S0dS1z0rAlQIHeFNUu0ZX8dERfG7e6A6VqMhmC60z/ZkQo3MddP5wCav3Sd9
         NZAl5PHDWG+e71v2SzEG80KTdP3VDYFFO/uu+WMxGD3YFmAssYbjPXhtJ6zmBOQW4F6k
         4naR9n57yk4Or5F7wd39yjUxAR7lt8ORVZSZuFJ+6a3sZlmC+Oef+E02kMpKI4VGXzRw
         6Cng==
X-Gm-Message-State: ANhLgQ2zywbofPAtUq/2YG6z0ojMmAsOqDSowNw1XTvl9mzO7mL6+AOq
	YRui3rk5FBTmNPvYvVWek+UTRTQO
X-Google-Smtp-Source: ADFU+vuDTYjHacalqoTfkGs8W1YXsVqkklXIu+/Joy8px9Fppy0xZd2ZzhhmZWz8fq3SprJZ75WSGw==
X-Received: by 2002:aa7:9815:: with SMTP id e21mr10276093pfl.174.1583613531121;
        Sat, 07 Mar 2020 12:38:51 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 22sm24667570pfc.14.2020.03.07.12.38.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 12:38:50 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] libseccomp: update to 2.4.3
Date: Sat,  7 Mar 2020 20:38:49 +0000
Message-Id: <20200307203849.3117-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

dropped patch now included in update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb}    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename recipes-security/libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb} (90%)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.2.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
similarity index 90%
rename from recipes-security/libseccomp/libseccomp_2.4.2.bb
rename to recipes-security/libseccomp/libseccomp_2.4.3.bb
index 07db82a..9ca41e6 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.2.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
@@ -4,10 +4,9 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
+SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
-           file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch \
            file://run-ptest \
 "
 
-- 
2.17.1

