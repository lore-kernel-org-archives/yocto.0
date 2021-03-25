Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web08.1393.1616632809425531594
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=lCnAGfbD;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.50, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f50.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso201015pjb.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=j88UeX0Mti6nzTE0O+m8ynqfv/00xsRjxvOuPxhFREk=;
        b=lCnAGfbDMXqsO8SB6rClBUWADcN32eqhU7O43oOebcI1blquzmNbW2jhFAUJ82YTzm
         lRKk6I0RJ79T09jV5DAa9Nl4dKttQhvDfclVop6bm32i9p/zzQrMBdUQebJ6ngU09PUT
         T0TovB6KFMvt4REx4P3/hLYOJrnDKB/lbA9Dz0BJ26QVs1HLQfWykamTZcyy5fEC4Cwd
         R4WR7FG2B3JJF0ZuM956WesOP3GEzqd1KRvfROoTukRQIdqjtFhkTKFzA+hUrJ1GrMkH
         j3NyRgCvRyEE6J8ktBbA3OvXONfsy272gI95X24NebbDZuzCOFMcDVanaTSkeFn+BFKZ
         mahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j88UeX0Mti6nzTE0O+m8ynqfv/00xsRjxvOuPxhFREk=;
        b=Z2ydW6BGlrQl7NijqWkBhJhrRYBgeXGhm0457hGc/BeZSfNF5oN9CODRdEjuhmn0yZ
         Upjn0ljMEqqoqxeHjvwapKLsuechbvenHB0XYAv1f6dZT5ew2KKNcN2CMaVNMYcruih1
         m42tXE2baBRMCiOmqA4LHgwF1qWuWLSMyfbCfy5rivSv/9DbqNOvZxthNvnHh02RuE8P
         Pk9vYTvPpqsjFSg0oGH2KX9+hSFIsK8aFyFu128qT7qv2e1Mot+QFhTOph+KUgtIZfGt
         Ych1F26j9nc8IIrO2Mr7YT8GHws25V9kSJP+ajpoJJ9bFcj53/zeMnM7B3fdquI3AOjv
         gdFQ==
X-Gm-Message-State: AOAM530CMRvSXTIO6SdG+4fowoCe8sxBdTVxD+UjmiDRZI6mMwMRDHfR
	3rJm7NItFcMbSmCANdCWbaF6OqbIRJUU5mSh
X-Google-Smtp-Source: ABdhPJzHQ32Imy+VAXVWseMkKdeU1SIjnlxhA/FlF2cOljGyFLayqlaBfV+374NtJOHPdwx5c8vIkw==
X-Received: by 2002:a17:90b:120f:: with SMTP id gl15mr6030244pjb.77.1616632808407;
        Wed, 24 Mar 2021 17:40:08 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:07 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 06/23] scripts/generate-testresult-index: Reorder buildhistory to improve display
Date: Wed, 24 Mar 2021 14:39:15 -1000
Message-Id: <19f5913c266c7635d38f6e6f4be43cc1c301b352.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Also, use the artefacts directory in the main link, not direct to testresults.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit ab485e89bd535aae17a5cb137e81345fa6ad6c3a)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 8381d5b..c3fea84 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -21,9 +21,9 @@ index_templpate = """
   <td>Type</td>
   <td>Branch</td>
   <td>Test Results Report</td>
-  <td>Buildhistory</td>
   <td>Performance Reports</td>
   <td>ptest Logs</td>
+  <td>Buildhistory</td>
 </tr>
 {% for entry in entries %}
 <tr>
@@ -32,11 +32,6 @@ index_templpate = """
    <td>{% if entry[4] %} {{entry[4]}}{% endif %}</td>
    <td> {% if entry[3] %}<a href="{{entry[3]}}">Report</a>{% endif %} </td>
    <td>
-   {% for bh in entry[5] %}
-     <a href="{{bh[0]}}">{{bh[1]}}</a>
-   {% endfor %}
-   </td>
-   <td>
    {% for perfrep in entry[6] %}
      <a href="{{perfrep[0]}}">{{perfrep[1]}}</a>
    {% endfor %}
@@ -46,6 +41,11 @@ index_templpate = """
      <a href="{{ptest[0]}}">{{ptest[1]}}</a>
    {% endfor %}
    </td>
+   <td>
+   {% for bh in entry[5] %}
+     <a href="{{bh[0]}}">{{bh[1]}}</a>
+   {% endfor %}
+   </td>
 </tr>
 {% endfor %}
 </table>
@@ -92,7 +92,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     if not os.path.exists(buildpath):
         # No test results
         continue
-    reldir = "./" + build + "/testresults/"
+    reldir = "./" + build + "/"
 
     btype = "other"
     files = os.listdir(buildpath)
@@ -107,7 +107,7 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
 
     testreport = ""
     if os.path.exists(buildpath + "/testresult-report.txt"):
-        testreport = reldir + "testresult-report.txt"
+        testreport = reldir + "testresults/testresult-report.txt"
 
     ptestlogs = []
     ptestseen = []
@@ -116,20 +116,20 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
             continue
         buildname = os.path.basename(os.path.dirname(p))
         if buildname not in ptestseen:
-            ptestlogs.append((reldir + "/" + buildname + "/", buildname.replace("-ptest","")))
+            ptestlogs.append((reldir + "testresults/" + buildname + "/", buildname.replace("-ptest","")))
             ptestseen.append(buildname)
 
     perfreports = []
     for p in glob.glob(buildpath + "/buildperf*/*.html"):
         perfname = os.path.basename(os.path.dirname(p))
-        perfreports.append((reldir + "/" + perfname + "/" + os.path.basename(p), perfname.replace("buildperf-","")))
+        perfreports.append((reldir + "testresults/" + perfname + "/" + os.path.basename(p), perfname.replace("buildperf-","")))
 
     buildhistory = []
     if os.path.exists(buildpath + "/qemux86-64/buildhistory.txt"):
-        buildhistory.append((reldir + "/qemux86-64/buildhistory.txt", "qemux86-64"))
+        buildhistory.append((reldir + "testresults/qemux86-64/buildhistory.txt", "qemux86-64"))
 
     if os.path.exists(buildpath + "/qemuarm/buildhistory.txt"):
-        buildhistory.append((reldir + "/qemuarm/buildhistory.txt", "qemuarm"))
+        buildhistory.append((reldir + "testresults/qemuarm/buildhistory.txt", "qemuarm"))
 
     branch = get_build_branch(buildpath)
 
-- 
2.25.1

