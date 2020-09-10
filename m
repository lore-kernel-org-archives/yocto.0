Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.20501.1599740766849539200
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NZJ0rj+a;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id y15so5616123wmi.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Lb4L7y2j7nPxjGv++S0sP9Erj2SItrOARRumKz2VtD0=;
        b=NZJ0rj+axAtelq7bW32Mr4FROhVg3p5mt3rdbpSVf+WYDDMHfGmQ1vGGlnOBPtUG1F
         9LVMdToitfFu8MkshkbTkzvGL+OrCorLG/btj00tSrDFqg4SdNc5H1O6kD1cLBSyjcd2
         ZUmt58l3wPQvWbtCmpnSP70X2Nb1sZEv+JWdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lb4L7y2j7nPxjGv++S0sP9Erj2SItrOARRumKz2VtD0=;
        b=lExT0O3G9zSFIKH2DUDwcWRtGHr6rgHGcZ7oJ4j2ZCaGKA+5ToGB3BeQsZyrVQk6tp
         Kf7V4vhLIKk4Nr3wiZqVeIXLk117bJzQZ1o/YJ+L2pUOP3kwmLEzOE+4cet1Ayfhqd5g
         M+1jrgMR8jv9KLXy/YzuaSJ5CTWYkogohYdL6SjjEnwGCbJx2GUNTx2uadWE1nbs37A+
         IDO+3dQ0g3wSn8iNgxu7PEU5pupmN/U72DbD024F+BNrXR7f9nDsV6Zo+z2A0nfCiYp3
         Y0Zt/w0LOtIHzsaKPx6Cu6yXCXqQIvTM5/EZsqpjK4MG5upQjjbxVmNdwMbN165nlq2c
         WBsA==
X-Gm-Message-State: AOAM53187b2HHs/FE6CwEwRR6zD9IUWFQdSGfMefnERCBgFmQNup8/v6
	OgERSvgDs4BL7YMl+VEWvzhFwd3DMcX3sg==
X-Google-Smtp-Source: ABdhPJwlpvdDG+R8T+IQrdwNRYxIY2PbXiIhXOgmb0NaUJeWwVEcnaMT+9EwzoWbiTPmtdkK/2WrPw==
X-Received: by 2002:a1c:9c0b:: with SMTP id f11mr8075549wme.0.1599740765107;
        Thu, 10 Sep 2020 05:26:05 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:04 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 13/41] config.json: Enable buildtools for centos7 workers (as a test for now)
Date: Thu, 10 Sep 2020 13:25:25 +0100
Message-Id: <20200910122553.2040430-13-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index e7c7b55..3e69544 100644
--- a/config.json
+++ b/config.json
@@ -8,6 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0%2Bsnapshot-20200122.sh",
+
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
@@ -868,5 +870,8 @@
             "branch" : "master",
             "revision" : "HEAD"
         }
+    },
+    "buildtools" : {
+        "centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

