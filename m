Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CD18C433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 13:25:46 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.5469.1636118745618374216
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TJC2adfg;
 spf=pass (domain: gmail.com, ip: 209.85.210.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id l3so6924067pfu.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SNwcUnXiYBydRx0jTLcHadLDNi85q3XGMDL5kyRz6y8=;
        b=TJC2adfgs5SWCM/QhxbfNSAj36ebZQPlrz0JL6I3gZQ6t55jCN7xAtdpiXcQg3fFl5
         5RDTW1P6pgw57WzNsKwZAoKq9KTAe++ogdql0nyfboGNc2nvpHFajdqQWj9QEIiAE5wB
         GF4l5+Sn8RsEE7hERkdliSai+3nRgtT5cHICJhuqvtl0K4l3oVVJkw5uPGaMcq1slB0K
         gxdm3kDX72GVAFLDe3wpS8uq8AATfoxYUPEW7HG1/pw4woIMTDVrOcN79q5ZBOroy25m
         NBTyghZY6Dqdvcwxm/2gss8/YLycUxRoln/R2aBNo5ZwR5/CTGzlwMo/p1xHJmZQI1Wa
         saMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SNwcUnXiYBydRx0jTLcHadLDNi85q3XGMDL5kyRz6y8=;
        b=s+FNbZayYvyfY+uBUfpeGUcG1w0OBUVy5Be28FZpS5M1OMf3IxUY8q62PpaTw/MEzX
         aKQbXeFGo6x/bGdRfqW0BF4aDnuenn310ql87OCSjIVqL0D2rB+990lI2K2yY181jwpn
         8ImZNTqmuZuSufjuqAP7jUT06W4qv2Wii1ZMBdSsSqcuJZAwUjeu6BRML3H2Zy0gjBUM
         MDQMjOm4OtQVxaDi9V/KVjrg3O6MjIMkO8SXrStCGeSt4dXojL6w0YIMJYJeRM4Jko+b
         yPfp7H98sXFqYGB66DKPIK7y1nJnVVlGOXVtvhqp2MiTUha7KDsNCvmf+nfBu9oqQqzE
         mwzg==
X-Gm-Message-State: AOAM531F97wPWMkumSPWfKTjiSXX66HzoP0+M25GvXmbDXJ/dr0hWx9A
	/tJ7ekGdfyZmWlG51EDCUPQyzDiUKBQ=
X-Google-Smtp-Source: 
 ABdhPJxmHL2ihgFvdg12mq/tzXkjex4QxDmMuhlxniMzbaMT5pZUdYuEI/DURlXOk7Ko6xNbgWaD9g==
X-Received: by 2002:a62:3084:0:b0:494:65fa:64f with SMTP id
 w126-20020a623084000000b0049465fa064fmr11036743pfw.22.1636118744795;
        Fri, 05 Nov 2021 06:25:44 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:1036:3e93:cc4e:1fe7])
        by smtp.gmail.com with ESMTPSA id
 s30sm8133126pfg.17.2021.11.05.06.25.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 06:25:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] bastille: Create /var/log/Bastille in
 runtime
Date: Fri,  5 Nov 2021 06:25:41 -0700
Message-Id: <20211105132542.723232-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211105132542.723232-1-akuster808@gmail.com>
References: <20211105132542.723232-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 13:25:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55248

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/bastille/bastille_3.2.1.bb | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 72281c5..2d82983 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -48,7 +48,6 @@ do_install () {
 	install -d ${D}${datadir}/Bastille/OSMap/Modules
 	install -d ${D}${datadir}/Bastille/Questions
 	install -d ${D}${datadir}/Bastille/FKL/configs/
-	install -d ${D}${localstatedir}/log/Bastille
 	install -d ${D}${sysconfdir}/Bastille
 	install -m 0755 AutomatedBastille  ${D}${sbindir}
 	install -m 0755 BastilleBackEnd    ${D}${sbindir}
@@ -148,6 +147,20 @@ do_install () {
 	${THISDIR}/files/set_required_questions.py ${D}${sysconfdir}/Bastille/config ${D}${datadir}/Bastille/Questions
 
 	ln -s RevertBastille ${D}${sbindir}/UndoBastille
+
+    # Create /var/log/Bastille in runtime.
+    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}" ]; then
+        install -d ${D}${nonarch_libdir}/tmpfiles.d
+        echo "d ${localstatedir}/log/Bastille - - - -" > ${D}${nonarch_libdir}/tmpfiles.d/Bastille.conf
+    fi
+    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'sysvinit', d)}" ]; then
+        install -d ${D}${sysconfdir}/default/volatiles
+        echo "d root root 0755 ${localstatedir}/log/Bastille none" > ${D}${sysconfdir}/default/volatiles/99_Bastille
+    fi
 }
 
-FILES:${PN} += "${datadir}/Bastille ${libdir}/Bastille ${libdir}/perl* ${sysconfdir}/*"
+FILES:${PN} += "${datadir}/Bastille \
+                ${libdir}/Bastille \
+                ${libdir}/perl* \
+                ${sysconfdir}/* \
+                ${nonarch_libdir}/tmpfiles.d"
-- 
2.25.1


