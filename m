Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 143C6C48BF6
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 07:04:28 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.17816.1709795066125570581
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 23:04:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=NcRjY3l3;
 spf=pass (domain: mvista.com, ip: 209.85.160.53, mailfrom: jpuhlman@mvista.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-220ee7342ddso191927fac.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 Mar 2024 23:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1709795065; x=1710399865; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DDacMX7p73aiQcB1jQz1gU+tawBxRjUolqv6Gkijh0M=;
        b=NcRjY3l39QOaY5WqT6k5ci3Dc7+6mspVb4bwQh5oMvk2iuRlZInBdpj9YdPkesDzUo
         w0S/Ur0J6qj4t9T8wwQmtw7zy67OWr244uXbLo8zAPJiYtmgRrv0+FAWbDpTjVVYiseD
         GCvl871dLt45M6sJJszdRIlwRsAiOqCxamVt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709795065; x=1710399865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDacMX7p73aiQcB1jQz1gU+tawBxRjUolqv6Gkijh0M=;
        b=DVpRDnpBGgzw39eAY6Q7Ewj1mW78q2dShjiApy5rnWwj5TwjioKSuyn0iETbrRlgL0
         ozuug5oChZ78Uf26Cuml2lIxYQX96mMSZo1waUO+vOlM/DxtOaZhGIsNXj1nQvA/Lsj/
         pAi0y1GiJEszC/aNpCdxWgS6mXQr8eWa/ptQnf67ihFFHES7bDmVQxwRTcNGINCnfX4q
         CDhcHb3zMjw0EI+dsusIpP0DuS8mjJN7pyZvC2lMmP9YR7rmWZPnOFuQpfjVzFV/9Ia1
         4RnJFEZGGXKVtYXxSgvWN86kBA+WMqxL8FWSwhUEbETpTkyBcQkOOjtLrwGG/Cf6zKBw
         Cgeg==
X-Gm-Message-State: AOJu0YxMvvLmNfLeQxBk8DOHzzIvIOLFbH0hjeMVEbpMVO+Hw3ts79qg
	OUKBPR/QOEwEaWJ2w/tCOhLyIeL+p7WKFO4Y2sY0lNLlmm/SB7mV41uBq45jKE3EDMam9S56gGE
	2
X-Google-Smtp-Source: AGHT+IGeKsM78ZL0i0X1Jf+Jq74RNQMuKxw2hw6lqdx4+5WKQ9L8PAisKXcSxG60gaUIWotu5jygAg==
X-Received: by 2002:a05:6870:8312:b0:21e:c5d7:5966 with SMTP id p18-20020a056870831200b0021ec5d75966mr8575215oae.54.1709795064523;
        Wed, 06 Mar 2024 23:04:24 -0800 (PST)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id u20-20020a62d454000000b006e468cd0a5asm12774113pfl.178.2024.03.06.23.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 23:04:23 -0800 (PST)
Received: by brown (sSMTP sendmail emulation); Wed, 06 Mar 2024 23:04:16 -0800
From: jpuhlman@mvista.com
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] Check for usrmerge before removing /usr/lib
Date: Wed,  6 Mar 2024 23:04:14 -0800
Message-Id: <20240307070414.2141220-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 07:04:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62691

From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-security/cryptmount/cryptmount_6.2.0.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/cryptmount/cryptmount_6.2.0.bb b/recipes-security/cryptmount/cryptmount_6.2.0.bb
index d815e1d..d69d88b 100644
--- a/recipes-security/cryptmount/cryptmount_6.2.0.bb
+++ b/recipes-security/cryptmount/cryptmount_6.2.0.bb
@@ -25,7 +25,9 @@ SYSTEMD_SERVICE:${PN} = "cryptmount.service"
 do_install:append () {
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -D -m 0644 ${S}/sysinit/cryptmount.service ${D}${systemd_system_unitdir}/cryptmount.service
-        rm -fr ${D}/usr/lib
+        if ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','false','true',d)}; then
+           rm -fr ${D}/usr/lib
+        fi
     fi
 }
 
-- 
2.31.1


