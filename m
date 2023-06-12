Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B28C7EE43
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 10:57:22 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.55813.1686567436133468244
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 03:57:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=G/JGl1RA;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-bc5a3075e92so2149616276.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 03:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686567435; x=1689159435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbx0+ViFVhk7QsaNCFjni+x81HVHQOmA8AXFj+Tfu0k=;
        b=G/JGl1RAMIJRbkAIZJQ67yHomBhDpqxZ+If75Zcx4sHoeqS6fKO4C+0VtTr0QrYzse
         eW4QhtkqKgwsnRM0Gg7eJpe7NDF8JGouZJrqb1BKusgzE96pnW4dgz8djW/Z1N3EguVt
         +lwT9xhGS4mjlQmU6PsSs9sYYONKc7yXVrnvBxYsTVkwm/zvmDFHIaR5Y4IEVQ9DPodn
         OS+Sb2QR/YNFNJMoXIYGNg6WSRj2YKqzDO/dSNq9WebkN8YAtZRawztNheia4mDmOpB0
         EMLhcACBFDeCMhWhZ2T5p2fz/fkVfmv8vjptnfrjFiymkwBbcGrk127rUCCP09cchSxB
         4w7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686567435; x=1689159435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbx0+ViFVhk7QsaNCFjni+x81HVHQOmA8AXFj+Tfu0k=;
        b=Jc2ahU7cWFx5gcwV4XHp07KD0F4APEdxZ92oghq/lA9Hr6w7jjsagf6iagneKMl1s1
         vGqsps5i3jwxYYtTZ7Ozsjsmc3lgpJcPQ628V/utSG4LWA279UXgk6ahZh3g4gTFlUyQ
         KdmFbM+WFmOt7jbRNDfAp7+CTez4rqBmqr/+wuOk31IGGJep7rTlzT0CMyIjQaZYpvke
         5uVc+CpGR63Mx4kikiIgg+bdwYPrOzMgeRJw+zJNZrf8jIzHdoKhnxuRo3ifbgXuw47F
         SUB5pCVgqWJ9xXnAAoysgw76IOfMYkbema5A0RXxz0E3x4cJtj6/iI47pObUodh9nACK
         bUdw==
X-Gm-Message-State: AC+VfDxCiyyojHKnZ9ttt7V+GxgXs7/2eAVOiphL0CPYDsA27pcseC8i
	nstqOIoFPtvjfemQRnlf6DFGPBxBRDQ=
X-Google-Smtp-Source: ACHHUZ5V3fLrhNLO2DyJivItNQ0JWMfPLCH1lbnbNfxOnHybGGnALxU8esRuF5GVCvlR84l+sq5XLw==
X-Received: by 2002:a25:3384:0:b0:ba8:54c4:3136 with SMTP id z126-20020a253384000000b00ba854c43136mr8307902ybz.52.1686567434371;
        Mon, 12 Jun 2023 03:57:14 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:a494:ce8b:aaa1:9573])
        by smtp.gmail.com with ESMTPSA id g5-20020a05690203c500b00b9eeffa1abfsm2454850ybs.39.2023.06.12.03.57.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 03:57:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide_git: drop oe version
Date: Mon, 12 Jun 2023 06:57:13 -0400
Message-Id: <20230612105713.38058-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:57:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60254

This is un-maintained so dropping this version

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ng-of-the-remediation-functions-file.patch | 39 -------------
 ...c-file-check-tests-in-installed-OS-d.patch | 46 ---------------
 ...ated-instance-of-element.getchildren.patch | 43 --------------
 ...is_openembedded-Update-pattern-match.patch | 30 ----------
 ...g-openembedded-from-ssg-constants.py.patch | 34 -----------
 ...-fix-when-greedy-regex-ate-the-whole.patch | 35 -----------
 ...-fix-deprecated-getiterator-function.patch | 58 -------------------
 ...etchildren-and-getiterator-functions.patch | 57 ------------------
 .../scap-security-guide.inc                   | 35 -----------
 .../scap-security-guide_git.bb                | 18 ------
 10 files changed, 395 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
 delete mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
deleted file mode 100644
index c0b93e4..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-XML-parsing-of-the-remediation-functions-file.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 174293162e5840684d967e36840fc1f9f57c90be Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
-Date: Thu, 5 Dec 2019 15:02:05 +0100
-Subject: [PATCH] Fix XML "parsing" of the remediation functions file.
-
-A proper fix is not worth the effort, as we aim to kill shared Bash remediation
-with Jinja2 macros.
-
-Upstream-Status: Backport
-[https://github.com/ComplianceAsCode/content/commit/174293162e5840684d967e36840fc1f9f57c90be]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- ssg/build_remediations.py | 8 ++++----
- 1 file changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
-index 7da807bd6..13e90f732 100644
---- a/ssg/build_remediations.py
-+++ b/ssg/build_remediations.py
-@@ -56,11 +56,11 @@ def get_available_functions(build_dir):
-     remediation_functions = []
-     with codecs.open(xmlfilepath, "r", encoding="utf-8") as xmlfile:
-         filestring = xmlfile.read()
--        # This regex looks implementation dependent but we can rely on
--        # ElementTree sorting XML attrs alphabetically. Hidden is guaranteed
--        # to be the first attr and ID is guaranteed to be second.
-+        # This regex looks implementation dependent but we can rely on the element attributes
-+        # being present on one line.
-+        # We can't rely on ElementTree sorting XML attrs in any way since Python 3.7.
-         remediation_functions = re.findall(
--            r'<Value hidden=\"true\" id=\"function_(\S+)\"',
-+            r'<Value.*id=\"function_(\S+)\"',
-             filestring, re.DOTALL
-         )
- 
--- 
-2.17.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
deleted file mode 100644
index 60664a3..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 2beb4bc83a157b21edb1a3fef295cd4cced467df Mon Sep 17 00:00:00 2001
-From: Jate Sujjavanich <jatedev@gmail.com>
-Date: Thu, 7 Jan 2021 18:10:01 -0500
-Subject: [PATCH 1/3] Fix platform spec, file check, tests in installed OS
- detect for openembedded
-
-Change platform to multi in openembedded installed check matching others
-and allowing compile of xml into oval
----
- shared/checks/oval/installed_OS_is_openembedded.xml | 11 ++++++-----
- 1 file changed, 6 insertions(+), 5 deletions(-)
-
-diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
-index 763d17bcb..01df16b43 100644
---- a/shared/checks/oval/installed_OS_is_openembedded.xml
-+++ b/shared/checks/oval/installed_OS_is_openembedded.xml
-@@ -1,11 +1,9 @@
--</def-group>
--
- <def-group>
-   <definition class="inventory" id="installed_OS_is_openembedded" version="2">
-     <metadata>
-       <title>OpenEmbedded</title>
-       <affected family="unix">
--        <platform>OPENEMBEDDED</platform>
-+        <platform>multi_platform_all</platform>
-       </affected>
-       <reference ref_id="cpe:/o:openembedded:openembedded:0"
-       source="CPE" />
-@@ -20,8 +18,11 @@
-     </criteria>
-   </definition>
- 
--  <ind:textfilecontent54_object id="test_openembedded" version="1" comment="Check OPenEmbedded version">
--    <ind:filepath>/etc/os-release/ind:filepath>
-+  <ind:textfilecontent54_test check="all" check_existence="at_least_one_exists" comment="Check OpenEmbedded version" id="test_openembedded" version="1">
-+    <ind:object object_ref="obj_openembedded" />
-+  </ind:textfilecontent54_test>
-+  <ind:textfilecontent54_object id="obj_openembedded" version="1" comment="Check OpenEmbedded version">
-+    <ind:filepath>/etc/os-release</ind:filepath>
-     <ind:pattern operation="pattern match">^VERSION_ID=\"nodistro\.[0-9].$</ind:pattern>
-     <ind:instance datatype="int">1</ind:instance>
-   </ind:textfilecontent54_object>
--- 
-2.24.3 (Apple Git-128)
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
deleted file mode 100644
index 01e3dd6..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-fix-deprecated-instance-of-element.getchildren.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From e435bf2dc59d652710104a1c59332e410b12bb64 Mon Sep 17 00:00:00 2001
-From: Vojtech Polasek <vpolasek@redhat.com>
-Date: Mon, 8 Jun 2020 12:33:48 +0200
-Subject: [PATCH] fix deprecated instance of element.getchildren
-
-Upstream-Status: Backport
-[https://github.com/ComplianceAsCode/content/commit/e435bf2dc59d652710104a1c59332e410b12bb64]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- ssg/build_remediations.py | 2 +-
- ssg/build_stig.py         | 2 +-
- 2 files changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
-index fdde0f268..c18d6bd54 100644
---- a/ssg/build_remediations.py
-+++ b/ssg/build_remediations.py
-@@ -735,7 +735,7 @@ def expand_xccdf_subs(fix, remediation_type, remediation_functions):
-         # First concat output form of modified fix text (including text appended
-         # to all children of the fix)
-         modfix = [fix.text]
--        for child in fix.getchildren():
-+        for child in list(fix):
-             if child is not None and child.text is not None:
-                 modfix.append(child.text)
-         modfixtext = "".join(modfix)
-diff --git a/ssg/build_stig.py b/ssg/build_stig.py
-index 528285f3d..6122981fc 100644
---- a/ssg/build_stig.py
-+++ b/ssg/build_stig.py
-@@ -38,7 +38,7 @@ def add_references(reference, destination):
-         for ref in refs:
-             if (ref.get('href').startswith(stig_refs) and
-                     ref.text in dictionary):
--                index = rule.getchildren().index(ref)
-+                index = list(rule).index(ref)
-                 new_ref = ET.Element(
-                     '{%s}reference' % XCCDF11_NS, {'href': stig_ns})
-                 new_ref.text = dictionary[ref.text]
--- 
-2.17.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch
deleted file mode 100644
index 61d9206..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From d943e41d64da6af89a6b8224110299ad88747497 Mon Sep 17 00:00:00 2001
-From: Akshay Bhat <akshay.bhat@timesys.com>
-Date: Mon, 14 Feb 2022 13:00:31 -0500
-Subject: [PATCH] installed_OS_is_openembedded: Update pattern match
-
-The VERSION_ID string is no longer quoted with f451c68667cca of
-openembedded-core. Update the pattern match check in
-installed_OS_is_openembedded to match the same.
-
-Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
----
- shared/checks/oval/installed_OS_is_openembedded.xml | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
-index 01df16b43..eaf9f2b10 100644
---- a/shared/checks/oval/installed_OS_is_openembedded.xml
-+++ b/shared/checks/oval/installed_OS_is_openembedded.xml
-@@ -23,7 +23,7 @@
-   </ind:textfilecontent54_test>
-   <ind:textfilecontent54_object id="obj_openembedded" version="1" comment="Check OpenEmbedded version">
-     <ind:filepath>/etc/os-release</ind:filepath>
--    <ind:pattern operation="pattern match">^VERSION_ID=\"nodistro\.[0-9].$</ind:pattern>
-+    <ind:pattern operation="pattern match">^VERSION_ID=nodistro\.[0-9]$</ind:pattern>
-     <ind:instance datatype="int">1</ind:instance>
-   </ind:textfilecontent54_object>
- 
--- 
-2.25.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
deleted file mode 100644
index 1e712f6..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 037a12301968a56f0c7e492ea4a05d2eecbd4cc6 Mon Sep 17 00:00:00 2001
-From: Jate Sujjavanich <jatedev@gmail.com>
-Date: Fri, 8 Jan 2021 20:18:00 -0500
-Subject: [PATCH 2/3] Fix missing openembedded from ssg/constants.py
-
----
- ssg/constants.py | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/ssg/constants.py b/ssg/constants.py
-index fab7cda5d..2ca289f84 100644
---- a/ssg/constants.py
-+++ b/ssg/constants.py
-@@ -234,7 +234,8 @@ PRODUCT_TO_CPE_MAPPING = {
- }
- 
- MULTI_PLATFORM_LIST = ["rhel", "fedora", "rhosp", "rhv", "debian", "ubuntu",
--                       "wrlinux", "opensuse", "sle", "ol", "ocp", "example"]
-+                       "wrlinux", "opensuse", "sle", "ol", "ocp", "example",
-+                       "openembedded"]
- 
- MULTI_PLATFORM_MAPPING = {
-     "multi_platform_debian": ["debian8"],
-@@ -249,6 +250,7 @@ MULTI_PLATFORM_MAPPING = {
-     "multi_platform_sle": ["sle11", "sle12"],
-     "multi_platform_ubuntu": ["ubuntu1404", "ubuntu1604", "ubuntu1804"],
-     "multi_platform_wrlinux": ["wrlinux"],
-+    "multi_platform_openembedded": ["openembedded"],
- }
- 
- RHEL_CENTOS_CPE_MAPPING = {
--- 
-2.24.3 (Apple Git-128)
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch
deleted file mode 100644
index f0c9909..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 28a35d63a0cc6b7beb51c77d93bb30778e6960cd Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Mat=C4=9Bj=20T=C3=BD=C4=8D?= <matyc@redhat.com>
-Date: Mon, 9 Dec 2019 13:41:47 +0100
-Subject: [PATCH] Fixed the broken fix, when greedy regex ate the whole file.
-
-We want to match attributes in an XML element, not in the whole file.
-
-Upstream-Status: Backport
-[https://github.com/ComplianceAsCode/content/commit/28a35d63a0cc6b7beb51c77d93bb30778e6960cd]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- ssg/build_remediations.py | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/ssg/build_remediations.py b/ssg/build_remediations.py
-index 13e90f732..edf31c0cf 100644
---- a/ssg/build_remediations.py
-+++ b/ssg/build_remediations.py
-@@ -57,10 +57,10 @@ def get_available_functions(build_dir):
-     with codecs.open(xmlfilepath, "r", encoding="utf-8") as xmlfile:
-         filestring = xmlfile.read()
-         # This regex looks implementation dependent but we can rely on the element attributes
--        # being present on one line.
-+        # being present. Beware, DOTALL means we go through the whole file at once.
-         # We can't rely on ElementTree sorting XML attrs in any way since Python 3.7.
-         remediation_functions = re.findall(
--            r'<Value.*id=\"function_(\S+)\"',
-+            r'<Value[^>]+id=\"function_(\S+)\"',
-             filestring, re.DOTALL
-         )
- 
--- 
-2.17.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
deleted file mode 100644
index 84271c4..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-fix-deprecated-getiterator-function.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From b0adc1d53780def4a95e310b6d26bb91ee97177e Mon Sep 17 00:00:00 2001
-From: Vojtech Polasek <vpolasek@redhat.com>
-Date: Mon, 8 Jun 2020 13:27:41 +0200
-Subject: [PATCH] fix deprecated getiterator function
-
-Upstream-Status: Backport
-[https://github.com/ComplianceAsCode/content/commit/b0adc1d53780def4a95e310b6d26bb91ee97177e]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- ssg/build_cpe.py    | 6 +++---
- ssg/id_translate.py | 2 +-
- 2 files changed, 4 insertions(+), 4 deletions(-)
-
-diff --git a/ssg/build_cpe.py b/ssg/build_cpe.py
-index 2e5d24a5d..8c046777a 100644
---- a/ssg/build_cpe.py
-+++ b/ssg/build_cpe.py
-@@ -17,7 +17,7 @@ def extract_subelement(objects, sub_elem_type):
-     """
- 
-     for obj in objects:
--        for subelement in obj.getiterator():
-+        for subelement in obj.iter():
-             if subelement.get(sub_elem_type):
-                 sub_element = subelement.get(sub_elem_type)
-                 return sub_element
-@@ -44,12 +44,12 @@ def extract_referred_nodes(tree_with_refs, tree_with_ids, attrname):
-     reflist = []
-     elementlist = []
- 
--    for element in tree_with_refs.getiterator():
-+    for element in tree_with_refs.iter():
-         value = element.get(attrname)
-         if value is not None:
-             reflist.append(value)
- 
--    for element in tree_with_ids.getiterator():
-+    for element in tree_with_ids.iter():
-         if element.get("id") in reflist:
-             elementlist.append(element)
- 
-diff --git a/ssg/id_translate.py b/ssg/id_translate.py
-index 72b07be18..ba9225904 100644
---- a/ssg/id_translate.py
-+++ b/ssg/id_translate.py
-@@ -64,7 +64,7 @@ class IDTranslator(object):
-         )
- 
-     def translate(self, tree, store_defname=False):
--        for element in tree.getiterator():
-+        for element in tree.iter():
-             idname = element.get("id")
-             if idname:
-                 # store the old name if requested (for OVAL definitions)
--- 
-2.17.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
deleted file mode 100644
index 8162292..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0003-fix-remaining-getchildren-and-getiterator-functions.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf Mon Sep 17 00:00:00 2001
-From: Vojtech Polasek <vpolasek@redhat.com>
-Date: Mon, 8 Jun 2020 14:01:55 +0200
-Subject: [PATCH] fix remaining getchildren and getiterator functions
-
-Upstream-Status: Backport
-[https://github.com/ComplianceAsCode/content/commit/a0da16c5eeb9a7414f7f2a37a6b270c8d04b2ddf]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- build-scripts/sds_move_ocil_to_checks.py                  | 2 +-
- build-scripts/verify_references.py                        | 2 +-
- shared/transforms/pcidss/transform_benchmark_to_pcidss.py | 2 +-
- 3 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/build-scripts/sds_move_ocil_to_checks.py b/build-scripts/sds_move_ocil_to_checks.py
-index 5f5139659..64dc19084 100755
---- a/build-scripts/sds_move_ocil_to_checks.py
-+++ b/build-scripts/sds_move_ocil_to_checks.py
-@@ -106,7 +106,7 @@ def move_ocil_content_from_ds_extended_component_to_ds_component(datastreamtree,
-     timestamp = extendedcomp.get('timestamp')
- 
-     # Get children elements of <ds:extended-component> containing OCIL content
--    extchildren = extendedcomp.getchildren()
-+    extchildren = list(extendedcomp)
-     # There should be just one OCIL subcomponent in <ds:extended-component>
-     if len(extchildren) != 1:
-         sys.stderr.write("ds:extended-component contains more than one element!"
-diff --git a/build-scripts/verify_references.py b/build-scripts/verify_references.py
-index 69b3e2d1f..95d387f46 100755
---- a/build-scripts/verify_references.py
-+++ b/build-scripts/verify_references.py
-@@ -179,7 +179,7 @@ def main():
-     check_content_refs = xccdftree.findall(".//{%s}check-content-ref"
-                                            % xccdf_ns)
- 
--    xccdf_parent_map = dict((c, p) for p in xccdftree.getiterator() for c in p)
-+    xccdf_parent_map = dict((c, p) for p in xccdftree.iter() for c in p)
-     # now we can actually do the verification work here
-     if options.rules_with_invalid_checks or options.all_checks:
-         for check_content_ref in check_content_refs:
-diff --git a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
-index 0ceaf727d..c94b12c45 100755
---- a/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
-+++ b/shared/transforms/pcidss/transform_benchmark_to_pcidss.py
-@@ -111,7 +111,7 @@ def main():
-             benchmark.findall(".//{%s}Value" % (XCCDF_NAMESPACE)):
-         values.append(value)
- 
--    parent_map = dict((c, p) for p in benchmark.getiterator() for c in p)
-+    parent_map = dict((c, p) for p in benchmark.iter() for c in p)
-     for rule in \
-             benchmark.findall(".//{%s}Rule" % (XCCDF_NAMESPACE)):
-         parent_map[rule].remove(rule)
--- 
-2.17.1
-
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
deleted file mode 100644
index 6f29eda..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ /dev/null
@@ -1,35 +0,0 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMARRY = "SCAP content for various platforms"
-HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
-LICENSE = "LGPL-2.1-only"
-
-DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native expat-native"
-
-S = "${WORKDIR}/git"
-
-inherit cmake pkgconfig python3native python3targetconfig
-
-STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
-export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
-export OSCAP_SCHEMA_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas"
-export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
-
-OECMAKE_GENERATOR = "Unix Makefiles"
-
-EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF"
-
-B = "${S}/build"
-
-do_configure[depends] += "openscap-native:do_install"
-
-do_configure:prepend () {
-    sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g' ${S}/CMakeLists.txt
-    sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
-}
-
-FILES:${PN} += "${datadir}/xml"
-
-RDEPENDS:${PN} = "openscap"
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
deleted file mode 100644
index f493ea8..0000000
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-SUMARRY = "SCAP content for various platforms, OE changes"
-
-SRCREV = "5fdfdcb2e95afbd86ace555beca5d20cbf1043ed"
-SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44;;protocol=https \
-           file://0001-Fix-XML-parsing-of-the-remediation-functions-file.patch \
-           file://0002-Fixed-the-broken-fix-when-greedy-regex-ate-the-whole.patch \
-           file://0001-fix-deprecated-instance-of-element.getchildren.patch \
-           file://0002-fix-deprecated-getiterator-function.patch \
-           file://0003-fix-remaining-getchildren-and-getiterator-functions.patch \
-           file://0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch \
-           file://0002-Fix-missing-openembedded-from-ssg-constants.py.patch \
-           file://0001-installed_OS_is_openembedded-Update-pattern-match.patch \
-          "
-PV = "0.1.44+git${SRCPV}"
-
-require scap-security-guide.inc
-
-EXTRA_OECMAKE += "-DSSG_PRODUCT_OPENEMBEDDED=ON"
-- 
2.25.1


