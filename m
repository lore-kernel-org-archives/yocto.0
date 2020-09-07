Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.6485.1599511854422306299
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bd9akhRI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id o5so16913579wrn.13
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=shMirzIo9FrdENzx7DL63y5ILhUV52HaraXtQxjv4nU=;
        b=bd9akhRIXWMnI3MxrREfx4Pd+jbNJAoiQW/XY1CNquS4QJpJBXXoM1deIrnksHxELp
         sUXowPIrqLbOjW54SbCtJHzS2eEC9Nyn2gHG14+7TUITJ3w0GBtvdrAXJnZjvayR/EcR
         YSMZmBzCf0ylFUPFakgcd+Qo5UtT+ca69SLIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=shMirzIo9FrdENzx7DL63y5ILhUV52HaraXtQxjv4nU=;
        b=a8oocqMpfOZFG2ohDqsNfYyrydESsfKbMV36JRR4S5Rd6uonj7jdWhQfy+2MjEnphN
         cJEDFNvHd2S1SIMTQ0dGhABir2k2NlOScyOxNUlcOHRy/a0GHJcaUh9bTLEGJHeXol0Z
         6nGsa4ng+swerO5c2yuvw6Xm17Sw/3RxrxtIvhXmey5u+/eFWxFGSbUOVcP7n4i6YUnj
         CyaSoG3dlodrYt1J3LSeB8LtCwbKhC6Z5ts2ajG0GGb5X9xg8/Bn7jW7uUhvs2r0wnTh
         CSQEzHlKRzqevYc0AIdQJmck8Den5sLWXV8tt43MDsiciKRS0yP5TYc2+m0HZMCA3n1Y
         X+iQ==
X-Gm-Message-State: AOAM53071wAAM6cSYY7sToTCUBPMYGz/i6PSckyyya8enGuBDADORdCr
	mWsoq5eX/Fp+kGsiHVAZ0QA6WfukEl6KVw==
X-Google-Smtp-Source: ABdhPJz7xQ/MijQnbHJjXz1AEKlZoV8hA4TDx29jCe46cJtx+fY+MiRcoEmB0OxI8ZECv7tWDpnXCw==
X-Received: by 2002:a5d:6412:: with SMTP id z18mr23103250wru.30.1599511852662;
        Mon, 07 Sep 2020 13:50:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:52 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 18/32] config.json: Use new buildtools tarball
Date: Mon,  7 Sep 2020 21:50:20 +0100
Message-Id: <20200907205034.1941516-19-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index ef5ff6d..d494679 100644
--- a/config.json
+++ b/config.json
@@ -9,7 +9,8 @@
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200427-22/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

