Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.1886.1616784596324562527
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 11:49:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IlgLS87c;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.51, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f51.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so2918706pjb.0
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 11:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=38nJxRneaF8PiV/ziizyuJq15e52q5vkUK3Ih0eVg3k=;
        b=IlgLS87c0ypP0JHrBDnZBljG1YpWBxkK58YTNy4RMdfyZswgQFh5ojiGqQZVYJiIl/
         yfc2XlY+FN72V9JTXupieINlB5K4lkNE7h0GTGVCE18DFVQgAXZz/z/PP3ZbZVQNkT+4
         4Kf3wU4hng9jHxerMmiCcme2bsrx/qdwFO/Mc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=38nJxRneaF8PiV/ziizyuJq15e52q5vkUK3Ih0eVg3k=;
        b=lW6UGAiHpsFS/OP58rkfITXshUdLGdxG5SgETV71aiNcq4VQ6lrci0qUOAFpX+lWDQ
         aYLBlQq8FhBjbHMLt7B1UDaNQnlano/q2vbx8D5AJRR3ZMEAAdLgMCGziThoUzGsDt8n
         0ytWlCN5nEYIW6gM9rIS0VuWh/tRyniyEi996j9fRXSEQO1w7YDKo0h4Vfjy9BUyqchP
         n7owArkQYzujawj4JTMtUI/wxieXuNNo5TTg1kQugMnuAwa1NUy2T4i9IQL+Okc2T/z9
         2QNJsEMxT+vIaAC+EVH3z/Kyo5FUFoSJlpBDg1PDdSx+JctE9aPqGGfr/GXbloQJa9Dk
         AEcw==
X-Gm-Message-State: AOAM533ev9w3KWXLPiITis47wb3c3W+69vVD2kxBU8Iu2WBN40FQ/KXj
	XL3RsQjlj332x3GPUbEYZ4IyWlmVIumdLg==
X-Google-Smtp-Source: ABdhPJx8qOZ09KcebaAdAZ8lEOmbPHQg+QwKxfMC4WAVZTrkhjsxMZ/ygIGY0yVSuIa0iJCYR+zgIA==
X-Received: by 2002:a17:90a:8a8b:: with SMTP id x11mr14977177pjn.151.1616784595505;
        Fri, 26 Mar 2021 11:49:55 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fa21sm9132905pjb.41.2021.03.26.11.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 11:49:55 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 2/5] Avoid errors caused by attempting to update referrers for objects that don't exist.
Date: Fri, 26 Mar 2021 11:49:49 -0700
Message-Id: <20210326184952.712938-2-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
References: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Halstead <mhalstead@linxufoundation.org>

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

