Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.5738.1616716621524078594
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 16:57:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hIdkXu+D;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.53, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pj1-f53.google.com with SMTP id x21-20020a17090a5315b029012c4a622e4aso861012pjh.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 16:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=38nJxRneaF8PiV/ziizyuJq15e52q5vkUK3Ih0eVg3k=;
        b=hIdkXu+D987jLIKeQwdSNCOChXAmqX8NCJ3ZSU0+SqkwLlxm7Syts/G3YEGXtYbXPh
         Q2UZeFSmcuC7QwqnOiW9riEwhUvuCeAUMtqlyS5QcT8NShdbMwxuG+cNVMHpOdIcSbx7
         sTKO7cvIaoXThEJ4q5H463cdw+vO3m2pEO1B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=38nJxRneaF8PiV/ziizyuJq15e52q5vkUK3Ih0eVg3k=;
        b=h08MeEtYnur/09Su4up2oCfjINqgJNOWYoSFRC0KktMo+bUWC5JEtGGISLl2DSxlhA
         2S7SUfLC7Fx8x944buIV8pLbACX1xI5Bx6s4tbLO3UZFKL7m63QqeisIR3ihG6Wfij/a
         WcduHhBQTTa3ldgq5jKDOBAETW3iVwCqXPwV8jtHgJ9n2mSmP1KEy8DMMjDMOG8NTriS
         fO0BV92/ZfYtiO7TUKdnexhZezp6uepuFdcMBiaqSxTWZcR7fymX+hqk96SR4ot8WtUV
         6uZbdVqKFh9voilhvHKXiq7wvErJY+Q75KwHtqR2nLRta62EzKnQyXEYv37lOhWryA7m
         w/qw==
X-Gm-Message-State: AOAM532oYfr6Ct+4Ox2SOugXdQJYLaAEgLflfqvf1WkrseF8+FYUcITv
	jf5zpzOMbKP9zEr5meKo58M7B/rYcJH+NA==
X-Google-Smtp-Source: ABdhPJwtBWqgwUR+ezkdEBxwfW7KMuXM232HDddiJxQxQNHlXaRaLGDXv7tsLMGMu3hiRbQZ6+JxVQ==
X-Received: by 2002:a17:90a:9f8d:: with SMTP id o13mr10866286pjp.25.1616716620722;
        Thu, 25 Mar 2021 16:57:00 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id a144sm7139111pfd.200.2021.03.25.16.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:57:00 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 2/5] Avoid errors caused by attempting to update referrers for objects that don't exist.
Date: Thu, 25 Mar 2021 16:56:34 -0700
Message-Id: <20210325235637.647556-2-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
References: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
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

