Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web09.1729.1616784597165158348
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 11:49:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=H7vVNAss;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.45, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f45.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so2918722pjb.0
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 11:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hFkU2j3ZmO6044OkweAq/RL9AkzTVB+23cUHvABL76s=;
        b=H7vVNAssRCA79IRkmlYykFI0eZd+PiadgC7QOUJbY/IOP/saFnrOJ6AlFXV+ur+HE1
         YXmRZ9k8w6OLcvcIanKL2BxzYA2CZwyY/G1y0tLQhPjdEpJ4J7RPHSpO2ZtgGLqmd9xH
         NFSdPNWGz6x6m6NMI00sCTf1bOZdhoORZ52+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hFkU2j3ZmO6044OkweAq/RL9AkzTVB+23cUHvABL76s=;
        b=TVyfZ8/0r8eaLrvRPcDKHYIS50w9wHbCTv6MicXoPOoeWlz6GyeTk3+cVCEsBBLM8j
         aBLkAq/NI9mS4I3h3sDhvSoExZ7q3r1TF45UzKCGjbU+MyG8D568NL57/blupGsW0Ltm
         3xzyWFsnFQHmDpFzxrlt5DLKIQSSzNof19ZIDO5KcHyT5F+pVc3aKVDNcGLtJIuXQZbn
         93U3WDoEdAVzhLOFED5IqgeOaYGWQAgW7zziWBpOSzqLozbiNkT/88HPSch+KBvPRXz9
         5L91fdMMleIjCS6qUFNErpW/8GOTrHno8u75xg8nFCfGpZYQxYMArmpde2hXb7oy6XmU
         +4TQ==
X-Gm-Message-State: AOAM53088/0NPuWgNglUm/OLZePDnwS9N0rI99+V+jt1NHdIqARiCGXF
	jQZEaUb6mgL5xJeYxcSIFJJ3QT2l+5p5DA==
X-Google-Smtp-Source: ABdhPJzBCT2mXYZVAWlL9TBfDPdy94xIAPiEIpzTj15itpuxzefkMKpeiwB+gtryzuj3nozCA7IWaA==
X-Received: by 2002:a17:902:a587:b029:e7:347d:4872 with SMTP id az7-20020a170902a587b02900e7347d4872mr2345095plb.2.1616784596430;
        Fri, 26 Mar 2021 11:49:56 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fa21sm9132905pjb.41.2021.03.26.11.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 11:49:56 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 3/5] Allow alternate settings, avoid out of memory condition
Date: Fri, 26 Mar 2021 11:49:50 -0700
Message-Id: <20210326184952.712938-3-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
References: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
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

