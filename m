Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.11614.1593508175527625452
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 02:09:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tnae9ULD;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id a8so14248465edy.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 02:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iVMg/+uDRa3MwPKuEYA8UbgKmnaxxyyPBI0VN5ggqYk=;
        b=tnae9ULDeTFcv6y3PMA4w0aSZnEx48Xp28y2gkATR20MI3ssvm1SSWoA4VO/NPIxOe
         M7dT1MGk/IAskUISXYd3/1cjKuysEsrM2F/ML8su6o+RBaZJ/yrrI9d5YPRfEX2jxXmy
         8sfQcHw/WWNj1zVScbqpAL8fUsj5IgIrvVlQkRjNoLkA98bhPcIHX1Ms6oe0P/DX3sk3
         yXLYdxIfcS1Plp0mQ8VUYARgNoVm7PX3uI0d/Gxo30RgNMduSHPmvtO7lQBW34Wia1dF
         0a5tjPPBH9mhpYVBnYpQJFLby4C14CnWguYmAfBUELwX62Qt485ZqwZYKck8jy36As1V
         RhFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iVMg/+uDRa3MwPKuEYA8UbgKmnaxxyyPBI0VN5ggqYk=;
        b=bcdPfHNL5zXhBlVwNNLp2DSx8KthyBVxTDclAizAkgzmi3KTkpe32b9rrv9SM/1TSP
         ReKoe2sTf3qRMNCM+kvmAPh5x5b6bj5CjwLHNgiquj7oK0e2emotjuA9TVzIwgzRXbKh
         1REg6PekzQtsFtPXWqV2ZqYfbTYeD6CEHsToyjsSAB/9ujAAn1Hg+0uMLvxG9wOEWft4
         tl6dnyUcLHajiY0v0qcHIEQseSoOz25wIGENnZrp+tBf6jlg3yOMsmsp/QL7KOlIfQ3o
         I3EWvjJf5xwJh7lqoOwV9gWM19MpZAmlXnhNg1HIhJ2KHtLbiPPyFjdktsgbT1zHqDUo
         DLmw==
X-Gm-Message-State: AOAM532LN2DG4FzhAbfLFniqYiSk/f5/4J8/cI5s5eh8Bx+tcOWsa2ij
	nfy6+k5CpYMYLc9eExY6Y4NAtoQhaVA=
X-Google-Smtp-Source: ABdhPJzovBK3bj7puO+G89GocdkcPdzYxXEpqSI9jNJnsQSAyH4k0CDG2uhNf+o0GgIw/LH5n8fawQ==
X-Received: by 2002:a05:6402:1803:: with SMTP id g3mr21025273edy.377.1593508173947;
        Tue, 30 Jun 2020 02:09:33 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id p14sm2090101edr.23.2020.06.30.02.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 02:09:33 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [AUH][PATCH 2/2] upgradehelper: use a separate setting for CCing recipe upgrades
Date: Tue, 30 Jun 2020 11:09:11 +0200
Message-Id: <20200630090911.8813-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200630090911.8813-1-alex.kanavin@gmail.com>
References: <20200630090911.8813-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Previously it was same as status update recipients.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgrade-helper.conf | 3 +++
 upgradehelper.py    | 4 ++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index 98ef58f..e926300 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -31,6 +31,9 @@
 # except when recipes are owned by specific maintainer_override entries above.
 #global_maintainer_override=john.doe@doe.com
 
+# who should be CCd with all upgrade emails (optional)
+#cc_recipients=john.doe@doe.com
+
 # who should get the status mail with statistics, at the end (optional)
 #status_recipients=john.doe@doe.com
 
diff --git a/upgradehelper.py b/upgradehelper.py
index 061d18d..c2480f1 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -321,8 +321,8 @@ class Updater(object):
             to_addr = pkg_ctx['MAINTAINER']
 
         cc_addr = None
-        if "status_recipients" in settings:
-            cc_addr = settings["status_recipients"].split()
+        if "cc_recipients" in settings:
+            cc_addr = settings["cc_recipients"].split()
 
         newversion = pkg_ctx['NPV'] if not pkg_ctx['NPV'].endswith("new-commits-available") else pkg_ctx['NSRCREV']
         subject = "[AUH] " + pkg_ctx['PN'] + ": upgrading to " + newversion
-- 
2.27.0

