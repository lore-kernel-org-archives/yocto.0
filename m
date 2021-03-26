Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web08.1840.1616784598495553882
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 11:49:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eSDBi3Sw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.214.176, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pl1-f176.google.com with SMTP id o2so1350286plg.1
        for <yocto@lists.yoctoproject.org>; Fri, 26 Mar 2021 11:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DA2dFqx/9bmz0pe/MnpaVXDQYHHdibEb+du3py0Nya0=;
        b=eSDBi3Sw2apbdVQRQggu/1zaAkw+51qghdvB/tDVnOob6kIkRDHk9O+wfEId2dOXn9
         y5ukaxjEQcJUP19zHVWI6a4Zb3SeQT8ddWOXo4C732j20doO43nUiQZ5LKxO17l2cQlk
         oxaAb3CE/yfnAWxre5pe5SOBR16QLKynqbePI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DA2dFqx/9bmz0pe/MnpaVXDQYHHdibEb+du3py0Nya0=;
        b=rs3bd/0UTjKJNdHCWwIS/Us5/SXcgNNVTtb7ie5m8MVACXMy48/XAnBqTp9Dhx1QQg
         A7Fve+TXgijGmDyZBGkwn8I3ZCdEbagmov0FWDSCW99HPi4dMMVQqkjaIxXMTiWd+kkq
         2MQEjOygfcH6TqPL9B6i4hEvlYhNBnEs/aRwZIR5vBvqXu8VAOgnrm9UBM2mx0xjFtHC
         KQ66lOu13IH4Jb/zvbEtGpBOUDBF8AbIwMETDmbPuMicI1yrV5go1EVDkKMWmfUZPmRT
         MMqDNzpgipML0B1lmqqkpjcJ/8G2sBoolbBp7Clq46Tg1bz2uoxHejvUX5U8/rdYgonR
         1RkQ==
X-Gm-Message-State: AOAM533q2A5DyXXlhf6WFgviHgdKn+g3s91KMts+8eZm+yJARTmiqNtz
	hGwVp+JNec2QwHEu4S5KHyteHbsXtU6Etw==
X-Google-Smtp-Source: ABdhPJxy5XMeaSf78EIN8/4crfffShPcv2RW8uAXNQY9P+AWHSDD3EwqbTfR0Jpu9EcniF4OFQnLBQ==
X-Received: by 2002:a17:903:22c7:b029:e6:faf5:eb3a with SMTP id y7-20020a17090322c7b02900e6faf5eb3amr15892604plg.23.1616784597681;
        Fri, 26 Mar 2021 11:49:57 -0700 (PDT)
Return-Path: <mhalstead@linuxfoundation.org>
Received: from localhost.localdomain.org (c-24-21-216-192.hsd1.or.comcast.net. [24.21.216.192])
        by smtp.gmail.com with ESMTPSA id fa21sm9132905pjb.41.2021.03.26.11.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 11:49:57 -0700 (PDT)
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linxufoundation.org>
Subject: [error-report-web][PATCH 4/5] Search on contains, enalble admin, and keep more error history.
Date: Fri, 26 Mar 2021 11:49:51 -0700
Message-Id: <20210326184952.712938-4-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
References: <20210326184952.712938-1-mhalstead@linuxfoundation.org>
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

