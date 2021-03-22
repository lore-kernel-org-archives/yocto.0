Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.12437.1616418147961863959
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 06:02:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=sRuJIdwf;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B1D0638C085C
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 13:02:26 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id u5so21123460ejn.8
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 06:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4N5bgw/9DlMNSz/UTs8GDYBuSXXa6+Psl5lcwbYSuHM=;
        b=sRuJIdwfMBIs9IEoLJIr/yFmH2G6j6M7NrG6s30fmk623uJ8OknCRcz6qPjOlX6Vnk
         a1mn/g1sM8OGCPef056dciYmyuIrPHThcO/uJTMTSmmmEJhNWPen0nPrvVzrjuaKqToO
         G2rnOz37lLTrQUZKVwjz4znpSnn87q4RAngldiBmbxrxcyCm02vgqE0U5SW9SIW9bu7Y
         ibe2vCapvN4aspuXvF7IF4l4vJ7T7VxQnfLge3YWiYYPijOHQIgfp2eJ5KSi505u7Fmp
         F5j44VvR/h7z3A/NSDRDOsdHomagz3aRwmql44/7kDeY+qllP3xG7Hy2DVLPzrvPRoyD
         28+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4N5bgw/9DlMNSz/UTs8GDYBuSXXa6+Psl5lcwbYSuHM=;
        b=aHTzu8BbsVQPB/uqbvNUg3/fL3K69a9dYLmuB9fUaaI7VwnejgaW9scYJu59xmYbhB
         N7xcvVE/RjWRu5qQxXYebIIVIUCVGKpZI6dQ3+AICrIzX5n6xxXsehTgMpAMbmM275Q+
         pHuRcheFU3iYRWmUZ3UMpXVn2wtT50HehiqBHAXI3pBuTPfODfp53ZIQiKjDNLWJ43K8
         Ejr6GWfBdNSrCFJdmVP2Wyz4TejZXp5TkJGih2x6OExadapSD+e35au3rNYVIoRhPokS
         XidTU2lml7PrXTwnYADujFjNdynpNhEJ9+5l+OUFGHNtBL6Qde35bhHbcFZ72btTfWs2
         BLXw==
X-Gm-Message-State: AOAM53037MqKGkceYqadZX0eoz7PZ/XXkRkVH+xt8OahGSDdovBH/4qy
	FTYb0W+woxNUq4BVDtcUvTZ3zkqya78e2g==
X-Google-Smtp-Source: ABdhPJxoMIYjwtP0Jvwe7EtPic99kvjmDA4v5VPY++QIZWo1Ku8ZAAtWRf4Vnw0iNuUPCQ6umzZjMw==
X-Received: by 2002:a17:906:fcb2:: with SMTP id qw18mr18569997ejb.434.1616418144998;
        Mon, 22 Mar 2021 06:02:24 -0700 (PDT)
Received: from localhost.localdomain ([2a00:801:3f2:97f0:dd10:a2d1:c32:6e8f])
        by smtp.gmail.com with ESMTPSA id r17sm11490407edx.1.2021.03.22.06.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 06:02:23 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security][PATCH] meta: drop IMA_POLICY from policy recipes
Date: Mon, 22 Mar 2021 14:02:15 +0100
Message-Id: <20210322130215.8033-1-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

IMA_POLICY is being referred as policy recipe name in some places and it
is also being referred as policy file in other places, they are
conflicting with each other which make it impossible to set a IMA_POLICY
global variable in config file.

Fix it by dropping IMA_POLICY definitions from policy recipes

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
---
 .../ima-policy-appraise-all_1.0.bb                       | 9 ++-------
 .../ima_policy_hashed/ima-policy-hashed_1.0.bb           | 9 ++-------
 .../ima_policy_simple/ima-policy-simple_1.0.bb           | 9 ++-------
 3 files changed, 6 insertions(+), 21 deletions(-)

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-=
policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_a=
ppraise_all/ima-policy-appraise-all_1.0.bb
index da62a4c..84ea161 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-=
appraise-all_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-=
appraise-all_1.0.bb
@@ -2,19 +2,14 @@ SUMMARY =3D "IMA sample simple appraise policy "
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_appraise_all"
-
-SRC_URI =3D " file://${IMA_POLICY}"
+SRC_URI =3D " file://ima_policy_appraise_all"
=20
 inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_appraise_all ${D}/${sysconfdir}/ima/im=
a-policy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy=
-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-po=
licy-hashed_1.0.bb
index ebb0426..ff7169e 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed=
_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed=
_1.0.bb
@@ -2,13 +2,8 @@ SUMMARY =3D "IMA sample hash policy"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_hashed"
-
 SRC_URI =3D " \
-    file://${IMA_POLICY} \
+    file://ima_policy_hashed \
 "
=20
 inherit features_check
@@ -16,7 +11,7 @@ REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-poli=
cy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy=
-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-po=
licy-simple_1.0.bb
index cb4b6b8..0e56aec 100644
--- a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple=
_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple=
_1.0.bb
@@ -2,19 +2,14 @@ SUMMARY =3D "IMA sample simple policy"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_simple"
-
-SRC_URI =3D " file://${IMA_POLICY}"
+SRC_URI =3D " file://ima_policy_simple"
=20
 inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_simple ${D}/${sysconfdir}/ima/ima-poli=
cy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
--=20
2.29.0

