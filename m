Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBE1C433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 06:49:43 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.4616.1646376579462330805
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 22:49:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LzPrXngA;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 ge19-20020a17090b0e1300b001bcca16e2e7so9880930pjb.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 22:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WA3wIv8fNJpzVXMK1Xyr32AFD1gnMGwriOJlS2MFIRA=;
        b=LzPrXngACKbKgq+F8qf4TWJ8fEtiJ54Z//744w3H15Kvdu5p0STvHwIc2YstWhOAs9
         WgZ5FgK1wgidAouVi5qGBwRU6CtveoU5SlVmT1NZac4I7Lq2kjr7iLvupYkB6wJTGFFI
         OdBCvu6sfrQV07u0uNmW4G+rKkPLQP941MxdewZ7Whci9H2FWFfKNTD70q5b2dnZmfL8
         vhS93JoiVjF6AqhjSyc7vHuE5ox56fHRvhCwBcGpRYb1q13J1lObzTKs9N/8uG+Nsyew
         M+zYQOw8vA78Xg3ysqiaBuVMJhsIrmV8HgURrBREOb5NUdya1/+lB/xbitrsUD5Gdpuc
         RLEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WA3wIv8fNJpzVXMK1Xyr32AFD1gnMGwriOJlS2MFIRA=;
        b=pKEbCplgpDasIIBViikMKofTtkGTlHzw7hg+30X0fUVkak0+VLdGFUI+hu6RTQVxEk
         6xTBEZkCf2CT2hhr1fqDeTwOYUWzwsaA+9VCioVI/HR5/e8tP6zhj4lSYdnHYhB1htnm
         UaSjPqtlCl4QgrGmDvMSoM3VnR5pyrWME0uICcPxqSNjVcsQGsZ8neaYZvh195tqkcsk
         2DF2hHimF8wUGyPpTUOsfURDRMDZ5OJOWY6ZeSjb0RfkwceTsAym8HQAq+XZQSWOPD/c
         f8jDZBGaQR0M8//YrxUx8yoVdjTcSXOPUVwvQYwhjQZSIFU0BVmC9ccIFTrkCu3Bpd8Y
         4eKQ==
X-Gm-Message-State: AOAM5329jrVq8R9ehoLtF+p+4O4CnVnG1Pqmx9ssPEOI2dxEa8y16Yqy
	ccMrOrejmOE1OdF6TGpqXjSpBZnikUo=
X-Google-Smtp-Source: 
 ABdhPJyeUaTl1DkHRMb52uNaRWb9N2+8vMksQfwTMQMpj0zjTTU38OSSKXwRP7dW08MUJ56i+NOihA==
X-Received: by 2002:a17:90a:d3d1:b0:1bb:fdc5:182 with SMTP id
 d17-20020a17090ad3d100b001bbfdc50182mr9299845pjw.206.1646376578818;
        Thu, 03 Mar 2022 22:49:38 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:f6a2:87a3:bed8:c9ed])
        by smtp.gmail.com with ESMTPSA id
 bd35-20020a056a0027a300b004f63bca32e7sm4002551pfb.208.2022.03.03.22.49.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 22:49:38 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] python3-privacyidea: update to 3.6.2
Date: Thu,  3 Mar 2022 22:49:35 -0800
Message-Id: <20220304064935.3276672-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220304064935.3276672-1-akuster808@gmail.com>
References: <20220304064935.3276672-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 06:49:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56363

Fix license.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...hon3-privacyidea_3.5.2.bb => python3-privacyidea_3.6.2.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/mfa/{python3-privacyidea_3.5.2.bb => python3-privacyidea_3.6.2.bb} (95%)

diff --git a/recipes-security/mfa/python3-privacyidea_3.5.2.bb b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
similarity index 95%
rename from recipes-security/mfa/python3-privacyidea_3.5.2.bb
rename to recipes-security/mfa/python3-privacyidea_3.6.2.bb
index 043cbfd..ecfeca6 100644
--- a/recipes-security/mfa/python3-privacyidea_3.5.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.6.2.bb
@@ -2,11 +2,11 @@ SUMMARY = "identity, multifactor authentication (OTP), authorization, audit"
 DESCRIPTION = "privacyIDEA is an open solution for strong two-factor authentication like OTP tokens, SMS, smartphones or SSH keys. Using privacyIDEA you can enhance your existing applications like local login (PAM, Windows Credential Provider), VPN, remote access, SSH connections, access to web sites or web portals with a second factor during authentication. Thus boosting the security of your existing applications."
 
 HOMEPAGE = "http://www.privacyidea.org/"
-LICENSE = "AGPL-3.0"
+LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "26aeb0d353af1f212c4df476202516953c20f7f31566cfe0b67cbb553de04763"
+SRC_URI[sha256sum] = "4441282d086331dac0aee336286de8262d9ac8eb11e14b7f9aa69f865caebe17"
 
 inherit pypi setuptools3
 
-- 
2.25.1


