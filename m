Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web08.7831.1620299490361636177
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 May 2021 04:11:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EoZIOl6M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id l14so5174902wrx.5
        for <yocto@lists.yoctoproject.org>; Thu, 06 May 2021 04:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G6LojUfcn/kP8IGciz3gHrcOX3T5zJpfPWqdWeKhMZw=;
        b=EoZIOl6MFX905L5nC5brhluc3IG/JC4NweByihH+wb2YnIEfLOIAQxlWVGwsUKd1fc
         ktqyBFOJu39lFHfDZJRErFRP/oIWe88mK3pA2E3Ny2N7n4/F8Y9QKn/COTTszwHhYEGO
         qKrjly+sK9l3ApJZjmawl2kaSwDpVMyTYPag4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G6LojUfcn/kP8IGciz3gHrcOX3T5zJpfPWqdWeKhMZw=;
        b=OD6P/ictf9Y8TqY5yOII/Rs8CwMcLcRCrv9W0mxU6xNu/XC+2MAWE+f9LR+8E0obQN
         gBvafrp1alUi5twPDFSr0yPGB7rLe/bjMIffTJwmtRxl50PufxeKMpDAg2fopRqUDn+d
         S9ECSKuvhRfNA3DOpBFDIGBSGU/LapNFyMQkHiQTht6byxDu8pNVbu2LfSZAx6qoiPFR
         A3E1W5xKLsLKqtFxcnPehjzyvgVHsD4usdvDmVdZ7O8J3moTNwRvKi+PVCV8bEAly0v/
         z4LqXnVbOVjb2IZMfFrHaGXGQS05xz5K+CF1XkEyL1IlQ+AHdi8aduwqvRQgWMHLUXO1
         Ze9g==
X-Gm-Message-State: AOAM5315jISq58GXJdqrPxsjE7AnpP1UmQjJ7sI42Ddc1djOooBrWxbg
	nzUbKVNTV7bcaMHmHVCHYLC8zHS+ykBK0w==
X-Google-Smtp-Source: ABdhPJx2yYxyaG/tOozsrdkOda/+6Y0ABUR11Tozsmv1M0nnvDdK8XB03ENkR2bgTW1KN9C4hZL/mQ==
X-Received: by 2002:adf:a316:: with SMTP id c22mr4304726wrb.202.1620299488570;
        Thu, 06 May 2021 04:11:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:d0ab:d9f1:6e0d:9f6e])
        by smtp.gmail.com with ESMTPSA id f20sm3260809wmh.41.2021.05.06.04.11.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 04:11:28 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] config.json: Remove -j option for reproducibility as live output is useful
Date: Thu,  6 May 2021 12:11:27 +0100
Message-Id: <20210506111127.1994768-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The -j option has the side effect that the output is cached. For a long running
single threaded target, the live output is more useful so switch to it.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3e12d3f..6533dab 100644
--- a/config.json
+++ b/config.json
@@ -191,7 +191,7 @@
             "SDKMACHINE" : "x86_64",
             "step1" : {
                 "shortname" : "Reproducible Selftest",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -r reproducible -j 1"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
 
             }
-- 
2.30.2

