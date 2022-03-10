Return-Path: <asharma@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CB1FC433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Mar 2022 07:58:44 +0000 (UTC)
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web12.7273.1646899122169811399
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 23:58:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=ZoqMx6In;
 spf=pass (domain: mvista.com, ip: 209.85.214.193,
 mailfrom: asharma@mvista.com)
Received: by mail-pl1-f193.google.com with SMTP id w4so4137198ply.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 23:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iVTuDIvQG32I/V8zB9tTtNh1Xx4V6qa18+MAsmn+NIU=;
        b=ZoqMx6Ine+V2y7iXyqoKNCYpGIFPp+m+mJaiitf2L5I5vgOvLWo+ywjybhZDPSunDI
         0h1M4gjcayHXOc2FeWUgRFtAq1xDUTqdRj/Vt/hcEHbiRoQy1APnutA6n0ZaTK7j0Xia
         ha2b0SKMTY6Q0gbr4U61vyqryxLxHGjYvdRl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iVTuDIvQG32I/V8zB9tTtNh1Xx4V6qa18+MAsmn+NIU=;
        b=CBX3WcQjQjNgXRpB1aLFqXN3tIkLvDHfoW6Y0OJSw17cCcbeLkzydPimgN/tHB/BST
         mRRpYfuMbAiXUHmNIsDnt4SUa0af4IXomhBX8eGNUS1YjCcsOYYc/+/ZlDvND2i7wC5y
         7lG0M5PZoNaupSLIOUnjeU/rQ143aujZ9S82mOZU3PqBVf5t063XTO6Dl8ZOO/0wrs9q
         C3Er8SjW7z1F6x9B9tftinCW3QKlUhw3U1qo1ELOybzMGw3wjDXrNMnOHYX/11pQGZWc
         eQ6EWy1yJugioyGTZpod0gorSb567788etJK/oCdgT6EEB4I3FaWIf4BES3rnDeQSblJ
         wf7A==
X-Gm-Message-State: AOAM5309pO4HgpV+VXjrpl4YNL1YnmcyeAeU38k8toPvjf7WqYVciK1L
	62hq12r2VY8aSMWqmnGpfqsCG6Ne/Y417rTj
X-Google-Smtp-Source: 
 ABdhPJyqb7ANamZEX1JWQo9XB6X/tW0cejeYPVMMGrZD70nyqSRh45DwBz0H3PXG5xSs5nkpMBx5Kw==
X-Received: by 2002:a17:90b:1b12:b0:1bf:1e5d:55e0 with SMTP id
 nu18-20020a17090b1b1200b001bf1e5d55e0mr3657742pjb.213.1646899120347;
        Wed, 09 Mar 2022 23:58:40 -0800 (PST)
Received: from asharma-Latitude-3400 ([182.68.177.6])
        by smtp.gmail.com with ESMTPSA id
 2-20020a631342000000b0037487b6b018sm4403602pgt.0.2022.03.09.23.58.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Mar 2022 23:58:39 -0800 (PST)
Received: by asharma-Latitude-3400 (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 13:28:35 +0530
From: Ashish Sharma <asharma@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Ashish Sharma <asharma@mvista.com>
Subject: [meta-security][PATCH] Subject: [PATCH] Subject: python3-fail2ban:
 switch to legacy setuptools3
Date: Thu, 10 Mar 2022 13:28:33 +0530
Message-Id: <20220310075833.31784-1-asharma@mvista.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Mar 2022 07:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56414

raise InvalidWheelFilename(f"{filename} is not a valid wheel filename.")
pip._internal.exceptions.InvalidWheelFilename: fail2ban-*-*.whl is not a valid wheel filename.
Removed build tracker: '/tmp/pip-req-tracker-qnepnk46'

ERROR: Failed to pip install wheel. Check the logs.

Signed-off-by: Ashish Sharma <asharma@mvista.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index f6394cc..29a4ad2 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -15,7 +15,7 @@ SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
         file://run-ptest \
 "
 
-inherit update-rc.d ptest setuptools3
+inherit update-rc.d ptest setuptools3_legacy
 
 S = "${WORKDIR}/git"
 
-- 
2.33.0


