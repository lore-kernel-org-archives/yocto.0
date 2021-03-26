Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.2056.1616785228708369896
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 12:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eekp1z59;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.171, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f171.google.com with SMTP id q5so5463531pfh.10
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 12:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VWgZ8+5SMVRBWGvNaLG7UYhSx8U0iP3XNqpvXFl98ck=;
        b=eekp1z59Yo1Ll6MaKGB2Gm3QAZz2CQXq46tfH2/TMKArgNWkaeRQCitdLyRzbsMKFo
         MvkkUQd7C9abTOfUztuQ9KDN3eheiRLW/aAqC+cZ8VAuigqdCNV8cI2x++lvUBUSoJbX
         egPJU+YV1L0voASzjdR4sF/E3d9I+KREEAdhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VWgZ8+5SMVRBWGvNaLG7UYhSx8U0iP3XNqpvXFl98ck=;
        b=Bv+GTaig3g1ibk0nw/ir+jnVR0/O6F/iloKW035BWz0SFdEPw4wjfCJm1GoJ2hKGjw
         qYUFmzRpcjiLP4aHkLJkpkSNGP1opbr1Pm8HwPdfy9mxrMUb3C9UAzyGh3/mv6ZxrcFA
         WBESzlMdPfC8XE4d/Jgho4yalHjg1Jv1yehkADE4LtdEOmDI3sa5NnWbeYmoiiCgyxq5
         TZ7ADMqOyCIehQaxfKbMIFyEq8H8gF5vdzsapsea2RkXWktRHDT9b9UI8uInAodS1Jz6
         rU9v6nKKeULJPpPwfQLO60X9FnzGrxNUX1K1PEgIi/FDSYpeRItZNLgGnGa0qaFD/NNE
         CE6g==
X-Gm-Message-State: AOAM531DDsOZFlqK37arPqNO07cAejhkJK95IdK8UCZrL8KGpF8t5UIm
	DFxPF6aCuYOaVeXvDgrPO7w+FJ+hb0gXwg==
X-Google-Smtp-Source: ABdhPJy4/o3UoDO84Ntt4pJcz7stQzU1l5NsIcX6dinupgV0lTw2m0onpEwzTMhc44GLli9Z8lpstw==
X-Received: by 2002:a63:d44a:: with SMTP id i10mr13567447pgj.57.1616785227890;
        Fri, 26 Mar 2021 12:00:27 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id j21sm9832786pfc.114.2021.03.26.12.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 12:00:27 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
Subject: [error-report-web][PATCH v2 3/5] Allow alternate settings, avoid out of memory condition
Date: Fri, 26 Mar 2021 12:00:21 -0700
Message-Id: <20210326190023.713835-3-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
References: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

