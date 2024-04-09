Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A407CD1297
	for <webhook@archiver.kernel.org>; Tue,  9 Apr 2024 23:56:24 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web11.154112.1712706982578383428
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Apr 2024 16:56:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=qar/Pv3Z;
 spf=pass (domain: konsulko.com, ip: 209.85.214.173, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1e4149e7695so21270785ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 16:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712706981; x=1713311781; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=arf35/MAE1hkVxPH7Z4tfW1N9yORBfjpxNeF0NI2hCU=;
        b=qar/Pv3ZUyCCCR2TaQCs/25grsxfb37suJgz3MYvxYudc5bXy3NNFT+nyUVlYKR5JU
         U8tGoQk72Exi0LCukZolozqWfO14UYubf6l998SJ8ZtepYwP72463RRXcEVPnl3qErZD
         1SbzgKnCV0Gz4cTayuJ1I+KcbbwKr5anueZZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712706981; x=1713311781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=arf35/MAE1hkVxPH7Z4tfW1N9yORBfjpxNeF0NI2hCU=;
        b=ui91NlFohU+Dy9LzYT4GZtblmOItojh93Rmb2xkOMenHfwlJ/kmZb3PefprxlW52uW
         1Pe2K+Fy/tVpZdo6lsYLoLmmDGhCuXNxE3jvFKYvufgcO34w/ODEIhxPDk4LGXnSlXPn
         EDCreIL6fd03P9jBgbS0bRY6HVjb//FEUFVBgkC1JQ3NG3KsiPHhYXNkha24zkW9Sai5
         5tHg2E4iAeB4Gce96DPGdN2EOPP4G0Av78nZXwSdZ9Z5IYuH5TMZT+H5en6zEURFvmbs
         Y18bg+Uyi3S0l9YVbjnRigekpylIbREfvekCotThhkorlZLiPXIuTloLwD+DiT3TtDD3
         lT9A==
X-Gm-Message-State: AOJu0YxzyRW+sUJrr9KJCY721jyvQb0ELL1TmzaWny1LB6gxkWhqgUqC
	AvmlNv99gCTCLWxQBQ3cnM4FcOlIrdfUpTtlYYyD/ZcWB6RUAwsBGlXr0adcXw7P7m8W851nQrE
	9YRYBfA==
X-Google-Smtp-Source: AGHT+IG/faKOhb2xCYab8VgRD1g4JB/cWK05QWktr0vcp0+KXCm2QA0XQWjhykSCchNJXzAmaPoLsw==
X-Received: by 2002:a17:902:c94d:b0:1e0:fcf9:95e0 with SMTP id i13-20020a170902c94d00b001e0fcf995e0mr1133287pla.20.1712706981285;
        Tue, 09 Apr 2024 16:56:21 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:e542:5f69:39ab:4604])
        by smtp.gmail.com with ESMTPSA id l8-20020a170903120800b001e447bf336esm4051233plh.282.2024.04.09.16.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 16:56:20 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 2/3] requirements.txt: update all to latest
Date: Tue,  9 Apr 2024 16:55:44 -0700
Message-ID: <20240409235602.3362257-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409235602.3362257-1-tim.orling@konsulko.com>
References: <20240409235602.3362257-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 23:56:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62908

After running "pur -r requirements.txt"

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 93e4e53..6090ea8 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,39 +1,39 @@
 amqp==5.2.0
-asgiref==3.7.2
-beautifulsoup4==4.12.2
+asgiref==3.8.1
+beautifulsoup4==4.12.3
 billiard==4.2.0
 celery==5.3.6
 click==8.1.7
-click-didyoumean==0.3.0
+click-didyoumean==0.3.1
 click-plugins==1.1.1
 click-repl==0.3.0
-confusable-homoglyphs==3.2.0
+confusable-homoglyphs==3.3.1
 diff-match-patch==20230430
 Django>=4.2,<4.3
 django-appconf==1.0.6
-django-axes==6.3.0
+django-axes==6.4.0
 django-cors-headers==4.3.1
-django-ipware==6.0.3
+django-ipware==6.0.4
 django-ranged-response==0.2.0
 django-registration==3.4
-django-reversion==5.0.10
-django-reversion-compare==0.16.2
+django-reversion==5.0.12
+django-reversion-compare==0.17.0
 django-simple-captcha==0.6.0
-djangorestframework==3.14.0
+djangorestframework==3.15.1
 gitdb==4.0.11
-GitPython==3.1.41
-kombu==5.3.4
-mysqlclient==2.2.1
+GitPython==3.1.43
+kombu==5.3.6
+mysqlclient==2.2.4
 packaging_legacy==23.0.post0
 Pillow==10.3.0
 prompt-toolkit==3.0.43
-python-dateutil==2.8.2
-pytz==2023.3.post1
+python-dateutil==2.9.0.post0
+pytz==2024.1
 six==1.16.0
 smmap==5.0.1
 soupsieve==2.5
 sqlparse==0.4.4
-typing_extensions==4.9.0
-tzdata==2023.4
+typing_extensions==4.11.0
+tzdata==2024.1
 vine==5.1.0
 wcwidth==0.2.13
-- 
2.43.2


