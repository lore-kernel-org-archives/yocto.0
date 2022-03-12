Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11374C433EF
	for <webhook@archiver.kernel.org>; Sat, 12 Mar 2022 18:28:05 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.7677.1647109678584846667
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Mar 2022 10:27:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RgGJZkFh;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id n2so10337709plf.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 12 Mar 2022 10:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ly9hTotCG/MLSLKXvpBjTJ+oyRHhTCzBkjMhDjFHY2s=;
        b=RgGJZkFhYbZnOhcyx/mfT74F4MQ29ZGmQQ3i9vxkjencImb4yOCxPCLf4nni2OxuFd
         VsZVufSB8YfBcYCQX32q6FGbH43y+0zEJNyV6rieV8HwSSVKm43Hxozz1b+eo+cMGpBh
         v1H9o2PCbOzQnnbjtHg19B1RWLwbp6IAcFyzEFY+rogsGxElJ4SX69kJdyDEkzz8EuIi
         yQes3Zp4184X8F9IGiHCG/m4SidFqOm5Ox44LYFLTyreSmyyrObSzXj/4fqY0ZfdZs/4
         4F6H7QT1Kw36TZjhWRygNLQ1Y1ZZVeeghQoNy6eYGS2M/mDbsG8Cq+LsVAL4IyTh6Y6R
         puLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ly9hTotCG/MLSLKXvpBjTJ+oyRHhTCzBkjMhDjFHY2s=;
        b=rGsAgt40SnzVlYx2KCNUa448cAG6n/NqZaOIxXTdcCVc//t+VgEVWwHFzvf3TP8OXF
         /NQWkuf8yzEwICxPC9nkfs7pdlqIA2C8JYFgcsOtKF2IzKHpbB7TXPy45Z59fV755Oox
         6wu43FPukhVEBfVPKT26kBWp8NTZe+YieQpL+6XDNFU+HBe7VfhSkX1g3aCjH1Eh+qnF
         B9n3xHpoF0Wy7WAGjQ5EQLuwmuzwLh2bHZ0JoAV+csJ8d3WauBVqAVenC9rYUS6ITzDg
         CD9tFN+N9phOAEP8lZf9+t5m+cQjDWsth9eKoT/jZM3UZdgSh2qyYvyGOIJVPWBkp/y7
         9RzA==
X-Gm-Message-State: AOAM532NcLx/C3BXPQwKH3vvYx0H8XHbxXdJKQG+TO6+Vvd2+JqfuMhQ
	Gt2OWfcTsfCZBGtf6rd69DsVZmnYLSQ=
X-Google-Smtp-Source: 
 ABdhPJxGMgpiDTFvAcTuRlvCyvgb4VQlf/WpqvUmVu+JmDqfeJakw+UoLdbxbBXPFH+Qe4g3GxMe4w==
X-Received: by 2002:a17:902:8549:b0:153:563a:39a1 with SMTP id
 d9-20020a170902854900b00153563a39a1mr1181605plo.21.1647109677660;
        Sat, 12 Mar 2022 10:27:57 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:918c:415a:ace4:d038])
        by smtp.gmail.com with ESMTPSA id
 t8-20020aa79468000000b004f764340d8bsm12891107pfq.92.2022.03.12.10.27.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Mar 2022 10:27:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] python3-privacyidea: drop old package ref.
Date: Sat, 12 Mar 2022 10:27:55 -0800
Message-Id: <20220312182755.1861698-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Mar 2022 18:28:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56424

meta-python dropped package via commit:

620689d4efba28bc8dd60e2d82908bfb3531fbd0
python3-backports-functional-lru-cache: remove, not needed for Python 3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/mfa/python3-privacyidea_3.6.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
index ecfeca6..40f6d15 100644
--- a/recipes-security/mfa/python3-privacyidea_3.6.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
@@ -23,7 +23,7 @@ FILES:${PN} += " ${prefix}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
 
 RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
 
-RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-backports-functools-lru-cache python3-bcrypt"
+RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-bcrypt"
 RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
 RDEPENDS:${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
 RDEPENDS:${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
-- 
2.25.1


