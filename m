Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.1216.1616435789361918857
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 10:56:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KvgkhwAz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id v4so18096110wrp.13
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 10:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w0RcgTa0W8c5F+XjHENIXcbWU6G7udkoTCYbkxRVc4s=;
        b=KvgkhwAznxu1ePYIK/nRPZbzohqO397In7xz1BBEpLCKpDtpGqi3s4/ODsJfT6LQtT
         KS4UWnQnRFt3/QlDTMJakEdH5oAjp90Y0B8jZa9r8cXCioZJeqSpFz3z/l2wezi/vWeq
         /F4VhBRbNq02Cusk8k+wu3MfpoRfShsASoWaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w0RcgTa0W8c5F+XjHENIXcbWU6G7udkoTCYbkxRVc4s=;
        b=IBadd8sT4dC/NBszcfQqtLG2R0vVImbLAuyjoffHfuMPfdeePfN6Xa7Uc/OkW0YOmd
         +Ioo8cjeF0KzMlGvMTnDKdutgDk6eJlH3HTRXT5gLEuFMGiKLFbCZiyZmFzQfjFlfvuo
         hdqQiXp0iMnr9UbkcCuo/YgEQTCgvoMWUH3y6vGkB2dH5BXA6dGoM+R737yfLj71xUce
         Z3BalajcFSYU6kx9co0FMa+lmdrup3AmfXgK6UWf1fc0bWxY99bAUvqtkzYG7A6NPqkG
         vfzzPVv7+NKAbAgNoR2PEQdMSnPEfw8G25dgcIJnPIV7neOzJdN83ENGXIMW91laGN2H
         fXzg==
X-Gm-Message-State: AOAM531vKslRFnHQU+R1ETs5DaKrWDmgSiO1MrWbRuxDsalZf00jeMz/
	3pdT17Z6Tic5br+jdUU7cb6E2ifTRdegTw==
X-Google-Smtp-Source: ABdhPJwPvNZjU/ePwwCjvu5GG84zhcr/kprPWiIfEPKfVbqP1vt0z0U4foQPnLkkDBqiyOkRviju/w==
X-Received: by 2002:a5d:42d2:: with SMTP id t18mr759597wrr.258.1616435787574;
        Mon, 22 Mar 2021 10:56:27 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:5915:a721:ad3c:1822])
        by smtp.gmail.com with ESMTPSA id n6sm23800173wrw.63.2021.03.22.10.56.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 10:56:27 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [error-report-web] [PATCH] Post/parser: Use bleach to sanitse XSS input
Date: Mon, 22 Mar 2021 17:56:26 +0000
Message-Id: <20210322175626.307889-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of searching for "<", use bleach to sanity input to avoid
any XSS issues.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 Post/parser.py | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/Post/parser.py b/Post/parser.py
index f411e02..536e872 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -9,6 +9,7 @@
 # Licensed under the MIT license, see COPYING.MIT for details
 
 import json, re
+import bleach
 from Post.models import Build, BuildFailure, ErrorType
 from django.conf import settings
 from django.utils import timezone
@@ -19,21 +20,6 @@ class Parser:
     def __init__(self, data):
         self.data = data.decode('utf-8')
 
-    # returns true if the values contain '<' char
-    # Ignore the failures field (which is an array anyway)
-    # Ignore any non-str fields too [YOCTO #14208]
-    def contains_tags (self, data):
-        for key,val in data.items():
-            if key == 'failures':
-                continue
-            
-            if not isinstance(val, str):
-                continue
-
-            if '<' in val:
-                return True
-        return False
-
     def parse(self, request):
         build_fails_logged = []
 
@@ -42,8 +28,14 @@ class Parser:
         except:
              return  { 'error' : 'Invalid json' }
 
-        if self.contains_tags(jsondata) == True:
-            return  { 'error' : 'Invalid characters in json' }
+        # Bleach data going directly into the database so that
+        # displaying in any of the graphing doesn't introduce XSS
+        for key,val in jsondata.items():
+            if key == 'failures':
+                continue
+            if not isinstance(val, str):
+                continue
+            jsondata[key] = bleach.clean(val)
 
         b = Build.objects.create()
         try:
-- 
2.30.2

