Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web09.1877.1616785230931894526
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 12:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LG0c6Cjj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.214.170, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pl1-f170.google.com with SMTP id e14so1366036plj.2
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 12:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u1YBTyM5aagY6QkGhXorNXLKgGm6n0PBb/hzTUzVCTI=;
        b=LG0c6CjjfHXs6njebc7o30vzi3kTfTFXiDc/I4eOUNSYnZcadiHYsQaDwn07fXzInc
         9VZZv2ERsHWFOrIUxVo0wQcqkBYdgvk7Bl84w7SKWMZjh84J6EwmxZFoOoNxG3x/Pn0o
         SHfkKD5Cn2aVkgX4XZfd8NOhDj5dd07Gs+6N0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u1YBTyM5aagY6QkGhXorNXLKgGm6n0PBb/hzTUzVCTI=;
        b=IQGdNilQha6bIOPC3ikIlVDIJiXkBZFYnckXlLzHp4Qutsy5mN8a7B+vx/gDO5jACY
         Bmd7Npex74+SXzyuA3BmAOSOQRJh2e87EUUXuCHTyP+G2Gga1wH4v5iuPMrBnM7re6el
         /WyEpFC6g44Yi0tHO4vah13oJDvbLUpHID9RguWP70o8YJ8xzWYlqJ/uBNGMnG+934O/
         o7+SnuwqDRwJAJYBDou0famZlolvaLvi6/RZHVb6DxQLQYZR1QpT4JmbQRe0msiUtvu3
         JcNAvUJrZch0yKP3PCoONmGZaLhkgDw5gGBuHg5A/hj90GVu0E14LQW5zR+yjMqxseQJ
         t2GQ==
X-Gm-Message-State: AOAM532LXrUrf+amfDvKUKx+LCT0TZchrkkW7Zo10ZdOnbR3H3OPHmDR
	xUGH0RiCoPqzG+7PmEJtWzMiVnZLyAwA8w==
X-Google-Smtp-Source: ABdhPJzt5fmv1zfB/aTCOQ44joLE6lDTYNdcSy6H2sjY7IGMykEcTcp/pg7rxn0Xeul+JfZKGKf2KA==
X-Received: by 2002:a17:90a:db01:: with SMTP id g1mr15214626pjv.127.1616785230079;
        Fri, 26 Mar 2021 12:00:30 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id j21sm9832786pfc.114.2021.03.26.12.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 12:00:29 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
Subject: [error-report-web][PATCH v2 5/5] Import parser from the new python3 location
Date: Fri, 26 Mar 2021 12:00:23 -0700
Message-Id: <20210326190023.713835-5-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
References: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 Post/views.py | 2 +-
 README        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 7791201..161d46d 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -24,7 +24,7 @@ from django.http import JsonResponse
 from django.db.models import Q
 import json
 import urllib
-from urlparse import urlparse
+from urllib.parse import urlparse
 
 class results_mode(object):
     LATEST = 0
diff --git a/README b/README
index f759d28..d56fdbd 100644
--- a/README
+++ b/README
@@ -48,7 +48,7 @@ The latest version can be checked out by git cloning:
   git://git.yoctoproject.org/error-report-web
 
 Contributions are welcome. Please send patches / pull requests to
-yocto@yoctoproject.org with '[error-report-web]' in the subject.
+yocto@lists.yoctoproject.org with '[error-report-web]' in the subject.
 
 To manage the size of your database there is a convenience command:
 
-- 
2.11.0

