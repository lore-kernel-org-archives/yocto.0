Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4076.1584582814210351280
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IjRuTvTH;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18E11E0183B; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0399E01885
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Received: by mail-pj1-f52.google.com with SMTP id nu11so264894pjb.1
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OfGjKNNtmVoml9mXM/+ZGL2DpbFBzek9pzRNrhN+a6g=;
        b=IjRuTvTHlzhbEKBso9OsncYlfKyzSabTTjeLonWts2JMVTLOf8syvBS51HmeMwy50Z
         wBKiu6ilWlIxS56fBofUESzxt7roYogEstGADMNJz+ytsF6ewUVx/LoFCQPZ3G0Danyz
         dhRy3rQ58JBoz4uyc4ZAWDKb1+0FO8sVQsYgSJCjdolpQZYyQELjDhQq29x3/pDLCAe2
         EFthLv/JRGLjHTyO+3WJX6AosYkzzUOfoq60vhmU6Oiqjgmr+WmKlw5IkGT1+fSiBDF1
         DBedtzodxgoysosSQjggBaDdahkD7UW6uYu1RFVZz3QdrnuboKGQ8w4LMR7FLbtjqr6U
         VCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=OfGjKNNtmVoml9mXM/+ZGL2DpbFBzek9pzRNrhN+a6g=;
        b=nFnzUVINGp567Z0nFVnZpfbXjeDFhaxenFY9HPttFDu62mNnpZHHKdUf1OJeppAAaX
         0u/hqG/qIcFoGD+/OdzjjD7ymADpmrSFs+UjiAQVysInhkXtwi/ms3tQtpOrWMiKCMLw
         qZPhTWPZTYaUfNMWZuh3Y+0b+RSzs6Qr5Yqoqwm1UvobE20kOi0W0aAdBC0i70e4jBrF
         /nhlVykHJSqMNyuDYmtvaX05+pk8a82z/kFQgLGoe/B+SsJELnzNCExgTQBD+AawsKdc
         CwVVXxKmW3PR126a375viy+pGIcVwKfUw7MX/hzHTZBUB+pWmance61T7wA3GUi8LwJt
         6ZeQ==
X-Gm-Message-State: ANhLgQ3H8/FNcXLJQ+JxW1YjkX2gXoQJAdnSyuTlKcWsRh+uhpgfTfRS
	JpapR/bauDbo3MEgIqN+3NYa9YolmS8=
X-Google-Smtp-Source: ADFU+vuDZZR3JY9jWDeGhyGeH8/kdDD3/ld0Nv61SpVuUoiTevaXc3tjMr6N9Xazb/EstABHhcXPZw==
X-Received: by 2002:a17:90a:1a51:: with SMTP id 17mr1201939pjl.118.1584582812204;
        Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id w31sm297157pgl.84.2020.03.18.18.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id BF1DC2A04DA; Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 10/20] core-image-cgl-*: Move to recipe directory
Date: Wed, 18 Mar 2020 18:53:11 -0700
Message-Id: <20200319015321.15525-10-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

* lsb content has been moved out to meta-lsb.
* Configure image to build with or with out lsb image present.
* Add warning about CGL compliance and lsb requirement and option
to squelch warning.

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../{ => recipes-core}/images/core-image-cgl-initramfs.bb      |  0
 meta-cgl-common/{ => recipes-core}/images/core-image-cgl.bb    | 10 +++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)
 rename meta-cgl-common/{ => recipes-core}/images/core-image-cgl-initramfs.bb (100%)
 rename meta-cgl-common/{ => recipes-core}/images/core-image-cgl.bb (54%)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/recipes-core/images/core-image-cgl-initramfs.bb
similarity index 100%
rename from meta-cgl-common/images/core-image-cgl-initramfs.bb
rename to meta-cgl-common/recipes-core/images/core-image-cgl-initramfs.bb
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/recipes-core/images/core-image-cgl.bb
similarity index 54%
rename from meta-cgl-common/images/core-image-cgl.bb
rename to meta-cgl-common/recipes-core/images/core-image-cgl.bb
index 86bf7d4..4a7d4f7 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/recipes-core/images/core-image-cgl.bb
@@ -1,6 +1,14 @@
-require recipes-extended/images/core-image-lsb.bb
+require ${@bb.utils.contains("BBFILE_COLLECTIONS", "lsb", "recipes-lsb/images/core-image-lsb.bb", "recipes-core/images/core-image-base.bb", d)}
 
 
+LSB_WARN ?= "1"
+python () {
+    lsb_warn = d.getVar("LSB_WARN")
+    if bb.utils.contains("BBFILE_COLLECTIONS", "lsb", "1", "0", d) == "0" and lsb_warn == "1":
+       bb.warn("CGL compliance requires lsb, and meta-lsb is not included.\n" + \
+               "To disable this warning set LSB_WARN='0'")
+}
+      
 VALGRIND ?= ""
 VALGRIND_powerpc ?= "valgrind"
 VALGRIND_e500v2 ?= ""
-- 
2.13.3

