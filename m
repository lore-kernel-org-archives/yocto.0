Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.1389.1616632811293327679
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=m54DSR32;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id u19so80172pgh.10
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jHqEWdNHs0pSAOAM/CpXvjP8HfKQtMVO+iXm7vt0y4k=;
        b=m54DSR32er5rBW7sfO9qlTTXJz5L1TNJ+pL4dVUSzwWyAZvwVSdB5K/WF2PCJxMu6g
         dtA7rdLkMPGUuz1BkNmEL/Vl0kQgpXNU9D6ExkOzussk9HQt+vP2HsZijuUuJGFy8naK
         /OwcjjL3Kt5SCguj54lr3BRASlgpF0Jmp8dXZaTy1FWwM8QRa0x85ecYjb6kXPMi0LYD
         jf5jlBvHk668906RP1EFTydfXCSHc9cEow+PvYqf8q/aaUF/C+cMfiPVaxWloMBJb7MF
         k1tRIWqFgxASGbYB0tR4Y39a1cHHkvrZ4aQ6MklKWSRmHy9kCY9NxtKW8oHRuMr0j6nF
         8QNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jHqEWdNHs0pSAOAM/CpXvjP8HfKQtMVO+iXm7vt0y4k=;
        b=emTCCEBtGePkQxoXFoksTeAhO1KjAjo5KiEr7o/IThsFV+lZP2oIzjPhRrMxvQwvv8
         wg+cdWIzKcBDHGBMZxvjusdmv++O8er+ugXHNiQ+OAjvSRkD94iG46HnJ0DklTdiSALf
         /2exLapFasjD3nxqqolM6/f4/XfByNCGfjyMTHBycN34KbdkHf+6HdWmCOA5knUuyz+Y
         LJEGz4yXQrGW0yiRHTDNFG4SIthUZMUIaN1uJIGi+g/m4uL51kDkg+7qRo0zxLHbEtpi
         dkAVJ/EgaUWPIUfmK3GOEMneEAKytRCmjJH47SbpY9A+XxpziIZRy+tZ9uLQJVXlQwxI
         n5mg==
X-Gm-Message-State: AOAM530jJNeOQqw3MhomGLN8uIn/ntnEEIV4Zxg17cxoi6QLvIpg0A4C
	gIT3qAdhLEnYbqDK3ejRiJH1Y6g1oD+SUJkJ
X-Google-Smtp-Source: ABdhPJwT4RbxS6ghHOPkx6wS3OvApE5AwA/51imcx/dtaOLhiIZWX5LjNt96p9i0qFYhaa7fMTS15g==
X-Received: by 2002:a17:902:a406:b029:e6:78c4:71c8 with SMTP id p6-20020a170902a406b02900e678c471c8mr6141379plq.17.1616632810371;
        Wed, 24 Mar 2021 17:40:10 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:09 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 07/23] scripts/generate-testresult-index.py: Use bulma css to improve the look of the index
Date: Wed, 24 Mar 2021 14:39:16 -1000
Message-Id: <7b3d9d7f821620d3e0549b0f2834f8c2e0b04065.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4b8eab92ee1f68ec8cd680c62e40b17006fa6efc)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/generate-testresult-index.py | 34 ++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index c3fea84..d9d577e 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -13,18 +13,29 @@ import subprocess
 from jinja2 import Template
 
 index_templpate = """
-<h1>Index of autobuilder test results</h1>
-    
-<table>
+<!DOCTYPE html>
+<html>
+<head>
+  <meta charset="utf-8">
+  <meta name="viewport" content="width=device-width, initial-scale=1">
+  <title>Index of autobuilder test results</title>
+  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
+</head>
+<body>
+ 
+<table class="table is-narrow is-striped">
+<thead>
 <tr>
-  <td>Build</td>     
-  <td>Type</td>
-  <td>Branch</td>
-  <td>Test Results Report</td>
-  <td>Performance Reports</td>
-  <td>ptest Logs</td>
-  <td>Buildhistory</td>
+  <th>Build</th>
+  <th>Type</th>
+  <th>Branch</th>
+  <th>Test Results Report</th>
+  <th>Performance Reports</th>
+  <th>ptest Logs</th>
+  <th>Buildhistory</th>
 </tr>
+</thead>
+<tdata>
 {% for entry in entries %}
 <tr>
    <td><a href="{{entry[1]}}">{{entry[0]}}</a></td>
@@ -48,7 +59,10 @@ index_templpate = """
    </td>
 </tr>
 {% endfor %}
+</tdata>
 </table>
+</body>
+</html>
 """
 
 def parse_args(argv=None):
-- 
2.25.1

