Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web12.6490.1599511861595883985
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XNswu/mG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id q9so15392201wmj.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=XNswu/mGvNeEuW+wZQb+FbIHMp2DpPHTgrmfmq3bQkmDILDx2BQfJ4m4RrJpE6+z6l
         1gPeIb3DkuOQnwQO20p9A4cZ9LNvCMFfIoYxGwt3JBBZDhN00j73rVUWS6c1aml+z1f1
         wDXtUiOdppVUAfVxHa9dmpS+H6fchrTmqucz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=lZK/QbzTFhjs4wyn+nyUTxNuaup5vnkWE5XRL2OuWnETiYWRHnG8MjdmV8QAXPEnVQ
         sgeMZ5ZwjXnoN+rG+LOULpdt9kbaMEwjwJiwzCO8/Ghh++8GvTIYSaw9AvYEEs83VwJZ
         Z6G60qMeptxIJBqyo4DDXDeodBFbM3ovcneGAMDaaMGc4RdWeSIfGyUSU3exSAjNQx0l
         3tqWww4W+6HqUtfwEpHIiVoAdMu2EQM3ogJ09mrvayHvrxTPpV5rJfCCtowRHkmw6rmo
         OcOpJy8nE3qAp+cWz6Al8sFSZ/GTHi+JRuLekDON7F45tsmp/jag6kNJDFN3/CO9fXX+
         ohbg==
X-Gm-Message-State: AOAM5309tObjfP8a/nio8aLf30JxWLPJkLv9pX8NwXFOIe/Ntv2Vrwfr
	MIIdnodXTIoDTW4ZywGkAXOPlpMToCHzCQ==
X-Google-Smtp-Source: ABdhPJz+Z2QD6kI44EmIrUUxlJB8eYzR9YmK+YjLhd5aDS4qbUlc/hrXZbNGdm0wI079w0HNVGPx3w==
X-Received: by 2002:a1c:156:: with SMTP id 83mr1038442wmb.49.1599511859678;
        Mon, 07 Sep 2020 13:50:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:59 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Vineela <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][zeus 24/32] scripts/utils.py: Convert md5sum to sha256sum for layer tarballs
Date: Mon,  7 Sep 2020 21:50:26 +0100
Message-Id: <20200907205034.1941516-25-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vineela <vineela.tummalapalli@intel.com>

Signed-off-by: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 3aefa5a763125c760813a8f8434c574ecd3ca99b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index d7b9ae7..ec43832 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -251,7 +251,7 @@ def publishrepo(clonedir, repo, publishdir):
     revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=sharedrepo).decode('utf-8').strip()
     archive_name = repo + "-" + revision + ".tar.bz2"
     subprocess.check_call("git archive --format=tar HEAD --prefix=" + repo + "/ | bzip2 -c > " + archive_name, shell=True, cwd=sharedrepo)
-    subprocess.check_call("md5sum " + archive_name + " >> " + archive_name + ".md5sum", shell=True, cwd=sharedrepo)
+    subprocess.check_call("sha256sum " + archive_name + " >> " + archive_name + ".sha256sum", shell=True, cwd=sharedrepo)
     mkdir(publishdir)
     subprocess.check_call("rsync -av " + archive_name + "* " + publishdir, shell=True, cwd=sharedrepo)
 
-- 
2.25.1

