Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.1387.1616632807376015698
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hYiGymE6;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.51, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f51.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so2002569pjh.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4j7RInL+RxjxaYr/qvdHS2w5/f8QRMuA8ubawSlL8ss=;
        b=hYiGymE6CmnSfOO6rNfHGp20u4pC+yFmmcb8a+GTr4KcHgWHQrYeEOOM3xMRg/4ser
         cUifmutN67HzwSCljf//NWqiF1I0MqW8JaSEet7vV13RgZuxLhjhk+cI/uC3RjyhMDWw
         WmrNomBfapR5OCTcMgOY/PWv/WbI1F0MwM60+6abeYFqZhYhm4d0GcYqajZcwaX43IyX
         4QLQn4y/1PwEKgXTs1+UC5hBaWbF76GFBvzg7KlTjRX15UKMSI2n01h7cLROoINuCRjJ
         /BIsIKK/5j19kPNyAw3enJUQd6hx6yaJ5btzcu59IbMYSNVR6hfc7zjJGiBxeAzM4eGb
         ATEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4j7RInL+RxjxaYr/qvdHS2w5/f8QRMuA8ubawSlL8ss=;
        b=l1/ruIfBWSX9IOwFS9hWRZ8siwbOKrrIzJ56tvhprkYVUkTYxwF1I4bAHgDTnSiM2I
         Cxcl/lQR6F6+jBl/9VFO86naytYPTMCqye1x0bZrBQpAu3jHEkqJ+3YkQpOG/9qVoiJr
         s5VkKGQF8jXaL8WKseVM6svsUuu/Pjh4XnaW3jJBoPAOXA5z20pooUNZF3bStgxh0OyV
         CRywriRYk8CFxCPQD+FlbyMmAuqDCy2G0/yIpdRok01NSkZSYMl1kveYJxzI5rj5u/Qe
         g4gv8Sj0cWvyriHA/GibkwOQJvX1hOqDwmEKo2G2Vh/IODAhbBCns+AicZswFS9j41GV
         rLWQ==
X-Gm-Message-State: AOAM532ceS767iDFQ3Qzg1vhBPrtDZL5L73IJbg2seSgP7aBPsnUJ2sA
	2Fr7aOuawTjb6iChRDzF6JlNmz9aD61vFJm5
X-Google-Smtp-Source: ABdhPJzw8lxCPCqM0Lb/QD257O6Mwq9D8iIbP6rdvqCaX6MNegjbG/f2BeDWNp8FRg95pfIBh+0a+w==
X-Received: by 2002:a17:90a:c249:: with SMTP id d9mr6139773pjx.104.1616632806284;
        Wed, 24 Mar 2021 17:40:06 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:05 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 05/23] scripts/generate-testresult-index: Improve index to list test reports, ptest and buildperf separately
Date: Wed, 24 Mar 2021 14:39:14 -1000
Message-Id: <e5f9005682d8fe61da816d817d348856193d1a57.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 9f50544d000a2ee3678f7baef67473eaf51518a5)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 38 +++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 7 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 52be26b..8381d5b 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -20,8 +20,10 @@ index_templpate = """
   <td>Build</td>     
   <td>Type</td>
   <td>Branch</td>
-  <td>Report</td>
+  <td>Test Results Report</td>
   <td>Buildhistory</td>
+  <td>Performance Reports</td>
+  <td>ptest Logs</td>
 </tr>
 {% for entry in entries %}
 <tr>
@@ -34,6 +36,16 @@ index_templpate = """
      <a href="{{bh[0]}}">{{bh[1]}}</a>
    {% endfor %}
    </td>
+   <td>
+   {% for perfrep in entry[6] %}
+     <a href="{{perfrep[0]}}">{{perfrep[1]}}</a>
+   {% endfor %}
+   </td>
+   <td>
+   {% for ptest in entry[7] %}
+     <a href="{{ptest[0]}}">{{ptest[1]}}</a>
+   {% endfor %}
+   </td>
 </tr>
 {% endfor %}
 </table>
@@ -81,6 +93,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
         # No test results
         continue
     reldir = "./" + build + "/testresults/"
+
     btype = "other"
     files = os.listdir(buildpath)
     if os.path.exists(buildpath + "/a-full-posttrigger") or \
@@ -91,14 +104,25 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
         btype = "quick"
     elif len(files) == 1:
         btype = files[0]
+
     testreport = ""
     if os.path.exists(buildpath + "/testresult-report.txt"):
         testreport = reldir + "testresult-report.txt"
-    elif btype.startswith("buildperf-"):
-        try:
-            testreport = reldir + btype + "/" + os.path.basename(glob.glob(buildpath + "/" + btype + "/*.html")[0])
-        except IndexError:
-            pass
+
+    ptestlogs = []
+    ptestseen = []
+    for p in glob.glob(buildpath + "/*-ptest/*.log"):
+        if p.endswith("resulttool-done.log"):
+            continue
+        buildname = os.path.basename(os.path.dirname(p))
+        if buildname not in ptestseen:
+            ptestlogs.append((reldir + "/" + buildname + "/", buildname.replace("-ptest","")))
+            ptestseen.append(buildname)
+
+    perfreports = []
+    for p in glob.glob(buildpath + "/buildperf*/*.html"):
+        perfname = os.path.basename(os.path.dirname(p))
+        perfreports.append((reldir + "/" + perfname + "/" + os.path.basename(p), perfname.replace("buildperf-","")))
 
     buildhistory = []
     if os.path.exists(buildpath + "/qemux86-64/buildhistory.txt"):
@@ -109,7 +133,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
 
     branch = get_build_branch(buildpath)
 
-    entries.append((build, reldir, btype, testreport, branch, buildhistory))
+    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs))
 
     # Also ensure we have saved out log data for ptest runs to aid debugging
     if "ptest" in btype or btype in ["full", "quick"]:
-- 
2.25.1

