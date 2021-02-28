Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web09.4979.1614552968587366169
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 14:56:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h15KsvcI;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id z7so8735566plk.7
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 14:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7MZzrClMmW32xduTMG0Fivcdz23mTN8Y1NKCBtWOmYs=;
        b=h15KsvcI0hNrjjx7eY2l4AtXNOMYHImS4CRlp9+RCtdQoqyWzAJlIikaOVgCmiPKGJ
         WpmKz8yQZ0fqSZY3EH+0MTOTdGg+d2q7P0RUsC2BVLlok+gXesQpc4lwKfnwdhWJ3QCw
         Jz38+FQxtzrIEKox5+aF+WO2Fw3P4TSw8G2isrqZMIFkNZJYb2dSyKIB4JLF5nuZMX9L
         ZeutzprddNckbJs43R60HOG+kfH0kV/KJyKBAnOhZMYf38N3J9ePUS3jpDiEEAnEUrma
         xiP+ug3oTD1Agpyc+ezXkU+jfbDzmLsqmFmz+3gLp/cTv2Un7zghzvCOfAOh46Adjq9S
         ujsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7MZzrClMmW32xduTMG0Fivcdz23mTN8Y1NKCBtWOmYs=;
        b=KnZCpx2DmSnUSvR+eJAspLuubfNqYO8eop3aajZrd2D8OwAamUieGvMLblCvV5KHC2
         PjvaytZzcM/Ll7HAc2MtLf5YD5bH42RAtbdZzbR4yls9Alh4vgVMAfKV/zE2XnusGteN
         41ER5hwLL+DK7FKeNFvVdSQOCzJw0ZE9HMj0FiJFBWzWWRccs568ZjJF6SD+xJSYWhwk
         CMJ8aMlcEGQ9iuwy0I5OVYEn6ppIXR8VagsCVzV3hVY7NYYCNIIIGaDIi8k3Nd6iV57C
         Z53Gyt8yrrAGR74lenK2P41S4acLwCg3ptNz2GiW/HUMF02laGaRCVzZQObKOU6lY4fX
         WDFg==
X-Gm-Message-State: AOAM530rqck3G6Su78cwXmM5nYJKpdBDOyl7DN98UqTxU2KdToCBAGab
	bQruljCBAlA8G4UNIubSCZ07/9ACeEw=
X-Google-Smtp-Source: ABdhPJxs8yE8xfDvM1j66UeiMXuisc+lEkVQWx+iZ+dSKTnePYbX4+Mm3xbU+93dXQjOqEHbGy+nZA==
X-Received: by 2002:a17:902:cece:b029:e4:89af:adf with SMTP id d14-20020a170902ceceb02900e489af0adfmr7482212plg.53.1614552967905;
        Sun, 28 Feb 2021 14:56:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w25sm15409431pfn.106.2021.02.28.14.56.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 14:56:07 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 02/12] checksec: upgrade 2.1.0 -> 2.4.0
Date: Sun, 28 Feb 2021 22:55:55 +0000
Message-Id: <20210228225605.3442507-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228225605.3442507-1-akuster808@gmail.com>
References: <20210228225605.3442507-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LIC_FILES_CHKSUM update do to yr change
---
 .../checksec/{checksec_2.1.0.bb => checksec_2.4.0.bb}         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-scanners/checksec/{checksec_2.1.0.bb => checksec_2.4.0.bb} (78%)

diff --git a/recipes-scanners/checksec/checksec_2.1.0.bb b/recipes-scanners/checksec/checksec_2.4.0.bb
similarity index 78%
rename from recipes-scanners/checksec/checksec_2.1.0.bb
rename to recipes-scanners/checksec/checksec_2.4.0.bb
index b67c98b..52bcf7c 100644
--- a/recipes-scanners/checksec/checksec_2.1.0.bb
+++ b/recipes-scanners/checksec/checksec_2.4.0.bb
@@ -4,9 +4,9 @@ SECTION = "security"
 LICENSE = "BSD"
 HOMEPAGE="https://github.com/slimm609/checksec.sh"
 
-LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=93fddcca19f6c897871f9b5f9a035f4a"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8d90285f711cf1f378e2c024457066d8"
 
-SRCREV = "04582bad41589ad479ca8b1f0170ed317475b5a5"
+SRCREV = "c3754e45e04f9104db93b2048afd094427102d48"
 SRC_URI = "git://github.com/slimm609/checksec.sh"
 
 S = "${WORKDIR}/git"
-- 
2.25.1

