Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08D79C433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 16:30:19 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.12030.1647621018706495252
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DWJacKRe;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id n18so7356425plg.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 09:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BRq2r58IICC4rA7zH5YVHc0R/ITNeSlvvSHyGjSK8gU=;
        b=DWJacKReCjK2AiaS3nsc43MjyUAw70Z142cdCYyxhE+QYaxkfBvUqPL/ZzRVp3U5sb
         QnM3MjgJ8anj2u/yeQJa+SzJI8RFl6lYWAFax/meEGvZzylBlt3RS+dLbS3MBKHnXn9Z
         yYHEPS3SydqKeC86iPhCIotgtOulLrSsq5+hrR03u22RfYSIDUa4QVAGwDDum2nUYI6I
         MlORlwKBly4zGU4+z/gDZmSW6epODgqOMmnoc8BNGSa3NP8dzzYeETizn6X+XPNbeTD6
         YAG6eIN/SZ5X94En+BAXdn4OUhPjrIiPWad8oG1sV2d+3+Ui6q56jJrxgKUfMN+eHYJ8
         fmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BRq2r58IICC4rA7zH5YVHc0R/ITNeSlvvSHyGjSK8gU=;
        b=pcpC4SiJENCIWC/OhopwBHExdIiS0o3E8qbqT4fASYaxQIRgu7BqkrykOlLqyakmZ1
         g3chDgnZsp/IKnLrx3x3obgNFtRObTaD02wGUt337OtcDP49QElxulxRwlo0Po/hDFQp
         dlESSnTIuKNdK6v5zcOgGROSINvgRMqfIvQ6Nm6napirQ2RE9/Ne/vMmDN6UZDYMV+w8
         vS5SjMIGOOlNRBSR3u0jzSnLVoDZKXmQkvdyY39CvyRnMDqE9xeWXZ/ga5W8B3C1mer+
         czJC/iWTuzbwkL3XyAdjaiha6u6niM0IzUh2mB798MJXrRmAcBIT4WeAyw+sjH7zXfK9
         /ADg==
X-Gm-Message-State: AOAM531bJ+1LH2njCpXHh0Gr0KbcI6uDxAeAy3nUI/oSQa9LqDWn3VYl
	StNZ/f0YgFzZVv7bMqv4VQ+8E2zAWi0=
X-Google-Smtp-Source: 
 ABdhPJxykQckITHQIqhuHAq7IRFtksyVPLDjPqvm4n2N7lwrgM0g5iTOqDqilrLz9rB9erVfTH3ClQ==
X-Received: by 2002:a17:90b:1d0a:b0:1bf:b772:30ba with SMTP id
 on10-20020a17090b1d0a00b001bfb77230bamr11994218pjb.99.1647621017872;
        Fri, 18 Mar 2022 09:30:17 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:7149:7f06:f0c9:ccde])
        by smtp.gmail.com with ESMTPSA id
 k186-20020a636fc3000000b00381ef1e50a2sm7235455pgc.25.2022.03.18.09.30.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 09:30:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-privacyidea_3.6.2: remove more py3
 that got dropped
Date: Fri, 18 Mar 2022 09:30:15 -0700
Message-Id: <20220318163015.3734400-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 16:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56487

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/mfa/python3-privacyidea_3.6.2.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
index 40f6d15..3a09b80 100644
--- a/recipes-security/mfa/python3-privacyidea_3.6.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
@@ -24,7 +24,7 @@ FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
 RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
 
 RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-bcrypt"
-RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
+RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi"
 RDEPENDS:${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
 RDEPENDS:${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
 RDEPENDS:${PN} += "python3-flask-script python3-flask-sqlalchemy python3-flask-versioned"
@@ -33,6 +33,6 @@ RDEPENDS:${PN} += "python3-itsdangerous python3-jinja2 python3-ldap python3-lxml
 RDEPENDS:${PN} += "python3-markupsafe python3-netaddr python3-oauth2client python3-passlib python3-pillow"
 RDEPENDS:${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
 RDEPENDS:${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
-RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
-RDEPENDS:${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
+RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-rsa"
+RDEPENDS:${PN} += "python3-six python3-soupsieve python3-soupsieve "
 RDEPENDS:${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
-- 
2.25.1


