Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.13572.1591802942134664626
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 08:29:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ZAa1O3oz;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.182, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f182.google.com with SMTP id t7so1095397plr.0
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jun 2020 08:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=CnuhIYuI0NWdwWr1LlR5LB22b8QBn33KyeeKtrq30Y0=;
        b=ZAa1O3ozwE07llubs+GCllM49QDNhU+mMrge8h/GWC19fNQxbSZMI8QVYdKvSG2HxF
         6UyKDPHJIPp/bTO8S5+rnVXJiyjpiVnQHXzDK8gCFLvIbcMCl1agj1uMZrvgUTFoCiWt
         umGyxGGdq3i7owQF4FVYUUtB5iHkVQ9/pqeivuxYcZx1lyihTTBVOEVzWG1iTBHqjao1
         EFNP6n/Qk2BzvCCLSH3Yw1QJqNgsGc6OMNtqqb5M9/7i9Hyp5VnH6dicRxsjqMZq6mjs
         vuNwzAaStAwHEhzLCYv9vnrGS5G8ei0vR+wXEylbQ/rZXpstqGnZF4K/9Kw2Mr/O6/il
         sXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=CnuhIYuI0NWdwWr1LlR5LB22b8QBn33KyeeKtrq30Y0=;
        b=EUyruyg/1Y4TjbunqlYjyAZdGsL3ErNcKGThhihtkt9MO0HAMTGdmJb7uWP92GH3RZ
         EnK7B1cBMZkyH5t7dKaWYg2eGnRSHUjVLlutNUJQClYlbRLH/6dUse02Isfnzb1kZpu1
         PET8N7nqqmCj3UVGMWvkUD5G3amfGBRIDByJXmdSrrhwqrYIOoG6gtOXjN3yH6tbVfU7
         1sbJomAxw2tnwfh5qDtEMQTJoVzTjz6LjIRcQfP577lWWzo7M6E3G9slCG4iA2C1TKrH
         nqwN8fZIqAbiHikcfYn+klyOGGitK5tl1pSSzYmvb4VaDok2nn4aqf6lnSVRTzXD45mp
         vV1A==
X-Gm-Message-State: AOAM531VPRQA2k0R8kDu1guj7Uz6IMROS+CpBMLoq0J84D+afZbJFSek
	bnOEjAS2KxPHYaGcYggufpv+r3ZS6eI=
X-Google-Smtp-Source: ABdhPJysZ+f1cOF76AhNkOe6IPEgiIr7j66gzPYcGboIn2wkz9b7GYirdj0ovFPMLYiNCjHnZV/VGw==
X-Received: by 2002:a17:902:b706:: with SMTP id d6mr3537469pls.304.1591802940986;
        Wed, 10 Jun 2020 08:29:00 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id n11sm248024pgm.1.2020.06.10.08.28.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 08:29:00 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: add steve@sakoman.com to QA email list
Date: Wed, 10 Jun 2020 05:28:41 -1000
Message-Id: <0f247cf211b0768414196effc34a3b44825512d1.1591802816.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1591802816.git.steve@sakoman.com>
References: <cover.1591802816.git.steve@sakoman.com>

---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 17acc09..9636ea1 100644
--- a/config.json
+++ b/config.json
@@ -16,7 +16,7 @@
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
     "QAMAIL_TO" : "yocto@lists.yoctoproject.org",
-    "QAMAIL_CC" : "otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com",
+    "QAMAIL_CC" : "otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com, steve@sakoman.com",
     "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
     "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
 
-- 
2.17.1

