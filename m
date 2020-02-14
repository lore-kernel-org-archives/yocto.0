Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web09.2499.1581657391829614112
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 21:16:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IYdKAdi1;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id j9so4276397pfa.8
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2020 21:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=abHQLPV6dq7UcnZgXSB2EcM4TM8Ya13FX/B5az791+I=;
        b=IYdKAdi1spZzPmTMKc/ey14xDYYTURiTVi5nKxpAOmRhYBo+8pFDiEF8sQIJQIS6Cq
         GHMm8rmd4GEmngva8dMprqqEX9L6F7Yb0K1cVhLlrWtAE76ZqHMuT/fGtkmQ4jzC2IpO
         GMxRM2ytr952XOjxEb9Q+YiJnWLEy7rf+gml0GU8sLK/9SuKJJyqWRdo6iYbelfjWW9C
         dz3LI2LFmFMJoVm2VcXSPBefTH0oX5dsU+cOQfz+bI+/ndIdba9YrUmRlb2tDcsjONPf
         IDNDZh6haYAu3zY0v0IPq2w071pFHZ8lMT+QfisoZxIpycNnnd/eXlQuXScDLa3obWSr
         0AfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=abHQLPV6dq7UcnZgXSB2EcM4TM8Ya13FX/B5az791+I=;
        b=ZtJgk0mSs64YJWCp4agWW5TTDJw0832O6BDAhBW1lJz8T0KdEJBUTFwfV83ElqHXwP
         rSSeq/dJinEdeecmUAu/bTxjFSyvT0i0qoqb2U5Qrofm6t/IxbVibdm1aCd2INy/FY/1
         2aypQ1/4/uJ14sD6mheW0rEwvFTLYcyMeXva/QA64T0wQAaLypaxNv1iARwtnpyDVRFU
         qCMAf16ZLp6PfXhA+1kJQnJb3U3UGBf2Ph/TolHZbvNNiMiMkUzCeXmG+kiLdlD19SEB
         HfuXVscRUDtTdXYvJ3hKWpRLVE+as5IRSDAYAf2Wx6m9G94HEdTaeot0TgyfP+HbD5Tq
         H60A==
X-Gm-Message-State: APjAAAUyKKJWso6Ew4QYRXZcCG0ASUj7JhtHKilGB2+s6FhJrr5grGY0
	le97delLeGPN8UVmfkU7BaO41n5K
X-Google-Smtp-Source: APXvYqyzWBJQzajuv2jh2VB0eWrFBe0PrrWaFsb4QnISgxtquIla5Ix+56GdCrkUvscEFkTFuLfIqA==
X-Received: by 2002:a63:4617:: with SMTP id t23mr1580374pga.444.1581657390843;
        Thu, 13 Feb 2020 21:16:30 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id p24sm4974946pgk.19.2020.02.13.21.16.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 21:16:30 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] google-authenticator-libpam: install module in pam location
Date: Fri, 14 Feb 2020 05:16:28 +0000
Message-Id: <20200214051628.20339-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

pam_google_authenticator.so was being installed where pam could not find
it. Move it where the rest of the pam modules site.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../google-authenticator-libpam_1.08.bb                      | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
index 2ba949e..f9ca092 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
@@ -14,7 +14,10 @@ inherit autotools features_check
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
+# Use the same dir location as PAM
+EXTRA_OECONF = "--libdir=${base_libdir}" 
+
 PACKAGES += "pam-google-authenticator"
-FILES_pam-google-authenticator = "${libdir}/security/pam_google_authenticator.so"
+FILES_pam-google-authenticator = "${base_libdir}/security/pam_google_authenticator.so"
 
 RDEPNEDS_pam-google-authenticator  = "libpam"
-- 
2.17.1

