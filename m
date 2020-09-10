Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.20508.1599740776105424511
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fVhio6OT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id a17so6485740wrn.6
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lsVkzahLmLAeBiaGWMLKV4folTHeK/ftpLWygx6Ywg8=;
        b=fVhio6OTgbpf5QnMXRuky0qQkTM1qHcRb6odl61Wi1VD7wiJd0LAFOkt/tyfTfHgQ3
         UCyKDtRnl+P7T7591apMg5jCDopx/hXX6/fj9ThWqrhwMvoyhakI7oAB5ryuzSWESXkM
         1BO01U+MfPGBnrx0Y0FQTC/jsrDecYxGZPcpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lsVkzahLmLAeBiaGWMLKV4folTHeK/ftpLWygx6Ywg8=;
        b=BwGPmnyL8yKMIo5UT774sB5nR98EsFouiBbPe4u5RXmv9ouWeMam7kSF9/L+E2SlR/
         Q5XoP5eukFHu+d6+om2Yz6J+nxC2ln/4XUX+sUrE4HiterXQGCdJXF+hcsm6NtD4gh84
         zGOg9eiFRA3scA17tg+Gim5VDQE45eHPqYXhvxA8iShf6KUrD+kLVnDvkwH1EhUK5Hzx
         NLx4mpdnLrcJ1f/oDxMXMAL3y3IQZUSZVcmAeQ7Q+G+qGWPwZtwBYahLSu97u+FE/ntu
         /7GGyGPB6+FbtNOcWPBj2ijEb64l1gbIEk9RRfPI2HPXEUL4gCTAtipupodBgyYM2NmC
         ww1w==
X-Gm-Message-State: AOAM5310i8GszfsZRF+1jPYT5c7jhXAOdaiUcMM3PH4Y9G5lWWlJGmfy
	XUBvp6yjrdRXLOn1U6mOGXmRwUdsqPsamA==
X-Google-Smtp-Source: ABdhPJzVMAUa1s+HaMB8A7ubAQGFUx/fVHrA5RxuaLZnaYOz1P21Bcc4ZpERbE1hKYSzVBi3gCVp3w==
X-Received: by 2002:adf:fd01:: with SMTP id e1mr8306030wrr.44.1599740774346;
        Thu, 10 Sep 2020 05:26:14 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:13 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 22/41] config.json: Update to 3.1M3 for buildtools tarball and apply to centos7/debian8
Date: Thu, 10 Sep 2020 13:25:34 +0100
Message-Id: <20200910122553.2040430-22-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 49a26e7..ea5947e 100644
--- a/config.json
+++ b/config.json
@@ -8,7 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0%2Bsnapshot-20200122.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
@@ -872,6 +873,7 @@
         }
     },
     "buildtools" : {
-        "disabled-centos7*" : "${BUILDTOOLS_URL}"
+        "debian8*" : "${BUILDTOOLS_URL}",
+        "centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

