Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web09.1876.1616785229679692327
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 12:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TpMbBvbv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.214.170, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pl1-f170.google.com with SMTP id y2so1364219plg.5
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 12:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=heDxecWgYFQqCH0t0Ay0/biX5YxKoNEFfhhwiweFMd0=;
        b=TpMbBvbvhwMn8zEdQVdb2lWxbHteetGgSblDTVUvQPnnC6bJ7iNJzfZBfMp+O8woTe
         7bm+q3A0MRELnGPtHoht4FXqnD9k8B+maPIHDplQISTVBSu8CDfmcTtqVS598kE/XphW
         0aj3R55p0vw2iXvd10J2ufji42eBPvbT+JR6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=heDxecWgYFQqCH0t0Ay0/biX5YxKoNEFfhhwiweFMd0=;
        b=lxU5rz5aFDZKo2YKiR3wnL3lNQhlfEtUnRK9URsSN5JiDqEiVbYPk5KxiRELfRlJuY
         KqApa+hnn4/JvbKjGZZ//tTKoBSPtGDhZzIuUYVSH/e1sOVYceg1bBwC0CYa1PYtpolH
         D8+0OluEISG+MXWFjvuFWULXJGErudCQQ1wD3/XsqIoexYTduHdndiFH/hYwBKilqXZm
         jApLgWc82okn6fVFkmDtbU0ShsUEY48I7+9bhlqZ4XUrsKdEmQmCh15pgptrHPtUGlFt
         CPZuYL7iTVDz+x0bKudUIlwQz6GVo+qaZ/HrNPfIlMpjaGAnpEwXv5s8iVJefAu20zvK
         zy/Q==
X-Gm-Message-State: AOAM530g3QPN0YmknO6DUAnn01sFn2sHrKyrY2Ma1RMJfd+cvEvYi8Vl
	LmPd5TqePbWDamrxZmds6OodKHuAocBtyA==
X-Google-Smtp-Source: ABdhPJwXTmxQLuDItdS44JQy2ZIjyrU/S0JM4Pk5kps7hpNAgWBrWKEW8HyDll47DObBBHEnZQtayQ==
X-Received: by 2002:a17:902:e98c:b029:e5:defc:ccf8 with SMTP id f12-20020a170902e98cb02900e5defcccf8mr16223826plb.20.1616785228769;
        Fri, 26 Mar 2021 12:00:28 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id j21sm9832786pfc.114.2021.03.26.12.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 12:00:28 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org
Subject: [error-report-web][PATCH v2 4/5] Search on contains, enalble admin, and keep more error history.
Date: Fri, 26 Mar 2021 12:00:22 -0700
Message-Id: <20210326190023.713835-4-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
References: <20210326190023.713835-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 Post/feed.py    | 2 +-
 Post/purge.py   | 5 +++--
 Post/views.py   | 3 +--
 project/urls.py | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Post/feed.py b/Post/feed.py
index 7e5bfdb..5d57b54 100644
--- a/Post/feed.py
+++ b/Post/feed.py
@@ -27,7 +27,7 @@ class LatestEntriesFeed(Feed):
         if self.mode == results_mode.SPECIAL_SUBMITTER and hasattr(settings,"SPECIAL_SUBMITTER"):
             #Special submitter mode see settings.py to enable
             name = settings.SPECIAL_SUBMITTER['name']
-            queryset = BuildFailure.objects.order_by('-BUILD__DATE').filter(BUILD__NAME__istartswith=name)[:self.limit]
+            queryset = BuildFailure.objects.order_by('-BUILD__DATE').filter(BUILD__NAME__icontains=name)[:self.limit]
 
         else:
             queryset = BuildFailure.objects.order_by('-BUILD__DATE')[:self.limit]
diff --git a/Post/purge.py b/Post/purge.py
index 1289d13..dd58441 100644
--- a/Post/purge.py
+++ b/Post/purge.py
@@ -15,11 +15,12 @@ def setup_django():
 def main():
     setup_django()
     from Post.models import BuildFailure
-    delete_before = timezone.now()-timedelta(days=30)
+    delete_before = timezone.now()-timedelta(days=45)
     query = "SELECT bf.id FROM Post_buildfailure bf LEFT JOIN Post_build b ON (bf.BUILD_id = b.id) WHERE bf.REFERER NOT IN ('OTHER','NO_REFERER') AND b.DATE < '{0}'".format(delete_before.date())
-    print query
+    #print query
     items = BuildFailure.objects.raw(query)
     for item in items:
+        print "Deleting: ", item.id
         item.delete()
 
 if __name__ == "__main__":
diff --git a/Post/views.py b/Post/views.py
index 0ad58ba..7791201 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -45,7 +45,6 @@ def common_context(request):
 
     return ret
 
-
 @csrf_exempt
 def addData(request, return_json=False):
     response = ''
@@ -208,7 +207,7 @@ def search(request, mode=results_mode.LATEST, **kwargs):
     if mode == results_mode.SPECIAL_SUBMITTER and hasattr(settings,"SPECIAL_SUBMITTER"):
         #Special submitter mode see settings.py to enable
         name = settings.SPECIAL_SUBMITTER['name']
-        items = items.filter(BUILD__NAME__istartswith=name)
+        items = items.filter(BUILD__NAME__icontains=name)
 
     elif mode == results_mode.SEARCH and "query" in request.GET:
         query = request.GET["query"]
diff --git a/project/urls.py b/project/urls.py
index 1f51c7c..c1ac55f 100644
--- a/project/urls.py
+++ b/project/urls.py
@@ -24,7 +24,7 @@ urlpatterns = patterns('',
     #url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
 
     # Uncomment the next line to enable the admin:
-    #url(r'^admin/', include(admin.site.urls)),
+    url(r'^admin/', include(admin.site.urls)),
     #url(r'^accounts/', include('registration.backends.default.urls')),
     url(r'^(?i)Errors/Latest/$', 'Post.views.search', { 'mode' : results_mode.LATEST }, name= "latest_errors"),
     url(r'^(?i)Errors/Latest/feed$', LatestEntriesFeed(), name="errors_feed"),
-- 
2.11.0

