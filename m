Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC2BC7618B
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 12:16:48 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.17612.1679055400867231234
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 05:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MXixLGuN;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5447d217bc6so90282127b3.7
        for <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 05:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679055400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bDy4WC4kMO8myAmR5Ppvcrtc/ePERt6DmpL+7UOUKI0=;
        b=MXixLGuN/VyHT7J1Xq/UXHEnQyPt4RlFPt3Bj6AA7i8abozRCyHNQAuS6oWyxsgO2V
         r2Nn+M2hVOASB672/Zm70FWRmIPZzYd7U+N7eP6t7Yamb9lR14q4tLW67ESVQJDRhsg4
         7zpEySjer0payr3mD1QVrCLGzT6ND4Vgyt9/Cl0v5knqXCMvvMa57wPkevHRvhmpJHlj
         XChY1cCIHpgzGeCnm6xW39Q7cEaEdTUpIeQZ9U5aBSXbAktYL7h6U7varhhyEPwhDUel
         pyLbt3mrJbmUJJnJC18IgxZPeAkVpjAQ+a/aZ2KuNM3+3A9x1LRm8U8rpwVvjB2gL2xE
         TQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679055400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bDy4WC4kMO8myAmR5Ppvcrtc/ePERt6DmpL+7UOUKI0=;
        b=WpmyMwC4+bhHt9+ndzg1ylAhlBNZzHNl61JjOoSvsz7ejWRwC4oZwIVJhjqs9VgRsI
         f55+8+Rgq9quf72l+waqEIaQhUvP+1poi1q2xwxdNSDTm1q9I9ZjWraw3RwzpAzKvGOU
         2VM+2PIHbTw1L3O+w080wZ6mdT1SvUXTbUld2OWVUT25yRS7FjFpjOmJ0ec14GO5HG41
         Cj0rTg52ABVsBuDovbxF7lkAG6ryV6exDJMFsHNEjyIwaq9NUOOm5DUYV+Y3ButiauC/
         W2NzDoiU2HxDrEx6EEkaT5uMIwR+531E2XLVG1XYRjLwCQt60JWRqfeQf5W9Svs++rlJ
         CKaA==
X-Gm-Message-State: AO0yUKVmxAmMeMFedMUHMTxx6qReTuJJIgjf8A3WvpSzn4zKB/eeB+qU
	dejCb+eQooFR6G79wY81kNsAKi0p4Rs=
X-Google-Smtp-Source: AK7set9G2AdCERnD7P6DCshjq1r7qchILMOxSlI1rrwhgFjfLp1O7gr5psNE3aW+2kzebJM6L3ToJw==
X-Received: by 2002:a0d:e046:0:b0:541:9b48:523a with SMTP id j67-20020a0de046000000b005419b48523amr5605005ywe.15.1679055399756;
        Fri, 17 Mar 2023 05:16:39 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:c2ac:5617:3b35:df38])
        by smtp.gmail.com with ESMTPSA id t72-20020a37464b000000b00725d8d6983asm1543028qka.61.2023.03.17.05.16.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 05:16:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-compliance][PATCH 1/2] openscap: update to 1.3.7
Date: Fri, 17 Mar 2023 08:16:37 -0400
Message-Id: <20230317121638.635610-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 12:16:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59445

remove DEFAULT_PREFERENCE -1

The git version is unmaintained

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/{openscap_1.3.6.bb => openscap_1.3.7.bb}         | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)
 rename meta-security-compliance/recipes-openscap/openscap/{openscap_1.3.6.bb => openscap_1.3.7.bb} (86%)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.6.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
similarity index 86%
rename from meta-security-compliance/recipes-openscap/openscap/openscap_1.3.6.bb
rename to meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
index 306a0f9..cfe93f0 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.6.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
@@ -6,7 +6,7 @@ require openscap.inc
 
 inherit systemd
 
-SRCREV = "d10c40e43e1c627912374b8fbdfa1a84967fcc92"
+SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
 
 SYSTEMD_PACKAGES = "${PN}"
@@ -17,5 +17,3 @@ do_install:append () {
         install -D -m 0644 ${B}/oscap-remediate.service ${D}${systemd_system_unitdir}/oscap-remediate.service
     fi
 }
-
-DEFAULT_PREFERENCE = "-1"
-- 
2.25.1


