Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.47634.1628931415425956909
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 01:56:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RmGvKISx;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id z9so16368690wrh.10
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 01:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L53DleDJ8ghzOkN7yCLNldzhsBELwN+BbxkcqcXx6gI=;
        b=RmGvKISxWUCA3hplEqRWpxvSYcbVH1cJ15DISfyyvurLIZRoAik2v4Jqv0xAjQZlDW
         GZg47BK48Q1QLlrbYSD750751kA8j7SxLyo4xnSomnyBqnzHdaJ+9prLldOfXr4Oq8aQ
         hsRX9X5ni5pCw1V8jD+2VgvU6ISHMQIJZ0VN2Fbt3E+f5R5PAPrJmqPiNqMYsVmuBSL0
         qx9liFIJRS73ztXHYoJo0WpIM6ARawS3u5qVdeCwGLQsswAuP0LcGKSiP49ZNR4iBIfe
         2lYLX7475EVYc7olq90/gmMM+GrrB3tW+ZnMv6I3EVQGlx6dyqBU4gOMIzr9DdjqDyXw
         0AYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L53DleDJ8ghzOkN7yCLNldzhsBELwN+BbxkcqcXx6gI=;
        b=SYniXVHSaD8Nejr7IHI3dmHaATTQUMCuMqUSehXJkEiqzh4lFSYVVbKvL7A6x5SADg
         gk0eS/UMs5NRMwLjSGT+z/sE+c03ypmYZTObQ5ssydz/BOD176x3TWqqxD6x3bk8Ab6o
         b+DBO5wqfxLe1kfGyz/NPB+I2eN858tKr+HSfyN6XUlJG5dnp/IWdJ1W3vKsQwK/4HEN
         FlEdXJw+vTkNuXvppkMOBGLpYCzI2616vSuSLmuaZwxPkktOgZ+fWSHRgzmSfJjVy0xi
         ixGGukaOG5BGDM5ttWIFNRQJnrI/E1Uf8WyBWhHz6tySMCrUQCNhXpVO5xhkq8iqeq8o
         jsSw==
X-Gm-Message-State: AOAM5333wxsvtLqm/CrKPe45KYv80m/R4M2ZR2BzHSvRAvDaU40q9yLL
	CqSOsE/yOKtUAX3iPVcg1JW48EIoguF12w==
X-Google-Smtp-Source: ABdhPJzwuz/S0lSxMb22fid0td57p3nlgxVH6rT6SFhvCEVrok/I1ZM1Xn+BR0w4qpICCG1+kvMUAw==
X-Received: by 2002:adf:fb44:: with SMTP id c4mr7142465wrs.179.1628931413481;
        Sat, 14 Aug 2021 01:56:53 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id u16sm4191736wmc.41.2021.08.14.01.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Aug 2021 01:56:53 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 1/2] auh-config: enable systemd only for glibc
Date: Sat, 14 Aug 2021 10:56:43 +0200
Message-Id: <20210814085644.19989-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is not guaranteed to build or work otherwise, and causes
update failures in unrelated recipes when building for musl for instance.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/local.conf.append | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/local.conf.append
index b18590f..417d228 100644
--- a/scripts/auh-config/local.conf.append
+++ b/scripts/auh-config/local.conf.append
@@ -1,4 +1,5 @@
 
 INHERIT += "buildhistory"
 LICENSE_FLAGS_WHITELIST = "commercial"
-DISTRO_FEATURES_append = ' systemd pam'
+DISTRO_FEATURES_append_libc-glibc = ' systemd'
+DISTRO_FEATURES_append = ' pam'
-- 
2.31.1

