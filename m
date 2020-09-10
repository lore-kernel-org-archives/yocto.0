Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.22188.1599744672295639124
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W1Q7V4vt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id l9so52088wme.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=W1Q7V4vtI75+ZHv1g+mWt+0aBH6FaRu1OAaJNJzd5iOflhn+pQCruW0ssOm734Qob8
         9OONpUtpr/x4sr7detjIVlYsi86BIoX5Quz8X8MrTkanW/aSYhTybI6ofNs+9wcJ9qaS
         R1oalhB0SU4Yw+yxNKk3YiMfnacs2bYuH7j14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e6663a0Lc6N/1A37W8vWhJJVGRegv9h4C8GklLuEBVg=;
        b=nhvZiWcbOcLGuq/gR5CQs7S92b9/HQlN59d6eGoeSYEcG4Bene9nKA72F2Sp1aerH2
         aSsnjvYnUQxHN8Hok7Nn+Yjc/HkA5+/A/JUjiQRo7Uo029laMTGzjQ4ncnMDefKWDhfT
         pTtvR63I+JL24O5UdUufl2Jk8h0B49UBrLG/nvKHe9s2mC0NNaTGipR6HYzvzzPVqNrL
         t+zPEGUgvBkDHpzXfrftvWRqWhkFQ5AUYevOV6UUALh/JcjaapEPsY34JjQn0NLb/YrW
         mQX0OtRHbtSqz3YWpuMDw0PjdhWe0opKpSh7M6k9F/RWv1fuGWWX7FMzToc+oj82Mb56
         /pZQ==
X-Gm-Message-State: AOAM530bqlF/Q26FlzxnYZhmVBhROeq5+hn2x3pV+7WBU/xJoE7WzRF7
	lu0AZymmwfAwMTBHhW0uIwRPYBWTkEtbqA==
X-Google-Smtp-Source: ABdhPJy60L1wU5irtBpHSst6ZtGHjFYMf/yr0lONUg7ACIfK0z8o94BTHG9qdkxDP3AUgFWceDyMBA==
X-Received: by 2002:a1c:e919:: with SMTP id q25mr71051wmc.123.1599744670596;
        Thu, 10 Sep 2020 06:31:10 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:10 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Vineela <vineela.tummalapalli@intel.com>,
	Steve Sakoman <steve@sakoman.com>
Subject: [PATCH][autobuilder-helper][thud 32/40] scripts/utils.py: Convert md5sum to sha256sum for layer tarballs
Date: Thu, 10 Sep 2020 14:30:27 +0100
Message-Id: <20200910133035.2044355-32-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

