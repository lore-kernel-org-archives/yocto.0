Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.1527.1577041827342738666
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Dec 2019 11:10:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jUQOG39A;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id d5so6497637pjz.5
        for <yocto@lists.yoctoproject.org>; Sun, 22 Dec 2019 11:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=C2Is5LYI+MH4Qwd0OJWAIFSK+957UvMrzebQ01nzdCA=;
        b=jUQOG39AN4vVsZ+G2muEKHRbEABEHwNVjak3zGi54H4PmC8jRP9+QLSbhcMz0vqLQ3
         9tGPv1jqz0oSHfPZCVRbBvZht7CVNzWSXRcpAsnl5UUnKbU1XnYuLaiP8iXEMyubqESg
         CxThhc4QPXbi/jAG6VuFluL1ueMJkG6FFn//GZcIcdkmAxPpM7NuXG0kJVtz3Dt7POkG
         dbo/8HHa9dJ55kuy0DkUMABnIuosRxGD6ytZeV7eku6xqK6c69W31TRVTywK1rEpN42G
         4Z6eLzO1eXiysxVXtU6dBAthxTSWAoX6aTzyUfGuftS9oE2rtbYzuEdNwvDVhJW6/2Ud
         MffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=C2Is5LYI+MH4Qwd0OJWAIFSK+957UvMrzebQ01nzdCA=;
        b=KRI083Y87O0+Mr//kb3IFOKxikRCNz4fXkZ2BcOkFzDd5ipgnWR5BMxdCk1Lz7I0mt
         A6F7W5fMwKYrrwd7AqXsFadO7fVv+9PmGMlx2zH91bpDGc78YxA7Ni82av/aNXMVn6y9
         Evqz1a4zgNY9M591GfIqt2vqJd+P7jNQCStwBO7mKeu9Wj5NJW6mdvKjBTHY5Ev0IcQ3
         oaYFRe6ahTxjG7s0/T3bDRwSThxy2oVT086pmLcrFxg2L2oawNOXUwGWesfnG1EQoFn7
         soC+4ojZ+81NcYPa7dr79KWMfdNiZTI/wwzU8KPWQ1ZglpS0v1S7KtpYrn+0gllS4L/r
         0e6w==
X-Gm-Message-State: APjAAAUd7426Q4YkiquyZy8ErWc9kL4HbPgSTp50DyEjQX+TPmoOEtfi
	ECmUY2q1es7bqLX6094jPVNQTK/jmpY=
X-Google-Smtp-Source: APXvYqxFlbkYtGKOXCH2uvTvGZfHf2fBDAFkgKWb/NEwvhTv5YscvpB7cAACLMRIoy1ydAB+7DhKuA==
X-Received: by 2002:a17:90a:b102:: with SMTP id z2mr30061226pjq.120.1577041826750;
        Sun, 22 Dec 2019 11:10:26 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y6sm19338974pgc.10.2019.12.22.11.10.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2019 11:10:26 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] smack-test: add feature check for smack
Date: Sun, 22 Dec 2019 19:10:23 +0000
Message-Id: <20191222191023.3913-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222191023.3913-1-akuster808@gmail.com>
References: <20191222191023.3913-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/smack/smack-test_1.0.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index 7cf8f2e..d5de607 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -12,6 +12,10 @@ SRC_URI = " \
 
 S = "${WORKDIR}"
 
+inherit features_check
+
+REQUIRED_DISTRO_FEATURES = "smack"
+
 do_install() {
     install -d ${D}${sbindir}
     install -m 0755 notroot.py ${D}${sbindir}
-- 
2.17.1

