Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.8771.1630074433568054841
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rzf1s9VN;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id m4so4076932pll.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CR3KLEXFLFqfxtxR3/4HpkJmqU8TfyD5Ae4kai6QAsU=;
        b=Rzf1s9VNDox8so4O90cWobO2m6cW53FPABLsJsLPCKXv1bH7jfqBPW9sL7gRAiekcS
         qvkzS9+WUsq4dY2YcIf4XRpxdcgp+/npDg+OLWYTHxzb2ZHUwsU/vSAjJWo2m7tsRCuW
         ATzRM/harjPtzrsb+oll9e+fG9skEBQhM1MajGgog0lV2Qqdmvboqx/nb/9ovn9ls0xp
         BZIspCdGkx6RVidu5L4HcPX6FnsYVrdC4UFbeQFT8qGbKapomczKA2DKhnDftGZIXsv3
         TJsQZc8PnEbDtUEjxCh7taRLF/Un5T3xhXaGhNcwykAWied9GTU+uSapyMPnTRnj2GB9
         HgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CR3KLEXFLFqfxtxR3/4HpkJmqU8TfyD5Ae4kai6QAsU=;
        b=s5gxPQSXkfwCp+9kB3JCVymtrSfhddykLgxIoRJ6iw/PoRGP4aYwyI/GlkSHRXshAH
         H0wsASqeNyo2ZqgYsNQBUX0/THyJ4OhokfI//CMUN12xBna5Fz+EmuVY/UsbSN6ohAwI
         ZDVU6S6vHw68J8kuWwkinXR1LLWHDlPvdatrYSIlV9r+/eavRvYlIX4wOGCYgobAVDj3
         NY+TUGM35hU8p9oMAFBU6hFEzz2r1pQimZ6tYB9mpkMwJgY+AvMq8RsRDCtJKKB+oqp+
         uFHx2g/sOmAqOLlPcmm8e+C3mDOtBo8dFfiXe3gpzpChx3m+oM8JWE5j2BthinF3BOQn
         necw==
X-Gm-Message-State: AOAM5314rgktP2qJ/9jAizTdsDwsnrHfB7GocQmMNwq9aV85uDYUCnrw
	IB7/NxSd3yZAZrRT7pcVoP3cEKGZi5Y=
X-Google-Smtp-Source: ABdhPJzvQdgj3m2oQz68KEpXdFrquPChfFydBdS/Z3fI+0EL3iCuaopPjYE/EmEZdRRHnksHvn+inw==
X-Received: by 2002:a17:902:70c6:b029:12c:c0f3:605c with SMTP id l6-20020a17090270c6b029012cc0f3605cmr8816634plt.70.1630074432976;
        Fri, 27 Aug 2021 07:27:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:12 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] harden-image-minimal: fix useradd inherit
Date: Fri, 27 Aug 2021 07:27:07 -0700
Message-Id: <20210827142707.3710584-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827142707.3710584-1-akuster808@gmail.com>
References: <20210827142707.3710584-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/images/harden-image-minimal.bb       | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-hardening/recipes-core/images/harden-image-minimal.bb b/meta-hardening/recipes-core/images/harden-image-minimal.bb
index c35c257..38771cd 100644
--- a/meta-hardening/recipes-core/images/harden-image-minimal.bb
+++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
@@ -10,7 +10,8 @@ LICENSE = "MIT"
 
 IMAGE_ROOTFS_SIZE ?= "8192"
 
-inherit core-image extrausers
+inherit core-image
+IMAGE_CLASSES:append = " extrausers"
 
 ROOT_DEFAULT_PASSWORD ?= "1SimplePw!"
 DEFAULT_ADMIN_ACCOUNT ?= "myadmin"
@@ -19,7 +20,7 @@ DEFAULT_ADMIN_ACCOUNT_PASSWORD ?= "1SimplePw!"
 
 EXTRA_USERS_PARAMS = "${@bb.utils.contains('DISABLE_ROOT', 'True', "usermod -L root;", "usermod -P '${ROOT_DEFAULT_PASSWORD}' root;", d)}"
 
-EXTRA_USERS_PARAMS += "useradd  ${DEFAULT_ADMIN_ACCOUNT};" 
-EXTRA_USERS_PARAMS += "groupadd  ${DEFAULT_ADMIN_GROUP};" 
-EXTRA_USERS_PARAMS += "usermod -P '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};" 
-EXTRA_USERS_PARAMS += "usermod -aG ${DEFAULT_ADMIN_GROUP}  ${DEFAULT_ADMIN_ACCOUNT};" 
+EXTRA_USERS_PARAMS:append = " useradd  ${DEFAULT_ADMIN_ACCOUNT};" 
+EXTRA_USERS_PARAMS:append = " groupadd  ${DEFAULT_ADMIN_GROUP};" 
+EXTRA_USERS_PARAMS:append = " usermod -P '${DEFAULT_ADMIN_ACCOUNT_PASSWORD}' ${DEFAULT_ADMIN_ACCOUNT};" 
+EXTRA_USERS_PARAMS:append = " usermod -aG ${DEFAULT_ADMIN_GROUP}  ${DEFAULT_ADMIN_ACCOUNT};" 
-- 
2.25.1

