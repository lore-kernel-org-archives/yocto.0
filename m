Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.5628.1616716627319539691
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 16:57:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GQheDppY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.49, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f49.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso1601416pjb.4
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 16:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hFkU2j3ZmO6044OkweAq/RL9AkzTVB+23cUHvABL76s=;
        b=GQheDppYEA5wTC8ngKCMQxiGEBpYTQwYtcNXjQ1XWLIgXLzkmSzz/9HyjIgFd5lrJ8
         NNJBHMjCB3E0Eqxf26smiprZ1Mu6itsFD/j0zXBNzCqMBkboodp1SgGZnhVXfU5IuAF8
         elcrCBYoNWzIvy7CqNPpITiCf351J7/2yP9NY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hFkU2j3ZmO6044OkweAq/RL9AkzTVB+23cUHvABL76s=;
        b=SgPwantVQ73WqR9DuiWhmvkwLGTRu+LMiLkSER2pNFvXR2og1/KRhcdE0ay5QtseA3
         bOnscrOq6rq1EfTJvNBcnJ09dj6UDobAA7G9BszsTMgrEom+Qlog+1p2b1ALnsj9Qgnf
         cSaX6dh4F3rxWi4nbHRuvqZcOZQDM3RGcQaRVZ5Nr5yK8tpE2sit7XAxV7aWl4yCbpjc
         RByEhP/RbJ4HQlYj08gi/M6x6tIy7SrnZZwEw1xJBwz8nC6wT9DITykhTuEPEnGipxhO
         CeilQvGN6kEFeADECw0AZwltT48HYzuyqr3TVpwZdqmZ7ogsT1PsmGHgFYeZzjgdsUK8
         wNVg==
X-Gm-Message-State: AOAM533teRpUc+alFx8xwylkfXioozlJa36AaTb/rqefivfqkgNyTLeh
	1cUaxbiSjMbId3n0XqrUSTyfEDMqu3qFbw==
X-Google-Smtp-Source: ABdhPJyXPt4R72a9SnW6E5Z3AjzPR52TN4eu6p08Bx0YDBYuA7pNv+JEO8aRAEkkfPVic62JjWe6nA==
X-Received: by 2002:a17:90a:f194:: with SMTP id bv20mr11278332pjb.229.1616716626580;
        Thu, 25 Mar 2021 16:57:06 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id a144sm7139111pfd.200.2021.03.25.16.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:57:06 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 3/5] Allow alternate settings, avoid out of memory condition
Date: Thu, 25 Mar 2021 16:56:35 -0700
Message-Id: <20210325235637.647556-3-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
References: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Halstead <mhalstead@linxufoundation.org>

---
 Post/purge.py | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/Post/purge.py b/Post/purge.py
index 829fada..1289d13 100644
--- a/Post/purge.py
+++ b/Post/purge.py
@@ -1,4 +1,4 @@
-from datetime import datetime
+from datetime import datetime, timedelta
 from django.utils import timezone
 import os
 import sys
@@ -8,22 +8,19 @@ def setup_django():
     # Get access to our Django model
     newpath = os.path.abspath(os.path.dirname(__file__)) + '/..'
     sys.path.append(newpath)
-    os.environ['DJANGO_SETTINGS_MODULE'] = 'project.settings'
+    if not os.getenv('DJANGO_SETTINGS_MODULE'):
+        os.environ['DJANGO_SETTINGS_MODULE'] = 'project.settings'
     django.setup()
 
 def main():
     setup_django()
     from Post.models import BuildFailure
-    items = BuildFailure.objects.all()
-    now = timezone.now()
+    delete_before = timezone.now()-timedelta(days=30)
+    query = "SELECT bf.id FROM Post_buildfailure bf LEFT JOIN Post_build b ON (bf.BUILD_id = b.id) WHERE bf.REFERER NOT IN ('OTHER','NO_REFERER') AND b.DATE < '{0}'".format(delete_before.date())
+    print query
+    items = BuildFailure.objects.raw(query)
     for item in items:
-        if item.REFERER == 'OTHER' or item.REFERER == 'NO_REFERER':
-            continue
-        difference = now - item.BUILD.DATE
-        if difference.days > 30:
-            item.delete()
+        item.delete()
 
 if __name__ == "__main__":
     main()
-
-
-- 
2.11.0

