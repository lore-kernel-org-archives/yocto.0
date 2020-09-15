Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.2459.1600191064117246691
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 10:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AD7kt39U;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id o8so6208654ejb.10
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 10:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LmXyHQmDuOyZmdR5Vi9LQIEkGj5QQUBLqSzuiBrvElo=;
        b=AD7kt39ULmoctsHMxtAmfy7glh/lJAeDj0lfXaNeMcYf3Zo0cPoLqiN/V1YuXdRn9c
         RUQSvHlVWs4/3nxGkilLIOpYyWoKMdNNMYUi6INl+hyPgHhPdsfb6zRDjh5zE5BX8MG+
         hg/heQ7FLjCSJNrzgWCIi44q8tSBBy4EU4/ymaBwrEkhQ9i4LTB1XbytwKFwsAaX6xbA
         MPSk0JdhoyhtS14Q0TN/mR5Mn6ICpc2yQGGCgxHnoMimrB1FM6RzPnn9yZDiM/XRirvs
         a0Scui7qTo9H1LUOXmCrPOR7c1gSatpRbnWbsACcP10F0jUALLPJF6uFaEyifsPRUwZQ
         H5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LmXyHQmDuOyZmdR5Vi9LQIEkGj5QQUBLqSzuiBrvElo=;
        b=T+lGN1dy6UhCpg819QEVCwwdAGctSTOJY5g+nm84ROSSw3ddpuWgP0sweZDpbOMYwx
         g8mnYQF/F6oaVZLa/4Q+Jv1TJk+L728GwHBIRf9RxJwKHZSEQYXD9UwGvB2B4m4iVFZE
         krR80Ztwyz5QUH+AyecoMvy2iB8G5F3ZU1fn7joYX+RGUT25aR7GM8K6LgQors0A5Eau
         yFxX55dG5d4Zt1Zd7wbOiTaU3aWoOPJk66x4gHXbcXD/rHCluYI6h6V3b21zpvuPj2Hq
         /BU/CGaCxdFTj1eEoS94lJm2voGBEYXfQXUPwxXiH/n3Ej2Hen5ff0t5Kim5MwwZXLn2
         ymRA==
X-Gm-Message-State: AOAM5316+S1Z1xdlIDoLD3wKzPYWqHNfKDlDW2TeoqtbVN0eea7P49k3
	o7+t/fV57/ln2XLpyi6ARrtrCRJT0qTgGg==
X-Google-Smtp-Source: ABdhPJw2btey4/8LwlfcDWS91h5ERabv37vMBxdWYEylvfGie1/LsGijkyCVPLnVG6dfSiLnC0Ztog==
X-Received: by 2002:a17:906:4951:: with SMTP id f17mr21075542ejt.29.1600191062293;
        Tue, 15 Sep 2020 10:31:02 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.box ([95.168.147.4])
        by smtp.gmail.com with ESMTPSA id v18sm12060000edb.26.2020.09.15.10.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 10:31:01 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [auh][PATCH] buildhistory: do not error on version-going-backwards
Date: Tue, 15 Sep 2020 19:30:33 +0200
Message-Id: <20200915173033.26706-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some situation this may happen in initial builds and
should not be treated as an error.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/buildhistory.py | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/modules/buildhistory.py b/modules/buildhistory.py
index edf9ae6..6649023 100644
--- a/modules/buildhistory.py
+++ b/modules/buildhistory.py
@@ -40,7 +40,16 @@ class BuildHistory(object):
 
     def init(self, machines):
         for machine in machines:
-            self.bb.complete(self.pn, machine)
+            try:
+                self.bb.complete(self.pn, machine)
+            except Error as e:
+                for line in e.stdout.split("\n"):
+                    # version going backwards is not a real error
+                    if re.match(".* went backwards which would break package feeds .*", line):
+                        break
+                else:
+                    raise e
+
 
     def diff(self):
         try:
-- 
2.28.0

