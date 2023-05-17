Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03A3BC7EE2C
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 20:22:52 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.61917.1684354969092952167
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 13:22:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=eY7pvPLa;
 spf=pass (domain: baylibre.com, ip: 209.85.222.181, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-757942bd912so74222885a.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 13:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684354968; x=1686946968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sqhom4dc4Q+xIa2MqqsR76v3WNmNOx92lxjZjEC7U3U=;
        b=eY7pvPLaLlbqV5u+8aDwuzkY/pe8ZG/uzXAcxXOiUM4UQoenj2sHOcIpWq3bt1nf0l
         dyHOKV84TnuSd/+HLpszTSw8/UI6x6GitDA469haPz/RvP3XKE5/BGNR9yGYlYO2F5YB
         gHley6GEAekmGxoJtAZoBVGe1QF7gyr6gTh09ZMwsbZ2KjQjV9suV7WeamSVV9n54UE3
         GLKiAZBAp+EuJ/j/mqnPgqJmkNtnZAFSzbvSwW5TxqNxp8l+LX6IrrdKlmUdYB5YR10Y
         ++cC0RxihXsLGmKY32ogm4v46sJ+HiMKjzdqYnrU6lF+7T9ujIHLfX6tkU57AH3spb3U
         q55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684354968; x=1686946968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sqhom4dc4Q+xIa2MqqsR76v3WNmNOx92lxjZjEC7U3U=;
        b=BVh2ut3/tMYdfZde4hMtVcmmBJQvkvlQvDBLK1FO2Ao9EJxFKg6DJe9ZvEDuSRqsgc
         bZoYh2TCBfnRNFrXZHun23UP5Wx9K8AeZQZMKRD2BJUufdRHXzayYBug78VDbaPHGKke
         2apNUDjs0K6/IyffJBlb7UigjtkPF5Cs0E/JdO80dBkTkSNGzzucYGtO2Zn1IEggkTTY
         kobDwqPjc8nIt8nx1wr0JKiyxVESyQhCpk4FP3Q3Ufw/iJqGZHTFwMoR7Ie4f7paoonm
         QbWORGgOcDz/qU1zZeiZwgbIIWWA+dP9oqWdMoYt6N234g0cQXHJN6vFTik5nclQ0dID
         qPsg==
X-Gm-Message-State: AC+VfDwwpOzav4dNu/v/g+uaEdOxv0oYmw0pR5cNgLnZEZ0ZrOqt+oVp
	DU4xKDbGbcsGcF8rq4rTHDHxIm8J4yUAKtfc63GoNQ==
X-Google-Smtp-Source: ACHHUZ4dLbUneodPYRYI6a2RcT5Bp5A4t9HEha5ibg5XuNqbgg9UA09ig6My4r5pA1QzoUPJG9J/UQ==
X-Received: by 2002:ad4:5fcb:0:b0:5ef:865f:e5c9 with SMTP id jq11-20020ad45fcb000000b005ef865fe5c9mr1749850qvb.29.1684354967274;
        Wed, 17 May 2023 13:22:47 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id bv24-20020a05622a0a1800b003f3c9754e1dsm6790815qtb.17.2023.05.17.13.22.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 13:22:47 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][patchtest][PATCH 03/11] python3-lazy-object-proxy: upgrade 1.3.1 -> 1.9.0
Date: Wed, 17 May 2023 16:22:36 -0400
Message-Id: <20230517202244.1612047-4-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230517202244.1612047-1-tgamblin@baylibre.com>
References: <20230517202244.1612047-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 20:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60062

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


