Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.22126.1599744643714214585
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VpWG8FMi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id g4so6727440wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kDRFvDGg8dxQa96U3brKBLJ83eRHvUkdoRyme1dL/lc=;
        b=VpWG8FMiuLCx7kFr7EPZnAGPAsemgE28sb8O2Vj2naRIHZ9H4JKM1wZh9XKhYUfbKx
         vu9EUuXEHLNzI0ndfK1Nl2AVabirZhJD7Ppr4Hqfp4ooScq2+KHreJywyZYH3Cp3t3fq
         U8I+ux68TmdzqDaLeNvKYI6VTf3cHu9KOh2PE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kDRFvDGg8dxQa96U3brKBLJ83eRHvUkdoRyme1dL/lc=;
        b=ZQlD6BNdA6PoURaLIQAH7KTg5JHs69nYKJ6lHaRMeP3xfvJbVYvbz1gBrgIQejIB73
         VNg/QkN7lo8eMz0ICbQcJJV9r7qGnuQ8MMPwBcbT3dg1hOsLC+IjKPJ1/DGohX0LlD2m
         r5547CDNBANs6XloQJ2D7owk1CRR+eqnlflzDziZDQIFDgPyB5vrx8FGtwedNASixB8y
         v2dPL7GtiP88bp2MaYl+/7YWmdQLVaPRYzfoI9xx1bicvYpjEA8Q/UJpG+8GPJXPNBjl
         R0Oku0sooLpaGXTM6F8XLXPkqkb+dmmpDTBAyo0p/2NqqSOJw+kPYpDvQH6dajmsnDUG
         fe2Q==
X-Gm-Message-State: AOAM530Duulj5eHmiszD8M2vurwpWYqbu2l/rrYMazDFGeRUKVHoi4UG
	1qUMM98mNl0Q6nKPK967h3ateQLWte/Lcg==
X-Google-Smtp-Source: ABdhPJz4usphi/GDriTeC/lc7vJFsql8FFw47pYbcTRkEyHxDb4HmkFIt5Kebk3w5gFDI2lrU8oToQ==
X-Received: by 2002:adf:82e6:: with SMTP id 93mr9008613wrc.393.1599744641969;
        Thu, 10 Sep 2020 06:30:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:41 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 07/40] config.json: Disable PRSERV
Date: Thu, 10 Sep 2020 14:30:02 +0100
Message-Id: <20200910133035.2044355-7-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This was copied from the old autobuilder configuration without much thought.
It would only be effective if we had a common PRSERV or saved the database
but we don't. It therefore makes sense to disable it.

One problem it was causing was inconsistency in the buildhistory output as
PKGR would change "r0" to "r0.0" and vice versa. The issue depended on whether
the build has coming from sstate or not and the settings the sstate had been
built with.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/config.json b/config.json
index 3a0d195..180566b 100644
--- a/config.json
+++ b/config.json
@@ -24,7 +24,6 @@
         "DISTRO" : "poky",
         "SDKMACHINE" : "i686",
         "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
-        "PRSERV" : "PRSERV_HOST = 'localhost:0'",
         "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
         "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate-thud'"],
         "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '${BASE_PUBLISHDIR}/sstate/@RELEASENUM@'"],
@@ -109,7 +108,6 @@
             "MACHINE" : "qemux86-64",
             "SDKMACHINE" : "x86_64",
             "PACKAGE_CLASSES" : "package_rpm",
-            "PRSERV" : false,
             "extravars" : [
                 "RPM_GPG_SIGN_CHUNK = '1'"
             ],
@@ -201,7 +199,6 @@
                 "MACHINE" : "qemux86-64",
                 "SDKMACHINE" : "x86_64",
                 "PACKAGE_CLASSES" : "package_rpm",
-                "PRSERV" : false,
                 "extravars" : [
                     "RPM_GPG_SIGN_CHUNK = '1'"
                 ],
@@ -564,7 +561,6 @@
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
             "BBTARGETS" : "universe:do_checkuri",
-            "PRSERV" : false,
             "extravars" : [
                 "SOURCE_MIRROR_FETCH = '1'",
                 "BB_NUMBER_THREADS = '1'",
-- 
2.25.1

