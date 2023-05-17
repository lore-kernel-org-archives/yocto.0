Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12582C7EE2A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:15:02 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.61668.1684354499919533780
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:15:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=p7+ueWNH;
 spf=pass (domain: baylibre.com, ip: 209.85.222.181, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-75795493bceso75703085a.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354499; x=1686946499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sqhom4dc4Q+xIa2MqqsR76v3WNmNOx92lxjZjEC7U3U=;
        b=p7+ueWNH0OwAFivRJPI38fBDwjNWNKkui/zsV34TYh/+Cx0c6CSlLeKPqxshKkXEMm
         C6dM9OkKJzEh8ohikLjDYtej5vujvG94wtb5tN4omNaz72xgrWhTI+RrSQ6SgqHz00ZA
         NKSdRXTp0BzCdvgcX+JGUAxi1Ly8izkunaO/hnXVA/xMQnlym0BIJBmpabWDRNukECNC
         /dyFlYTeP1pDumwa3iPPpSpY6myVyRtMEtHsy8pdsSSq/1XoOKSMIN9j7NZRquw7vt3w
         H9jB2PzNod48U5pJRyuJC2TCmp7ERmGMwbs3Csk+a23AguEnNl/LFhql2cMNP7CZvQMf
         Q5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354499; x=1686946499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sqhom4dc4Q+xIa2MqqsR76v3WNmNOx92lxjZjEC7U3U=;
        b=F8dFO7ScDfvU6l6nbiG6R0k7KizRQZzt9YSye8e5gli3UQYhv3+j/0+uKtqM1uGi6L
         uoQmFt5GCAgoa6yVWwAUVNI1sdgbGR0dgww1j9jxe1XZ5r1h3ytgC4x6Wr3xLiFDb5iy
         FB/gvporzLftBbtR5z0KK7pVguHSQ+raajTvdu2VzwMYZ3WYZKOOjNh742TkRwhhGsa0
         9P8ZuEavkRSl3yQ+Q0NEGGvhGlvq3JNwDNUeBaP73JeneIQ121YV6tD6Rx38devUOAPD
         hnaNgI6gjl0jnvSbJMXNtQ1gsQzSEup0bUDFAh379zZwsgAQUgsgQJ3WKGX2s6PSyOLF
         rkUw==
X-Gm-Message-State: AC+VfDzTDutgQGNu7XrHasGvRnlr2THliWtq/xpHVfIJEy8t4D9sBEOY
	SlZTN2hYlHsk/7XCHephxa60W82APqIlw3GN8aw+RQ==
X-Google-Smtp-Source: ACHHUZ4O9XsS9qz/+cxoKGC1bG4ZNTJgN5pAPYxzHAI+SLgylbL0iKwK4u8rb4HKYrHnZgwMk0c/mw==
X-Received: by 2002:a05:6214:1bcb:b0:5e0:7ecb:8ffb with SMTP id m11-20020a0562141bcb00b005e07ecb8ffbmr1638554qvc.8.1684354498903;
        Wed, 17 May 2023 13:14:58 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a100a00b007592547a822sm868084qkj.80.2023.05.17.13.14.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:14:58 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 03/11] python3-lazy-object-proxy: upgrade 1.3.1 -> 1.9.0
Date: Wed, 17 May 2023 16:14:48 -0400
Message-Id: <20230517201456.1608917-4-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517201456.1608917-1-tgamblin@baylibre.com>
References: <20230517201456.1608917-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:15:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60050

Copy the recipe from meta-python to handle the upgrade, so that
patchtest can build it without requiring the layer.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../python/python3-lazy-object-proxy_1.3.1.bb         | 10 ----------
 .../python/python3-lazy-object-proxy_1.9.0.bb         | 11 +++++++++++
 2 files changed, 11 insertions(+), 10 deletions(-)
 delete mode 100644 meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.3.1.bb
 create mode 100644 meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.9.0.bb

diff --git a/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.3.1.bb b/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.3.1.bb
deleted file mode 100644
index a876fa7..0000000
--- a/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.3.1.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-SUMMARY = "A fast and thorough lazy object proxy"
-HOMEPAGE = "https://python-lazy-object-proxy.readthedocs.io/"
-LICENSE = "BSD"
-SECTION = "devel/python"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=ec680df42d8ad56427a83308817658cc"
-
-SRC_URI[md5sum] = "e128152b76eb5b9ba759504936139fd0"
-SRC_URI[sha256sum] = "eb91be369f945f10d3a49f5f9be8b3d0b93a4c2be8f8a5b83b0571b8123e0a7a"
-
-inherit pypi setuptools3
diff --git a/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.9.0.bb b/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.9.0.bb
new file mode 100644
index 0000000..74c5e9b
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/python/python3-lazy-object-proxy_1.9.0.bb
@@ -0,0 +1,11 @@
+SUMMARY = "A fast and thorough lazy object proxy"
+HOMEPAGE = "https://python-lazy-object-proxy.readthedocs.io/"
+LICENSE = "BSD-2-Clause"
+SECTION = "devel/python"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d606e94f56c21c8e0cdde0b622dcdf57"
+
+DEPENDS += "${PYTHON_PN}-setuptools-scm-native ${PYTHON_PN}-pip-native"
+
+SRC_URI[sha256sum] = "659fb5809fa4629b8a1ac5106f669cfc7bef26fbb389dda53b3e010d1ac4ebae"
+
+inherit pypi setuptools3
-- 
2.40.1


