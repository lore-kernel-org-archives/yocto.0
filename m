Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.6473.1599511839907770606
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iN8iHlV3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id e11so13013481wme.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=21mngEhBmyHhQfojsyqR/5YiLoiHMEqHI0kd+pK0wF4=;
        b=iN8iHlV3uby3AcEIM6Q2N4G6Jvq4+HzswMGVRt/RhTwMQhPp1ggwceiFWGwQFYE6cH
         ZevYfIAOR/M1j4cJtSU1LmUyOcxUsU342wyzFz6Dmm/zoAg5xbdwEL6hUG+fZnwDE37/
         REEhcupvug9MhzNBs5/3Gt31YCQUpY2LT2UuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=21mngEhBmyHhQfojsyqR/5YiLoiHMEqHI0kd+pK0wF4=;
        b=SEqKm1eRp7O3d5PMBRXwMRbdjNsvnNxJ2bhNUdNM8GRCfE8A5m8FvW6zLHWQtcH2w0
         VK/c4qcank4UQnGIuiFc2+udPyipwToclg/Po8CLYrR7mPQkM9xupqDLyRhmpjfX987/
         XtXRUa6Na5DvJSSDrYw3LOF2tmFbwl1VWfydS2U86oPE5pOcdEP6spE6R6NOIPYDSQ7Z
         FMCcleB6JOauewZhVaE/4g8ha0zg+Owm/x6OGY1ON1IiFtkgXPywLQvAkNOphMqa0acK
         5INZ+Emr5taa0+IAp2azdFZKsCILvqL6z+K5+2joP7lqdmslkihi+d4BljlK4h53JoP/
         tZLQ==
X-Gm-Message-State: AOAM531jjwRkx3ABz7xRFw2NEuvH3G7I437wsW/H2MSLRhS3fuid2CWu
	48DCFxYeObMY8We9e5S3aeLzWfXdDNG0Yw==
X-Google-Smtp-Source: ABdhPJzQQAC+9OWyFbxHA3Z6oFmlYn9BweZAYEw+GTBj0Vl94sEkW/Jajpw0qG8ifkxvlWO34SDDmA==
X-Received: by 2002:a1c:b407:: with SMTP id d7mr1072497wmf.59.1599511838147;
        Mon, 07 Sep 2020 13:50:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:37 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 03/32] config.json: Enable buildtools for centos7 workers (as a test for now)
Date: Mon,  7 Sep 2020 21:50:05 +0100
Message-Id: <20200907205034.1941516-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index 7a88e6e..a251d53 100644
--- a/config.json
+++ b/config.json
@@ -8,6 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0%2Bsnapshot-20200122.sh",
+
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
@@ -955,5 +957,8 @@
             "no-layer-add" : true
         }
 
+    },
+    "buildtools" : {
+        "centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

