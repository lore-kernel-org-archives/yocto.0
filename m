Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web08.20861.1626649683789500755
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SRghP7wF;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id y17so17124457pgf.12
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9KnyrkT+sJBOjXfULTEpIIN1QEMgOSoq9Hn0SPOMkY4=;
        b=SRghP7wFhlCpZ5kmsBamlFXRzzhXHrkBNEnrRmaEeX3AUi81BWdYv4dAMEy1W9ysS9
         5cgpBE5PQkkvBn8I7y0qBnAB/sok20oSf1Gqne7DcXcrCN8KP+Tl6080tulZeCaXiSEy
         DRL6qjv2KHo4dKwXi6M3JC+m2Lpwvl14b1lqTVF45rfxbKcJE4ZD78ywc1Ci40hE68Tw
         xmaotqmry0xmQp/AmOKW/ITnwbgz9S4R1PwrQSjDOGhKW01eX5Rmb4ei/bfrYFoTwW+c
         ayARVBx9hdSojJEx+qenQrHqqwipg/DVEU345+vMSGEih8D/VTqvv4e4rqRIh6ouikNe
         1k0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9KnyrkT+sJBOjXfULTEpIIN1QEMgOSoq9Hn0SPOMkY4=;
        b=ZZ2sd9eteqVD3Pcie6udi6ZoBX3LAN/W5KlUOZUwdfg6dmZwB/iJWSLO6mi3zViiRO
         4GvZGBr1ktsHCcjfruIjtD08tg+gVPiG78oWRCgscSnNAe/xZNhAGjUcYybFQbMfUaFf
         73uzPdeeRJzyArPQNQM7np8xvNB/Zkk8kZUYBV0uzcTwekpV9W1tu5W6i5HFzzoRpZMb
         XxhZnW4/dIaV+Lm8gp0xIFdw6RDDfL2FGdQboEr1IriL/cO35xgvv1iHKHwe2BMzHsI1
         77RgVtCe8Or3u/otfw3rlu8zVNP/GY4Ytel/0hG7KB8LtI63q/vGfkxV66rFr3kGCTHs
         PgWw==
X-Gm-Message-State: AOAM531x28OAICLWzfJvZj9OkAn8DnJ5TqIrbBOccZ7vzefD2LJ1nwtK
	p6hBrbUQyxXe3zpwbxay7vkOjdkW4NUbcw==
X-Google-Smtp-Source: ABdhPJyegN3+dZ29I+bn2aKUQGvb/i6fE1k7yXSXDse9VsqCccsVf3+Fs/6NLQ/BY9d31H/UGNOWBQ==
X-Received: by 2002:a63:f711:: with SMTP id x17mr22322078pgh.226.1626649683182;
        Sun, 18 Jul 2021 16:08:03 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:08:02 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 13/15] settings: set DEFAULT_AUTO_FIELD
Date: Sun, 18 Jul 2021 16:07:18 -0700
Message-Id: <6f5d1e7fa47eb6ebf466a9fedc5cdb4d09dbcb0b.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New in Django 3.2

To quiet warnings, set DEFAULT_AUTO_FIELD to the
default value 'django.db.models.AutoField'

NOTE: The default value for newly created Django 3.2
      projects is django.db.models.BigAutoField, but
      this causes the need for a migration in 'captcha'.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 docker/settings.py | 3 +++
 settings.py        | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/docker/settings.py b/docker/settings.py
index 894974f..a3f007d 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -140,6 +140,9 @@ TEMPLATES = [
     },
 ]
 
+# New in Django 3.2
+DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
+
 INSTALLED_APPS = (
     'django.contrib.auth',
     'django.contrib.contenttypes',
diff --git a/settings.py b/settings.py
index d03d15c..a69eb53 100644
--- a/settings.py
+++ b/settings.py
@@ -140,6 +140,9 @@ TEMPLATES = [
     },
 ]
 
+# New in Django 3.2
+DEFAULT_AUTO_FIELD = 'django.db.models.AutoField'
+
 INSTALLED_APPS = (
     'django.contrib.auth',
     'django.contrib.contenttypes',
-- 
2.32.0

