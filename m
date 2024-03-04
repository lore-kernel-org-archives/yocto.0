Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EF6CC48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:20:20 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web10.101543.1709565616539870508
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:20:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=QqmcBEWy;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.180, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-5ce2aada130so4047809a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1709565616; x=1710170416; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6w/a25f0yCwjikGLSovPygAT8adjzQR3MaVlWQoJUE=;
        b=QqmcBEWyEWbLNYD6nR28pwWrGVuR1KcWHqT8oKfionXMXxSI6v77rc5+StK7KVdOWK
         RElohjHZiC/Hgia+Z/a/0K+Vd+e8nOzuAqwvYmEXOXF8jUI7OAMYZFMyjF/1YcNuez+C
         bdmJcnUG2SALxH7xe5oxqtpqQZgBqgxIQIRBHgjfjpOlfmHp6nNqJVwpr0wX25zmUWQn
         FbQGZvMsxVXrgN7GvuPzGi2o6rnhZ7wTnqZMqESqz4anmzZrnkHhvS0PjTOEIqekCdy7
         X2NF9S7czzEyngGE/a52Y5W1mKxYu75wbcUskk8yJWslFtTsmuneUMrxhJXbAFDFcZty
         DMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709565616; x=1710170416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6w/a25f0yCwjikGLSovPygAT8adjzQR3MaVlWQoJUE=;
        b=gkbgJcEJf4I5x5i04GiEoE21DE1b5BkRZOLyBfIU7Lv19x2T0jGzl+ZDjBO5awTJ32
         YhWzyQqmrYXnP8yQ3/+Wqk9oX1Z6fHKJXPiTR5sUOPMEecBGBzfLGfCIQmamCB0dBsR7
         rjNLFDub41U4ZkwufihFHQPtRB4qbUQlInix90I63WpAL0cZJCzoQOdfksZOtkLjnHs0
         e8Lhc0fxscpEwuvv8VMtOY0TTfhhiBKWuAEXzkLuLeMQ94oIB3/R/zt0+5glCEm34T9W
         /g3pAAg0dZa3mMVZmU2/IhvcDfyzn+dtsZs9/jeWl60+iLmOLbMGFhY8iOXpaXKExicI
         MINA==
X-Gm-Message-State: AOJu0YwkmvRGhwrxcgYMQoSVEwQrlrffc06D1jFlzkVvZy3QGUWzfkVA
	TsKJYRbrmybkMIzB6ddZKaip2yZGqMhyU5MIgvRZDrvvJhAHdiQmIxn9Y1iwvQEJewBE13mPr25
	ytFM=
X-Google-Smtp-Source: AGHT+IFYYVe4yE75f1S8SEozjp0sjnHdKVnME1QggCIlkKmUu07upHFF1PRC4gDjdD+3QL0RS7DaYA==
X-Received: by 2002:a17:90a:d258:b0:299:14c9:94f0 with SMTP id o24-20020a17090ad25800b0029914c994f0mr6244946pjw.11.1709565615841;
        Mon, 04 Mar 2024 07:20:15 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id h16-20020a17090a051000b0029932d64c2bsm8868360pjh.17.2024.03.04.07.20.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 07:20:15 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone 1/2] config.json: update to latest buildtools tarball
Date: Mon,  4 Mar 2024 05:20:05 -1000
Message-Id: <9ef7fa0ff71686c291d8234626c8666158d7ad00.1709565401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1709565401.git.steve@sakoman.com>
References: <cover.1709565401.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62667

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 7c53c46..4b7ee34 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20230223-18/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1+snapshot-9c07de0f20042c81496185293857284048d7912c.sh",
+    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.3.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.34.1


