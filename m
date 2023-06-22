Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 745EBEB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 11:05:06 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web10.8631.1687431898355061487
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 04:04:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=IIzmt4Of;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-57045429f76so71510747b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 04:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687431897; x=1690023897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NRqu4TJOD3637Z8VWjaQuoun/1NqH97H961ljkfsFNQ=;
        b=IIzmt4OfRr+n5063rR9LP9v3OKW3wy7CiQnQr2Uu1dqnMvG7066ywcgaCmfJpY026N
         oJkhowoCXX8aDPyEFTGdOypeuclqVVXHqxl4L8mdBAuR7HNR+qdbN/t31VeAOzC7Qib2
         5D+NHmWb5QhhvJbVD5BriPVLADh4GX55WGz33b8pR96bTvDe/stRXGKxbDDYKu+R1xWt
         erttXUiNRsT+IFc+tyZCSa/0tfVj9717XuqG2G4BWlVBZfptBVwjblL+wmYIU2kYoUsd
         SIFDs11etFu6vFlkEvaUrvU9Pjv/Av7hlzEoz/9s+Wr9JPWahnMmUFHf3nDSjqZOP35V
         cYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687431897; x=1690023897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NRqu4TJOD3637Z8VWjaQuoun/1NqH97H961ljkfsFNQ=;
        b=JUeh8koAdC1276rCWBuTDxziquVLWYbnFNNk45TQqW7l1Wj1ci6MFICxtfYfrhRfp/
         qPYiIiQ68isrg1cE2QSmSyOViu7wDHogPOuOnZij2OkG6a59BHWf/FZyb/EUt2tdX+ur
         YNBYwdGxKZ+SCDt1uQLQnhRGWKLDJ+/mazbi7woOQUkFbMewtA7neZZQtipZB7hzyHji
         OZW/EQ+WapFogxS0eZJq6OWBkF4ms7iYi8vb2xPeg2uuHJnAMlcA720ebv+Cf785JQtC
         9SYKRD/yI5T0P3qLwx592oZ6UJ97cd9BFiG//nsQ22+0RUUpuc+cetrzZV3rTBz5lIHV
         K7+g==
X-Gm-Message-State: AC+VfDx++oRKSx9JFeaX5R4HDMfn+FtyFXe1Zh7r+wCm2zidZXZJJ+2X
	8w8r8EYs6T7DDpn1+4Ckil88MOjrFIQ=
X-Google-Smtp-Source: ACHHUZ56LoZHwlYMLyl7l/nnhkciZ79aFlBcxi6P1CEVKvfpP/ep056DgraG+9+DVoJpeTZQzkaE3w==
X-Received: by 2002:a81:bb43:0:b0:56c:fce5:ac2d with SMTP id a3-20020a81bb43000000b0056cfce5ac2dmr17324149ywl.39.1687431896959;
        Thu, 22 Jun 2023 04:04:56 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id y142-20020a0dd694000000b005707fb5110bsm1763636ywd.58.2023.06.22.04.04.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 04:04:56 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: Add Poky
Date: Thu, 22 Jun 2023 07:04:55 -0400
Message-Id: <20230622110455.1388803-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 11:05:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60397

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...scap-security-guide-add-Poky-support.patch | 91 +++++++++++++++++++
 .../scap-security-guide_0.1.67.bb             |  1 +
 2 files changed, 92 insertions(+)
 create mode 100644 recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch

diff --git a/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch
new file mode 100644
index 0000000..355f954
--- /dev/null
+++ b/recipes-compliance/scap-security-guide/files/0001-scap-security-guide-add-Poky-support.patch
@@ -0,0 +1,91 @@
+From 23a224203a73688567f500380644e5cf30c8ed99 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Thu, 22 Jun 2023 06:19:26 -0400
+Subject: [PATCH] scap-security-guide: add Poky support
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ products/openembedded/product.yml             |  7 +++-
+ .../openembedded/transforms/constants.xslt    |  4 +--
+ shared/checks/oval/installed_OS_is_poky.xml   | 33 +++++++++++++++++++
+ 3 files changed, 41 insertions(+), 3 deletions(-)
+ create mode 100644 shared/checks/oval/installed_OS_is_poky.xml
+
+diff --git a/products/openembedded/product.yml b/products/openembedded/product.yml
+index 9f2f12d737..a495e197c0 100644
+--- a/products/openembedded/product.yml
++++ b/products/openembedded/product.yml
+@@ -14,6 +14,11 @@ init_system: "systemd"
+ cpes_root: "../../shared/applicability"
+ cpes:
+   - openembedded:
+-      name: "cpe:/o:openembedded"
++      name: "cpe:/o:openembedded:nodistro:"
+       title: "OpenEmbedded nodistro"
+       check_id: installed_OS_is_openembedded
++
++  - poky:
++      name: "cpe:/o:openembedded:poky:"
++      title: "OpenEmbedded Poky reference distribution"
++      check_id: installed_OS_is_poky
+diff --git a/products/openembedded/transforms/constants.xslt b/products/openembedded/transforms/constants.xslt
+index 85e812a7c1..8901def2f9 100644
+--- a/products/openembedded/transforms/constants.xslt
++++ b/products/openembedded/transforms/constants.xslt
+@@ -2,8 +2,8 @@
+ 
+ <xsl:include href="../../../shared/transforms/shared_constants.xslt"/>
+ 
+-<xsl:variable name="product_long_name">OpenEmbedded nodistro</xsl:variable>
+-<xsl:variable name="product_short_name">OE nodistro</xsl:variable>
++<xsl:variable name="product_long_name">OpenEmbedded based distribution</xsl:variable>
++<xsl:variable name="product_short_name">OE distros</xsl:variable>
+ <xsl:variable name="product_stig_id_name">empty</xsl:variable>
+ <xsl:variable name="prod_type">openembedded</xsl:variable>
+ 
+diff --git a/shared/checks/oval/installed_OS_is_poky.xml b/shared/checks/oval/installed_OS_is_poky.xml
+new file mode 100644
+index 0000000000..9c41acd786
+--- /dev/null
++++ b/shared/checks/oval/installed_OS_is_poky.xml
+@@ -0,0 +1,33 @@
++<def-group>
++  <definition class="inventory" id="installed_OS_is_poky" version="1">
++    <metadata>
++      <title>Poky</title>
++      <affected family="unix">
++        <platform>multi_platform_all</platform>
++      </affected>
++      <description>The operating system installed is a Poky referenece based System</description>
++    </metadata>
++    <criteria comment="System is Poky reference distribution" operator="AND">
++      <extend_definition comment="Installed OS is part of the Unix family" definition_ref="installed_OS_is_part_of_Unix_family" />
++      <criterion comment="Poky based distro" test_ref="test_os_release_poky" />
++      <criterion comment="Poky referenece distribution is installed" test_ref="test_poky" />
++    </criteria>
++  </definition>
++
++  <unix:file_test check="all" check_existence="all_exist" comment="/etc/os-release exists" id="test_os_release_poky" version="1">
++    <unix:object object_ref="obj_os_release_poky" />
++  </unix:file_test>
++  <unix:file_object comment="check /etc/os-release file" id="obj_os_release_poky" version="1">
++    <unix:filepath>/etc/os-release</unix:filepath>
++  </unix:file_object>
++
++  <ind:textfilecontent54_test check="all" check_existence="at_least_one_exists" comment="Check OpenEmbedded" id="test_poky" version="1">
++    <ind:object object_ref="obj_poky" />
++  </ind:textfilecontent54_test>
++  <ind:textfilecontent54_object id="obj_poky" version="1" comment="Check Poky">
++    <ind:filepath>/etc/os-release</ind:filepath>
++    <ind:pattern operation="pattern match">^ID=poky$</ind:pattern>
++    <ind:instance datatype="int">1</ind:instance>
++  </ind:textfilecontent54_object>
++
++</def-group>
+-- 
+2.34.1
+
diff --git a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
index a9023ec..3802b1a 100644
--- a/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
+++ b/recipes-compliance/scap-security-guide/scap-security-guide_0.1.67.bb
@@ -10,6 +10,7 @@ SRCREV = "dad85502ce8da722a6afc391346c41cee61e90a9"
 SRC_URI = "git://github.com/ComplianceAsCode/content.git;branch=master;protocol=https \
            file://0001-scap-security-guide-add-openembedded.patch \
            file://0001-standard.profile-expand-checks.patch \
+           file://0001-scap-security-guide-add-Poky-support.patch \
            file://run_eval.sh \
            "
 
-- 
2.34.1


