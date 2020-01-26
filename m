Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.125.1580077959969466411
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2020 14:32:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FheJykD0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id y11so8759443wrt.6
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2020 14:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UkXI50b+kI+iLIaTHYn8gt2yD2Mvdp0RiFfGzwUnfyk=;
        b=FheJykD0lVBKuBJsuQtqcib11ZqLniFLN2f3VbiY/oLBh4aIv9TDIYvOQ6+XxvALFB
         wH6RT6Pj99fMT27Jc35FPMKjBu5IH6KKYaQ7QBJAFstl7/WmsVyiQ+tvg08DiYSKTO3r
         gKZ6Hbw594vyLNl2ikq9Puwudq/bXd0SgaWC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UkXI50b+kI+iLIaTHYn8gt2yD2Mvdp0RiFfGzwUnfyk=;
        b=LnqP3fWShU5hLljVMovCONd04KyRZhZ6KFJVBVjcf+pm7fheGIt29FnqnmrmnNP579
         94M5TNmQoCvLctZa9SpWwO6oAzWU+27gZrl41ttDxM7X+E0KNm3+ziG1sHxDQtRjx6Q8
         0TfV3XsGxR0wvgiG9fUMsCLgOhkcRmbBS6yKI602x8og/4KnXQLLKMUYgsig5/vG6YiP
         j4ULvJZ62mFDaQtZeBahtx1j2e4qeFDZlLyF7KG5gLq1ddiwFXMMV4yaabZs/mR0AsrH
         bVXHzq5cp3zolaveqKliLVB0lFPAzJPTr3KOTEn7CiGEnNm8whJLR9NMba7nDmWRC+tR
         p2yQ==
X-Gm-Message-State: APjAAAVMSA9bIcSRfPjVZh/qf+X9F/gpgOiI9djXPTWMVjS/6MfKXWBD
	vSehoIpsknX07Bd5MTfYTFoeKUzUsEo=
X-Google-Smtp-Source: APXvYqw6YzQGyqsjGh5CtNj1blsaFn+3Uicitt3ACLzZLcyGYVKlJoOR+/fNsSQ++x4Va3IXmxBocw==
X-Received: by 2002:adf:f80b:: with SMTP id s11mr18787435wrp.12.1580077958071;
        Sun, 26 Jan 2020 14:32:38 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h8sm19910939wrx.63.2020.01.26.14.32.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2020 14:32:37 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] native/cross/nativesdk: Drop obsolete do_populate_sysroot[stamp-extra-info]
Date: Sun, 26 Jan 2020 22:32:33 +0000
Message-Id: <20200126223234.21589-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With recipe specific sysroot, these settings do nothing. Drop
the obsolete code.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/cross.bbclass     | 1 -
 meta/classes/crosssdk.bbclass  | 1 -
 meta/classes/native.bbclass    | 1 -
 meta/classes/nativesdk.bbclass | 1 -
 4 files changed, 4 deletions(-)

diff --git a/meta/classes/cross.bbclass b/meta/classes/cross.bbclass
index 6dcddd6f2e6..bfec91d0433 100644
--- a/meta/classes/cross.bbclass
+++ b/meta/classes/cross.bbclass
@@ -70,7 +70,6 @@ libdir = "${exec_prefix}/lib/${CROSS_TARGET_SYS_DIR}"
 libexecdir = "${exec_prefix}/libexec/${CROSS_TARGET_SYS_DIR}"
 
 do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${STAGING_DIR_NATIVE}/"
-do_populate_sysroot[stamp-extra-info] = ""
 do_packagedata[stamp-extra-info] = ""
 
 do_install () {
diff --git a/meta/classes/crosssdk.bbclass b/meta/classes/crosssdk.bbclass
index c0c0bfee16a..c718a09025d 100644
--- a/meta/classes/crosssdk.bbclass
+++ b/meta/classes/crosssdk.bbclass
@@ -37,7 +37,6 @@ target_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 target_exec_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 baselib = "lib"
 
-do_populate_sysroot[stamp-extra-info] = ""
 do_packagedata[stamp-extra-info] = ""
 
 # Need to force this to ensure consitency across architectures
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 3a4f572552e..08106e345ca 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -191,7 +191,6 @@ do_addto_recipe_sysroot[deptask] = "do_populate_sysroot"
 inherit nopackages
 
 do_packagedata[stamp-extra-info] = ""
-do_populate_sysroot[stamp-extra-info] = ""
 
 USE_NLS = "no"
 
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 03135acedc0..7b757107267 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -107,7 +107,6 @@ python () {
 addhandler nativesdk_virtclass_handler
 nativesdk_virtclass_handler[eventmask] = "bb.event.RecipePreFinalise"
 
-do_populate_sysroot[stamp-extra-info] = ""
 do_packagedata[stamp-extra-info] = ""
 
 USE_NLS = "${SDKUSE_NLS}"
-- 
2.20.1

