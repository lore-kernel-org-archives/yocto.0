Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.39544.1624229636374061489
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 15:53:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xfq6m+kq;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id h26so1109194pfo.5
        for <yocto@lists.yoctoproject.org>; Sun, 20 Jun 2021 15:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=vyF+Y1TAaeHkJxQRvytH74pL3jrc9rTOVqtLok5/Vv0=;
        b=Xfq6m+kqFLf1BgcpjSaCnaRbj/if+sBMORQZ/IC192EYxpH9Ir4jz77oTrXvk4iZ+o
         UZLvH9Xv+cVlsyx2E+LXnJnrWv5dI1RbSwPe2mCkHu4qFgQhpjimRbHVIVOcOHni967B
         JCI6yaw0cGZs2i5qly+Mx+crGnQXa1R6pKYzQ7olWg0+OZ49JVrGSyzR/KaBYj/NtNqP
         /6a/AN78udruTXuilmC3jLQ8BtTmqDFTHjar0v0V6BJ6CiCUYa2Xb4fzW1T4SahVQW96
         rcxCquy8zA0ePmz2nt9GY95MkZI9ALxe/BREo7RlnOtOtGh6jeoo7U71vuRFUqD99n92
         4sUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=vyF+Y1TAaeHkJxQRvytH74pL3jrc9rTOVqtLok5/Vv0=;
        b=ltE6Vf97ZZOvKNZpPPzqL9uf0Phch8XOi0o847tBUyq4XfiJP/Kpb5OAz0zcGMlZus
         gvUsBUvveXUxfN1ZVB+Bbb/0DsBytDaxq6Bz23WOeXcwAKrkJeuDKqzvuUh+TAurUm/8
         HBwZZcERJVOySybXj27ACxjhKVPJqsAI4kuqEDbw9qKt9jBKRkg12LswQiNHeai0IMn2
         ZH1VqoySEhb8IrlOlXn2uwlpowGfqsc5lY8sPr10HvXl+Ht0vzO8HrVl6lo0RsG+TX3t
         7DvYQbzxw4PaDcX5bjNOPSi0OjA487X1/wlgRrlJge3lERNsMfE9/yNrBPI/ptlDWLMz
         +vtA==
X-Gm-Message-State: AOAM533h7oIPeqz6aM6FKD5pIEsijmI7kiqKXbgUNAIU+yVCyhn7jVuz
	XfOucqltTAsaNmqLnp39KbRA+2UEIv3e1A==
X-Google-Smtp-Source: ABdhPJwziIGd6oAxx89X5Yp7hEaNf++YpefYtZvr7yK49/vl4PVGXgrVY3rktNulCJ5WQ3X8gAAMjA==
X-Received: by 2002:a62:9242:0:b029:300:6fb1:38b7 with SMTP id o63-20020a6292420000b02903006fb138b7mr13116044pfd.80.1624229635858;
        Sun, 20 Jun 2021 15:53:55 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:c7:6c10:59:efee])
        by smtp.gmail.com with ESMTPSA id fr20sm13222531pjb.29.2021.06.20.15.53.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jun 2021 15:53:55 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] initramfs-framework: fix typo in conditional
Date: Sun, 20 Jun 2021 15:53:54 -0700
Message-Id: <20210620225354.12017-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/initrdscripts/initramfs-framework_1.0.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
index dc74e01..f5d476e 100644
--- a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
+++ b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains('IMAGE_CLASSES', 'dm-verity', 'initramfs-framework.inc', '', d)}
+require ${@bb.utils.contains('IMAGE_CLASSES', 'dm-verity-img', 'initramfs-framework.inc', '', d)}
-- 
2.17.1

