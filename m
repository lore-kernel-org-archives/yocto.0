Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.7689.1614526660916879819
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 07:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TwqNI5Mq;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id ci14so4568903ejc.7
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 07:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P3+Py10pMRmmjZdJA8v1pbmdE8thP9qFrq7T4RcU7a4=;
        b=TwqNI5MqDimqiublX5HJheT52ecexh4wurbY2n8284WaEufVUZnvXNP+Ydo2ZGs8D9
         s3qIqA6QMo6cYIR0dGn/qNuv/8WZqyQCfW1Tz6LuAPg9HwbEN128SiLaqRYnEkfyB1OX
         vgFzqf5VM+A99tzhY4C0Pc6suh1MGSRulHDBvGiTLRWIJ/aTOHLK2fREYC52r47PSN5u
         mZZr7EtUVYIt2InfHGH9IPAlLfEAlFaojUZRv3zuTrfk91wb7iA94nKnvyqJs7SKwVAV
         sOd7dtw9rfnBCNdf/yrbrsF+mue4KYLuxWH7tK7tiWs4DLrRIH6HJm4B/ZhZ1GnjKchh
         Y68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P3+Py10pMRmmjZdJA8v1pbmdE8thP9qFrq7T4RcU7a4=;
        b=Brqpp9t+3tEtaTXyNeie4sbmYLroUijqT6jlyyoEMUKxfL8RcUm34dsROCQLriY8XH
         i3mmOxr4QKR7LsW8h5FUnA+WFpH9KfonJeUyPm3FRRIJGuz3AsdEiUYtAdRyAqHZmb7o
         vthT/K63CzJzSOHkWHHYNg2rYQHu3cgd+Dfcg/0mjFhF5/OgynDQj2XKmzy+lyoepKtY
         b2iw30oxkR+FUfbeietgy2M1gAywBMT60pxvl4PCNskI/0aup4a861A6vMGeCWuF1sV/
         t1orHeCb30OGTJ5ztp2Agik/8jwINm9qMI21+BdkSrQhWeR641zs7+DIKH/x3iyOiE68
         BQiA==
X-Gm-Message-State: AOAM530q31bFUOyt2e9eQ6BJTsOqbpoy9eK2PjNyv0azI+TrlyYOpLEN
	XF7MuIa/IszER6yPo7CMpxHE5gcoUMHYgg==
X-Google-Smtp-Source: ABdhPJxnxlb40BYKso7uGU+a9nQh5ZsMnqhCRYhd5EHJEUzLk2WzGAttnK0lUYoYCVQ669jXUbfM2Q==
X-Received: by 2002:a17:906:1d0f:: with SMTP id n15mr12072848ejh.553.1614526659284;
        Sun, 28 Feb 2021 07:37:39 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2450:1011:512:45a5:1b3d:84d2:e7fc])
        by smtp.gmail.com with ESMTPSA id e3sm6990644edv.53.2021.02.28.07.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 07:37:38 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-mingw] [PATCH] libgcrypt: drop 1.8.x append and patch
Date: Sun, 28 Feb 2021 16:37:29 +0100
Message-Id: <20210228153729.498367-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

1.9.x no longer requires this, as the code has been
refactored into an external script that has defaults
and a guard for .git directory.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 ...-mym4_revision-to-0-if-not-a-git-rep.patch | 46 -------------------
 .../libgcrypt/libgcrypt_1.8.%.bbappend        |  6 ---
 2 files changed, 52 deletions(-)
 delete mode 100644 recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
 delete mode 100644 recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend

diff --git a/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch b/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
deleted file mode 100644
index b7b407a..0000000
--- a/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From bb6f9e18b5ccef26978f3f3ed2fe7bf3d4d498e7 Mon Sep 17 00:00:00 2001
-From: Nathan Rossi <nathan@nathanrossi.com>
-Date: Fri, 30 Dec 2016 18:02:26 +1000
-Subject: [PATCH] configure.ac: Set 'mym4_revision' to 0 if not a git repo
-
----
-It is possible for the source to not be located in a git repository
-(e.g. source is from a tarball). In which case the git repository
-information is not available. This results in the mym4_revision being an
-empty string however this value is used in BUILD_FILEVERSION where it is
-assumed to be 4 decimal values. Additionally BUILD_REVISION uses this
-value and is also assumed to be non-empty.
-
-In the case of BUILD_FILEVERSION it is used in versioninfo.rc.in, where
-it must be populated as 4 decimal values due to the expected syntax. In
-cases where it is not (e.g. when BUILD_FILEVERSION = '1,7,5,' a syntax
-error is raised.
-
-    windres: versioninfo.rc.in:21: syntax error
-
-This patch changes mym4_revision so that if the 'git rev-parse' returns
-non-zero (e.g. not in a git repository) the value falls back to '0'.
-This propagates as '0' to both BUILD_FILEVERSION and BUILD_REVISION.
-
-Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
-Upstream-Status: Submitted
----
- configure.ac | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/configure.ac b/configure.ac
-index 31c0d553fa..a3deffa6e9 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -39,7 +39,7 @@ m4_define(mym4_version_micro, [0])
- m4_define(mym4_version,
-           [mym4_version_major.mym4_version_minor.mym4_version_micro])
- m4_define([mym4_revision],
--          m4_esyscmd([git rev-parse --short HEAD | tr -d '\n\r']))
-+          m4_esyscmd([(git rev-parse --short HEAD || printf '0') | tr -d '\n\r']))
- m4_define([mym4_revision_dec],
-           m4_esyscmd_s([echo $((0x$(echo ]mym4_revision[|head -c 4)))]))
- m4_define([mym4_betastring],
--- 
-2.11.0
-
diff --git a/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend b/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend
deleted file mode 100644
index 3da0f53..0000000
--- a/recipes-support/libgcrypt/libgcrypt_1.8.%.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-
-FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/files:"
-SRC_URI_append_mingw32 = " \
-		file://configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch \
-		"
-
-- 
2.29.2

