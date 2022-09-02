Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA79CECAAA1
	for <webhook@archiver.kernel.org>; Fri,  2 Sep 2022 23:41:48 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com
 [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web08.5315.1662162104905211446
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 16:41:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AWu9Zb3O;
 spf=pass (domain: gmail.com, ip: 209.85.161.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id
 q6-20020a4aa886000000b0044b06d0c453so612994oom.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 16:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=lIJOoET01loZrzROmA6lgg4bkS1221uPEPeIXgfBAo0=;
        b=AWu9Zb3O8xXqafbOGsPN6YqeiX6K0VJw7dEYByL/Pc0bMQsEGw4uYOBN2Xtrx8GAOm
         3/nZgmdg3oR7YeGAeUXv+P4P2HoLczLjOPfqeQXTkSIoR2sONelxWAjfHtWe58fFjv86
         7qbeOBdPbfPy3zhMliykBAPRRN3JXf4evL6EE6EDhFZ/flUVQijlqDm/4gCzM+s+wWxz
         RdYzl/O8sQse6byzPs+1ITl1NCKNFMLQAVw7HXA7mcMawqO9+v1htPXN9nfkzpSfIkqE
         c3/pVI4h4jwC69ig0FnepjkdkqncFMwaAYwa8iEeaBHja4TIQaczxecNetYiVxoOD2Sw
         2zGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=lIJOoET01loZrzROmA6lgg4bkS1221uPEPeIXgfBAo0=;
        b=a+bwfuDMf0jyeo6cCzBMYTVQpIEOs0f5JRwYJoX8gFl8D2+u9YChXGdpzCBWcipJsP
         V3Fhngv8zw4G+hO5h2rFULSAdD9fZAKBj5S4czo2upQSQSdwzISASNWvk9mm7QX0VbLE
         WM2g6dV8d8ktzH8gRb5CQHakDlcZyxZlFsVrX+8YxbYLZg6RBGGTXkHlWVaeCf9QD7kc
         +Ec6rem/ZJTUfBkTX8Xwv5M0VSx9L7FQoV+DPuJVkQj1mtb3T0BZtW9hv/Xodvitcyfh
         icJi2bBkDwXfZtOKGTLc4r97dNIeJxS4to013zyW2p4aL4HdSm0MDDi733IQxhUPZ8A1
         Oz4w==
X-Gm-Message-State: ACgBeo3UsKqzv4dm0VfL3DS1rtgfugeqyw3JHiPt9Rtcw5pL5253a5JC
	b7UWT2oH2MTJK+W3CWH88E9+oYfvKO0=
X-Google-Smtp-Source: 
 AA6agR4HMGmMTvasFf7ii1jIwlZ9TiXUqpX1sgtQQbCYvaeRJxdDM4mJXOOKaPh+aL4Ac25atgOKng==
X-Received: by 2002:a4a:d657:0:b0:448:95ee:e0b4 with SMTP id
 y23-20020a4ad657000000b0044895eee0b4mr13258292oos.59.1662162103534;
        Fri, 02 Sep 2022 16:41:43 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:3f7:22a:3e45:9218])
        by smtp.gmail.com with ESMTPSA id
 a14-20020a056870d60e00b0011c65559b04sm1765163oaq.34.2022.09.02.16.41.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 16:41:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] cyptmount: fix systemd service install
Date: Fri,  2 Sep 2022 19:41:40 -0400
Message-Id: <20220902234140.1548691-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Sep 2022 23:41:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57975

Default is to install the service in /usr/lib

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/cryptmount/cryptmount_5.3.3.bb | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/recipes-security/cryptmount/cryptmount_5.3.3.bb b/recipes-security/cryptmount/cryptmount_5.3.3.bb
index fb522cb..6741a5f 100644
--- a/recipes-security/cryptmount/cryptmount_5.3.3.bb
+++ b/recipes-security/cryptmount/cryptmount_5.3.3.bb
@@ -22,6 +22,16 @@ PACKAGECONFIG[gcrypt] = "--with-libgcrypt, --without-libgcrypt, libgcrypt"
 PACKAGECONFIG[luks] = "--enable-luks, --disable-luks, cryptsetup"
 PACKAGECONFIG[nls] = "--enable-nls, --disable-nls, "
 
+SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE:${PN} = "cryptmount.service"
 
+do_install:append () {
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -D -m 0644 ${S}/sysinit/cryptmount.service ${D}${systemd_system_unitdir}/cryptmount.service
+        rm -fr ${D}/usr/lib
+    fi
+}
+
+FILES:${PN} += "${systemd_system_unitdir}"
+
 RDEPENDS:${PN} = "libdevmapper"
-- 
2.25.1


