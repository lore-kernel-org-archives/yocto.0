Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.22193.1599744676354245163
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OLxTlzDj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id x14so6686659wrl.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YRCrC4prCA+sQRF7g2SaXvX2cu8TTDrIn6qaA1+jGyo=;
        b=OLxTlzDjlnApQzE9Vxc/tUONi+57zEkZL162/bR8YlrJyqtpGpvv85vwl+ad7poJIc
         NJO7oX8xbZut3b0cJJEEojE9V645DL0o1zuvoLQXk833qgFPKcqx7fHXxXljXbbgulmp
         hQ9mmIsVVLoXlCRNx/tHM53ti6dxdixTDNi2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YRCrC4prCA+sQRF7g2SaXvX2cu8TTDrIn6qaA1+jGyo=;
        b=TOF1UPVIfbq5cuBGCmqUWg7Kj4t8vfjrzOsfoCQ/71HLDcyyD9Tue9RovVRWj3hlfZ
         SrC5kpwr3ioZLaC+mZsE1/85jmJNnmHNgt/wcqBPLZ5FShxBdWShx8ffSwW2ecy5726g
         TZNiIyaqmX/sufGCAZQCCBdMNgQ3zTNnOughM2imYgZmfKnNdSyjIQ19ZEjf3JqDhMBN
         YyVvzEkFRjpanVLDPXJSotK7fMZCW/7HPVK6pU/zszlJwc632V4zkTadNpJNJ5InvKpz
         TyHNupmJJjuDYqX6gcJK9Fu8Jb5mIvGiBhZfbZkWKdInvYrfDglKpUZjSiZDB5AryWqZ
         TQTg==
X-Gm-Message-State: AOAM530889coe5/JC6sKvktnbngOkaGapT4KGg2UulBlA3j9bY4NTuio
	s+BB2Py4LAflN+/rarcO/jYuPTowKgqAHA==
X-Google-Smtp-Source: ABdhPJyaDUleb6c9TDlGZpi3jYCpOoAjOtwU234avW/jwGsTdj/UPANBOBbAtrxfPXJ/mz1Zyz5bEw==
X-Received: by 2002:a5d:5281:: with SMTP id c1mr9080964wrv.184.1599744674632;
        Thu, 10 Sep 2020 06:31:14 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:14 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 36/40] config.json: Use thud created buildtools-extended-tarball
Date: Thu, 10 Sep 2020 14:30:31 +0100
Message-Id: <20200910133035.2044355-36-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/config.json b/config.json
index a8aa288..c083b86 100644
--- a/config.json
+++ b/config.json
@@ -8,6 +8,9 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200909-7/buildtools/x86_64-buildtools-nativesdk-standalone-2.6.4.sh;233bc5da08cf4d7044cdb500c896e9ccdae9debc550784d5a5a756849c4bc8c1",
+    "BUILDTOOLS_URL_EXT" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200909-7/buildtools/x86_64-buildtools-extended-nativesdk-standalone-2.6.4.sh;23ebf9b3ee97fc0351ea1952077664bec06fa27e716c3c4d8d9ef7f12662063d",
+
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
@@ -816,5 +819,16 @@
             "branch" : "master",
             "revision" : "HEAD"
         }
+    },
+    "buildtools" : {
+        "debian8*" : "${BUILDTOOLS_URL}",
+        "centos7*" : "${BUILDTOOLS_URL}",
+        "centos8*" : "${BUILDTOOLS_URL_EXT}",
+        "debian10*" : "${BUILDTOOLS_URL_EXT}",
+        "tumbleweed*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora31*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora32*" : "${BUILDTOOLS_URL_EXT}",
+        "perf-centos7*" : "${BUILDTOOLS_URL}",
+        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

