Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22CE7C433F5
	for <webhook@archiver.kernel.org>; Sat,  5 Mar 2022 00:30:33 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web08.1346.1646440231853557249
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 16:30:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=diL2xnMx;
 spf=pass (domain: gmail.com, ip: 209.85.210.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id s8so4872808pfk.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 16:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5RK42bNP8dPSNDgeIhISYaq4LPw2JzeH2vfwGmFobok=;
        b=diL2xnMxGdoxxiDz6UHPgeg7QZs1N9T3ooZCwSmMoytvPMgqXcuBP7oill8e8rYp1f
         vqbAGsudJrrDa181/O3yheMIysXeBEvVZ+GZQX5HShXU2GUwOGR19LmzQ1j9TKKdj4EB
         fzFpbAznWzXUkLu3Py267PvzYoIQB/E8tT9W8L8scXZC6eXzLZj432EnMwn/0NdD18Jf
         CWqAb7YBYa73Chkg3yAfOUHiKu+vlrBEXYex7ybUm8VIYfCf9taQ1YFiyJCziChuAxgW
         6OeLIVk6disY1gbsJN72HR8Auk51KsT9zPADt2x5m/SXSC4qaZEbzhgnKTwMBQ+P6f5n
         T0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5RK42bNP8dPSNDgeIhISYaq4LPw2JzeH2vfwGmFobok=;
        b=cJv0jyWBHA/WcYPyYhtX+XJLf+II3OcWxdSJEEx+fvzTtpsxYM7pRzu8fQF0MfArw1
         VoLtBTG4DZU0Q9HP3LK4BexjVNJodOJckWBFYRiSDZCmU+6A/1180zoqWoe8gfP7nJON
         Gg84ArKRo7I96UK53CIvbcToCct4yTN1Cd5kvfdPnz8MZAm5ZgxADAYrK4CX4axkya9m
         s3KwulsL5ReIeMEAg2IEsH+SW9vB1nyp5ZfZ4VutHzGcwKi77yDK7CWcxYe/hYypsvCm
         hIXSOoIutusEeRFTqivuRByRaQJkqIfh7uoC3Rz0AC2f6dNiZRiQRp3810/yJQl/tr68
         Gwsw==
X-Gm-Message-State: AOAM532izOCns5aJqsg1e+c9e2uVuqXCC+X2p1XQX/A7dt5NcEUG5N4m
	zGuYAeqFkfw6BDSypTuz9PAApZzG63w=
X-Google-Smtp-Source: 
 ABdhPJzeC2rizSUjb9uJTb6guy92zSSAwp1OJ6E4wsNifH23V6pd2/HhPDlbQC8TGb2EPS+VjYwYvA==
X-Received: by 2002:a05:6a00:ad2:b0:4f1:2734:a3d9 with SMTP id
 c18-20020a056a000ad200b004f12734a3d9mr1034510pfl.61.1646440231187;
        Fri, 04 Mar 2022 16:30:31 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:4a57:ddb1:e4ac:8918])
        by smtp.gmail.com with ESMTPSA id
 z23-20020a056a001d9700b004f6d2974269sm286659pfw.113.2022.03.04.16.30.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 16:30:31 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] libtpm: update to 0.9.2
Date: Fri,  4 Mar 2022 16:30:29 -0800
Message-Id: <20220305003029.3893656-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220305003029.3893656-1-akuster808@gmail.com>
References: <20220305003029.3893656-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Mar 2022 00:30:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56373

includes: CVE-2021-3623

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_0.8.7.bb => libtpm_0.9.3.bb}   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.8.7.bb => libtpm_0.9.3.bb} (84%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb
similarity index 84%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb
index 8fe62cf..c03c44c 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.8.7.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb
@@ -2,8 +2,8 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "f6dd8f55eab4910131ec6a6a570dcd7951bd10e4"
-SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.8;protocol=https"
+SRCREV = "3f8fbc831b7bc3a6cc8422c432f577596b4cf3df"
+SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.9;protocol=https"
 
 PE = "1"
 
-- 
2.25.1


