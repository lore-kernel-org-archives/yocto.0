Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.5741.1616716631552153977
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 16:57:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FW4Otg+e;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.215.178, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pg1-f178.google.com with SMTP id v10so3386326pgs.12
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 16:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DA2dFqx/9bmz0pe/MnpaVXDQYHHdibEb+du3py0Nya0=;
        b=FW4Otg+e/THYFar1QGu+JGgsC1d0JjpF4SKg7/8T1mLW7y7rYrjVJWQFzHg6o4kF13
         ZemM1xyLb1EBEjmLT0giUct9qXoyLlb/SwDZE9WhRMPKcGtzkbFDrDR9CVZHC/ct0BE/
         V2p8obWtwpUF7hzWfcbe4n59A98qnpzcVPwLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DA2dFqx/9bmz0pe/MnpaVXDQYHHdibEb+du3py0Nya0=;
        b=J1xQRf4+fD0dnOsgAWydDSFbRpUoc11Vz8TwxEiFIbmeVhcq8Vk6o414n4AYEnqgXQ
         NO6Q1aJGKenuspundV2OAewr+FVMeGAsCnxwQYYNS1swb8/5DSOQVQd0R1I08HlhA2gk
         jUUPQv6GvkyJjtOpwkGY1xgw7B3hS36jVIuuCjhaLrzvPafCGoQ0g7HvApfwmoZE0bkS
         mf/yaOl/IdwnDV0ngC6OSQWGCHkbmrgBoFrovIONRCSnLfcZNyIqZNFoh/eIcl8E7Fkj
         wLTlC25sn/HqzAt8urVZ53xooAnq/7xo3HcLuxnudYQIXIaFi28RWu4Aj5Rzkl70sEfs
         KNWQ==
X-Gm-Message-State: AOAM531UizK5Ytx1lp4GWbLK8Jm6Ox9yGRv2lbOjKhu4woAejxA8rE3S
	3Lk/BKjgrZEgWe13LAwLHJmPAPrjCQiaIA==
X-Google-Smtp-Source: ABdhPJxfLrCwenn2aTnj/FIFFUDCp/YoXJzxkcqo4CwSbG9XN2yO6ObSDJtLEnilxMblnYSuNLvU2A==
X-Received: by 2002:a63:ce48:: with SMTP id r8mr9640381pgi.62.1616716630747;
        Thu, 25 Mar 2021 16:57:10 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id a144sm7139111pfd.200.2021.03.25.16.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 16:57:10 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 4/5] Search on contains, enalble admin, and keep more error history.
Date: Thu, 25 Mar 2021 16:56:36 -0700
Message-Id: <20210325235637.647556-4-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
References: <20210325235637.647556-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Halstead <mhalstead@linxufoundation.org>

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

