Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EB76E94115
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:48 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.3934.1696622383376466011
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C7ZKZ/Ul;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3af6bd48093so1681883b6e.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622382; x=1697227182; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OjAYWM4DMuZTDc9/NwhfjFJ+mKNI1Pov/5JoxD685UI=;
        b=C7ZKZ/UlujV1Wg9tbQKGWVy4phgyl6hS6W4NTrs/rtdYlHa6qZ0rLlcAkG+nJnwT2R
         aX62b2fDQGm1N4tUEPqhuRO4QUBOM9Vh9hzCANgwKyqyE8XrDv+ieM+BP141g8hFr21k
         tlmfiUnMFSe2tzkjdQ1VMwhKSkkA1O0tI5R5qYMsn/skOXvZxF/xwTtiEo/aq/Nc0IMs
         6RDC01kanPquhf4rhskIdVA70AHa0sNZxTnUnnckzD7UHeugYCvdByqPhHoL9b5foKGc
         WCLon3XiWqIIcRHF3wyJ5KOM7h9h8oLimlkFB7xrFoxrpo/hHIDqqt5w6vWG5G8+o0+T
         6sgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622382; x=1697227182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OjAYWM4DMuZTDc9/NwhfjFJ+mKNI1Pov/5JoxD685UI=;
        b=RGFBZiSyrZxAy/bGLFwxnCybB0+S468cUg/HwHK7vdh5zQQqilFL7CRRWNqxKQK4Hi
         gKhU+iPXdtqddnnhhl9nK3jQe8TnSLa9094MHcMM1FmIJVYo77rRbZFEJSltVjGAmqUh
         yvMMbIBOYdncl0m0NQYG0aRP6dlSFtUKQdaNiYh6brX/0xj8xNcC+6TfrkWRYN5nZUbA
         Sqh7PqT8Hmv66+wixzIWKy9ksDNIsaY3cRINK3o/oGEy2GmGXm8Z2U8v/rDvuJRVlH7o
         XBGe/PW7u4JcGo+8gTNg+9I+UzfUlBBgrW0Y82y0Oj3/p8IW/3109D6une3NLtC/TX7F
         diQw==
X-Gm-Message-State: AOJu0Ywv6VNXo/kgfakXyiT6BHk15L9clz3t9vo1eqM5k/6lD2tArUSB
	A7MfnuFBwM4dsej8rsewEy/lWisU+5Y=
X-Google-Smtp-Source: AGHT+IGtQfsYzhoYRFV7RN0SwjqFJyostEeH+XYtAUwI4TLpThMbkAARo/32AdhsV6eR4O5/Qz99Ew==
X-Received: by 2002:a05:6358:716:b0:143:897e:6e31 with SMTP id e22-20020a056358071600b00143897e6e31mr7990808rwj.7.1696622382359;
        Fri, 06 Oct 2023 12:59:42 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:41 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 10/10] docker/settings.py: add CSRF_TRUSTED_ORIGINS
Date: Fri,  6 Oct 2023 12:59:13 -0700
Message-Id: <378ae0d018d956e5ae242844bed48087d8d37831.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61274

In addition to ALLOWED_HOSTS, we now must have CSRF_TRUSTED_ORIGINS defined.
This variable requires the scheme (http:// or https://).

Like ALLOWED_HOSTS, CSRF_TRUSTED_ORIGINS is a list of strings, with one
entry for each host which is trusted for POST requests.

https://docs.djangoproject.com/en/4.2/ref/settings/#csrf-trusted-origins

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker/settings.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/docker/settings.py b/docker/settings.py
index a73178c..33ab332 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -307,6 +307,7 @@ TOOLS_LOG_DIR = ""
 
 USE_X_FORWARDED_HOST = True
 ALLOWED_HOSTS = [os.getenv('HOSTNAME', 'layers.test')]
+CSRF_TRUSTED_ORIGINS = ['https://' + os.getenv('HOSTNAME', 'layers.test')]
 SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')
 SECURE_BROWSER_XSS_FILTER = True
 SECURE_CONTENT_TYPE_NOSNIFF = True
-- 
2.34.1


