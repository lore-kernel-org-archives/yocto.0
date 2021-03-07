Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web12.22537.1615131321553503139
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t+SdwMms;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id b15so1697370pjb.0
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=JwBrWJ54NAP03VIF1mDPAs/xF5uhdT0XVSHOQWeNwIY=;
        b=t+SdwMmsHGYZbbvr5r7KotvQA8QPweiFpkjuEYUUqKERJtc+XkNTC40R6Xn6DPaqGO
         l0Hd9FnM/4JjZzuqOBvc14CdnE70xCocfMmwg+bJjgO24Haovu5+8h7tJ7k82oC9Lxlz
         YHOi3oIPW+ein27YXDHNS33OlD+j9fRskgykdDzrH5QmSoifPvTFnmdgWBWRjsXOwEAo
         jKhugcSeU8hrpsG0/2XEIYMYN+umhDEyuGdS/KE8fL+bff2xGs+4FhZVbMAjNG92pw/s
         T6On6/wQWFGBZ12uX9MeenpJ3ONM2DvLMtlbSJhvUFzbxX5q+60uSfx6LIUa4n9MxZZb
         1/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=JwBrWJ54NAP03VIF1mDPAs/xF5uhdT0XVSHOQWeNwIY=;
        b=SuQJon+El6XqZI+HaSwTeuidtyPYtsJuQhRy/9oVWBO2rnpurliciS3M8bP5MBDSw0
         6NdaspyRBWWAM3dsqoCJ26JYL8OBtblhEdJTgAE+iH0dzVztJkQS3HMQfUx6bNppay3N
         SBKIoR+XIstSe93tjYD0Tppf8VsoFKVpaa7bJDsSTQm4Of5hlTOC4Y4MN9e+WNZ+GCD5
         GHpBt3A1o8hQAv0M5ETBRybtD3bppGmd41+W6ifcguNmkYdsRVlzUVdaDzJXb/FW/4Br
         rmX1QLpULCCH9GttNMUQ9PNEhdhpi4lDa7mVjM/1EPG03hxiW5wflP5UzBJN7kYN7Y3q
         FAGQ==
X-Gm-Message-State: AOAM530jbENp/JmmfPotrVu8BgoxsykB/pCQ+jX9+FvAQjgTs5suqzxR
	iu8CMjgRQv0o4h4em8B/ExLFNfc6wEI=
X-Google-Smtp-Source: ABdhPJzRxUKYf8OgzxAQb/s9TOgoFHLtuqQgppQRVW2NLpzPj/WS7wiS3PHtF5DaZZRcSx8iF7YeVA==
X-Received: by 2002:a17:90a:cb12:: with SMTP id z18mr19380798pjt.132.1615131320816;
        Sun, 07 Mar 2021 07:35:20 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:20 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 2/8] ibmtpm2tss: update to 1.6.0
Date: Sun,  7 Mar 2021 07:35:11 -0800
Message-Id: <20210307153517.5761-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...efile.am-expand-wildcards-in-prereqs.patch | 30 ++++++++-----------
 ...bmtpm2tss_1.5.0.bb => ibmtpm2tss_1.6.0.bb} |  2 +-
 2 files changed, 14 insertions(+), 18 deletions(-)
 rename meta-tpm/recipes-tpm2/ibmtpm2tss/{ibmtpm2tss_1.5.0.bb => ibmtpm2tss_1.6.0.bb} (95%)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
index 8b13fb6..cfda80f 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss/0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch
@@ -15,17 +15,15 @@ Signed-off-by: Jens Rehsack <sno@netbsd.org>
  utils12/Makefile.am |  8 ++++-
  2 files changed, 79 insertions(+), 4 deletions(-)
 
-diff --git a/utils/Makefile.am b/utils/Makefile.am
-index 1e51fe3..170a26e 100644
---- a/utils/Makefile.am
-+++ b/utils/Makefile.am
-@@ -81,9 +81,78 @@ libibmtssutils_la_LIBADD = libibmtss.la $(LIBCRYPTO_LIBS)
+Index: git/utils/Makefile.am
+===================================================================
+--- git.orig/utils/Makefile.am
++++ git/utils/Makefile.am
+@@ -85,9 +85,78 @@ libibmtssutils_la_LIBADD = libibmtss.la
  
- noinst_HEADERS = CommandAttributes.h imalib.h tssdev.h ntc2lib.h tssntc.h Commands_fp.h objecttemplates.h tssproperties.h cryptoutils.h Platform.h tssauth.h tsssocket.h ekutils.h eventlib.h tssccattributes.h
+ noinst_HEADERS = CommandAttributes.h imalib.h tssdev.h ntc2lib.h tssntc.h Commands_fp.h objecttemplates.h tssproperties.h cryptoutils.h Platform.h tssauth.h tsssocket.h ekutils.h eventlib.h efilib.h tssccattributes.h
  # install every header in ibmtss
 -nobase_include_HEADERS = ibmtss/*.h
--
--notrans_man_MANS = man/man1/*.1
 +nobase_include_HEADERS = ibmtss/ActivateCredential_fp.h ibmtss/ActivateIdentity_fp.h ibmtss/BaseTypes.h \
 +	ibmtss/CertifyCreation_fp.h ibmtss/Certify_fp.h ibmtss/CertifyX509_fp.h ibmtss/ChangeEPS_fp.h \
 +	ibmtss/ChangePPS_fp.h ibmtss/ClearControl_fp.h ibmtss/Clear_fp.h ibmtss/ClockRateAdjust_fp.h \
@@ -65,7 +63,8 @@ index 1e51fe3..170a26e 100644
 +	ibmtss/tssmarshal.h ibmtss/tssprintcmd.h ibmtss/tssprint.h ibmtss/tssresponsecode.h ibmtss/tsstransmit.h \
 +	ibmtss/tssutils.h ibmtss/Unmarshal12_fp.h ibmtss/Unmarshal_fp.h ibmtss/Unseal_fp.h ibmtss/VerifySignature_fp.h \
 +	ibmtss/ZGen_2Phase_fp.h
-+
+ 
+-notrans_man_MANS = man/man1/*.1
 +notrans_man_MANS = man/man1/tssactivatecredential.1 man/man1/tsscertify.1 man/man1/tsscertifycreation.1 \
 +	man/man1/tsscertifyx509.1 man/man1/tsschangeeps.1 man/man1/tsschangepps.1 man/man1/tssclear.1 \
 +	man/man1/tssclearcontrol.1 man/man1/tssclockrateadjust.1 man/man1/tssclockset.1 man/man1/tsscommit.1 \
@@ -101,11 +100,11 @@ index 1e51fe3..170a26e 100644
  
  if CONFIG_TPM20
  noinst_HEADERS += tss20.h tssauth20.h ibmtss/tssprintcmd.h
-diff --git a/utils12/Makefile.am b/utils12/Makefile.am
-index a01f47c..e9fe61e 100644
---- a/utils12/Makefile.am
-+++ b/utils12/Makefile.am
-@@ -9,7 +9,13 @@ libibmtssutils12_la_CFLAGS = -I$(top_srcdir)/utils
+Index: git/utils12/Makefile.am
+===================================================================
+--- git.orig/utils12/Makefile.am
++++ git/utils12/Makefile.am
+@@ -9,7 +9,13 @@ libibmtssutils12_la_CFLAGS = -I$(top_src
  # result: [current-age].age.revision
  libibmtssutils12_la_LDFLAGS = -version-info @TSSLIB_VERSION_INFO@ ../utils/libibmtss.la
  
@@ -120,6 +119,3 @@ index a01f47c..e9fe61e 100644
  noinst_HEADERS = ekutils12.h
  
  bin_PROGRAMS = activateidentity createendorsementkeypair createwrapkey extend flushspecific getcapability loadkey2 makeidentity nvdefinespace nvreadvalueauth nvreadvalue nvwritevalueauth nvwritevalue oiap osap ownerreadinternalpub ownersetdisable pcrread quote2 sign startup takeownership tpminit createekcert makeekblob eventextend imaextend
--- 
-2.17.1
-
diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
similarity index 95%
rename from meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
rename to meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
index 18ad7eb..4d9b554 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.5.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
@@ -17,7 +17,7 @@ DEPENDS = "openssl ibmswtpm2"
 
 inherit autotools pkgconfig
 
-SRCREV = "aa6c6ec83793ba21782033c03439977c26d3cc87"
+SRCREV = "3e736f712ba53c8f06e66751f60fae428fd2e20f"
 SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
            file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
            "
-- 
2.17.1

