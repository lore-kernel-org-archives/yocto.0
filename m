Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.19978.1610295673038772501
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Jan 2021 08:21:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=tqX6M1l+;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jatedev@gmail.com)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2B80938C04B3
	for <yocto@yoctoproject.org>; Sun, 10 Jan 2021 16:21:12 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id c14so9841364qtn.0
        for <yocto@yoctoproject.org>; Sun, 10 Jan 2021 08:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ge2eveBG1mXwPBRC30jAjemDpLkSzrCEXLhnOIqDoNs=;
        b=tqX6M1l+TZWPttK/xnvSBUqGfm1ytkTqgAMA7m85YG5byYvfVUDgaWJsmICkv81FSk
         doLGiV1gwHG15k6B9DDQGcpXqEkLEJe8Gfb/Wfijwk2OuuIMjGfhScMWiY+5Zdr3bZNs
         c7abLRvrECngcHQ/wTtLsPy33XLTIjKdmlzMYmPhJOEZzUUF8x4Ux8yQiRe1uLQa+RHS
         QSeHCzgFRZN4+Pxnk0jZhTShKBIbTWQYszFP7AAPU9jN93xeOODw2JQI5s16DUeAy+uX
         cEC0ElKpCW/Xg5s8B32kCnLo+53zAAtq8F7kdviRr7UhsLxnLhUCTEha2dxnaF8XllGp
         M8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ge2eveBG1mXwPBRC30jAjemDpLkSzrCEXLhnOIqDoNs=;
        b=GHAUnLteueAoMFc3RAdz6Q3fAzqzEiVZQiZIP2vB8XD64YxvEmusEXlkwgm2CH9uty
         Fd0hSO4WwBb7onZ070MHtMheH7QRrsCbUS2C9jSg2kGli9kEo8rf4dlHXc2iUxxOWLbP
         RJFpaplPoYSyCkwSrpJJgJeZ10JnVZSBxLZzlh6PoZC5riU4ByiBCQA6j33O4LWykYzh
         zC7+XWhNWnwLcONTr/U37pFSvV9tzuJLAjo2sjfqwMUFpcGKkVMK9Eiq5QpcKWSPv0ib
         qI9dMozAJWATwSON036ZqIT7dFLYX2N5eNNBaafU54L18cgDCta6/eTI9XZMVKTc/li/
         Bfyg==
X-Gm-Message-State: AOAM533pLgg5bHRfGUhwjeF/fEou/AAwWRVyYF/LOf5pMZzGYNhB3jqa
	wLMc+Y6dTQRvUDa8z814rZ1dls30y0w=
X-Google-Smtp-Source: ABdhPJw7lUpe+6jQEOJ6wa9n62593EIWvhJbmOK42wGsG7kJl4DxLXUhivQXt6q1iADUBv4UsSuTvg==
X-Received: by 2002:a05:622a:20c:: with SMTP id b12mr2734570qtx.208.1610295670953;
        Sun, 10 Jan 2021 08:21:10 -0800 (PST)
Received: from localhost.localdomain (c-69-254-209-160.hsd1.fl.comcast.net. [69.254.209.160])
        by smtp.gmail.com with ESMTPSA id 136sm7418070qkn.79.2021.01.10.08.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 08:21:10 -0800 (PST)
From: "Jate Sujjavanich" <jatedev@gmail.com>
To: yocto@yoctoproject.org
Cc: Jate Sujjavanich <jatedev@gmail.com>
Subject: [meta-security-compliance][PATCH] scap-security-guide: Fix openembedded platform tests and build
Date: Sun, 10 Jan 2021 16:21:04 +0000
Message-Id: <20210110162104.85436-1-jatedev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Add patches to fix openembedded nodistro tests and openembedded build wit=
hin
ssg metadata.

Signed-Off-By: Jate Sujjavanich <jatedev@gmail.com>
---
 ...c-file-check-tests-in-installed-OS-d.patch | 46 +++++++++++++++++++
 ...g-openembedded-from-ssg-constants.py.patch | 34 ++++++++++++++
 .../scap-security-guide_git.bb                |  2 +
 3 files changed, 82 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-securi=
ty-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.=
patch
 create mode 100644 meta-security-compliance/recipes-openscap/scap-securi=
ty-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guid=
e/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch b=
/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001=
-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
new file mode 100644
index 0000000..60664a3
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files=
/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
@@ -0,0 +1,46 @@
+From 2beb4bc83a157b21edb1a3fef295cd4cced467df Mon Sep 17 00:00:00 2001
+From: Jate Sujjavanich <jatedev@gmail.com>
+Date: Thu, 7 Jan 2021 18:10:01 -0500
+Subject: [PATCH 1/3] Fix platform spec, file check, tests in installed O=
S
+ detect for openembedded
+
+Change platform to multi in openembedded installed check matching others
+and allowing compile of xml into oval
+---
+ shared/checks/oval/installed_OS_is_openembedded.xml | 11 ++++++-----
+ 1 file changed, 6 insertions(+), 5 deletions(-)
+
+diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/share=
d/checks/oval/installed_OS_is_openembedded.xml
+index 763d17bcb..01df16b43 100644
+--- a/shared/checks/oval/installed_OS_is_openembedded.xml
++++ b/shared/checks/oval/installed_OS_is_openembedded.xml
+@@ -1,11 +1,9 @@
+-</def-group>
+-
+ <def-group>
+   <definition class=3D"inventory" id=3D"installed_OS_is_openembedded" v=
ersion=3D"2">
+     <metadata>
+       <title>OpenEmbedded</title>
+       <affected family=3D"unix">
+-        <platform>OPENEMBEDDED</platform>
++        <platform>multi_platform_all</platform>
+       </affected>
+       <reference ref_id=3D"cpe:/o:openembedded:openembedded:0"
+       source=3D"CPE" />
+@@ -20,8 +18,11 @@
+     </criteria>
+   </definition>
+=20
+-  <ind:textfilecontent54_object id=3D"test_openembedded" version=3D"1" =
comment=3D"Check OPenEmbedded version">
+-    <ind:filepath>/etc/os-release/ind:filepath>
++  <ind:textfilecontent54_test check=3D"all" check_existence=3D"at_least=
_one_exists" comment=3D"Check OpenEmbedded version" id=3D"test_openembedd=
ed" version=3D"1">
++    <ind:object object_ref=3D"obj_openembedded" />
++  </ind:textfilecontent54_test>
++  <ind:textfilecontent54_object id=3D"obj_openembedded" version=3D"1" c=
omment=3D"Check OpenEmbedded version">
++    <ind:filepath>/etc/os-release</ind:filepath>
+     <ind:pattern operation=3D"pattern match">^VERSION_ID=3D\"nodistro\.=
[0-9].$</ind:pattern>
+     <ind:instance datatype=3D"int">1</ind:instance>
+   </ind:textfilecontent54_object>
+--=20
+2.24.3 (Apple Git-128)
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guid=
e/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch b/meta-=
security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-m=
issing-openembedded-from-ssg-constants.py.patch
new file mode 100644
index 0000000..1e712f6
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files=
/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
@@ -0,0 +1,34 @@
+From 037a12301968a56f0c7e492ea4a05d2eecbd4cc6 Mon Sep 17 00:00:00 2001
+From: Jate Sujjavanich <jatedev@gmail.com>
+Date: Fri, 8 Jan 2021 20:18:00 -0500
+Subject: [PATCH 2/3] Fix missing openembedded from ssg/constants.py
+
+---
+ ssg/constants.py | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/ssg/constants.py b/ssg/constants.py
+index fab7cda5d..2ca289f84 100644
+--- a/ssg/constants.py
++++ b/ssg/constants.py
+@@ -234,7 +234,8 @@ PRODUCT_TO_CPE_MAPPING =3D {
+ }
+=20
+ MULTI_PLATFORM_LIST =3D ["rhel", "fedora", "rhosp", "rhv", "debian", "u=
buntu",
+-                       "wrlinux", "opensuse", "sle", "ol", "ocp", "exam=
ple"]
++                       "wrlinux", "opensuse", "sle", "ol", "ocp", "exam=
ple",
++                       "openembedded"]
+=20
+ MULTI_PLATFORM_MAPPING =3D {
+     "multi_platform_debian": ["debian8"],
+@@ -249,6 +250,7 @@ MULTI_PLATFORM_MAPPING =3D {
+     "multi_platform_sle": ["sle11", "sle12"],
+     "multi_platform_ubuntu": ["ubuntu1404", "ubuntu1604", "ubuntu1804"]=
,
+     "multi_platform_wrlinux": ["wrlinux"],
++    "multi_platform_openembedded": ["openembedded"],
+ }
+=20
+ RHEL_CENTOS_CPE_MAPPING =3D {
+--=20
+2.24.3 (Apple Git-128)
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guid=
e/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/=
scap-security-guide/scap-security-guide_git.bb
index 6e7180f..0617c56 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-=
security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-=
security-guide_git.bb
@@ -7,6 +7,8 @@ SRC_URI =3D "git://github.com/akuster/scap-security-guide=
.git;branch=3Doe-0.1.44; \
            file://0001-fix-deprecated-instance-of-element.getchildren.pa=
tch \
            file://0002-fix-deprecated-getiterator-function.patch \
            file://0003-fix-remaining-getchildren-and-getiterator-functio=
ns.patch \
+           file://0001-Fix-platform-spec-file-check-tests-in-installed-O=
S-d.patch \
+           file://0002-Fix-missing-openembedded-from-ssg-constants.py.pa=
tch \
           "
 PV =3D "0.1.44+git${SRCPV}"
=20
--=20
2.25.1

