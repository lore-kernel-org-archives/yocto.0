Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web09.7884.1632232478488847468
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 06:54:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=NzELuYaU;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.179, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f179.google.com with SMTP id f129so20771897pgc.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 06:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lw9HCP4reABRsddYgJK/vEmAvEgPbnvi3dOouTKZvPM=;
        b=NzELuYaUyd386OJQcQY6pyHUPT1hGxghVxBKJJ1f6tNUb0rvodQ2SHjlnntMXtho1q
         CVxfc/BxciIo46nh+4R5D3dMSj2P9O/97GSXd0Pg5u1lWv0YVHSUObxCR0R/vaOKUVYn
         scBhMzKETM5Gt85AWdiMaZxeYMXVE4io9wEXgTNtManX6vri0Epc+t3zvZKJLP7sO3hd
         /C0XOykbtugPUebKD8CzvVYFJpc1coWKDJqoVKmHEF1YujK/w865TIMkPacYwQwwq/yN
         ip/DsuEnZ9mkg1OybbHZYTZZQmhGrvqoztxrA3uCUCStx4icqk3Kg9y3yk/WOhGSAjaN
         LahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lw9HCP4reABRsddYgJK/vEmAvEgPbnvi3dOouTKZvPM=;
        b=oasg8B51gxaoELTkjsDYL/u74VEL8AKnJwgY6NZYP+UJSFlpVhOBbGji+CKJ9rsWFq
         6pINhF+IKwulnlRrE3c1NK4o/YqY4a9+Lb8klx6FgUSu/D2UwSr/I5k4EuMy5QJEqZ6v
         9Fxn0C4Y4H+FqY0kaUzVDJgOYivzYuUHtreEnNYyNNBEF+5XVZM0Iejyds/SCkKrCH7r
         HtdT+IqQnD4XNbD1OoNVJLtwZIml46NgRcnifNsQyVB3KnWme4icFtM6Uw0Lodg/8w31
         WNI7PXdUjhbC7rs4bbdMKOIuO8OOGliarJbGiUp0qTMNtvEJM8gO2tlttCCNKw+5tiOz
         F5ig==
X-Gm-Message-State: AOAM531UYK9Tc0rqCYn5UQF2gFfBle23vnfw8qSMElUOGFQsjiNUY9Kj
	LcCio2ZaWxfFNioLUZbXBoCaS1Lnguq8j75uKl8=
X-Google-Smtp-Source: ABdhPJwBGJtWZfZrHyspbiWNY7csGqLyNkvNEZOtCvTJWRYnq6zaCxOtOGTfbWD5Wtt+YMAYvi0PMg==
X-Received: by 2002:a65:6389:: with SMTP id h9mr28310041pgv.83.1632232477019;
        Tue, 21 Sep 2021 06:54:37 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id c24sm21076806pgj.63.2021.09.21.06.54.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:54:36 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: Add BB_HASHSERVE to SDK_LOCAL_CONF_BLACKLIST
Date: Tue, 21 Sep 2021 03:54:19 -1000
Message-Id: <e606fde003ad9ae6cffa61acf1b60775ab0ba6a6.1632232323.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1632232323.git.steve@sakoman.com>
References: <cover.1632232323.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This should avoid issues with the hashequiv code attempting to contact
an non-existent server in the eSDKs built by the project.

[YOCTO #14471]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 4db17f4c9da4efb48d428256efb696d86935a3ea)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index d871349..571ddae 100644
--- a/config.json
+++ b/config.json
@@ -55,6 +55,7 @@
             "SANITY_TESTED_DISTROS = ''",
             "SDK_EXT_TYPE = 'minimal'",
             "SDK_INCLUDE_TOOLCHAIN = '1'",
+            "SDK_LOCAL_CONF_BLACKLIST:append = 'BB_HASHSERVE'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'"
         ]
-- 
2.25.1

