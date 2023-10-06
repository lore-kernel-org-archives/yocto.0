Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5216FE9410D
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.4019.1696622371740939493
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hrNjXoML;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-578e33b6fb7so1796693a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622371; x=1697227171; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+nWfF0alIzEM2LPLkRis9qjzS8fH4Wtpvd7f2GyCcA=;
        b=hrNjXoMLge0MAvj9S/uPA2JftgbxBqvtPvNR2rOVuRuhdmTXDf2GM/gSqvm8Yjihff
         vEo15ePWygh3HSKGPThnK/EdDQxGX2wEEAs/n5qbd52fSlnhlw6U4oxbJSkLZ+tmzlIe
         FPtD6itTE/E48GupTSzBCb+Um1iN/bb1caFKSKQ6U4eo8ScDwLthRDdi8PXbH9lP5PMx
         JfDCAZRRbUVW73+GAe1Jr6RpCpLANqmoAOI1yIiys3+jBvlMBr5uFZ7v9hks7/x+XAjf
         zaxsFJwlxnY92efmmOTE6sJIIxOOJ9FY7/ojx+wjy2R2BJbTZ7SmgMPK2qFu1m3GRx2T
         Agow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622371; x=1697227171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+nWfF0alIzEM2LPLkRis9qjzS8fH4Wtpvd7f2GyCcA=;
        b=FaEZjBxe77ny2dV39VzK36WVUkzAi8/eh2glNFSf3XCe6jLGsDeF1mtvAG2lxLe11Y
         8NDTus168J1DMROhdb39N+5VIUyyqFbODgT8HAhJwo2N6n5cF1b/bvK7LR1vfdJ9FpSG
         8uq8u2YjJ9YVBi0W3847OgPo+GdSJs5EgYy4oiAwrRhupHKeUYv7Rxt3t9o5Wn2urR2b
         v9fOMdjC9KzBq4xwKMb02cSsAczuZUjvjnBRT1DdZr82q7hV1pP05cu8YJuBxKt2KHrt
         SZE6dB4ztg9Hi1siC21WPjF7Wt8uLN+kYdtBLCObv/1rlyBRSWiGhVsEv1mHYZ52P2Uy
         Cbvg==
X-Gm-Message-State: AOJu0YwJ6Wjf2IMMHPpRVYLWYHGyXgQFp03Fp355OZedz8r52FYNymg1
	OXBv10Ov5Ju2Gu/5RGkTKXd1PUR8QQM=
X-Google-Smtp-Source: AGHT+IFM1zu23a0sv5glxvNJFmnnmtgKt+mpHmiNyLDwR9aRmpSNtNDNyx/wY4aSXX11NZsm3Q+2Pg==
X-Received: by 2002:a17:90b:3b49:b0:26f:c6d5:3cd4 with SMTP id ot9-20020a17090b3b4900b0026fc6d53cd4mr9072946pjb.43.1696622370845;
        Fri, 06 Oct 2023 12:59:30 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:30 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 03/10] Drop django-bootstrap-pagination: incompatible
Date: Fri,  6 Oct 2023 12:59:06 -0700
Message-Id: <e86a2c2610bcec7f1fa11c57309e0c5127c96446.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61267

Upstream django-bootstrap-pagination is no longer maintained and is
incompatible with Django 4.x.

https://github.com/staticdev/django-pagination-bootstrap was archived on June 26, 2023.

ugettext was removed in Django 4.0:
https://docs.djangoproject.com/en/4.2/releases/4.0/#features-removed-in-4-0

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker/settings.py | 1 -
 requirements.txt   | 1 -
 settings.py        | 1 -
 3 files changed, 3 deletions(-)

diff --git a/docker/settings.py b/docker/settings.py
index a3f007d..a73178c 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -161,7 +161,6 @@ INSTALLED_APPS = (
     'axes',
     'rest_framework',
     'corsheaders',
-    'bootstrap_pagination',
 )
 
 AUTHENTICATION_BACKENDS = [
diff --git a/requirements.txt b/requirements.txt
index 072c2f1..40f696c 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -6,7 +6,6 @@ confusable-homoglyphs==3.2.0
 Django>=4.2,<4.3
 django-appconf==1.0.5
 django-axes==5.31.0
-django-bootstrap-pagination==1.7.1
 django-cors-headers==3.11.0
 django-ipware==4.0.2
 django-ranged-response==0.2.0
diff --git a/settings.py b/settings.py
index a69eb53..fa303b1 100644
--- a/settings.py
+++ b/settings.py
@@ -161,7 +161,6 @@ INSTALLED_APPS = (
     'axes',
     'rest_framework',
     'corsheaders',
-    'bootstrap_pagination',
 )
 
 AUTHENTICATION_BACKENDS = [
-- 
2.34.1


