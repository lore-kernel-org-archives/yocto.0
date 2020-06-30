Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web12.11476.1593508508328273451
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 02:15:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bw96FndC;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id e22so15457652edq.8
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 02:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wF/7F9/orNFdcK1bajlc/QLx/oUzSU9dmBxSk4H27mg=;
        b=Bw96FndCgshzDUFYlAJ0pFKFiVeobL6RaHQDit/6r7stZgAeCsXyCtMbO7JVpwHj9x
         db4JKsiS4q+siHx5h0anoOVehiXFZZx9vlLiwfQEjQvw6+zr4cz5Hz00JAkFA1eSd0dj
         m46r+IiyyAL2YcKzh/0shJqlKmAP99vytKIOlgiEXDXVvWOOhPrNnJwUBp4A2/S3frT0
         UaY5Ms50CRpHUtEQ9mxbuW27gYaCVHcjSTGxuecFShBoL8Fz5bwafS3XtVlYFd2WMlQq
         DMLV8REjlOAsRZpEKxENEcO0yQChD+2L9oEEnHjLVnKBdX4H4JQKkE7g+UcLpWtoKdQJ
         CdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wF/7F9/orNFdcK1bajlc/QLx/oUzSU9dmBxSk4H27mg=;
        b=kEbgGpoKmfsKQ1dbBXXfT81soXtnYAGZPm+fCd44Mz4Xl32YFXxxT2TVHT+0plVbYQ
         FoHO/TnEz4RzVaa3vlzwnA1N060ykC26342Wbu7V5EYHJHkslaYzQ5Bo9+fZHI/7DK5O
         yJFzAm2w3BgVd8vSZXuU/9eetFnZlIS1T9Aul+KMbVEKoEgcueUTKujcrSzbg/xRKCeL
         yzCQfJ3SFrUDHQ97tiorbq9PAk+Fjjz5wKq/GQ9kWkEbfhuH7oJVIH4wMUU33L978juN
         vaCaf+tc87RSIqoFVQUBI/Mxs0GsLMrOPGJPuH4aAKAPjzErLsjzjwAENojtgB+YERbR
         UyOg==
X-Gm-Message-State: AOAM533PQisO7IjtqSsF3nw3KJPXuqmOg5L/iH/pF5Wgje6zuIj1CWSl
	LrdpLJBacMoJ92lHWxb8M5MeYsBglvE=
X-Google-Smtp-Source: ABdhPJzkxmIh1OMKVROnywIQdtWhPtUe2UQ4cdv8nIuMyZTGmtZWB8O1m+Ky5JmvoPJO5J2LcpHOxw==
X-Received: by 2002:aa7:c31a:: with SMTP id l26mr21139620edq.61.1593508506399;
        Tue, 30 Jun 2020 02:15:06 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id p4sm1510598eji.123.2020.06.30.02.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 02:15:05 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: send AUH update emails to oe-core list as well
Date: Tue, 30 Jun 2020 11:14:13 +0200
Message-Id: <20200630091413.9724-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sadly, many maintainers do not act on AUH mails in a timely manner
(or do not act at all). Sending these emails to oe-core list as well
will allow other people to pick them up, and ease up the path
to doing recipe version maintenance.

Also, recently the amount of outdate recipes has been greatly reduced,
so there should not be too many of those emails each month.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/upgrade-helper.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
index fbf5d8a..b012600 100644
--- a/scripts/auh-config/upgrade-helper.conf
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -14,6 +14,8 @@ smtp=smtp1.yoctoproject.org:25
 from=auh@auh.yoctoproject.org
 # who should get the status mail with statistics, at the end
 status_recipients=openembedded-core@lists.openembedded.org
+# who should be CCd with upgrade emails
+cc_recipients=openembedded-core@lists.openembedded.org
 # clean sstate directory before upgrading
 #clean_sstate=yes
 # clean tmp directory before upgrading
-- 
2.27.0

