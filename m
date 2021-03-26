Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.2001.1616785227217368362
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 12:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=U5iTQUG7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.180, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f180.google.com with SMTP id y137so203470pfg.1
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 12:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XyGWSzO+GJMhzKX0VyRrsAHSUp7NkuYBbgRcp+oboPQ=;
        b=U5iTQUG7n0yQj8aEkv1i3QT2nZN1UOMBEPMIJoAZSjsN8hFwBLDN1zjO7YItZM4pdk
         jG/D3xV++wzdvDaPSmL9dZPVnmzNRNF2sZZZY4OuFT6+P2BQyc4l4dYwUieXjWkcUAlz
         7c0NeOLTeLb2B85CJ3Z4xDmmmRBGqXifcZn2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XyGWSzO+GJMhzKX0VyRrsAHSUp7NkuYBbgRcp+oboPQ=;
        b=a7jjhNrF8VMzOqSdpeuHv2IV0C5nWieD6GR26Ax4Y45P3V5Sm/5rc0ztdpwGN6KKS6
         vka109Qceaz2UaZrAw55oTJovt9doufFzsdFkBoxHPFqkdGhM8nCqlwf8QTesdjY1FYB
         q4XX2YT7NPxbAehdVH5C1PitxR+ppX29ykJS2JFs5HSoOHWUQiO5sUcpflofTU8Dy48r
         rFZo7m75ZgQ7rAaC3L7WYO9BdHUNsZ7FsDOFvPar4UpbVyJjjRTf44PxAxIBEDsJAnkr
         UjF2LaM0Zk0hLEJ9IYGptY+1ZjHri3ami6bleywikEdZWxaNZcaPNbPMowVkktrmmldt
         opUw==
X-Gm-Message-State: AOAM532Bc7IN35kR4WlTM74Ll3PV5AcIsDAZwAaLcE82+4/pht8+vYGv
	ALXRLHkpN8WM4AG8GBiqHUUKfp7Q4LJO4A==
X-Google-Smtp-Source: ABdhPJzW7/jGWh6h5pLznq22Y3CWNcosaRXgyGioQlAwY6ssXdF41BsxWDqIFolEKjnwDuhyjoeOHw==
X-Received: by 2002:a62:6497:0:b029:220:d96a:8a79 with SMTP id y145-20020a6264970000b0290220d96a8a79mr10132614pfb.23.1616785226072;
        Fri, 26 Mar 2021 12:00:26 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id j21sm9832786pfc.114.2021.03.26.12.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 12:00:25 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
Subject: [error-report-web][PATCH v2 2/5] Avoid errors caused by attempting to update referrers for objects that don't exist.
Date: Fri, 26 Mar 2021 12:00:20 -0700
Message-Id: <20210326190023.713835-2-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
References: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 Post/views.py | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 5737076..0ad58ba 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -256,23 +256,23 @@ def search(request, mode=results_mode.LATEST, **kwargs):
         items = items.order_by()
         return render(request, "latest-errors.html", context)
 
-
 def details(request, fail_id):
     try:
         build_failure = BuildFailure.objects.get(id=fail_id)
     except ObjectDoesNotExist:
         build_failure = None
-    try:
-        referer = urlparse(request.META['HTTP_REFERER'])
-        referer_hostname = referer.hostname
-        if referer.port:
-            referer_hostname += ":" + str(referer.port)
-        if referer_hostname != request.get_host():
-            build_failure.REFERER = 'OTHER'
-    except KeyError:
-        # There is no referer
-        build_failure.REFERER = 'NO_REFERER'
-    build_failure.save()
+    if build_failure:
+        try:
+            referer = urlparse(request.META['HTTP_REFERER'])
+            referer_hostname = referer.hostname
+            if referer.port:
+                referer_hostname += ":" + str(referer.port)
+            if referer_hostname != request.get_host():
+                build_failure.REFERER = 'OTHER'
+        except KeyError:
+            # There is no referer
+            build_failure.REFERER = 'NO_REFERER'
+        build_failure.save()
 
     context = {'detail' : build_failure, 'error_types' : ErrorType }
 
-- 
2.11.0

