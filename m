Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ABCEEB64D9
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 17:54:50 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.3060.1687802080353312706
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 10:54:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=iTNAvOu/;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-570284c7e61so38508837b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 10:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687802079; x=1690394079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FrVWkJPRaUCJ8lJqX4BKQnzrGYHwW6GNCH2PglW8y1k=;
        b=iTNAvOu/2J51tgXhZjI0uZxAKzTIWDs/bMkzRvw+LYd0bSBOTdrTUtzuI3xjuUvNfH
         bXP3JIBiQ6OrirVOLN+mZ7sCredIRsJDdEU5MPe1MLX4Sec4BTDc5vFsNXtD+vZlLqLS
         kIQXHAk1yTvbzjK6lu9qBQPZ92PBVnsF9eALUr9TxoGjjdKbrTlSrxSd9du4tQCdBkKd
         9HoTmkcEKI0O3fetaEiiRq3uNHIyDrZ0ZjiTqUM5gbvNMoQxoljoQGl7CZRTUPbPscaE
         uOiYyEKsgvQ91d90Uwclj+8GQ306LGSZukXIp56oJY3d/xV+MSLoseGWX6SbbCkUC92r
         SKOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687802079; x=1690394079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FrVWkJPRaUCJ8lJqX4BKQnzrGYHwW6GNCH2PglW8y1k=;
        b=BZQKbzMcYET9r/7U7RPyNWTfSA295u/t0tcp6GoHuxFONJOl/FjOBQ7xAUJrD3PL5m
         mCOcxmPiVeQI0wWRkIWhy8ZGB4CcQRYzrtBaTAx6LxfthyGrjZ5RGPxZF1UInYH9BkIQ
         HKU2hYp3Z1fnqAYP30cI2chkTv6lUDDQSd2zMbvrvutw6tRoBviA3QBBDgLoTJR0j3/7
         gOH5CQLR7vkAt6qU270EiYwJOsUy766z5IIl6+1+u2dl+mJkXMCPwlWv0yQvsJ94o9mL
         AJpVcFcDmhhBuui0zFJR/FXsdEOEsVhVjeCyxWW6ZILz/PhL6Nho5N9VW3dm1fWwh4Q9
         QCUw==
X-Gm-Message-State: AC+VfDwzlggFbqrIa+uGCa+9Wj8WXMT98H4htVx3gvsEIs1Pj6mnudtC
	a7eVnxjKgWvssDMg+6cTXEdiRBF26Wk=
X-Google-Smtp-Source: ACHHUZ4CtSuJMMs6wJUtpYmsv1ct/10mDqzuZgoet54tlEC/AGvlYWAVmWUI4MYTGk81DOA2GVmKTw==
X-Received: by 2002:a0d:fec3:0:b0:573:b42b:4e27 with SMTP id o186-20020a0dfec3000000b00573b42b4e27mr15419679ywf.16.1687802079203;
        Mon, 26 Jun 2023 10:54:39 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:3e6e:8667:bf24:944b])
        by smtp.gmail.com with ESMTPSA id x66-20020a81a045000000b00568c1c919d2sm1397020ywg.29.2023.06.26.10.54.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 10:54:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] bastille: bastille/config should not be world writeable.
Date: Mon, 26 Jun 2023 13:54:37 -0400
Message-Id: <20230626175438.2990764-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 17:54:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60449

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../meta-perl/recipes-security/bastille/bastille_3.2.1.bb       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
index e7852d9..f2ef335 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
@@ -138,7 +138,7 @@ do_install () {
 	install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
 	install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
 
-	install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
+	install -m 0644 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
 
 	for file in `cat Modules.txt` ; do
 		install -m 0644 Questions/$file.txt ${D}${datadir}/Bastille/Questions
-- 
2.34.1


