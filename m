Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.20856.1626649675312214044
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhXM4a0T;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id o4so12549037pgs.6
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cqvmU+4Cbg7VpPSBkUz56JoTrXUSl0+YC8pZK4YBj9Y=;
        b=BhXM4a0TmteCIO4rh+2XzU23f8SVv9gGgd34BnbaSFP9Y7CNsghv0iKcFcB7bgEbsP
         FMTALfYemFT0JKP7oE4rwSLH+5nuzAX7LESi9Z86EDg/4+zdNvYJt7lq00mSP8dh+nv3
         gtnGln+P45nkpsvwnpIPddpXfALKsKSmyH0r1KIzz/aMt8AjsJC/83AgMFxZOPTqtFNK
         976JsSGoei+c2upB9DA0GvrsLnoOdEEJSZ/+US3UvEma+ppspz0kWf3QzofSiOVZXwK1
         qJ+LkoS5g4zIZD8vCPNwYFk9yRlWN6LH4oaJ2JX4TzfX8xKLmDFcO39oGmC41t/1Y2BH
         Zi9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cqvmU+4Cbg7VpPSBkUz56JoTrXUSl0+YC8pZK4YBj9Y=;
        b=SqcW2OSISTekCEVvumZFpc8CQ7M45CL6ILDZwwCFGtLLHSSKSO2rLDuYS40Qmfgl3e
         KmDWTqXkwWC12ZYHIh0O+uxGLL6J/q4eqHJfNtg/XREt0nqisleidjYYcrL+fHWs4Y1U
         tr5dh1rLhafpKEOXyzonZG6FN/eZZewBZaqNB59KSQN04gtrurt14OJeTcjAWsGv8UgA
         GfPLOjaF5IWcVcEG/EVAp5K8BWjAheuusG5Mkv8t/Soeo/VDrMeGEgIXDpsGjyVtqADg
         4j2SaRphM42fJ/4KoTpOVj/47EeeTdjog1HmPYcGzPU+Mc0n/iv1hepN05COLjXnD0Xd
         O0Tg==
X-Gm-Message-State: AOAM530BTKNcOgNXwExOQA1diBq8pYvme3mfFGq0w0sYLzKWoF3xSuZQ
	DjlLueCQdZuq5PigtVxJw5IuvLcqZQ1Qfw==
X-Google-Smtp-Source: ABdhPJzK6pTjfJ3kivlovhu5gG6fQXJKqE5xGVborFYcC/ZF0olHj8IL9oTfd+LBlSZraeftFlr/uw==
X-Received: by 2002:a63:e603:: with SMTP id g3mr22149796pgh.106.1626649674751;
        Sun, 18 Jul 2021 16:07:54 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:54 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 10/15] requirements.txt: update all to latest
Date: Sun, 18 Jul 2021 16:07:15 -0700
Message-Id: <f33b96bf64211314e3e5fc0b7e375edecb2eeeb9.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since we are on a "modern" version of Python in
Debian buster container (3.7) and a modern version
of Django (3.1.x) we should be able to run with
the latest of all dependencies.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 requirements.txt | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 865960c..7704ac0 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,27 +1,27 @@
-amqp==2.6.1
+amqp==5.0.6
 beautifulsoup4==4.9.3
-billiard==3.6.1.0
-celery==4.3.0
+billiard==3.6.4.0
+celery==5.1.2
 confusable-homoglyphs==3.2.0
 Django>=3.1,<3.2
 django-appconf==1.0.4
-django-axes==5.13.1
+django-axes==5.20.0
 django-bootstrap-pagination==1.7.1
-django-cors-headers==3.2.1
+django-cors-headers==3.7.0
 django-ipware==3.0.2
 django-ranged-response==0.2.0
-django-registration==3.1.2
-django-reversion==3.0.9
+django-registration==3.2
+django-reversion==4.0.0
 django-reversion-compare==0.14.0
 django-simple-captcha==0.5.14
 djangorestframework==3.12.4
-gitdb2==2.0.6
-GitPython==2.1.13
-kombu==4.6.3
-mysqlclient==1.4.6
-Pillow==6.2.1
-pytz==2019.3
-six==1.12.0
-smmap2==2.0.5
-soupsieve==1.9.4
-vine==1.3.0
+gitdb==4.0.7
+GitPython==3.1.18
+kombu==5.1.0
+mysqlclient==2.0.3
+Pillow==8.3.1
+pytz==2021.1
+six==1.16.0
+smmap==4.0.0
+soupsieve==2.2.1
+vine==5.0.0
-- 
2.32.0

