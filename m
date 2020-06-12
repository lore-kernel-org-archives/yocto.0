Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.25021.1591982067874623356
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SmyiPfka;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id 64so4593527pfv.11
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=wzIiFrnjT2upHCIbNAfxcsPvVU4lwviqcThm1E+hi7Y=;
        b=SmyiPfkaiPS2/u3WMt/XTZveF1kWy3h8i+zt2R8v89qWuVoKKP993gVIla6IWd7taq
         R8KLH/dkfzb4DocnCbXf1KnD5g1ivF3cPypsnnKBy8TGwZLTe8CpsX/yQxZUfv2im8/j
         yXaUHCwTHFxKzUydWsviC9bkJnBqaskBn6Wc5aotXlnnVHKlXCxuBdq45vSPQDXRXny3
         JcXF+HVN1Xlq3LtfXk2kI/MlBpIcm/1NZX8OE77VQgpSQ5byvTYPeD4tPAHo7iWimTzk
         aAJ7cUsIhPoy6bbvvJs6K5Q4OgluU/EY9gX3SR/5Ytmdh92f7ofh6Wxgry2Fuhw8HWz0
         DuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=wzIiFrnjT2upHCIbNAfxcsPvVU4lwviqcThm1E+hi7Y=;
        b=FAE5Pqs3pQg/0JwTj30asv0GklDH4D1oGhBTTdeOfP+tNPGGbPjUwUM2L3kYpWYdBo
         tlFMHzCIB36w+WjeB9Mqt9KMZdsB1/aa+ce1PVQQNQSD592YVXvsf+LHEJZ9slqrZoSp
         oTXiUEL91Lz/iypxHX+uEGr7/iFvUse8AV53ZvpWFZrjJoqGvlRtUma65UG66yuaWWcX
         ngDiPPi7JZUzgC5aDsqUHmZPmUmqme3X+1M0avQbrI8vQbeGNfcS86DQyjNH4sjD6gf6
         El/yG8g/MwKX6S+AFVf1J6GHycnB2D6lvpYr2kvuU+Qxe25QV7t7ZCEJciuTprLi2/Hu
         7wYA==
X-Gm-Message-State: AOAM532Di5OpEKzXMFp6EplbCEdjZRBXV7SqkQzPO2QVqLagzb9jX1nD
	liReIF04hy3hT/1jqXhUZTS7wmX2
X-Google-Smtp-Source: ABdhPJx4wCMnSm+ZSSNXiwsm7BECHenO0/NeSaH4YqMXXXHDjJFZGss4pfwD3pfg28rjYFJHepcYVw==
X-Received: by 2002:a62:7841:: with SMTP id t62mr12008192pfc.273.1591982067171;
        Fri, 12 Jun 2020 10:14:27 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:26 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] libtpm: update to 0.7.2
Date: Fri, 12 Jun 2020 10:14:21 -0700
Message-Id: <20200612171422.3380-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612171422.3380-1-akuster808@gmail.com>
References: <20200612171422.3380-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_0.7.0.bb => libtpm_0.7.2.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.7.0.bb => libtpm_0.7.2.bb} (86%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
index 4588c8d..0ade01d 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.2.bb
@@ -2,8 +2,8 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "c26e8f7b08b19a69cea9e8f1f1e6639c7951fb01"
-SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-${PV}"
+SRCREV = "7325acb4777f70419fe10a1d9621c2666e977e73"
+SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.7.0"
 
 PE = "1"
 
-- 
2.17.1

